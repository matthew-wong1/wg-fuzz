struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(-(abs(-vec2<i32>(-28305i, 1i)) & firstTrailingBit(-vec2<i32>(u_input.a, -1i))));
    let var_1 = Struct_1(select(firstLeadingBit(abs(min(vec2<i32>(var_0.a.x, u_input.a), var_0.a))), abs(~firstTrailingBit(vec2<i32>(-2147483647i, -38628i))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 53455u, 0u), vec3<u32>(48458u, 29893u, 83557u)), ~5986u) <= reverseBits(39658u)));
    var var_2 = -45351i;
    var_2 = ~(0i | var_0.a.x);
    var_2 = var_0.a.x;
    return abs(0i);
}

fn func_2() -> vec2<bool> {
    let var_0 = 0u;
    let var_1 = _wgslsmith_div_vec3_i32(select(vec3<i32>(_wgslsmith_div_i32(func_3(), _wgslsmith_sub_i32(-7621i, u_input.a)), u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(1i, 1i), u_input.a)), -_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), select(vec3<i32>(-39972i, u_input.a, -3559i), vec3<i32>(u_input.a, 43819i, u_input.a), false)), all(vec4<bool>(true, true, all(vec2<bool>(false, false)), true))), ~(~vec3<i32>(_wgslsmith_mult_i32(u_input.a, -18853i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, -21604i, -2147483647i)), ~u_input.a)));
    return !select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, 2147483647i < u_input.a)), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), ~4294967295u <= var_0);
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<i32>(48972i, u_input.a);
    var var_1 = !any(func_2());
    var var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16243u, 4294967295u, 4294967295u, 69204u), vec4<u32>(15813u, 4294967295u, 10255u, 35666u)), 25113u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 45493u, 35484u, 41521u), vec4<u32>(24284u, 10931u, 61850u, 1u))), vec3<u32>(~50434u, 1u, ~0u), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_mult_u32(~46310u, countOneBits(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(2137u, 4294967295u, 1u, 89733u), vec4<u32>(42172u, 20715u, 1u, 60264u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 12739u), vec3<u32>(4294967295u, 4547u, 0u)), 5813u), select(_wgslsmith_div_u32(27236u, 4294967295u), firstLeadingBit(1u), true))), 4294967295u);
    let var_3 = Struct_2(Struct_1(-vec2<i32>(15224i, var_0.x) >> (~abs(vec2<u32>(var_2.x, var_2.x)) % vec2<u32>(32u))), Struct_1(select(_wgslsmith_div_vec2_i32(max(vec2<i32>(-2147483647i, -2147483647i), var_0), var_0), var_0, vec2<bool>(true, true))));
    var_1 = true;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = select(select(vec2<bool>(false, true), vec2<bool>(true, true), true | (select(false, false, true) & true)), !vec2<bool>((u_input.a > u_input.a) || true, select(true, true, any(vec3<bool>(true, false, false)))), vec2<bool>(true, true & (u_input.a <= -52868i)));
    var var_2 = Struct_1(vec2<i32>(1i, u_input.a));
    var var_3 = func_1();
    var_3 = Struct_2(func_1().b, Struct_1(~var_3.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(-1295f, 0u, -var_3.a.a);
}

