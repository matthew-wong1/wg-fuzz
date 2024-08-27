struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 11>;

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1556f, 1170f, -982f), vec3<f32>(-1142f, 1452f, -436f), vec3<f32>(-660f, -228f, -1422f), vec3<f32>(1288f, -724f, 166f));

var<private> global3: vec2<i32> = vec2<i32>(1i, -25396i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> vec2<f32> {
    global2 = array<vec3<f32>, 4>();
    return global0.a;
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    global0 = arg_0;
    global0 = arg_0;
    let var_0 = !select(global0.b, !select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], false), global0.b, all(vec4<bool>(false, false, true, global0.b.x))), select(arg_0.b, select(!arg_0.b, vec2<bool>(true, global0.b.x), all(vec2<bool>(arg_0.b.x, false))), arg_0.b));
    let var_1 = Struct_1(vec4<i32>(global3.x, 2147483647i, global3.x, 1170i) >> (~(~firstTrailingBit(vec4<u32>(9200u, u_input.a, 7502u, u_input.a))) % vec4<u32>(32u)), -(vec4<i32>(global3.x << (u_input.a % 32u), global3.x, _wgslsmith_sub_i32(0i, global3.x), global3.x << (0u % 32u)) >> (~(vec4<u32>(4294967295u, 4294967295u, u_input.a, 11358u) & vec4<u32>(19467u, u_input.a, 17861u, 1u)) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-986f, arg_0.a.x, 1441f), global2[_wgslsmith_index_u32(0u, 4u)])) + global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 4u)]))), global2[_wgslsmith_index_u32(~(~u_input.a), 4u)]), true);
    global3 = vec2<i32>(-var_1.b.x, max(1i, reverseBits(var_1.a.x)));
    return firstTrailingBit(var_1.b);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_3 {
    global2 = array<vec3<f32>, 4>();
    global0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-721f + 480f))), 654f), vec2<bool>(any(select(vec4<bool>(true, arg_1.d, global1[_wgslsmith_index_u32(u_input.a, 11u)], global0.b.x), !vec4<bool>(arg_1.d, false, false, global1[_wgslsmith_index_u32(arg_2.x, 11u)]), true)), false));
    var var_0 = select(-arg_1.b.zyx, select(_wgslsmith_div_vec3_i32(arg_1.a.zyy, countOneBits(vec3<i32>(17008i, global3.x, 0i))), ~vec3<i32>(arg_3.x, 2147483647i, 0i), !vec3<bool>(false, false, arg_1.d)), all(vec2<bool>(true, true))) << (~arg_2 % vec3<u32>(32u));
    global3 = reverseBits(reverseBits(arg_3.yx));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(max(arg_1.c.xx, arg_1.c.yx)), select(!vec2<bool>(any(vec4<bool>(arg_1.d, global1[_wgslsmith_index_u32(u_input.a, 11u)], true, global1[_wgslsmith_index_u32(28431u, 11u)])), global0.b.x && true), vec2<bool>(global0.b.x && true, true), vec2<bool>(true, false)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(true, Struct_1(vec4<i32>(-1i, 16026i, arg_1.a.x, global3.x), arg_1.b, arg_1.c, true), Struct_3(global0.a, global0.b))).x, _wgslsmith_f_op_f32(-542f + 1141f)))), select(global0.b, vec2<bool>(all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global0.b.x, false, true), vec4<bool>(true, arg_1.d, global1[_wgslsmith_index_u32(4294967295u, 11u)], false), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 11u)], true, false, global1[_wgslsmith_index_u32(4294967295u, 11u)]))), true), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), global0.b))));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(false, Struct_1(vec4<i32>(-2147483647i, 2147483647i, 1i, -2147483647i), vec4<i32>(global3.x, global3.x, 1i, global3.x), vec3<f32>(global0.a.x, global0.a.x, global0.a.x), false), Struct_3(vec2<f32>(1084f, global0.a.x), global0.b))) - _wgslsmith_f_op_vec2_f32(floor(global0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))))), Struct_1(-(vec4<i32>(1i, global3.x, global3.x, 1i) | vec4<i32>(2009i, -51172i, global3.x, global3.x)) << (vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_div_u32(u_input.a, 1u), ~u_input.a) % vec4<u32>(32u)), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(step(global0.a, global0.a)), select(vec2<bool>(false, global0.b.x), vec2<bool>(false, true), vec2<bool>(arg_0.x, arg_0.x)))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(u_input.a, 57300u), 1u), 4u)], !global1[_wgslsmith_index_u32(u_input.a, 11u)]), abs(~(~firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, 18924u)))), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(-1217f, -1064f))), !select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global0.b.x), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], true), arg_0.x))).yxx);
    let var_0 = Struct_1(vec4<i32>(~global3.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global3.x, global3.x)), vec2<i32>(global3.x, global3.x)), _wgslsmith_div_i32(2147483647i, -28731i), global3.x), vec4<i32>(~(-1i) << (~u_input.a % 32u), func_3(func_4(_wgslsmith_f_op_vec2_f32(-global0.a), Struct_1(vec4<i32>(-4610i, 16622i, global3.x, global3.x), vec4<i32>(-35054i, 1i, -32140i, global3.x), vec3<f32>(global0.a.x, global0.a.x, -319f), arg_0.x), vec3<u32>(4294967295u, 0u, u_input.a), vec3<i32>(global3.x, global3.x, 4269i) | vec3<i32>(-2147483647i, 1i, global3.x))).x, min(~(-17686i), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 1i, -22126i, global3.x) ^ vec4<i32>(global3.x, 21948i, global3.x, 22896i), select(vec4<i32>(2147483647i, 0i, global3.x, 56801i), vec4<i32>(global3.x, global3.x, 1i, global3.x), vec4<bool>(true, arg_0.x, global0.b.x, arg_0.x)))), global3.x), vec3<f32>(210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f))), !(_wgslsmith_f_op_f32(-175f - global0.a.x) > global0.a.x) & (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(961f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f * -569f))));
    global2 = array<vec3<f32>, 4>();
    global1 = array<bool, 11>();
    let var_1 = ~(~_wgslsmith_add_u32(29465u, _wgslsmith_div_u32(~u_input.a, ~59283u)));
    return -41718i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.a.x)), global0.a.x);
    var var_1 = _wgslsmith_div_i32(global3.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(46127i, global3.x >> (~4294967295u % 32u)), -2147483647i));
    var var_2 = global0.b.x;
    let var_3 = !select(!(!select(vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], true, global1[_wgslsmith_index_u32(1u, 11u)]), global0.b.x)), vec3<bool>(any(vec2<bool>(true, global0.b.x)) && (11760i < global3.x), any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 11u)], false)), global0.b.x), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(17863u, 11u)], false)), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(31851u, 11u)], false, global1[_wgslsmith_index_u32(1u, 11u)]), true), !(global0.a.x != 529f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))));
    var var_5 = -vec4<i32>(func_1(global0.b), 40155i, abs(-1i), ~11789i);
    var var_6 = max(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global3.x, global3.x, 40989i), abs(vec4<i32>(29928i, var_5.x, -49777i, var_5.x)))), select(_wgslsmith_mod_i32(var_5.x, abs(_wgslsmith_mod_i32(var_5.x, 0i))), countOneBits(~var_5.x), 9432u != abs(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, 33162i, var_5.x), u_input.a, -(-2156i ^ global3.x), -countOneBits(select(vec3<i32>(42178i, global3.x, global3.x), vec3<i32>(60056i, var_5.x, 0i), var_3)) >> (vec3<u32>(u_input.a, 8746u, 11654u) % vec3<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~(~u_input.a), ~_wgslsmith_clamp_u32(8426u, 4294967295u, 4294967295u), ~u_input.a, 6712u << (u_input.a % 32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(5309u, u_input.a, 15366u, 31086u) | vec4<u32>(30311u, u_input.a, u_input.a, u_input.a), abs(vec4<u32>(43859u, u_input.a, u_input.a, 1u))), vec4<u32>(0u, ~25397u, ~u_input.a, min(u_input.a, 25684u)))));
}

