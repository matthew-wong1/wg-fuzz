struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(true || arg_0, -select(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -13791i, -3269i, u_input.a), vec4<i32>(1i, -1i, u_input.a, -28813i)), true)));
    let var_1 = var_0.a;
    return vec2<i32>(~(-min(~var_0.a.b, -2147483647i)), _wgslsmith_mod_i32(12362i, ~_wgslsmith_mult_i32(var_0.a.b, 11187i)));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(!(!(25039u < u_input.b.x)), _wgslsmith_dot_vec2_i32(func_3(true), vec2<i32>(reverseBits(u_input.a), -u_input.a))));
    var var_1 = Struct_2(var_0.a);
    var var_2 = var_1.a.a;
    var_2 = var_0.a.a;
    let var_3 = 1i;
    return ~abs(abs(vec3<u32>(6794u, u_input.b.x, reverseBits(1u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = -12703i;
    let var_1 = Struct_2(arg_3.a);
    let var_2 = func_2();
    let var_3 = !vec3<bool>(true, ~_wgslsmith_mult_u32(var_2.x, u_input.b.x) != firstLeadingBit(var_2.x), true);
    var var_4 = arg_0;
    return select(select(select(vec4<bool>(true, !var_3.x, all(var_3.zz), all(vec2<bool>(arg_2.a.a, true))), vec4<bool>(arg_2.a.a, !var_3.x, !arg_1, arg_1), select(vec4<bool>(var_3.x, var_1.a.a, var_1.a.a, false), vec4<bool>(false, false, true, var_1.a.a), true)), vec4<bool>(any(var_3), arg_1, false, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, arg_1)), !vec4<bool>(arg_2.a.a, true, arg_2.a.a, arg_2.a.a), !arg_1)), !select(!select(vec4<bool>(arg_3.a.a, true, arg_3.a.a, true), vec4<bool>(false, arg_3.a.a, arg_1, false), vec4<bool>(true, arg_2.a.a, false, false)), vec4<bool>(all(vec4<bool>(false, false, arg_2.a.a, true)), true, all(vec3<bool>(arg_2.a.a, var_3.x, arg_1)), true), select(select(vec4<bool>(arg_1, arg_3.a.a, true, var_1.a.a), vec4<bool>(true, false, arg_2.a.a, false), vec4<bool>(arg_3.a.a, var_1.a.a, arg_3.a.a, var_3.x)), !vec4<bool>(false, true, var_1.a.a, true), !vec4<bool>(var_3.x, arg_3.a.a, false, true))), !vec4<bool>(select(true, !arg_2.a.a, true), 43262i < var_1.a.b, arg_1, arg_2.a.a & true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = false;
    var var_2 = any(!(!func_1(vec4<i32>(1i, 1i, u_input.a, u_input.a) ^ vec4<i32>(27245i, u_input.a, u_input.a, -25085i), !var_0.x, Struct_2(Struct_1(true, u_input.a)), Struct_2(Struct_1(false, -10689i)))));
    let var_3 = Struct_1(false, _wgslsmith_div_i32(u_input.a, ~(-(~u_input.a))));
    var_2 = true;
    var var_4 = 24824u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~u_input.b.x, _wgslsmith_add_u32(0u, _wgslsmith_div_u32(~u_input.b.x, u_input.b.x))), (~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 28035i, u_input.a), vec3<i32>(16274i, u_input.a, var_3.b)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 94848u), u_input.b.yyy) % vec3<u32>(32u))) << (firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.b.zyw, u_input.b.xwz)) % vec3<u32>(32u)), abs(vec2<u32>(_wgslsmith_mult_u32(countOneBits(0u), u_input.b.x ^ 4294967295u), u_input.b.x)), vec4<i32>(func_3(!var_3.a).x, min((var_3.b & 0i) >> (~1u % 32u), u_input.a), i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, u_input.a, u_input.a, 1i) & vec4<i32>(var_3.b, u_input.a, 2147483647i, var_3.b)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, 13375i, -21600i), vec4<i32>(43477i, 25002i, 0i, var_3.b), vec4<i32>(-1i, u_input.a, -1i, u_input.a))))), 44216i);
}

