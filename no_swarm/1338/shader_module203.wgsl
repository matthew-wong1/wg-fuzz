struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    global0 = 0i;
    global0 = ~min(~(-24617i), -_wgslsmith_dot_vec4_i32(vec4<i32>(592i, 7542i, 0i, -24342i), -vec4<i32>(-2147483647i, 34960i, -1i, -11995i)));
    global0 = _wgslsmith_add_i32(80i, -(i32(-1i) * -1i));
    var var_0 = (max(vec3<u32>(u_input.a, 0u, 33853u) | vec3<u32>(3547u, 45496u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 1u)) << (~(~select(vec3<u32>(u_input.a, u_input.a, 42780u), vec3<u32>(46272u, u_input.a, 0u), vec3<bool>(false, false, true))) % vec3<u32>(32u))) & ~abs(min(~vec3<u32>(1u, 54799u, 0u), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a))));
    var var_1 = ~(-39130i);
    return vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 51451u) & vec3<u32>(var_0.x, 16554u, 0u), ~vec3<u32>(89368u, var_0.x, 8467u)) << (~u_input.a % 32u), _wgslsmith_add_u32(~u_input.a, 4294967295u)), 4294967295u, select(abs(abs(~var_0.x)), 41674u, true));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = reverseBits(max(func_3(), vec3<u32>(_wgslsmith_clamp_u32(~21727u, 1u, 4294967295u), u_input.a, u_input.a)));
    let var_1 = Struct_2(Struct_1(vec2<bool>(false, true && all(vec4<bool>(true, true, false, false)))));
    var_0 = vec3<u32>(18343u, firstTrailingBit(27063u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(var_0.x, u_input.a, 0u), vec3<u32>(52686u, 4294967295u, var_0.x)), reverseBits(select(vec3<u32>(var_0.x, 15699u, 84944u), vec3<u32>(19216u, 0u, 11173u), var_1.a.a.x))));
    global0 = arg_0;
    var var_2 = _wgslsmith_mult_vec3_u32(~(~(vec3<u32>(0u, u_input.a, 54105u) << (vec3<u32>(13779u, var_0.x, 4294967295u) % vec3<u32>(32u))) | vec3<u32>(1u, 1072u, u_input.a)), vec3<u32>(firstTrailingBit(select(2801u, 54745u, false)), var_0.x, 1u) & vec3<u32>(~82907u, var_0.x, ~countOneBits(var_0.x)));
    return Struct_2(Struct_1(select(vec2<bool>(false, var_1.a.a.x), var_1.a.a, var_1.a.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> vec4<bool> {
    let var_0 = vec2<i32>(0i, 54622i);
    global0 = var_0.x;
    var var_1 = vec4<i32>(~0i, _wgslsmith_dot_vec4_i32(reverseBits(~abs(vec4<i32>(48917i, -2147483647i, 30524i, 1i))), _wgslsmith_div_vec4_i32(~firstLeadingBit(vec4<i32>(var_0.x, var_0.x, -1i, var_0.x)), vec4<i32>(-2147483647i, var_0.x, var_0.x, firstTrailingBit(6756i)))), -2147483647i, (max(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, -31454i, -7435i), vec4<i32>(0i, var_0.x, var_0.x, -15993i))) & -1i) >> (1u % 32u));
    let var_2 = arg_1;
    let var_3 = Struct_2(func_2(reverseBits(_wgslsmith_mult_i32(var_0.x, var_1.x)) >> (68801u % 32u)).a);
    return select(vec4<bool>(arg_0.a.a.x, arg_1, true, false), !(!vec4<bool>(var_0.x <= var_0.x, var_2, true, u_input.a < 0u)), arg_0.a.a.x);
}

fn func_1() -> vec4<bool> {
    global0 = ~(-_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, 2147483647i, 76309i)) >> (firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 0u)) % vec3<u32>(32u)), -vec3<i32>(0i, 0i, -61784i)));
    var var_0 = all(!func_4(func_2(2147483647i), true));
    var_0 = !func_4(func_2(~(-20876i)), true).x;
    let var_1 = vec3<bool>(true, any(vec3<bool>(true, true, true)), false);
    var var_2 = var_1.xy;
    return select(vec4<bool>(true, !var_1.x, var_1.x, true), func_4(func_2(-14260i << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 31178u, u_input.a), vec3<u32>(0u, u_input.a, 165009u)) % 32u)), var_2.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    global0 = 2147483647i;
    var var_0 = firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, 1i, -2147483647i));
    global0 = countOneBits(firstLeadingBit(-2147483647i));
    var_0 = 1i;
    var var_1 = func_1();
    let var_2 = !select(vec3<bool>(true, !var_1.x, false), !select(var_1.zww, !vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(false, false, false), vec3<bool>(var_1.x, true, true), false)), any(!vec3<bool>(var_1.x, true, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, _wgslsmith_div_u32(~111857u, ~(~7220u)), ~95500u), ~(~abs(4294967295u)), max(_wgslsmith_add_i32(1i >> (1u % 32u), -_wgslsmith_clamp_i32(5270i, 53921i, 1848i)), ~select(2147483647i, _wgslsmith_mod_i32(-27716i, 1i), !var_1.x)));
}

