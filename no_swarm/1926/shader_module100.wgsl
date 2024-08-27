struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(i32(-2147483648), -30949i, 64601i, 58827i, 1i, 2147483647i, 21514i, -5134i, 0i, -38927i, -1i, -1246i, -1i, -50306i, 1i, 27517i, 2147483647i, -13211i, -100427i, 68407i, i32(-2147483648));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.a)))))), arg_1.a.b);
    global0 = array<i32, 21>();
    var var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(49826u ^ (u_input.e | arg_1.a.b.x), 86422u), abs(var_0.b.zx));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x * 1434f))), -232f), var_0.a.x, _wgslsmith_f_op_f32(-429f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-390f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x - arg_1.a.a.x) + -1375f))));
    var_1 = vec2<u32>(max(0u, 4294967295u), min(arg_1.a.b.x, 4294967295u));
    return ~firstTrailingBit(_wgslsmith_sub_i32(-1i, -(-22559i ^ u_input.d)));
}

fn func_3() -> vec3<f32> {
    global0 = array<i32, 21>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1415f - 1519f), _wgslsmith_f_op_f32(trunc(165f)), 1f))), ~(vec4<u32>(_wgslsmith_mod_u32(u_input.b, 1u), _wgslsmith_mod_u32(32980u, 72385u), countOneBits(0u), u_input.b) & ~(~vec4<u32>(15800u, 0u, 22928u, 1395u))));
    var var_1 = reverseBits(vec4<u32>(~_wgslsmith_add_u32(29147u, 37225u) & _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(u_input.b, var_0.b.x, 61863u, 35203u) >> (vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, u_input.e) % vec4<u32>(32u))), ~0u ^ min(33033u << (var_0.b.x % 32u), 32244u), 1u, 37397u));
    var var_2 = Struct_3(0u, -_wgslsmith_mult_vec2_i32(max(~vec2<i32>(-12665i, 2147483647i), vec2<i32>(u_input.a, -24977i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 24488i), vec2<i32>(-2147483647i, -1i) >> (vec2<u32>(var_0.b.x, 57600u) % vec2<u32>(32u)))), 0u, Struct_1(true, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -961f)), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.b.zx >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(var_0.b.zy, var_0.b.wx)), 40359u, _wgslsmith_sub_u32(abs(var_1.x), reverseBits(u_input.b)), 40207u), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.c, u_input.a, -22509i, global0[_wgslsmith_index_u32(1u, 21u)]) << (var_0.b % vec4<u32>(32u))), -select(vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(66162u, 21u)], u_input.d, u_input.d), vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(var_1.x, 21u)], -4122i, 2147483647i), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f * 1515f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
    var var_3 = var_2.d.a;
    return vec3<f32>(_wgslsmith_f_op_f32(max(1000f, var_2.d.e)), 459f, 185f);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> vec3<i32> {
    return _wgslsmith_sub_vec3_i32(abs(reverseBits(abs(vec3<i32>(global0[_wgslsmith_index_u32(1u, 21u)], 0i, global0[_wgslsmith_index_u32(0u, 21u)])) | vec3<i32>(1i, u_input.a, global0[_wgslsmith_index_u32(u_input.e, 21u)]))), -(~vec3<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.e, 21u)], -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 1436i, u_input.d), vec3<i32>(-8210i, global0[_wgslsmith_index_u32(0u, 21u)], -1i)), global0[_wgslsmith_index_u32(u_input.e, 21u)] << (u_input.e % 32u))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec3_i32(-(~select(vec3<i32>(global0[_wgslsmith_index_u32(0u, 21u)], u_input.a, 2147483647i), vec3<i32>(1i, -1i, -1i), true)), vec3<i32>(_wgslsmith_div_i32(-u_input.c, -1i), _wgslsmith_add_i32(u_input.d, func_2(reverseBits(vec2<u32>(u_input.b, 8668u)), Struct_4(Struct_2(vec3<f32>(375f, arg_1.x, arg_1.x), vec4<u32>(4294967295u, 38443u, 57207u, 1u))), ~vec3<u32>(38413u, u_input.b, u_input.e))), i32(-1i) * -58071i));
    var_0 = -vec3<i32>(global0[_wgslsmith_index_u32(~1u, 21u)], 34120i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, 1u), 21u)]);
    var_0 = func_4(Struct_4(Struct_2(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1443f), _wgslsmith_f_op_f32(251f + arg_1.x)), ~vec4<u32>(u_input.e, u_input.e, 1u, u_input.b) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 6043u, u_input.e), vec4<u32>(18297u, u_input.e, u_input.e, u_input.e)))), Struct_2(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 58467u, u_input.b, u_input.b), countOneBits(vec4<u32>(4294967295u, u_input.b, 84260u, 4294967295u))), max(vec4<u32>(u_input.e, 5941u, u_input.b, 14631u) & vec4<u32>(0u, u_input.b, u_input.b, u_input.b), ~vec4<u32>(1u, u_input.e, 0u, 105413u)))));
    var var_1 = vec2<bool>(((_wgslsmith_add_u32(u_input.b, 48256u) >> (4138u % 32u)) != ~u_input.b) | true, !(false != (u_input.e <= 1u)) && all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    var_1 = select(!(!vec2<bool>(any(vec4<bool>(false, false, true, true)), !var_1.x)), select(select(vec2<bool>(true, false), vec2<bool>(false, all(vec3<bool>(true, true, false))), _wgslsmith_add_u32(4621u, u_input.e) <= u_input.e), vec2<bool>(all(vec2<bool>(true, var_1.x)) || var_1.x, true), select(vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true)), vec2<bool>(true, true))), !(0i >= -var_0.x));
    return Struct_2(arg_1.zyy, vec4<u32>(firstTrailingBit(~(u_input.e ^ 9994u)), ~(~countOneBits(20641u)), u_input.e, u_input.b << (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -887f)) * 1096f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-474f, -261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1368f)) + 427f), _wgslsmith_f_op_f32(floor(-750f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(f32(-1f) * -721f), -921f, _wgslsmith_f_op_f32(-998f - -133f)))), -1620f);
    let var_1 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a.zx, var_0.a.zz) * vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-1538f + 1942f))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x + _wgslsmith_f_op_f32(max(282f, -527f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(674f, var_0.a.x, 804f, 1318f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2026f, 2006f, -684f, var_0.a.x)))), _wgslsmith_f_op_f32(-var_0.a.x)).a.yx)));
}

