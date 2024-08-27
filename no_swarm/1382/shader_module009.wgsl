struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<Struct_1, 30>;

var<private> global4: array<vec2<bool>, 29>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    global4 = array<vec2<bool>, 29>();
    global4 = array<vec2<bool>, 29>();
    return global3[_wgslsmith_index_u32(~u_input.c, 30u)];
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> i32 {
    var var_0 = vec3<i32>(firstTrailingBit(arg_2.d.a), u_input.b, 88709i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, arg_2.a) - -174f), arg_2.d, !vec3<bool>(_wgslsmith_f_op_f32(arg_2.a - arg_2.a) != _wgslsmith_f_op_f32(376f * arg_2.a), !all(vec2<bool>(global2.x, arg_2.c.x)), true), func_2());
    global0 = false;
    var_0 = vec3<i32>(arg_2.b.a, -(arg_1 ^ 2147483647i), firstLeadingBit(42022i));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a, -1000f)));
    return ~var_0.x;
}

fn func_3(arg_0: f32) -> vec3<i32> {
    var var_0 = Struct_2(-106f, Struct_1(_wgslsmith_mult_i32(~u_input.b, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, u_input.b), 1i))), !select(vec3<bool>(any(vec4<bool>(global2.x, false, true, global2.x)), any(vec4<bool>(false, global2.x, global2.x, true)), any(vec3<bool>(global2.x, true, global2.x))), !(!vec3<bool>(global2.x, global2.x, global2.x)), true), Struct_1(u_input.b));
    var var_1 = true;
    var var_2 = !select(!select(var_0.c, !var_0.c, global2.x), select(!var_0.c, var_0.c, true), var_0.c.x);
    let var_3 = true;
    global2 = !select(var_0.c, var_0.c, select(!select(vec3<bool>(false, false, true), var_0.c, true), var_0.c, !vec3<bool>(false, var_3, true)));
    return reverseBits(-(_wgslsmith_div_vec3_i32(~vec3<i32>(6554i, -22974i, var_0.d.a), reverseBits(vec3<i32>(var_0.b.a, var_0.d.a, -3132i))) | vec3<i32>(~u_input.b, var_0.b.a, 1i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<i32>) -> i32 {
    global1 = array<vec2<u32>, 27>();
    var var_0 = Struct_1(~12687i);
    let var_1 = select(select(vec4<bool>(!(global2.x | true), global2.x, true, true), select(vec4<bool>(all(vec3<bool>(false, false, true)), global2.x, false, false), vec4<bool>(true, !global2.x, true, false | global2.x), !global2.x || true), !vec4<bool>(true, all(vec3<bool>(global2.x, true, global2.x)), all(vec4<bool>(global2.x, true, true, global2.x)), !global2.x)), select(select(vec4<bool>(false && global2.x, !global2.x, global2.x, global2.x), select(!vec4<bool>(global2.x, true, true, global2.x), !vec4<bool>(global2.x, global2.x, true, true), global2.x == global2.x), !(!vec4<bool>(global2.x, global2.x, false, global2.x))), !vec4<bool>(true, !global2.x, any(global4[_wgslsmith_index_u32(u_input.a, 29u)]), arg_3.x <= u_input.b), global2.x), !(!all(vec3<bool>(true, true, global2.x))));
    var var_2 = Struct_1(i32(-1i) * -var_0.a);
    var var_3 = vec3<f32>(-168f, -1186f, _wgslsmith_f_op_f32(sign(474f)));
    return _wgslsmith_div_i32(19079i, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.x;
    let var_0 = Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(0i, u_input.b, u_input.b), u_input.b, u_input.b, u_input.b & u_input.b), vec4<i32>(34817i, func_1(true, u_input.b, Struct_2(398f, Struct_1(-2147483647i), vec3<bool>(false, true, true), Struct_1(u_input.b)), global2.x), max(-38206i, 48663i), ~(-2147483647i))));
    var var_1 = ~u_input.b ^ 15046i;
    var_1 = ~func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1019f, -1850f, -662f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1697f, 644f, 540f, -1889f))), ~((i32(-1i) * -2147483647i) << (~u_input.a % 32u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-955f, -305f, 437f), vec3<f32>(1349f, -435f, 786f))))), abs(min(vec3<i32>(var_0.a, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, var_0.a))) | _wgslsmith_mult_vec3_i32(~vec3<i32>(9358i, u_input.b, u_input.b), func_3(-506f)));
    var var_2 = vec4<f32>(-801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f * _wgslsmith_f_op_f32(f32(-1f) * -959f)))), -1197f, -153f);
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

