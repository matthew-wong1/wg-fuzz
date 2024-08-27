struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
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

var<private> global0: bool = false;

var<private> global1: array<Struct_4, 32>;

var<private> global2: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4, arg_3: vec4<bool>) -> vec2<u32> {
    global1 = array<Struct_4, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -425f, 669f)))));
    global0 = arg_2.a.c.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.b, -769f) * arg_2.a.b) - arg_0.zx) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a.b, -879f), arg_2.a.b))))));
    let var_2 = arg_1;
    return _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(arg_1, u_input.c) & vec2<u32>(arg_1, arg_1)) & countOneBits(~(~vec2<u32>(0u, arg_1))), vec2<u32>(arg_1, 0u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    var var_0 = func_3(vec3<f32>(_wgslsmith_div_f32(global2.b.b, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3)) - -2224f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3, arg_3, false)) + _wgslsmith_f_op_f32(-240f * arg_2.b))), u_input.c & u_input.c, Struct_4(Struct_3(arg_1.x, vec2<f32>(arg_2.b, -2475f), vec2<bool>(false, false), vec3<bool>(true, true, true), ~4294967295u), Struct_3(arg_1.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b.b, arg_2.b), vec2<f32>(arg_3, arg_2.b), false)), vec2<bool>(true, true), vec3<bool>(false, true, true), ~arg_1.x), Struct_1(countOneBits(arg_0.zxy), _wgslsmith_f_op_f32(1476f - 2922f))), select(vec4<bool>(any(vec3<bool>(true, false, false)), true, any(vec3<bool>(true, false, false)), false), vec4<bool>(true, true, true, true), (arg_1.x & u_input.c) < ~1u)) ^ firstLeadingBit(arg_1.zy);
    var var_1 = Struct_2(Struct_1(global2.a.a, global2.a.b), Struct_1(vec3<i32>(arg_2.a.x, global2.a.a.x, -arg_0.x), -636f));
    var var_2 = countOneBits(reverseBits(_wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0.x, 1u)), _wgslsmith_clamp_vec2_u32(arg_1.zw, vec2<u32>(13430u, u_input.c), vec2<u32>(arg_1.x, arg_1.x)))));
    let var_3 = Struct_2(var_1.b, global2.a);
    var var_4 = var_3;
    return _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(firstLeadingBit(arg_1)), ~firstTrailingBit(vec4<u32>(10596u, 84875u, var_2.x, var_2.x))), arg_1);
}

fn func_1() -> u32 {
    let var_0 = Struct_2(global2.a, global2.b);
    let var_1 = var_0;
    var var_2 = ~_wgslsmith_sub_vec4_u32(select(~(~vec4<u32>(52458u, 70348u, u_input.c, 50748u)), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.a.x, var_1.b.a.x, var_1.a.a.x, u_input.b), vec4<i32>(var_1.b.a.x, 1i, -2195i, -19330i)), vec4<u32>(u_input.c, 21872u, 41186u, u_input.c), Struct_1(var_1.b.a, -1256f), _wgslsmith_f_op_f32(ceil(-855f))), (var_0.a.b <= global2.a.b) == (-125f <= var_0.b.b)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), ~u_input.c, u_input.c, _wgslsmith_mod_u32(u_input.c, 7426u)), ~vec4<u32>(u_input.c, u_input.c, 20050u, 0u) | max(vec4<u32>(25518u, u_input.c, 21303u, u_input.c), vec4<u32>(4294967295u, u_input.c, 0u, u_input.c))));
    global1 = array<Struct_4, 32>();
    var var_3 = Struct_4(Struct_3(0u >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.x, u_input.c), firstLeadingBit(u_input.c)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a.b, -1031f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1605f, global2.b.b)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.b, 1000f), vec2<f32>(1658f, 745f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-981f, -1395f) * vec2<f32>(var_0.b.b, global2.a.b)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), true), u_input.c ^ (u_input.c ^ u_input.c)), Struct_3(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.c, 0u, 1u, 4294967295u)), ~(~vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.b, var_0.a.b))))), select(vec2<bool>(true, all(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(-var_1.a.b) >= _wgslsmith_f_op_f32(ceil(var_0.b.b))), vec3<bool>(true, true, true), 4294967295u), var_1.b);
    return abs(_wgslsmith_mod_u32(var_2.x, ~_wgslsmith_div_u32(var_2.x, firstLeadingBit(4294967295u))));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>) -> Struct_3 {
    global0 = false;
    let var_0 = _wgslsmith_mod_u32(~(~37305u), _wgslsmith_dot_vec4_u32(firstTrailingBit(select(vec4<u32>(0u, 4294967295u, 4294967295u, 0u) << (vec4<u32>(u_input.c, u_input.c, arg_1.x, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x)), true)), ~(~select(vec4<u32>(4294967295u, u_input.c, u_input.c, arg_1.x), vec4<u32>(0u, 0u, 16529u, 4984u), true))));
    return Struct_3(_wgslsmith_add_u32(arg_1.x, arg_1.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b) + -817f)), _wgslsmith_f_op_f32(max(global2.a.b, 1268f))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), true), true), ~_wgslsmith_div_u32(~arg_1.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.a.x;
    var var_1 = func_4(-1i | (104777i ^ -(-29828i << (u_input.c % 32u))), vec2<u32>(_wgslsmith_sub_u32(29473u, func_1()) | u_input.c, _wgslsmith_add_u32(3543u, abs(u_input.c) & 30059u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -579f, -576f, global2.b.b) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1478f, 2122f, 1320f, var_1.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(global2.a.b * 898f), _wgslsmith_f_op_f32(-var_1.b.x), 1f, global2.b.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1598f, var_1.b.x, -1000f, 282f), vec4<f32>(-537f, global2.a.b, 1000f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.x, global2.b.b, global2.b.b, 351f), vec4<f32>(-674f, 1078f, var_1.b.x, var_1.b.x)))), select(!vec4<bool>(var_1.d.x, var_1.c.x, false, var_1.d.x), vec4<bool>(var_1.c.x, true, false, var_1.c.x), var_1.d.x)))));
    global0 = !(true & func_4(global2.a.a.x >> (~var_1.e % 32u), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b, 1000f, var_2.x)), 1u, Struct_4(Struct_3(var_1.a, var_1.b, var_1.d.xy, vec3<bool>(var_1.d.x, true, var_1.d.x), 4294967295u), Struct_3(var_1.e, var_2.xw, vec2<bool>(var_1.d.x, false), var_1.d, 23476u), Struct_1(global2.b.a, -792f)), vec4<bool>(true, true, true, true))).d.x);
    let var_3 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_1.a, 4294967295u, var_1.a, var_1.a)), reverseBits(vec4<u32>(0u, var_1.e, 0u, 15878u)) << (vec4<u32>(29680u, var_1.a, u_input.c, 61116u) % vec4<u32>(32u))), ~(vec4<u32>(u_input.c, 67924u, u_input.c, 0u) & vec4<u32>(u_input.c, 46540u, var_1.a, u_input.c)) ^ vec4<u32>(u_input.c, var_1.e, ~1u, ~u_input.c)), _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_1.a, u_input.c, var_1.e), ~vec4<u32>(var_1.a, u_input.c, var_1.a, 1u), ~vec4<u32>(var_1.a, 1u, 1u, u_input.c)), vec4<u32>(7510u, 1u, ~4294967295u, 1u)));
    let var_4 = vec2<i32>(-global2.b.a.x << (u_input.c % 32u), _wgslsmith_mult_i32(abs(~59812i) | (global2.a.a.x ^ countOneBits(u_input.a.x)), -2147483647i << (~var_1.a % 32u)));
    let var_5 = Struct_2(Struct_1(~select(vec3<i32>(0i, -52571i, global2.a.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(global2.a.a.x, var_4.x, 1i), vec3<i32>(2147483647i, -1i, u_input.a.x)), func_4(global2.a.a.x, vec2<u32>(u_input.c, 0u)).d), var_1.b.x), global2.a);
    let var_6 = Struct_5(Struct_3(_wgslsmith_dot_vec2_u32(var_3.wy, _wgslsmith_mod_vec2_u32(var_3.wz, vec2<u32>(8055u, u_input.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b.x, global2.b.b)))))), var_1.d.xy, !var_1.d, 48505u), -3951i >> (_wgslsmith_mod_u32(u_input.c, 0u) % 32u));
    let var_7 = Struct_5(Struct_3(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(var_1.e, u_input.c, var_6.a.a, var_3.x)), 22462u), var_1.b, vec2<bool>(!any(var_1.c), all(!vec4<bool>(var_1.d.x, var_6.a.d.x, true, var_1.c.x))), select(vec3<bool>(all(vec3<bool>(false, var_6.a.d.x, true)), all(var_1.d), var_1.a > var_6.a.a), !var_6.a.d, vec3<bool>(!var_1.d.x, all(vec4<bool>(var_6.a.c.x, var_6.a.d.x, true, true)), var_1.c.x)), ~firstTrailingBit(var_6.a.a)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(u_input.a.x << (~52780u % 32u)), 14543i));
}

