struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(29483u, 0u, 97308u);

var<private> global1: array<Struct_5, 19>;

var<private> global2: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-1277f, 1000f), vec2<f32>(1000f, 992f), vec2<f32>(-206f, -1000f), vec2<f32>(-583f, 378f), vec2<f32>(500f, -1000f), vec2<f32>(-856f, -1909f), vec2<f32>(-663f, -564f), vec2<f32>(323f, 983f), vec2<f32>(911f, -1363f), vec2<f32>(-100f, 2025f), vec2<f32>(604f, -1267f), vec2<f32>(1000f, -1651f), vec2<f32>(665f, 211f), vec2<f32>(943f, 624f), vec2<f32>(1018f, 1147f), vec2<f32>(176f, 544f), vec2<f32>(1829f, 138f), vec2<f32>(-1966f, -995f), vec2<f32>(838f, -1934f), vec2<f32>(1630f, 2376f), vec2<f32>(-484f, -284f), vec2<f32>(-860f, -640f), vec2<f32>(-814f, -133f), vec2<f32>(-1908f, 143f), vec2<f32>(874f, -519f), vec2<f32>(-134f, 1099f));

var<private> global3: array<vec2<bool>, 1>;

var<private> global4: array<vec3<f32>, 10>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    global0 = reverseBits(_wgslsmith_div_vec3_u32(u_input.c & ((vec3<u32>(0u, 34248u, 4294967295u) & u_input.c) ^ _wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(68745u, 1u, u_input.d))), u_input.c ^ vec3<u32>(u_input.a.x, ~1u, ~1u)));
    let var_0 = Struct_3(select(!vec4<bool>(false, true, !arg_0, !arg_0), !select(!vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, true, arg_0, arg_0), all(vec4<bool>(arg_0, false, arg_0, arg_0))), arg_0 | false), _wgslsmith_mod_u32(0u, ~(~(u_input.d ^ 4294967295u))));
    let var_1 = !(!vec4<bool>(arg_0, var_0.a.x, false, all(!var_0.a)));
    let var_2 = global0.zx;
    global4 = array<vec3<f32>, 10>();
    return _wgslsmith_f_op_f32(floor(arg_1.x));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_i32(2147483647i, -1i);
    var var_1 = Struct_1(0u <= global0.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, global2[_wgslsmith_index_u32(u_input.c.x, 26u)])) - -393f);
    let var_3 = Struct_1(true);
    global0 = u_input.c;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 + var_2), _wgslsmith_f_op_f32(func_3(true, global2[_wgslsmith_index_u32(global0.x, 26u)])))) - _wgslsmith_f_op_f32(sign(var_2))), -1198f));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>) -> f32 {
    var var_0 = vec2<bool>(false, any(select(vec3<bool>(arg_0.a.a && true, true, -1217f <= arg_0.c.a), vec3<bool>(!arg_0.a.a, arg_0.a.a, !arg_0.a.a), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(true))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + arg_0.c.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-976f)))), vec4<f32>(1000f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1192f * -1571f), -1000f) * -242f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(-212f + 831f))), _wgslsmith_f_op_f32(-var_1.x)))));
    var_0 = !vec2<bool>(any(!(!global3[_wgslsmith_index_u32(0u, 1u)])), var_0.x);
    var var_3 = max(vec4<i32>(-30868i, -1i, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(u_input.e, arg_1.x), 2147483647i), -1i), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(1i, arg_0.b)), arg_1.x, firstTrailingBit(u_input.b.x), min(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, 8983i, arg_1.x, -2147483647i), arg_1), -u_input.b.x))));
    return -477f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~arg_2.x, 19u)];
    var var_1 = max(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~arg_3 << (vec4<u32>(u_input.c.x, arg_3.x, arg_1.x, global0.x) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_3.x, 70032u, arg_1.x), vec4<u32>(0u, arg_3.x, arg_2.x, global0.x))), ~4294967295u), 0u);
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_clamp_i32(abs(-1i) | max(~var_0.b, reverseBits(_wgslsmith_clamp_i32(var_0.b, u_input.e, var_0.b))), u_input.e, -_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(-1i, ~var_0.b)));
    global2 = array<vec2<f32>, 26>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 26>();
    global0 = _wgslsmith_div_vec3_u32(vec3<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, u_input.d), vec4<u32>(u_input.a.x, 34967u, 7973u, u_input.c.x)), ~(~global0.x)), 1u, _wgslsmith_mod_u32(reverseBits(u_input.a.x), ~u_input.c.x)), u_input.c);
    let var_0 = true;
    var var_1 = u_input.b;
    global3 = array<vec2<bool>, 1>();
    var_1 = min(u_input.b, _wgslsmith_sub_vec2_i32(u_input.b, _wgslsmith_mult_vec2_i32(-abs(u_input.b), u_input.b)));
    var var_2 = var_0;
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(877f - _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(global0.x, 19u)], vec4<i32>(u_input.e, var_1.x, u_input.e, u_input.b.x)))), 349f, 1f, 1012f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, 217f, 797f, 1617f))))))), u_input.c, ~u_input.c, firstLeadingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 21325u, 36359u, 0u), vec4<u32>(global0.x, 15313u, global0.x, u_input.a.x), ~vec4<u32>(72088u, 4294967295u, 1u, 1u)), vec4<u32>(_wgslsmith_sub_u32(20839u, 1u), _wgslsmith_clamp_u32(32638u, global0.x, 53650u), global0.x, u_input.d), !select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, true, false, false)))));
    global0 = abs(max(vec3<u32>(~1u, u_input.a.x, global0.x) >> (max(vec3<u32>(global0.x, 15629u, u_input.d), ~vec3<u32>(u_input.c.x, 4294967295u, global0.x)) % vec3<u32>(32u)), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(3089i, var_1.x, u_input.b.x), vec4<i32>(~(-u_input.b.x), var_1.x, -18683i, ~(firstLeadingBit(var_1.x) << (_wgslsmith_clamp_u32(u_input.a.x, global0.x, global0.x) % 32u))), global0.x);
}

