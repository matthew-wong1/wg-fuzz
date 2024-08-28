struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = true;
    var_0 = any(vec3<bool>(true, false, true));
    var_0 = arg_1.a.c;
    let var_1 = -(~(-_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, 12572i), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    var_0 = arg_1.a.a;
    return 93762u >> (_wgslsmith_dot_vec2_u32(arg_1.a.e, arg_1.b.yz) % 32u);
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2133f, -1103f) * vec3<f32>(-1000f, -213f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1140f, 950f, 1000f) + vec3<f32>(-1404f, 1473f, -958f)))), select(true, false, select(any(vec2<bool>(false, false)), u_input.d < 76265u, all(vec4<bool>(false, false, false, true)))), vec2<bool>(all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(47014u, 60054u), ~vec2<u32>(16300u, 1u)), func_3(vec2<bool>(true, true), Struct_2(Struct_1(false, vec3<f32>(111f, 1036f, 619f), true, vec2<bool>(false, true), vec2<u32>(0u, 4294967295u)), vec4<u32>(0u, 0u, 27324u, u_input.b))) | ~u_input.e)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, select(u_input.c, 87458u, true), u_input.b, u_input.e), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 29609u, u_input.e, u_input.d) ^ vec4<u32>(u_input.b, 1u, u_input.e, u_input.c), max(vec4<u32>(u_input.e, 11635u, 73158u, u_input.e), vec4<u32>(0u, u_input.b, u_input.e, 32382u)))), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(106828u, u_input.c, 0u, u_input.e), vec4<u32>(u_input.d, u_input.d, u_input.c, 5772u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(40729u, 90294u, 15650u, u_input.c), vec4<u32>(u_input.b, u_input.b, 0u, 23629u)), vec4<bool>(true, true, true, false)), true));
    let var_1 = -963f;
    var var_2 = Struct_2(var_0.a, abs(~_wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(u_input.d, 11744u, u_input.e, u_input.c))));
    var var_3 = !select(vec3<bool>(var_2.a.d.x, !all(vec3<bool>(var_2.a.d.x, var_0.a.d.x, var_0.a.c)), false), !(!(!vec3<bool>(true, var_0.a.a, false))), true & !any(vec3<bool>(var_2.a.a, var_0.a.a, var_0.a.c)));
    var_0 = Struct_2(var_0.a, ~_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.b.x, u_input.c, 0u, u_input.c), vec4<u32>(var_0.a.e.x, u_input.c, var_0.a.e.x, var_0.b.x) & vec4<u32>(15843u, 5369u, 14231u, var_2.a.e.x)) ^ abs(~(~var_2.b)));
    return all(select(vec3<bool>(true, var_3.x | true, any(!vec3<bool>(false, true, var_3.x))), !select(!vec3<bool>(var_2.a.d.x, var_0.a.d.x, false), !vec3<bool>(var_0.a.a, var_2.a.a, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), var_3.x)), vec3<bool>(max(u_input.a.x, u_input.a.x) < min(u_input.a.x, -10618i), false, !var_2.a.a)));
}

fn func_1() -> bool {
    let var_0 = !select(vec4<bool>(true, !func_2(), false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), -51368i == u_input.a.x);
    let var_1 = vec2<i32>(0i, u_input.a.x);
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(782f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1212f, 449f))))), Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 799f, -1660f) * vec3<f32>(-882f, 2082f, -965f))), true, vec2<bool>(true, true), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.b, 14713u)), vec2<u32>(1u, 1u))), countOneBits(select(vec4<u32>(u_input.e, 1u, u_input.c, 25213u) ^ vec4<u32>(u_input.d, u_input.c, 1u, 1u), ~vec4<u32>(1u, u_input.d, u_input.d, 2965u), any(var_0.zwy)))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b, 4294967295u, u_input.c)), ~(vec3<u32>(0u, 0u, 0u) << (vec3<u32>(u_input.c, u_input.d, u_input.d) % vec3<u32>(32u)))), vec3<u32>(abs(u_input.e), func_3(vec2<bool>(var_0.x, true), Struct_2(Struct_1(var_0.x, vec3<f32>(-1119f, -820f, 1623f), false, var_0.zz, vec2<u32>(8445u, 22112u)), vec4<u32>(u_input.c, 4294967295u, u_input.b, 77270u))), _wgslsmith_mod_u32(22236u, 59470u))));
    var var_3 = -firstTrailingBit(-1i);
    var_3 = u_input.a.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !func_1();
    var_0 = func_1();
    var_0 = false;
    let var_1 = Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1519f, 286f, 729f), vec3<f32>(-607f, 369f, 444f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1850f, 1000f, 1476f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, 1808f, -641f))))))), !select(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), true, false), vec2<bool>(true, true), ~abs(~_wgslsmith_div_vec2_u32(vec2<u32>(42766u, u_input.c), vec2<u32>(u_input.b, 1u))));
    let var_2 = select(vec3<bool>(!(-u_input.a.x > -2147483647i), true, true), !vec3<bool>(var_1.e.x >= var_1.e.x, var_1.a, true), !(!(!select(vec3<bool>(true, var_1.a, true), vec3<bool>(false, true, var_1.c), true))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x)), var_1.b.x)), Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(var_1.b - var_1.b), all(select(vec2<bool>(true, true), vec2<bool>(var_2.x, var_1.d.x), vec2<bool>(true, true))), var_1.d, vec2<u32>(var_1.e.x, ~u_input.e)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, var_1.e.x, 0u), select(vec4<u32>(u_input.b, u_input.d, 37366u, 4294967295u), vec4<u32>(var_1.e.x, 15848u, u_input.d, u_input.b), vec4<bool>(var_1.c, var_2.x, var_2.x, var_2.x)))), (vec3<u32>(~u_input.d, abs(4294967295u), 64701u) << (vec3<u32>(u_input.c | 4294967295u, 1u, _wgslsmith_div_u32(var_1.e.x, 1u)) % vec3<u32>(32u))) ^ ((vec3<u32>(13773u, 0u, u_input.c) << (countOneBits(vec3<u32>(2217u, var_1.e.x, var_1.e.x)) % vec3<u32>(32u))) & vec3<u32>(1u, 1u, min(47977u, 60141u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.a.b.x), _wgslsmith_f_op_f32(559f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.a.b.x, 346f, var_1.c)))), -504f, -471f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) * _wgslsmith_f_op_f32(-564f + var_3.b.a.b.x)))), -321f)), select(u_input.a, -_wgslsmith_mult_vec4_i32(~u_input.a, vec4<i32>(-2147483647i, 41545i, -35494i, u_input.a.x)), !select(select(vec4<bool>(false, var_2.x, false, var_3.b.a.d.x), vec4<bool>(false, var_1.d.x, var_3.b.a.c, var_3.b.a.a), var_3.b.a.d.x), vec4<bool>(true, true, false, false), false)), vec4<u32>(0u, 4294967295u, firstLeadingBit(16297u), firstLeadingBit(countOneBits(firstTrailingBit(1912u)))), abs(~u_input.a.x));
}

