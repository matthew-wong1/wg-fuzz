struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> i32 {
    var var_0 = Struct_3(~arg_0.b.c.x, arg_0.b.a);
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 1u, arg_0.b.c.x, 5552u), vec4<u32>(var_0.a, arg_0.b.c.x, u_input.d, arg_0.b.c.x)), vec4<u32>(4294967295u, arg_0.b.c.x, 0u, arg_0.b.c.x), false), firstTrailingBit(~vec4<u32>(0u, 1u, var_0.a, 1u))), ~(vec4<u32>(u_input.e, 4294967295u, 4294967295u, var_0.a) & ~vec4<u32>(var_0.a, 55278u, 4294967295u, u_input.d))) | (vec4<u32>(select(u_input.e, 4294967295u, arg_0.a.x) | 1u, ~countOneBits(75427u), arg_0.b.c.x, var_0.a) << (min(~_wgslsmith_sub_vec4_u32(vec4<u32>(989u, var_0.a, u_input.e, u_input.d), vec4<u32>(u_input.e, 11822u, 1u, u_input.d)), vec4<u32>(4294967295u, ~1u, u_input.d, _wgslsmith_add_u32(arg_0.b.c.x, var_0.a))) % vec4<u32>(32u)));
    var var_2 = reverseBits(abs(firstLeadingBit(var_1.yyw)));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1096f, -1595f, 1086f, 118f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1367f, arg_0.b.d.x, arg_0.b.d.x, -197f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2029f, arg_0.b.d.x, -111f, 648f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(847f, 1065f, arg_0.b.d.x, -304f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.d.x)), _wgslsmith_f_op_f32(arg_0.b.d.x * arg_0.b.d.x), arg_0.b.d.x, arg_0.b.d.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1406f, arg_0.b.d.x, -2046f, -1249f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-618f, -1176f, arg_0.b.d.x, arg_0.b.d.x)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1561f, arg_0.b.d.x, 645f, -675f) + vec4<f32>(arg_0.b.d.x, 1028f, arg_0.b.d.x, arg_0.b.d.x))))));
    var_0 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(var_1.wxx, vec3<u32>(var_2.x, var_0.a, var_2.x)), abs(var_1.x | 38617u)), vec2<u32>(~_wgslsmith_dot_vec3_u32(var_1.yxz, vec3<u32>(5246u, 41788u, 59638u)), 11458u)), Struct_1(-30850i, arg_0.b.a.b));
    return -2147483647i;
}

fn func_2() -> vec3<bool> {
    var var_0 = abs(u_input.b);
    let var_1 = Struct_2(Struct_1(func_3(Struct_5(vec3<bool>(false, false, false), Struct_2(Struct_1(3352i, vec3<bool>(true, false, true)), vec2<i32>(var_0.x, -30026i), vec2<u32>(51386u, 4294967295u), vec3<f32>(1000f, -1136f, -506f)))), !select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), true)), u_input.b.wy, vec2<u32>(u_input.e, 41137u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-251f)), _wgslsmith_f_op_f32(floor(242f)), all(vec4<bool>(false, true, false, false)))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -3063f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(972f + 479f), 2465f, _wgslsmith_f_op_f32(f32(-1f) * -624f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(495f, 760f, -2126f))) + vec3<f32>(1f, 1f, 1f)))));
    var var_2 = vec4<u32>(1u, 33330u, 4294967295u, 1u);
    let var_3 = Struct_5(vec3<bool>(select(true, any(var_1.a.b.xx), var_1.a.b.x & true), var_1.a.b.x, var_1.a.b.x), Struct_2(var_1.a, select(var_0.xy, _wgslsmith_sub_vec2_i32(~vec2<i32>(-13729i, u_input.a), vec2<i32>(u_input.b.x, var_1.b.x)), true), min(~(~vec2<u32>(4294967295u, 24137u)), ~var_1.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_1.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-659f, 1560f, -1000f), vec3<f32>(var_1.d.x, var_1.d.x, -219f), var_1.a.b))), all(select(vec3<bool>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x), vec3<bool>(false, true, var_1.a.b.x), var_1.a.b.x))))));
    var var_4 = Struct_1(39349i, select(!var_3.b.a.b, var_3.a, !select(!vec3<bool>(false, true, var_3.b.a.b.x), vec3<bool>(var_1.a.b.x, var_3.b.a.b.x, var_3.a.x), select(true, false, false))));
    return var_4.b;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = !func_2();
    let var_1 = Struct_4(Struct_1(reverseBits(abs(firstTrailingBit(u_input.c))), select(!select(vec3<bool>(arg_0.x, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(40486i > u_input.c, var_0.x, -2147483647i >= u_input.a), vec3<bool>(true, any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), arg_0.x | true))), Struct_3(~u_input.e, Struct_1(u_input.a, vec3<bool>(arg_0.x, func_2().x, all(var_0.yz)))), false);
    var var_2 = 1149f;
    let var_3 = _wgslsmith_mod_vec2_u32(~vec2<u32>(~abs(var_1.b.a), u_input.d >> (36785u % 32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_1.b.a, u_input.e)), vec2<u32>(4294967295u, _wgslsmith_add_u32(var_1.b.a, 1969u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.b.a, u_input.d), max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(var_1.b.a, 5146u)))), vec2<u32>(abs(1u), 1u) & ~vec2<u32>(u_input.d, var_1.b.a), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(4294967295u, u_input.d)) ^ (vec2<u32>(72205u, 32340u) >> (vec2<u32>(u_input.e, 97823u) % vec2<u32>(32u))), select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, var_1.b.a), vec2<u32>(var_1.b.a, 4294967295u)), abs(vec2<u32>(var_1.b.a, var_1.b.a)), false))));
    var var_4 = -min(vec2<i32>(u_input.a, var_1.b.b.a), vec2<i32>(-2147483647i, -14843i & var_1.a.a));
    return Struct_1(2147483647i, !(!func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(!vec2<bool>(select(true, true, false), true)), vec2<i32>(-2147483647i, _wgslsmith_div_i32(u_input.c, _wgslsmith_div_i32(u_input.b.x << (u_input.d % 32u), -17515i))), min(~vec2<u32>(_wgslsmith_sub_u32(u_input.d, u_input.d), 0u), ~(~(~vec2<u32>(35587u, u_input.d)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1213f)), 178f, -567f) * vec3<f32>(487f, _wgslsmith_f_op_f32(f32(-1f) * -2170f), -218f)));
    var var_1 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(var_0.c.x, 0u), u_input.d), _wgslsmith_div_vec2_u32(var_0.c, ~vec2<u32>(var_0.c.x, 4294967295u)) >> (~(vec2<u32>(var_0.c.x, var_0.c.x) >> (vec2<u32>(36764u, 51552u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(reverseBits(abs(countOneBits(vec4<u32>(1u, var_0.c.x, var_0.c.x, 26835u)))), ~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_1.x, u_input.d, 32885u, 20929u)), ~vec4<u32>(var_1.x, 9537u, 47425u, 22727u))));
}

