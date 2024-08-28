struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: Struct_3,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32 = 1000f;

var<private> global2: i32 = -10727i;

var<private> global3: array<vec4<bool>, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global0 = vec4<bool>(true, global0.x, _wgslsmith_add_u32(~(~26691u), ~_wgslsmith_dot_vec4_u32(arg_0, arg_0)) < ~94986u, true != !global0.x);
    var var_0 = vec4<f32>(929f, _wgslsmith_div_f32(638f, 416f), -734f, _wgslsmith_f_op_f32(-113f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(335f, -364f)), -653f, global0.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-544f - 1747f))))));
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_clamp_u32(4888u, 1u, ~(~arg_0.x)), _wgslsmith_mult_u32(~15010u, _wgslsmith_sub_u32(abs(arg_0.x), ~4294967295u))), 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = select(~vec2<u32>(4294967295u, arg_2.a), u_input.c.yz, !(!global0.zw));
    let var_1 = _wgslsmith_f_op_f32(abs(-817f));
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_3.b, arg_2.a), min(vec2<u32>(u_input.a.x, u_input.a.x << (4294967295u % 32u)), firstTrailingBit(vec2<u32>(arg_3.b, arg_3.a)))), u_input.a << (vec2<u32>(reverseBits(30952u << (arg_3.a % 32u)), _wgslsmith_div_u32(u_input.a.x, var_0.x) ^ arg_2.b) % vec2<u32>(32u)));
    var_0 = vec2<u32>(1u, var_0.x);
    var_0 = select(u_input.a, ~u_input.b, global0.yz);
    return !(!vec4<bool>(false, !any(vec2<bool>(false, global0.x)), !global0.x | select(global0.x, global0.x, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(18832u, var_0.x, 41646u, 9928u), vec4<u32>(0u, 1u, var_2.x, 4294967295u)) >= ~53741u));
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = func_2(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(max(arg_0.b, u_input.a), u_input.c.zz), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(963u, u_input.a.x), u_input.c.x, u_input.c.x), 0u, u_input.b.x)));
    global0 = !(!func_3(arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 474f, 1000f) - arg_0.a)), func_2(vec4<u32>(0u, u_input.b.x, arg_0.b.x, 32377u)), Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, arg_0.b), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))));
    global1 = 540f;
    global0 = vec4<bool>(false, !select(func_3(vec3<f32>(1000f, 2065f, 746f), _wgslsmith_f_op_vec3_f32(arg_0.a + arg_0.a), var_0, func_2(vec4<u32>(1u, arg_0.b.x, arg_0.b.x, arg_0.b.x))).x, global0.x, arg_0.b.x != var_0.b), global0.x, true);
    global0 = vec4<bool>(any(select(func_3(arg_0.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-858f, 386f, -1276f), arg_0.a, global0.zxz)), var_0, var_0).yzz, select(vec3<bool>(global0.x, global0.x, global0.x), global0.xxy, !global0.x), !vec3<bool>(true, global0.x, global0.x))), global0.x, any(vec2<bool>(true, true)), true);
    return _wgslsmith_mod_i32(reverseBits(1i), _wgslsmith_add_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(17308i, 2147483647i, -1i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-19396i, 2147483647i, 40147i, 1i), vec4<i32>(-13817i, 30190i, 16076i, -75454i), vec4<i32>(1i, -26522i, -15238i, 0i))), 1i), min(_wgslsmith_div_i32(-1i, _wgslsmith_add_i32(36579i, -27869i)), _wgslsmith_div_i32(~(-1i), 35299i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(36016u, 5290u), ~u_input.c.x, ~0u);
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(func_1(Struct_3(vec3<f32>(-1137f, -487f, 760f), vec2<u32>(0u, var_0.x))), _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-11794i, 1818i)));
    global2 = -(-abs(_wgslsmith_add_i32(-36245i, -1i)) | var_1.x);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f))), _wgslsmith_f_op_f32(634f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1530f * _wgslsmith_f_op_f32(f32(-1f) * -387f))))));
    var var_2 = Struct_5(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(-198f)), 1025f, 1000f), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 56581u), 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), countOneBits(u_input.a)), select(u_input.c.zx, _wgslsmith_sub_vec2_u32(var_0.xz, vec2<u32>(u_input.b.x, var_0.x)), select(vec2<bool>(global0.x, false), global0.ww, global0.wx)))));
    var var_3 = Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a.a * vec3<f32>(var_2.a.a.x, -1215f, -203f)), vec3<f32>(var_2.a.a.x, 175f, 1591f)))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~var_1.x), abs(~vec4<i32>(var_1.x, var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(60769i, var_1.x, 41293i, var_1.x), vec4<i32>(var_1.x, var_1.x, 26682i, 2147483647i)), var_1.x)), vec3<i32>(-var_1.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x & var_1.x, ~var_1.x)), countOneBits(-35718i)), _wgslsmith_f_op_f32(max(var_2.a.a.x, var_2.a.a.x)));
}

