struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
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

var<private> global0: array<bool, 3>;

var<private> global1: array<u32, 13>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global0 = array<bool, 3>();
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    let var_0 = Struct_2(~u_input.b.x > ~u_input.b.x, u_input.b);
    var var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(4294967295u, 1u, arg_0.x, u_input.a)), global1[_wgslsmith_index_u32(arg_0.x, 13u)] << (0u % 32u))), 29878u, 0u);
    return ~u_input.a;
}

fn func_3(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i ^ arg_1, u_input.b.x, -20021i) | vec3<i32>(13484i >> (global1[_wgslsmith_index_u32(u_input.a, 13u)] % 32u), _wgslsmith_mult_i32(1i, arg_1), 12967i), ~vec3<i32>(-2147483647i, _wgslsmith_sub_i32(arg_1, 0i), arg_1)) | reverseBits(vec3<i32>(~14767i << (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 24662u) % 32u), 2147483647i, u_input.b.x | u_input.b.x));
    let var_1 = arg_1 > arg_1;
    let var_2 = u_input.b.x >> (1u % 32u);
    let var_3 = Struct_1(vec2<u32>(u_input.a, ~(~u_input.a)) & ~vec2<u32>(1u, 1u), _wgslsmith_dot_vec2_u32(min(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(37438u, 13u)])), ~vec2<u32>(u_input.a, 11267u), ~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 4294967295u)), countOneBits(vec2<u32>(u_input.a, 4294967295u) & reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])))));
    let var_4 = u_input.a;
    return Struct_1(var_3.a, ~(~u_input.a));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = func_3(~(~3487u) <= (u_input.a ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(func_2(vec4<u32>(40431u, 80380u, 52156u, u_input.a))), 13u)], 13u)]), select(arg_1.x, ~(-5139i), false));
    var var_1 = -373f;
    let var_2 = vec2<bool>(_wgslsmith_clamp_i32(~(-2147483647i), arg_0.x, u_input.b.x) < _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -3915i, _wgslsmith_div_i32(1i, arg_0.x)), vec3<i32>(reverseBits(8816i), 1i, arg_0.x)), true);
    let var_3 = Struct_1(var_0.a, func_2(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 16141u, 8719u, 72049u), vec4<u32>(u_input.a, 0u, var_0.a.x, u_input.a)), ~vec4<u32>(0u, u_input.a, var_0.b, global1[_wgslsmith_index_u32(var_0.a.x, 13u)]), vec4<u32>(var_0.b, u_input.a, 1u, var_0.a.x) >> (vec4<u32>(30607u, 1189u, 0u, 1u) % vec4<u32>(32u)))));
    let var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b ^ 32180u, global1[_wgslsmith_index_u32(var_3.a.x, 13u)], var_0.a.x | _wgslsmith_add_u32(0u, var_3.b)), vec3<u32>(var_3.a.x, u_input.a, func_3(u_input.b.x == u_input.b.x, i32(-1i) * -1i).a.x)) | vec3<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], 48410u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], var_0.a.x, 4294967295u, var_0.a.x)), reverseBits(var_3.b) >> (6153u % 32u)), func_2(vec4<u32>(28632u, ~u_input.a, var_3.a.x, 40889u)), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 1u, var_3.b, 57704u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 79u, u_input.a, 65035u))) | func_2(vec4<u32>(global1[_wgslsmith_index_u32(74153u, 13u)], 72328u, 0u, 6580u) << (vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(var_3.b, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], var_0.a.x) % vec4<u32>(32u))));
    return Struct_2(!global0[_wgslsmith_index_u32(select(85906u, 1u << (_wgslsmith_clamp_u32(var_4.x, var_0.a.x, var_4.x) % 32u), any(!var_2)), 3u)], vec3<i32>(countOneBits(select(~2147483647i, ~15558i, global0[_wgslsmith_index_u32(4294967295u, 3u)])), -2147483647i, _wgslsmith_mult_i32(-u_input.b.x, ~arg_0.x) << ((_wgslsmith_mult_u32(6897u, 1u) >> (_wgslsmith_mult_u32(6818u, var_0.a.x) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-u_input.b.xz, min(vec4<i32>(_wgslsmith_sub_i32(-1i, u_input.b.x), i32(-1i) * -u_input.b.x, u_input.b.x, abs(-u_input.b.x)), -(~select(vec4<i32>(u_input.b.x, -1i, 488i, 34784i), vec4<i32>(-2008i, u_input.b.x, u_input.b.x, 42420i), vec4<bool>(global0[_wgslsmith_index_u32(6441u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(978u, 3u)], false)))));
    global0 = array<bool, 3>();
    global1 = array<u32, 13>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_1 = vec4<i32>(func_1(~vec2<i32>(countOneBits(u_input.b.x), var_0.b.x), ~(~(vec4<i32>(-14027i, var_0.b.x, u_input.b.x, 64442i) << (vec4<u32>(1u, u_input.a, 22390u, u_input.a) % vec4<u32>(32u))))).b.x, ~reverseBits(abs(u_input.b.x)), u_input.b.x, _wgslsmith_mod_i32(-28258i, var_0.b.x) >> (~_wgslsmith_sub_u32(abs(global1[_wgslsmith_index_u32(u_input.a, 13u)]), global1[_wgslsmith_index_u32(1u, 13u)]) % 32u));
    var var_2 = func_1(vec2<i32>(var_0.b.x, -1i), _wgslsmith_add_vec4_i32(abs(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_1.x, var_1.x, 1i), vec4<i32>(var_0.b.x, var_0.b.x, u_input.b.x, -30802i)))), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.x));
}

