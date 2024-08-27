struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: Struct_4;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(any(select(!vec4<bool>(global1.a.a, false, false, true), vec4<bool>(any(vec4<bool>(global1.a.a, global1.a.a, global1.a.a, global1.a.a)), !global1.a.a, all(vec2<bool>(global1.a.a, true)), all(vec2<bool>(false, true))), vec4<bool>(true, global1.b > -1432f, -2147483647i != u_input.b, global1.a.a && false))));
    let var_1 = global1.a.a;
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1608f));
    global2 = Struct_4(global1.b);
    let var_2 = Struct_2(Struct_1(any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, global1.a.a, true), true), !vec4<bool>(var_0.a, global1.a.a, true, true), vec4<bool>(true, var_0.a, true, global1.a.a)))), 1000f);
    return var_2.a;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = _wgslsmith_div_f32(arg_0, arg_0);
    let var_0 = 919f;
    global0 = 1000f;
    return func_2();
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global1 = Struct_2(func_2(), arg_1.x);
    var var_0 = vec3<i32>(arg_3.x & firstLeadingBit(-1i), 1i, _wgslsmith_mod_i32(select(_wgslsmith_mult_i32(i32(-1i) * -32667i, -arg_3.x), _wgslsmith_div_i32(2147483647i << (0u % 32u), -13126i), func_2().a || all(vec4<bool>(true, false, true, arg_0))), ~min(1326i, arg_3.x) << (~abs(u_input.c) % 32u)));
    var_0 = -arg_3.wxz | arg_3.zww;
    let var_1 = Struct_2(Struct_1(global1.a.a), 344f);
    let var_2 = arg_3.x;
    return Struct_1(func_2().a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_4(_wgslsmith_div_f32(global2.a, global2.a));
    var var_1 = vec2<i32>(max(abs(_wgslsmith_mod_i32(-1i, u_input.b ^ 28345i)), 0i), 10194i);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(ceil(var_0.a)), true)), 669f, -164f))), vec4<f32>(-591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-102f, global1.b))), global1.b, -547f));
    let var_3 = vec4<u32>(~u_input.a.x, 50121u, u_input.c, ~13942u);
    let var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.xxy, select(var_3.wzz, var_3.yzy, true)), reverseBits(min(var_3.xxy, var_3.wxz))) | var_3.zyz;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global1.a.a);
    global2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global2.a)), global1.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -971f), _wgslsmith_f_op_f32(496f * global2.a))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-281f * global2.a))))));
    let var_1 = vec2<u32>(u_input.a.x, 0u << (func_4(global1.a, func_3(false, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b, global1.b, 508f, global2.a), vec4<f32>(1878f, global2.a, global2.a, global1.b))), func_1(-661f), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -31904i, u_input.b, u_input.b), vec4<i32>(u_input.b, -60502i, -1i, 0i)))) % 32u));
    var var_2 = 10191i;
    let var_3 = !global1.a.a;
    let var_4 = abs(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, var_1.x), ~vec3<u32>(var_1.x, 4294967295u, 4294967295u))) ^ _wgslsmith_add_vec3_u32(firstLeadingBit(firstTrailingBit(vec3<u32>(4294967295u, 1u, 47779u))), vec3<u32>(select(u_input.c, var_1.x, var_3), u_input.c, u_input.a.x)));
    var var_5 = 2470f;
    var var_6 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -654f), global1.b, true))))));
    let var_7 = Struct_2(func_3(false, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(248f, 1000f, global1.b, global2.a), vec4<f32>(global2.a, -1131f, global2.a, 527f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.b, -843f, 1270f, global2.a), vec4<f32>(630f, global2.a, global1.b, 283f))))), Struct_1(func_2().a), vec4<i32>(u_input.b, u_input.b, u_input.b, ~u_input.b)), -397f);
    let x = u_input.a;
    s_output = StorageBuffer(8795i, _wgslsmith_clamp_vec4_u32(vec4<u32>(15055u, 0u, var_1.x, ~countOneBits(var_4.x)), vec4<u32>(_wgslsmith_sub_u32(var_4.x, u_input.c), u_input.c, var_1.x, firstTrailingBit(u_input.a.x)) | _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_4.x, 26226u, var_4.x, 554u)), vec4<u32>(1u, u_input.c, 32786u, 143825u) ^ vec4<u32>(var_4.x, var_4.x, u_input.a.x, u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(43733u, var_1.x, 0u, 4294967295u) << (vec4<u32>(1u, 68024u, var_1.x, 37921u) % vec4<u32>(32u)), ~vec4<u32>(var_4.x, 4294967295u, 4294967295u, var_4.x)) | min(~vec4<u32>(var_1.x, var_1.x, u_input.a.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, u_input.c, 0u, u_input.c), vec4<u32>(var_4.x, var_4.x, 4604u, var_4.x), vec4<u32>(5037u, u_input.c, var_1.x, 1u)))), reverseBits(vec4<u32>(_wgslsmith_mod_u32(1u, firstTrailingBit(var_4.x)), u_input.c, u_input.c, ~18291u)));
}

