struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec2<bool>;

var<private> global3: array<vec2<bool>, 13>;

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = !(!((global2.x & false) || true)) | !global1.x;
    let var_1 = -1226f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(var_1)));
    global2 = !vec2<bool>(true, any(global3[_wgslsmith_index_u32(countOneBits(max(u_input.a.x, 81301u)), 13u)]));
    var var_3 = vec4<bool>(global2.x, true, true, global2.x);
    return _wgslsmith_f_op_f32(ceil(var_2.a));
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(44066i, u_input.b.x, u_input.d, -15566i)) & abs(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x) << (vec4<u32>(u_input.a.x, u_input.c, arg_0.x, 17914u) % vec4<u32>(32u))), vec4<i32>(~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -16241i), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(14504i, u_input.b.x))), _wgslsmith_add_i32(abs(u_input.d), -4828i), u_input.d | (u_input.d >> (4294967295u % 32u)))), firstTrailingBit(vec4<i32>(max(u_input.d, _wgslsmith_mod_i32(18236i, u_input.d)), u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b | vec2<i32>(u_input.d, 73594i), -u_input.b), u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    return ~(~max(~(vec2<u32>(4721u, u_input.c) | vec2<u32>(36882u, 0u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.a.x, 20049u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(arg_3 * 310f), -721f, _wgslsmith_f_op_f32(min(arg_3, -168f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, 108f) - vec3<f32>(-648f, -1000f, arg_3)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_3)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1589f, -1903f, arg_3)))))), vec4<i32>(_wgslsmith_div_i32(u_input.b.x, 0i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-9196i, arg_1, arg_1), vec3<i32>(0i, 1i, arg_1)), abs(vec3<i32>(1i, -73476i, -2147483647i))), arg_1), -arg_1, _wgslsmith_mod_i32(1i, 2147483647i)));
    global3 = array<vec2<bool>, 13>();
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.a))))))), -var_0.b);
    var var_1 = var_0.b.x;
    let var_2 = global4[_wgslsmith_index_u32(~firstLeadingBit(max(_wgslsmith_clamp_u32(~104831u, 1u, 18461u), min(arg_0.x | arg_2.x, arg_2.x))), 10u)];
    return var_0.b.xyz;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    let var_0 = func_4(func_2(vec4<u32>(~4294967295u, 14217u, countOneBits(arg_1.c), arg_1.b.x)) << (max(~_wgslsmith_mod_vec2_u32(u_input.a.wy, u_input.a.ww), vec2<u32>(firstLeadingBit(arg_1.b.x), ~0u)) % vec2<u32>(32u)), -1i, arg_1.d.a >> (min(vec3<u32>(arg_1.b.x, 4294967295u, select(4294967295u, arg_1.c, arg_1.a.x)), ~(~arg_1.d.a)) % vec3<u32>(32u)), -527f);
    var var_1 = firstTrailingBit(~4294967295u);
    global4 = array<Struct_1, 10>();
    var_1 = 4294967295u;
    var var_2 = arg_1.d.e.a;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x || global2.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-299f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f + 243f)))));
    var var_2 = all(vec2<bool>(!(func_1(Struct_1(-2250f), Struct_4(vec4<bool>(var_0, global1.x, var_0, false), u_input.a.zz, u_input.c, Struct_2(u_input.a.www, Struct_1(360f), vec2<i32>(-5969i, u_input.d), u_input.d, Struct_1(-1337f)))) & false), true));
    var var_3 = u_input.d;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, 835f, 445f, -305f) + vec4<f32>(-1000f, -1111f, 953f, -689f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, 1391f, _wgslsmith_f_op_f32(182f + 1000f), _wgslsmith_f_op_f32(max(1308f, -609f))))), _wgslsmith_f_op_f32(-922f - -544f), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d, select(u_input.d, 2147483647i, false)), min(0i, -21618i)), u_input.b.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(948f, 708f) + vec2<f32>(-420f, -643f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-884f, 1156f))))))), -1i);
}

