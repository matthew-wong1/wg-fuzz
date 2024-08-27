struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: f32 = 140f;

var<private> global2: array<bool, 8>;

var<private> global3: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(88010u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(21644u, 1u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 39573u, 30598u), vec3<u32>(4294967295u, 2444u, 27605u), vec3<u32>(0u, 41353u, 98206u), vec3<u32>(1u, 1u, 39315u), vec3<u32>(54137u, 0u, 4294967295u), vec3<u32>(20195u, 17734u, 1u), vec3<u32>(1u, 18990u, 1u), vec3<u32>(1u, 22964u, 88697u), vec3<u32>(1u, 1u, 0u), vec3<u32>(8269u, 18887u, 1u), vec3<u32>(6431u, 1u, 4294967295u), vec3<u32>(99587u, 36596u, 59783u), vec3<u32>(4294967295u, 36477u, 37416u), vec3<u32>(4294967295u, 14806u, 0u), vec3<u32>(52388u, 31023u, 1u), vec3<u32>(4294967295u, 79328u, 1u), vec3<u32>(4294967295u, 62036u, 27489u), vec3<u32>(0u, 4294967295u, 42593u));

var<private> global4: array<i32, 13>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> i32 {
    var var_0 = ~(~(~global0.x));
    global0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(0u, 1u))), ~(~(~u_input.b.yy)));
    global3 = array<vec3<u32>, 22>();
    var var_1 = ~(~abs(vec3<u32>(min(4294967295u, u_input.b.x), u_input.b.x, u_input.b.x)));
    global1 = 698f;
    return ~1i;
}

fn func_3() -> i32 {
    global2 = array<bool, 8>();
    return ~(~abs(-1i));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec3<i32> {
    let var_0 = ~(~(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global0.x, u_input.b.x), vec3<u32>(global0.x, 4294967295u, u_input.b.x)), u_input.b.x | 4294967295u) >> (_wgslsmith_clamp_u32(global0.x, reverseBits(global0.x), 22965u) % 32u)));
    var var_1 = Struct_3(_wgslsmith_sub_vec3_i32(arg_0, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(0u, 13u)], -19147i), select(arg_0.xy, vec2<i32>(arg_0.x, arg_0.x), arg_1)), min(_wgslsmith_mod_i32(-1i, u_input.a), func_2(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(var_0, 8u)], arg_1), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(global0.x, 8u)]), arg_0.zz)), func_3())), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(791f, -1354f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(417f, -108f))))), Struct_2(u_input.c.wy, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1342f, 761f) + _wgslsmith_div_vec2_f32(vec2<f32>(133f, -690f), vec2<f32>(1000f, 2451f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, -703f)) - vec2<f32>(1f, 1f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(241f, -565f) - vec2<f32>(-978f, -351f)) * vec2<f32>(-848f, -896f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1504f, 1000f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2939f, 247f)))))), ~arg_0.x, Struct_2(select(vec2<u32>(1u, 1u) << (vec2<u32>(u_input.b.x, var_0) % vec2<u32>(32u)), u_input.b.zz, vec2<bool>(all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(44468u, 8u)])), global2[_wgslsmith_index_u32(1u, 8u)])), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(min(1306f, 1644f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-922f, 797f) - vec2<f32>(843f, -612f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-553f, -1471f), vec2<f32>(1000f, 1277f)))), Struct_1(vec2<f32>(_wgslsmith_div_f32(1575f, -283f), _wgslsmith_f_op_f32(f32(-1f) * -1059f)), vec2<f32>(_wgslsmith_f_op_f32(1069f - 1000f), _wgslsmith_f_op_f32(245f - 135f)))));
    var_1 = Struct_3(vec3<i32>(firstLeadingBit(~(global4[_wgslsmith_index_u32(var_1.c.a.x, 13u)] & -78817i)), 2147483647i, global4[_wgslsmith_index_u32(global0.x, 13u)]), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(2152f, _wgslsmith_f_op_f32(f32(-1f) * -2089f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1332f, var_1.e.c.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(-1868f * var_1.c.c.a.x), _wgslsmith_f_op_f32(-var_1.e.b.a.x))), Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(73842u, ~global0.x), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.b.x)), vec2<u32>(17365u, 4294967295u), ~vec2<u32>(var_0, var_0)), vec2<u32>(reverseBits(var_1.c.a.x), _wgslsmith_add_u32(var_0, global0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_1.b.a.x), var_1.c.c.b))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(366f, var_1.e.b.b.x)))), var_1.c.c), -1i, Struct_2(select(var_1.c.a, abs(var_1.e.a << (u_input.c.xy % vec2<u32>(32u))), true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_1.e.c.a.x), vec2<f32>(-1000f, var_1.b.a.x)) * _wgslsmith_f_op_vec2_f32(-var_1.e.c.a)), _wgslsmith_f_op_vec2_f32(min(var_1.c.c.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.c.b.x, var_1.b.b.x) - var_1.b.a)))), var_1.b));
    var var_2 = select(~u_input.c.xw, u_input.c.zz, select(vec2<bool>(~arg_0.x == (var_1.a.x ^ global4[_wgslsmith_index_u32(4294967295u, 13u)]), false), vec2<bool>(true, any(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 8u)]))), vec2<bool>(true, true)));
    var var_3 = u_input.c;
    return _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, -1i, -17710i), vec3<i32>(~0i, 1i, firstTrailingBit(~1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 13>();
    let var_0 = Struct_3(func_1(~vec3<i32>(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(0u, 13u)]), -u_input.a, select(global4[_wgslsmith_index_u32(33570u, 13u)], global4[_wgslsmith_index_u32(u_input.c.x, 13u)], false)), false), Struct_1(vec2<f32>(-1578f, _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-284f, 1684f))))))), Struct_2(~vec2<u32>(global0.x, 74040u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, 617f) + vec2<f32>(944f, 1261f))), vec2<f32>(-882f, -1384f)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1097f, -723f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(481f, -408f), vec2<f32>(810f, 1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(824f, 501f)))), global4[_wgslsmith_index_u32(global0.x, 13u)] | (i32(-1i) * -global4[_wgslsmith_index_u32(reverseBits(1u), 13u)]), Struct_2(u_input.b.xz, Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(511f, -269f) * vec2<f32>(-249f, -958f)))), vec2<f32>(_wgslsmith_f_op_f32(-280f - -701f), -785f)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), 1090f), vec2<f32>(602f, _wgslsmith_f_op_f32(f32(-1f) * -330f)))));
    var var_1 = Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.c.a - var_0.e.b.a) + _wgslsmith_f_op_vec2_f32(exp2(var_0.b.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(-1047f))), _wgslsmith_f_op_f32(1424f + 961f)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(76769u, 1198u, global0.x, 0u), u_input.c), u_input.b.x), max(4294967295u, abs(0u)), ~4294967295u), abs(4294967295u)), _wgslsmith_add_u32(global0.x, max(global0.x, ~1u)), vec4<u32>(abs(global0.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(global0.x, 30546u), 26969u), _wgslsmith_mult_u32(var_0.c.a.x, countOneBits(0u) >> ((1u ^ global0.x) % 32u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.e.a.x, ~global0.x, var_0.c.a.x), abs(38769u))));
}

