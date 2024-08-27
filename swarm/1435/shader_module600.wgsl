struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = 1748u;
    var_0 = arg_3.c;
    var var_1 = arg_3;
    let var_2 = !select(!vec3<bool>(var_1.a.x, true, arg_2.x), var_1.a, (var_1.c >= ~arg_3.c) & any(!vec4<bool>(arg_2.x, true, false, arg_3.a.x)));
    var_0 = _wgslsmith_mod_u32(~var_1.c, 54183u) << (~(~_wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(var_1.c, arg_3.c))) % 32u);
    return vec4<bool>(1i == (u_input.b.x ^ -38228i), false, firstTrailingBit(var_1.c) > _wgslsmith_add_u32(~(~4294967295u), reverseBits(select(arg_3.c, 4294967295u, var_1.a.x))), true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = select(select(select(vec4<bool>(false, true, any(arg_1.c.a), arg_1.c.a.x), !vec4<bool>(arg_1.c.a.x, arg_0.c.a.x, arg_1.c.a.x, arg_0.c.a.x), !vec4<bool>(arg_1.c.a.x, false, false, arg_1.c.a.x)), !(!(!vec4<bool>(arg_1.c.a.x, false, arg_0.c.a.x, arg_1.c.a.x))), arg_1.c.a.x), !(!(!func_3(arg_0.b, 43086i, vec3<bool>(arg_1.c.a.x, false, true), Struct_1(arg_1.c.a, arg_0.a, 0u)))), select(vec4<bool>(true, select(arg_0.c.a.x && arg_0.c.a.x, false, arg_0.c.a.x), true, arg_1.c.a.x), vec4<bool>(arg_1.c.a.x, true, !any(arg_1.c.a), arg_0.c.a.x), !arg_0.c.a.x));
    var_0 = vec4<bool>(((~0i >> (arg_1.c.c % 32u)) != (abs(arg_1.a.x) >> (0u % 32u))) & !(16306u > ~arg_1.c.c), (4294967295u >> (arg_0.c.c % 32u)) >= ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(81711u, 4294967295u, 8233u), select(0u, arg_0.c.c, arg_0.c.a.x), 4294967295u ^ arg_0.c.c), all(select(var_0.yx, select(!arg_1.c.a.zy, vec2<bool>(true, true), all(vec4<bool>(arg_0.c.a.x, false, true, false))), arg_0.c.a.x)), all(!arg_0.c.a));
    var_0 = func_3(vec2<i32>(max(~arg_0.a.x, arg_0.a.x) << (0u % 32u), 25154i), arg_1.c.b.x, vec3<bool>(true, true, arg_0.c.a.x), Struct_1(!select(select(arg_0.c.a, vec3<bool>(arg_0.c.a.x, var_0.x, false), var_0.ywz), select(vec3<bool>(true, var_0.x, true), vec3<bool>(arg_1.c.a.x, false, var_0.x), arg_0.c.a.x), true), vec2<i32>(i32(-1i) * -23892i, reverseBits(arg_0.a.x)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(90802u, arg_1.c.c), countOneBits(vec2<u32>(arg_0.c.c, arg_0.c.c))) % vec2<u32>(32u)), 4319u));
    return arg_1.c.c;
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, any(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))), vec2<i32>(-13671i << (1u % 32u), ~_wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), ~_wgslsmith_div_u32(~1u, reverseBits(func_2(Struct_2(u_input.b, vec2<i32>(-14835i, u_input.b.x), Struct_1(vec3<bool>(false, false, false), vec2<i32>(0i, u_input.a), 1u)), Struct_2(u_input.b, u_input.b, Struct_1(vec3<bool>(false, false, true), u_input.b, 79765u)), -604f))));
    let var_1 = Struct_2(u_input.b, -vec2<i32>(21284i & var_0.b.x, u_input.b.x), var_0);
    let var_2 = Struct_2(var_0.b, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, _wgslsmith_add_vec2_i32(abs(vec2<i32>(0i, -18552i)), var_1.c.b & u_input.b)), vec2<i32>(abs(_wgslsmith_clamp_i32(var_1.b.x, 15956i, -32245i)), -_wgslsmith_sub_i32(0i, u_input.a))), var_0);
    var var_3 = -1000f;
    let var_4 = ~firstLeadingBit(vec2<i32>(~var_0.b.x, var_0.b.x));
    return vec4<i32>(_wgslsmith_clamp_i32(min(var_4.x, -60385i), var_0.b.x, var_4.x), var_1.a.x, var_2.a.x, reverseBits(var_2.c.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_i32(func_1(), -(vec4<i32>(2147483647i >> (0u % 32u), -1i, -65382i, 17161i) | reverseBits(vec4<i32>(u_input.a, u_input.a, 0i, 0i))));
    var var_1 = Struct_1(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, false, false)), u_input.b.x != 2147483647i, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), any(func_3(vec2<i32>(-1i, u_input.b.x), firstLeadingBit(2147483647i), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, false, false), u_input.b, 0u)))), min(u_input.b, vec2<i32>(u_input.b.x, -_wgslsmith_mod_i32(u_input.a, 20966i))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

