struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global2: u32;

var<private> global3: u32 = 0u;

var<private> global4: f32 = -803f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    var var_0 = select(vec3<i32>(11430i, u_input.a.x & -2147483647i, arg_0.a), abs(~(reverseBits(u_input.a.wyz) >> (reverseBits(vec3<u32>(u_input.b.x, 90610u, 37197u)) % vec3<u32>(32u)))), !(!(!(!vec3<bool>(false, arg_3, false)))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.x, 840f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f * -1492f))) * arg_0.b));
    return firstTrailingBit(~27233u);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = 94729u;
    var var_1 = ~0u;
    let var_2 = select(vec3<i32>(-arg_2.x, max(-u_input.a.x, u_input.a.x & arg_2.x), arg_2.x), max(vec3<i32>(0i, _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(36583i, arg_2.x, 4164i, u_input.a.x), u_input.a)), u_input.a.x ^ -u_input.a.x), ~(-arg_2.ywz << ((u_input.b.xxw ^ vec3<u32>(arg_0, arg_0, u_input.b.x)) % vec3<u32>(32u)))), arg_3.a);
    global3 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x | 48315u, var_0), u_input.b.xz);
    let var_3 = Struct_4(u_input.a.x, 1433f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), 168f, arg_3.c.x)));
    return var_3.c;
}

fn func_2(arg_0: vec2<u32>) -> Struct_5 {
    var var_0 = vec3<u32>(~4294967295u, ~u_input.b.x, u_input.b.x);
    let var_1 = u_input.a.x;
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(0u >> ((var_0.x << (12289u % 32u)) % 32u)), 24379u, 1u, _wgslsmith_add_u32(var_0.x, u_input.b.x)), countOneBits(u_input.b));
    let var_2 = -1204f;
    let var_3 = vec4<i32>(var_1, ~(-28802i), -2147483647i, -2147483647i);
    return Struct_5(Struct_4(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, var_3.x), vec3<i32>(u_input.a.x, var_3.x, u_input.a.x)), ~u_input.a.xww), -var_3.x), 121f, _wgslsmith_f_op_vec3_f32(func_4(~func_3(Struct_4(u_input.a.x, var_2, vec3<f32>(-901f, var_2, var_2)), vec2<f32>(1075f, 1535f), vec2<f32>(-955f, var_2), true), any(vec4<bool>(true, true, true, true)), (vec4<i32>(1i, u_input.a.x, u_input.a.x, 0i) >> (vec4<u32>(var_0.x, 0u, var_0.x, arg_0.x) % vec4<u32>(32u))) ^ vec4<i32>(var_1, var_1, -22726i, u_input.a.x), Struct_1(true, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, var_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, -816f)))))), ~(~(_wgslsmith_mult_vec2_u32(u_input.b.ww, vec2<u32>(11966u, 37337u)) ^ (arg_0 >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))))));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = func_2(u_input.b.zy);
    global1 = array<vec2<bool>, 6>();
    var var_1 = Struct_3(vec3<f32>(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2633f)) + _wgslsmith_f_op_f32(sign(var_0.a.b))), -512f), Struct_2(Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.b)), _wgslsmith_f_op_f32(step(var_0.a.b, 599f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(751f, var_0.a.c.x) + vec2<f32>(173f, -891f)) + var_0.a.c.xx))), !(!all(vec4<bool>(true, true, true, true))));
    var var_2 = u_input.b.xz;
    let var_3 = var_1.b.a.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -170f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -1076f), _wgslsmith_f_op_f32(-947f + -871f), all(vec3<bool>(false, false, true)))))) - _wgslsmith_f_op_f32(-178f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-813f * -256f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1264f)) + -618f))))));
    var var_0 = -select(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 58302i) ^ vec4<i32>(18760i, -21793i, 33527i, u_input.a.x), vec4<i32>(1i, u_input.a.x, 1i, -13270i)), 1i, false);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(126f, -1823f)), -115f));
    let var_1 = Struct_2(Struct_1(true, vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1086f, 546f)))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-250f, -109f))))));
    let var_2 = 1079f;
    var var_3 = Struct_4(2147483647i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(firstTrailingBit(-vec4<i32>(-26779i, u_input.a.x, u_input.a.x, 0i)))))), vec3<f32>(-260f, var_2, _wgslsmith_f_op_f32(var_2 * -913f)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~(var_3.a >> (u_input.b.x % 32u)), -20880i), (u_input.b.x >> (u_input.b.x % 32u)) | ~_wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(10412u, 1u) | u_input.b.zw), u_input.a.wx);
}

