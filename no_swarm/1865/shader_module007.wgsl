struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: vec3<f32> = vec3<f32>(-659f, -1000f, -1683f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>) -> vec3<i32> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1421f, arg_1.x, false)) + -927f)))), arg_0.d.c, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(316f, -327f)))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x - arg_0.b), _wgslsmith_f_op_f32(-686f - 883f), 183f))));
    global0 = array<vec3<u32>, 13>();
    var var_0 = Struct_5(arg_0, Struct_2(vec4<bool>(true, true, true, true), max(_wgslsmith_add_vec4_i32(-vec4<i32>(40561i, 2147483647i, -1i, -2147483647i), min(vec4<i32>(u_input.a, arg_0.c.b, 1i, -1i), vec4<i32>(1i, -8039i, 1i, 0i))), ~(~vec4<i32>(8472i, arg_0.c.b, 1i, 24109i))), true), arg_0.c.a, select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true), false), !vec3<bool>(select(true, false, false), any(vec2<bool>(true, false)), true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-1900f - _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, arg_0.b) + _wgslsmith_f_op_f32(abs(1044f)))))));
    var_0 = Struct_5(arg_0, var_0.b, var_0.a.d.a, vec3<bool>(true, any(var_0.b.a.zx), false), global1.x);
    return vec3<i32>(i32(-1i) * -1i, arg_0.c.b, arg_0.c.b);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = select(abs(max(func_3(Struct_4(u_input.a, 199f, Struct_1(102111u, 0i, global1.x), Struct_1(1u, 11554i, global1.x)), vec2<f32>(-888f, -1000f)), ~vec3<i32>(u_input.a, u_input.a, 2147483647i))), abs(~vec3<i32>(~(-2147483647i), 2147483647i, ~u_input.a)), !vec3<bool>(true, any(vec2<bool>(arg_0, arg_0)) && !arg_0, arg_0));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1489f));
    let var_2 = global0[_wgslsmith_index_u32((min(_wgslsmith_dot_vec3_u32(vec3<u32>(52181u, 19762u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c) & vec3<u32>(u_input.c, 4294967295u, u_input.b)), u_input.b) | u_input.b) << (u_input.b % 32u), 13u)];
    let var_3 = !all(!vec3<bool>(0i == var_0.x, false, true));
    let var_4 = Struct_3(var_0.xy);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1025f, -702f, var_1)), vec3<f32>(-1000f, var_1, -1000f), !vec3<bool>(true, arg_0, true)))))));
}

fn func_1() -> Struct_4 {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(972f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), global1.x, -295f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -491f, -256f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -812f, 244f) + vec3<f32>(global1.x, -1321f, global1.x)), global1.x >= -423f)), vec3<f32>(-1810f, _wgslsmith_f_op_f32(floor(-225f)), _wgslsmith_f_op_f32(-159f + global1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(true)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-896f, -101f, -1376f), vec3<f32>(450f, global1.x, global1.x), vec3<bool>(false, false, true))))))));
    var var_0 = _wgslsmith_sub_i32(u_input.a, 2147483647i & _wgslsmith_mod_i32(0i, u_input.a >> (1u % 32u))) ^ _wgslsmith_div_i32(u_input.a, 11574i);
    let var_1 = Struct_3(~max(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, u_input.a)), firstLeadingBit(-vec2<i32>(u_input.a, u_input.a))));
    global0 = array<vec3<u32>, 13>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(true)));
    return Struct_4(2147483647i ^ -select(i32(-1i) * -14176i, u_input.a, -27541i > var_1.a.x), global1.x, Struct_1((1u >> (u_input.c % 32u)) & u_input.c, func_3(Struct_4(u_input.a, _wgslsmith_f_op_f32(1277f * 742f), Struct_1(u_input.b, -12683i, global1.x), Struct_1(u_input.c, -1i, global1.x)), global1.xx).x, 1094f), Struct_1(4294967295u, -_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.a.x, var_1.a.x), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: f32, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = arg_1.b.b.xx;
    let var_1 = Struct_4(-37758i, 732f, arg_1.a.d, Struct_1(1u, arg_1.b.b.x, arg_0.x));
    var_0 = countOneBits(arg_1.b.b.zy);
    var var_2 = 144f;
    var_0 = arg_1.b.b.xy;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_3.wwx * arg_3.xyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.xyw) + arg_0), any(vec2<bool>(true, arg_1.b.c)) & select(arg_1.d.x, false, arg_1.d.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(358f, global1.x, 1011f), vec3<f32>(arg_0.x, arg_3.x, 1604f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(846f, -1406f, arg_3.x), arg_0, false))))) - arg_3.xyw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(u_input.b ^ _wgslsmith_mod_u32(~_wgslsmith_mod_u32(12108u, u_input.c), ~abs(1u)), ~(~(u_input.c | u_input.c)));
    global1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(2576f, global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, -1861f), _wgslsmith_f_op_f32(ceil(1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 1000f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, global1.x))))))), Struct_5(func_1(), Struct_2(vec4<bool>(true, false, u_input.a > u_input.a, true), vec4<i32>(i32(-1i) * -40454i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -35588i, u_input.a), vec3<i32>(1i, u_input.a, u_input.a)), -46577i), !(global1.x == global1.x)), u_input.c, !select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), global1.x), global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1741f, -429f, global1.x, -317f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1164f, -819f, -639f, global1.x) + vec4<f32>(362f, global1.x, 651f, 906f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, 653f, global1.x), vec4<f32>(369f, 271f, 882f, global1.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1872f, global1.x, global1.x, global1.x), vec4<f32>(-185f, global1.x, 356f, global1.x), vec4<bool>(false, true, true, true)))))))));
    var var_1 = vec3<u32>(~_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.c, 0u, 11667u), vec4<u32>(u_input.c, 40740u, 0u, 75109u))), vec4<u32>(_wgslsmith_sub_u32(u_input.c, 35345u), u_input.b, 1u << (u_input.b % 32u), ~28366u)), reverseBits(~u_input.c) << ((u_input.c & 17594u) % 32u), ~_wgslsmith_mult_u32(~u_input.c, u_input.b));
    let var_2 = -1493f;
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(24109u, u_input.c, 2915u, var_1.x)), vec4<u32>(u_input.b, var_1.x, 4294967295u, 1u)), 35794u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, ~23941u, countOneBits(firstLeadingBit(0u))), reverseBits(vec3<u32>(_wgslsmith_div_u32(var_1.x, 41679u), min(0u, 0u), 50489u))), vec3<u32>((96668u << (_wgslsmith_clamp_u32(82760u, u_input.b, 4294967295u) % 32u)) ^ (~15439u | abs(var_1.x)), 55920u, firstTrailingBit(1u)));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2(true)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f + var_2) * _wgslsmith_f_op_f32(step(-1313f, -1184f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, global1.x) * vec3<f32>(global1.x, var_2, 901f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 - global1.x))), 149f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), var_2, _wgslsmith_f_op_f32(-1949f + -997f))))));
    let var_3 = ~(_wgslsmith_mult_u32(min(~var_1.x, var_1.x), ~u_input.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(48686u, var_1.x, 1u, 2717u), vec4<u32>(0u, 38572u, 1445u, 25675u)) % 32u)) >> (u_input.c % 32u));
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(1249f, 0u);
}

