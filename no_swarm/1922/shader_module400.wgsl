struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-1000f, -500f, 714f, -521f, 599f, 1110f, 565f, 879f, 2791f, 920f, -443f, -460f, -379f, 1199f, 360f, -216f, 441f, 259f, -1000f, -1022f, 1777f, -178f, -1060f, -834f);

var<private> global1: array<vec4<bool>, 5>;

var<private> global2: array<vec4<bool>, 7>;

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global0 = array<f32, 24>();
    let var_0 = -1i;
    global1 = array<vec4<bool>, 5>();
    global1 = array<vec4<bool>, 5>();
    let var_1 = Struct_1(0i, select(abs(vec2<u32>(u_input.d.x, u_input.c) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, u_input.e), vec2<u32>(4294967295u, 4294967295u), u_input.d.zz)), vec2<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.d.xyz, u_input.d.wzy)), u_input.e), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), true)), ~vec4<i32>(-u_input.a, u_input.b.x, -2147483647i, 0i), select(vec3<bool>(true, false, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec3<bool>(true, true, true)))));
    return _wgslsmith_add_i32(~2147483647i, reverseBits(var_0));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-func_3(), -43184i, u_input.b.x, u_input.a), (vec4<i32>(countOneBits(u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a, u_input.b.x, u_input.b.x)), u_input.a, ~u_input.a) & (vec4<i32>(-1i, -13394i, 2147483647i, u_input.a) << (vec4<u32>(4294967295u, u_input.e, 13066u, 15139u) % vec4<u32>(32u)))) & _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, 0i), vec4<i32>(13648i, u_input.b.x, -2147483647i, u_input.a)), vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.a, 0i), vec4<i32>(-15859i, u_input.a, u_input.a, 57889i))), countOneBits(abs(-(~vec4<i32>(46862i, -1i, 0i, u_input.a)))));
    var var_1 = Struct_2(~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], -1298f, global0[_wgslsmith_index_u32(u_input.e, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]) * vec4<f32>(-1163f, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(u_input.e, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(26130u, 24u)], global0[_wgslsmith_index_u32(u_input.e, 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)], -166f), vec4<f32>(global0[_wgslsmith_index_u32(25631u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.e, 24u)]))))), global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(abs(25584u), _wgslsmith_sub_u32(u_input.c, 4294967295u))), u_input.d.x, (_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 24u)]) == _wgslsmith_f_op_f32(2314f - -1225f)) && true), 10u)], !all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(37687u, u_input.c), 10u)]);
    let var_2 = -69425i;
    var var_3 = Struct_1(var_0.x, var_1.e.b, vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(var_1.e.c, vec4<i32>(-11309i, var_0.x, 56337i, 49904i)), firstLeadingBit(-2147483647i)), i32(-1i) * -select(var_1.e.a, var_2, true), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.a, var_0.x, var_0.x), var_1.e.c.xyx << (u_input.d.yxx % vec3<u32>(32u)))), var_1.e.a), select(var_1.e.d, !select(var_1.e.d, vec3<bool>(true, var_1.e.d.x, var_1.e.d.x), false && var_1.e.d.x), select(_wgslsmith_div_f32(var_1.b.x, global0[_wgslsmith_index_u32(19792u, 24u)]) <= -230f, var_1.e.d.x, any(var_1.c.d.xz))));
    var var_4 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.d), _wgslsmith_sub_vec4_u32(countOneBits(u_input.d), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(var_3.b.x, var_1.a, u_input.c, var_3.b.x)))), _wgslsmith_mod_u32(var_1.e.b.x ^ 34992u, var_3.b.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) * -639f) + -1441f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 24u)] + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(100054u, 24u)]), global0[_wgslsmith_index_u32(u_input.c << (4294967295u % 32u), 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1471f)) + -871f)), 213f), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.c, _wgslsmith_sub_u32(abs(var_1.c.b.x), var_1.a)), 1u), 10u)], var_3.d.x, global3[_wgslsmith_index_u32(~48876u, 10u)]);
    return 1i;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = ~(~vec4<i32>(~28672i, ~32729i << (_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(u_input.d.x, u_input.c)) % 32u), reverseBits(func_2()), _wgslsmith_add_i32(0i, -53394i)));
    var var_1 = Struct_2(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x) ^ vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 4294967295u)), 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -972f) * global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(13169u)), 24u)]), 1472f, -2448f), global3[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(0u, min(~u_input.d.x, 37002u), abs(u_input.d.x)) % 32u), 10u)], any(vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(u_input.d.x << (u_input.d.x % 32u)), firstLeadingBit(u_input.e), max(~14238u, ~0u)) >> (abs(firstLeadingBit(1u)) % 32u), 10u)]);
    global2 = array<vec4<bool>, 7>();
    return Struct_2(countOneBits(102010u) & (1288u >> (firstLeadingBit(u_input.d.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1103f, global0[_wgslsmith_index_u32(u_input.e, 24u)])) + _wgslsmith_div_f32(569f, global0[_wgslsmith_index_u32(var_1.c.b.x, 24u)])) + _wgslsmith_f_op_f32(trunc(-562f))), global0[_wgslsmith_index_u32(~var_1.a, 24u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.e.b.x, 24u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-636f * var_1.b.x) * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(var_1.a, 24u)])))), var_1.b.x), global3[_wgslsmith_index_u32(0u, 10u)], ~countOneBits(abs(0u)) == ~u_input.d.x, global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(var_1.e.b.x, u_input.d.x)), 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~abs(u_input.d.wyz), u_input.d.ywy), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, firstTrailingBit(57148u), 1u ^ u_input.d.x, ~0u), u_input.d));
    let var_1 = ~min(vec4<u32>(abs(u_input.c >> (u_input.d.x % 32u)), firstTrailingBit(_wgslsmith_clamp_u32(u_input.e, u_input.e, 4294967295u)), ~u_input.d.x, 4294967295u), vec4<u32>(abs(_wgslsmith_sub_u32(u_input.c, u_input.d.x)), u_input.e, select(abs(31193u), 1u, true), ~(~u_input.e)));
    var var_2 = u_input.d.zz;
    var var_3 = global3[_wgslsmith_index_u32(abs(min(4976u, var_1.x)), 10u)];
    global1 = array<vec4<bool>, 5>();
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.x, 24u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)] * 109f))));
    var var_5 = func_1(_wgslsmith_mod_i32(var_3.c.x, ~u_input.b.x));
    let var_6 = select(~var_5.e.b.x, u_input.d.x, var_3.d.x);
    global3 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(~var_1.yxx, abs(_wgslsmith_div_vec3_u32(u_input.d.zwy, vec3<u32>(var_1.x, 39897u, var_3.b.x))), select(vec3<bool>(var_5.c.d.x, var_3.d.x, var_3.d.x), !var_3.d, !vec3<bool>(var_5.c.d.x, true, false))), vec2<f32>(172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_5.b.x), _wgslsmith_f_op_f32(-1404f * 1299f))))));
}

