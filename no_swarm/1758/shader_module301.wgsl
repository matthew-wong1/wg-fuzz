struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 71032u;

var<private> global1: array<i32, 4> = array<i32, 4>(2716i, 2147483647i, 1i, -44680i);

var<private> global2: u32 = 0u;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(~19416u, _wgslsmith_dot_vec3_u32(~u_input.c.xyz, u_input.c.xxz), u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, 2614u), ~u_input.c.x)), any(vec4<bool>(true, true, false, true)), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), any(vec4<bool>(false, true, true, false))), !all(vec2<bool>(true, true)))), -_wgslsmith_dot_vec3_i32(u_input.a.wyz, ~(-u_input.a.xwx)));
    var var_1 = _wgslsmith_f_op_f32(sign(1098f));
    let var_2 = var_0.a;
    var var_3 = var_2.c.x;
    var_0 = Struct_2(var_0.a, ~3428i);
    return Struct_1(~vec4<u32>(50975u, 0u, ~countOneBits(22420u), var_2.a.x), var_0.a.c.x, vec4<bool>(false, !(var_0.a.b == (var_0.a.a.x < 52272u)), (u_input.b | 29488u) < var_2.a.x, true));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 36880u;
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.a.a.x, 4294967295u), arg_1.a.zw), arg_3.a.a.ww, _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.b), u_input.c.zy)), firstLeadingBit(~(~vec2<u32>(90700u, u_input.b)))) << (1u % 32u);
    var var_1 = arg_1;
    let var_2 = var_1.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2680f, 820f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(205f * -1696f) - _wgslsmith_f_op_f32(floor(-367f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(536f, -634f))))) + -1805f);
    return arg_2;
}

fn func_1() -> u32 {
    let var_0 = true;
    let var_1 = func_3((true || var_0) | true, func_2(), func_2(), Struct_2(func_2(), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(-2147483647i, 49093i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 0u), 4u)]), 8611i)));
    global0 = var_1.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(f32(-1f) * -1315f), _wgslsmith_f_op_f32(-157f + 349f)) + vec3<f32>(_wgslsmith_f_op_f32(floor(347f)), -507f, _wgslsmith_f_op_f32(1281f - -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(134f, -481f, -116f))) + vec3<f32>(-1586f, 240f, 1182f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(999f, -963f, 352f), vec3<f32>(-1005f, 1536f, 1060f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-668f, 427f, -992f), vec3<f32>(-958f, -869f, 842f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1473f, 1300f, -1084f)), all(var_1.c.ww))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(955f, var_2.x, -895f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1793f, var_2.x, 412f) * vec3<f32>(695f, -1000f, -315f)))))));
    return ~((~var_1.a.x >> (select(~u_input.d, 12811u << (0u % 32u), !var_0) % 32u)) << (~46381u % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_2();
    global0 = arg_0.a.a.x;
    let var_1 = arg_0.a.c.zw;
    let var_2 = vec3<i32>(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a.x, _wgslsmith_add_u32(arg_1.a.a.x, 79189u), 1u, firstLeadingBit(0u)), arg_0.a.a), 4u)], ~_wgslsmith_add_i32(~(-2147483647i), firstTrailingBit(~u_input.a.x)), select(min(global1[_wgslsmith_index_u32(func_3(arg_1.a.b & false, func_2(), func_3(arg_1.a.c.x, Struct_1(arg_0.a.a, var_1.x, var_0.c), Struct_1(vec4<u32>(arg_1.a.a.x, arg_1.a.a.x, var_0.a.x, 86705u), true, arg_1.a.c), Struct_2(Struct_1(arg_1.a.a, true, var_0.c), arg_1.b)), arg_0).a.x, 4u)], global1[_wgslsmith_index_u32(u_input.d, 4u)] ^ 2147483647i), ~(~_wgslsmith_clamp_i32(arg_0.b, arg_0.b, 2147483647i)), !var_1.x));
    let var_3 = 380f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(min(max(~abs(u_input.a.zyz), vec3<i32>(-2147483647i, abs(27153i), global1[_wgslsmith_index_u32(~0u, 4u)])), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.yxy, firstLeadingBit(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(79853u, 4u)], u_input.a.x))), u_input.a.yyx)), ~(~(u_input.a.yww ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-747i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(50946u, 4u)])))));
    var var_1 = func_4(Struct_2(Struct_1(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), u_input.c.xw), func_1(), 87034u), true, func_2().c), 423i), Struct_2(func_2(), min(firstLeadingBit(firstLeadingBit(global1[_wgslsmith_index_u32(0u, 4u)])), global1[_wgslsmith_index_u32(~(~u_input.b), 4u)])));
    var_0 = _wgslsmith_sub_i32(12706i, ~var_1.b);
    var_0 = countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(8691u, 4u)], var_1.b) | vec3<i32>(global1[_wgslsmith_index_u32(31462u, 4u)], var_1.b, -2147483647i)), abs(~u_input.a.zww)), max(-73794i, reverseBits(1i))));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(~var_1.a.a.x, ~_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(17830u, var_1.a.a.x))), abs(func_1()), ~(~1157u)) | (~u_input.c.zxw | ~(u_input.c.yxw | vec3<u32>(27023u, var_1.a.a.x, u_input.b)));
    let var_3 = func_4(Struct_2(func_4(Struct_2(var_1.a, global1[_wgslsmith_index_u32(var_2.x, 4u)]), func_4(Struct_2(Struct_1(var_1.a.a, true, var_1.a.c), global1[_wgslsmith_index_u32(4294967295u, 4u)]), func_4(Struct_2(var_1.a, 0i), Struct_2(Struct_1(vec4<u32>(var_2.x, 7057u, 0u, 66246u), true, vec4<bool>(var_1.a.c.x, var_1.a.c.x, true, var_1.a.c.x)), 2147483647i)))).a, var_1.b), func_4(func_4(Struct_2(Struct_1(u_input.c, false, var_1.a.c), ~(-25821i)), func_4(Struct_2(var_1.a, global1[_wgslsmith_index_u32(69562u, 4u)]), func_4(Struct_2(var_1.a, var_1.b), Struct_2(Struct_1(vec4<u32>(u_input.d, var_1.a.a.x, u_input.c.x, 2926u), var_1.a.c.x, vec4<bool>(var_1.a.b, var_1.a.c.x, var_1.a.c.x, true)), global1[_wgslsmith_index_u32(var_1.a.a.x, 4u)])))), func_4(Struct_2(var_1.a, var_1.b), func_4(func_4(Struct_2(var_1.a, global1[_wgslsmith_index_u32(var_2.x, 4u)]), Struct_2(Struct_1(vec4<u32>(u_input.c.x, 11056u, 23795u, var_2.x), var_1.a.c.x, vec4<bool>(var_1.a.c.x, true, true, var_1.a.b)), u_input.a.x)), func_4(Struct_2(Struct_1(u_input.c, false, var_1.a.c), 12201i), Struct_2(var_1.a, global1[_wgslsmith_index_u32(6730u, 4u)]))))));
    let var_4 = -734f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstLeadingBit(1u), (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_3.a.a.x, var_1.a.a.x), vec3<u32>(u_input.d, 1u, var_3.a.a.x)) | var_3.a.a.x) >> (~(u_input.b & 4294967295u) % 32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, -1086f, var_4)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-232f, var_4, 754f), vec3<f32>(955f, 178f, -1774f))), func_3(var_3.a.c.x, var_1.a, Struct_1(u_input.c, var_1.a.c.x, vec4<bool>(true, var_1.a.c.x, false, true)), Struct_2(var_1.a, 22775i)).c.xxz)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-486f, var_4, 151f)) + vec3<f32>(530f, 891f, -2157f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, var_4, var_4) * vec3<f32>(-1000f, -640f, var_4)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1571f, 822f, var_4)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1612f, var_4, -431f) + vec3<f32>(var_4, var_4, var_4)))))));
}

