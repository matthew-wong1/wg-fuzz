struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = ~(~reverseBits(u_input.a));
    var var_1 = Struct_2(vec3<i32>(8914i, _wgslsmith_dot_vec2_i32(-vec2<i32>(17871i, 55463i), countOneBits(vec2<i32>(2147483647i, -1i))), abs(0i)), vec4<u32>(abs(u_input.a), var_0, var_0, u_input.a), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    let var_2 = select(!(!vec3<bool>(false, !var_1.c.x, true)), select(!(!(!vec3<bool>(var_1.c.x, var_1.c.x, true))), vec3<bool>(true, any(!vec2<bool>(var_1.c.x, var_1.c.x)), !var_1.c.x || true), var_1.c.x), select(true, all(select(vec3<bool>(false, false, true), vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<bool>(true, false, var_1.c.x))), var_1.c.x && var_1.c.x));
    var var_3 = Struct_3(var_1.a.x, select(select(!var_1.c, var_1.c, all(var_2) || select(false, var_1.c.x, true)), !vec2<bool>(var_1.c.x | true, false), true));
    let var_4 = Struct_5(var_1.a.yy);
    return 0i;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = -_wgslsmith_mult_i32(arg_1.a, min(arg_0.a, ~func_3()));
    var var_1 = 4294967295u;
    var var_2 = Struct_4(arg_0, arg_2.c.x, arg_2.b.x, ~vec3<u32>(~10713u, u_input.b, arg_2.b.x));
    var_0 = abs(1i);
    var var_3 = vec3<u32>(max(1u, ~(~var_2.d.x)), 34110u, ~(~max(var_2.c, 17461u))) ^ firstTrailingBit(_wgslsmith_mult_vec3_u32(min(~vec3<u32>(arg_2.b.x, u_input.c, 4294967295u), abs(vec3<u32>(var_2.d.x, arg_2.b.x, 0u))), abs(var_2.d ^ vec3<u32>(var_2.c, u_input.a, 4294967295u))));
    return var_2.a.a & 17799i;
}

fn func_1() -> bool {
    let var_0 = (abs(countOneBits(37014u)) >= u_input.b) || false;
    var var_1 = 1f;
    let var_2 = Struct_1(min(min(vec2<i32>(1i, 0i), vec2<i32>(29263i, -36129i >> (u_input.c % 32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-28886i, 6608i), -vec2<i32>(44978i, 19900i)), select(func_2(Struct_3(15678i, vec2<bool>(true, var_0)), Struct_3(2147483647i, vec2<bool>(var_0, var_0)), Struct_2(vec3<i32>(-9700i, 24922i, 0i), vec4<u32>(29402u, 0u, u_input.b, 1u), vec2<bool>(var_0, var_0)), 1111f), 25414i, true | var_0))), var_0 || var_0);
    var var_3 = 121f;
    let var_4 = Struct_5(max(var_2.a, -countOneBits(_wgslsmith_div_vec2_i32(var_2.a, vec2<i32>(21652i, var_2.a.x)))));
    return !(!var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, !select(any(vec2<bool>(true, true)), true, true), func_1(), false);
    let var_1 = _wgslsmith_dot_vec3_i32(abs(reverseBits(min(reverseBits(vec3<i32>(-6122i, 1i, 2147483647i)), ~vec3<i32>(-76402i, 2147483647i, -19901i)))), vec3<i32>(-2147483647i, abs(reverseBits(0i)), (firstLeadingBit(-21200i) << ((u_input.a & 2584u) % 32u)) | 0i));
    let var_2 = Struct_3(var_1, vec2<bool>(true, true));
    var var_3 = 14577u;
    var var_4 = ~(~vec4<u32>(~1u, countOneBits(1u) | u_input.c, min(u_input.c, _wgslsmith_add_u32(u_input.b, u_input.b)), ~u_input.b));
    var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c | (var_4.x & 33085u), var_4.x, abs(min(var_4.x, var_4.x)), u_input.c), abs(vec4<u32>(29601u, var_4.x, var_4.x, 24721u)) << (vec4<u32>(u_input.b, 0u, 66031u, var_4.x) % vec4<u32>(32u))) | ((~reverseBits(vec4<u32>(0u, 25047u, var_4.x, var_4.x)) & vec4<u32>(var_4.x, select(1u, 1u, var_0.x), abs(var_4.x), countOneBits(0u))) ^ ~select(vec4<u32>(var_4.x, u_input.c, var_4.x, u_input.c), select(vec4<u32>(u_input.b, u_input.a, 35426u, var_4.x), vec4<u32>(1u, var_4.x, 1u, 0u), vec4<bool>(false, var_0.x, true, false)), vec4<bool>(var_2.b.x, var_2.b.x, var_0.x, var_2.b.x)));
    let var_5 = Struct_4(var_2, !(!var_2.b.x), ~0u, var_4.zyx);
    let x = u_input.a;
    s_output = StorageBuffer(select(min(var_4.xzw, max(abs(vec3<u32>(var_5.c, 4294967295u, 247u)), var_5.d)), var_5.d, !(!var_0.wzy)));
}

