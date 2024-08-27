struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(vec3<bool>(arg_0.x > ~abs(u_input.b.x), arg_1.a.x, true), select(14733i, abs(~u_input.c.x) << (8267u % 32u), all(arg_1.a)));
    var var_1 = reverseBits(-11240i);
    global0 = array<vec3<u32>, 20>();
    var var_2 = false;
    var_2 = arg_1.a.x;
    return vec4<u32>(u_input.b.x, abs(_wgslsmith_mod_u32(6702u, 1u) & u_input.a), arg_0.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.x ^ _wgslsmith_sub_u32(arg_0.x, arg_0.x), 31765u), countOneBits(0u << (~arg_0.x % 32u))));
}

fn func_2(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = u_input.b.xy;
    global0 = array<vec3<u32>, 20>();
    var var_1 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~min(u_input.c.xx, u_input.c.yy), vec2<i32>(-44092i, u_input.c.x | 0i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, 0i, 2147483647i), u_input.c), -u_input.c.x)), -vec2<i32>(6817i, _wgslsmith_add_i32(-42160i, -1i)));
    global0 = array<vec3<u32>, 20>();
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, abs(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(var_0.x, var_0.x, 0u, var_0.x)))), ~80127u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 64436u, ~0u, min(~u_input.a, var_0.x)), abs(func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(36638u, 9697u), var_0, var_0), Struct_1(vec3<bool>(false, false, true), -54120i)))));
    return vec4<bool>(!(1u <= func_3(u_input.b.zz, Struct_1(vec3<bool>(false, true, true), u_input.c.x)).x), true, select(false, !(27270i == u_input.c.x), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = all(!select(select(func_2(vec4<f32>(-1021f, 290f, -1653f, 305f)), vec4<bool>(arg_1.a.x, true, false, arg_0.a.x), select(vec4<bool>(true, true, arg_1.a.x, true), vec4<bool>(arg_0.a.x, true, arg_2.a.x, true), arg_1.a.x)), select(func_2(vec4<f32>(738f, -352f, 628f, -503f)), vec4<bool>(true, arg_0.a.x, arg_2.a.x, true), !vec4<bool>(false, arg_2.a.x, arg_0.a.x, false)), select(vec4<bool>(arg_2.a.x, false, arg_1.a.x, arg_1.a.x), !vec4<bool>(false, false, false, arg_2.a.x), all(vec2<bool>(false, arg_1.a.x)))));
    let var_1 = -min(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(2147483647i), abs(arg_0.b)), u_input.c.wz), u_input.c.wx);
    return Struct_1(!arg_1.a, -arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = ~(~(~_wgslsmith_mod_u32(u_input.b.x, 4294967295u)) ^ ~37153u);
    global0 = array<vec3<u32>, 20>();
    let var_1 = u_input.b.xw;
    global0 = array<vec3<u32>, 20>();
    global0 = array<vec3<u32>, 20>();
    return arg_0.a.xz;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-807f, 124f, 1234f), vec3<f32>(-264f, 2346f, 1000f), false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-348f, 666f, 150f), vec3<f32>(1638f, 1413f, 656f), true))))), vec3<f32>(_wgslsmith_f_op_f32(-824f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -533f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1225f))) + _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) - 1343f))))));
    let var_1 = arg_0;
    let var_2 = select(abs(_wgslsmith_sub_vec2_u32(u_input.b.zx, _wgslsmith_clamp_vec2_u32(u_input.b.wz, _wgslsmith_clamp_vec2_u32(vec2<u32>(36592u, u_input.b.x), vec2<u32>(1u, u_input.a), u_input.b.xy), ~u_input.b.yx))), ~u_input.b.yw, arg_2);
    var var_3 = true;
    global0 = array<vec3<u32>, 20>();
    return -443f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(Struct_1(vec3<bool>(true, true, true), firstLeadingBit(u_input.c.x)), func_4(func_1(Struct_1(vec3<bool>(false, true, true), 54406i), Struct_1(vec3<bool>(true, true, false), u_input.c.x), Struct_1(vec3<bool>(false, false, false), 0i)), Struct_1(vec3<bool>(true, true, true), -2147483647i), vec2<bool>(false, true)), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(620f + 748f)))) - _wgslsmith_f_op_f32(-465f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f - 1030f))))));
    let var_1 = !(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    var var_2 = _wgslsmith_sub_u32(~859u, u_input.b.x);
    let var_3 = _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(u_input.c ^ u_input.c, reverseBits(vec4<i32>(-36384i, u_input.c.x, u_input.c.x, -5379i))), u_input.c);
    let var_4 = func_3(min(u_input.b.yw, abs(~u_input.b.zz)), Struct_1(vec3<bool>(true | var_1.x, false, select(var_1.x, true, var_1.x || false)), -(~u_input.c.x))).x;
    let var_5 = true;
    global0 = array<vec3<u32>, 20>();
    var var_6 = Struct_1(select(!vec3<bool>(false, true, all(vec3<bool>(false, var_1.x, true))), select(vec3<bool>(true, true, -1430i > var_3.x), func_1(func_1(Struct_1(vec3<bool>(false, false, true), -1i), Struct_1(vec3<bool>(true, var_1.x, var_1.x), var_3.x), Struct_1(vec3<bool>(false, var_1.x, var_1.x), u_input.c.x)), Struct_1(vec3<bool>(var_5, true, true), 22101i), func_1(Struct_1(vec3<bool>(true, true, false), var_3.x), Struct_1(vec3<bool>(false, false, true), -1i), Struct_1(vec3<bool>(var_5, true, false), 24287i))).a, func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-366f, -295f, 1008f, 699f), vec4<f32>(700f, 589f, 288f, -1074f), var_1.x))).zyy), func_2(vec4<f32>(315f, _wgslsmith_f_op_f32(f32(-1f) * -1889f), _wgslsmith_f_op_f32(f32(-1f) * -941f), -1000f)).zzw), 59993i);
    var_2 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~42427u);
}

