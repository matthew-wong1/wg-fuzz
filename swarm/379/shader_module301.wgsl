struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<u32, 17> = array<u32, 17>(1u, 1u, 1u, 3795u, 65061u, 0u, 14316u, 41138u, 4294967295u, 4294967295u, 62780u, 33744u, 1u, 79076u, 22990u, 4294967295u, 34404u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = select(!vec2<bool>(true, select(true, all(vec4<bool>(false, false, true, true)), -8898i < u_input.b.x)), vec2<bool>((false & all(vec2<bool>(false, true))) & all(vec4<bool>(true, true, true, true)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(true, true, false)))), select(true == any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), !(!any(vec4<bool>(false, false, true, true))), false));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var var_2 = -_wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.b.x, 2147483647i, u_input.c, u_input.c), vec4<i32>(2147483647i, -1i, u_input.c, 53089i)), vec4<i32>(select(1i, 71040i, var_0.x), _wgslsmith_mod_i32(55846i, u_input.c), -u_input.b.x, ~u_input.c)) | vec4<i32>(-_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(13900i, u_input.b.x, u_input.b.x, u_input.c), vec4<i32>(-14006i, 88921i, -1i, -44534i))), abs(_wgslsmith_mod_i32(-2147483647i, u_input.b.x)), abs(_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), -_wgslsmith_sub_i32(~u_input.b.x, -2147483647i));
    let var_3 = Struct_2(Struct_1(max(reverseBits(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, 27379i), vec3<i32>(2147483647i, u_input.b.x, -4161i))) << (1u % 32u), ~_wgslsmith_add_u32(~15696u, 0u), select(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, 36188u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)])), vec4<u32>(max(7939u, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), ~68585u, 73585u << (u_input.a.x % 32u), 1u), true), ~firstLeadingBit(u_input.a.x)));
    var_2 = min(vec4<i32>(14478i, var_2.x & 2147483647i, 0i, var_2.x), _wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 19984i, -27954i, 2147483647i), vec4<i32>(-21976i, var_2.x, -1i, -1i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_2.x, u_input.c, var_3.a.a), vec4<i32>(0i, 14068i, var_2.x, 12461i)), -vec4<i32>(u_input.b.x, -4711i, u_input.c, var_2.x), global2[_wgslsmith_index_u32(var_3.a.c.x, 17u)] != u_input.a.x)) & _wgslsmith_add_vec4_i32(select(vec4<i32>(var_3.a.a, var_3.a.a, 17301i, 0i) | vec4<i32>(1i, var_3.a.a, -40518i, var_3.a.a), ~vec4<i32>(-1i, -62456i, 15065i, var_3.a.a), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, var_0.x, true, false))), vec4<i32>(-2147483647i, -u_input.c, var_3.a.a, ~27811i)));
    return 0i;
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: vec4<bool>) -> i32 {
    global1 = _wgslsmith_clamp_i32(func_3() | -(~arg_2.x ^ u_input.c), abs(u_input.b.x), -u_input.b.x);
    var var_0 = Struct_5(arg_3.yyz);
    let var_1 = -52086i;
    let var_2 = u_input.a.x >= u_input.a.x;
    var_0 = Struct_5(vec3<bool>(!(!var_2), true, true & !any(vec2<bool>(true, false))));
    return -2147483647i;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global0 = array<vec3<f32>, 17>();
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 27459i), vec2<i32>(min(2147483647i, -21109i), -52232i));
    global0 = array<vec3<f32>, 17>();
    var var_1 = select(arg_0.yy, select(!arg_0.zy, select(vec2<bool>(!arg_0.x, arg_0.x), select(arg_0.zx, vec2<bool>(arg_0.x, arg_0.x), false), arg_0.xx), !any(!arg_0)), u_input.a.x <= (~(global2[_wgslsmith_index_u32(u_input.a.x, 17u)] | 4294967295u) << (1u % 32u)));
    var var_2 = vec4<bool>(arg_0.x, arg_0.x, _wgslsmith_div_i32(~_wgslsmith_sub_i32(u_input.c, u_input.b.x), min(-2147483647i, -u_input.b.x)) <= -(_wgslsmith_dot_vec4_i32(vec4<i32>(48801i, 7134i, 1i, 4081i), vec4<i32>(-2147483647i, u_input.c, u_input.b.x, -1i)) & func_2(u_input.a.x, Struct_5(arg_0), u_input.b, vec4<bool>(var_1.x, arg_0.x, var_1.x, arg_0.x))), !var_1.x);
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zy;
    global1 = -(~_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c, u_input.b.x ^ 0i), -35300i));
    var var_1 = vec2<bool>(!any(vec2<bool>(true, all(vec3<bool>(false, true, true)))), any(vec4<bool>(!any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true, !any(vec2<bool>(false, true)))));
    var_0 = vec2<u32>(3714u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1139f, -1503f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(var_1.x, var_1.x, var_1.x))), -1479f), vec2<f32>(-376f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-370f * -923f)))), any(vec4<bool>(true, true, all(vec3<bool>(var_1.x, true, var_1.x)), select(var_1.x, var_1.x, var_1.x))))));
}

