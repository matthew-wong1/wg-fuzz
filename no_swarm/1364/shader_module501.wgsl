struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<f32>(-627f, 330f, -1000f), vec4<i32>(-40958i, -1i, 0i, 31715i), 26614u, vec3<bool>(false, false, true)));

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 9>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = arg_0;
    var var_1 = true;
    let var_2 = firstLeadingBit(u_input.c.x);
    var var_3 = arg_3.a.x;
    let var_4 = _wgslsmith_f_op_f32(step(-1162f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x))), 962f)), _wgslsmith_f_op_f32(ceil(-618f)))));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(7617i, 1i, 2147483647i), vec3<i32>(countOneBits(-2147483647i) ^ _wgslsmith_div_i32(arg_1.b.x, arg_3.b.x), 15707i, u_input.e.x));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = select(true, true, true);
    let var_1 = var_0;
    global1 = func_4(Struct_2(1u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1457f, -189f), vec3<f32>(1548f, 574f, -914f)))), vec4<i32>(u_input.c.x, select(6291i, -1i, global2[_wgslsmith_index_u32(74334u, 9u)]), _wgslsmith_clamp_i32(1i, u_input.e.x, arg_0), -17109i) | u_input.c, func_3(Struct_2(select(4136u, 0u, var_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(274f, 1316f, -249f) - vec3<f32>(219f, -258f, -882f)) - vec3<f32>(925f, -1311f, -1010f)), 824f), select(!select(vec3<bool>(true, true, var_1), vec3<bool>(true, var_1, global2[_wgslsmith_index_u32(2691u, 9u)]), vec3<bool>(false, true, false)), vec3<bool>(false, !var_1, !var_1), true)), Struct_3(_wgslsmith_clamp_u32(firstLeadingBit(25542u), ~48906u, 47910u) > 38739u, ~_wgslsmith_sub_i32(_wgslsmith_div_i32(64371i, global1.x), -31471i), ~u_input.c.x, global1.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~4294967295u)), 1u), 1u)]);
    var var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(94786u, 29184u), ~4294967295u), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(7176u, 1u)), ~vec2<u32>(4294967295u, 15952u))) | firstTrailingBit(vec2<u32>(76054u, firstLeadingBit(56469u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(451f + 333f), -162f, _wgslsmith_f_op_f32(710f * 328f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(985f, -283f, 685f))))))), vec4<i32>(arg_0, global1.x, -arg_0, -(~arg_0)), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(~0u, var_2.x, abs(var_2.x)), countOneBits(1u)), select(!vec3<bool>(true, false, any(vec2<bool>(var_1, true))), vec3<bool>(!all(vec4<bool>(var_1, var_1, var_0, global2[_wgslsmith_index_u32(4294967295u, 9u)])), select(any(vec4<bool>(false, true, var_1, false)), all(vec2<bool>(global2[_wgslsmith_index_u32(var_2.x, 9u)], false)), 4294967295u < var_2.x), var_0), vec3<bool>(true, select(var_1 && false, var_1, any(vec4<bool>(false, var_1, true, false))), global2[_wgslsmith_index_u32(var_2.x, 9u)])));
    return _wgslsmith_clamp_u32(var_2.x, 23112u, ~(_wgslsmith_sub_u32(61034u, var_3.c) | select(_wgslsmith_sub_u32(1643u, 0u), ~var_3.c, var_0)));
}

fn func_1(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = Struct_2(~_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(firstLeadingBit(4294967295u), func_2(global1.x))));
    var var_1 = 1000f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -148f);
    global2 = array<bool, 9>();
    var var_2 = ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<u32>(var_0.a, 41946u, var_0.a, var_0.a)) >> (~var_0.a % 32u), countOneBits(23938u) | firstTrailingBit(23872u), var_0.a));
    return ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 12683u, 1u), select(vec3<u32>(72995u, var_0.a, 16878u), vec3<u32>(var_2.x, 0u, 19228u), true)) << (~(~vec3<u32>(var_0.a, 30877u, 97634u)) % vec3<u32>(32u)), abs(~(~vec3<u32>(var_0.a, var_2.x, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(775f, 1178f, -407f), vec3<f32>(-1744f, -1065f, 2099f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1372f, -445f, 1997f)) - vec3<f32>(282f, 1000f, -251f)))), _wgslsmith_div_vec4_i32(firstTrailingBit(u_input.c), _wgslsmith_mult_vec4_i32(-u_input.c | u_input.c, vec4<i32>(13985i, 36332i, _wgslsmith_sub_i32(u_input.e.x, u_input.d), u_input.e.x | u_input.a))), _wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(6950u, 4294967295u, 31593u, 4294967295u), vec4<u32>(0u, 0u, 1u, 0u))), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7940u, 0u), vec3<u32>(18895u, 21726u, 0u)), 4294967295u, ~0u, 60651u)), vec3<bool>(false, true, ((global1.x << (13385u % 32u)) <= (i32(-1i) * -1i)) && global2[_wgslsmith_index_u32(max(~0u, _wgslsmith_mult_u32(0u, 1u)), 9u)]));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(abs(abs(~vec3<u32>(4294967295u, var_0.c, 1u))), ~(vec3<u32>(var_0.c, var_0.c, var_0.c) | vec3<u32>(var_0.c, var_0.c, 1u)) >> (~func_1(Struct_3(false, -19821i, var_0.b.x, 1i)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(var_0.c, max(62697u, 3728u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 34578u, 1u, 8940u), vec4<u32>(59659u, 0u, 8437u, var_0.c)) ^ abs(var_0.c), 6695u));
    let var_2 = var_0.a.x;
    let var_3 = Struct_1(var_0.a, firstLeadingBit(vec4<i32>(-52459i, _wgslsmith_dot_vec2_i32(global1.xy, var_0.b.ww), ~(-2147483647i), 0i) | (vec4<i32>(-1i, -7549i, -1i, 1i) & u_input.c)), ~var_0.c, vec3<bool>(true, any(vec3<bool>(true, true, true | global2[_wgslsmith_index_u32(0u, 9u)])), var_0.a.x > _wgslsmith_f_op_f32(var_2 + _wgslsmith_div_f32(101f, -598f))));
    let var_4 = Struct_3(true, var_0.b.x, _wgslsmith_clamp_i32(var_0.b.x, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(14108i, u_input.c.x, u_input.d), vec3<i32>(-72524i, u_input.d, 1i)), global1.x ^ -reverseBits(2147483647i)), -2147483647i & -firstTrailingBit(-2535i));
    var var_5 = Struct_2(_wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(~15263u, firstTrailingBit(_wgslsmith_div_u32(1u, var_0.c)))));
    global2 = array<bool, 9>();
    var var_6 = Struct_2(func_3(Struct_2(~43948u), vec3<f32>(_wgslsmith_f_op_f32(select(var_3.a.x, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(var_2 + var_2)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -589f)))), _wgslsmith_f_op_f32(f32(-1f) * -923f)));
    var var_7 = min(~(~(~(vec3<u32>(var_1.x, var_0.c, var_6.a) | vec3<u32>(0u, var_5.a, var_1.x)))), select(vec3<u32>(4294967295u, var_1.x, min(_wgslsmith_clamp_u32(46949u, 44193u, var_5.a), 4294967295u)), vec3<u32>(_wgslsmith_mod_u32(var_3.c, var_5.a) >> (~var_3.c % 32u), 1u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16285u, var_5.a, var_3.c), vec4<u32>(62833u, 0u, 43857u, var_0.c)), ~1u)), !var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(var_3.b, vec4<i32>(24376i, var_3.b.x, var_3.b.x, var_4.c)), firstLeadingBit(var_3.b.x)) | var_3.b.wwy, abs(var_3.b.zxw & -var_0.b.yxy), -_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_4.c, u_input.b.x, u_input.a)), max(vec3<i32>(var_3.b.x, -40787i, 10133i), var_3.b.wzx))), vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(min(-587f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.a.x)), 727f))), -911f, 848f), var_4.b, var_1.x, var_7.xx);
}

