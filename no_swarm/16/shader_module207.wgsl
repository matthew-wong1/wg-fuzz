struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(15548u, 34724u, 4703u, 24920u, 53821u, 11154u, 1u, 26691u, 6521u, 33389u);

var<private> global1: vec2<f32> = vec2<f32>(-184f, -1000f);

var<private> global2: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec4<bool> {
    var var_0 = 15335i;
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var_0 = reverseBits(global2.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 845f, -1651f, global1.x) * vec4<f32>(-1549f, -110f, -440f, arg_0.c.x)))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(163f, _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(floor(909f)), _wgslsmith_f_op_f32(-global1.x)) - vec4<f32>(global1.x, -571f, arg_0.c.x, _wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x))))));
    return vec4<bool>(any(vec3<bool>(select(!arg_0.b.a.x, !arg_0.d, true), !(!arg_0.d), arg_0.b.a.x)), (!arg_0.b.a.x | !arg_0.d) || true, true, false);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(func_3(Struct_3(global2.xx, Struct_1(vec4<bool>(true, true, true, true), select(vec2<u32>(u_input.b, 57966u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 10u)]), vec2<bool>(true, true)), vec2<i32>(global2.x, 0i), _wgslsmith_div_u32(u_input.b, 14563u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 188f) + vec2<f32>(global1.x, global1.x))), all(vec3<bool>(true, false, true))), -_wgslsmith_clamp_i32(-global2.x, _wgslsmith_add_i32(global2.x, global2.x), 30744i)), (vec2<u32>(~0u, abs(u_input.b)) & max(~vec2<u32>(4294967295u, u_input.a), min(vec2<u32>(1u, 0u), vec2<u32>(24955u, u_input.a)))) << (vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], 4294967295u), firstTrailingBit(vec4<u32>(1399u, global0[_wgslsmith_index_u32(50901u, 10u)], 41133u, 0u))), ~44595u) % vec2<u32>(32u)), max(_wgslsmith_clamp_vec2_i32(countOneBits(global2.wx), vec2<i32>(global2.x, i32(-1i) * -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(global2.x, -22672i), vec2<i32>(0i, 33812i)) >> (firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 23246u)) % vec2<u32>(32u))), vec2<i32>((23721i | global2.x) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)] % 32u), ~_wgslsmith_add_i32(-1i, 2147483647i))), ~(~(~(4294967295u ^ u_input.b))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(657f, global1.x), vec2<f32>(global1.x, -2249f)))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, 245f), vec2<f32>(-1000f, global1.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1600f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 761f))))) * vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -1000f)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1988f)), 1000f, global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x + global1.x))))), Struct_2(4294967295u, firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(var_0.d, 10u)], 44621u), vec4<u32>(u_input.b, u_input.a, 4061u, 62182u)) << (select(vec4<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 0u, u_input.a, 4294967295u), vec4<u32>(4294967295u, 4294967295u, u_input.a, global0[_wgslsmith_index_u32(var_0.b.x, 10u)]), var_0.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), -613f, Struct_1(select(vec4<bool>(true, true, false, var_0.a.x), !vec4<bool>(false, true, true, var_0.a.x), !var_0.a), reverseBits(vec2<u32>(1u, 20954u)), var_0.c, max(0u, ~u_input.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u | var_0.d, var_0.b.x, 1u >> (1u % 32u), 30422u) << (max(vec4<u32>(var_0.b.x, global0[_wgslsmith_index_u32(var_0.b.x, 10u)], 4294967295u, 0u), select(vec4<u32>(1u, var_0.d, 4294967295u, 0u), vec4<u32>(10201u, 0u, 72569u, u_input.a), vec4<bool>(true, true, var_0.a.x, var_0.a.x))) % vec4<u32>(32u)), min(select(~vec4<u32>(47789u, var_0.b.x, 51769u, var_0.d), ~vec4<u32>(u_input.b, var_0.d, u_input.a, global0[_wgslsmith_index_u32(1u, 10u)]), true), ~(vec4<u32>(43236u, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(var_0.d, 10u)], u_input.a) ^ vec4<u32>(20678u, 0u, 60299u, 64300u)))));
    global1 = var_1.a.wx;
    let var_2 = var_1.a.yw;
    return func_3(Struct_3(~reverseBits(var_0.c >> (vec2<u32>(19690u, global0[_wgslsmith_index_u32(0u, 10u)]) % vec2<u32>(32u))), var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(var_1.a.x + -921f))), true), ~var_1.b.e.c.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(139f * arg_2.x)), arg_3.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))) + arg_2) - vec4<f32>(-319f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * arg_2.x) - global1.x)), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), 2205f)), _wgslsmith_f_op_f32(297f - _wgslsmith_f_op_f32(exp2(global1.x)))))));
    let var_2 = Struct_5(vec4<i32>(0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_3.b.c.x, arg_1.x) ^ vec3<i32>(-306i, arg_0.x, var_0.b.c.x), _wgslsmith_add_vec3_i32(arg_1, vec3<i32>(41018i, 27351i, -1i))), arg_1.x, var_0.b.c.x), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(11100u, 10u)]), 24969u), ~(~vec4<u32>(u_input.b, 4294967295u, var_0.b.b.x, 0u))), ~(~vec4<u32>(0u, arg_3.b.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], arg_3.b.d) & _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(arg_3.b.b.x, arg_3.b.b.x, 50356u, var_0.b.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1301f)), _wgslsmith_f_op_f32(-arg_3.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))), var_1.x, arg_3.b), arg_3.c.x, Struct_1(select(var_0.b.a, arg_3.b.a, ~1u > _wgslsmith_mod_u32(33584u, global0[_wgslsmith_index_u32(arg_3.b.b.x, 10u)])), vec2<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(89391u, 10u)], 1u, arg_3.b.b.x, arg_3.b.b.x), vec4<u32>(arg_3.b.d, 1u, 0u, 1u))), 49257u), arg_3.b.c, 4294967295u));
    let var_3 = Struct_2(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(34453u, 10u)], var_0.b.d), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 10u)], arg_3.b.b.x, global0[_wgslsmith_index_u32(45537u, 10u)])), var_2.b.e.b), var_2.b.b, -2005f, global1.x, var_2.d);
    var var_4 = abs(-_wgslsmith_mult_i32(global2.x, var_2.b.e.c.x));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -800f), var_3.c, var_3.c)), var_3, _wgslsmith_div_u32(var_3.a | reverseBits(var_2.b.b.x), select(arg_3.b.b.x, ~var_0.b.b.x, all(arg_3.b.a.yy))) | _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(var_2.b.b.zyy, var_2.b.b.zyw, vec3<u32>(arg_3.b.d, global0[_wgslsmith_index_u32(var_2.b.e.d, 10u)], 4294967295u))), var_3.b.zww));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> vec4<bool> {
    var var_0 = func_4(-(global2.wxx >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.c, 0u), vec3<u32>(arg_2.c, 10450u, global0[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(21550u, 4294967295u, u_input.b), arg_2.b.b.yxz)) % vec3<u32>(32u))), max((vec3<i32>(-1i, global2.x, global2.x) >> (~arg_2.b.b.yyz % vec3<u32>(32u))) << (~(~arg_2.b.b.yxw) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(50961i, arg_2.b.e.c.x, arg_0)), global2.zzw))), _wgslsmith_f_op_vec4_f32(-arg_2.a), Struct_3(vec2<i32>(~(~2147483647i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0, 18179i), ~arg_2.b.e.c.x)), func_4(min(vec3<i32>(-1i, 16128i, arg_0), countOneBits(vec3<i32>(45289i, global2.x, -1i))), vec3<i32>(-1i | arg_0, arg_2.b.e.c.x, 0i), vec4<f32>(_wgslsmith_f_op_f32(global1.x * 521f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1670f), func_4(global2.ywx, global2.zzx, vec4<f32>(arg_2.a.x, 1018f, arg_2.a.x, global1.x), Struct_3(arg_2.b.e.c, arg_2.b.e, arg_2.a.zx, true)).b.c), Struct_3(reverseBits(vec2<i32>(2939i, -25039i)), arg_2.b.e, _wgslsmith_f_op_vec2_f32(arg_2.a.wy + arg_2.a.xw), false)).b.e, arg_2.a.zw, select(false, arg_2.b.e.a.x, false)));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(func_4(global2.zyz, vec3<i32>(arg_2.b.e.c.x >> (1u % 32u), _wgslsmith_add_i32(2147483647i, -2147483647i), 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 956f, var_0.b.d, -351f) - vec4<f32>(-746f, arg_2.b.c, arg_2.a.x, global1.x)) * _wgslsmith_f_op_vec4_f32(round(var_0.a))), Struct_3(var_0.b.e.c, var_0.b.e, _wgslsmith_f_op_vec2_f32(arg_2.a.yz * vec2<f32>(var_0.b.c, arg_2.a.x)), var_0.b.e.a.x)).b.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - 338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-577f))))));
    var var_1 = _wgslsmith_clamp_u32(0u, ~var_0.b.e.d, 1u);
    let var_2 = Struct_3(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2.b.e.c.x, -2147483647i), vec2<i32>(arg_2.b.e.c.x, -1i)), global2.yw), var_0.b.e, arg_2.a.yw, true);
    let var_3 = var_2.b.a.yyy;
    return vec4<bool>(!var_3.x == true, true, (var_3.x || var_2.b.a.x) || (true | ((arg_2.b.b.x | 40926u) >= ~4294967295u)), var_0.b.e.a.x);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = Struct_1(func_5(-2147483647i, abs(select(u_input.b, ~u_input.b, true)), func_4(vec3<i32>(-global2.x, ~arg_1.x, 1i), global2.yzw, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-546f, -975f, 113f, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -412f, 509f, 742f) + vec4<f32>(global1.x, -1609f, global1.x, 1795f)), func_2())), Struct_3(global2.xx, Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 0u), arg_1, u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, arg_3) + vec2<f32>(-674f, global1.x)), all(vec4<bool>(arg_2, true, arg_2, false))))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)])) & max(~vec2<u32>(1u, 35968u), ~vec2<u32>(4294967295u, u_input.a)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(35787u, 86401u), vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 10u)])))), vec2<i32>(abs(arg_0), global2.x & firstTrailingBit(43466i | arg_0)), ~_wgslsmith_add_u32(countOneBits(u_input.a & 1u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.b, 86938u), ~vec4<u32>(24651u, 51896u, 28886u, 18220u)), 10u)]));
    let var_1 = func_4(global2.xxz, select(_wgslsmith_mult_vec3_i32(max(vec3<i32>(0i, arg_0, -6225i), ~vec3<i32>(global2.x, -1i, var_0.c.x)), (global2.wwx ^ vec3<i32>(0i, global2.x, -1i)) << ((vec3<u32>(global0[_wgslsmith_index_u32(var_0.b.x, 10u)], 112578u, 4294967295u) & vec3<u32>(u_input.b, 4294967295u, 7028u)) % vec3<u32>(32u))), global2.zww, var_0.a.zyz), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 371f) + _wgslsmith_f_op_f32(1920f * arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) * _wgslsmith_f_op_f32(min(-556f, 1206f))), -510f, _wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(-arg_3))))), Struct_3(abs(-vec2<i32>(1i, arg_0)), var_0, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -1000f), vec2<f32>(-788f, 1060f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -990f) * vec2<f32>(-818f, -1000f))))), all(vec3<bool>(arg_2, true, true))));
    let var_2 = vec2<i32>(22191i, arg_1.x);
    var var_3 = var_1.b;
    global1 = var_1.a.wz;
    return abs(global0[_wgslsmith_index_u32(func_4(-vec3<i32>(9045i, i32(-1i) * -1i, -2147483647i), global2.yyw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_4(global2.xwz, global2.wwz, vec4<f32>(-1236f, var_1.a.x, var_3.d, var_3.d), Struct_3(vec2<i32>(var_0.c.x, arg_0), var_0, var_1.a.zy, false)).a)), Struct_3(vec2<i32>(_wgslsmith_div_i32(0i, 931i), 12020i), Struct_1(func_3(Struct_3(arg_1, var_3.e, vec2<f32>(-866f, 390f), true), 439i), reverseBits(var_1.b.e.b), select(vec2<i32>(arg_0, arg_1.x), vec2<i32>(var_3.e.c.x, 2147483647i), vec2<bool>(var_0.a.x, false)), global0[_wgslsmith_index_u32(~var_3.b.x, 10u)]), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1256f, var_1.b.c), vec2<f32>(var_3.d, global1.x))))), true)).c, 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec2<u32>(_wgslsmith_clamp_u32(func_1(abs(-41506i), vec2<i32>(global2.x, global2.x), true, 275f), func_1(global2.x, global2.yw, true, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_mod_u32(abs(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(54631u, 10u)], 78237u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(12006u, 10u)], 0u, global0[_wgslsmith_index_u32(4294967295u, 10u)])))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u ^ u_input.a, 0u), 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)])));
    let var_1 = select(!select(vec3<bool>(true, true, any(vec2<bool>(false, true))), func_4(vec3<i32>(global2.x, global2.x, global2.x), global2.wxx, vec4<f32>(266f, -432f, 229f, 363f), Struct_3(global2.xy, Struct_1(vec4<bool>(true, true, true, true), var_0, vec2<i32>(global2.x, 1i), var_0.x), vec2<f32>(global1.x, global1.x), true)).b.e.a.xyx, false), func_2().yyz, func_5(abs(-37333i), u_input.a, func_4(vec3<i32>(_wgslsmith_sub_i32(53392i, -1i), 1i, -2147483647i), -(~global2.wzw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))), Struct_3(max(global2.zy, vec2<i32>(global2.x, global2.x)), func_4(global2.yzz, vec3<i32>(227i, global2.x, 69092i), vec4<f32>(global1.x, -407f, global1.x, 989f), Struct_3(vec2<i32>(3406i, 54455i), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(var_0.x, var_0.x), global2.xy, var_0.x), vec2<f32>(global1.x, -1619f), true)).b.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, global1.x)), global2.x < -11259i))).x);
    let var_2 = vec4<bool>(false, any(!func_5(_wgslsmith_mult_i32(global2.x, global2.x), _wgslsmith_add_u32(13395u, 60146u), Struct_4(vec4<f32>(2593f, global1.x, global1.x, global1.x), Struct_2(51895u, vec4<u32>(u_input.b, 0u, 0u, 9703u), -868f, global1.x, Struct_1(vec4<bool>(var_1.x, false, true, var_1.x), var_0, global2.ww, 1u)), 0u)).zwy), ~firstTrailingBit(reverseBits(var_0.x)) > ~u_input.a, true || (var_1.x || (1i <= ~global2.x)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-658f * -126f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(abs(global1.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.x)))));
    var var_4 = 0i;
    let var_5 = func_4(global2.wxy, ~(-vec3<i32>(_wgslsmith_div_i32(2147483647i, 1i), -global2.x, -global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1669f, global1.x, global1.x, 403f), vec4<f32>(1067f, 1533f, -1095f, global1.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-160f, 974f, 542f, global1.x))))), Struct_3(func_4(select(global2.wzy, vec3<i32>(2147483647i, global2.x, global2.x), true), select(vec3<i32>(2147483647i, global2.x, 40582i), global2.xzx, var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -433f, global1.x, global1.x) + vec4<f32>(global1.x, -1040f, global1.x, global1.x)), Struct_3(vec2<i32>(-15506i, global2.x), Struct_1(vec4<bool>(var_1.x, var_2.x, true, var_2.x), var_0, global2.yy, global0[_wgslsmith_index_u32(45946u, 10u)]), vec2<f32>(global1.x, -2002f), true)).b.e.c | -vec2<i32>(global2.x, global2.x), Struct_1(vec4<bool>(var_1.x & true, 872f == global1.x, true, var_1.x), max(vec2<u32>(20110u, 1u), ~vec2<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35833u, 10u)], 10u)])), global2.ww, u_input.a), vec2<f32>(-625f, global1.x), func_5(abs(-47466i) >> (0u % 32u), u_input.b, func_4(global2.zww, abs(global2.xzw), _wgslsmith_div_vec4_f32(vec4<f32>(1553f, 692f, 746f, 648f), vec4<f32>(global1.x, global1.x, 976f, global1.x)), Struct_3(global2.wx, Struct_1(vec4<bool>(true, var_1.x, var_2.x, var_2.x), var_0, vec2<i32>(global2.x, 66444i), u_input.a), vec2<f32>(global1.x, 1535f), var_1.x))).x));
    var var_6 = var_5.b;
    var var_7 = var_5.a.x;
    var_4 = 24218i << (var_0.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(-vec3<i32>(-2147483647i, var_6.e.c.x, var_5.b.e.c.x), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-33083i, global2.x, var_5.b.e.c.x), global2.wxz, vec3<i32>(0i, var_6.e.c.x, var_5.b.e.c.x)), func_4(abs(-global2.xww), _wgslsmith_mult_vec3_i32(global2.xyx, _wgslsmith_mult_vec3_i32(global2.www, vec3<i32>(var_5.b.e.c.x, var_5.b.e.c.x, 1i))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_5.a))), Struct_3(var_6.e.c, Struct_1(vec4<bool>(var_2.x, var_2.x, false, var_1.x), vec2<u32>(u_input.a, var_5.b.e.d), global2.xy, u_input.b), _wgslsmith_f_op_vec2_f32(step(var_5.a.yx, vec2<f32>(var_5.a.x, global1.x))), all(vec3<bool>(var_5.b.e.a.x, false, true)))).a, Struct_3(select(vec2<i32>(1i, 2147483647i), global2.zz, !var_5.b.e.a.zy), var_5.b.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.b.d, global1.x) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_5.a.x, var_5.b.d), var_5.a.zw, var_6.e.a.x))), select(var_5.b.e.a.x, func_2().x, var_2.x))).b.b, _wgslsmith_f_op_f32(min(func_4(~_wgslsmith_mult_vec3_i32(global2.wxy, vec3<i32>(0i, var_5.b.e.c.x, 30085i)), vec3<i32>(select(global2.x, var_6.e.c.x, var_5.b.e.a.x), countOneBits(global2.x), var_5.b.e.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.x, 711f, global1.x, var_5.a.x))), Struct_3(var_6.e.c, Struct_1(vec4<bool>(true, true, var_6.e.a.x, true), var_0, global2.yw, var_5.c), var_5.a.wx, var_5.b.e.a.x)).a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * var_6.c)))))), -2578f);
}

