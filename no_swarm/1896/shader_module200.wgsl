struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(255f), Struct_3(-826f), Struct_3(535f), Struct_3(-1393f), Struct_3(1479f), Struct_3(1000f), Struct_3(2094f), Struct_3(-773f), Struct_3(-205f), Struct_3(-3735f));

var<private> global1: vec2<i32>;

var<private> global2: Struct_3;

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> vec2<bool> {
    let var_0 = !select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), false, false)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true));
    return !(!vec2<bool>(all(!vec4<bool>(true, true, true, var_0.x)), !(u_input.a <= global3.x)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32) -> vec3<f32> {
    global0 = array<Struct_3, 10>();
    global2 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    var var_0 = ~_wgslsmith_sub_i32(global1.x, global1.x);
    global1 = max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-(~global1.x), global1.x), -vec2<i32>(-13444i, 7589i) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(72752u, 88184u, 4294967295u), vec3<u32>(arg_0, 0u, 1u)), firstTrailingBit(0u)) % vec2<u32>(32u)), vec2<i32>(-global1.x, -global1.x)), vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(global1.x, ~1i)), -global1.x));
    global3 = vec2<u32>(arg_1, 4294967295u);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(step(global2.a, -1433f))), _wgslsmith_f_op_f32(-347f - global2.a), _wgslsmith_f_op_f32(-global2.a)))));
}

fn func_4(arg_0: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-arg_0.x), select(false, false, false)))))));
    var var_1 = !(!vec4<bool>(false, !any(vec2<bool>(false, false)), all(vec4<bool>(false, true, false, true)), true));
    let var_2 = _wgslsmith_clamp_vec2_u32(~(select(countOneBits(vec2<u32>(113990u, global3.x)), vec2<u32>(global3.x, u_input.a), vec2<bool>(true, true)) >> (min(~vec2<u32>(0u, global3.x), vec2<u32>(global3.x, global3.x)) % vec2<u32>(32u))), select(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 19306u), vec2<u32>(4294967295u, global3.x)), max(countOneBits(vec2<u32>(19975u, 90209u)), select(vec2<u32>(global3.x, u_input.a), vec2<u32>(77393u, 2626u), false)), vec2<bool>(false, true)) | ~firstLeadingBit(select(vec2<u32>(global3.x, 0u), vec2<u32>(0u, u_input.a), true)), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, global3.x) << (vec2<u32>(4294967295u, 40039u) % vec2<u32>(32u))), ~(vec2<u32>(28275u, u_input.a) >> (vec2<u32>(34988u, global3.x) % vec2<u32>(32u)))) ^ _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, 9200u), vec2<u32>(u_input.a, 0u), vec2<bool>(false, var_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, global3.x), vec2<u32>(1u, u_input.a))), ~firstLeadingBit(vec2<u32>(42088u, 4294967295u))));
    var_0 = -467f;
    let var_3 = Struct_5(firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(global3.x, var_2.x), _wgslsmith_mult_u32(reverseBits(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(54880u, 1u, 0u, u_input.a), vec4<u32>(global3.x, 1u, 54673u, 0u))))), -2147483647i, Struct_2(var_2, var_1.wz, _wgslsmith_mod_i32(~global1.x, ~firstLeadingBit(-89366i))));
    return _wgslsmith_add_u32(global3.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, var_2.x, 74409u), vec3<u32>(countOneBits(4294967295u), global3.x, ~4864u)), vec3<u32>(1u, select(global3.x, var_3.a.x, true), 4447u) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.x, var_3.c.a.x, global3.x), vec4<u32>(0u, global3.x, global3.x, u_input.a)), ~0u, 3851u) % vec3<u32>(32u))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = global0[_wgslsmith_index_u32(~23948u, 10u)];
    global3 = vec2<u32>(func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(~0u, u_input.a << (u_input.a % 32u), global2.a))))), min(~13296u, global3.x));
    global1 = _wgslsmith_div_vec2_i32(~vec2<i32>(~24897i, -global1.x), ~vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-10129i, global1.x, -27353i, global1.x), vec4<i32>(26342i, 1i, -2697i, -1i))), global1.x));
    global1 = -vec2<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(-44752i, global1.x, global1.x) & vec3<i32>(-1i, global1.x, global1.x)), select(vec3<i32>(global1.x, -20210i, 0i) & vec3<i32>(1i, global1.x, global1.x), abs(vec3<i32>(global1.x, global1.x, global1.x)), vec3<bool>(true, true, true))), global1.x);
    global3 = vec2<u32>(reverseBits(72579u), 46407u & _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 0u) | vec2<u32>(arg_0, 59574u)), vec2<u32>(global3.x, firstTrailingBit(30537u))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-759f, global2.a, 457f) - vec3<f32>(global2.a, -1079f, global2.a))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -629f, 282f)), vec3<f32>(global2.a, -1197f, global2.a))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.a, global2.a, global2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1412f, -516f, global2.a) * vec3<f32>(840f, global2.a, 240f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.a, global2.a, 1359f) - vec4<f32>(-340f, global2.a, global2.a, 1364f)) * vec4<f32>(-737f, -1528f, global2.a, global2.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(2388f, -830f, global2.a, 285f) + vec4<f32>(global2.a, global2.a, -349f, global2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -298f, 1950f, 2122f) * vec4<f32>(720f, 344f, global2.a, global2.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(863f, 862f, global2.a, global2.a))), true)), false)), global1.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, 512f)) * vec4<f32>(-736f, global2.a, -489f, 559f))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_5(min(vec2<u32>(65546u, ~global3.x) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 47296u), vec2<u32>(u_input.a, 28183u)), ~u_input.a), ~(~(vec2<u32>(global3.x, 4294967295u) << (vec2<u32>(73627u, 4294967295u) % vec2<u32>(32u))))), 1i, Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(64064u, u_input.a), 4895u), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 27651u), vec2<u32>(global3.x, global3.x)))), !(!vec2<bool>(arg_2.x, true)), 1i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, -1000f, -343f)) * _wgslsmith_f_op_vec3_f32(-arg_0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-2336f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, global2.a, 1755f)))))));
    global3 = firstTrailingBit(~(~var_0.a));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(528f + 419f) + -278f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))))));
    return var_0.c;
}

fn func_6(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = vec3<bool>(arg_0.b.x, func_1().x, any(select(vec4<bool>(all(vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), select(true, arg_0.b.x, arg_0.b.x), !arg_0.b.x, arg_0.b.x), select(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), vec4<bool>(false, arg_0.b.x, true, true), vec4<bool>(arg_0.b.x, true, false, false)), !(!vec4<bool>(false, false, true, arg_0.b.x)))));
    let var_1 = arg_0;
    global0 = array<Struct_3, 10>();
    return vec2<bool>(func_2(~u_input.a).c <= firstLeadingBit(1i), !all(var_0.yz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    var var_1 = func_6(func_5(func_2(4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, global2.a, global2.a, global2.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, -1000f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a, global2.a, global2.a, global2.a), vec4<f32>(global2.a, global2.a, -2422f, global2.a), var_0.x)))), vec3<bool>(!(var_0.x | var_0.x), all(vec3<bool>(false, var_0.x, var_0.x)) & var_0.x, false), global1.x));
    global3 = reverseBits(vec2<u32>(~_wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(global3.x, global3.x)), ~1221u));
    global2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(f32(-1f) * -762f)))))));
    var var_2 = all(vec2<bool>(true, all(select(select(vec4<bool>(false, var_0.x, var_1.x, var_1.x), vec4<bool>(true, var_0.x, var_1.x, var_1.x), false), vec4<bool>(false, true, var_1.x, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(abs(global3.x), u_input.a, ~u_input.a)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, ~global3.x), u_input.a), ~u_input.a), countOneBits(vec2<i32>(-1i) * -vec2<i32>(global1.x, global1.x)) >> (abs((vec2<u32>(1u, 4294967295u) ^ vec2<u32>(u_input.a, u_input.a)) << (firstTrailingBit(vec2<u32>(57611u, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), global1.x | global1.x, ~(global1.x & global1.x));
}

