struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32 = -241f;

var<private> global2: vec2<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(vec4<bool>(true, true, true, true));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)));
    let var_1 = var_0;
    let var_2 = var_0;
    var var_3 = var_0.a;
    return u_input.d;
}

fn func_2() -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(1824f + -1503f);
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 82551u, ~u_input.d, abs(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, u_input.d)), ~vec2<u32>(u_input.b.x, u_input.b.x)))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.e, u_input.b.x, 4294967295u), reverseBits(vec4<u32>(1976u, 4294967295u, 1u, 1u))) & ~vec4<u32>(u_input.e, u_input.d, 1u, u_input.e), ~vec4<u32>(35093u, abs(u_input.b.x), func_3(Struct_2(u_input.b), -706f, u_input.b, Struct_2(u_input.b)), ~4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(step(-1589f, 1226f));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(~1i, -1i), global2.x), u_input.c, u_input.c);
    global1 = 337f;
    return select(max(~max(max(vec3<u32>(u_input.d, u_input.d, var_0.x), var_0.zwy), _wgslsmith_mod_vec3_u32(var_0.zxx, vec3<u32>(1u, var_0.x, var_0.x))), var_0.xxy), ~(~(var_0.yyy & var_0.yxw)) | var_0.yxw, true);
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    global0 = _wgslsmith_clamp_u32(u_input.b.x, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(55143u | u_input.d, u_input.b.x), u_input.e & _wgslsmith_clamp_u32(0u, 1u, u_input.d)), countOneBits(1u));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global2.x, 1i), 30655i), vec2<i32>(global2.x | global2.x, -3122i)), 59383i) | ~(~(-42629i >> (u_input.e % 32u)) | select(firstTrailingBit(u_input.a.x), -2147483647i, !arg_1));
    let var_1 = -vec4<i32>(23837i, global2.x, global2.x, abs(max(global2.x, -global2.x)));
    var var_2 = ~((func_2() << (vec3<u32>(u_input.d, 7466u, u_input.d) % vec3<u32>(32u))) & ~vec3<u32>(u_input.e, u_input.d, u_input.e)) | select(vec3<u32>(u_input.d, 0u, ~4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(29359u, 32638u, u_input.d) ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(3205u, 1u, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 0u, 1u), ~vec3<u32>(4294967295u, 1u, 0u))), !select(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_0, true, arg_0), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), arg_1), true));
    var var_3 = reverseBits(~(~countOneBits(firstTrailingBit(vec4<u32>(41186u, 1971u, 1u, u_input.b.x)))));
    return 2500i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -2553f;
    global0 = max(u_input.b.x, u_input.b.x);
    let var_0 = _wgslsmith_mod_i32(countOneBits(~(-10827i)), _wgslsmith_mod_i32(func_1(true, false), u_input.c));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f))) + -289f);
    global1 = -438f;
    let var_1 = min(1u ^ u_input.b.x, u_input.b.x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, -vec4<i32>(u_input.a.x, 0i, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global2.x), u_input.a)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, 630f) + vec2<f32>(-995f, -488f)) * vec2<f32>(-756f, 566f)))))), ~select(func_2(), vec3<u32>(select(var_1, 4294967295u, false), var_1, 1u), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(422f, 1054f, 1000f), vec3<f32>(1000f, -1627f, 1513f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(124f, -105f, -2368f) - vec3<f32>(-1454f, 365f, -1812f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(379f, -352f, -175f)))))));
}

