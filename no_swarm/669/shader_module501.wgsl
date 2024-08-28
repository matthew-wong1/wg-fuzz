struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(64662u, vec4<bool>(true, true, false, true), 4294967295u, Struct_2(Struct_1(51997u), vec2<bool>(true, false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0;
    var var_1 = 1u;
    let var_2 = true;
    var var_3 = vec3<bool>(false, true, select(false, all(!select(vec4<bool>(true, var_0.d.b.x, false, arg_0.b.x), arg_0.b, false)), true));
    global0 = Struct_3(var_0.c, arg_0.b, arg_0.a & ~(~_wgslsmith_mod_u32(var_0.d.a.a, arg_0.c)), var_0.d);
    return u_input.a;
}

fn func_1() -> i32 {
    var var_0 = u_input.b;
    let var_1 = true;
    let var_2 = true;
    global0 = Struct_3(~((global0.c & global0.a) & func_2(Struct_3(u_input.a, vec4<bool>(true, global0.b.x, global0.b.x, true), u_input.c.x, Struct_2(global0.d.a, global0.d.b)))), global0.b, firstLeadingBit(_wgslsmith_sub_u32(~(~12348u), 10358u)), Struct_2(Struct_1(2934u), !select(global0.b.zz, global0.b.xw, false)));
    let var_3 = global0.d;
    return var_0.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = Struct_1(func_2(Struct_3(~(274u ^ u_input.c.x), global0.b, ~48168u, arg_1)));
    var var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(616f, -1249f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-954f, -1090f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(555f, 789f)))))))));
    var var_4 = global0.d;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0.d.b, !global0.d.b, select(vec2<bool>(any(global0.b) & global0.b.x, global0.d.b.x & true), !select(vec2<bool>(true, true), select(global0.b.xw, global0.b.yz, false), global0.d.b.x), vec2<bool>(!global0.b.x, false)));
    let var_1 = Struct_2(func_3(vec2<i32>(u_input.e.x, _wgslsmith_div_i32(func_1(), firstTrailingBit(-2147483647i))), global0.d, !(!global0.b.x), u_input.b.x), var_0);
    global0 = Struct_3(min(~abs(max(global0.c, 33531u)), firstTrailingBit(1u)), select(select(global0.b, !global0.b, !select(vec4<bool>(var_1.b.x, false, false, true), global0.b, var_0.x)), vec4<bool>(true, var_0.x, true, true || var_0.x), !(!(!global0.b))), reverseBits(min(4294967295u, ~(var_1.a.a ^ 34788u))), var_1);
    global0 = Struct_3(u_input.a, select(vec4<bool>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 5082u)) != ~u_input.c.x, !var_0.x, !var_1.b.x, true), select(select(vec4<bool>(var_1.b.x, true, global0.d.b.x, false), global0.b, var_0.x), vec4<bool>(true, true, true, all(vec3<bool>(true, var_0.x, true))), global0.b), true), var_1.a.a, Struct_2(var_1.a, var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(24665i, _wgslsmith_add_u32(~4294967295u, global0.c), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(87558u, 116763u), u_input.c), _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, var_1.a.a) | u_input.c)), global0.d.a.a, ~1u), u_input.e.x);
}

