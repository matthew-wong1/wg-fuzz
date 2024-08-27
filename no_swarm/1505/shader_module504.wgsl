struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(763f, 2019f, 603f, 1263f, 711f, 1000f, 707f, 412f, -1139f, -989f, 511f, -269f, 1023f, 929f, 697f, 1909f, -457f, -311f, 511f, -830f, -638f, 690f, -1020f, -119f, 290f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> vec2<u32> {
    global0 = array<f32, 25>();
    let var_0 = Struct_1(all(vec3<bool>(!arg_0.b, true, -377f > _wgslsmith_f_op_f32(arg_1.a.x * 1013f))), arg_1.c.b, firstLeadingBit(vec2<i32>(-arg_3, arg_1.c.c.x)));
    var var_1 = _wgslsmith_clamp_u32(arg_1.b, ~3822u, arg_1.b);
    let var_2 = select(select(!(!(!vec3<bool>(true, arg_0.b, true))), !vec3<bool>(var_0.a, all(vec2<bool>(var_0.a, true)), false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-971f)), -1164f, 88642u < u_input.b.x)) > _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])))), !select(select(!vec3<bool>(false, var_0.a, arg_0.b), select(vec3<bool>(true, arg_0.b, var_0.b), vec3<bool>(false, false, false), vec3<bool>(true, var_0.a, arg_1.c.b)), !vec3<bool>(arg_1.c.b, false, var_0.b)), !vec3<bool>(true, arg_0.a, true), !(!vec3<bool>(var_0.b, arg_1.c.a, false))), vec3<bool>(true, all(vec3<bool>(arg_1.c.a, arg_1.c.b, var_0.b)) & ((u_input.a.x != u_input.b.x) && arg_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a.x, -766f))) != _wgslsmith_f_op_f32(-807f - 509f)));
    let var_3 = vec4<bool>(true, arg_1.c.b, any(select(var_2.zy, var_2.zx, select(vec2<bool>(false, true), !var_2.yy, var_2.yx))), !(!select(false, arg_0.a, arg_0.b || false)));
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> Struct_3 {
    var var_0 = 14910i;
    var var_1 = Struct_4(vec2<f32>(-291f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(u_input.a.x | u_input.a.x, 83279u), 25u)] + global0[_wgslsmith_index_u32(~arg_2, 25u)])), _wgslsmith_clamp_u32(arg_2, 0u, 8294u), Struct_1(false, all(vec2<bool>(true, true)), select(abs(vec2<i32>(arg_0, -35254i)), vec2<i32>(i32(-1i) * -4534i, _wgslsmith_mod_i32(arg_0, arg_0)), vec2<bool>(true, true))));
    global0 = array<f32, 25>();
    let var_2 = Struct_3(-48035i, func_3(var_1.c, Struct_4(var_1.a, 41856u, var_1.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_1.c.c.x, arg_0, arg_0), vec3<i32>(1i, 1i, min(arg_0, -2147483647i))), 1i), arg_1.wy, abs(arg_0));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - 666f)), vec4<i32>(2147483647i, -var_1.c.c.x, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -5481i, var_1.c.c.x), vec3<i32>(-33468i, var_2.a, -6271i)), vec3<i32>(var_2.a, -25161i, 2147483647i)), -1i));
    return Struct_3(firstTrailingBit(_wgslsmith_dot_vec4_i32(var_3.b, var_3.b) ^ -2147483647i) & ((1341i | select(78i, var_1.c.c.x, true)) >> (~select(var_2.b.x, u_input.a.x, true) % 32u)), u_input.b, vec2<u32>(~66227u, 0u), arg_0);
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    var var_0 = ~(((~vec3<u32>(11992u, 74225u, 1u) ^ vec3<u32>(arg_0.c.x, u_input.a.x, u_input.a.x)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.c.x), vec3<u32>(4294967295u, arg_0.c.x, u_input.a.x)) % vec3<u32>(32u))) << (vec3<u32>(abs(reverseBits(u_input.a.x)), _wgslsmith_div_u32(arg_0.c.x >> (arg_0.c.x % 32u), _wgslsmith_sub_u32(4294967295u, 1u)), firstTrailingBit(reverseBits(4294967295u))) % vec3<u32>(32u)));
    return Struct_1(!any(vec2<bool>(all(vec4<bool>(false, false, true, arg_1)), arg_1)), true, reverseBits(abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(7999i, 2147483647i), vec2<i32>(arg_0.d, arg_0.d), vec2<i32>(arg_0.a, 1i)))));
}

fn func_1() -> vec2<u32> {
    var var_0 = func_4(func_2(-2147483647i, max(vec4<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 0u)), ~u_input.b.x), min(~vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u), ~vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, 96004u))), _wgslsmith_add_u32(~1u, 0u)), true);
    var_0 = func_4(Struct_3(i32(-1i) * -1i, ~vec2<u32>(abs(u_input.a.x), 35838u), ~(~u_input.a), var_0.c.x), var_0.b);
    var var_1 = func_4(Struct_3(-_wgslsmith_dot_vec2_i32(vec2<i32>(-38511i, -5685i), _wgslsmith_mult_vec2_i32(var_0.c, vec2<i32>(var_0.c.x, -63445i))), vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.b.x >> (20414u % 32u), 44976u), 2147483647i), false);
    var_0 = func_4(func_2(~(-10666i), countOneBits(vec4<u32>(reverseBits(4294967295u), 5484u, 29912u, min(u_input.a.x, 0u))), _wgslsmith_sub_u32(65577u, firstLeadingBit(~u_input.b.x))), false);
    let var_2 = global0[_wgslsmith_index_u32(0u, 25u)];
    return _wgslsmith_mult_vec2_u32(func_2(_wgslsmith_add_i32(var_1.c.x, -firstTrailingBit(0i)), vec4<u32>(u_input.a.x, u_input.b.x, 47738u, u_input.a.x), 8928u | ~reverseBits(u_input.a.x)).c, _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, 21418u), max(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.b.x, 0u)) | vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, u_input.b.x) | u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = Struct_3(countOneBits(select(1i, ~35406i, all(vec4<bool>(false, false, false, true)))) & 34692i, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(abs(u_input.a), u_input.b), ~u_input.b | max(u_input.a, vec2<u32>(u_input.a.x, 0u))), reverseBits(~vec2<u32>(u_input.b.x, u_input.b.x) << (abs(u_input.a) % vec2<u32>(32u)))), func_1(), _wgslsmith_clamp_i32(-2147483647i >> (func_3(Struct_1(true, true, vec2<i32>(1i, 1i)), Struct_4(vec2<f32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(80523u, 25u)]), 49917u, Struct_1(false, false, vec2<i32>(1i, -52835i))), min(-15137i, 25699i), -3501i).x % 32u), 40517i, -min(i32(-1i) * -1i, _wgslsmith_clamp_i32(-4318i, -28738i, 18599i))));
    global0 = array<f32, 25>();
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-881f, global0[_wgslsmith_index_u32(56426u, 25u)]) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], -608f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 25u)], -2310f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, -168f))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true))), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 25u)] + global0[_wgslsmith_index_u32(~34537u, 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 25u)]) + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 25u)])))))), var_1.b.x, func_4(func_2(-2147483647i, select(max(vec4<u32>(1u, 19870u, 80171u, var_1.b.x), vec4<u32>(u_input.b.x, 43944u, u_input.a.x, u_input.a.x)), vec4<u32>(7889u, 54127u, u_input.a.x, u_input.b.x) | vec4<u32>(u_input.a.x, 1u, u_input.b.x, 4294967295u), all(vec2<bool>(false, false))), countOneBits(firstLeadingBit(106502u))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), any(vec3<bool>(true, false, false))))));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, ~min(24086u, ~var_1.b.x), 51734u), max(vec3<u32>(firstTrailingBit(1u), 74702u, ~var_1.b.x) << (reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(39753u, var_2.b, var_2.b), vec3<u32>(4294967295u, 0u, 16968u))) % vec3<u32>(32u)), abs(vec3<u32>(var_2.b, var_2.b, 0u) ^ ~vec3<u32>(var_2.b, u_input.b.x, 42303u))));
    let x = u_input.a;
    s_output = StorageBuffer(-946f, global0[_wgslsmith_index_u32(var_1.c.x, 25u)], _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(max(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(1273u, 755u), vec2<u32>(40064u, 4294967295u)), var_1.c), u_input.b), vec2<u32>(abs(u_input.b.x) << (12291u % 32u), select(4294967295u, 52810u, var_2.c.b) & _wgslsmith_clamp_u32(1u, u_input.b.x, var_1.c.x))), ~var_1.b.x, var_2.c.c.x);
}

