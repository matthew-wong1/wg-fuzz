struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: bool;

var<private> global2: array<u32, 29>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<f32> {
    global0 = array<Struct_4, 26>();
    let var_0 = Struct_2(Struct_1(false, _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.a, 20775i, u_input.a, u_input.a) | vec4<i32>(1i, 0i, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, -23109i, -1i)), vec2<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)) ^ max(-vec2<i32>(-67178i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-58398i, -1i))), -231f, -(firstTrailingBit(vec4<i32>(u_input.a, 23060i, 58123i, u_input.a)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-18756i, u_input.a, 0i, -1i), vec4<i32>(u_input.a, u_input.a, -1992i, -9926i)))));
    let var_1 = true;
    let var_2 = var_0.a.d;
    var var_3 = select(select(vec4<bool>(var_0.a.a, _wgslsmith_div_f32(362f, var_0.a.d) < _wgslsmith_f_op_f32(var_2 - -1660f), var_1, false), vec4<bool>(!all(vec4<bool>(false, true, true, true)), select(true, true, global2[_wgslsmith_index_u32(0u, 29u)] > 90449u), false, all(!vec3<bool>(false, false, var_1))), select(vec4<bool>(var_0.a.a, any(vec4<bool>(false, var_1, var_1, var_1)), var_1 && false, var_1 || false), vec4<bool>(var_0.a.a, true, var_1, false), var_0.a.a)), select(select(select(!vec4<bool>(var_1, var_1, var_1, true), !vec4<bool>(false, var_1, var_0.a.a, var_1), !vec4<bool>(true, var_1, false, var_1)), select(select(vec4<bool>(true, false, var_0.a.a, false), vec4<bool>(false, true, false, true), vec4<bool>(var_1, true, var_0.a.a, false)), select(vec4<bool>(var_1, var_0.a.a, var_1, true), vec4<bool>(var_0.a.a, var_0.a.a, false, false), vec4<bool>(true, var_0.a.a, var_0.a.a, false)), select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, var_0.a.a, var_1, var_1), var_0.a.a)), !var_0.a.a), select(!select(vec4<bool>(var_0.a.a, false, false, var_1), vec4<bool>(false, false, var_0.a.a, true), vec4<bool>(var_1, var_0.a.a, var_0.a.a, var_0.a.a)), !vec4<bool>(var_0.a.a, var_0.a.a, true, var_0.a.a), !vec4<bool>(var_0.a.a, var_0.a.a, true, var_0.a.a)), !(global2[_wgslsmith_index_u32(firstLeadingBit(37637u), 29u)] > 1u)), vec4<bool>(var_0.a.a, var_0.a.a, !var_0.a.a, false));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(2182f, 963f) * vec2<f32>(-505f, var_2)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2176f, var_0.a.d) + vec2<f32>(1101f, var_0.a.d)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(abs(-800f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_0.a.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(629f, var_0.a.d)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, -387f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2, var_2)))))) - vec2<f32>(_wgslsmith_f_op_f32(floor(-740f)), 117f))));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global0 = array<Struct_4, 26>();
    global1 = true;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(419f, -1000f), vec2<f32>(-191f, -757f), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-232f, -920f) + vec2<f32>(-599f, 1267f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(-506f + -1182f)), vec2<bool>(any(vec4<bool>(true, true, true, true)), false))), vec2<bool>(false, reverseBits(u_input.a) >= countOneBits(u_input.a)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-109f, var_0.x), vec2<f32>(1000f, var_0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, var_0.x)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1672f, var_0.x), vec2<f32>(var_0.x, var_0.x))))), !vec2<bool>(var_0.x <= var_0.x, true))));
    var var_1 = 2147483647i;
    return ~_wgslsmith_add_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(select(vec2<u32>(arg_0, global2[_wgslsmith_index_u32(7470u, 29u)]), vec2<u32>(global2[_wgslsmith_index_u32(63059u, 29u)], 33691u), true), _wgslsmith_mult_vec2_u32(vec2<u32>(93099u, 46746u), vec2<u32>(arg_0, 0u)))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(arg_0, 29u)], 0u), global2[_wgslsmith_index_u32(1u, 29u)] & 62011u), 0u));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3.b.x, arg_3.b.x), 29u)] | 45724u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_2) - 1000f)))), -1314f, 332f);
    global0 = array<Struct_4, 26>();
    global2 = array<u32, 29>();
    return Struct_3(firstLeadingBit(~reverseBits(~0u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.b)))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-119f * -390f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2, arg_2)), _wgslsmith_f_op_f32(arg_2 * 677f)))), arg_2);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_4(vec2<u32>(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(1u, 29u)] ^ 4294967295u), 29u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(80698u, 1u, 1u)), 29u)], 29u)]), _wgslsmith_add_vec3_u32(~(~vec3<u32>(12176u, 56295u, 0u) << (select(vec3<u32>(0u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22527u, 29u)], 29u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56811u, 29u)], 29u)], 59683u, global2[_wgslsmith_index_u32(20634u, 29u)]), arg_0.xyy) % vec3<u32>(32u))), ~vec3<u32>(~4294967295u, 0u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37853u, 29u)], 29u)] % 32u), ~0u)), !select(vec3<bool>(arg_1, all(arg_0.xwx), true), select(vec3<bool>(arg_1, arg_0.x, arg_0.x), !arg_0.wzw, !arg_0.wzx), select(vec3<bool>(arg_0.x, false, false), !arg_0.xzy, all(arg_0.zz))), arg_0);
    global2 = array<u32, 29>();
    var var_1 = func_4(~44691u, var_0, -767f, Struct_4(_wgslsmith_mod_vec2_u32(func_2(abs(63262u)), func_2(countOneBits(var_0.a.x))), var_0.b, arg_0.zzw, !vec4<bool>(u_input.a < u_input.a, true, !var_0.c.x, !arg_0.x)));
    global1 = all(!select(!arg_0.wx, !select(var_0.d.zy, vec2<bool>(true, var_0.d.x), false), !select(arg_0.xy, vec2<bool>(false, true), vec2<bool>(false, true))));
    global1 = any(vec2<bool>(any(vec2<bool>(arg_0.x | true, false)), var_1.b < -213f));
    return Struct_1(false, abs(~select(vec4<i32>(-50198i, 2147483647i, 2715i, u_input.a) << (vec4<u32>(7607u, 61123u, global2[_wgslsmith_index_u32(0u, 29u)], 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -1i, -2147483647i), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), vec4<bool>(true, true, true, true))), vec2<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(38459i, -2147483647i, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)) << (4294967295u % 32u)), ~2147483647i), _wgslsmith_f_op_f32(1000f + var_1.d), vec4<i32>(u_input.a, _wgslsmith_clamp_i32(-2147483647i, -1026i, firstTrailingBit(u_input.a ^ -1i)), 17930i, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 12307i, 15521i), vec3<i32>(0i, -2147483647i, -27908i)), countOneBits(-1i), abs(u_input.a))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = arg_1.a;
    var var_1 = global0[_wgslsmith_index_u32(0u, 26u)];
    var var_2 = 31413u;
    let var_3 = var_1.b.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, var_0.d, 1784f, arg_1.a.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(465f, -270f, 693f, 1154f))))))));
    return Struct_2(func_1(vec4<bool>(any(vec2<bool>(false, arg_1.a.a)), var_1.c.x | func_1(vec4<bool>(arg_1.a.a, false, arg_1.a.a, false), false).a, !(var_4.x == var_0.d), all(vec2<bool>(arg_1.a.a, true))), !all(vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mult_i32(-1i, u_input.a), Struct_2(func_1(vec4<bool>(false, true, all(vec3<bool>(false, true, true)), true), abs(global2[_wgslsmith_index_u32(34205u, 29u)]) < 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2955f, 1523f) + vec2<f32>(-1395f, 494f))))));
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(-var_0.a.d), var_0.a.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-169f, var_0.a.d, 331f) + vec3<f32>(var_0.a.d, var_0.a.d, var_0.a.d)), vec3<f32>(var_0.a.d, var_0.a.d, var_0.a.d), !vec3<bool>(true, var_0.a.a, false))), !var_0.a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.a.d, var_0.a.d), -237f, _wgslsmith_f_op_f32(1271f * var_0.a.d))), u_input.a >= -firstTrailingBit(45142i))));
    global1 = any(select(vec3<bool>(var_0.a.a, false, var_0.a.a & true), vec3<bool>(var_0.a.a, all(vec3<bool>(var_0.a.a, false, false)), var_0.a.a), !(!select(vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a), vec3<bool>(true, var_0.a.a, var_0.a.a), false))));
    var var_2 = Struct_4(vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)]), abs(48337u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(6118u, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)]), 1u), 29u)], 29u)], 29u)], 29u)], 29u)]), 29u)], global2[_wgslsmith_index_u32(22596u, 29u)]), ~(firstLeadingBit(reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 0u, 559u))) >> (vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_dot_vec2_u32(vec2<u32>(42145u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)]), vec2<u32>(76657u, 11620u)), 4294967295u) % vec3<u32>(32u))), select(!select(!vec3<bool>(var_0.a.a, var_0.a.a, true), select(vec3<bool>(var_0.a.a, true, var_0.a.a), vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a), var_0.a.a), vec3<bool>(true, false, false)), vec3<bool>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)] > global2[_wgslsmith_index_u32(4134u, 29u)], true, all(select(vec3<bool>(true, true, false), vec3<bool>(var_0.a.a, var_0.a.a, true), vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a)))), func_5(var_0.a.e.x & var_0.a.e.x, var_0, _wgslsmith_f_op_vec2_f32(select(var_1.yy, _wgslsmith_f_op_vec2_f32(step(var_1.yx, var_1.zx)), var_0.a.a))).a.a), !vec4<bool>(var_0.a.a, true && !var_0.a.a, any(vec4<bool>(true, var_0.a.a, false, var_0.a.a)), true));
    var var_3 = vec3<i32>(-1i) * -var_0.a.e.wxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(select(select(vec4<bool>(var_0.a.a, var_2.d.x, var_2.c.x, var_2.d.x), var_2.d, false), var_2.d, true), any(!var_2.d)).d + -1000f), var_2.b.zz);
}

