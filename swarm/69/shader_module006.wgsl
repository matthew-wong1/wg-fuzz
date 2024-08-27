struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_1(vec2<i32>(u_input.d, select(_wgslsmith_sub_i32(arg_1.a.a.a.x, 9308i), 11970i, true) >> (~select(arg_0.x, u_input.a, false) % 32u)), arg_1.c.a.b, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(~55331u, abs(arg_0.x)), ~51580u), ~4812u));
    return 4294967295u;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(vec2<i32>(select(-2147483647i, 0i, false), -u_input.d), !(!arg_0.yw), ~_wgslsmith_sub_vec2_u32(u_input.c.zz, vec2<u32>(1u, u_input.a)))), vec4<f32>(_wgslsmith_f_op_f32(-1408f * 285f), 911f, -353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1094f * 715f)))), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(abs(arg_1.yx), vec2<i32>(-2147483647i, -47438i) ^ vec2<i32>(arg_1.x, arg_1.x)), select(!vec2<bool>(arg_0.x, arg_0.x), !vec2<bool>(arg_0.x, arg_0.x), arg_0.x), vec2<u32>(func_3(vec3<u32>(u_input.a, 13113u, u_input.c.x), Struct_3(Struct_2(Struct_1(u_input.b.xz, vec2<bool>(arg_0.x, true), vec2<u32>(u_input.c.x, 0u))), vec4<f32>(1351f, -837f, -530f, -1287f), Struct_2(Struct_1(vec2<i32>(-13651i, arg_1.x), arg_0.yz, u_input.c.zz)), vec4<i32>(u_input.b.x, 2147483647i, 0i, arg_1.x)), vec2<f32>(-464f, 269f)), u_input.a))), vec4<i32>(abs(-1i), _wgslsmith_clamp_i32(1i, ~arg_1.x, (-2147483647i >> (1u % 32u)) >> (0u % 32u)), ~(-77082i), ~u_input.b.x));
    var var_1 = arg_0.zy;
    let var_2 = Struct_3(Struct_2(Struct_1(-(vec2<i32>(var_0.a.a.a.x, 29485i) >> (vec2<u32>(var_0.c.a.c.x, 22801u) % vec2<u32>(32u))), vec2<bool>(select(var_0.a.a.b.x, var_1.x, false), -37486i > arg_1.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 29959u), vec2<u32>(u_input.c.x, u_input.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-var_0.b.x))), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.b.x)), 1640f)), -692f)), var_0.a, var_0.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_2.b)), var_2.b)));
    var_1 = vec2<bool>(true, false);
    return vec3<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, 2147483647i), select(~u_input.d, 0i, true && (var_0.a.a.b.x & var_0.a.a.b.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~(-35427i), arg_1.x), vec3<i32>(abs(u_input.d), _wgslsmith_mult_i32(var_0.d.x, var_2.d.x), _wgslsmith_sub_i32(arg_1.x, var_2.d.x))) & select(_wgslsmith_dot_vec3_i32(arg_1, _wgslsmith_mod_vec3_i32(var_0.d.zyy, var_2.d.xzy)), _wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.x, arg_1.x), 2147483647i), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(1304f + 516f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x))) + arg_3.x), arg_3.x), arg_3.wxz));
    var var_1 = vec2<bool>((((arg_0.x ^ arg_0.x) >= (arg_1 ^ arg_0.x)) | false) && all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), max(0u, arg_0.x) >= u_input.c.x);
    let var_2 = -(~(~func_2(vec4<bool>(false, false, var_1.x, false), vec3<i32>(arg_2.x, u_input.b.x, -24181i)))) & _wgslsmith_div_vec3_i32((vec3<i32>(-12666i, -2147483647i, 0i) << ((u_input.c.xzx << (u_input.c.xyw % vec3<u32>(32u))) % vec3<u32>(32u))) & ~vec3<i32>(-17689i, u_input.d, u_input.d), u_input.b);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -566f))), 2748f, -571f);
    var_1 = vec2<bool>(all(select(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), var_1.x), select(!vec3<bool>(var_1.x, true, false), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x), vec3<bool>(var_1.x, true, var_1.x)), false)), var_1.x);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(116299u, _wgslsmith_add_u32(31117u, u_input.a)), vec2<u32>(4294967295u, func_1(vec2<u32>(4294967295u, 17152u), 41943u, u_input.b, vec4<f32>(1184f, -1208f, -1249f, 118f)))), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(27587u, 0u)) >> ((vec2<u32>(15771u, u_input.c.x) | u_input.c.xx) % vec2<u32>(32u))));
    var var_1 = Struct_1(u_input.b.zz, !select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), u_input.c.zw);
    let var_2 = Struct_4(Struct_2(Struct_1(min(~var_1.a, -vec2<i32>(var_1.a.x, u_input.b.x)), select(!var_1.b, var_1.b, vec2<bool>(true, var_1.b.x)), ~u_input.c.yy)), Struct_1(vec2<i32>(-29303i, var_1.a.x) & vec2<i32>(59823i, u_input.d), select(vec2<bool>(false || var_1.b.x, true), vec2<bool>(var_1.b.x, !var_1.b.x), var_1.b.x), var_1.c), Struct_3(Struct_2(Struct_1(-vec2<i32>(1i, var_1.a.x), vec2<bool>(true, true), var_1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1874f, 1000f, -451f, 959f) + vec4<f32>(469f, -1577f, 551f, -766f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1130f, -165f, 1000f, 1000f))))), Struct_2(Struct_1(-vec2<i32>(-32055i, var_1.a.x), !var_1.b, vec2<u32>(0u, 0u) | var_1.c)), firstLeadingBit(firstLeadingBit(vec4<i32>(1i, u_input.d, var_1.a.x, var_1.a.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.c.b.x, -267f, var_2.c.b.x, var_2.c.b.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2548f, 354f, var_2.c.b.x, var_2.c.b.x))), var_2.c.b)), _wgslsmith_f_op_vec4_f32(exp2(var_2.c.b)), select(var_2.c.c.a.b.x, !any(!vec3<bool>(var_2.c.c.a.b.x, var_2.b.b.x, true)), var_1.b.x)));
    let var_4 = !(!vec4<bool>(!any(var_2.a.a.b), false, select(var_2.c.a.a.b.x, var_2.c.a.a.c.x != var_1.c.x, false), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(true, true, var_1.b.x, false)))));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1393f, 991f), ~4294967295u, var_1.c, vec4<f32>(2623f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1844f - _wgslsmith_f_op_f32(-var_5.c.b.x)), 593f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1514f, 903f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2.c.b.x)), var_5.c.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1070f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, 925f, -503f, -594f)));
}

