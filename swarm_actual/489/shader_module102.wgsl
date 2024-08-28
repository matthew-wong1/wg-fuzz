struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 19966i, 6735i, -45994i);

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<bool>(true, false), 17409u, true), Struct_1(vec2<bool>(true, false), 68882u, true), Struct_1(vec2<bool>(true, false), 0u, false), Struct_1(vec2<bool>(false, false), 122600u, false), Struct_1(vec2<bool>(false, true), 1u, true), Struct_1(vec2<bool>(true, true), 21885u, true), Struct_1(vec2<bool>(true, true), 48826u, false), Struct_1(vec2<bool>(true, true), 33628u, false), Struct_1(vec2<bool>(true, false), 133194u, true), Struct_1(vec2<bool>(false, false), 1u, false), Struct_1(vec2<bool>(false, false), 4294967295u, true), Struct_1(vec2<bool>(true, true), 21345u, false), Struct_1(vec2<bool>(false, true), 106271u, true), Struct_1(vec2<bool>(true, false), 86376u, false), Struct_1(vec2<bool>(true, false), 1u, true), Struct_1(vec2<bool>(false, true), 1u, true), Struct_1(vec2<bool>(false, true), 18691u, true), Struct_1(vec2<bool>(false, true), 0u, false), Struct_1(vec2<bool>(true, true), 23335u, true), Struct_1(vec2<bool>(false, true), 17331u, true), Struct_1(vec2<bool>(false, false), 3243u, true), Struct_1(vec2<bool>(true, false), 50449u, true), Struct_1(vec2<bool>(false, false), 32327u, false), Struct_1(vec2<bool>(true, true), 13131u, true), Struct_1(vec2<bool>(true, false), 32140u, true), Struct_1(vec2<bool>(false, true), 68691u, false), Struct_1(vec2<bool>(false, false), 1u, false), Struct_1(vec2<bool>(false, false), 30366u, false), Struct_1(vec2<bool>(true, false), 1u, false), Struct_1(vec2<bool>(true, true), 4294967295u, true), Struct_1(vec2<bool>(true, false), 4294967295u, false), Struct_1(vec2<bool>(false, true), 1u, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(!(!vec2<bool>(any(vec3<bool>(true, global0.a.x, true)), global0.c)), ~(~0u), !(9451u < ~_wgslsmith_sub_u32(global0.b, 10342u)));
    let var_1 = global2[_wgslsmith_index_u32(global0.b, 32u)];
    global0 = global2[_wgslsmith_index_u32(4294967295u, 32u)];
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(17610u, ~_wgslsmith_add_u32(38401u, var_1.b), ~var_1.b), 32u)];
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(951f + 482f), -632f)))));
    return global2[_wgslsmith_index_u32(arg_0, 32u)];
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = func_2(global0.b, u_input.c);
    let var_0 = global0.b;
    let var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~global0.b, abs(global0.b))), 32u)];
    let var_2 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-37015i, -17387i, 6388i), -global1.yxx), global1.wxw << ((vec3<u32>(4294967295u, 4294967295u, global0.b) << (~vec3<u32>(var_1.b, global0.b, global0.b) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.b);
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.b & _wgslsmith_sub_u32(4294967295u, func_2(max(1u, global0.b), u_input.c).b), _wgslsmith_sub_u32(var_1.b, ~(_wgslsmith_sub_u32(97239u, global0.b) ^ var_1.b))), 32u)];
    return Struct_1(global0.a, 4294967295u, var_1.c);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = vec4<bool>(!select(true, true, !global0.c && (true && arg_1.c)), _wgslsmith_sub_u32(global0.b, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, arg_1.b), vec2<u32>(arg_1.b, global0.b)))) <= (global0.b >> (0u % 32u)), false, false);
    var var_1 = 1u;
    let var_2 = global2[_wgslsmith_index_u32(~arg_1.b, 32u)];
    global0 = global2[_wgslsmith_index_u32(~(~firstLeadingBit(arg_2.b ^ ~arg_1.b)), 32u)];
    global0 = arg_1;
    return var_0.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec2<bool>(true, true), _wgslsmith_div_u32(global0.b, ~_wgslsmith_sub_u32(global0.b, 1u)), any(!vec4<bool>(global0.a.x != true, !global0.c, true, true)));
    var var_0 = !vec2<bool>(global0.c, !any(vec3<bool>(true, true, true)));
    var var_1 = -global1.x;
    var var_2 = u_input.c.xz;
    var var_3 = Struct_1(!func_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0.b, _wgslsmith_mod_u32(global0.b, 30437u)), 32u)], func_1(var_0.x), func_2(1u, u_input.c)), max(~firstTrailingBit(global0.b), abs(~func_1(true).b)), false);
    let var_4 = Struct_1(vec2<bool>(any(!select(vec4<bool>(var_0.x, global0.c, true, var_3.a.x), vec4<bool>(global0.a.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, false, false))), false != global0.a.x), ~55990u, false);
    let var_5 = _wgslsmith_f_op_f32(549f * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(4294967295u, global0.b)), 1529f);
}

