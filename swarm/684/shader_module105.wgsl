struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false));

var<private> global3: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(12604u, 64444u), vec2<u32>(35811u, 35601u), vec2<u32>(21930u, 4294967295u), vec2<u32>(28627u, 0u), vec2<u32>(15280u, 52539u), vec2<u32>(38586u, 648u), vec2<u32>(6784u, 2549u), vec2<u32>(4294967295u, 26482u), vec2<u32>(0u, 126202u));

var<private> global4: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = vec2<u32>(0u, u_input.b);
    let var_1 = _wgslsmith_f_op_f32(step(125f, 235f));
    global3 = array<vec2<u32>, 9>();
    let var_2 = u_input.b;
    global2 = array<vec4<bool>, 16>();
    return _wgslsmith_sub_vec4_u32(~(~firstLeadingBit(max(vec4<u32>(52539u, 8674u, var_2, var_0.x), vec4<u32>(39177u, 1u, 16856u, 1u)))), ~(~((vec4<u32>(63491u, u_input.a, 3915u, var_2) ^ vec4<u32>(var_0.x, 16000u, 1u, u_input.a)) & ~vec4<u32>(4294967295u, var_2, 1u, var_2))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    var var_0 = !global0[_wgslsmith_index_u32(~(~(~(~4294967295u))), 5u)];
    var var_1 = -1000f;
    var var_2 = -844f;
    var var_3 = arg_1.yzy;
    var var_4 = any(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x)) <= -165f, false, global0[_wgslsmith_index_u32(48370u, 5u)], !(!(var_3.x != u_input.a))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-473f + arg_0.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-791f - 444f))), -1069f))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1875f, -744f, 243f)), func_3(true, vec4<f32>(-1000f, -354f, 1000f, 914f), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), global1[_wgslsmith_index_u32(66399u, 32u)]), vec3<i32>(2147483647i, 1i, -19471i) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)), 0i)) - _wgslsmith_f_op_f32(sign(-661f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-574f, -1129f, 129f), vec3<f32>(-455f, -388f, 1000f)), max(vec4<u32>(u_input.a, 0u, u_input.a, 49393u), vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.a)), -vec3<i32>(0i, -27382i, 45621i), ~1i)))), Struct_1(~abs(~vec3<u32>(u_input.b, u_input.a, 40232u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(603f, 451f, -1000f, 751f))))))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(max(1i, -1i), -2147483647i, max(~_wgslsmith_mult_i32(-1i, -2662i), abs(firstLeadingBit(2147483647i)))), ~(~vec3<i32>(1i, 1i, 1i)));
    var var_3 = 36385u;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(vec3<f32>(var_0.b.b.x, var_0.a, 1046f), vec4<u32>(u_input.b, 7758u, var_1.b.a.x, var_1.b.a.x), var_2, 1i)), 983f, _wgslsmith_f_op_f32(select(var_1.b.b.x, -1000f, global0[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_f_op_f32(-var_0.b.b.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.b.x, -312f, -157f, -739f), _wgslsmith_f_op_vec4_f32(exp2(var_0.b.b))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-558f, 1525f, -617f, var_0.a), var_0.b.b))));
    return var_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = ~_wgslsmith_add_u32(~29708u, ~_wgslsmith_mult_u32(var_0.b.a.x, _wgslsmith_sub_u32(1u, arg_3)));
    var var_2 = -867i;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -528f))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.b.x), func_2().b.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<f32>(var_0.b.b.x, var_0.b.b.x, 2434f), vec4<u32>(41924u, var_1, var_1, var_0.b.a.x), arg_2, arg_0.x))))))));
    var var_4 = global0[_wgslsmith_index_u32(36514u >> (~u_input.a % 32u), 5u)];
    return func_2();
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> u32 {
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, u_input.a) & vec2<u32>(65058u, 27670u), firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 9u)]), true), ~global3[_wgslsmith_index_u32(~u_input.b, 9u)]), func_5(i32(-1i) * -2147483647i, func_1(vec2<i32>(25425i, -1i), vec2<i32>(0i, -1i), vec3<i32>(-2147483647i, 1i, 2147483647i), 40205u)) ^ (~0u >> (u_input.a % 32u)), 2247u), func_1(max(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(5835i, -13093i)) >> ((global3[_wgslsmith_index_u32(0u, 9u)] | global3[_wgslsmith_index_u32(4294967295u, 9u)]) % vec2<u32>(32u)), ~vec2<i32>(2147483647i, -1i) >> (select(vec2<u32>(u_input.b, 1u), global3[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]) % vec2<u32>(32u))), vec2<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-9645i, 16610i), vec2<i32>(-1i, 16167i)), firstLeadingBit(-1i))), vec3<i32>(min(-5342i, -23940i), _wgslsmith_clamp_i32(1i, 1i, 0i), abs(6006i)) & (firstTrailingBit(vec3<i32>(0i, 1i, -40118i)) ^ vec3<i32>(-58947i, 14620i, 46941i)), 0u).b.b);
    global4 = var_0.a.x;
    global3 = array<vec2<u32>, 9>();
    let var_1 = 4294967295u;
    let var_2 = firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(firstTrailingBit(2147483647i), 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-79056i, -9442i, -1i), vec3<i32>(-2147483647i, 1i, 64983i)) ^ firstTrailingBit(8936i))) ^ 1i;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-1817f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x)))), Struct_1(vec3<u32>(22112u, 1u, u_input.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1258f), 1103f, _wgslsmith_f_op_f32(step(768f, var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x * 982f)), var_0.b))));
    var var_4 = ~(~(~(~vec4<u32>(71114u, u_input.b, var_3.b.a.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(53290u, 1u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 4294967295u))), ~(~4294967295u)), min(_wgslsmith_sub_u32(func_1(vec2<i32>(1i, var_2) ^ vec2<i32>(32639i, 34431i), vec2<i32>(var_2, -27640i), abs(vec3<i32>(-1i, var_2, 6850i)), var_3.b.a.x).b.a.x, func_5(var_2, Struct_2(var_0.b.x, Struct_1(vec3<u32>(76004u, 6877u, 58806u), vec4<f32>(265f, var_3.b.b.x, var_0.b.x, 851f))))), var_0.a.x));
}

