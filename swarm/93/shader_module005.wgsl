struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<u32>, 19>;

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(u_input.d, 23u)];
    let var_2 = false & (true & any(vec4<bool>(true, true, true, true)));
    global3 = array<Struct_1, 31>();
    var var_3 = global3[_wgslsmith_index_u32(u_input.b.x, 31u)];
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(var_3.b.x, _wgslsmith_f_op_f32(floor(-898f)), all(!vec4<bool>(false, var_2, var_3.a, var_2)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.b.x)) * _wgslsmith_f_op_f32(-1226f - _wgslsmith_f_op_f32(521f + var_3.b.x))) * _wgslsmith_f_op_f32(-1578f + _wgslsmith_div_f32(var_3.b.x, -504f))), all(vec2<bool>(var_2, true))));
}

fn func_4(arg_0: Struct_2) -> bool {
    global2 = array<vec3<u32>, 19>();
    var var_0 = ~(~global1.wz);
    global2 = array<vec3<u32>, 19>();
    var var_1 = vec3<f32>(arg_0.d, arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-244f)) * -1457f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-280f))) + -1504f)));
    var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-291f, -614f, var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_0.b.x), 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(294f, 653f, arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0.b.x, arg_0.d)))))));
    return var_0.x <= max(var_0.x, 2325u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    global2 = array<vec3<u32>, 19>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1308f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(ceil(1764f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-981f)), _wgslsmith_f_op_f32(f32(-1f) * -407f)))))), -217f));
    global0 = array<i32, 23>();
    let var_1 = ~reverseBits(select(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(49315u, u_input.b.x, 24075u, 0u)) ^ select(arg_0, arg_0, vec4<bool>(false, true, false, true)), u_input.c, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1516f * var_0)))) * vec3<f32>(-663f, 760f, var_0));
    return Struct_3(Struct_1(true, _wgslsmith_f_op_vec2_f32(var_2.yz * _wgslsmith_f_op_vec2_f32(var_2.yz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, -229f))))), var_2.x, Struct_2(abs(_wgslsmith_sub_u32(abs(arg_0.x), 55736u)), vec2<f32>(_wgslsmith_div_f32(1207f, _wgslsmith_f_op_f32(floor(var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -183f)), 0i, -742f), func_4(Struct_2(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yy)), -(global0[_wgslsmith_index_u32(var_1.x, 23u)] | -10557i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -822f))), -157f);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(548f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * -590f) + arg_0.d)), _wgslsmith_f_op_vec2_f32(arg_0.b + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.d - -199f), _wgslsmith_f_op_f32(f32(-1f) * -207f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b * vec2<f32>(arg_0.d, -1082f))))));
    var var_1 = var_0.b.x;
    global0 = array<i32, 23>();
    let var_2 = u_input.e;
    var var_3 = arg_0.c;
    return func_2(~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 31>();
    var var_0 = func_1(Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(global1.x, 0u)) ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(global1.x, 1u), global1.x), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1967f, -1354f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-525f))))), global0[_wgslsmith_index_u32(0u, 23u)], 1000f));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 13120i, countOneBits(-39734i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(_wgslsmith_mult_i32(u_input.e, -14158i), -u_input.e, var_0.c.c), firstLeadingBit(vec3<i32>(-21269i, 0i, 53440i) | firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], 0i, 2147483647i)))));
    let var_2 = Struct_5(_wgslsmith_sub_vec2_u32(~vec2<u32>(global1.x, var_0.c.a) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global1.wy, vec2<u32>(0u, global1.x)), vec2<u32>(var_0.c.a, 17686u)) % vec2<u32>(32u)), global1.wz), vec4<i32>(max(-countOneBits(32868i), ~0i), -(~_wgslsmith_mod_i32(-13704i, u_input.e)), reverseBits(-(~var_1.x)), countOneBits(var_1.x)), var_0.a.a, Struct_4(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_sub_i32(-1i, 1i)), i32(-1i) * -10605i), u_input.c.x, global3[_wgslsmith_index_u32(abs(61416u), 31u)], vec4<u32>(6113u, ~_wgslsmith_div_u32(4294967295u, 4294967295u), global1.x, 4294967295u), Struct_3(func_2(~u_input.c).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), var_0.a.b.x), func_2(_wgslsmith_div_vec4_u32(vec4<u32>(30049u, var_0.c.a, 0u, var_0.c.a), vec4<u32>(57063u, 89125u, u_input.d, 66589u))).c, func_1(func_2(vec4<u32>(4294967295u, var_0.c.a, 1u, u_input.c.x)).c).d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.a.b.x)))))));
    let var_3 = ~(~countOneBits(u_input.c.xz | min(vec2<u32>(0u, u_input.c.x), var_2.a)));
    var_0 = func_2(vec4<u32>(select(_wgslsmith_add_u32(var_0.c.a, 4294967295u), func_2(var_2.d.d).c.a, true), var_3.x, var_3.x, ~var_0.c.a << (1u % 32u)) >> (~var_2.d.d % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_2.b));
}

