struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    return 1f;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))));
    let var_1 = Struct_2(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)))))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~4294967295u, 33446u), 13395u), firstLeadingBit(~(~vec2<u32>(1u, 34039u)))));
    var var_2 = Struct_4(vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))), Struct_1(var_1.a.x, all(vec3<bool>(var_1.c.x <= 4294967295u, true, true))), firstTrailingBit(~_wgslsmith_mod_vec2_u32(var_1.a, var_1.a)));
    let var_3 = var_2.c;
    var var_4 = var_0;
    return 23783u;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> Struct_4 {
    var var_0 = -_wgslsmith_div_i32(firstLeadingBit(-1i), -2870i);
    let var_1 = arg_1 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 291f);
    let var_2 = max(u_input.a, -1i & u_input.a);
    var_0 = _wgslsmith_div_i32(var_2, 69197i);
    var_0 = var_2;
    return Struct_4(!vec3<bool>(false, var_1, false), Struct_1(arg_0.x, any(vec3<bool>(!var_1, all(vec4<bool>(true, var_1, var_1, var_1)), var_1))), reverseBits(arg_0.ww));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_5) -> vec4<i32> {
    var var_0 = func_4(max(min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 0u, 37755u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 50258u, 7342u, 7399u), vec4<u32>(22618u, arg_1.x, arg_1.x, 60184u))), _wgslsmith_mod_vec4_u32(vec4<u32>(15511u, arg_1.x, 1u, arg_1.x), vec4<u32>(arg_1.x, 1u, 4294967295u, arg_1.x)) << ((vec4<u32>(7166u, arg_1.x, 52157u, arg_1.x) << (vec4<u32>(65473u, arg_1.x, 1667u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<u32>(17085u, func_2(), 0u, ~4294967295u >> (arg_1.x % 32u)), 782f);
    var var_1 = -abs(vec4<i32>(~(-1i), firstLeadingBit(arg_0) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1533u, arg_1.x, arg_1.x), vec4<u32>(var_0.c.x, var_0.b.a, arg_1.x, 69140u)) % 32u), -arg_0 | u_input.a, arg_0));
    let var_2 = ~vec4<u32>(arg_1.x << (_wgslsmith_div_u32(arg_1.x, ~1u) % 32u), arg_1.x, firstLeadingBit(arg_1.x), _wgslsmith_div_u32(select(countOneBits(arg_1.x), abs(var_0.b.a), var_0.b.b | false), 40306u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(125f, _wgslsmith_f_op_f32(round(-1546f)), 2218f) - vec3<f32>(-736f, -1149f, _wgslsmith_f_op_f32(-813f + -738f)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(max(var_3.xz, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_3.zx - _wgslsmith_f_op_vec2_f32(var_3.xz * _wgslsmith_div_vec2_f32(var_3.yx, var_3.zz)))))));
    return -select(vec4<i32>(-arg_0, -22078i, var_1.x, 1i) & _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.a, 2147483647i, arg_2.a, var_1.x), vec4<i32>(1i, -12024i, arg_0, u_input.a)), vec4<i32>(arg_0, u_input.a, var_1.x, 47272i)), ~min(vec4<i32>(-1i, arg_2.a, arg_2.a, 0i), vec4<i32>(var_1.x, -1i, 0i, u_input.a) & vec4<i32>(15427i, 16770i, u_input.a, -2147483647i)), var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(func_1(1i, vec3<u32>(1u, 1u, 1u), Struct_5(2147483647i))) | ~(vec4<i32>(-1i) * -vec4<i32>(-16495i, 2147483647i, u_input.a, 2147483647i)), i32(-1i) * -59282i, 66041u, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, abs(37232u), func_4(vec4<u32>(0u, 0u, 4294967295u, 1u), -969f).b.a), vec4<u32>(~0u, min(1u, 52770u), select(0u, 15283u, true), ~37239u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, 20747u, ~43011u, func_4(vec4<u32>(14962u, 1u, 92379u, 46399u), -1063f).b.a), ~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), 2147483647i);
}

