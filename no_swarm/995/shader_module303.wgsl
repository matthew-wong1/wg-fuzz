struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(640f, -1288f);

var<private> global1: vec4<bool>;

var<private> global2: Struct_5 = Struct_5(135f, 836f);

var<private> global3: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    let var_0 = reverseBits(u_input.a);
    global0 = Struct_5(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - arg_0.x), -1115f)));
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(786f * _wgslsmith_f_op_f32(min(global2.a, global0.b))))), arg_1);
    let var_1 = ~_wgslsmith_div_vec4_u32(~firstLeadingBit(min(var_0, vec4<u32>(u_input.b, var_0.x, var_0.x, 47866u))), u_input.a);
    var var_2 = Struct_2(arg_1, global3.a, global3.b);
    return global2.a;
}

fn func_2() -> Struct_5 {
    let var_0 = max(u_input.a.xw, firstLeadingBit(select(u_input.a.yy, u_input.a.yx, global1.yz)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(506f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a))), 139f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 204f, _wgslsmith_f_op_f32(-global2.a)) - vec3<f32>(_wgslsmith_f_op_f32(max(690f, 296f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, -1000f, global2.b)), _wgslsmith_f_op_f32(1112f + 641f))), _wgslsmith_f_op_f32(-global2.b))));
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(floor(global0.a))) - global2.a) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(global2.b + 1f));
    let var_2 = -(~global3.a.b.yy);
    return Struct_5(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(select(-591f, -173f, all(!select(vec4<bool>(global3.a.a.x, global1.x, global3.a.a.x, global1.x), global3.a.a, false)))));
}

fn func_1() -> u32 {
    global3 = Struct_4(Struct_1(!vec4<bool>(true, true, true, any(vec3<bool>(true, false, global3.a.a.x))), ~_wgslsmith_add_vec4_i32(-vec4<i32>(27025i, global3.a.b.x, global3.b, global3.a.b.x), vec4<i32>(40067i, 0i, global3.b, global3.b))), global3.b);
    global2 = func_2();
    var var_0 = countOneBits(firstLeadingBit(-(global3.b >> (4294967295u % 32u))) >> (_wgslsmith_div_u32(abs(111404u ^ u_input.a.x), _wgslsmith_sub_u32(~u_input.b, 0u)) % 32u));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), -877f, 717f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global0.a, global2.b)) * vec3<f32>(global0.a, 125f, global2.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, global2.b, 178f), vec3<f32>(-923f, -438f, -187f), vec3<bool>(global3.a.a.x, false, global1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, 1032f, 216f))))));
    global3 = Struct_4(Struct_1(global3.a.a, ~(~vec4<i32>(0i, global3.b, 29649i, global3.b))), 22371i);
    let var_1 = global3.a.b;
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(~global3.b, ~(global3.a.b.x >> (func_1() % 32u))), _wgslsmith_mod_i32(~(-5256i), 42143i));
    global0 = Struct_5(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(abs(-1144f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(2147483647i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b, global2.b), _wgslsmith_f_op_f32(select(490f, global0.a, global3.a.a.x)), global3.a.a.x || true)), 1739f, var_0.x, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1251f + global0.b))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, global0.b, 348f)))))), vec4<i32>(1i, 17691i, _wgslsmith_clamp_i32(global3.a.b.x, ~(-71071i), reverseBits(var_1.x)), var_1.x) | vec4<i32>(min(-global3.b, _wgslsmith_sub_i32(global3.b, var_1.x)), 0i, -2147483647i, 31088i), var_0);
}

