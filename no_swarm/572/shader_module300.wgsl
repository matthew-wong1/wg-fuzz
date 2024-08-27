struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 1> = array<i32, 1>(0i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    var var_0 = vec4<u32>(firstLeadingBit(global0.b), abs(1u), arg_2, ~arg_2);
    var var_1 = Struct_4((true && any(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, arg_1.x, arg_1.x), arg_1.x))) & true, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2 | 1u, abs(~64891u), 1u), ~(~(~var_0.xzw))), Struct_3(Struct_2(_wgslsmith_add_u32(1u, 1u), ~(arg_0.d >> (1u % 32u)), arg_0, !vec2<bool>(false, arg_0.e), firstTrailingBit(arg_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_3, arg_3, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1519f) - vec2<f32>(-231f, arg_0.a)), vec2<bool>(global0.e, true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-377f, 246f)))), true, var_0.wzy, _wgslsmith_sub_u32(~firstTrailingBit(0u), arg_0.b)), 1u, arg_0);
    let var_2 = any(!select(select(vec2<bool>(true, arg_0.e), var_1.c.a.d, any(vec4<bool>(global0.e, arg_1.x, arg_1.x, global0.e))), var_1.c.a.d, _wgslsmith_f_op_f32(round(-600f)) != _wgslsmith_f_op_f32(f32(-1f) * -210f)));
    var var_3 = !select(vec3<bool>(all(arg_1), !var_1.a, true), select(vec3<bool>(true, true, true), vec3<bool>(false, u_input.a > global1[_wgslsmith_index_u32(1u, 1u)], !arg_1.x), vec3<bool>(all(vec4<bool>(false, false, global0.e, var_2)), all(vec2<bool>(true, true)), true)), true);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b.x - arg_3.x)), _wgslsmith_f_op_f32(1804f - _wgslsmith_f_op_f32(-global0.a)))), false)), 371f, _wgslsmith_f_op_f32(-719f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1476f));
    return _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-654f + _wgslsmith_f_op_f32(floor(arg_0.a)))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = Struct_4(true, firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(58921u, arg_3.d, 341u, 4294967295u), vec4<u32>(17457u, 0u, 18359u, 4294967295u), vec4<u32>(43024u, 4294967295u, 4294967295u, arg_3.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, arg_3.b, global0.c.x, 4294967295u), vec4<u32>(arg_3.d, 1u, arg_2.e, 48285u)))) ^ firstTrailingBit(global0.d), arg_2, ~_wgslsmith_mod_u32(min(arg_3.d, arg_2.e), _wgslsmith_mod_u32(~arg_2.e, 0u)), arg_2.a.c);
    var var_1 = Struct_4(false || !var_0.c.a.c.e, 1u, arg_1, 14622u, arg_2.a.c);
    let var_2 = -12391i;
    global1 = array<i32, 1>();
    var var_3 = Struct_2(11609u, arg_1.a.c.c.x, var_1.c.a.c, arg_1.a.d, _wgslsmith_mod_vec2_u32(arg_3.c, arg_2.a.e));
    return global0.e;
}

fn func_2(arg_0: vec2<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(min(524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(975f * 551f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f))))));
    var var_1 = vec3<f32>(global0.a, global0.a, global0.a);
    var var_2 = Struct_2(~0u, max(~(~global0.c.x), 1u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), var_1.x), _wgslsmith_div_u32(~(~global0.b), _wgslsmith_div_u32(arg_0.x, ~arg_0.x)), vec2<u32>(_wgslsmith_sub_u32(abs(arg_0.x), arg_0.x << (arg_0.x % 32u)), global0.c.x), arg_0.x, func_4(-117f, Struct_3(Struct_2(1u, global0.d, Struct_1(var_1.x, 50047u, arg_0, 4294967295u, true), vec2<bool>(true, false), vec2<u32>(1u, 0u)), _wgslsmith_f_op_vec2_f32(ceil(var_1.xx)), true, vec3<u32>(1u, global0.b, global0.d) | vec3<u32>(9012u, 4294967295u, global0.b), _wgslsmith_add_u32(global0.b, arg_0.x)), Struct_3(Struct_2(42884u, arg_0.x, Struct_1(239f, 4294967295u, vec2<u32>(40043u, arg_0.x), 0u, global0.e), vec2<bool>(global0.e, false), vec2<u32>(arg_0.x, arg_0.x)), var_1.zz, false, _wgslsmith_add_vec3_u32(vec3<u32>(global0.b, 1u, 50355u), vec3<u32>(106734u, global0.d, global0.d)), arg_0.x & global0.b), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(var_1.x, 58077u, global0.c, global0.d, true), vec2<bool>(true, true), global0.d, var_1.zz)), countOneBits(98770u), ~global0.c, 4294967295u, 4294967295u < global0.b))), !(!select(vec2<bool>(false, true), !vec2<bool>(global0.e, global0.e), vec2<bool>(global0.e, global0.e))), arg_0);
    var var_3 = 1u;
    var var_4 = ~(~abs(reverseBits(vec3<u32>(0u, global0.b, 50598u))));
    return vec4<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(39259u, 1u)], -u_input.a), countOneBits(-countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 30030i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.x, 1u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 1u)])))), -(~2147483647i), -(~min(u_input.a, 10875i) & ~global1[_wgslsmith_index_u32(1u >> (global0.d % 32u), 1u)]));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_div_f32(-1959f, global0.a))), 27623u | global0.c.x, global0.c, 13953u, all(select(select(select(arg_2.yy, arg_2.zy, false), select(vec2<bool>(arg_2.x, false), vec2<bool>(arg_2.x, true), false), select(vec2<bool>(global0.e, global0.e), vec2<bool>(true, arg_2.x), arg_2.zy)), vec2<bool>(-1i <= global1[_wgslsmith_index_u32(global0.c.x, 1u)], arg_2.x), select(vec2<bool>(global0.e, arg_2.x), arg_2.zx, true))));
    global0 = Struct_1(-435f, min(1u, _wgslsmith_dot_vec2_u32(global0.c, ~(~global0.c))), ~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(5680u, global0.c.x, global0.d), vec3<u32>(8600u, 28098u, global0.b)), ~_wgslsmith_mult_u32(global0.c.x, global0.b)), ~_wgslsmith_div_u32(global0.c.x, global0.b), any(select(!(!vec2<bool>(arg_2.x, global0.e)), select(select(arg_2.zz, arg_2.xx, true), !arg_2.zy, arg_2.x), vec2<bool>(global0.a == 518f, func_4(-403f, Struct_3(Struct_2(13955u, 0u, Struct_1(global0.a, 13578u, global0.c, global0.c.x, false), arg_2.zy, vec2<u32>(global0.b, global0.c.x)), vec2<f32>(global0.a, global0.a), arg_2.x, vec3<u32>(44190u, global0.d, global0.c.x), 1u), Struct_3(Struct_2(global0.d, 70877u, Struct_1(global0.a, 0u, global0.c, 4294967295u, global0.e), vec2<bool>(true, global0.e), vec2<u32>(global0.d, global0.b)), vec2<f32>(global0.a, global0.a), false, vec3<u32>(0u, global0.b, 4294967295u), 80940u), Struct_1(global0.a, global0.b, global0.c, global0.b, true))))));
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, global0.a), _wgslsmith_f_op_f32(global0.a * global0.a))), 1000f)), 24647u, ~(~vec2<u32>(~22232u, 0u | global0.c.x)), _wgslsmith_div_u32(~(~(1u | global0.c.x)), global0.c.x), ~func_2(global0.c | global0.c).x >= ~(-u_input.a));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_2 {
    global1 = array<i32, 1>();
    global0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), global0.b, vec2<u32>(~global0.d, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 28768u), 4294967295u)), _wgslsmith_clamp_u32(arg_0.c.x ^ ~select(arg_0.b, global0.c.x, arg_0.e), arg_0.d, 6031u), ~(~(~0u)) >= countOneBits(~global0.c.x));
    let var_0 = global0.e;
    var var_1 = vec3<i32>(~(-32029i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(min(~vec2<i32>(0i, 2147483647i), arg_2 >> (global0.c % vec2<u32>(32u))), -func_2(global0.c).yz), -arg_3.xw), ~(~(-14272i)));
    var var_2 = vec4<f32>(-383f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-202f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) * 892f), -1520f);
    return Struct_2(_wgslsmith_div_u32(arg_0.c.x, abs(abs(~arg_0.c.x))), ~_wgslsmith_div_u32(2199u, ~arg_0.c.x) ^ _wgslsmith_mult_u32(abs(firstLeadingBit(30315u)), ~0u | abs(arg_0.d)), func_5(~func_2(max(vec2<u32>(arg_0.b, 47562u), arg_0.c)), ~(~2147483647i), vec3<bool>(any(!vec3<bool>(global0.e, false, global0.e)), true, arg_0.e)), vec2<bool>(var_2.x > 179f, true), min(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.c, ~global0.c, vec2<u32>(arg_0.b, global0.c.x) & global0.c), ~(vec2<u32>(arg_0.c.x, global0.c.x) | arg_0.c)), firstLeadingBit(firstTrailingBit(vec2<u32>(63829u, 4294967295u)))));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<f32> {
    var var_0 = func_6(func_5(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(99994u, 1u)], -1i, 1i), vec4<i32>(u_input.a, 22740i, global1[_wgslsmith_index_u32(global0.b, 1u)], global1[_wgslsmith_index_u32(global0.b, 1u)])), ~vec4<i32>(-8160i, global1[_wgslsmith_index_u32(19120u, 1u)], -51309i, 18543i)) ^ func_2(~global0.c), 65771i, vec3<bool>(true, !(global0.e && global0.e), global0.e)), firstTrailingBit(vec2<i32>(~global1[_wgslsmith_index_u32(func_5(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), 0i, vec3<bool>(false, true, global0.e)).c.x, 1u)], -11765i)), (firstLeadingBit(~vec2<i32>(-1i, global1[_wgslsmith_index_u32(0u, 1u)])) | (abs(vec2<i32>(u_input.a, -2147483647i)) ^ vec2<i32>(1i, 1i))) | vec2<i32>(-2147483647i, ~u_input.a), -min(-vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], 11542i, -30414i, 3446i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], 29267i, 2147483647i) << (vec4<u32>(global0.c.x, arg_0, arg_0, arg_0) % vec4<u32>(32u)), reverseBits(vec4<i32>(50271i, u_input.a, u_input.a, -53019i)))));
    var var_1 = Struct_4(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, 1372f))))), Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(70890u, 4294967295u, 0u), vec3<u32>(72266u, 4294967295u, 1u)), ~4294967295u, var_0.c, !var_0.d, abs(vec2<u32>(63663u, global0.d))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a, var_0.c.a), vec2<f32>(var_0.c.a, global0.a))))), !all(vec4<bool>(false, var_0.d.x, true, false)), ~select(vec3<u32>(arg_0, var_0.b, arg_0), vec3<u32>(arg_0, var_0.c.d, 36525u), false), reverseBits(25200u)), Struct_3(func_6(Struct_1(arg_1, arg_0, var_0.c.c, 1u, var_0.c.e), ~vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2027f, var_0.c.a) - vec2<f32>(-503f, global0.a))), true, countOneBits(~vec3<u32>(4294967295u, global0.d, global0.d)), 4294967295u), var_0.c), 81267u, Struct_3(func_6(Struct_1(_wgslsmith_f_op_f32(477f - -159f), arg_0, _wgslsmith_add_vec2_u32(var_0.c.c, var_0.e), var_0.c.d, func_4(var_0.c.a, Struct_3(Struct_2(54389u, arg_0, var_0.c, var_0.d, vec2<u32>(4294967295u, global0.c.x)), vec2<f32>(-1085f, global0.a), false, vec3<u32>(arg_0, 12431u, arg_0), 41235u), Struct_3(Struct_2(61124u, global0.c.x, var_0.c, vec2<bool>(false, global0.e), vec2<u32>(arg_0, arg_0)), vec2<f32>(arg_1, arg_1), var_0.c.e, vec3<u32>(var_0.c.b, var_0.b, global0.d), 1u), var_0.c)), vec2<i32>(_wgslsmith_sub_i32(14352i, u_input.a), global1[_wgslsmith_index_u32(global0.d, 1u)]), _wgslsmith_add_vec2_i32(vec2<i32>(-64446i, global1[_wgslsmith_index_u32(47624u, 1u)]), vec2<i32>(1i, global1[_wgslsmith_index_u32(34818u, 1u)])) >> (global0.c % vec2<u32>(32u)), -(~vec4<i32>(-10638i, u_input.a, 1i, -1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.a + -763f), _wgslsmith_f_op_f32(max(-1144f, -1164f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(753f, global0.a)) * vec2<f32>(-769f, 433f))), true, ~(~vec3<u32>(global0.c.x, 4294967295u, global0.b)) << (vec3<u32>(func_6(var_0.c, vec2<i32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(arg_0, 1u)]), vec2<i32>(global1[_wgslsmith_index_u32(var_0.e.x, 1u)], u_input.a), vec4<i32>(-1i, -2147483647i, u_input.a, u_input.a)).c.c.x, arg_0, firstLeadingBit(1u)) % vec3<u32>(32u)), 1u), func_5(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(31435i, global1[_wgslsmith_index_u32(0u, 1u)], u_input.a, -18067i), vec4<i32>(u_input.a, 2147483647i, 0i, -323i)) | vec4<i32>(-2147483647i, -37675i, u_input.a, 15376i)), _wgslsmith_div_i32(firstTrailingBit(abs(54271i)), global1[_wgslsmith_index_u32(arg_0, 1u)]), vec3<bool>(global0.e, true, global0.e)).d, Struct_1(global0.a, func_5(func_2(vec2<u32>(global0.c.x, var_0.e.x)), abs(-u_input.a), vec3<bool>(var_0.c.e || true, false, func_6(Struct_1(global0.a, arg_0, var_0.c.c, var_0.c.c.x, global0.e), vec2<i32>(21976i, u_input.a), vec2<i32>(-19694i, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<i32>(29910i, 2147483647i, -27338i, global1[_wgslsmith_index_u32(0u, 1u)])).d.x)).c.x, vec2<u32>(arg_0, var_0.c.b), ~(1u >> (_wgslsmith_mult_u32(0u, 0u) % 32u)), global0.e));
    var_1 = Struct_4(global1[_wgslsmith_index_u32(~1u, 1u)] >= (i32(-1i) * -u_input.a), ~(~(0u | var_0.a)) << ((~1u ^ func_5(vec4<i32>(u_input.a, 4973i, global1[_wgslsmith_index_u32(var_1.c.a.b, 1u)], -1i), 15785i, vec3<bool>(true, true, global0.e)).d) % 32u), Struct_3(func_6(Struct_1(-282f, _wgslsmith_div_u32(arg_0, 66474u), global0.c, var_1.c.a.c.d, !global0.e), _wgslsmith_add_vec2_i32(~vec2<i32>(0i, 1i), vec2<i32>(global1[_wgslsmith_index_u32(var_1.d, 1u)], -21348i)), ~abs(vec2<i32>(global1[_wgslsmith_index_u32(52802u, 1u)], u_input.a)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(9173u, 1u)], u_input.a, global1[_wgslsmith_index_u32(arg_0, 1u)], u_input.a), vec4<i32>(-7962i, 0i, -1i, 2147483647i)), -vec4<i32>(0i, -17316i, -59220i, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1132f) - _wgslsmith_f_op_f32(sign(var_1.e.a)))), arg_0 > max(_wgslsmith_div_u32(var_1.d, 465u), ~14782u), vec3<u32>(arg_0, 6880u, global0.c.x & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_1.e.c.x, global0.b, 34960u), vec4<u32>(4420u, var_0.c.d, 1074u, global0.b))), var_0.b), _wgslsmith_div_u32(arg_0, 1u), Struct_1(func_5(_wgslsmith_mult_vec4_i32(-vec4<i32>(-16711i, 0i, 6982i, 2147483647i), -vec4<i32>(global1[_wgslsmith_index_u32(var_1.e.d, 1u)], u_input.a, 1i, 59995i)), _wgslsmith_div_i32(~global1[_wgslsmith_index_u32(arg_0, 1u)], -21857i), vec3<bool>(select(global0.e, var_0.d.x, false), all(vec3<bool>(true, var_1.c.c, var_0.c.e)), false)).a, 1u, select((vec2<u32>(arg_0, var_0.b) | var_1.e.c) & vec2<u32>(arg_0, arg_0), var_0.c.c, select(vec2<bool>(true, true), !vec2<bool>(global0.e, var_0.c.e), var_0.c.e)), var_1.c.a.b, var_0.c.e));
    var var_2 = _wgslsmith_dot_vec2_i32(-(~(~vec2<i32>(u_input.a, -31911i))), _wgslsmith_sub_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global0.d, 1u)], 551i, global1[_wgslsmith_index_u32(var_0.a, 1u)], -2147483647i), vec4<i32>(0i, 0i, 20840i, -64613i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 1u)], u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, global1[_wgslsmith_index_u32(1u, 1u)]))), vec2<i32>(u_input.a, _wgslsmith_mult_i32(-41439i, 1i))));
    let var_3 = var_1.c.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-515f, 1296f, -277f), vec3<f32>(global0.a, 1176f, -365f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1026f, var_1.c.a.c.a, arg_1))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_1.c.b.x, var_3.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(278f, arg_1, var_1.c.a.c.a) * vec3<f32>(725f, 1000f, var_1.e.a)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, var_0.c.a, 1230f), vec3<f32>(arg_1, 390f, 1438f))), all(vec4<bool>(global0.e, false, false, false)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + 327f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-949f)))), var_3.x)));
}

fn func_7(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_3(func_6(func_6(Struct_1(1000f, global0.b, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.d, 1140u), vec2<u32>(global0.c.x, 0u)), 24296u, true), -vec2<i32>(global1[_wgslsmith_index_u32(global0.b, 1u)], u_input.a), _wgslsmith_mod_vec2_i32(-vec2<i32>(-22452i, global1[_wgslsmith_index_u32(global0.c.x, 1u)]), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(global0.c.x, 1u)]) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, -80042i), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(global0.d, 1u)], -33635i, -51216i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 1u)], u_input.a, 2147483647i, global1[_wgslsmith_index_u32(global0.d, 1u)]))).c, ~vec2<i32>(~u_input.a, -20890i), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(29974i, global1[_wgslsmith_index_u32(26915u, 1u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(-32791i, 0i), vec2<i32>(5268i, 63325i))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2147483647i), ~vec2<i32>(global1[_wgslsmith_index_u32(global0.d, 1u)], 2147483647i))), ~vec4<i32>(-22442i, _wgslsmith_dot_vec4_i32(vec4<i32>(-42335i, 0i, global1[_wgslsmith_index_u32(44257u, 1u)], 40142i), vec4<i32>(u_input.a, -12280i, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(18294u, 1u)])), _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(15413u, 1u)], -17048i, 33321i, 29978i), vec4<i32>(global1[_wgslsmith_index_u32(global0.c.x, 1u)], 53703i, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)])), -global1[_wgslsmith_index_u32(global0.c.x, 1u)])), arg_3, arg_1, vec3<u32>(func_6(func_6(func_6(Struct_1(arg_3.x, 0u, global0.c, global0.b, global0.e), vec2<i32>(global1[_wgslsmith_index_u32(global0.b, 1u)], 0i), vec2<i32>(u_input.a, 1i), vec4<i32>(14774i, global1[_wgslsmith_index_u32(0u, 1u)], -9584i, u_input.a)).c, vec2<i32>(u_input.a, u_input.a), vec2<i32>(2466i, global1[_wgslsmith_index_u32(1u, 1u)]), ~vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)).c, vec2<i32>(global1[_wgslsmith_index_u32(global0.d >> (global0.d % 32u), 1u)], u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(global0.c.x, 1u)], u_input.a) & firstLeadingBit(vec2<i32>(-7428i, global1[_wgslsmith_index_u32(41548u, 1u)])), _wgslsmith_mod_vec4_i32(~vec4<i32>(-2215i, u_input.a, 695i, global1[_wgslsmith_index_u32(global0.b, 1u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(global0.d, 1u)], 1i, -2147483647i))).c.b, func_5(~(vec4<i32>(-1i, u_input.a, 10385i, 28250i) ^ vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i)), global1[_wgslsmith_index_u32(select(global0.b, 1u, arg_1) & _wgslsmith_sub_u32(global0.d, 12036u), 1u)], !select(vec3<bool>(global0.e, false, arg_1), vec3<bool>(global0.e, global0.e, true), vec3<bool>(false, false, true))).d, ~(~(~global0.c.x))), abs(_wgslsmith_add_u32(47754u << (global0.c.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.b, global0.d, 92359u), vec4<u32>(global0.d, global0.d, 0u, global0.c.x))) | 2412u));
    var var_1 = _wgslsmith_clamp_vec3_i32(-(vec3<i32>(-2147483647i, 1i, 0i & global1[_wgslsmith_index_u32(var_0.e, 1u)]) | vec3<i32>(min(-3658i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<i32>(39668i, global1[_wgslsmith_index_u32(global0.b, 1u)])), u_input.a)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(22344i, u_input.a, global1[_wgslsmith_index_u32(1u, 1u)])), max(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(0i, -12065i, global1[_wgslsmith_index_u32(var_0.e, 1u)])), vec3<i32>(u_input.a, 32170i, -2147483647i)) >> (vec3<u32>(global0.c.x, var_0.d.x & 1u, ~36816u) % vec3<u32>(32u)), firstTrailingBit(~abs(vec3<i32>(u_input.a, -27209i, -1i)))), ~(vec3<i32>(u_input.a, u_input.a, ~4075i) & min(~vec3<i32>(global1[_wgslsmith_index_u32(32211u, 1u)], -52250i, 1i), ~vec3<i32>(15867i, global1[_wgslsmith_index_u32(var_0.a.a, 1u)], 35986i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(arg_2));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1000f)))), var_2.x)), 0u, ~_wgslsmith_clamp_vec2_u32(var_0.d.xz << (func_6(var_0.a.c, var_1.zx, vec2<i32>(global1[_wgslsmith_index_u32(59873u, 1u)], -39272i), vec4<i32>(global1[_wgslsmith_index_u32(32112u, 1u)], var_1.x, global1[_wgslsmith_index_u32(global0.c.x, 1u)], var_1.x)).c.c % vec2<u32>(32u)), vec2<u32>(abs(global0.b), ~global0.b), firstLeadingBit(min(var_0.d.xx, var_0.a.c.c))), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(69172u, 0u, 4294967295u, global0.c.x)) << (vec4<u32>(global0.b, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)), ~(~vec4<u32>(30113u, 88309u, 21915u, 74954u))), false);
    var var_4 = arg_3.x;
    return var_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~28044u, _wgslsmith_dot_vec4_u32(vec4<u32>(min(1u, abs(55713u)), abs(0u >> (0u % 32u)), global0.b, 82749u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(global0.c.x, 39703u, global0.d, 5361u)), ~vec4<u32>(47370u, global0.d, global0.d, global0.b)), ~(vec4<u32>(global0.c.x, 0u, 32313u, global0.c.x) & vec4<u32>(global0.b, global0.c.x, 0u, 58470u)))), func_7(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, 948f, global0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a) * vec3<f32>(-217f, 1268f, global0.a))))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(4294967295u, 947f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-264f, global0.a, 583f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(112f, -2713f, global0.a))))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(global0.a - -791f))), vec2<bool>(global0.e, global0.e), _wgslsmith_mult_vec2_u32(min(global0.c, global0.c), global0.c));
    let var_1 = firstLeadingBit(4294967295u);
    global0 = func_7(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1292f + 639f)), var_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * func_7(vec3<f32>(global0.a, global0.a, 814f), false, vec3<f32>(534f, 2131f, -1459f), vec2<f32>(-1000f, 1137f)).a))), true, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1096f), 833f, -151f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.a, 148f, -244f), vec3<f32>(338f, var_0.c.a, var_0.c.a))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a, var_0.c.a) + vec2<f32>(559f, 1019f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2586f, global0.a))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.a + var_0.c.a), -1513f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a, -772f)))))));
    global0 = var_0.c;
    var_0 = func_6(func_6(Struct_1(_wgslsmith_div_f32(global0.a, var_0.c.a), 1u, func_6(var_0.c, select(vec2<i32>(global1[_wgslsmith_index_u32(4021u, 1u)], 2147483647i), vec2<i32>(17649i, 2147483647i), var_0.d), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(6782u, 1u) % vec2<u32>(32u)), select(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(global0.c.x, 1u)], 0i, 2147483647i), vec4<i32>(24766i, global1[_wgslsmith_index_u32(global0.b, 1u)], 0i, 2147483647i), vec4<bool>(global0.e, false, global0.e, true))).e, abs(4294967295u), !(!var_0.c.e)), abs(vec2<i32>(u_input.a, 1i)), vec2<i32>(i32(-1i) * -210i, min(u_input.a, u_input.a)), vec4<i32>(u_input.a, -2147483647i, ~58319i, 1i ^ _wgslsmith_add_i32(u_input.a, 31174i))).c, _wgslsmith_mod_vec2_i32(-(~(-vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], u_input.a))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, 1i), u_input.a), firstTrailingBit(-vec2<i32>(1i, global1[_wgslsmith_index_u32(38748u, 1u)])))), vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(46746u, 1u)], 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(83071u, 1u)], u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(36266u, 1u)], 24452i), vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 1u)], u_input.a))), -(~vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(var_0.e.x, 1u)])))), select(-(firstTrailingBit(vec4<i32>(-1i, u_input.a, u_input.a, 414i)) << (~vec4<u32>(4294967295u, var_0.b, 1u, global0.d) % vec4<u32>(32u))), ~vec4<i32>(~u_input.a, 31819i | global1[_wgslsmith_index_u32(6441u, 1u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 23593i), u_input.a), !select(select(vec4<bool>(global0.e, global0.e, var_0.d.x, global0.e), vec4<bool>(true, true, true, false), vec4<bool>(global0.e, var_0.c.e, var_0.c.e, false)), !vec4<bool>(false, false, false, global0.e), !var_0.c.e)));
    let var_2 = Struct_3(Struct_2(~_wgslsmith_dot_vec2_u32(~vec2<u32>(2655u, var_0.a), var_0.e), abs(~4294967295u), var_0.c, vec2<bool>(all(!vec4<bool>(false, false, false, var_0.d.x)), var_0.d.x | true), global0.c), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(531f, _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(121f - 555f)))), var_0.d.x, max(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, var_1), vec3<u32>(24842u, 4294967295u, var_1)), vec3<u32>(0u, var_1, 0u), ~vec3<u32>(var_1, 25958u, 78314u)), abs(vec3<u32>(var_0.b, var_1, var_0.a))), vec3<u32>(~max(1u, global0.b), func_6(func_7(vec3<f32>(global0.a, -2401f, 603f), true, vec3<f32>(686f, -1745f, -1000f), vec2<f32>(global0.a, -1084f)), vec2<i32>(-21485i, -41395i), vec2<i32>(-61347i, -26762i), _wgslsmith_mult_vec4_i32(vec4<i32>(18604i, u_input.a, 31348i, 0i), vec4<i32>(3207i, -75632i, -2147483647i, 60988i))).e.x, _wgslsmith_sub_u32(var_0.b ^ 4294967295u, _wgslsmith_sub_u32(global0.c.x, var_1)))), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.c.a + var_0.c.a), _wgslsmith_div_vec3_i32(-select(vec3<i32>(global1[_wgslsmith_index_u32(global0.c.x, 1u)], -2147483647i, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(var_2.d.x, 1u)], global1[_wgslsmith_index_u32(var_2.a.b, 1u)], 34384i), true) & vec3<i32>(_wgslsmith_add_i32(-2147483647i, 0i), 2147483647i, global1[_wgslsmith_index_u32(global0.c.x, 1u)]), -vec3<i32>(-2147483647i, 0i, global1[_wgslsmith_index_u32(var_2.e, 1u)] | -2147483647i)), var_2.a.e.x, countOneBits(vec4<u32>(_wgslsmith_mult_u32(var_2.e, var_1), _wgslsmith_add_u32(0u, 14024u), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_2.a.c.c, vec2<u32>(global0.d, 32915u))), func_5(func_2(global0.c), 1i, vec3<bool>(true, false, global0.e)).d)));
}

