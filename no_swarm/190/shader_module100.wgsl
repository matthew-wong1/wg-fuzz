struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(34066u >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(19940u, u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, 4294967295u)) % 32u))), 32u)];
    global0 = array<vec2<bool>, 32>();
    let var_1 = Struct_2(u_input.c.xz, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-376f, -815f, 982f, -927f))))))), Struct_1(_wgslsmith_f_op_f32(floor(1000f)), arg_1.xxx, !vec2<bool>(any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x)), vec4<i32>(_wgslsmith_mult_i32(arg_1.x | -arg_0, -2143i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, u_input.d), ~1i, _wgslsmith_div_i32(43599i, -1i)) & -2147483647i, -108191i, ~_wgslsmith_mod_i32(_wgslsmith_add_i32(-5163i, u_input.b.x), -35700i)), Struct_1(_wgslsmith_f_op_f32(floor(-1084f)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1.wyx, vec3<i32>(-2147483647i, u_input.b.x, 1i) << (u_input.c.yxx % vec3<u32>(32u))), vec3<i32>(select(arg_1.x, arg_0, true), u_input.b.x, u_input.d ^ arg_0), ~abs(vec3<i32>(0i, -3831i, arg_1.x))), vec2<bool>(all(!vec4<bool>(false, false, var_0.x, true)), -u_input.b.x >= abs(-1i))));
    var var_2 = true;
    global0 = array<vec2<bool>, 32>();
    return firstLeadingBit(~((i32(-1i) * -37803i) << (var_1.a.x % 32u)));
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    var var_0 = u_input.d ^ (75945i >> (u_input.c.x % 32u));
    let var_1 = Struct_2(u_input.c.zy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1000f + -1094f), -136f, -741f, _wgslsmith_f_op_f32(f32(-1f) * -240f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1739f, -443f, -1422f, -1010f))))), Struct_1(_wgslsmith_f_op_f32(round(417f)), vec3<i32>(2147483647i, ~_wgslsmith_mult_i32(u_input.d, u_input.d), abs(u_input.a ^ -2147483647i)), !global0[_wgslsmith_index_u32(37024u, 32u)]), (vec4<i32>(u_input.b.x << (4294967295u % 32u), 2147483647i, -u_input.b.x, -1i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.a, u_input.b.x) << (vec4<u32>(1u, u_input.c.x, 37387u, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.a, -52176i, 8042i, -80975i))) ^ -vec4<i32>(func_3(u_input.d, vec4<i32>(u_input.a, 69296i, 0i, -1i)), 2147483647i, -u_input.a, 16463i), Struct_1(_wgslsmith_f_op_f32(step(800f, _wgslsmith_f_op_f32(sign(828f)))), -(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), !(!select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(58382u, 32u)], true))));
    let var_2 = ~u_input.c & ~u_input.c;
    return Struct_2(u_input.c.xx >> (vec2<u32>(65750u, ~firstLeadingBit(46478u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.a)), -919f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1234f))), _wgslsmith_f_op_f32(-var_1.b.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.b, vec4<f32>(var_1.c.a, var_1.e.a, 205f, var_1.e.a))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, var_1.b.x, 1088f, -1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) * var_1.b))), var_1.c, reverseBits(vec4<i32>(reverseBits(~2147483647i), -1i, abs(func_3(6301i, var_1.d)), -51399i)), Struct_1(var_1.b.x, vec3<i32>(-34334i, -4628i, u_input.b.x), !(!var_1.c.c)));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    let var_0 = func_2();
    let var_1 = select(vec4<bool>(any(select(vec4<bool>(true, false, false, arg_1), vec4<bool>(false, var_0.e.c.x, var_0.c.c.x, true), false)), true, (false && !arg_1) | all(!vec4<bool>(true, arg_1, arg_1, arg_1)), !(all(vec4<bool>(true, true, var_0.e.c.x, false)) || (var_0.c.a == -1427f))), !vec4<bool>(true, arg_1, arg_1, all(vec3<bool>(var_0.e.c.x, true, false))), vec4<bool>(!(!any(vec3<bool>(true, true, var_0.c.c.x))), true, true, !((57978i <= arg_0) | true)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a)) * 862f) - _wgslsmith_f_op_f32(-var_0.e.a))));
    return Struct_1(var_0.c.a, var_0.d.wxx, !vec2<bool>(var_0.c.c.x, any(!vec2<bool>(arg_1, false))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_2.yw));
    var var_1 = arg_1;
    var var_2 = vec2<bool>(~_wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.a.c.b.x, u_input.d), _wgslsmith_mod_i32(u_input.d, -9441i)) >= select(-2147483647i, -2147483647i, select(func_1(-2147483647i, true).c.x, false || var_1.b.c.x, true)), any(vec2<bool>(true, all(select(global0[_wgslsmith_index_u32(arg_1.a.a.x, 32u)], vec2<bool>(true, false), arg_1.b.c)))));
    global0 = array<vec2<bool>, 32>();
    let var_3 = firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(func_2().e.b.x, _wgslsmith_mod_i32(arg_3.c.d.x, 26250i)), vec2<i32>(-1i, abs(arg_1.a.e.b.x))));
    return arg_3;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_4) -> vec3<f32> {
    let var_0 = func_2();
    var var_1 = ~(~arg_0.x | ~firstLeadingBit(countOneBits(0u)));
    global0 = array<vec2<bool>, 32>();
    var_1 = ~4294967295u;
    var var_2 = Struct_3(func_4(false, Struct_3(var_0, func_4(var_0.e.c.x, Struct_3(Struct_2(arg_0.yx, vec4<f32>(arg_2.c.e.a, arg_2.a, 295f, arg_2.a), Struct_1(824f, var_0.d.xxw, var_0.c.c), vec4<i32>(arg_2.c.e.b.x, 2147483647i, 4226i, u_input.b.x), Struct_1(arg_2.b, arg_2.c.e.b, vec2<bool>(var_0.c.c.x, false))), Struct_1(289f, arg_2.c.d.xxz, global0[_wgslsmith_index_u32(0u, 32u)])), vec4<f32>(233f, 1464f, -2094f, var_0.b.x), func_4(arg_1.x, Struct_3(arg_2.c, var_0.e), vec4<f32>(1251f, var_0.b.x, -289f, var_0.b.x), Struct_4(arg_2.c.e.a, var_0.b.x, var_0, var_0.e.b))).c.e), _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -978f, arg_2.b, 1224f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.a, var_0.e.a, -508f, var_0.c.a), arg_2.c.b, vec4<bool>(var_0.e.c.x, arg_2.c.e.c.x, false, true))))), func_4((var_0.e.a >= arg_2.a) | arg_1.x, Struct_3(func_4(false, Struct_3(arg_2.c, var_0.c), var_0.b, arg_2).c, arg_2.c.e), func_4(true, Struct_3(arg_2.c, arg_2.c.e), vec4<f32>(arg_2.a, arg_2.b, var_0.b.x, var_0.b.x), func_4(true, Struct_3(var_0, var_0.e), var_0.b, arg_2)).c.b, func_4(func_4(var_0.e.c.x, Struct_3(var_0, Struct_1(231f, vec3<i32>(-59130i, var_0.e.b.x, -26725i), vec2<bool>(arg_2.c.c.c.x, true))), var_0.b, Struct_4(2128f, 795f, var_0, vec3<i32>(var_0.e.b.x, arg_2.d.x, 69400i))).c.c.c.x, Struct_3(var_0, Struct_1(arg_2.b, vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec2<bool>(true, var_0.c.c.x))), _wgslsmith_f_op_vec4_f32(sign(arg_2.c.b)), Struct_4(var_0.e.a, arg_2.c.b.x, arg_2.c, arg_2.c.c.b)))).c, func_1(1i, func_2().e.c.x));
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-155f * func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.d.x, arg_2.d.x), vec2<i32>(var_2.a.e.b.x, u_input.a)), all(vec2<bool>(true, arg_1.x))).a))), _wgslsmith_f_op_f32(-arg_2.c.b.x), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 32>();
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_5(~u_input.c.xyz, vec3<bool>(true, true, select(false, all(global0[_wgslsmith_index_u32(0u, 32u)]), false)), func_4(false, Struct_3(Struct_2(vec2<u32>(68783u, 12826u), vec4<f32>(1194f, 999f, 488f, 125f), Struct_1(2094f, vec3<i32>(u_input.b.x, u_input.a, u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<i32>(-20151i, 2147483647i, u_input.b.x, 53159i) << (u_input.c % vec4<u32>(32u)), func_1(u_input.b.x, true)), Struct_1(-660f, vec3<i32>(u_input.d, -1i, 2147483647i), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(186f, 514f, 392f, 146f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1245f, 193f, -2160f, 433f) * vec4<f32>(-1000f, 746f, 406f, 701f))), false)), Struct_4(_wgslsmith_f_op_f32(trunc(1795f)), -776f, Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(6133u, 1u), vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1608f, 271f, 1083f, 320f), vec4<f32>(-1000f, -348f, -577f, 1000f)), Struct_1(-460f, vec3<i32>(u_input.d, u_input.b.x, 0i), vec2<bool>(false, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 25032i, u_input.a), vec4<i32>(u_input.d, 2147483647i, u_input.b.x, u_input.a)), Struct_1(-159f, vec3<i32>(u_input.a, u_input.b.x, u_input.d), vec2<bool>(true, false))), _wgslsmith_mult_vec3_i32(vec3<i32>(23105i, u_input.d, 2147483647i), vec3<i32>(u_input.d, -18102i, 61364i) << (u_input.c.xxw % vec3<u32>(32u)))))));
    global0 = array<vec2<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(~u_input.b.x, ~38358i), u_input.b.x), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -697f), _wgslsmith_f_op_f32(-var_1.x))))));
}

