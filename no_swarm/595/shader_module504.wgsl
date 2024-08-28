struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-arg_0), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0))), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-736f, arg_0, arg_0)), !arg_1)), Struct_1(61576u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -711f, -954f)), -50596i, u_input.a.x, !vec4<bool>(arg_1.x, global0.x, arg_1.x, arg_1.x)), Struct_1(abs(1u), vec3<f32>(1363f, arg_0, 1000f), 2883i, u_input.a.x, !vec4<bool>(global0.x, false, arg_1.x, arg_1.x)), arg_1.yy), firstTrailingBit(-(i32(-1i) * -4532i))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, u_input.c.x)), min(u_input.c, vec2<u32>(1u, u_input.d))), u_input.d, u_input.c.x), -(~(-abs(5105i))), false);
    var var_1 = ~(~69523u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1979f, -662f))))) + -224f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 388f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.c.a.x, 647f) - 1393f)) * _wgslsmith_f_op_vec2_f32(ceil(var_0.a.b))), Struct_2(var_0.a.c.a, Struct_1(u_input.b, var_0.a.c.a, countOneBits(-2147483647i), _wgslsmith_mod_u32(u_input.b, u_input.a.x) << (~u_input.e.x % 32u), var_0.a.c.b.e), Struct_1(29395u | _wgslsmith_clamp_u32(u_input.e.x, u_input.a.x, 63706u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.a.c.c.b))), var_0.c, 13798u, !var_0.a.c.c.e), arg_1.xy), var_0.a.d);
    var var_3 = var_0.a.c.b;
    return -(-_wgslsmith_dot_vec4_i32(~vec4<i32>(55566i, -2147483647i, var_0.a.d, var_2.d), select(vec4<i32>(var_0.c, -1427i, -42653i, var_3.c), vec4<i32>(var_3.c, var_0.c, -2147483647i, var_3.c), var_3.e)) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, -var_0.a.d), ~vec2<i32>(var_2.d, var_3.c)));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 123f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 2124f) * vec2<f32>(720f, -837f)))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(428f, 1188f, 1000f))))), Struct_1(43764u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-151f, arg_0, -695f))), abs(reverseBits(-34061i)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 33891u, u_input.a.x, 51651u) | vec4<u32>(0u, 638u, u_input.e.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 8070u, 0u), vec4<u32>(u_input.a.x, u_input.b, 62559u, 52053u))), vec4<bool>(select(global0.x, true, true), true, true, false)), Struct_1(39305u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -275f, -399f)) + vec3<f32>(-156f, arg_0, -511f)), func_3(-2588f, select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x)), _wgslsmith_clamp_u32(~u_input.d, ~1u, 1u), vec4<bool>(all(vec4<bool>(true, true, true, false)), any(global0.zx), global0.x, all(vec4<bool>(global0.x, false, false, global0.x)))), !select(global0.xz, global0.xz, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), abs(-25749i) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.c.x, u_input.d, 20212u), ~vec4<u32>(u_input.b, u_input.e.x, 5665u, u_input.b), any(global0.xx)), vec4<u32>(_wgslsmith_mod_u32(1u, 29572u), ~0u, ~u_input.d, _wgslsmith_mod_u32(11775u, 1u))) % 32u));
    var_0 = Struct_3(arg_0, var_0.b, var_0.c, -7384i);
    var var_1 = 10253u;
    let var_2 = 2147483647i;
    var_1 = u_input.e.x;
    return !vec3<bool>(any(select(!var_0.c.c.e.yyw, var_0.c.c.e.xyy, select(var_0.c.b.e.wzz, vec3<bool>(var_0.c.d.x, true, true), true))), select(any(var_0.c.c.e), _wgslsmith_div_u32(u_input.c.x, 4119u) >= _wgslsmith_add_u32(u_input.d, 21286u), all(!var_0.c.d)), any(select(var_0.c.b.e, vec4<bool>(true, true, false, false), var_0.c.c.e.x)) | !(108f != var_0.b.x));
}

fn func_1() -> f32 {
    let var_0 = ~1u;
    global1 = -(-23531i | _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -67759i, 40048i), vec4<i32>(6931i, 1i, -51475i, 4910i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-11723i, 49959i), ~vec2<i32>(1i, -9738i))));
    let var_1 = ~(~vec4<u32>(8555u, 10660u, ~13920u, reverseBits(4294967295u)) & (_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0, 0u, 115427u, 1u), vec4<u32>(u_input.c.x, var_0, 101680u, 30062u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 4294967295u, 4294967295u, 10367u), vec4<u32>(4294967295u, 0u, var_0, u_input.e.x))) ^ ~vec4<u32>(0u, u_input.c.x, u_input.d, 4294967295u)));
    global0 = select(select(select(vec3<bool>(var_0 >= u_input.b, true, true), !(!vec3<bool>(global0.x, global0.x, global0.x)), all(!vec3<bool>(false, true, global0.x))), select(vec3<bool>(global0.x, true, global0.x), select(select(vec3<bool>(false, false, false), vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(false, global0.x, global0.x), true), !func_2(305f)), (_wgslsmith_dot_vec2_i32(vec2<i32>(18991i, -16943i), vec2<i32>(9703i, -52169i)) | -38172i) > 1i), !vec3<bool>(global0.x, any(global0.xx), true), vec3<bool>(true, true, true && global0.x));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(sign(202f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(795f, -400f) + vec2<f32>(-1858f, 860f)), vec2<f32>(-1079f, -447f))))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, -1020f, 2040f) * vec3<f32>(1000f, -137f, 1963f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(606f, 366f, -1187f)))), Struct_1(abs(0u), vec3<f32>(655f, -798f, -1115f), -1i, u_input.d, !vec4<bool>(true, global0.x, true, global0.x)), Struct_1(~u_input.e.x, vec3<f32>(-132f, 305f, 302f), -1i, _wgslsmith_add_u32(u_input.d, 1u), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, true), global0.x)), select(func_2(187f).zz, !vec2<bool>(global0.x, global0.x), global0.yx)), -21294i), vec3<u32>(u_input.e.x, ~_wgslsmith_dot_vec4_u32(var_1, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 43266u, var_0, 13824u), var_1)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, 0u, 8230u), vec3<u32>(42690u, var_1.x, 4294967295u), vec3<u32>(0u, var_0, u_input.e.x) | u_input.e), firstTrailingBit(vec3<u32>(var_1.x, var_0, 1u)))), _wgslsmith_mult_i32(1i, -1i), global0.x);
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global0 = !vec3<bool>(!global0.x, select(!global0.x, any(global0.zz), all(vec3<bool>(false, global0.x, true))) & (-1216f > _wgslsmith_f_op_f32(func_1())), select(!global0.x & select(global0.x, global0.x, false), global0.x, !(u_input.b <= 35581u)));
    var_0 = abs(max(_wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(49169u, 80785u)), _wgslsmith_div_u32(~firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(~u_input.e, countOneBits(vec3<u32>(u_input.d, u_input.a.x, 70649u))))));
    var var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(697f, -428f, 218f, -1452f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(118f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-793f, -1000f)), -758f))))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -(i32(-1i) * -2147483647i)), select(vec3<i32>(~(-2147483647i), 1i, ~2147483647i), vec3<i32>(i32(-1i) * -1i, 19993i >> (u_input.d % 32u), 1i), !(!vec3<bool>(global0.x, global0.x, global0.x)))));
}

