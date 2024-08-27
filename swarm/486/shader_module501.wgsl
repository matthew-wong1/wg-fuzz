struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_3,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 57372u, 77489u);

var<private> global2: vec2<f32> = vec2<f32>(1336f, 892f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> vec4<bool> {
    var var_0 = u_input.b.xw;
    return global0[_wgslsmith_index_u32(~(arg_0.c.x >> (abs(~(~global1.x)) % 32u)), 30u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_u32(firstTrailingBit(abs(global1.x)), ~(~0u) << (u_input.a % 32u)) >> (1u % 32u);
    global1 = _wgslsmith_mod_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_2, u_input.a), vec3<u32>(u_input.a, 1u, 4952u) & vec3<u32>(25379u, arg_2, u_input.a)) << ((vec3<u32>(arg_2, 15541u, global1.x) >> (~vec3<u32>(0u, arg_2, arg_2) % vec3<u32>(32u))) % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(global1.x, _wgslsmith_sub_u32(~96274u, ~global1.x), 1u)));
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(352f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1060f, -1256f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1100f) * vec2<f32>(global2.x, 1583f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1000f))))), true)), select(!select(!arg_0.xw, !arg_0.zz, u_input.b.x <= u_input.b.x), vec2<bool>(arg_1, any(arg_0.xy)), vec2<bool>(!func_3(Struct_4(global2.x, arg_0.x, vec4<u32>(0u, 40450u, u_input.a, arg_2)), 81507i).x, !(!arg_1)))));
    var_0 = ~(~(global1.x >> (~(~6375u) % 32u)));
    let var_1 = !(!vec4<bool>(all(select(arg_0.wy, vec2<bool>(false, arg_1), false)), func_3(Struct_4(global2.x, false, vec4<u32>(2348u, 1u, arg_2, u_input.a)), _wgslsmith_sub_i32(-2147483647i, u_input.b.x)).x, false, min(4294967295u, 0u) != u_input.a));
    return func_3(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -208f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-712f + -1000f)))), var_1.x, vec4<u32>(0u, 0u | u_input.a, ~arg_2, countOneBits(32713u)) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, 4294967295u, global1.x, 4294967295u), vec4<u32>(40048u, global1.x, 1u, arg_2))), u_input.b.x);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: Struct_4) -> bool {
    global1 = ~arg_1.a.c.yzw;
    var var_0 = !select(func_4(func_3(Struct_4(1919f, true, arg_0.c), u_input.b.x), !all(vec2<bool>(false, arg_1.a.b)), global1.x), global0[_wgslsmith_index_u32(4294967295u, 30u)], true);
    let var_1 = arg_1.c.b.a;
    let var_2 = var_0.x;
    global1 = arg_3.c.wxx;
    return !(u_input.b.x == u_input.b.x);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_5 {
    let var_0 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), ~vec2<u32>(global1.x, 1u)), global1.x, 4294967295u) & reverseBits(vec3<u32>(u_input.a, min(4294967295u, 0u), u_input.a));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1408f * global2.x)) + global2.x), global2.x, !(!func_2(Struct_4(-1000f, false, vec4<u32>(var_0.x, global1.x, 1u, 0u)), Struct_5(Struct_4(arg_1.x, false, vec4<u32>(45767u, 12700u, u_input.a, global1.x)), 735i, Struct_3(4294967295u, Struct_1(vec4<f32>(global2.x, 1000f, global2.x, arg_1.x), vec3<f32>(-962f, -186f, arg_1.x), global1.x, arg_1.xz)), u_input.b.yxz, arg_1.x), arg_1.yy, Struct_4(1898f, arg_0, vec4<u32>(global1.x, global1.x, 4294967295u, 25695u)))))), arg_0, countOneBits(vec4<u32>(~(~32171u), ~(~var_0.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, global1.x), vec3<u32>(0u, var_0.x, 4294967295u))), global1.x)));
    global2 = _wgslsmith_f_op_vec2_f32(max(arg_1.yy, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.xz + arg_1.yy)))));
    var var_2 = _wgslsmith_mod_u32(var_1.c.x, var_1.c.x);
    var var_3 = ~_wgslsmith_add_vec3_u32(var_0, countOneBits(~var_0)) << (_wgslsmith_div_vec3_u32(abs(~vec3<u32>(global1.x, 4294967295u, 86988u) & _wgslsmith_mult_vec3_u32(var_0, var_0)), ~var_1.c.xyx) % vec3<u32>(32u));
    return Struct_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(689f + arg_1.x) * 639f), 1i == u_input.b.x, _wgslsmith_add_vec4_u32(countOneBits(var_1.c), var_1.c)), _wgslsmith_add_i32(1i, countOneBits(1i ^ (u_input.b.x << (55803u % 32u)))), Struct_3(~28455u ^ u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, 1122f, var_1.a, global2.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1)), _wgslsmith_div_vec3_f32(arg_1, vec3<f32>(global2.x, var_1.a, var_1.a))), ~u_input.a & firstTrailingBit(var_3.x), arg_1.xz)), ~u_input.b.zzz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-805f, var_1.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(u_input.a, 6864u, ~u_input.a);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, 3030f)))));
    var var_1 = func_1(any(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, false))), vec3<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
    var var_2 = var_1.c;
    global1 = ~vec3<u32>(_wgslsmith_clamp_u32(10942u, _wgslsmith_add_u32(var_2.b.c, var_1.a.c.x), _wgslsmith_mod_u32(17080u, ~var_1.a.c.x)), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(global1.x, var_1.a.c.x), _wgslsmith_dot_vec4_u32(func_1(true, var_2.b.b).a.c, vec4<u32>(u_input.a, 937u, 45436u, u_input.a))), 0u);
    var var_3 = false;
    var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~var_1.a.c.yx >> (_wgslsmith_mod_vec2_u32(global1.zx, global1.xz) % vec2<u32>(32u))), vec2<u32>(4294967295u, _wgslsmith_add_u32(~var_2.b.c, ~53344u))));
}

