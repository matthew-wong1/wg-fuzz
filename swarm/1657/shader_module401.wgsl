struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 1u, 46607u), vec2<f32>(1057f, -130f), true));

var<private> global1: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    let var_0 = u_input.b.x < 1u;
    let var_1 = global0[_wgslsmith_index_u32(select(max(u_input.c >> (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(26902u, u_input.c, 19242u)) % 32u), u_input.b.x), countOneBits(0u), arg_0.x), 1u)];
    global0 = array<Struct_1, 1>();
    global1 = var_1.d;
    global0 = array<Struct_1, 1>();
    return 111729u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    var var_0 = ~min(~arg_0.b.x, _wgslsmith_sub_u32(func_3(vec3<bool>(arg_0.a.x, arg_0.d, true)), arg_0.b.x));
    let var_1 = Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(arg_1.x, arg_1.x >> (arg_0.b.x % 32u), 10240u), vec2<f32>(611f, -505f), arg_0.a.x);
    let var_2 = var_1;
    let var_3 = firstLeadingBit(~(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 9118i, -2147483647i), vec3<i32>(-1i, -1720i, -2147483647i))) >> (_wgslsmith_mod_u32(firstLeadingBit(var_2.b.x), 1u >> (1u % 32u)) % 32u)));
    global1 = var_2.a.x;
    return ~min(arg_0.b.x & arg_0.b.x, 4294967295u) << (var_2.b.x % 32u);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1278f))), -405f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1957f) - vec2<f32>(-383f, 1288f))) - vec2<f32>(1f, 1f)), vec2<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(119f, var_0.x) - _wgslsmith_f_op_f32(var_0.x * var_0.x)), -491f)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.xz + var_1.yz)));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, 70144u, ~26535u, _wgslsmith_clamp_u32(~0u, ~16629u & (0u & u_input.c), ~func_2(Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(23089u, u_input.c, u_input.c), vec2<f32>(var_0.x, var_1.x), true), vec2<u32>(u_input.a, u_input.a)))), ~vec4<u32>(4294967295u, 4294967295u, firstLeadingBit(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 36701u, 60113u, u_input.a), vec4<u32>(8124u, u_input.c, u_input.b.x, 0u))) & max(vec4<u32>(0u, u_input.c, u_input.c, 41460u) ^ vec4<u32>(24696u, 37809u, u_input.a, 13840u), ~vec4<u32>(u_input.c, 4294967295u, 57682u, u_input.b.x)));
    var var_3 = global0[_wgslsmith_index_u32(func_2(Struct_1(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, true)), true), select(~firstLeadingBit(vec3<u32>(var_2.x, 1u, 4294967295u)), max(u_input.b << (u_input.b % vec3<u32>(32u)), ~vec3<u32>(var_2.x, u_input.b.x, 117894u)), select(var_1.x < 127f, all(vec3<bool>(false, false, false)), all(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yz + _wgslsmith_f_op_vec2_f32(var_1.xx * vec2<f32>(var_1.x, -866f))) + var_1.zz), true), _wgslsmith_sub_vec2_u32(u_input.b.xy, vec2<u32>(var_2.x, _wgslsmith_mult_u32(var_2.x, 3937u))) << (u_input.b.yy % vec2<u32>(32u))), 1u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(371f + -752f)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(1i, 1i)), abs(firstLeadingBit(vec2<i32>(-1i, -36553i)))), reverseBits(select(abs(min(vec2<i32>(2147483647i, 31675i), vec2<i32>(-47850i, 2147483647i))), ~vec2<i32>(-12699i, 18210i), !all(arg_0.yx))));
    let var_1 = 0i;
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 1u)];
    global0 = array<Struct_1, 1>();
    let var_3 = vec4<i32>(firstTrailingBit(var_0.x), firstTrailingBit(-22996i), (i32(-1i) * -(~(-4626i))) >> (~(0u << (_wgslsmith_mod_u32(arg_3.b.x, 4294967295u) % 32u)) % 32u), _wgslsmith_add_i32(-_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(-5070i, var_1)), -(~var_0.x)));
    return -227f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = Struct_1(vec4<bool>(select(1i, 1i, false) != _wgslsmith_sub_i32(1i, -1i), 0i != _wgslsmith_add_i32(-53755i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 36679i, 25702i), vec3<i32>(3553i, 2147483647i, -56408i))), 79187u < (u_input.a << (~0u % 32u)), 52535u < u_input.c), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1069f, 1333f))))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1170f * -1104f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(164f + -1154f)))), true);
    var var_1 = var_0.a.zxw;
    global0 = array<Struct_1, 1>();
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(!vec3<bool>(false, var_1.x, true), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -1252f, var_0.c.x, var_0.c.x)))))), Struct_1(!select(vec4<bool>(true, false, var_0.a.x, false), var_0.a, vec4<bool>(var_0.d, var_1.x, true, true)), select(vec3<u32>(u_input.c, 49207u, 4294967295u), vec3<u32>(47495u, 20612u, 42822u), var_0.d) & ~u_input.b, var_0.c, !(u_input.c < u_input.c))))));
    global1 = true | !(!var_0.d);
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -49215i, -2147483647i), vec4<i32>(63465i, 12440i, -1i, 1i)), 1i)), firstTrailingBit(~(-1i)) >> (92108u % 32u));
}

