struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2129f, 187f) * _wgslsmith_div_f32(-890f, 668f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(684f, -1000f))))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f + 1104f) - _wgslsmith_f_op_f32(-1396f - 1201f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1035f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-380f)) + _wgslsmith_f_op_f32(-1188f - 126f)))))));
    let var_1 = ~vec3<u32>(36498u, 45954u, max(select(4294967295u, 1u, false), 0u)) >> (~(~vec3<u32>(~arg_0, _wgslsmith_sub_u32(4294967295u, 0u), 7763u << (arg_1.a.a % 32u))) % vec3<u32>(32u));
    let var_2 = Struct_2(arg_1.a, arg_1.b);
    var var_3 = _wgslsmith_sub_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.a, arg_0, var_2.a.a, arg_1.a.a), vec4<u32>(var_1.x, 1u, 76388u, var_2.a.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.a, var_1.x, arg_1.a.a, 0u), vec4<u32>(53604u, var_1.x, arg_0, 4294967295u), vec4<u32>(70202u, var_1.x, var_1.x, 61288u)), abs(vec4<u32>(4294967295u, arg_0, 0u, 17199u)))) ^ ~reverseBits(~vec4<u32>(8956u, arg_0, var_1.x, arg_1.a.a)), vec4<u32>(1u, 22961u, _wgslsmith_dot_vec3_u32(min(var_1, var_1), vec3<u32>(abs(1u), min(var_1.x, 5532u), _wgslsmith_sub_u32(arg_0, arg_1.a.a))), _wgslsmith_mult_u32(~_wgslsmith_add_u32(29997u, var_2.a.a), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a.a, var_2.a.a), var_1))));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(30488u), u_input.b.zz);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(569f, arg_1.x))))) - -556f);
    var_0 = Struct_2(var_0.a, _wgslsmith_mod_vec2_i32(var_0.b, u_input.b.zx));
    var_1 = 672f;
    var var_2 = -1000f;
    return ~vec4<u32>(1u & (~arg_3.x << (abs(4294967295u) % 32u)), 4294967295u, ~(~(var_0.a.a & arg_3.x)), select(~30725u, countOneBits(arg_0.a), (arg_1.x >= arg_1.x) || true));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    var var_0 = arg_2;
    var var_1 = Struct_3(arg_1, Struct_1(0u), var_0.c, func_4(Struct_1(8319u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -1392f, arg_2.a) * vec3<f32>(-2075f, 487f, arg_0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(128f, arg_2.a, var_0.a) + vec3<f32>(arg_2.a, arg_2.a, -1000f)))), !vec3<bool>(any(vec4<bool>(true, arg_0.b, var_0.b, arg_0.b)), true, var_0.b), select(~(vec2<u32>(12206u, var_0.c.a.a) >> (vec2<u32>(var_0.c.a.a, 19322u) % vec2<u32>(32u))), vec2<u32>(~1u, countOneBits(0u)), func_3(87040u, arg_2.c, arg_2.c.b.x) <= abs(var_0.c.a.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a), -1546f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(-arg_2.a)));
    let var_2 = arg_0;
    let var_3 = 4294967295u;
    var var_4 = Struct_3(arg_2.c.a, arg_1, Struct_2(arg_0.c.a, firstLeadingBit(vec2<i32>(-39915i, arg_2.c.b.x)) >> (~var_1.d.zy % vec2<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_2.c.a.a, 0u, 0u, 56825u)), _wgslsmith_mod_vec4_u32(var_1.d, var_1.d), var_1.d | vec4<u32>(24625u, arg_2.c.a.a, var_1.c.a.a, 1u)), reverseBits(~var_1.d)), _wgslsmith_div_u32(_wgslsmith_mod_u32(~4294967295u, 29722u), _wgslsmith_mod_u32(arg_2.c.a.a, 14334u)), ~arg_0.c.a.a, 4294967295u), var_1.e);
    return select(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 63978i), vec2<i32>(-2147483647i, -35067i)), ~(-1i)), var_1.c.b.x, (93875u >= var_1.b.a) & arg_0.b) ^ -2939i;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_add_i32(func_2(Struct_4(arg_2, true, arg_1.c), arg_1.c.a, arg_1), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, arg_1.c.b.x, u_input.b.x), vec4<i32>(0i, 28900i, -1i, 69898i)) & arg_1.c.b.x, u_input.b.x)), u_input.b.xz);
    let var_1 = !((_wgslsmith_sub_u32(49596u, arg_1.c.a.a) >> (~arg_1.c.a.a % 32u)) < ~abs(arg_1.c.a.a ^ arg_1.c.a.a));
    let var_2 = arg_1;
    let var_3 = 163f;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(406f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) * _wgslsmith_div_f32(arg_1.a, var_3))))), _wgslsmith_f_op_f32(f32(-1f) * -1845f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-854f - 1000f)))), arg_1.a));
    return _wgslsmith_clamp_u32(_wgslsmith_div_u32(7529u, 30697u), countOneBits(arg_1.c.a.a), ~var_2.c.a.a) & _wgslsmith_clamp_u32(4463u, arg_1.c.a.a, ~(~arg_1.c.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(1u, ~func_1(vec2<bool>(false, false), Struct_4(243f, false, Struct_2(Struct_1(26371u), vec2<i32>(-13547i, u_input.a))), -1035f, false), true));
    let var_1 = 0i;
    var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(select(func_3(1u, Struct_2(Struct_1(0u), vec2<i32>(-10817i, var_1)), 0i), 19058u, func_2(Struct_4(2135f, true, Struct_2(Struct_1(27396u), u_input.b.yx)), Struct_1(1u), Struct_4(1163f, true, Struct_2(Struct_1(21205u), u_input.b.yy))) < _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 48200i, -9531i), vec3<i32>(1i, -14941i, -19014i))), 1u, _wgslsmith_sub_u32(reverseBits(~16485u), func_3(1u, Struct_2(Struct_1(22545u), vec2<i32>(var_1, u_input.a)), -u_input.a))));
    var var_2 = Struct_2(Struct_1(max(~(~1u), 34337u)), vec2<i32>(var_1, firstTrailingBit(func_2(Struct_4(1000f, true, Struct_2(Struct_1(56563u), vec2<i32>(var_1, 0i))), Struct_1(4294967295u), Struct_4(-2124f, true, Struct_2(Struct_1(1u), u_input.b.zx))))));
    var_0 = ~0u;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-634f * _wgslsmith_f_op_f32(min(-2031f, -509f))), _wgslsmith_f_op_f32(ceil(-145f)))) - 989f), ~(17908u << (~(~var_2.a.a) % 32u)), -_wgslsmith_sub_i32(func_2(Struct_4(-1000f, false, Struct_2(Struct_1(73299u), vec2<i32>(-74782i, 2147483647i))), Struct_1(var_2.a.a), Struct_4(-1208f, true, Struct_2(Struct_1(var_2.a.a), vec2<i32>(24475i, 1i)))), var_2.b.x));
}

