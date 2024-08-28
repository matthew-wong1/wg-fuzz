struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -13145i;

var<private> global1: vec2<u32>;

var<private> global2: Struct_4 = Struct_4(Struct_3(55392u, vec2<f32>(441f, 2294f)), vec4<i32>(-14451i, 12805i, 1i, 1i), Struct_3(4294967295u, vec2<f32>(-1026f, 1758f)), true);

var<private> global3: array<u32, 21> = array<u32, 21>(40888u, 2117u, 52198u, 1u, 0u, 65181u, 0u, 0u, 15165u, 100041u, 7339u, 0u, 61416u, 0u, 1u, 1u, 4294967295u, 82133u, 39800u, 68462u, 4294967295u);

var<private> global4: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1328f))), -459f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x)))))));
    let var_1 = true;
    let var_2 = Struct_2(abs(global2.b), min(_wgslsmith_mult_vec2_u32(reverseBits(u_input.a.yw), u_input.a.yw), vec2<u32>(4294967295u << (global3[_wgslsmith_index_u32(90385u, 21u)] % 32u), ~(~global1.x))), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.c.b.x * arg_0.x), _wgslsmith_f_op_f32(global2.a.b.x - 1346f), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_div_f32(arg_0.x, arg_2.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a.b.x, -761f, 1459f, arg_2.x))))), vec4<f32>(_wgslsmith_f_op_f32(floor(-127f)), global2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x))), _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_i32(global2.b.x, -_wgslsmith_add_i32(-2147483647i, arg_1)), _wgslsmith_sub_vec4_u32(reverseBits(u_input.a), max(reverseBits(vec4<u32>(global1.x, 9141u, 13185u, u_input.a.x)), u_input.a))));
    global0 = -global2.b.x;
    global0 = global2.b.x & abs(-1i);
    return firstLeadingBit(~(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 44645u), vec2<u32>(0u, 4294967295u) ^ vec2<u32>(0u, u_input.a.x)), 21u)]));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_3 {
    global1 = _wgslsmith_div_vec2_u32(vec2<u32>(global2.c.a, select(4294967295u, ~func_3(vec2<f32>(global2.a.b.x, global2.c.b.x), global2.b.x, vec4<f32>(arg_1.x, -1000f, global2.c.b.x, arg_1.x)), arg_0)), select(_wgslsmith_clamp_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.c.a, global2.c.a), vec2<u32>(4294967295u, global1.x)), ~vec2<u32>(u_input.a.x, global2.a.a)), firstTrailingBit(vec2<u32>(12060u, global2.a.a)), u_input.a.zw), vec2<u32>(70659u, firstTrailingBit(~u_input.a.x)), arg_0));
    let var_0 = _wgslsmith_clamp_u32(4294967295u, ~global3[_wgslsmith_index_u32(global2.a.a, 21u)], ~(~1u));
    global2 = Struct_4(Struct_3(var_0, arg_1.xx), global2.b, Struct_3(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), 21u)], 4294967295u), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)) - -459f))), true);
    return Struct_3(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~var_0, 21u)], 21u)], _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.a.b * global2.a.b), vec2<f32>(global2.c.b.x, -1000f), select(vec2<bool>(true, false), vec2<bool>(false, global2.d), global2.d))) * vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-539f * 818f))), _wgslsmith_div_vec2_f32(global2.a.b, _wgslsmith_f_op_vec2_f32(-arg_1.xy)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> vec4<f32> {
    global3 = array<u32, 21>();
    global1 = ~vec2<u32>(_wgslsmith_add_u32(max(u_input.a.x, global2.c.a), ~0u) << (u_input.a.x % 32u), firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.c.b.x, global2.c.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_1.a.b.x, select(arg_1.d, arg_1.d, global2.d) & all(vec3<bool>(global2.d, true, false))))));
    global4 = global2.a.b.x;
    var var_1 = select(!select(vec3<bool>(385f == global2.a.b.x, true, false && global2.d), !(!vec3<bool>(false, true, arg_1.d)), select(vec3<bool>(true, global2.d, arg_1.d), !vec3<bool>(arg_1.d, global2.d, true), vec3<bool>(true, arg_1.d, global2.d))), select(select(select(vec3<bool>(arg_1.d, false, global2.d), !vec3<bool>(global2.d, arg_1.d, false), false), vec3<bool>(global2.d, all(vec2<bool>(false, global2.d)), !global2.d), vec3<bool>(true, true, true)), select(select(!vec3<bool>(global2.d, global2.d, arg_1.d), !vec3<bool>(false, arg_1.d, false), -496f > var_0.x), vec3<bool>(true, arg_1.d, 16438u < global2.a.a), global2.d), global2.d), arg_1.d);
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.b.x))), -501f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-484f + global2.a.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_1.a.b.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, var_0.x, 853f, -613f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-893f, global2.a.b.x, -235f, arg_1.c.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.a.b.x, -764f, -1000f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, arg_1.c.b.x, 911f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -370f, arg_1.a.b.x, -382f) + vec4<f32>(-801f, 903f, global2.a.b.x, global2.c.b.x)))))))));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(~(~select(vec4<u32>(298u, 4294967295u, u_input.a.x, global1.x), ~vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], u_input.a.x, global1.x), any(vec4<bool>(false, arg_0, global2.d, global2.d)))), arg_1.c.c, _wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(-_wgslsmith_mult_i32(arg_1.a.x, 5474i), -arg_1.c.d >> ((113487u << (u_input.a.x % 32u)) % 32u), 53468i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.b.x, arg_1.c.d), global2.b.yy, vec2<i32>(global2.b.x, -2147483647i)), ~vec2<i32>(arg_1.a.x, arg_1.c.d))), Struct_4(func_2(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.b.x, global2.c.b.x, 849f) - vec3<f32>(global2.a.b.x, 1116f, arg_1.c.b.x))), -vec4<i32>(global2.b.x, global2.b.x, 128i, -9448i), Struct_3(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41711u, 21u)], 21u)], 72086u, global2.d), vec2<f32>(global2.c.b.x, 116f)), false))), ~arg_1.a.x & _wgslsmith_clamp_i32(_wgslsmith_add_i32(firstTrailingBit(arg_1.c.d), -global2.b.x), 1i, ~_wgslsmith_div_i32(arg_1.c.d, 0i)), arg_1.c.e);
    let var_1 = var_0.d;
    global4 = arg_1.c.b.x;
    let var_2 = any(!(!(!(!vec3<bool>(true, true, global2.d)))));
    global0 = -(-_wgslsmith_sub_i32(var_0.d, ~(-2147483647i)) | 47639i);
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(func_1(true, Struct_2(~global2.b, ~(u_input.a.xw & vec2<u32>(global2.c.a, global2.a.a)), Struct_1(~vec4<u32>(u_input.a.x, 86415u, global2.a.a, global2.c.a), vec4<f32>(global2.a.b.x, global2.c.b.x, -955f, global2.c.b.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.c.b.x, global2.c.b.x, global2.a.b.x, 1884f))), ~(-32497i), max(vec4<u32>(global3[_wgslsmith_index_u32(44792u, 21u)], 0u, 1u, 55641u), u_input.a)))), _wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, ~global2.b.x, -global2.b.x, abs(abs(9922i))), vec4<i32>(global2.b.x, global2.b.x, reverseBits(global2.b.x << (u_input.a.x % 32u)), -23944i)), Struct_3(abs(~0u), _wgslsmith_f_op_vec2_f32(sign(func_1(any(vec3<bool>(true, global2.d, false)), Struct_2(global2.b, vec2<u32>(global1.x, 1u), Struct_1(u_input.a, vec4<f32>(-350f, -1480f, -1000f, global2.c.b.x), vec4<f32>(global2.a.b.x, global2.c.b.x, -1079f, global2.c.b.x), global2.b.x, u_input.a))).b))), true);
    global3 = array<u32, 21>();
    let var_0 = -301f;
    var var_1 = Struct_1(min(select(vec4<u32>(func_1(false, Struct_2(vec4<i32>(global2.b.x, global2.b.x, global2.b.x, 6160i), vec2<u32>(4294967295u, global2.a.a), Struct_1(u_input.a, vec4<f32>(var_0, -2027f, -831f, var_0), vec4<f32>(global2.c.b.x, var_0, global2.a.b.x, 805f), global2.b.x, u_input.a))).a, func_2(false, vec3<f32>(-1934f, -1107f, -833f)).a, global1.x, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global2.c.a, 21u)], 105694u)), _wgslsmith_mult_vec4_u32(countOneBits(u_input.a), ~u_input.a), global2.d), u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-602f, var_0, global2.a.b.x, var_0) + vec4<f32>(1924f, global2.a.b.x, global2.a.b.x, -483f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, var_0, -1141f, 1000f) - vec4<f32>(-887f, 1028f, -142f, var_0)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-258f, -898f, var_0, 1044f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.c.b.x, -873f, 445f, var_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b.x, -1023f, 1479f, 893f)))), global2.b.x, vec4<u32>(17723u, ~4294967295u, global3[_wgslsmith_index_u32(~global2.a.a, 21u)], ~u_input.a.x));
    var var_2 = func_2(all(!select(vec4<bool>(global2.d, global2.d, true, true), vec4<bool>(global2.d, global2.d, false, global2.d), true)) & any(select(select(vec3<bool>(false, global2.d, false), vec3<bool>(global2.d, global2.d, false), global2.d), vec3<bool>(global2.d, global2.d, true), vec3<bool>(true, false, global2.d))), var_1.b.zww);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d, global2.b.x, var_1.c, ~vec3<u32>(2686u, max(var_1.e.x, global1.x), u_input.a.x << (4294967295u % 32u)) | ((~u_input.a.wyz << (vec3<u32>(30490u, 1u, u_input.a.x) % vec3<u32>(32u))) ^ vec3<u32>(10268u, 1u, func_2(false, var_1.c.xwy).a)));
}

