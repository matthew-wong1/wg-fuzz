struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<f32, 12>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>) -> u32 {
    global0 = array<bool, 7>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1012f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(countOneBits(arg_0.a.a), 12u)], 1433f) * arg_0.d)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(17222u, 18u, arg_1.x), 12u)]))))));
    global0 = array<bool, 7>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.d, 1216f)), _wgslsmith_f_op_f32(-841f - -1348f), global1[_wgslsmith_index_u32(~6132u, 12u)], -552f)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-641f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.d)), -319f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a.a, 12u)]) - -276f)), 206f, _wgslsmith_f_op_f32(arg_0.d + var_0)));
    return ~43487u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<f32, 12>();
    let var_0 = Struct_1(select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(0u, 0u, 78671u), 84898u, 1u), reverseBits(~vec4<u32>(39789u, 0u, 67075u, 30434u))), 43572u ^ func_3(Struct_4(Struct_1(1u, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(31892u, 7u)]), vec2<bool>(false, false), vec4<u32>(0u, 44930u, 26659u, 0u), global1[_wgslsmith_index_u32(0u, 12u)]), ~vec3<u32>(23865u, 32976u, 1u)), all(!vec2<bool>(false, global0[_wgslsmith_index_u32(47034u, 7u)])) | !(!global0[_wgslsmith_index_u32(0u, 7u)])), ~(1u | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 45081u, 0u), vec4<u32>(25214u, 4294967295u, 31383u, 1989u))) > 1u, true);
    let var_1 = countOneBits(_wgslsmith_mult_i32(firstTrailingBit(u_input.a) >> (var_0.a % 32u), firstTrailingBit(u_input.a))) | u_input.a;
    let var_2 = _wgslsmith_f_op_f32(abs(607f));
    let var_3 = _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(~var_0.a, ~0u), 1u, abs(var_0.a) >> ((var_0.a << (var_0.a % 32u)) % 32u)), ~vec3<u32>(96068u, ~var_0.a, 1u));
    return Struct_1(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 7u)], var_0.b && global0[_wgslsmith_index_u32(select(select(~4294967295u, ~1u, 40200u >= var_3.x), var_3.x, !(!var_0.b)), 7u)]);
}

fn func_1() -> Struct_1 {
    global1 = array<f32, 12>();
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(497f, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 12u)]), global1[_wgslsmith_index_u32(~0u, 12u)]) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(3243u, 12u)])))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(10261u, 12u)]), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), vec2<f32>(var_0.x, global1[_wgslsmith_index_u32(0u, 12u)]))))))))));
    global1 = array<f32, 12>();
    let var_1 = func_2(vec3<f32>(-3145f, -704f, var_0.x));
    return func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -1000f, global1[_wgslsmith_index_u32(var_1.a, 12u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(51991u, 33688u, 30160u, 1u)), vec4<u32>(~0u, 1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(4294967295u, 1u, 29076u, 4294967295u))))));
    global1 = array<f32, 12>();
    let var_1 = global0[_wgslsmith_index_u32(~firstTrailingBit(62612u), 7u)];
    global1 = array<f32, 12>();
    var var_2 = Struct_4(func_1(), !(!vec2<bool>(!global0[_wgslsmith_index_u32(var_0.x, 7u)], any(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 7u)], global0[_wgslsmith_index_u32(var_0.x, 7u)], true)))), vec4<u32>(var_0.x, 25358u, _wgslsmith_dot_vec2_u32(var_0.ww << (var_0.zx % vec2<u32>(32u)), vec2<u32>(8452u, var_0.x)) ^ var_0.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, var_0.x, 71567u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 1u, 1u), vec3<u32>(var_0.x, 0u, 0u)))), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 12u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-823f, 1338f)) + -589f)), true)));
    let var_3 = 2242f;
    global0 = array<bool, 7>();
    var var_4 = Struct_4(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 1565f, 144f) + vec3<f32>(var_3, global1[_wgslsmith_index_u32(var_2.a.a, 12u)], global1[_wgslsmith_index_u32(var_2.c.x, 12u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(374f, 489f, var_3))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(367f, var_3, var_3) * vec3<f32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(var_0.x, 12u)], -723f)), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(var_2.a.a, 12u)], 1120f), vec3<f32>(-289f, global1[_wgslsmith_index_u32(var_0.x, 12u)], var_2.d)))))), var_2.b, vec4<u32>(max(_wgslsmith_add_u32(~4294967295u, _wgslsmith_mod_u32(var_2.a.a, var_0.x)), func_3(Struct_4(Struct_1(86678u, false, true), var_2.b, var_0, 364f), _wgslsmith_mult_vec3_u32(var_2.c.zxx, vec3<u32>(4294967295u, 0u, var_2.c.x)))), _wgslsmith_add_u32(~(~3402u), 1u << (~var_0.x % 32u)), 34359u, 3436u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3))));
    var var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(542f, 1742f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-260f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(floor(var_4.d))), select(true, global0[_wgslsmith_index_u32(~0u, 7u)], true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-524f * 1816f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_3)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(var_4.d, -3512f))))), ~_wgslsmith_mult_vec4_u32(~var_2.c, var_0) ^ var_4.c);
}

