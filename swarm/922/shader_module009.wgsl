struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

var<private> global2: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(45128u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 122176u, 5555u, 38386u), vec4<u32>(0u, 35001u, 54088u, 4294967295u), vec4<u32>(27282u, 1u, 0u, 43360u), vec4<u32>(1u, 33959u, 54285u, 19176u), vec4<u32>(4294967295u, 0u, 0u, 23725u), vec4<u32>(41854u, 92175u, 4294967295u, 23689u), vec4<u32>(0u, 0u, 4294967295u, 27206u), vec4<u32>(4294967295u, 1u, 1u, 21734u), vec4<u32>(22579u, 1u, 19908u, 0u), vec4<u32>(0u, 38805u, 0u, 33285u), vec4<u32>(91463u, 4294967295u, 56591u, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.a.b.c.x), _wgslsmith_f_op_f32(-global1.a.a.a.x));
    var var_1 = global1.a;
    return !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c.x) * global1.a.a.a.x) < global1.a.b.a.x, global1.c, all(vec2<bool>(true, global1.c)) || all(select(vec3<bool>(true, global1.c, global1.c), vec3<bool>(false, global1.c, true), global1.c)), all(!vec2<bool>(true, global1.c)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_2 {
    global0 = -_wgslsmith_dot_vec3_i32(~global1.a.b.b.zyy, global1.a.a.b.ywx >> (~u_input.a % vec3<u32>(32u))) << (_wgslsmith_clamp_u32(global1.b, u_input.a.x, ~(~global1.b ^ u_input.a.x)) % 32u);
    var var_0 = select(vec4<bool>(any(vec2<bool>(true, !global1.c)), global1.c & true, true, true), !vec4<bool>(!global1.c, false, false, false), !func_3());
    var var_1 = Struct_3(global1.a, 0u, global1.c);
    global0 = (0i ^ u_input.b.x) | firstLeadingBit(-21082i);
    global0 = global1.a.b.b.x;
    return Struct_2(global1.a.a, global1.a.a);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = vec3<bool>(arg_3.c, arg_3.c, all(select(select(func_3().xw, vec2<bool>(true, false), select(vec2<bool>(global1.c, arg_3.c), vec2<bool>(true, arg_3.c), arg_3.c)), !select(vec2<bool>(true, arg_3.c), vec2<bool>(arg_3.c, arg_3.c), vec2<bool>(true, arg_3.c)), !(true | global1.c))));
    let var_1 = Struct_2(arg_2.b, arg_3.a.a);
    global0 = 0i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_2.a.c.xw)))) - _wgslsmith_f_op_vec2_f32(select(arg_2.b.c.zx, vec2<f32>(-505f, _wgslsmith_f_op_f32(-1000f * arg_2.b.a.x)), global1.c))), var_1.b.b, arg_3.a.a.c);
    var var_3 = u_input.a;
    return min(arg_2.b.b.yzw, ~(~(arg_1.wyw | var_2.b.yww))) | vec3<i32>(-(~arg_1.x), min(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-29072i, -2147483647i), 31260i & arg_1.x, abs(arg_0)), arg_3.a.b.b.x), 45813i);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = global1.a.a.b.xzy;
    let var_1 = abs(func_4(arg_0, reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(global1.a.b.b, vec4<i32>(9093i, u_input.c, -39070i, 67938i)), max(global1.a.b.b, global1.a.a.b))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(global1.a.b.a)), firstTrailingBit(vec4<i32>(-53487i, u_input.b.x, var_0.x, -2147483647i)), vec4<f32>(global1.a.b.a.x, global1.a.b.a.x, 707f, global1.a.b.c.x)), Struct_1(vec2<f32>(global1.a.a.c.x, 532f), ~vec4<i32>(var_0.x, arg_0, 1i, 51723i), _wgslsmith_f_op_vec4_f32(min(global1.a.b.c, global1.a.a.c)))), Struct_3(func_2(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a.a.x, global1.a.b.a.x) * vec2<f32>(-595f, 658f))), select(46775u, global1.b, true), global1.c)));
    global0 = -2284i;
    global2 = array<vec4<u32>, 12>();
    global2 = array<vec4<u32>, 12>();
    return _wgslsmith_mult_i32(0i, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    var var_0 = global1.a.a;
    global0 = select(abs(select(-global1.a.a.b.x & 0i, var_0.b.x, global1.c)), _wgslsmith_mod_i32(_wgslsmith_add_i32(8827i, u_input.b.x), func_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(-2147483647i, global1.a.b.b.x, u_input.c, -1i)), firstTrailingBit(u_input.c), ~0i))), !(!global1.c));
    let var_1 = func_3().xyz;
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1016f, 889f) + vec2<f32>(-481f, 1253f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.b.a) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.x, global1.a.a.a.x), vec2<f32>(global1.a.b.a.x, global1.a.b.c.x)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.b.a) + var_0.c.wy), _wgslsmith_f_op_vec2_f32(-var_0.a)))));
    global1 = Struct_3(func_2(var_2.x, vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -382f))))), u_input.a.x, !any(!vec2<bool>(true, global1.c)));
    let var_3 = vec4<bool>(true & any(!select(vec4<bool>(true, global1.c, global1.c, false), vec4<bool>(global1.c, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, global1.c, var_1.x))), true, !select(func_3().x, !all(var_1.xx), global1.c), var_1.x);
    global0 = i32(-1i) * -var_0.b.x;
    global1 = Struct_3(func_2(-488f, var_0.c.wz), ~12415u, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, _wgslsmith_mult_i32(27674i, -select(-2147483647i, 50434i, global1.c)), global1.a.b.b.x));
}

