struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<Struct_4, 23>;

var<private> global3: array<vec4<f32>, 12>;

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<f32>(-1635f, 2042f)), Struct_2(vec2<f32>(-1035f, 1000f)), Struct_2(vec2<f32>(-707f, 639f)), Struct_2(vec2<f32>(-842f, 1816f)), Struct_2(vec2<f32>(3389f, -445f)), Struct_2(vec2<f32>(-1000f, -1000f)), Struct_2(vec2<f32>(-1101f, -1213f)), Struct_2(vec2<f32>(110f, 1446f)), Struct_2(vec2<f32>(-1804f, 2866f)), Struct_2(vec2<f32>(530f, -1327f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    global0 = array<Struct_1, 31>();
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -119f);
    let var_2 = vec2<bool>(true, all(vec2<bool>(true | any(vec3<bool>(arg_0.x, arg_3.c.x, arg_3.c.x)), _wgslsmith_f_op_f32(var_1 - 627f) <= _wgslsmith_f_op_f32(f32(-1f) * -427f))));
    let var_3 = !(!all(arg_3.c.zy));
    return arg_3.c.x;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1048f), vec2<f32>(-499f, -584f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1423f, 181f) - vec2<f32>(1942f, 191f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(step(-453f, -1032f))), !select(false, true, false))))));
    let var_1 = u_input.a.zxw;
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(1697f, var_2)), _wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(var_0.x, var_2)), true))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), var_0.x));
    let var_4 = _wgslsmith_f_op_f32(var_3.x * -1485f);
    return Struct_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-872f, 522f, var_2)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2422f, -1233f, -519f)))))))), select(select(vec3<bool>(true, true, var_3.x < var_0.x), vec3<bool>(true, select(true, true, true), func_3(vec4<bool>(false, true, true, true), -1909f, vec2<i32>(u_input.b, u_input.b), Struct_1(4294967295u, vec3<f32>(1482f, 345f, 1419f), vec3<bool>(false, false, false), true, var_3.x))), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), false), !any(vec2<bool>(true, true)), 1595f);
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_mod_i32(u_input.b | -(~firstTrailingBit(u_input.b)), _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)), vec4<i32>(15251i, 0i, u_input.b, u_input.b))), -1i, u_input.b));
    global3 = array<vec4<f32>, 12>();
    var var_0 = true;
    let var_1 = Struct_3(select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, false), false), vec4<bool>(any(vec2<bool>(true, false)), true, true, false), true), select(vec4<bool>(false, select(false, true, false), all(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), true), true));
    var var_2 = countOneBits(_wgslsmith_add_i32(~reverseBits(0i), _wgslsmith_sub_i32(~u_input.b, _wgslsmith_sub_i32(-2147483647i, u_input.b)))) ^ _wgslsmith_mod_i32(u_input.b, 4334i & -_wgslsmith_mult_i32(u_input.b, u_input.b));
    return func_2(_wgslsmith_mult_u32(reverseBits(u_input.c.x) & (u_input.a.x & 80985u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 196u), _wgslsmith_div_u32(1u, u_input.a.x))), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 12>();
    global4 = array<Struct_2, 10>();
    global4 = array<Struct_2, 10>();
    var var_0 = vec4<u32>(u_input.c.x, u_input.a.x | _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(76802u, u_input.a.x), vec2<u32>(u_input.c.x, u_input.c.x)), ~4294967295u, 0u | u_input.c.x), 1u, ~1u) | (~vec4<u32>(u_input.c.x, ~u_input.a.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~u_input.c.x) & select(~vec4<u32>(5765u, 32849u, 28500u, 11355u) & (vec4<u32>(26840u, 0u, 4294967295u, 50419u) << (u_input.a % vec4<u32>(32u))), vec4<u32>(1u, 4294967295u << (0u % 32u), ~u_input.a.x, u_input.c.x), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true))));
    var var_1 = func_1();
    let var_2 = vec2<bool>(true, true);
    var_0 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~(-u_input.b), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f + _wgslsmith_f_op_f32(abs(var_1.e))))), var_0.x << (~(~_wgslsmith_div_u32(0u, 33394u)) % 32u), ~(-2349i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1140f - -1000f)))));
}

