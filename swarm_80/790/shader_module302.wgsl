struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_0 = 24287u;
    return vec3<bool>(!any(arg_0) && arg_0.x, all(arg_0.zx), true);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_1, 14>();
    let var_0 = reverseBits(vec4<i32>(~(arg_0.a.x >> (arg_0.c % 32u)), -arg_0.a.x, -28956i, arg_0.a.x >> (25399u % 32u)) ^ firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -35638i), min(vec4<i32>(arg_0.a.x, arg_0.a.x, 10268i, arg_0.a.x), vec4<i32>(0i, -2147483647i, u_input.a, -1i)))));
    var var_1 = Struct_2(vec3<bool>(all(select(select(vec2<bool>(arg_0.d.x, arg_0.d.x), vec2<bool>(arg_0.d.x, false), arg_0.d.x), func_1(arg_0.d).xy, !arg_0.d.wz)), select(false, all(!vec4<bool>(arg_0.d.x, arg_0.d.x, true, false)), all(!arg_0.d.zzx)), func_1(select(vec4<bool>(false, arg_0.d.x, false, arg_0.d.x), vec4<bool>(arg_0.d.x, false, true, arg_0.d.x), arg_0.d.x)).x), -36750i);
    global0 = array<Struct_1, 14>();
    let var_2 = vec2<bool>(arg_0.d.x, false);
    return _wgslsmith_mult_u32(1u, abs(arg_0.c));
}

fn func_2() -> StorageBuffer {
    global0 = array<Struct_1, 14>();
    let var_0 = -(~_wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(0i, u_input.a >> (95298u % 32u))));
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(~4294967295u, firstTrailingBit(1u)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(13264u, 4294967295u), func_3(Struct_1(vec3<i32>(1i, 28096i, -2147483647i), -763f, 0u, vec4<bool>(true, true, true, false), -1492f))), _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33867u, 42995u, 1u, 4294967295u), vec4<u32>(100112u, 1u, 4294967295u, 65329u)), ~23349u, 4294967295u)), ~(~78286u)), vec4<u32>(_wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(24905u, 4294967295u), vec2<u32>(0u, 84610u))), 0u), ~_wgslsmith_sub_u32(max(11664u, 4294967295u), _wgslsmith_mult_u32(50252u, 1u)), 11924u, 26091u));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x ^ _wgslsmith_sub_u32(var_1.x, var_1.x), 14u)];
    global0 = array<Struct_1, 14>();
    return StorageBuffer(var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    let var_0 = ~1u;
    var var_1 = true;
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(max(_wgslsmith_sub_u32(var_0, var_0), 6734u), var_0) >> (min(vec2<u32>(_wgslsmith_add_u32(var_0, 27774u), _wgslsmith_sub_u32(var_0, var_0)), ~(vec2<u32>(var_0, var_0) >> (vec2<u32>(0u, 35797u) % vec2<u32>(32u)))) % vec2<u32>(32u)), vec2<u32>(45362u, 67528u));
    var var_3 = func_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(var_0 > 35961u, true, true, u_input.a == u_input.a)), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(any(vec4<bool>(false, false, true, true)), var_2.x > var_0, false, false)), vec4<bool>(true, true, !any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = func_2();
}

