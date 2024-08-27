struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-650f, 1741f);

var<private> global1: vec4<f32>;

var<private> global2: vec4<i32> = vec4<i32>(71672i, 17723i, -26342i, -1i);

var<private> global3: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(-27780i, 1i), vec2<i32>(-1i, 12963i), vec2<i32>(5561i, i32(-2147483648)), vec2<i32>(5308i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(1i, 1i), vec2<i32>(-1i, 32122i), vec2<i32>(-47002i, 0i), vec2<i32>(2147483647i, 32867i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = 501f;
    let var_1 = select(vec3<bool>(arg_0.a.b.b.x, arg_0.a.b.b.x, all(vec4<bool>(!arg_0.a.b.b.x, any(vec2<bool>(false, true)), true, true))), !select(vec3<bool>(global2.x > arg_2.x, arg_0.a.b.b.x && false, true | arg_0.a.b.b.x), vec3<bool>(true, true, any(vec3<bool>(arg_0.a.b.b.x, arg_0.a.b.b.x, false))), any(!arg_0.a.b.b)), arg_0.a.a < arg_0.a.a);
    var var_2 = Struct_2(u_input.d, Struct_1(1f, select(select(select(vec2<bool>(arg_0.a.b.b.x, arg_0.a.b.b.x), vec2<bool>(arg_0.a.b.b.x, false), vec2<bool>(arg_0.a.b.b.x, false)), !var_1.zy, select(arg_0.a.b.b, vec2<bool>(true, var_1.x), arg_0.a.b.b)), !arg_0.a.b.b, false)));
    global2 = u_input.b;
    let var_3 = arg_0;
    return var_2.b.b;
}

fn func_2() -> Struct_2 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1426f))), 2319f, global0.b, _wgslsmith_f_op_f32(937f - _wgslsmith_f_op_f32(trunc(global1.x))));
    global0 = Struct_4(-474f, -468f);
    let var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e, 39045u, 67002u), vec3<u32>(53073u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.e, 0u), vec3<u32>(u_input.d, u_input.e, u_input.e)), _wgslsmith_sub_u32(u_input.a, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(-1694f * global1.x), func_3(Struct_3(Struct_2(23987u, Struct_1(global0.a, vec2<bool>(true, false)))), u_input.b, abs(vec3<i32>(u_input.b.x, u_input.b.x, global2.x))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1563f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(442f)) * _wgslsmith_f_op_f32(max(var_0.a.b.a, global1.x))))), vec2<bool>(false, all(!(!vec3<bool>(var_0.a.b.b.x, false, var_0.a.b.b.x)))));
    global2 = -(abs(vec4<i32>(1i, u_input.c.x >> (var_0.a.a % 32u), -47006i, countOneBits(global2.x))) & vec4<i32>(firstTrailingBit(1i), global2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(4791i, 1i, 54792i), vec3<i32>(6045i, u_input.c.x, global2.x)), firstTrailingBit(u_input.b.yxx)), -1i));
    return var_0.a;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = abs(u_input.a | 4294967295u);
    let var_1 = func_2();
    var var_2 = arg_0;
    let var_3 = global1.x;
    var var_4 = vec2<u32>(max(49003u, 4294967295u), _wgslsmith_add_u32(var_1.a, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_2.a), vec2<u32>(4294967295u, var_1.a), vec2<u32>(1u, var_2.a)), max(vec2<u32>(1u, 58885u), vec2<u32>(118157u, u_input.d))), min(arg_0.a, u_input.a))));
    return var_4.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_2.a, arg_3.b);
    let var_1 = false;
    var var_2 = arg_2;
    var var_3 = !any(select(vec4<bool>(all(vec4<bool>(false, var_0.b.b.x, var_0.b.b.x, arg_1)), any(vec4<bool>(arg_0.x, true, false, true)), true, arg_1), vec4<bool>(func_2().b.b.x, arg_2.b.a == arg_3.b.a, false, true), any(select(vec3<bool>(false, true, false), vec3<bool>(var_1, var_2.b.b.x, arg_0.x), true))));
    var var_4 = any(vec3<bool>(true, all(!(!arg_0)), var_0.b.b.x));
    return var_2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, global0.b, global0.b)))));
    var_0 = global1.zzw;
    var var_1 = reverseBits(~(u_input.a << (~u_input.d % 32u)) | u_input.d);
    var var_2 = 2564f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_f32(-global0.b));
    var var_4 = max(-2074i, -_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-58669i), ~u_input.c.x), ~global2.wx << ((vec2<u32>(0u, u_input.d) & vec2<u32>(24404u, 63360u)) % vec2<u32>(32u))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-224f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -745f) + var_3)))), 831f, global1.x);
    let var_5 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(sign(global1.x)))))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, global2.x, u_input.c.x, 1i), vec4<i32>(-1i, 1037i, u_input.b.x, global2.x)), global2.x) >= -2147483647i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), select(vec2<bool>(select(false, true, true), select(true, true, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.d, u_input.e), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-320f * var_0.x), true)))), -619f, _wgslsmith_f_op_f32(func_4(vec2<bool>(false, true), all(select(vec4<bool>(true, false, false, var_5.b), vec4<bool>(true, false, false, var_5.c.b.x), false)), Struct_2(u_input.d, var_5.c), Struct_2(func_1(Struct_2(4294967295u, var_5.c), Struct_1(var_3, vec2<bool>(false, var_5.c.b.x)), u_input.b), var_5.c)))), _wgslsmith_div_vec2_f32(vec2<f32>(-152f, _wgslsmith_f_op_f32(select(global1.x, var_5.a, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yy * vec2<f32>(-449f, var_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, var_5.a))))), _wgslsmith_div_i32(-abs(-17969i), u_input.b.x));
}

