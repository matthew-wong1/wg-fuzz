struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-707f, 555f, 746f, 272f);

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.x ^ (~(~(4294967295u << (arg_2.e.x % 32u))) & ~abs(~13436u)), 15u)];
    var var_1 = _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-195f * 328f));
    var var_2 = arg_2.d;
    var var_3 = -14069i;
    var_2 = countOneBits(-1i);
    return 4294967295u;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(~1u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(49318u, 37146u), vec2<u32>(44973u, 1u), vec2<bool>(true, true))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 56277u), 4018u), true)), ~(~0u), firstLeadingBit(~_wgslsmith_mod_u32(1u, ~69493u)));
    var var_1 = 55659i;
    var_0 = vec3<u32>(0u, _wgslsmith_div_u32(~_wgslsmith_div_u32(~46722u, _wgslsmith_mult_u32(var_0.x, 1u)), func_3(vec4<u32>(29688u, 0u, var_0.x, var_0.x), u_input.a, global1[_wgslsmith_index_u32((var_0.x & 46769u) ^ var_0.x, 15u)], select(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -35060i, 27617i), vec3<i32>(-25556i, -1i, 2147483647i)), true))), _wgslsmith_clamp_u32(~var_0.x, 1u, ~(43954u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 36529u), vec3<u32>(63038u, var_0.x, var_0.x)))));
    var_0 = ~(~(vec3<u32>(var_0.x, _wgslsmith_sub_u32(31599u, 1u), var_0.x) >> (firstLeadingBit(vec3<u32>(64283u, 1u, var_0.x) ^ vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u))));
    let var_2 = Struct_1(-u_input.b, -205f, reverseBits(vec3<i32>(~44798i, u_input.c, countOneBits(29696i))), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(54642i, min(36361i, u_input.c)), _wgslsmith_mult_i32(~u_input.c, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, u_input.a)))), -26903i), vec4<u32>(var_0.x, ~firstTrailingBit(78951u), _wgslsmith_sub_u32(countOneBits(var_0.x), var_0.x), 5221u) ^ ~(~firstLeadingBit(vec4<u32>(53324u, 51299u, var_0.x, var_0.x))));
    return abs(reverseBits(-(_wgslsmith_mult_i32(12635i, u_input.b) & 2147483647i)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(global0.x, 183f, _wgslsmith_f_op_f32(665f - 788f), _wgslsmith_f_op_f32(global0.x + global0.x));
    let var_1 = func_2(_wgslsmith_f_op_f32(round(878f)));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1038f, -587f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -418f, 1804f, var_0.x)))), vec4<f32>(477f, _wgslsmith_f_op_f32(var_0.x - 1000f), _wgslsmith_f_op_f32(-var_0.x), var_0.x), vec4<bool>(false, false, true, true))) + vec4<f32>(-703f, var_0.x, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f + var_0.x) - -135f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(345f, _wgslsmith_f_op_f32(-var_0.x), global0.x, _wgslsmith_f_op_f32(select(global0.x, var_0.x, false))), vec4<f32>(_wgslsmith_f_op_f32(607f + 470f), 326f, _wgslsmith_div_f32(242f, 405f), _wgslsmith_f_op_f32(floor(-181f))), vec4<bool>(true, false, true, true))))), false));
    let var_2 = min(_wgslsmith_clamp_vec2_i32(-reverseBits(vec2<i32>(u_input.c, var_1)) | vec2<i32>(-19291i, firstTrailingBit(1891i)), u_input.d, abs(vec2<i32>(u_input.d.x, u_input.a))), vec2<i32>(abs(_wgslsmith_sub_i32(var_1, -3592i)), i32(-1i) * -17904i));
    var_0 = vec4<f32>(987f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1434f))))), 153f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~abs(~vec3<u32>(1u, 4294967295u, 58268u))), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~43669u), 94199u, 0u), _wgslsmith_mod_vec3_u32(firstLeadingBit(abs(vec3<u32>(0u, 14363u, 63226u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(25021u, 54141u, 6355u), vec3<u32>(43054u, 7069u, 18763u))))), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = false;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x - var_0.b), -905f, _wgslsmith_f_op_f32(step(-2168f, var_0.b)), -701f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, 779f, var_0.b, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1641f, 153f, 1126f, -826f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, var_0.b, -1581f, var_0.b)))) * vec4<f32>(var_0.b, _wgslsmith_f_op_f32(global0.x + -1482f), _wgslsmith_f_op_f32(-856f - var_0.b), 1000f)));
    var var_2 = Struct_1(u_input.b, -1747f, reverseBits(func_1().c), ~(~2147483647i), vec4<u32>(countOneBits(27869u) ^ func_1().e.x, ~(~var_0.e.x), var_0.e.x, var_0.e.x) | vec4<u32>(4294967295u, _wgslsmith_div_u32(0u, var_0.e.x | var_0.e.x), ~firstLeadingBit(56317u), ~abs(0u)));
    global1 = array<Struct_1, 15>();
    let var_3 = global1[_wgslsmith_index_u32(~(abs(~var_2.e.x) | _wgslsmith_mult_u32(var_2.e.x | 872u, 4294967295u)) & var_2.e.x, 15u)];
    let var_4 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-func_1().b), _wgslsmith_mult_vec3_i32(var_3.c, _wgslsmith_clamp_vec3_i32(var_0.c, var_2.c, var_2.c)), var_0.c.x, abs(_wgslsmith_mult_vec4_u32(~abs(var_3.e), var_3.e)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b - var_4.b) * -1619f))), _wgslsmith_f_op_f32(var_4.b * _wgslsmith_f_op_f32(-var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(226f + -1281f))), global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-270f, -615f) - _wgslsmith_f_op_f32(step(var_3.b, 1818f))) * _wgslsmith_f_op_f32(ceil(var_0.b))))), 1140f, ~(~_wgslsmith_mult_u32(0u, 42418u)));
}

