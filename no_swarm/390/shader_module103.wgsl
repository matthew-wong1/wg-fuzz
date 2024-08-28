struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 2> = array<f32, 2>(642f, -502f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> vec4<u32> {
    let var_0 = vec4<bool>((u_input.a.x == reverseBits(_wgslsmith_mult_i32(u_input.a.x, 18764i))) & (~(8644u << (u_input.b.x % 32u)) <= ~8161u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~u_input.b.x, 2u)], -1000f)) + -1000f) > -1204f, select(true, true || any(vec4<bool>(true, true, true, true)), true), true);
    let var_1 = Struct_2(Struct_1(!var_0, ~vec4<u32>(u_input.b.x, 136221u, 16918u, 1u) & vec4<u32>(~0u, min(arg_0.x, u_input.b.x), ~arg_0.x, 1u), ~_wgslsmith_div_u32(~arg_0.x, 1u)));
    let var_2 = var_1;
    global1 = array<f32, 2>();
    let var_3 = reverseBits(vec2<i32>(u_input.a.x, 5681i));
    return ~vec4<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(~(~arg_0), ~vec4<u32>(u_input.b.x, 66477u, arg_0.x, 0u)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 38244u, 1u), vec4<u32>(1u, 1u, 19154u, var_1.a.c)), abs(~vec4<u32>(arg_0.x, var_2.a.c, u_input.b.x, arg_0.x))), abs(49305u));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_2 {
    global1 = array<f32, 2>();
    var var_0 = Struct_1(vec4<bool>(true, false, true, arg_1.a.a.x), min(~func_3(~vec4<u32>(arg_3, u_input.b.x, 0u, 1u), _wgslsmith_div_i32(36i, u_input.c.x)), vec4<u32>(arg_1.a.b.x, ~countOneBits(u_input.b.x), arg_3 & ~35945u, arg_3 ^ arg_1.a.c)), 0u);
    var var_1 = arg_1;
    var var_2 = -1000f;
    global1 = array<f32, 2>();
    return arg_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> bool {
    global1 = array<f32, 2>();
    var var_0 = select(any(vec2<bool>(false, any(!vec2<bool>(arg_2.a.a.x, arg_2.a.a.x)))), arg_2.a.a.x, arg_2.a.a.x);
    var var_1 = arg_2.a;
    let var_2 = func_2(!(false | (-985f <= global1[_wgslsmith_index_u32(9996u, 2u)])) & !all(arg_2.a.a.xyz), arg_2, -945f, _wgslsmith_dot_vec3_u32(var_1.b.xww, ~_wgslsmith_mult_vec3_u32(firstTrailingBit(var_1.b.yzw), select(vec3<u32>(arg_2.a.b.x, 73891u, 55228u), var_1.b.zyx, vec3<bool>(false, var_1.a.x, false)))));
    let var_3 = arg_0 << (reverseBits(max(arg_2.a.b, vec4<u32>(_wgslsmith_sub_u32(107246u, arg_2.a.c), 0u, 4294967295u >> (var_2.a.b.x % 32u), ~5749u))) % vec4<u32>(32u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = select(!select(vec4<bool>(1i != u_input.a.x, func_1(vec4<i32>(-1i, u_input.a.x, 2147483647i, 0i), u_input.c.x, Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(56610u, u_input.b.x, u_input.b.x, 23016u), 0u)), global1[_wgslsmith_index_u32(1u, 2u)]), 22425i >= u_input.c.x, true), vec4<bool>(true, true, true, true), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), select(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), func_2(func_1(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, 7515i), ~7266i, func_2(false, Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<u32>(48107u, u_input.b.x, 1u, u_input.b.x), 0u)), -702f, 9422u), 633f), func_2(all(vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(0u, 43755u, u_input.b.x, 22477u), 9088u)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), 4294967295u), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 2u)]), ~(~u_input.b.x)).a.a, !vec4<bool>(func_1(vec4<i32>(-1212i, u_input.a.x, u_input.c.x, u_input.a.x), u_input.c.x, Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(15562u, 1u, 0u, u_input.b.x), 1u)), -462f), any(vec2<bool>(false, false)), any(vec2<bool>(true, false)), any(vec3<bool>(true, false, true)))), select(select(func_2(true, Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(94251u, u_input.b.x, 0u, u_input.b.x), u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1614f), 0u).a.a, vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), global1[_wgslsmith_index_u32(35361u, 2u)] != global1[_wgslsmith_index_u32(u_input.b.x, 2u)])), vec4<bool>(all(vec2<bool>(true, true)), select(true, global1[_wgslsmith_index_u32(u_input.b.x, 2u)] != global1[_wgslsmith_index_u32(u_input.b.x, 2u)], true), false, all(vec3<bool>(true, true, true))), !func_2(false, func_2(false, Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(u_input.b.x, u_input.b.x, 12011u, 8520u), 1u)), -2435f, u_input.b.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6522u, 2u)]), 32151u).a.a));
    global0 = u_input.b.x;
    let var_2 = Struct_2(Struct_1(select(select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), !vec4<bool>(true, var_1.x, false, true)), !select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(var_1.x, false, true, false), true), !(!var_1.x)), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x | 1u, _wgslsmith_mult_u32(4294967295u, u_input.b.x)) ^ func_3(~vec4<u32>(0u, u_input.b.x, 4294967295u, 0u), -2147483647i), func_2(true, func_2(any(vec4<bool>(var_1.x, false, var_1.x, false)), Struct_2(Struct_1(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<u32>(u_input.b.x, 104955u, u_input.b.x, u_input.b.x), 4294967295u)), _wgslsmith_f_op_f32(round(1000f)), ~u_input.b.x), -308f, 24564u).a.c));
    var_0 = all(select(vec3<bool>(var_2.a.a.x, false, (1u != var_2.a.c) != !var_1.x), !var_2.a.a.ywx, all(vec2<bool>(true, var_1.x))));
    var var_3 = Struct_1(!(!(!(!var_2.a.a))), var_2.a.b & ~(~(~var_2.a.b)), _wgslsmith_dot_vec3_u32(~var_2.a.b.wwx, _wgslsmith_div_vec3_u32(vec3<u32>(~var_2.a.b.x, _wgslsmith_mod_u32(94705u, 5522u), u_input.b.x), ~var_2.a.b.yxy)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_3.b.x), u_input.c.x, _wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(var_3.b.wxy & var_3.b.wxw, select(var_3.b.yww, var_3.b.yxy, false)), vec3<u32>(52708u, var_2.a.c, u_input.b.x)), ~var_2.a.b.zzy));
}

