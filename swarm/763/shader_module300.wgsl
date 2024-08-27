struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

var<private> global1: array<vec2<i32>, 30>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>((arg_0.x | (u_input.d > -33583i)) && all(select(vec3<bool>(arg_1.d.a.x, arg_0.x, false), vec3<bool>(false, true, arg_2.a.a.x), arg_0.x)), 4294967295u < _wgslsmith_sub_u32(0u << (u_input.c.x % 32u), ~u_input.c.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, 2147483647i, u_input.d), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_2.e, 2147483647i), vec3<i32>(47546i, -2147483647i, -6559i))) < ~abs(u_input.e.x)), ~35805u, ~arg_2.b.b.c);
    let var_1 = arg_1.b;
    var var_2 = arg_2;
    let var_3 = var_2.b;
    let var_4 = ~81917u;
    return arg_2.b.b.a;
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(!func_3(vec3<bool>(true, true, true), Struct_4(Struct_1(vec3<bool>(false, false, true), 1u, u_input.c.x), Struct_3(219f, Struct_1(vec3<bool>(true, true, false), u_input.c.x, 4294967295u), u_input.c.yz, vec3<f32>(-277f, 1299f, 361f)), Struct_1(vec3<bool>(true, true, true), u_input.c.x, 4294967295u), Struct_1(vec3<bool>(false, true, true), 49928u, u_input.c.x), u_input.d), Struct_4(Struct_1(vec3<bool>(true, true, false), 4294967295u, 1u), Struct_3(-762f, Struct_1(vec3<bool>(true, false, false), u_input.c.x, 0u), vec2<u32>(0u, u_input.c.x), vec3<f32>(-1000f, 1639f, 327f)), Struct_1(vec3<bool>(true, false, false), 4294967295u, u_input.c.x), Struct_1(vec3<bool>(false, false, true), u_input.c.x, u_input.c.x), u_input.d), Struct_2(Struct_1(vec3<bool>(true, true, true), 51066u, u_input.c.x), Struct_1(vec3<bool>(false, false, false), 73744u, 80529u), u_input.c, Struct_1(vec3<bool>(true, false, true), 4294967295u, u_input.c.x))), ~firstLeadingBit(1u), u_input.c.x), Struct_1(vec3<bool>(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false)), true), u_input.c.x, u_input.c.x), u_input.c, Struct_1(vec3<bool>(true, true, true), 0u, 2643u));
    global0 = array<vec2<bool>, 21>();
    let var_1 = var_0;
    let var_2 = select(select(var_1.b.a.zx, select(vec2<bool>(true, !var_0.a.a.x), vec2<bool>(all(global0[_wgslsmith_index_u32(0u, 21u)]), any(vec2<bool>(var_0.a.a.x, false))), vec2<bool>(true, 32848i < u_input.a)), select(var_1.b.a.xy, var_1.d.a.yy, var_1.a.a.x)), vec2<bool>(false, true), var_0.b.a.x);
    let var_3 = max(_wgslsmith_add_u32(~(~_wgslsmith_mult_u32(0u, u_input.c.x)), abs(24089u) << (1u % 32u)), ~u_input.c.x);
    return var_0.b.a.x;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_mult_u32(1u, select(38689u, u_input.c.x, !(any(global0[_wgslsmith_index_u32(u_input.c.x, 21u)]) && true)));
    var var_1 = ~reverseBits(vec3<u32>(firstTrailingBit(u_input.c.x), ~(~110184u), _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, 4294967295u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1365f, -836f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1231f, -491f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, -1331f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1031f, -1045f) + vec2<f32>(-1000f, 321f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, 1224f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1054f, 1658f))));
    let var_3 = select(vec2<bool>((~1i == u_input.d) & !func_2(), true), !(!vec2<bool>(any(global0[_wgslsmith_index_u32(var_1.x, 21u)]), false)), (true || select(u_input.d > u_input.b.x, false, all(vec4<bool>(true, true, true, false)))) == false);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))))), 1f, !any(select(vec2<bool>(var_3.x, true), vec2<bool>(var_3.x, true), var_3.x)))), Struct_1(vec3<bool>(all(vec2<bool>(var_3.x, var_3.x)), true, false), 4294967295u, 49540u ^ var_1.x), abs(_wgslsmith_mod_vec2_u32(~var_1.xy, vec2<u32>(u_input.c.x, 1u))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))), -294f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), -1000f))))));
    return select(!all(vec4<bool>(true, true, true, false)), any(select(var_3, select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7294u, 18148u, u_input.c.x), u_input.c), 21u)], global0[_wgslsmith_index_u32(~u_input.c.x, 21u)], vec2<bool>(var_3.x, var_4.b.a.x)), global0[_wgslsmith_index_u32(u_input.c.x, 21u)])), all(!(!(!vec4<bool>(false, var_4.b.a.x, var_4.b.a.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, true | (false && all(vec4<bool>(false, true, true, false))), true, select(func_1(), true, true)), !(!vec4<bool>(true, true, true, all(vec2<bool>(false, true)))), !(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, false), 4952u != u_input.c.x)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(360f, -1000f), _wgslsmith_f_op_f32(round(2056f))))))));
    var var_2 = Struct_4(Struct_1(vec3<bool>(false, _wgslsmith_div_f32(var_1, -1410f) < _wgslsmith_f_op_f32(-var_1), true || (false & var_0.x)), u_input.c.x, max(u_input.c.x << (~u_input.c.x % 32u), ~(~0u))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2010f - var_1), 1f) + _wgslsmith_f_op_f32(-var_1)), Struct_1(select(func_3(var_0.ywx, Struct_4(Struct_1(var_0.wxw, 47160u, 1u), Struct_3(var_1, Struct_1(vec3<bool>(true, var_0.x, var_0.x), u_input.c.x, 11925u), vec2<u32>(1u, 0u), vec3<f32>(var_1, var_1, var_1)), Struct_1(vec3<bool>(false, false, var_0.x), 4294967295u, u_input.c.x), Struct_1(vec3<bool>(var_0.x, true, true), u_input.c.x, u_input.c.x), -1i), Struct_4(Struct_1(var_0.yyw, 2307u, u_input.c.x), Struct_3(-1706f, Struct_1(var_0.xxx, u_input.c.x, 7527u), vec2<u32>(98216u, u_input.c.x), vec3<f32>(1386f, var_1, 315f)), Struct_1(var_0.xyw, 1201u, 18800u), Struct_1(var_0.zxz, u_input.c.x, 1736u), u_input.e.x), Struct_2(Struct_1(var_0.zyy, 21947u, u_input.c.x), Struct_1(vec3<bool>(true, false, true), u_input.c.x, 1u), u_input.c, Struct_1(vec3<bool>(var_0.x, true, true), 60012u, 1u))), func_3(vec3<bool>(var_0.x, var_0.x, true), Struct_4(Struct_1(vec3<bool>(false, false, var_0.x), u_input.c.x, 49742u), Struct_3(var_1, Struct_1(vec3<bool>(var_0.x, true, var_0.x), 41920u, 66126u), u_input.c.yx, vec3<f32>(-482f, 157f, -774f)), Struct_1(vec3<bool>(true, true, true), u_input.c.x, 13301u), Struct_1(vec3<bool>(var_0.x, var_0.x, false), 18679u, 57404u), u_input.a), Struct_4(Struct_1(var_0.zww, 5765u, 15538u), Struct_3(var_1, Struct_1(vec3<bool>(true, true, false), 1u, u_input.c.x), vec2<u32>(17452u, 18585u), vec3<f32>(-1000f, -1000f, -1787f)), Struct_1(vec3<bool>(false, true, false), 1u, 0u), Struct_1(var_0.wyx, u_input.c.x, u_input.c.x), -41927i), Struct_2(Struct_1(vec3<bool>(false, var_0.x, var_0.x), 1u, u_input.c.x), Struct_1(var_0.xyx, u_input.c.x, u_input.c.x), vec3<u32>(59160u, u_input.c.x, 0u), Struct_1(var_0.ywz, 36315u, 1u))), func_3(var_0.ywy, Struct_4(Struct_1(var_0.zxy, u_input.c.x, 10312u), Struct_3(var_1, Struct_1(vec3<bool>(false, true, false), 1u, u_input.c.x), vec2<u32>(0u, u_input.c.x), vec3<f32>(1408f, var_1, var_1)), Struct_1(var_0.wwx, u_input.c.x, u_input.c.x), Struct_1(var_0.yzx, 4294967295u, 4294967295u), u_input.b.x), Struct_4(Struct_1(vec3<bool>(var_0.x, var_0.x, true), u_input.c.x, 88516u), Struct_3(1726f, Struct_1(var_0.zxx, u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 0u), vec3<f32>(var_1, -422f, 288f)), Struct_1(var_0.xxx, 22535u, u_input.c.x), Struct_1(var_0.xzy, 18789u, u_input.c.x), u_input.a), Struct_2(Struct_1(var_0.yxx, 11039u, 92994u), Struct_1(vec3<bool>(false, true, var_0.x), 1u, 21776u), vec3<u32>(u_input.c.x, 22498u, u_input.c.x), Struct_1(var_0.yzy, u_input.c.x, 41479u)))), ~firstLeadingBit(u_input.c.x), u_input.c.x), ~u_input.c.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 2087f, 970f), vec3<f32>(-1000f, var_1, var_1))))), Struct_1(vec3<bool>(false, false, all(select(vec4<bool>(var_0.x, true, true, true), var_0, true))), 9123u, 0u), Struct_1(select(!var_0.yyw, !var_0.xxx, vec3<bool>(all(vec4<bool>(false, var_0.x, true, var_0.x)), var_0.x, u_input.e.x > u_input.d)), 1u, u_input.c.x), 1i);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.b.a))))), -2211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1))))), _wgslsmith_f_op_f32(var_1 * var_1)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1) + vec4<f32>(var_2.b.a, -1206f, -330f, 1184f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.b.d.x)), _wgslsmith_f_op_f32(floor(1000f)), var_2.b.a, _wgslsmith_f_op_f32(-var_2.b.d.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b.a, var_1, 162f, -646f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1328f, var_1, var_1)))))));
    global1 = array<vec2<i32>, 30>();
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1740f)) - _wgslsmith_f_op_f32(-997f + -1450f)), _wgslsmith_f_op_f32(abs(1794f)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -1000f)) - 1245f)));
    let var_4 = Struct_5(firstTrailingBit(_wgslsmith_clamp_i32(~2147483647i, -countOneBits(var_2.e), countOneBits(-u_input.e.x))), true, false, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(var_4.a, _wgslsmith_add_i32(31481i, -24789i)) & (vec2<i32>(u_input.b.x, 22622i) ^ vec2<i32>(u_input.a, var_2.e)), abs(vec2<i32>(51949i, var_4.a) << ((vec2<u32>(4294967295u, var_2.d.b) & vec2<u32>(var_4.d, u_input.c.x)) % vec2<u32>(32u)))));
}

