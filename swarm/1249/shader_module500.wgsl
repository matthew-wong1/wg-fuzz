struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    var var_0 = Struct_4(Struct_1(any(vec3<bool>(all(arg_1.xwy), arg_1.x || false, true)), vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(-u_input.c, vec3<i32>(-1i, u_input.b.x, arg_0)))));
    var_0 = Struct_4(Struct_1(false | !var_0.a.a, min(u_input.c.xx | vec2<i32>(1i, u_input.c.x), _wgslsmith_clamp_vec2_i32(~var_0.a.b, firstTrailingBit(vec2<i32>(var_0.a.b.x, 1i)), vec2<i32>(u_input.b.x, -61151i)))));
    return _wgslsmith_sub_u32(75704u >> (~select(82908u, _wgslsmith_add_u32(117798u, 1u), !arg_1.x) % 32u), u_input.a);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-484f + -356f);
    var var_1 = Struct_1(!arg_1.x, u_input.b);
    var var_2 = func_3(_wgslsmith_clamp_i32(~(-17585i) & -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.b.x, -1i, -51257i), vec4<i32>(var_1.b.x, 11829i, 0i, u_input.c.x)), -(~var_1.b.x), _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -23180i, var_1.b.x), vec3<i32>(u_input.c.x, -5675i, u_input.c.x)))), !(!select(vec4<bool>(true, var_1.a, false, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a), !vec4<bool>(arg_1.x, false, var_1.a, true))));
    var_1 = Struct_1(!(~var_1.b.x < _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, 15573i, -41524i), ~u_input.c)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(~0i, _wgslsmith_sub_i32(var_1.b.x, u_input.b.x)), -(var_1.b >> (arg_0 % vec2<u32>(32u))))));
    var var_3 = Struct_3(min(30203u, _wgslsmith_div_u32(arg_0.x, _wgslsmith_div_u32(u_input.a, arg_0.x))) << (0u % 32u), select(select(!(!vec4<bool>(var_1.a, true, true, true)), vec4<bool>(all(vec4<bool>(var_1.a, true, arg_1.x, true)), any(arg_1.zy), var_1.a, false), vec4<bool>(false, any(arg_1), !var_1.a, true)), vec4<bool>(true, u_input.b.x != abs(-2147483647i), !var_1.a, var_1.a), select(select(vec4<bool>(var_1.a, arg_1.x, arg_1.x, true), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(true, true, false, var_1.a)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), all(!vec4<bool>(arg_1.x, false, true, var_1.a)))), 1i);
    return any(!select(select(vec2<bool>(true, var_1.a), !vec2<bool>(false, arg_1.x), any(var_3.b)), var_3.b.zz, all(!var_3.b.xyz)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = select(u_input.b, ~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 0i), -u_input.b, u_input.b), vec2<i32>(23698i >> (arg_0.x % 32u), -1i), func_2(~vec2<u32>(u_input.a, arg_0.x), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(106f, 101f, -318f) * vec3<f32>(1634f, 973f, 921f)))), false);
    let var_1 = !(true != !(true || all(vec3<bool>(false, true, true))));
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = select(vec2<bool>(!arg_0.a.a, any(select(select(vec3<bool>(arg_1.x, false, arg_0.a.a), vec3<bool>(arg_2.c.a, true, arg_1.x), arg_1.x), select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_2.c.a, arg_0.a.a, arg_2.a.x), arg_2.c.a), false))), select(!vec2<bool>(true, !arg_2.c.a), arg_1, arg_2.a), select(false, !(arg_1.x | all(vec3<bool>(arg_1.x, arg_1.x, arg_2.a.x))), all(vec2<bool>(true, !arg_2.c.a))));
    var_0 = arg_1;
    var var_1 = arg_2;
    var var_2 = Struct_3(u_input.a, !(!vec4<bool>(var_0.x, true, any(vec3<bool>(false, arg_1.x, false)), true)), ~(arg_2.c.b.x & firstLeadingBit(22417i)));
    var var_3 = 4294967295u;
    return select(!(!(!(!vec4<bool>(true, true, arg_1.x, var_1.a.x)))), var_2.b, vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(func_4(Struct_4(Struct_1(false, u_input.b)), vec2<bool>(func_1(vec2<u32>(u_input.a, 1u)), false), Struct_2(vec2<bool>(false, true), -u_input.b.x, Struct_1(true, u_input.c.zx))), func_4(Struct_4(Struct_1(false, u_input.c.zy)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true), ~u_input.b.x, Struct_1(true, u_input.b))), !(4294967295u < ~u_input.a)));
    let var_1 = Struct_2(select(!(!(!vec2<bool>(var_0, false))), vec2<bool>(var_0, var_0), var_0), firstLeadingBit(0i), Struct_1(func_2(reverseBits(~vec2<u32>(u_input.a, 4294967295u)), vec3<bool>(func_1(vec2<u32>(14948u, 24708u)), true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1045f, 137f, 1217f) - vec3<f32>(-1230f, 617f, -2194f))), vec2<i32>(u_input.c.x, u_input.b.x & 19584i)));
    let var_2 = any(select(vec2<bool>(true, true != (true || var_1.c.a)), var_1.a, false));
    var var_3 = 20598u;
    var_3 = 43499u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(1i, u_input.c.x), u_input.c);
}

