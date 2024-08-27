struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> vec3<u32> {
    let var_0 = arg_1.d;
    return ~select(~vec3<u32>(_wgslsmith_add_u32(15590u, 59027u), arg_0.x, _wgslsmith_mod_u32(arg_0.x, u_input.a)), select(min(vec3<u32>(1u, u_input.a, u_input.a), arg_0.xwx), abs(vec3<u32>(11730u, u_input.a, u_input.a)), var_0.c && arg_1.a.a.x), !select(!vec3<bool>(arg_2.d.c, false, true), !arg_1.a.a, arg_2.a.a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = select(vec4<bool>(true & ((-1i << (u_input.a % 32u)) <= 35971i), ((arg_0.x ^ arg_0.x) <= (24297i >> (arg_1.x % 32u))) && true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), !vec4<bool>(false, false, true, any(vec2<bool>(true, true))));
    let var_1 = Struct_1(2147483647i, -1i, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(269f, -128f) + vec2<f32>(-1648f, 1282f)), vec2<f32>(-1314f, -294f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1887f, 1998f))))))));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-630f)))), var_2.x))));
    return Struct_3(Struct_2(select(vec3<bool>(false, var_0.x, var_1.c != var_1.c), !(!vec3<bool>(var_1.c, true, var_0.x)), any(select(var_0.yww, var_0.wyx, var_0.x))), 2147483647i << (select(u_input.a ^ arg_1.x, arg_1.x << (12725u % 32u), !var_0.x) % 32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)))), 1136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -1885f))), 0i, var_1);
}

fn func_1() -> Struct_3 {
    return func_3(~(vec4<i32>(max(-25628i, -43235i), 1i, 0i, 2147483647i) << (select(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 18002u), vec4<u32>(77544u, 0u, 2822u, 4294967295u)), vec4<bool>(false, true, true, true)) % vec4<u32>(32u))), ~_wgslsmith_mult_vec3_u32(~select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(true, false, true)), ~func_2(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), Struct_3(Struct_2(vec3<bool>(false, false, true), 1i), vec3<f32>(-1489f, 591f, 768f), -22687i, Struct_1(45149i, -1i, true)), Struct_3(Struct_2(vec3<bool>(false, false, true), -1i), vec3<f32>(1148f, -576f, -954f), -26731i, Struct_1(0i, 2147483647i, true)), -10781i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = func_3(reverseBits(reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.d.b, 1i, var_0.d.a, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.d.b, 2147483647i, var_0.c), vec4<i32>(-26181i, var_0.d.b, 0i, var_0.a.b))))), ~select(~vec3<u32>(u_input.a, 17146u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(36199u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), var_0.a.a.x) | func_2((vec4<u32>(u_input.a, u_input.a, u_input.a, 16214u) | vec4<u32>(4294967295u, 4294967295u, 20051u, 35702u)) & ~vec4<u32>(u_input.a, 36672u, u_input.a, u_input.a), func_1(), func_1(), var_0.d.b)).b.x;
    var var_2 = func_1();
    var var_3 = Struct_3(Struct_2(var_0.a.a, _wgslsmith_clamp_i32(var_0.c, select(var_0.d.a, var_0.c, 3616i == var_0.c), var_2.a.b)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(877f + var_2.b.x), any(vec2<bool>(var_2.d.c, true)))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(exp2(var_2.b.x))))), var_2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(572f, 1000f))))), var_0.d.a, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(vec4<i32>(~6734i, min(var_2.d.a, 0i), 34640i & var_3.c, 2147483647i)), vec4<i32>(-12205i, abs(~var_3.d.a), ~abs(var_2.c), var_3.a.b)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)) >> ((~vec3<u32>(31558u, 51689u, 53653u) | (vec3<u32>(u_input.a, 115267u, u_input.a) | vec3<u32>(7246u, u_input.a, 110624u))) % vec3<u32>(32u))));
}

