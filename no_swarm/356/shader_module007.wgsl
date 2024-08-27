struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = vec3<u32>(~57601u, _wgslsmith_sub_u32(select(60389u, 1u, true), u_input.d.x), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.d.x))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 26748u), countOneBits(vec4<u32>(u_input.b.x, 3985u, 1u, 15690u)), true), vec4<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_div_u32(u_input.d.x, u_input.e.x), 26741u | u_input.e.x, 75354u << (0u % 32u)))));
    var_0 = abs(u_input.e);
    var_0 = vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(countOneBits(max(vec4<u32>(var_0.x, u_input.e.x, u_input.e.x, var_0.x), vec4<u32>(44052u, 36834u, var_0.x, u_input.b.x))), ~reverseBits(vec4<u32>(var_0.x, 56563u, u_input.e.x, 0u))), 1u) ^ ~u_input.e;
    var_0 = u_input.b;
    let var_1 = u_input.a;
    return 0u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.d.x), 0u, ~u_input.d.x, _wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.e.x, 41026u), countOneBits(func_3()))), vec4<u32>(u_input.e.x, ~_wgslsmith_mult_u32(0u, 19391u), _wgslsmith_add_u32(1u, 4294967295u | u_input.b.x), _wgslsmith_mod_u32(6698u, ~u_input.d.x)) ^ _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(22826u, u_input.e.x, u_input.d.x, 32663u) | vec4<u32>(4294967295u, 36428u, u_input.d.x, u_input.d.x), ~vec4<u32>(u_input.b.x, 28049u, u_input.b.x, u_input.d.x)), abs(vec4<u32>(u_input.d.x, 8437u, u_input.e.x, 116985u))));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(min(_wgslsmith_add_vec2_u32(u_input.b.xz, u_input.b.yz) ^ vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(u_input.b.zx, u_input.d.zy) << (min(u_input.b.zz, vec2<u32>(u_input.d.x, 0u)) % vec2<u32>(32u))), select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), u_input.d.xy << (u_input.b.xy % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xy, u_input.d.yz), vec2<u32>(32362u, 4294967295u)), !vec2<bool>(true, arg_0.b))), ~vec3<u32>(u_input.b.x, reverseBits(firstTrailingBit(37669u)), 87086u >> (u_input.e.x % 32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-419f)), _wgslsmith_f_op_f32(step(-320f, 215f)), 1000f, _wgslsmith_f_op_f32(arg_1.a.x * -533f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0.c.a)))))));
    let var_3 = 175f;
    var_2 = arg_1;
    return ~(~reverseBits(~vec2<u32>(7218u, var_1.b.x) >> (abs(vec2<u32>(var_1.b.x, 4294967295u)) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_2(0u, _wgslsmith_add_vec3_u32(~vec3<u32>(arg_3.x, arg_3.x >> (arg_3.x % 32u), 94263u), ~(~u_input.d) & select(~vec3<u32>(arg_3.x, 4294967295u, u_input.d.x), u_input.d | u_input.b, true)));
    return true | (((_wgslsmith_mod_i32(arg_0.x, 1i) << ((var_0.b.x >> (0u % 32u)) % 32u)) <= abs(u_input.c.x)) && arg_1.x);
}

fn func_1() -> Struct_1 {
    let var_0 = !vec2<bool>(func_4(~vec4<i32>(17886i, 0i, u_input.a, 21387i), vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), func_2(Struct_3(false, true, Struct_1(vec4<f32>(1611f, -1171f, 1272f, 1425f))), Struct_1(vec4<f32>(-316f, -434f, 1049f, 555f)))) && func_4(countOneBits(vec4<i32>(1i, -46034i, -1i, -2068i)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec3<bool>(true, true, true), u_input.e.yy), true);
    var var_1 = -_wgslsmith_mod_i32(~(~1i), ~(-u_input.c.x));
    var var_2 = u_input.a;
    var_2 = ~u_input.a;
    let var_3 = firstTrailingBit(abs(-reverseBits(_wgslsmith_mod_i32(u_input.a, -2147483647i))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1024f, 1619f, 1000f, -1469f), vec4<f32>(-721f, -1491f, -405f, -124f), vec4<bool>(true, true, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2701f, 1561f, 1361f, -1101f) * vec4<f32>(-924f, -1539f, 1041f, -272f))), false)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = vec3<i32>(-1i) * -select(reverseBits(-vec3<i32>(u_input.c.x, -27490i, -1i)), vec3<i32>(_wgslsmith_sub_i32(u_input.a, -1i), -30902i, _wgslsmith_mult_i32(1i, u_input.a)), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_2.a, true, true), vec3<bool>(arg_2.a, true, true)), !vec3<bool>(false, arg_2.a, arg_2.b), vec3<bool>(arg_2.a, arg_2.a, arg_2.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, arg_2.c.a.x, func_1().a.x));
    let var_2 = func_1();
    var var_3 = ~firstLeadingBit(countOneBits(vec3<u32>(u_input.d.x, u_input.b.x ^ u_input.d.x, ~4294967295u)));
    var_1 = vec3<f32>(func_1().a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, var_2.a.x, true))));
    return !vec2<bool>(arg_2.b, arg_2.b);
}

fn func_6(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) - 130f)), _wgslsmith_f_op_f32(157f - 1f)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -286f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.x, 1296f), _wgslsmith_f_op_f32(ceil(-510f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(var_0.a)), var_0.a))));
    return Struct_3(all(vec4<bool>(true, all(select(vec3<bool>(true, true, arg_2.x), vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(true, false, false))), arg_3 <= arg_1.x, all(vec3<bool>(true, true, false)) || true)), false, Struct_1(var_1.a));
}

fn func_7(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    let var_0 = vec3<i32>(-abs(0i), u_input.a, -1i);
    let var_1 = !select(!vec4<bool>(arg_1, func_6(u_input.c.x, vec3<u32>(u_input.d.x, u_input.d.x, u_input.b.x), vec2<bool>(true, false), u_input.d.x).b, false & arg_0.a, false), vec4<bool>(select(false, arg_1, all(vec2<bool>(true, arg_1))), !(false && arg_1), !all(vec3<bool>(false, arg_1, arg_1)), arg_0.a), vec4<bool>(false, all(vec2<bool>(true, true)), arg_1, true));
    let var_2 = _wgslsmith_f_op_f32(select(-1412f, _wgslsmith_f_op_f32(floor(-455f)), arg_0.b));
    let var_3 = 4294967295u;
    var var_4 = func_6(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(var_0, ~vec3<i32>(2147483647i, var_0.x, 1i))) << (var_3 % 32u), ~vec3<u32>((28065u >> (0u % 32u)) | _wgslsmith_sub_u32(4294967295u, u_input.d.x), u_input.b.x, u_input.d.x), func_5(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(arg_0.c.a))), arg_0.c, arg_0), 1u);
    return Struct_2(var_3, abs(~u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(0i, u_input.d, func_5(func_1(), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(499f, 746f, 1606f, 1000f) + vec4<f32>(-608f, 233f, 1303f, -152f))), Struct_3(any(vec4<bool>(false, false, true, true)), true, Struct_1(vec4<f32>(-798f, 173f, 483f, -441f)))), ~(~u_input.d.x)), select(all(vec4<bool>(true, true, true, false)), true, false) || !all(vec4<bool>(false, false, true, true)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1199f) * 411f), _wgslsmith_f_op_f32(1202f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(230f, -143f)))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-247f, var_1.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -187f), var_1.x)))))));
    var_2 = 676f;
    let var_3 = _wgslsmith_f_op_f32(-1000f * var_1.x);
    let var_4 = var_3;
    var var_5 = ~firstLeadingBit(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~vec3<u32>(u_input.b.x, 4294967295u, 4946u)), -firstLeadingBit(0i), ~0u);
}

