struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-684f, 950f, -707f, 1923f, -912f, 1075f, -1335f, 1000f);

var<private> global1: vec3<i32>;

var<private> global2: Struct_4;

var<private> global3: array<vec4<f32>, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> bool {
    let var_0 = global2.a.b;
    var var_1 = global2.a.b.b.x;
    global0 = array<f32, 8>();
    return !all(vec2<bool>(arg_0.x, true & all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 239f)))))));
    global3 = array<vec4<f32>, 3>();
    var var_1 = vec2<i32>(select(global1.x, -61167i, true), _wgslsmith_clamp_i32(global2.a.b.c.x, max(1i, -1i), _wgslsmith_mod_i32(arg_2.a.b.d.x, _wgslsmith_dot_vec4_i32(global2.a.b.d, arg_2.a.b.d))));
    global1 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-var_1.x | _wgslsmith_sub_i32(global2.a.b.c.x, var_1.x), _wgslsmith_sub_i32(-16680i, _wgslsmith_mult_i32(arg_2.a.b.c.x, global2.a.b.d.x)), global2.a.b.b.x), ~(~arg_3.a.b.d.xzw)), ~_wgslsmith_div_vec3_i32(vec3<i32>(~2147483647i, -global2.a.b.c.x, -36610i), -arg_3.a.b.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(884f, global2.b, global2.b), vec3<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global2.a.a, 362f))))) - vec3<f32>(-1000f, 1201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) + arg_0.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 8u)]))), _wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(sign(336f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(637f, var_0.x, -401f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -863f, 103f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -801f, 211f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.b, arg_2.b, arg_3.a.a)))))));
    return !select(select(select(vec2<bool>(true, false), !vec2<bool>(arg_1, true), true), !vec2<bool>(arg_1, arg_1), false), vec2<bool>(arg_1, true), true);
}

fn func_2() -> vec3<i32> {
    global2 = Struct_4(global2.a, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~4294967295u, 8u)])));
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 8u)]);
    let var_1 = select(select(select(func_4(Struct_2(global2.b, global2.a.b), func_3(vec2<bool>(false, true), 179f), Struct_4(global2.a, -641f), Struct_4(Struct_2(776f, global2.a.b), 1032f)), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true)), vec2<bool>(true, true), !func_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 8u)])))), select(!vec2<bool>(true, any(vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, true, false, true))), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), !(global1.x < global2.a.b.c.x))), !vec2<bool>(!func_4(global2.a, false, Struct_4(global2.a, var_0), Struct_4(global2.a, -1008f)).x, true));
    var var_2 = abs(-(global2.a.b.d.x >> (~u_input.a % 32u)));
    return global2.a.b.c;
}

fn func_1() -> f32 {
    global1 = -_wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(~global2.a.b.d.yzw, vec3<i32>(-10525i, global1.x, -47240i)), func_2());
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)] * global2.b)))), global0[_wgslsmith_index_u32(~(u_input.a << (u_input.a % 32u)), 8u)], global2.b);
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.b, _wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_add_vec2_u32(vec2<u32>(71577u, u_input.b.x), u_input.b))), u_input.b, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b, vec2<u32>(38482u, u_input.a)), vec2<u32>(u_input.a, 31313u) ^ u_input.b, u_input.b >> (u_input.b % vec2<u32>(32u))), max(u_input.b, u_input.b))), u_input.b);
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-979f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) * _wgslsmith_f_op_f32(525f + -869f))));
    var var_3 = ~abs(30276u);
    return _wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1329f - -608f))));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = global2.a.b.d;
    let var_1 = min(u_input.a, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.b.x, 29571u)), abs(~u_input.b)) << (8241u % 32u));
    let var_2 = select(!vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), func_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 8u)])), all(vec4<bool>(false, true, true, false))), !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true & (var_1 >= 4294967295u)), true);
    var var_3 = 1i;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), global2.b) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(964f + -712f), _wgslsmith_f_op_f32(arg_2.a + -1549f)), vec2<f32>(_wgslsmith_f_op_f32(abs(-170f)), 1212f))) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(round(-304f)))));
    return Struct_4(Struct_2(arg_2.a, Struct_1(min(arg_2.b.d.x, global2.a.b.d.x), ~vec2<i32>(2147483647i, global2.a.b.d.x), arg_2.b.c, arg_2.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(600f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - -724f)))));
    var var_1 = global1.x;
    var var_2 = func_5(_wgslsmith_f_op_f32(func_1()), func_2().yz, Struct_2(-232f, Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(global1.x, 2147483647i), ~global2.a.b.d.x), vec2<i32>(-global1.x, 1i), global2.a.b.c >> (~vec3<u32>(u_input.a, u_input.a, 65729u) % vec3<u32>(32u)), -(var_0.a.b.d ^ vec4<i32>(-2147483647i, 0i, 1i, global1.x)))));
    let var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f), _wgslsmith_f_op_f32(f32(-1f) * -1308f)) - _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-var_0.a.a)), vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -8272i, var_0.a.b.a) >> (60891u % 32u), var_0.a.b.b.x, _wgslsmith_add_i32(~global2.a.b.d.x, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mult_i32(11652i, var_0.a.b.c.x), 18498i)), var_0.a.b.c.x), vec3<u32>(1u, u_input.a, abs(u_input.b.x)) >> (_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.b.x, 33029u, u_input.b.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 57411u, u_input.a), abs(vec3<u32>(u_input.a, 90772u, 4294967295u)))) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(max(~abs(1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(18658u, u_input.a, 0u, 0u)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(1u, u_input.a, 4294967295u, 1u)), vec4<u32>(u_input.a, 54464u, u_input.b.x, 49019u)))), 3u)]);
    var var_4 = ~abs(reverseBits(vec2<u32>(u_input.a, var_3.c.x)));
    global3 = array<vec4<f32>, 3>();
    var var_5 = (_wgslsmith_div_u32(~var_3.c.x, ~var_4.x & var_3.c.x) ^ abs(~var_3.c.x)) >> (~var_4.x % 32u);
    var var_6 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(select(countOneBits(var_2.a.b.c.x), abs(29526i), any(vec3<bool>(true, true, true))), -24774i, ~(_wgslsmith_dot_vec4_i32(var_2.a.b.d, global2.a.b.d) << (var_4.x % 32u))), var_0.a.b.b.x, 1i);
    var var_7 = func_5(_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(-var_2.a.a)), firstTrailingBit(vec2<i32>((global2.a.b.a << (var_3.c.x % 32u)) | 2147483647i, -var_0.a.b.a)), Struct_2(var_0.a.a, var_2.a.b)).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_7.a, 1353f) - var_3.a))) * vec2<f32>(var_2.a.a, var_3.d.x)), _wgslsmith_f_op_f32(trunc(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-457f))), ~firstTrailingBit(global1.yx), func_5(_wgslsmith_f_op_f32(-956f - 1418f), ~var_0.a.b.d.yx, func_5(global0[_wgslsmith_index_u32(u_input.a, 8u)], vec2<i32>(58380i, var_3.b.x), var_2.a).a).a).b)), ~(var_3.b.x ^ func_2().x));
}

