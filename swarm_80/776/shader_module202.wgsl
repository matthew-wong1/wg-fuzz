struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, vec4<f32>(741f, 362f, -413f, -272f), -26146i, 16987u, vec2<bool>(true, false)), Struct_1(false, vec4<f32>(1124f, -621f, 224f, 1000f), 0i, 14210u, vec2<bool>(true, true)), Struct_1(false, vec4<f32>(133f, 859f, -167f, 869f), 2147483647i, 0u, vec2<bool>(false, true)), Struct_1(false, vec4<f32>(998f, -209f, 1175f, -1732f), 3049i, 22951u, vec2<bool>(false, false)), Struct_1(false, vec4<f32>(-1300f, 2270f, -2356f, -1717f), -1i, 0u, vec2<bool>(true, true)), Struct_1(true, vec4<f32>(-530f, 140f, 454f, -466f), 45446i, 73205u, vec2<bool>(true, false)), Struct_1(false, vec4<f32>(1889f, 133f, -359f, -439f), i32(-2147483648), 4294967295u, vec2<bool>(true, true)), Struct_1(false, vec4<f32>(628f, -215f, -312f, -934f), 19637i, 9796u, vec2<bool>(false, false)), Struct_1(true, vec4<f32>(-346f, 219f, 904f, -718f), 80468i, 39957u, vec2<bool>(true, false)), Struct_1(false, vec4<f32>(185f, -1901f, 389f, 750f), -24218i, 4294967295u, vec2<bool>(false, false)), Struct_1(true, vec4<f32>(-623f, 1204f, -592f, 223f), -47948i, 0u, vec2<bool>(false, true)), Struct_1(true, vec4<f32>(859f, -661f, 892f, 735f), 0i, 2218u, vec2<bool>(true, true)), Struct_1(false, vec4<f32>(538f, -478f, -412f, -696f), 0i, 0u, vec2<bool>(false, false)), Struct_1(true, vec4<f32>(-622f, -198f, 153f, -1251f), i32(-2147483648), 1u, vec2<bool>(false, false)), Struct_1(true, vec4<f32>(790f, -592f, -1000f, 1545f), -1i, 4616u, vec2<bool>(true, true)), Struct_1(false, vec4<f32>(-1537f, -520f, -943f, 192f), 1i, 4294967295u, vec2<bool>(false, true)));

var<private> global2: array<i32, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    global1 = array<Struct_1, 16>();
    var var_0 = u_input.b;
    global0 = array<i32, 31>();
    var var_1 = arg_2.x;
    global2 = array<i32, 29>();
    return -116f;
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: f32) -> vec4<i32> {
    global1 = array<Struct_1, 16>();
    let var_0 = Struct_1(select(true, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(-1367f - _wgslsmith_f_op_f32(-arg_2)), 618f, 770f)), _wgslsmith_mod_i32(arg_0, max(~(~global0[_wgslsmith_index_u32(50309u, 31u)]), reverseBits(i32(-1i) * -4202i))), 4294967295u, vec2<bool>(true, true));
    var var_1 = var_0;
    let var_2 = global1[_wgslsmith_index_u32(max(var_1.d, min(max(u_input.b, u_input.b), u_input.b)), 16u)];
    var var_3 = vec4<i32>(-1407i << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1015u, 16651u, u_input.b), vec3<u32>(var_2.d, u_input.b, var_1.d)) << (reverseBits(var_0.d) % 32u), u_input.b, reverseBits(_wgslsmith_mult_u32(4294967295u, 0u))) % 32u), max(-25724i, 0i), 0i, ~2147483647i);
    return min(vec4<i32>(var_1.c, (min(global2[_wgslsmith_index_u32(var_0.d, 29u)], arg_0) >> (_wgslsmith_clamp_u32(u_input.b, 0u, 5726u) % 32u)) | (var_1.c << (~0u % 32u)), select(_wgslsmith_div_i32(select(0i, var_3.x, true), abs(26448i)), -2147483647i, -1817f != _wgslsmith_f_op_f32(-954f * var_1.b.x)), 0i), ~countOneBits(-vec4<i32>(global2[_wgslsmith_index_u32(1u, 29u)], -10079i, var_2.c, -37346i) << (vec4<u32>(var_1.d, u_input.b, 0u, 0u) % vec4<u32>(32u))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = array<i32, 31>();
    var var_0 = _wgslsmith_mod_vec2_i32(select(u_input.a.xx, _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(28637i, 1935i)), select(-u_input.a.xz, vec2<i32>(55838i, u_input.c), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), false)), vec2<i32>(-76123i, -2147483647i)), all(vec2<bool>(arg_0, true)) || any(vec3<bool>(arg_0, arg_0, arg_0))), -vec2<i32>(2147483647i, 1i));
    var_0 = max(u_input.a.zy, vec2<i32>(46825i, countOneBits(-2147483647i)));
    global2 = array<i32, 29>();
    let var_1 = !arg_0;
    return !select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, false)), vec4<bool>(var_1, true, select(false, arg_0, true), all(vec4<bool>(true, true, true, true))), false), select(!(!vec4<bool>(true, arg_0, false, false)), vec4<bool>(var_1 & true, var_1, arg_0, false), !vec4<bool>(true, arg_0, arg_0, false)), select(!select(vec4<bool>(false, var_1, true, false), vec4<bool>(var_1, arg_0, arg_0, var_1), true), vec4<bool>(true, arg_0, var_0.x >= global0[_wgslsmith_index_u32(arg_1, 31u)], arg_3.x != arg_3.x), select(!vec4<bool>(arg_0, false, var_1, var_1), !vec4<bool>(true, var_1, true, true), !vec4<bool>(true, true, var_1, false))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = func_4(arg_0.a, 47907u, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i | _wgslsmith_div_i32(arg_0.c, u_input.c), ~countOneBits(-6099i), 2147483647i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, global0[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(arg_0.d, 29u)], -34967i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -2147483647i)), _wgslsmith_mod_i32(1i, arg_0.c), 15960i, global2[_wgslsmith_index_u32(~u_input.b, 29u)]), func_3(1i, u_input.a.xx, _wgslsmith_f_op_f32(floor(arg_0.b.x))), abs(-vec4<i32>(0i, 1i, -3598i, u_input.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.b.x))));
    global2 = array<i32, 29>();
    return -2654f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    let var_0 = !(!all(vec3<bool>(true, true, any(vec3<bool>(false, true, true)))));
    let var_1 = select(vec3<bool>(all(vec2<bool>(true, var_0)), _wgslsmith_add_i32(17623i, global2[_wgslsmith_index_u32(u_input.b, 29u)] << (u_input.b % 32u)) < -(~(-37047i)), var_0), !vec3<bool>(var_0, true, true), _wgslsmith_add_u32(u_input.b, (u_input.b << (u_input.b % 32u)) >> (u_input.b % 32u)) == u_input.b);
    let var_2 = ~u_input.b;
    let var_3 = 25921i;
    let var_4 = Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!var_1, var_3 >> (var_2 % 32u), !var_1.xy))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(707f + 1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-759f)), _wgslsmith_f_op_f32(func_2(Struct_1(true, vec4<f32>(1182f, 922f, 117f, 1000f), var_3, var_2, var_1.zz)))))), _wgslsmith_f_op_f32(184f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1824f + 1200f), -812f)))), _wgslsmith_sub_i32(~_wgslsmith_add_i32(u_input.d, global2[_wgslsmith_index_u32(51314u, 29u)]), -(~var_3)) ^ -24432i, reverseBits(~(1u >> (_wgslsmith_mod_u32(23658u, u_input.b) % 32u))), !vec2<bool>(!(!var_1.x), select(!var_1.x, var_0, any(var_1.xz))));
    var var_5 = all(var_1.xy) != true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(2837u, 21324u, u_input.b), vec3<u32>(_wgslsmith_clamp_u32(78570u, 1u, 1u), _wgslsmith_add_u32(u_input.b, var_4.d), abs(29810u))), reverseBits(vec3<u32>(var_4.d, var_4.d, 1u))), ~min(var_2, _wgslsmith_div_u32(4758u, var_4.d)), ~(_wgslsmith_dot_vec2_i32(~u_input.a.yx, u_input.a.xz) | var_4.c), ~func_3(countOneBits(select(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(var_2, 31u)], true)), vec2<i32>(856i, global2[_wgslsmith_index_u32(24837u, 29u)]) | vec2<i32>(global0[_wgslsmith_index_u32(3956u, 31u)], var_3), 1f));
}

