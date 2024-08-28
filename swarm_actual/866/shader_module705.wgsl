struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: Struct_1;

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    let var_1 = 1u | select(~(~_wgslsmith_dot_vec2_u32(global1.c, global1.b.zz)), global1.a.x | 0u, true);
    global2 = ~(-1i) >> (~(global1.a.x | ~_wgslsmith_clamp_u32(var_1, var_1, 31843u)) % 32u);
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(select(global1.c.x, _wgslsmith_mod_u32(0u, global1.a.x) ^ global1.b.x, !(var_0 & true)), ~(~48662u | global1.c.x)), 2u)];
    let var_2 = 26965u;
    return Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.c.x, 33310u, var_1, u_input.a), global1.b), ~global1.b, vec4<u32>(1u, 4294967295u, 4294967295u, 0u)) | global1.b, ~select(_wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, 1947u, 4294967295u, global1.c.x), global1.b), _wgslsmith_div_vec4_u32(vec4<u32>(26671u, var_1, var_1, 0u), global1.a)), ~vec4<u32>(42478u, var_1, global1.b.x, global1.b.x) ^ select(vec4<u32>(u_input.a, u_input.a, 5035u, 4294967295u), vec4<u32>(global1.c.x, u_input.b.x, global1.a.x, 1u), false), !all(vec3<bool>(false, var_0, var_0))), _wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 1u), ~u_input.b, false), _wgslsmith_clamp_vec2_u32(~global1.c, vec2<u32>(var_1, 0u), u_input.b)) & ~min(global1.a.xx ^ u_input.b, firstLeadingBit(global1.c)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = select(!vec4<bool>(all(!vec4<bool>(true, arg_2, arg_2, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.x, 31263u), 2u)] >= -7589i, arg_2, false), vec4<bool>(false, all(select(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(false, false, arg_2, true), false), select(vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(true, true, arg_2, arg_2), false), !vec4<bool>(arg_2, false, false, true))), !(!any(vec2<bool>(arg_2, false))), true), vec4<bool>(true, arg_2, false, !(!all(vec2<bool>(arg_2, arg_2)))));
    var var_1 = !(_wgslsmith_div_u32(1u, 1u) <= firstTrailingBit(~(~19469u)));
    let var_2 = arg_0.e;
    let var_3 = func_1();
    var_1 = any(var_0);
    return ~global1.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec2<i32> {
    return min(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(45499u, 2u)], 0i))), ((vec2<i32>(-2147483647i, arg_0.b) >> (vec2<u32>(36656u, u_input.a) % vec2<u32>(32u))) & ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], -7315i)) | -vec2<i32>(20985i, 1i)) << (abs(vec2<u32>(func_3(Struct_2(arg_0.a, 14990i, 1i, vec3<f32>(arg_0.d.x, arg_0.d.x, 1661f), arg_0.e), 4294967295u, true) ^ 62076u, ~firstTrailingBit(u_input.a))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b.x, ~42694u, min(min(_wgslsmith_sub_u32(global1.a.x, 0u), _wgslsmith_clamp_u32(global1.b.x, u_input.a, 584u)), u_input.b.x)), 2u)];
    global2 = global0[_wgslsmith_index_u32(~countOneBits(~(u_input.b.x | 4294967295u)), 2u)];
    global1 = func_1();
    let var_0 = _wgslsmith_clamp_i32(abs(global0[_wgslsmith_index_u32(10647u, 2u)]), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global1.b | vec4<u32>(1u, 4294967295u, 108340u, 21465u), vec4<u32>(global1.c.x, global1.b.x, global1.c.x, 32328u) | global1.a), 2u)], max(-1i, global0[_wgslsmith_index_u32(~u_input.a, 2u)])) | _wgslsmith_add_i32(-31327i, -19700i);
    global0 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~vec3<u32>(38031u, u_input.a & global1.b.x, 19787u), ~select(~global1.a.zzy, ~vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<bool>(true, true, true)), vec3<u32>(global1.b.x, 95711u, ~(~global1.b.x))), _wgslsmith_mod_vec2_i32(min(-vec2<i32>(global0[_wgslsmith_index_u32(global1.c.x, 2u)], global0[_wgslsmith_index_u32(global1.a.x, 2u)]), func_2(Struct_2(global1.a.zzx, var_0, -2147483647i, vec3<f32>(1000f, -253f, 1000f), -295f), -25696i)) >> (abs(~u_input.b) % vec2<u32>(32u)), firstLeadingBit((vec2<i32>(global0[_wgslsmith_index_u32(global1.a.x, 2u)], -1i) << (u_input.b % vec2<u32>(32u))) ^ (vec2<i32>(var_0, var_0) >> (vec2<u32>(0u, global1.b.x) % vec2<u32>(32u))))), vec2<u32>(4321u, ~1u), vec3<u32>(~(~(~global1.a.x)), ~global1.b.x, ~17043u), _wgslsmith_clamp_i32(var_0, -7987i ^ (global0[_wgslsmith_index_u32(1u, 2u)] | global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), countOneBits(1i)) ^ 12120i);
}

