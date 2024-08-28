struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(-1000f, 1604u), Struct_3(1010f, 0u), Struct_3(928f, 4294967295u), Struct_3(595f, 1u), Struct_3(1184f, 62963u), Struct_3(-955f, 72342u));

var<private> global1: array<Struct_2, 19>;

var<private> global2: i32;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 19u)];
    let var_1 = u_input.e;
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    global0 = array<Struct_3, 6>();
    return max(~countOneBits(vec4<u32>(~var_1, 1u, ~u_input.e, ~6062u)), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.e, 42125u, arg_2), vec4<u32>(var_1, var_1, arg_2, var_0.e), vec4<u32>(u_input.e, 0u, 4294967295u, var_1)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = ~(~abs(u_input.e));
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 1u, 1u, 13383u), ~func_2(Struct_1(1319f, vec2<i32>(arg_1.b.x, u_input.d.x), vec2<bool>(false, false), vec2<f32>(arg_2.d.x, arg_1.a), arg_1.d.x), Struct_1(864f, vec2<i32>(arg_2.b.x, -2147483647i), arg_1.c, arg_2.d, arg_2.d.x), u_input.e, vec3<f32>(arg_2.a, arg_1.d.x, 919f))), ~min(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 60842u, u_input.e), vec4<u32>(4294967295u, 44970u, u_input.e, 11429u)), func_2(arg_2, arg_2, u_input.e, vec3<f32>(arg_2.a, arg_2.a, -1297f))));
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(firstLeadingBit(arg_0.zww), abs(-u_input.d.zyy) ^ -_wgslsmith_clamp_vec3_i32(arg_0.wwz, u_input.d.wxz, vec3<i32>(arg_2.b.x, arg_2.b.x, arg_1.b.x))), arg_2, vec2<bool>(arg_1.c.x, any(vec3<bool>(true, arg_1.c.x, !arg_2.c.x))), arg_2, ~firstLeadingBit(~var_0) & ~4294967295u);
    var var_2 = Struct_3(var_1.d.a, abs(_wgslsmith_div_u32(~21736u, u_input.e)));
    var var_3 = false;
    return ~var_2.b;
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, (_wgslsmith_sub_u32(29114u, u_input.e) << (5301u % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, u_input.c.x, 17304u), func_2(Struct_1(-1833f, vec2<i32>(u_input.b, u_input.b), vec2<bool>(arg_0.x, true), vec2<f32>(-559f, -516f), 2823f), Struct_1(-1767f, vec2<i32>(55039i, u_input.d.x), arg_0.xx, vec2<f32>(2440f, -2120f), 318f), u_input.e, vec3<f32>(-1010f, 1297f, -315f)))), ~vec2<u32>(u_input.e, select(u_input.c.x << (18420u % 32u), u_input.c.x, false))), 6u)];
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(func_3(-_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.b), vec4<i32>(0i, u_input.d.x, u_input.d.x, u_input.b), u_input.d), Struct_1(var_0.a, vec2<i32>(45946i, u_input.b) ^ u_input.d.yy, !arg_0.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(866f, var_0.a)), _wgslsmith_f_op_f32(trunc(var_0.a))), Struct_1(574f, u_input.d.zy, !vec2<bool>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-576f, var_0.a) + vec2<f32>(961f, var_0.a)), var_0.a)), abs(~var_0.b)), 19u)];
    let var_2 = var_1.d;
    var var_3 = global0[_wgslsmith_index_u32(0u, 6u)];
    global2 = i32(-1i) * -2147483647i;
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b, var_0.b), vec3<u32>(var_3.b, 7049u, 0u) ^ vec3<u32>(115263u, 58936u, var_3.b)), ~24266u), (~max(var_0.b, 147595u) & (var_0.b >> ((var_3.b >> (0u % 32u)) % 32u))) >> (select(~_wgslsmith_mod_u32(4294967295u, 5938u), 28965u | reverseBits(u_input.c.x), any(!arg_0.yzy)) % 32u)), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1508f), 37122u);
    var_0 = func_1(vec4<bool>(true, true, true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 1570f, var_0.a, var_0.a), vec4<f32>(-160f, var_0.a, 839f, var_0.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.a), 118f, var_0.a)), true)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, 881f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)), 881f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1970f, 1068f, var_0.a, -2095f), vec4<f32>(-244f, -123f, var_0.a, var_0.a), all(vec3<bool>(true, true, false)))))), select(vec4<bool>(false, u_input.a == u_input.a, true, var_0.b >= var_0.b), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), true))));
    let var_2 = Struct_3(342f, ~max(4294967295u, u_input.e) & var_0.b);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1562f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1000f, -962f, var_0.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xz + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, -440f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2020f, -864f)) * _wgslsmith_f_op_vec2_f32(max(var_1.ww, vec2<f32>(var_2.a, 266f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, var_2.a), var_1.zy)), _wgslsmith_div_vec2_f32(vec2<f32>(499f, 1651f), vec2<f32>(696f, var_2.a)))), !all(vec3<bool>(false, false, false))))) + _wgslsmith_f_op_vec2_f32(-var_1.wx));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wx, countOneBits(~(~vec3<u32>(48937u, u_input.c.x, var_2.b))), u_input.d, u_input.d.zzx);
}

