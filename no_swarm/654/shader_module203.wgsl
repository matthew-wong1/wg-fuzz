struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = 1u;
    var var_0 = abs(1u);
    let var_1 = Struct_2(arg_0, abs(vec3<u32>(~1u, _wgslsmith_sub_u32(arg_0.b, u_input.b), 4294967295u) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 4294967295u, arg_0.b), _wgslsmith_mod_vec3_u32(vec3<u32>(75635u, 432u, 24470u), vec3<u32>(u_input.c.x, arg_0.b, u_input.c.x))) % vec3<u32>(32u))), arg_0, u_input.d.x);
    let var_2 = firstTrailingBit(var_1.d);
    let var_3 = var_1;
    return u_input.b;
}

fn func_2() -> u32 {
    let var_0 = 0u << (u_input.b % 32u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(max(-1905f, 1000f))))));
    var var_2 = Struct_2(Struct_1(true, firstLeadingBit(func_3(Struct_1(true, u_input.c.x, var_1))), var_1), _wgslsmith_mod_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.c.x, 4365u, 47566u))), ~vec3<u32>(~42135u, ~37771u, ~var_0)), Struct_1(true, max(_wgslsmith_mult_u32(~var_0, ~u_input.c.x), _wgslsmith_div_u32(reverseBits(0u), firstLeadingBit(u_input.c.x))), var_1), ~u_input.a);
    var var_3 = u_input.d;
    let var_4 = _wgslsmith_div_vec2_u32(~(~var_2.b.xy), min(~_wgslsmith_clamp_vec2_u32(var_2.b.yz, ~vec2<u32>(u_input.c.x, 4294967295u), var_2.b.yz), _wgslsmith_sub_vec2_u32(~vec2<u32>(34445u, var_0), _wgslsmith_add_vec2_u32(~u_input.c, _wgslsmith_div_vec2_u32(u_input.c, u_input.c)))));
    return var_2.b.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3) -> StorageBuffer {
    global0 = arg_2.b.b & _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.a.c.b, ~(~0u)), arg_2.a.a.b);
    let var_0 = u_input.d.yx;
    let var_1 = Struct_1(arg_0.c.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_0.a.b), select(vec2<u32>(arg_0.c.b, 97621u), arg_0.b.zz, arg_2.a.c.a)), arg_2.a.b.zy), u_input.b | min(arg_0.c.b, u_input.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) + _wgslsmith_f_op_f32(max(arg_2.d, _wgslsmith_f_op_f32(f32(-1f) * -152f)))))));
    var var_2 = Struct_1(any(vec2<bool>(arg_0.a.a, true)), arg_2.a.a.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1268f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.zz, arg_2.e.yx)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.e.xx, arg_2.e.yy))), arg_2.e.yx))));
    return StorageBuffer(vec2<i32>(max(arg_0.d, i32(-1i) * -115486i), 2147483647i), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, var_1.b, arg_0.b.x, max(16119u, ~0u)), firstTrailingBit(min(vec4<u32>(16361u, 4294967295u, var_1.b, 42213u), vec4<u32>(38300u, arg_0.a.b, u_input.b, u_input.b))) | vec4<u32>(var_1.b, func_2(), var_2.b, ~arg_2.a.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)), var_2.c)), _wgslsmith_mod_vec3_u32(firstTrailingBit(min(vec3<u32>(1u, 89814u, arg_0.c.b) >> (arg_2.a.b % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(arg_2.a.a.b, u_input.c.x, var_1.b)))), ~countOneBits(reverseBits(vec3<u32>(1u, 17753u, arg_0.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(919f, arg_1.x, -311f, -236f) * vec4<f32>(arg_1.x, var_2.c, arg_0.a.c, -1000f))), vec4<f32>(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -518f), -385f, _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.d, arg_1.x, -303f, 1164f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c, arg_0.a.c, var_3.x, -369f), vec4<f32>(1088f, 901f, -488f, arg_2.b.c), vec4<bool>(false, false, var_2.a, false))))))));
}

fn func_1() -> StorageBuffer {
    return func_4(Struct_2(Struct_1(true, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, 1u), _wgslsmith_div_u32(1u, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1084f + -1171f) * _wgslsmith_f_op_f32(f32(-1f) * -786f))), vec3<u32>(~func_2(), u_input.c.x, func_3(Struct_1(false, 20596u, -1183f))), Struct_1(true, u_input.b << (4294967295u % 32u), -540f), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-192f + -2253f), _wgslsmith_div_f32(1000f, 117f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1224f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-368f, 1000f), _wgslsmith_div_f32(-1000f, -1837f), true))) - vec3<f32>(1f, 1f, 1f)), Struct_3(Struct_2(Struct_1(true, 43715u | u_input.b, -820f), vec3<u32>(0u >> (u_input.c.x % 32u), 29004u, ~14411u), Struct_1(true, ~4294967295u, _wgslsmith_f_op_f32(1538f * -215f)), -1i), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(19235u, 0u, 34651u), vec3<u32>(u_input.b, u_input.b, u_input.c.x)) < 0u, min(u_input.c.x & u_input.b, 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-629f - 364f), _wgslsmith_div_f32(492f, 220f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1033f * -478f))))), vec3<f32>(1332f, 602f, _wgslsmith_f_op_f32(sign(-439f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_u32(u_input.b ^ 0u, u_input.b);
    var var_1 = _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f))));
    let var_2 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), u_input.b < 1u)));
    let var_3 = u_input.c >> (vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(var_0, u_input.c.x)), vec2<u32>(var_0, 30598u) | vec2<u32>(var_0, var_0)) >> (max(1u, ~var_0) % 32u), ~_wgslsmith_div_u32(34272u, ~0u)) % vec2<u32>(32u));
    var var_4 = u_input.d.x;
    var_4 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, select(u_input.a, 4736i, var_2.x)), u_input.d.xy) << (~49814u % 32u));
    let x = u_input.a;
    s_output = func_1();
}

