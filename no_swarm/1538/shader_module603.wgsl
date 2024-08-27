struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<u32, 16>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    global0 = array<u32, 16>();
    let var_0 = 1u;
    global0 = array<u32, 16>();
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(2147483647i ^ arg_2.c.a, _wgslsmith_sub_i32(-3561i, -20458i)), _wgslsmith_sub_i32(arg_2.a.a, arg_2.c.a), arg_2.a.a);
    var var_2 = !(!any(!vec3<bool>(arg_1, arg_1, false)) && arg_1);
    return Struct_2(arg_2.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), 1322f, -110f), Struct_1(var_1.x, arg_2.c.b));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> bool {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-arg_0.b.c.a, func_1(max(arg_0.a.xw, arg_0.a.zx), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)), Struct_4(func_1(vec2<u32>(0u, 4294967295u), false, Struct_4(Struct_1(arg_0.b.c.a, vec4<u32>(arg_2, arg_0.a.x, 97527u, arg_0.c.x)), vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 0u, arg_2), Struct_1(arg_0.b.c.a, arg_0.a))).a, vec3<u32>(47881u, 281u, arg_2), func_1(arg_0.c, true, Struct_4(arg_0.b.c, vec3<u32>(54449u, 21545u, u_input.a), Struct_1(arg_0.b.a.a, arg_0.a))).c)).c.a, -_wgslsmith_clamp_i32(i32(-1i) * -1i, -23828i, firstLeadingBit(arg_0.b.c.a)), arg_0.b.a.a >> (1u % 32u)), ~countOneBits(min(select(vec4<i32>(7789i, -1i, 24860i, 12452i), vec4<i32>(34085i, 51348i, arg_0.b.c.a, 2147483647i), false), ~vec4<i32>(arg_0.b.a.a, arg_0.b.c.a, arg_0.b.a.a, -47218i))));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    return !all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    return vec4<bool>(~arg_0.a == (select(-25274i, ~arg_0.a, true) >> (0u % 32u)), true & !func_3(Struct_3(vec4<u32>(arg_1.b.x, u_input.a, 12888u, arg_1.b.x), Struct_2(arg_0, vec3<f32>(362f, 2403f, 604f), arg_0), vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_f32(796f - -1406f), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(arg_1.b.x, 16u)], global0[_wgslsmith_index_u32(arg_1.b.x, 16u)])), select(true, func_1(vec2<u32>(0u, 18412u), true, Struct_4(arg_1, arg_1.b.yxx, Struct_1(arg_0.a, vec4<u32>(7894u, u_input.a, 4294967295u, 344u)))).a.a < arg_0.a, all(vec3<bool>(all(vec3<bool>(true, false, true)), true, false))), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    var var_0 = -(~(-vec2<i32>(~arg_0.c.a, -1i)));
    let var_1 = arg_0.a.a;
    var_0 = max(min(vec2<i32>(-(~(-1i)), -arg_0.c.a), firstLeadingBit(~(~vec2<i32>(-49646i, var_0.x)))), -firstTrailingBit(-(vec2<i32>(var_0.x, var_1) & vec2<i32>(var_0.x, -2147483647i))));
    global0 = array<u32, 16>();
    let var_2 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -reverseBits(vec4<i32>(2147483647i, var_1, -1i, 0i)));
    return arg_0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~func_4(func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26265u, 16u)], 16u)], 13572u), vec2<u32>(u_input.a, 60820u)), true, Struct_4(Struct_1(0i, vec4<u32>(0u, 1u, 4294967295u, 0u)), vec3<u32>(85147u, 0u, u_input.a), Struct_1(-32613i, vec4<u32>(u_input.a, 4464u, 7081u, global0[_wgslsmith_index_u32(u_input.a, 16u)])))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), any(func_2(Struct_1(-7646i, vec4<u32>(8195u, u_input.a, 43328u, 40361u)), Struct_1(9708i, vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 16u)], 1u, 1u))))), func_1(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 16u)], 1u), true, Struct_4(func_1(vec2<u32>(1u, 0u), false, Struct_4(Struct_1(2147483647i, vec4<u32>(0u, u_input.a, 0u, 37217u)), vec3<u32>(1u, 1u, 4294967295u), Struct_1(-1i, vec4<u32>(52425u, 0u, 1u, 4294967295u)))).a, ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], u_input.a, u_input.a), Struct_1(1i, vec4<u32>(global0[_wgslsmith_index_u32(4661u, 16u)], global0[_wgslsmith_index_u32(9195u, 16u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 16u)])))).a.b << (vec4<u32>(u_input.a, 1u, _wgslsmith_mult_u32(0u, 8307u), countOneBits(0u) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)] % 32u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_0.a | -5603i, -1i, true));
}

