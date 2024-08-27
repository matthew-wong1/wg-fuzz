struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -738f;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(866f, 743f, -1127f), -10177i, -302f, vec2<i32>(34116i, 1i));

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = abs(_wgslsmith_div_vec3_i32(~(~vec3<i32>(15045i, 1i, -1i) ^ -u_input.c.zzw), vec3<i32>(i32(-1i) * -34930i, ~arg_2.b, 69936i)));
    let var_1 = u_input.c.yxy >> (abs(vec3<u32>(~u_input.b.x << (u_input.b.x % 32u), abs(abs(46666u)), ~u_input.a)) % vec3<u32>(32u));
    global3 = ~(-2147483647i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) + _wgslsmith_f_op_f32(max(923f, global2.c))), _wgslsmith_f_op_f32(arg_2.a.x + 2401f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.c, -1466f)), _wgslsmith_div_f32(global2.c, -566f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(arg_2.a.x, arg_2.c, global2.c))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(905f, 1001f, arg_2.a.x)))), vec3<bool>(true, true, arg_1.x))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = abs(firstLeadingBit(u_input.c));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(-2147483647i, !vec2<bool>(false, all(vec2<bool>(false, arg_0))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -764f, 2223f)), 8193i, global2.c, vec2<i32>(1i, _wgslsmith_clamp_i32(75708i, 1i, 2147483647i))))), -var_0.x, _wgslsmith_div_f32(-638f, _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_clamp_i32(var_0.x, var_0.x, -1i), vec2<bool>(false, arg_0), Struct_1(global2.a, 23857i, global2.c, vec2<i32>(var_0.x, 2147483647i)))).x)), abs(firstTrailingBit(~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.xw))));
    global0 = global2.c;
    let var_2 = Struct_1(global2.a, var_1.b, -2230f, abs(~u_input.c.wy));
    let var_3 = Struct_1(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * 534f))), global2.c), ~var_1.b, _wgslsmith_f_op_f32(select(global2.c, var_1.a.x, arg_0)), var_1.d);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a), ~var_2.b, -1896f, vec2<i32>(1i, max(i32(-1i) * -36807i, -26590i)));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(622f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -212f), 1964f));
    let var_1 = func_2(true);
    global0 = 444f;
    var var_2 = var_1;
    var_2 = func_2(all(vec4<bool>(false, true, true, all(vec2<bool>(false, true)))));
    return vec2<bool>(!(global2.d.x != 14889i), any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = select(!func_1(u_input.a), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), func_1(4294967295u).x), vec2<bool>(select(true, true, all(vec3<bool>(false, false, false))) | func_1(u_input.b.x).x, !all(vec2<bool>(true, true))));
    let var_2 = 15112i;
    var var_3 = vec4<u32>(22157u, 0u, 0u, ~1u);
    let var_4 = -(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.d.x), u_input.c.zy), i32(-1i) * -3456i, -_wgslsmith_mod_i32(var_2, 2147483647i)) << (reverseBits(1u) % 32u));
    var_0 = _wgslsmith_add_u32(abs(0u), ~((_wgslsmith_sub_u32(var_3.x, 4294967295u) >> (u_input.a % 32u)) ^ abs(var_3.x)));
    var var_5 = global2.a.x;
    var_3 = select(vec4<u32>(5368u, 0u, 5110u, 0u), abs(u_input.b), all(vec3<bool>(true, (var_1.x && true) || (-70714i == var_4), !var_1.x & (global2.c >= -1219f))));
    global1 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}

