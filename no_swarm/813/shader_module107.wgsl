struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(582f)), _wgslsmith_f_op_f32(f32(-1f) * -1383f));
    var var_1 = any(!vec2<bool>(true, _wgslsmith_f_op_f32(-var_0) < var_0));
    let var_2 = vec4<u32>(abs(~25315u), ~u_input.b.x, _wgslsmith_mod_u32(14688u, (~u_input.b.x & ~u_input.c.x) & reverseBits(u_input.c.x ^ u_input.b.x)), ~_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.yzx, vec3<u32>(13960u, u_input.d.x, 4294967295u)), vec3<u32>(64839u, u_input.d.x, u_input.d.x))));
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 3u)], Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_0))), _wgslsmith_sub_i32(-31582i, reverseBits(-20397i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 263f) * vec3<f32>(-141f, 1777f, -1386f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, var_0, 344f)))), u_input.a >= abs(u_input.a)), Struct_1(-1907f, 25325i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, 166f)))), true), reverseBits(22477i) != u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -255f));
    let var_4 = _wgslsmith_mod_vec3_i32(u_input.e.wxx, vec3<i32>(var_3.b.b.b, var_3.b.a.b, countOneBits(var_3.b.b.b)));
    return var_3.b.c;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_1.a != arg_1.c.x;
    var var_1 = true;
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(u_input.c.x, arg_0), abs(1u), u_input.b.x), ~(~_wgslsmith_mult_vec3_u32(u_input.b.yxz, vec3<u32>(arg_0, 0u, 16256u)))), ~_wgslsmith_mult_vec3_u32(u_input.c.wwz, vec3<u32>(1u, _wgslsmith_sub_u32(u_input.c.x, 85245u), max(arg_0, arg_0))));
    let var_3 = _wgslsmith_mult_i32(u_input.e.x, u_input.e.x);
    var var_4 = vec2<f32>(arg_1.c.x, 1045f);
    return firstTrailingBit(u_input.e.zy);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = func_2() && true;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -46445i), -_wgslsmith_div_vec2_i32(func_3(0u, Struct_1(105f, arg_2, vec3<f32>(arg_3, arg_3, 904f), true)), vec2<i32>(u_input.a >> (72798u % 32u), -13055i)));
    global0 = array<vec4<bool>, 3>();
    var var_2 = !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, false, false)), false & all(vec2<bool>(true, false))));
    var_1 = u_input.e.x << (_wgslsmith_div_u32(_wgslsmith_mod_u32(~(~arg_1), firstTrailingBit(arg_1)), _wgslsmith_div_u32(~arg_1 & _wgslsmith_mod_u32(arg_1, 0u), 4294967295u)) % 32u);
    return true;
}

fn func_4(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-389f, arg_0.x) + arg_0.x), 563f))));
    var var_1 = -1064f;
    let var_2 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(36444u | u_input.b.x, u_input.d.x, ~74585u), 35137u, u_input.d.x, ~select(110711u, 4294967295u, true)), ~(~vec4<u32>(6937u, 67669u, u_input.b.x, u_input.d.x) >> (~vec4<u32>(11933u, u_input.d.x, 1u, u_input.c.x) % vec4<u32>(32u))), ~(~(~vec4<u32>(27219u, u_input.d.x, u_input.b.x, u_input.c.x))));
    var var_3 = Struct_2(Struct_1(arg_0.x, _wgslsmith_mult_i32(u_input.a, ~u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, -1000f, -1266f), vec3<f32>(-164f, var_0, var_0)))), true), Struct_1(1103f, 2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 258f, arg_0.x))) - arg_0), _wgslsmith_mod_u32(~var_2.x, _wgslsmith_clamp_u32(4294967295u, 2648u, u_input.d.x)) > max(~59185u, u_input.c.x)), func_2());
    let var_4 = 4294967295u;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 568f, 686f, var_3.a.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0, arg_0.x, arg_0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-901f, var_0, -296f, -496f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(365f, arg_0.x, arg_0.x, -1168f), vec4<f32>(arg_0.x, -385f, var_3.a.c.x, -523f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.b.c.x, -1469f, -149f, 1000f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.a.a, var_0, 907f, -268f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1456f, 1320f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(870f)))), -1000f, -893f)));
    global0 = array<vec4<bool>, 3>();
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.zzx, var_0.zwz), var_0.yzy, func_1(vec2<i32>(u_input.e.x, u_input.a), u_input.b.x, u_input.a, -495f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1092f, _wgslsmith_f_op_f32(floor(-232f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, -839f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1388f, 1045f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1464f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(553f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x * 1086f))), var_0.x));
    var var_2 = u_input.e.wxz << (min(vec3<u32>(~_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), abs(u_input.d.x), abs(u_input.d.x << (u_input.b.x % 32u))), u_input.c.xxz) % vec3<u32>(32u));
    let var_3 = Struct_4(_wgslsmith_add_u32(u_input.d.x, 23217u) | _wgslsmith_add_u32(u_input.b.x, 1u), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2075f, var_0.x))), var_2.x, var_1.wwz, u_input.c.x >= ~u_input.d.x), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(649f, var_1.x))), 3691i, var_0.yzx, !func_2()), !(true | (24678i == u_input.e.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(-1000f))), vec2<u32>(4273u ^ (u_input.b.x ^ 823u), u_input.b.x) ^ ~_wgslsmith_div_vec2_u32(~u_input.c.zx, u_input.b.xx));
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(~1u, 3u)], Struct_2(var_3.b.b, var_3.b.b, !var_3.b.a.d), _wgslsmith_f_op_f32(f32(-1f) * -1566f));
    let var_5 = var_3.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~1u), _wgslsmith_div_u32(1u, 1u), var_3.d.x), var_4.b.b.b, vec3<i32>(var_4.b.b.b, ~firstLeadingBit(u_input.a), var_4.b.a.b), firstLeadingBit(vec3<u32>(firstTrailingBit(63954u), max(1u, u_input.d.x), countOneBits(firstLeadingBit(4294967295u)))), countOneBits(vec2<u32>(~(~var_3.d.x), 0u)));
}

