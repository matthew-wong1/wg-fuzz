struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_5) -> i32 {
    let var_0 = vec4<bool>(false, arg_2.b.b.d.x & true, !(!all(!arg_2.b.b.d)), true);
    var var_1 = ~((~89706u & ~u_input.b) >> (arg_2.b.b.e.a.x % 32u));
    var var_2 = arg_2.b.b;
    var var_3 = _wgslsmith_f_op_f32(-arg_1);
    var_1 = 0u;
    return arg_0;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) - -2190f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1175f - -461f), 1351f)), Struct_2(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(104248u, 28066u, u_input.b)), firstLeadingBit(min(vec3<u32>(5470u, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, 4294967295u)))), vec2<u32>(u_input.b, u_input.b)), Struct_1(vec4<i32>(-2147483647i, -u_input.a.x, u_input.a.x, abs(func_3(u_input.a.x, -1000f, Struct_5(vec2<f32>(-1743f, -407f), Struct_4(Struct_2(vec3<u32>(4294967295u, 0u, 30422u), vec2<u32>(1u, 72850u)), Struct_3(-1106f, Struct_2(vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<u32>(u_input.b, 0u)), Struct_1(u_input.a, 941f), vec3<bool>(true, true, true), Struct_2(vec3<u32>(u_input.b, 0u, u_input.b), vec2<u32>(0u, 1u)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(892f, -2146f))))), select(vec3<bool>(false, select(any(vec2<bool>(true, true)), false, false), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(false, false, true), true)), select(vec3<bool>(u_input.a.x >= 4865i, 4817u == u_input.b, u_input.a.x >= u_input.c), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(true, false)), true, true))), Struct_2(~vec3<u32>(u_input.b, 0u, u_input.b) << (min(vec3<u32>(u_input.b, 60534u, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u)), _wgslsmith_mult_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(u_input.b, u_input.b))), countOneBits(reverseBits(vec2<u32>(u_input.b, u_input.b))))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(var_0.c.b)), Struct_2(~vec3<u32>(_wgslsmith_div_u32(59521u, u_input.b), u_input.b, _wgslsmith_mod_u32(1u, u_input.b)), firstLeadingBit(var_0.b.a.yy)), Struct_1(_wgslsmith_mult_vec4_i32(~vec4<i32>(-5103i, 61711i, var_0.c.a.x, 0i), vec4<i32>(-41748i, var_0.c.a.x, var_0.c.a.x, u_input.c) >> ((vec4<u32>(1u, u_input.b, var_0.b.b.x, 1u) | vec4<u32>(1u, 24946u, u_input.b, u_input.b)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-2313f + -342f)), !(!var_0.d), var_0.b);
    var var_1 = var_0.b.b.x;
    return Struct_4(Struct_2(~var_0.e.a, vec2<u32>(var_0.b.a.x, ~0u) | _wgslsmith_div_vec2_u32(var_0.e.a.zz ^ var_0.e.b, _wgslsmith_mod_vec2_u32(var_0.b.a.zz, var_0.e.b))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a - var_0.c.b), _wgslsmith_f_op_f32(min(1403f, 1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1978f) * 827f)), var_0.b, var_0.c, !select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0.d.x, false), var_0.d), Struct_2(~var_0.e.a, ~vec2<u32>(11593u, 0u) << (var_0.b.b % vec2<u32>(32u)))));
}

fn func_1(arg_0: bool) -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1330f) + vec2<f32>(378f, 757f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1149f, -766f) * vec2<f32>(-1037f, -1081f)), vec2<f32>(600f, 389f)))), func_2());
    let var_1 = Struct_5(vec2<f32>(2111f, _wgslsmith_f_op_f32(-var_0.b.b.c.b)), func_2());
    let var_2 = func_2().b.b;
    var var_3 = Struct_4(func_2().a, Struct_3(1135f, Struct_2(vec3<u32>(4294967295u, 4139u, var_0.b.b.e.b.x) & _wgslsmith_mod_vec3_u32(vec3<u32>(65153u, 38562u, 54654u), vec3<u32>(43546u, 1u, var_1.b.a.b.x)), _wgslsmith_add_vec2_u32(min(var_2.b, var_2.a.xx), min(var_1.b.b.b.a.zy, var_0.b.a.b))), Struct_1(_wgslsmith_mult_vec4_i32(u_input.a, firstLeadingBit(u_input.a)), var_0.b.b.a), var_0.b.b.d, var_1.b.a));
    var_3 = func_2();
    return Struct_5(var_0.a, Struct_4(func_2().b.b, Struct_3(214f, var_2, var_0.b.b.c, !select(var_3.b.d, var_0.b.b.d, vec3<bool>(false, var_0.b.b.d.x, var_0.b.b.d.x)), var_3.b.b)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_5) -> StorageBuffer {
    var var_0 = func_2().b.e;
    let var_1 = true;
    var_0 = func_1(true).b.a;
    var var_2 = 1u;
    let var_3 = Struct_4(func_1(true).b.a, func_2().b);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f - _wgslsmith_f_op_f32(ceil(arg_2.a.x))))), 1007f, var_3.b.c.a.x, var_3.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -446f;
    let var_1 = Struct_1((vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.a.x, u_input.c, 1i)) & vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), u_input.a.x, u_input.c, ~1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(137f + 274f))), 1000f));
    var var_2 = -587f;
    var_2 = _wgslsmith_f_op_f32(step(-1347f, var_1.b));
    var var_3 = vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1642f * -1000f)), _wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(247f + 218f));
    let x = u_input.a;
    s_output = func_4(reverseBits(~(~vec3<u32>(u_input.b, u_input.b, 16248u)) >> (select(_wgslsmith_add_vec3_u32(vec3<u32>(36272u, u_input.b, 12278u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(1u, u_input.b, 0u), true) % vec3<u32>(32u))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(false, true, true)), false), func_1(true));
}

