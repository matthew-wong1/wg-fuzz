struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: array<Struct_3, 24>;

var<private> global3: f32 = 1662f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_4(Struct_2(vec3<bool>(true, !any(vec3<bool>(false, false, false)), true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1000f, global0.x)), -select(vec2<i32>(14379i, -2147483647i), vec2<i32>(26461i, -10091i), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), -(~vec2<i32>(2147483647i, 0i)), ~vec2<i32>(1i, 1i)), u_input.a, ~(~vec4<u32>(77904u, 0u, 1u, 12621u))), ~1i >> (~((45064u | u_input.b) | ~u_input.a) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1699f) + vec2<f32>(-1485f, 385f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(323f, global0.x))), vec2<f32>(global0.x, 2088f))))), Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -560f, -142f, -1363f) + vec4<f32>(global0.x, 921f, 1688f, 635f)) - vec4<f32>(365f, global0.x, -1035f, global0.x)), vec2<i32>(1i, 1i), vec3<bool>(true, true, true), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(5171i, 7387i), vec2<i32>(-50164i, -1i))), vec2<i32>(_wgslsmith_mod_i32(-6583i, -2147483647i), firstTrailingBit(21674i))), _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(~vec4<u32>(56310u, u_input.a, u_input.a, 37438u), countOneBits(vec4<u32>(u_input.b, u_input.b, 50013u, 27727u))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 54895u), vec3<u32>(u_input.b, 1u, u_input.b)), _wgslsmith_add_u32(3262u, 97559u), _wgslsmith_add_u32(u_input.a, u_input.a), u_input.b) % vec4<u32>(32u))), -427f);
    let var_1 = 13653u;
    let var_2 = _wgslsmith_f_op_f32(floor(var_0.d.b.a.x));
    let var_3 = select(select(vec2<bool>(var_0.a.a.x, any(var_0.d.a)), vec2<bool>(any(select(vec2<bool>(false, var_0.d.a.x), vec2<bool>(true, var_0.a.a.x), vec2<bool>(true, false))), true | (false & var_0.a.b.c.x)), true), select(global1[_wgslsmith_index_u32(u_input.a, 19u)], var_0.d.b.c.zz, vec2<bool>(false, true | all(vec2<bool>(var_0.a.a.x, var_0.a.b.c.x)))), vec2<bool>(true || (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -23610i), vec3<i32>(var_0.a.b.b.x, var_0.a.b.d.x, -16953i)) == _wgslsmith_mult_i32(var_0.a.b.b.x, var_0.d.b.d.x)), var_0.d.a.x));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(420f + _wgslsmith_f_op_f32(-var_0.c.x)), 12608u, var_0.d, 0i << (u_input.a % 32u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 436f, 1699f, global0.x) * var_0.d.b.a) + vec4<f32>(393f, 1487f, var_0.d.b.a.x, var_2))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(591f * var_4.c.b.a.x), _wgslsmith_f_op_f32(674f * -253f), var_3.x)) - -1448f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + var_2) + 338f), _wgslsmith_f_op_f32(max(global0.x, 302f)), _wgslsmith_f_op_f32(abs(961f))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    var var_0 = select(-2956i, -2147483647i, true);
    let var_1 = Struct_4(arg_2.c, _wgslsmith_sub_i32(arg_1.e.x, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.b.x, arg_1.d.x, 2147483647i), abs(vec3<i32>(-1i, 19586i, -67878i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.a.xx, _wgslsmith_f_op_vec2_f32(-arg_2.c.b.a.xw)))), Struct_2(vec3<bool>(false, !all(arg_1.c.xx), !all(vec3<bool>(true, arg_1.c.x, false))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -498f, -252f, global0.x))), vec2<i32>(min(-13952i, arg_2.c.b.b.x), arg_1.b.x), arg_1.c, vec2<i32>(arg_1.d.x & arg_1.d.x, -arg_1.e.x), arg_1.d), ~36709u, abs(_wgslsmith_mult_vec4_u32(arg_2.c.d, min(vec4<u32>(41374u, 4294967295u, u_input.a, 0u), arg_2.c.d)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3()).x, 269f, false)));
    var_0 = abs(6543i);
    let var_2 = Struct_3(var_1.a.b.a.x, 22948u, arg_2.c, arg_1.e.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, 927f, arg_2.e.x, global0.x)))))));
    global2 = array<Struct_3, 24>();
    return 1i;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> vec3<f32> {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -154f)), vec2<f32>(1000f, -732f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 194f)), vec2<f32>(global0.x, global0.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * global0.x))), _wgslsmith_f_op_f32(-537f * 1468f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, 2318f, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(472f, global0.x, global0.x, -814f) - vec4<f32>(global0.x, global0.x, -1749f, -205f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), vec4<f32>(315f, 1474f, -1151f, global0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, 521f, 237f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 849f, global0.x, -1517f) * vec4<f32>(global0.x, global0.x, -437f, 1247f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(225f, global0.x, -561f, global0.x), vec4<f32>(1600f, -537f, global0.x, 1121f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -254f, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-380f, global0.x, global0.x, -1258f) + vec4<f32>(global0.x, global0.x, -130f, 269f))))));
    var var_1 = global0.x;
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(341f, global0.x, -892f, _wgslsmith_div_f32(563f, global0.x))))));
    let var_2 = Struct_3(-1326f, 0u, Struct_2(vec3<bool>(all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-var_0.x) > -2221f, all(vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1190f, 836f, global0.x) * vec4<f32>(var_0.x, global0.x, 1247f, var_0.x))), arg_1.zx, select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), vec2<i32>(_wgslsmith_sub_i32(-28297i, 26391i), i32(-1i) * -1i), vec2<i32>(-31686i, i32(-1i) * -2147483647i)), u_input.a, _wgslsmith_div_vec4_u32(select(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a)), vec4<u32>(1u, 24064u, 7909u, 4294967295u), vec4<bool>(false, true, true, true)), vec4<u32>(abs(4294967295u), _wgslsmith_clamp_u32(u_input.b, u_input.a, 7651u), _wgslsmith_add_u32(u_input.b, 8425u), ~u_input.b))), func_4(_wgslsmith_f_op_f32(step(-467f, _wgslsmith_f_op_f32(f32(-1f) * -374f))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1427f, global0.x, var_0.x), vec4<f32>(var_0.x, 704f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -550f, -375f, global0.x) + vec4<f32>(494f, var_0.x, var_0.x, 165f))), arg_1.zx >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4963u), vec2<u32>(15342u, u_input.a)) % vec2<u32>(32u)), vec3<bool>(true, true, true), arg_1.yx, vec2<i32>(i32(-1i) * -2147483647i, arg_1.x)), Struct_3(-524f, firstLeadingBit(4294967295u), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-147f, -1000f, 1000f, -251f), vec2<i32>(arg_2, 1i), vec3<bool>(false, false, false), vec2<i32>(-6331i, arg_2), arg_1.wy), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(u_input.b, u_input.a, 0u)), ~vec4<u32>(u_input.a, 4294967295u, 39266u, u_input.a)), -46690i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, global0.x, 323f) * vec4<f32>(var_0.x, var_0.x, global0.x, var_0.x))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1361f)))))), 674f, 282f));
    return var_2.c.b.a.xxz;
}

fn func_2(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = Struct_1(arg_0.a.b.a, abs(arg_0.a.b.e), arg_0.a.b.c, vec2<i32>(-arg_0.d.b.e.x, ~arg_0.b), (~vec2<i32>(-74081i, arg_0.a.b.d.x) | -reverseBits(vec2<i32>(arg_0.d.b.e.x, arg_0.b))) & arg_0.d.b.e);
    global1 = array<vec2<bool>, 19>();
    var var_1 = reverseBits(_wgslsmith_dot_vec3_u32(~(~arg_0.a.d.www | arg_0.a.d.yxx), arg_0.a.d.xzy));
    let var_2 = arg_0;
    let var_3 = firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -countOneBits(vec4<i32>(0i, 10338i, 1i, 2147483647i)), firstTrailingBit(vec4<i32>(var_2.a.b.b.x, -3036i, 0i, -1i | var_2.a.b.e.x))));
    return _wgslsmith_f_op_vec3_f32(func_5(func_4(var_0.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), vec2<i32>(firstLeadingBit(1i), -45424i), vec3<bool>(true, true, false), (var_0.d >> (vec2<u32>(1u, var_2.d.c) % vec2<u32>(32u))) & ~arg_0.a.b.d, _wgslsmith_mult_vec2_i32(-vec2<i32>(-25342i, var_3.x), abs(var_3.yz))), global2[_wgslsmith_index_u32(countOneBits(min(1u, 22754u) | _wgslsmith_dot_vec4_u32(vec4<u32>(46601u, var_2.d.c, arg_0.d.d.x, 18700u), vec4<u32>(60732u, var_2.d.c, u_input.a, 1u))), 24u)]), reverseBits(vec4<i32>(1i, _wgslsmith_mult_i32(2147483647i, 1i), ~(-2147483647i), 2147483647i)) >> (arg_0.a.d % vec4<u32>(32u)), -27994i));
}

fn func_6(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), Struct_1(vec4<f32>(global0.x, global0.x, 995f, _wgslsmith_f_op_vec3_f32(func_2(Struct_4(Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<f32>(arg_0.x, 986f, global0.x, global0.x), vec2<i32>(0i, -1i), vec3<bool>(true, false, true), vec2<i32>(-26071i, -8411i), vec2<i32>(2147483647i, 22683i)), 22747u, vec4<u32>(arg_1, u_input.b, 36622u, 4294967295u)), -1i, vec2<f32>(685f, global0.x), Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<f32>(arg_0.x, -561f, global0.x, -619f), vec2<i32>(1i, 5734i), vec3<bool>(true, true, false), vec2<i32>(5601i, 14304i), vec2<i32>(1i, 1i)), 3192u, vec4<u32>(arg_1, 11567u, 0u, 4294967295u)), -354f))).x), max(~vec2<i32>(24226i, -2147483647i), ~vec2<i32>(-1i, 43751i)), vec3<bool>(true, select(false, false, true), u_input.b > 27708u), -(~vec2<i32>(-1i, -1i)), select(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, -8070i), 0u < arg_1)), ~(~4294967295u) ^ _wgslsmith_clamp_u32(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 20624u, u_input.b), vec3<u32>(u_input.b, u_input.a, 1u)), _wgslsmith_sub_u32(8897u, 0u)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(32431u, arg_1, u_input.b, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(arg_1, 21270u, 37751u, 1u) % vec4<u32>(32u)))), max(~18248i, _wgslsmith_sub_i32(abs(_wgslsmith_div_i32(72915i, -2147483647i)), 10192i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.zz, _wgslsmith_f_op_vec2_f32(arg_0.xz - arg_0.yy))) + vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), global0.x))), Struct_2(vec3<bool>(false, true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), Struct_1(vec4<f32>(global0.x, -921f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-global0.x)), vec2<i32>(2147483647i >> (u_input.b % 32u), 1i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), u_input.b >= arg_1), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, 1i)), -vec2<i32>(1i, 13664i)), arg_1, max(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.b, arg_1, 2431u), vec4<u32>(arg_1, arg_1, arg_1, 45854u)), countOneBits(~vec4<u32>(51213u, u_input.b, u_input.b, 32431u)))), global0.x);
    var var_1 = -57422i;
    var var_2 = min(vec3<i32>(_wgslsmith_sub_i32(-68276i, var_0.a.b.d.x) | -12865i, var_0.d.b.b.x, _wgslsmith_mult_i32(i32(-1i) * -1i, var_0.a.b.e.x << (1u % 32u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, var_0.b, 21143i), abs(vec3<i32>(var_0.a.b.d.x, 18270i, 0i))), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(var_0.b, var_0.b, 10038i)), countOneBits(vec3<i32>(var_0.d.b.d.x, var_0.b, 1i))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-2397i, -2147483647i, var_0.b), vec3<i32>(0i, var_0.b, var_0.a.b.b.x)))) ^ vec3<i32>(~var_0.b & var_0.a.b.e.x, var_0.d.b.b.x, 2147483647i);
    let var_3 = Struct_5(var_0.a.b, global2[_wgslsmith_index_u32(countOneBits(8420u), 24u)], global2[_wgslsmith_index_u32(~0u, 24u)]);
    var var_4 = abs(19525i);
    return Struct_1(var_0.d.b.a, var_0.a.b.e, select(vec3<bool>(!(var_2.x == var_0.d.b.b.x), (var_2.x != var_0.a.b.e.x) & !var_0.a.a.x, 1u > ~var_3.c.b), vec3<bool>(var_3.a.c.x, true, !var_0.d.a.x), !var_3.c.c.b.c.x), max(vec2<i32>(~var_2.x | -2147483647i, reverseBits(var_3.c.c.b.e.x & var_3.a.d.x)), var_0.a.b.b), var_3.b.c.b.b);
}

fn func_7(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    global1 = array<vec2<bool>, 19>();
    var var_0 = Struct_5(func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(978f, arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_vec3_f32(-arg_1.a.wxy))), arg_1.a.wyx), 69784u), Struct_3(186f, u_input.a, Struct_2(!arg_1.c, Struct_1(arg_1.a, abs(arg_1.e), arg_1.c, firstTrailingBit(arg_1.d), arg_1.b), u_input.b, reverseBits(vec4<u32>(u_input.b, 26595u, 6630u, u_input.b))), ~(-abs(arg_1.b.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.a)))), Struct_3(arg_1.a.x, ~(_wgslsmith_mult_u32(u_input.b, 4294967295u) | 1u), Struct_2(arg_1.c, func_6(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(Struct_2(arg_1.c, Struct_1(vec4<f32>(global0.x, global0.x, -1451f, 1234f), arg_1.d, vec3<bool>(true, false, true), arg_1.d, arg_1.d), u_input.a, vec4<u32>(4294967295u, 67354u, u_input.b, u_input.a)), -1i, arg_1.a.zz, Struct_2(arg_1.c, arg_1, 19893u, vec4<u32>(8675u, u_input.a, 13008u, u_input.a)), arg_1.a.x))), ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 18469u, 1u), vec4<u32>(73903u, 32236u, 4294967295u, 3296u) & vec4<u32>(u_input.a, u_input.b, 39035u, u_input.a)), ~(vec4<u32>(u_input.a, u_input.a, u_input.b, 5582u) | vec4<u32>(u_input.b, 0u, 37282u, 6838u))), _wgslsmith_dot_vec4_i32(select(firstLeadingBit(vec4<i32>(arg_1.b.x, arg_1.b.x, -1i, -16097i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, arg_1.b.x, arg_1.b.x), vec4<i32>(arg_1.d.x, -1i, arg_1.b.x, -3655i)), vec4<bool>(arg_0, arg_1.c.x, false, arg_1.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, arg_1.b.x, arg_1.e.x) >> (vec4<u32>(u_input.b, 5833u, 1u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(1i, 24593i, arg_1.b.x, -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(925f - arg_1.a.x) * _wgslsmith_f_op_f32(-arg_1.a.x)), -493f)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1223f);
    var var_1 = var_0.b.c.d.wz;
    var var_2 = arg_1.b.x;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * func_6(arg_1.a.yww, 1u).a.x) * _wgslsmith_f_op_f32(-arg_1.a.x)), 1u, var_0.c.c, -47166i, var_0.b.e);
}

fn func_8(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_add_u32(0u >> (_wgslsmith_dot_vec2_u32(arg_2.c.d.yy, ~(~vec2<u32>(arg_2.b, arg_2.b))) % 32u), abs(max(~(~u_input.b), u_input.b)));
    global0 = vec2<f32>(-328f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, 440f)));
    let var_1 = arg_2.c;
    let var_2 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(var_1.b.b.x | var_1.b.e.x, vec4<i32>(var_1.b.e.x, -29339i, arg_2.c.b.b.x, var_1.b.d.x), arg_2.d)))), ~arg_2.b).a.wyx;
    var var_3 = select(vec4<bool>(arg_2.c.b.c.x || !all(vec3<bool>(true, false, arg_2.c.b.c.x)), true, true, true), vec4<bool>(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, 1000f, global0.x)), 1u).c.x, arg_3, func_6(var_2, 1u).c.x, var_1.a.x), select(select(vec4<bool>(true, arg_2.c.b.c.x && true, true, arg_2.c.b.b.x < var_1.b.e.x), select(vec4<bool>(var_1.b.c.x, false, false, arg_3), select(vec4<bool>(arg_3, true, false, false), vec4<bool>(false, true, false, arg_2.c.b.c.x), vec4<bool>(false, arg_2.c.b.c.x, arg_2.c.a.x, true)), !vec4<bool>(arg_2.c.a.x, true, arg_2.c.b.c.x, arg_3)), select(select(vec4<bool>(arg_2.c.b.c.x, var_1.b.c.x, false, var_1.b.c.x), vec4<bool>(arg_2.c.a.x, true, false, arg_3), false), select(vec4<bool>(var_1.a.x, arg_3, arg_3, false), vec4<bool>(arg_2.c.b.c.x, arg_2.c.b.c.x, arg_3, true), arg_3), arg_3)), !vec4<bool>(false, false, !arg_2.c.b.c.x, false), !select(select(vec4<bool>(false, false, arg_2.c.a.x, arg_2.c.b.c.x), vec4<bool>(false, var_1.b.c.x, true, true), var_1.b.c.x), select(vec4<bool>(var_1.b.c.x, true, arg_3, var_1.b.c.x), vec4<bool>(false, true, arg_3, arg_3), vec4<bool>(false, arg_3, true, false)), arg_3 & var_1.b.c.x)));
    return vec3<bool>(any(func_7(var_3.x, func_7(false && var_1.b.c.x, arg_2.c.b).c.b).c.a), false, true);
}

fn func_1(arg_0: Struct_5, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(arg_0.b.d, 5313i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.d.x, arg_0.c.d, 7438i) ^ vec3<i32>(-1i, -62721i, 17154i), ~vec3<i32>(82117i, -1i, arg_0.c.d)))), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_0.b.c.b.d.x, arg_0.c.c.b.b.x) & vec3<i32>(arg_0.b.c.b.e.x, -1i, arg_0.b.c.b.e.x), vec3<i32>(0i, 2147483647i, -1827i)) & -vec3<i32>(arg_0.c.c.b.e.x, arg_0.c.c.b.d.x, arg_0.c.d)));
    var var_1 = u_input.a;
    let var_2 = !(!((all(global1[_wgslsmith_index_u32(arg_1.x, 19u)]) == true) | (any(arg_0.a.c) && true)));
    var var_3 = Struct_2(func_8(vec2<f32>(668f, global0.x), u_input.a, func_7(true, func_6(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(Struct_2(vec3<bool>(true, true, var_2), Struct_1(arg_0.a.a, arg_0.a.d, arg_0.c.c.a, vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -1i)), 7784u, vec4<u32>(0u, 28392u, u_input.b, 1u)), arg_0.a.e.x, arg_0.b.c.b.a.yx, Struct_2(vec3<bool>(arg_0.b.c.b.c.x, var_2, arg_0.a.c.x), arg_0.b.c.b, arg_1.x, vec4<u32>(74510u, u_input.b, 4294967295u, u_input.a)), -1000f))), 1u)), u_input.a <= arg_0.c.c.d.x), Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.b.e + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.c.c.b.a)))), arg_0.a.e, func_7(all(!vec3<bool>(var_2, false, var_2)), arg_0.c.c.b).c.a, func_7(!func_8(vec2<f32>(-426f, global0.x), arg_1.x, Struct_3(2317f, arg_0.b.b, Struct_2(arg_0.a.c, Struct_1(vec4<f32>(1040f, 858f, -753f, 576f), vec2<i32>(var_0.x, -1i), vec3<bool>(arg_0.a.c.x, true, true), var_0.xz, vec2<i32>(1i, 1i)), 30615u, vec4<u32>(0u, u_input.b, u_input.a, 9933u)), 2147483647i, vec4<f32>(367f, -309f, 1123f, -233f)), arg_0.b.c.b.c.x).x, Struct_1(arg_0.b.e, var_0.zx & var_0.yx, !arg_0.c.c.b.c, var_0.zz ^ vec2<i32>(arg_0.a.b.x, arg_0.b.d), vec2<i32>(40412i, var_0.x))).c.b.b, var_0.yx), abs(_wgslsmith_add_u32(~0u, select(arg_1.x, arg_1.x >> (14270u % 32u), true))), arg_0.b.c.d);
    let var_4 = true;
    return _wgslsmith_div_vec2_i32(max(-vec2<i32>(27421i, var_0.x), ~var_0.yz) & -(vec2<i32>(-1i) * -var_0.zz), var_3.b.e & var_3.b.b);
}

fn func_9(arg_0: Struct_4, arg_1: Struct_5) -> Struct_3 {
    var var_0 = arg_0.a.c;
    var var_1 = Struct_5(func_6(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.b.a.x, global0.x, -193f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, arg_1.b.a, -1576f)))), 0u), Struct_3(1f, reverseBits(~(arg_0.a.d.x | 57769u)), func_7(true, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1217f, 743f, global0.x, -457f))), vec2<i32>(arg_1.b.c.b.b.x, -5770i), select(vec3<bool>(true, false, arg_1.a.c.x), arg_0.a.a, arg_1.b.c.a.x), arg_0.d.b.e, vec2<i32>(arg_0.d.b.b.x, -2147483647i) | arg_1.b.c.b.e)).c, abs(countOneBits(arg_0.d.b.b.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(744f)), func_7(all(vec3<bool>(arg_0.d.b.c.x, false, arg_0.a.a.x)), func_7(arg_1.c.c.b.c.x, arg_1.c.c.b).c.b).c.b.a.x, arg_0.c.x, -154f)), global2[_wgslsmith_index_u32(1u, 24u)]);
    return Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_5(-min(arg_0.d.b.d.x, var_1.c.c.b.b.x), -countOneBits(vec4<i32>(-15784i, arg_0.a.b.e.x, arg_0.a.b.e.x, arg_1.a.b.x)), -(arg_1.c.c.b.d.x >> (arg_0.a.d.x % 32u)))).x)), arg_1.c.b, Struct_2(func_7(select(func_6(vec3<f32>(1346f, global0.x, arg_1.c.a), 58352u).c.x, true, true), func_7(!var_1.a.c.x, func_6(arg_1.a.a.zwx, 1u)).c.b).c.a, func_6(vec3<f32>(_wgslsmith_div_f32(global0.x, -1319f), arg_0.a.b.a.x, -252f), 7414u), arg_1.b.b, vec4<u32>(abs(arg_0.a.c), var_1.b.c.c, _wgslsmith_dot_vec2_u32(var_1.b.c.d.yy, vec2<u32>(arg_0.a.d.x, arg_1.b.b)), ~51115u) | arg_0.a.d), _wgslsmith_add_i32(abs(arg_1.b.c.b.d.x ^ arg_1.a.b.x) << (_wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(0u, u_input.a)) % 32u), _wgslsmith_dot_vec4_i32(min(~vec4<i32>(-2147483647i, arg_1.c.c.b.e.x, arg_0.d.b.d.x, var_1.c.c.b.e.x), countOneBits(vec4<i32>(1i, arg_1.b.c.b.d.x, arg_0.d.b.b.x, arg_1.c.c.b.b.x))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(4301i, 11870i, 2147483647i, -1i), vec4<i32>(arg_0.b, arg_1.b.c.b.b.x, -1i, arg_0.b)), _wgslsmith_mult_i32(arg_1.b.c.b.b.x, 0i), ~arg_1.a.b.x, func_7(false, Struct_1(vec4<f32>(arg_1.b.c.b.a.x, 258f, var_1.c.a, 1000f), vec2<i32>(arg_0.d.b.e.x, -1i), arg_1.b.c.b.c, vec2<i32>(1i, arg_1.a.d.x), arg_1.b.c.b.e)).d))), _wgslsmith_div_vec4_f32(arg_0.d.b.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(904f - var_1.a.a.x), _wgslsmith_f_op_f32(global0.x * arg_0.a.b.a.x), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -413f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var_0 = 1450f;
    let var_1 = func_9(Struct_4(Struct_2(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), Struct_1(vec4<f32>(949f, global0.x, global0.x, 1466f), vec2<i32>(31378i, 139i), vec3<bool>(true, false, false), func_1(Struct_5(Struct_1(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec2<i32>(46614i, -29047i), vec3<bool>(false, false, true), vec2<i32>(-22033i, 0i), vec2<i32>(-1i, -51802i)), Struct_3(759f, u_input.a, Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec2<i32>(-1i, 0i), vec3<bool>(true, false, true), vec2<i32>(17236i, 2147483647i), vec2<i32>(2147483647i, -20620i)), 1u, vec4<u32>(u_input.a, u_input.b, 28560u, u_input.a)), 2147483647i, vec4<f32>(-1344f, -965f, global0.x, 261f)), global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<u32>(u_input.a, u_input.b, 0u)), vec2<i32>(-37661i, 2147483647i)), 1u, vec4<u32>(_wgslsmith_mod_u32(u_input.b, 23735u), ~4294967295u, _wgslsmith_mult_u32(u_input.a, 4294967295u), abs(u_input.b))), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1054f, 405f))) - vec2<f32>(global0.x, -464f)), Struct_2(vec3<bool>(true, func_7(false, Struct_1(vec4<f32>(global0.x, -459f, global0.x, global0.x), vec2<i32>(-4339i, 0i), vec3<bool>(true, true, true), vec2<i32>(3137i, 38015i), vec2<i32>(-53249i, -42929i))).c.b.c.x, all(vec3<bool>(false, true, true))), func_6(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1064f, 588f))), 1u), min(0u, u_input.b) & _wgslsmith_div_u32(u_input.a, 41987u), ~firstTrailingBit(vec4<u32>(u_input.b, 53282u, 0u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x - -340f)), Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1643f, 722f, global0.x, 2365f)))), vec2<i32>(1i, 1i), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), select(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -32407i), vec2<i32>(1i, 1i), vec2<i32>(-20919i, -71284i)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 15296u), 19u)]), vec2<i32>(-1i, 75346i) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), global2[_wgslsmith_index_u32(28033u, 24u)], global2[_wgslsmith_index_u32(~(~u_input.b), 24u)]));
    let var_2 = abs(func_1(Struct_5(func_6(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c.b.a.x, 568f, 545f), var_1.e.zwz)), 4330u), Struct_3(var_1.c.b.a.x, _wgslsmith_mod_u32(u_input.a, 35800u), var_1.c, ~36848i, vec4<f32>(1f, 1f, 1f, 1f)), func_7(u_input.a < var_1.b, Struct_1(var_1.e, vec2<i32>(var_1.c.b.e.x, var_1.d), var_1.c.b.c, var_1.c.b.e, vec2<i32>(-4464i, 7968i)))), ~vec3<u32>(u_input.a, ~95213u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.b, var_1.b, u_input.a), vec4<u32>(u_input.b, 10611u, 4294967295u, var_1.c.d.x)))));
    var var_3 = ~(abs(4155u) | ~(var_1.b ^ u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(458f)) + global0.x))), _wgslsmith_f_op_f32(global0.x - var_1.c.b.a.x)));
}

