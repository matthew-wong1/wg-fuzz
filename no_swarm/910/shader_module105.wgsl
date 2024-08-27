struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> bool {
    let var_0 = vec3<u32>(51942u << ((~reverseBits(u_input.a) << (48762u % 32u)) % 32u), _wgslsmith_mult_u32(select(u_input.a, abs(~3850u), false), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 4294967295u) & arg_0.yw)), 4294967295u);
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-1i, -416f, countOneBits(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(4294967295u, 15206u)) & countOneBits(vec2<u32>(u_input.a, 22624u) | vec2<u32>(u_input.a, u_input.a)), vec4<bool>(true, true, true, !func_3(vec4<u32>(44587u, 1u, u_input.a, u_input.a), true))), -36920i, true, countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -25721i, u_input.c, 0i), -vec4<i32>(u_input.b, -6417i, u_input.c, 9589i))));
    var_0 = Struct_2(Struct_1(u_input.b, 280f, abs(firstLeadingBit(var_0.a.c)), vec4<bool>(true, var_0.c, _wgslsmith_f_op_f32(ceil(-666f)) > var_0.a.b, false)), var_0.b, true, reverseBits((vec4<i32>(u_input.c, var_0.b, var_0.b, -1i) & var_0.d) | var_0.d));
    var var_1 = 4294967295u;
    var var_2 = min(var_0.d.wyw, -reverseBits(firstTrailingBit(vec3<i32>(u_input.c, 1i, var_0.b))));
    var_2 = _wgslsmith_add_vec3_i32(countOneBits(~firstTrailingBit(vec3<i32>(-118i, u_input.c, var_0.d.x) << (vec3<u32>(u_input.a, u_input.a, 15582u) % vec3<u32>(32u)))), max(var_0.d.yxy, var_0.d.yww));
    return var_0.a;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<f32>) -> i32 {
    var var_0 = func_2();
    var_0 = Struct_1(func_2().a, _wgslsmith_f_op_f32(-arg_2.x), vec2<u32>(0u, _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.a, var_0.c.x))), func_2().d);
    var_0 = Struct_1(1i, 542f, abs(_wgslsmith_div_vec2_u32(~func_2().c, ~_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(0u, u_input.a)))), vec4<bool>(select(all(vec2<bool>(true, true)), true, arg_0), false & var_0.d.x, false, true));
    return _wgslsmith_sub_i32(-u_input.c, _wgslsmith_add_i32(-28436i, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 0i), reverseBits(vec2<i32>(u_input.b, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = u_input.a;
    var var_2 = vec2<i32>(max(~(~select(u_input.c, 1i, false)), -(~func_1(true, vec2<f32>(3411f, 106f), vec4<f32>(-1814f, 234f, -798f, -1222f)))), i32(-1i) * -u_input.c);
    var var_3 = vec4<bool>(all(vec2<bool>(true, true)), !(!(_wgslsmith_f_op_f32(select(-1160f, -607f, true)) > -535f)), any(!select(func_2().d.zz, vec2<bool>(true, true), true)), func_2().d.x);
    var var_4 = -vec2<i32>(-1i, u_input.c);
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(43965u);
}

