struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(0u, 1u, 18306u), vec3<u32>(1u, 4294967295u, 19691u), vec3<u32>(1u, 1u, 1u));

var<private> global1: array<u32, 26> = array<u32, 26>(79810u, 1u, 1u, 0u, 1u, 4294967295u, 4294967295u, 4294967295u, 0u, 0u, 4294967295u, 4294967295u, 1u, 4294967295u, 0u, 2725u, 18u, 4294967295u, 0u, 22601u, 4294967295u, 1u, 20863u, 0u, 9538u, 1u);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(37197u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(131503u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(3105u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u));

var<private> global3: array<vec2<bool>, 29>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = Struct_3(arg_2.a, _wgslsmith_f_op_vec4_f32(-arg_2.b));
    let var_1 = select(!vec4<bool>(true, (1u <= arg_0) != true, true, true), vec4<bool>(false, _wgslsmith_dot_vec2_u32(vec2<u32>(13531u, arg_0), select(vec2<u32>(global1[_wgslsmith_index_u32(75495u, 26u)], arg_0), vec2<u32>(16686u, 2234u), false)) <= 31287u, true, true), true);
    global3 = array<vec2<bool>, 29>();
    var_0 = Struct_3(select(-(~var_0.a), var_0.a, arg_2.b.x < _wgslsmith_f_op_f32(-365f * -1289f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -549f, var_0.b.x, -668f) + var_0.b))))), _wgslsmith_f_op_vec4_f32(-var_0.b))));
    let var_2 = Struct_5(vec3<i32>(u_input.a.x, arg_2.a.x, -select(_wgslsmith_add_i32(12067i, u_input.a.x), i32(-1i) * -9687i, var_1.x || var_1.x)), Struct_2(arg_1, Struct_1(firstLeadingBit(_wgslsmith_sub_u32(u_input.b, global1[_wgslsmith_index_u32(0u, 26u)]))), arg_2.a.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2448f, -661f, 292f, _wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(sign(var_0.b.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_f_op_f32(step(var_0.b.x, 1357f)))), _wgslsmith_f_op_f32(select(arg_2.b.x, _wgslsmith_f_op_f32(-1000f - 394f), any(vec4<bool>(var_1.x, true, var_1.x, var_1.x)))))), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -319f)));
    return -2147483647i != var_2.b.c;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(true, select(false, func_3(~5456u, Struct_1(u_input.b), Struct_3(arg_2.yyx, vec4<f32>(1686f, 1018f, -157f, 620f))), any(vec2<bool>(false, false)) || true) && false);
    global3 = array<vec2<bool>, 29>();
    let var_1 = -921f;
    let var_2 = true;
    var var_3 = ~_wgslsmith_div_i32(arg_2.x, min(u_input.a.x, u_input.a.x) & ~(14705i | arg_0));
    return Struct_2(Struct_1(~(arg_1 ^ 1u)), Struct_1(78125u), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, arg_2.x << (4294967295u % 32u)), -1i), _wgslsmith_div_vec4_f32(vec4<f32>(1980f, _wgslsmith_f_op_f32(-383f - _wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_f32(-1905f * _wgslsmith_f_op_f32(var_1 - var_1)), var_1), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(-var_1), var_1, _wgslsmith_f_op_f32(var_1 + 491f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 708f, var_1, var_1) + vec4<f32>(var_1, 404f, var_1, var_1)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = ~(~global0[_wgslsmith_index_u32(25938u, 3u)]);
    let var_1 = func_2(_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_div_i32(arg_1.a.x, _wgslsmith_div_i32(arg_1.a.x, 1i))), u_input.a.x), ~u_input.b, -(vec4<i32>(firstLeadingBit(arg_1.a.x), max(-2147483647i, 1i), -42713i, 10475i) << (~(~vec4<u32>(var_0.x, var_0.x, 43218u, u_input.b)) % vec4<u32>(32u))));
    var var_2 = all(vec4<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(true, false), var_1.c <= u_input.a.x)), all(vec3<bool>(true, true, true)) | true, false));
    global1 = array<u32, 26>();
    let var_3 = Struct_4(var_0.x);
    return !select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec4<u32>) -> StorageBuffer {
    global1 = array<u32, 26>();
    let var_0 = ~abs(_wgslsmith_div_i32(~12934i, _wgslsmith_mod_i32(22336i, i32(-1i) * -2147483647i)));
    let var_1 = func_2(-1i, 24851u, _wgslsmith_clamp_vec4_i32(select(abs(-vec4<i32>(-8828i, -1i, var_0, var_0)), -select(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(var_0, u_input.a.x, 54902i, u_input.a.x), arg_0.x), func_1(_wgslsmith_div_vec2_u32(arg_2.yz, arg_2.zw), Struct_3(vec3<i32>(-20444i, 14916i, 2147483647i), vec4<f32>(-397f, -500f, -173f, -434f))).x), ~vec4<i32>(2147483647i, countOneBits(var_0), reverseBits(69536i), -1i), select(vec4<i32>(-1i) * -vec4<i32>(1i, var_0, var_0, var_0), vec4<i32>(-1i >> (u_input.b % 32u), var_0, abs(90805i), firstLeadingBit(var_0)), true)));
    let var_2 = arg_0.x;
    let var_3 = arg_0.x;
    return StorageBuffer(min(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(10014u, arg_2.x, 4294967295u, 1u), arg_2), arg_2.x), arg_2.xw), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!select(vec3<bool>(true, true, true), func_1(~vec2<u32>(u_input.b, u_input.b), Struct_3(vec3<i32>(-49675i, 0i, 2147483647i), vec4<f32>(-937f, 350f, 526f, 1773f))), select(global1[_wgslsmith_index_u32(58140u, 26u)] == 4294967295u, true, true)), Struct_4(_wgslsmith_add_u32(_wgslsmith_div_u32(countOneBits(0u), 30763u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], u_input.b, 4294967295u) >> (vec4<u32>(u_input.b, 1u, global1[_wgslsmith_index_u32(0u, 26u)], u_input.b) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, 1u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 26u)], 26u)])))), vec4<u32>(~4294967295u, 5550u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, countOneBits(u_input.b)), 26u)], 26u)], _wgslsmith_sub_u32(~1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 26u)], 26u)])));
}

