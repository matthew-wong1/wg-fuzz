struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(44394u, 0u, 54335u, 11553u), vec4<u32>(9259u, 21999u, 1u, 44798u), vec4<u32>(4294967295u, 41170u, 62689u, 0u), vec4<u32>(5678u, 0u, 47932u, 4294967295u), vec4<u32>(44630u, 1u, 0u, 9128u), vec4<u32>(52055u, 4294967295u, 0u, 30999u), vec4<u32>(27616u, 0u, 0u, 3924u), vec4<u32>(22628u, 64400u, 14639u, 4294967295u), vec4<u32>(41464u, 77972u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 48418u, 6699u), vec4<u32>(20556u, 82867u, 1u, 77020u), vec4<u32>(4294967295u, 0u, 1u, 43989u), vec4<u32>(4294967295u, 65796u, 4294967295u, 0u), vec4<u32>(0u, 1u, 1u, 20060u), vec4<u32>(1184u, 1u, 4294967295u, 35127u), vec4<u32>(51037u, 41735u, 0u, 13467u), vec4<u32>(0u, 0u, 17812u, 4294967295u), vec4<u32>(4294967295u, 91534u, 0u, 58007u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 43024u), vec4<u32>(73208u, 41114u, 1u, 0u), vec4<u32>(4294967295u, 328u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 306u, 1u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(56412u, 84177u, 0u, 9759u), vec4<u32>(107425u, 45652u, 1u, 21368u), vec4<u32>(4294967295u, 1673u, 19734u, 45208u), vec4<u32>(0u, 33344u, 4431u, 91338u), vec4<u32>(88320u, 0u, 4294967295u, 42570u), vec4<u32>(4294967295u, 0u, 59159u, 0u), vec4<u32>(1u, 74037u, 732u, 6060u), vec4<u32>(26882u, 52712u, 6477u, 0u), vec4<u32>(85981u, 53343u, 29516u, 10657u));

var<private> global1: array<vec2<i32>, 6>;

var<private> global2: array<i32, 6>;

var<private> global3: array<i32, 24> = array<i32, 24>(-49353i, -8877i, i32(-2147483648), 1i, -1i, 0i, -17490i, 8873i, i32(-2147483648), 56692i, 8412i, -55754i, 1i, 44120i, 0i, -93771i, -7597i, -24563i, -46398i, -51600i, -27586i, 0i, 1i, 16424i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    global3 = array<i32, 24>();
    global3 = array<i32, 24>();
    let var_0 = 2267f;
    var var_1 = -19657i;
    global1 = array<vec2<i32>, 6>();
    return firstLeadingBit(24865u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = arg_2;
    let var_1 = !select(!(!vec4<bool>(true, false, var_0.b.x, arg_2.c.x)), vec4<bool>(all(vec3<bool>(false, false, true)), any(!vec4<bool>(false, arg_3.x, false, true)), arg_2.b.x, true), select(vec4<bool>(arg_2.b.x, true, all(vec2<bool>(arg_3.x, true)), all(vec3<bool>(false, true, true))), vec4<bool>(arg_3.x, true, any(arg_2.b.xx), select(false, false, arg_2.b.x)), select(!vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), !vec4<bool>(arg_3.x, true, arg_2.b.x, false), all(vec4<bool>(arg_3.x, arg_2.b.x, false, false)))));
    global0 = array<vec4<u32>, 32>();
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(min(9928u, 4294967295u), 6u)], _wgslsmith_add_u32(0u, arg_0.x));
    let var_3 = firstLeadingBit(~(abs(var_0.a) << (31826u % 32u))) | arg_0.x;
    return ~(arg_0.yxz ^ ~max(vec3<u32>(var_3, 1u, 6913u) & vec3<u32>(50016u, 53556u, 4294967295u), max(arg_0.yww, arg_0.wxz)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> f32 {
    global0 = array<vec4<u32>, 32>();
    let var_0 = arg_1;
    let var_1 = vec4<bool>(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true)), false)), true, false);
    var var_2 = Struct_1(arg_0.x, var_1.zwz, vec3<bool>(!(select(true, var_1.x, var_1.x) && any(vec2<bool>(false, false))), !var_1.x, any(vec2<bool>(true, any(var_1.zz)))), vec2<u32>(u_input.c, 1u));
    global2 = array<i32, 6>();
    return 289f;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    global2 = array<i32, 6>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497f * 788f) - 1121f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 168f) + _wgslsmith_f_op_f32(1000f + 564f)))) + _wgslsmith_f_op_f32(func_4(func_3(vec4<u32>(_wgslsmith_add_u32(1u, 27322u), func_2(), _wgslsmith_mult_u32(1u, u_input.c), arg_1.a), ~11807u << (u_input.c % 32u), Struct_1(~arg_0.x, !arg_1.c, !vec3<bool>(true, arg_1.b.x, var_0.c.x), var_0.d), vec2<bool>(any(arg_1.b.xx), true)), Struct_2(-19796i, u_input.c))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_0.a), 24u)];
    global0 = array<vec4<u32>, 32>();
    return all(!(!(!vec4<bool>(false, false, false, var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 6>();
    var var_0 = Struct_1(_wgslsmith_mod_u32(firstLeadingBit(abs(u_input.c)), 0u), select(select(vec3<bool>(true, any(vec3<bool>(true, true, true)), false), vec3<bool>(true, func_1(vec3<u32>(u_input.c, u_input.c, u_input.c), Struct_1(0u, vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec2<u32>(1u, u_input.c))), func_1(vec3<u32>(u_input.c, 28794u, 0u), Struct_1(4294967295u, vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec2<u32>(u_input.c, 4294967295u)))), vec3<bool>(all(vec3<bool>(true, false, false)), false, all(vec4<bool>(true, true, true, true)))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true)), 38939u >= u_input.c), true), any(vec2<bool>(true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, false)), true, true), true), true), vec2<u32>(_wgslsmith_mod_u32(func_3(countOneBits(global0[_wgslsmith_index_u32(1u, 32u)]), ~50545u, Struct_1(u_input.c, vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec2<u32>(u_input.c, u_input.c)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))).x, ~(~u_input.c)), 1u));
    let var_1 = abs(_wgslsmith_add_u32(~1u, reverseBits(firstLeadingBit(4294967295u))));
    var var_2 = vec4<i32>(u_input.d.x, -74690i, countOneBits(-abs(-81964i)) | (~(-1i) & -_wgslsmith_mod_i32(u_input.b.x, -17436i)), -global2[_wgslsmith_index_u32(31889u << (1u % 32u), 6u)]);
    let var_3 = !select(select(var_0.b, !var_0.b, select(vec3<bool>(false, var_0.b.x, var_0.b.x), var_0.c, vec3<bool>(true, var_0.c.x, false))), !(!var_0.c), select(!vec3<bool>(false, false, var_0.c.x), var_0.b, all(select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.c.x, var_0.c.x, var_0.b.x), var_0.c))));
    global1 = array<vec2<i32>, 6>();
    let var_4 = 1813f;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -38347i, countOneBits(vec2<i32>(-(861i << (1u % 32u)), global3[_wgslsmith_index_u32(u_input.c, 24u)] & (79818i & global3[_wgslsmith_index_u32(53121u, 24u)]))), ~_wgslsmith_sub_vec2_u32(max(vec2<u32>(1032u, var_1), vec2<u32>(u_input.c, var_0.d.x)) << (~var_0.d % vec2<u32>(32u)), abs(var_0.d) | var_0.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(817f + var_4))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4, var_4, 461f), vec3<f32>(var_4, 1028f, 1000f)), vec3<f32>(1054f, var_4, var_4)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_4, var_4))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_4)), _wgslsmith_f_op_f32(var_4 + var_4)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-714f)), 1119f, false))))));
}

