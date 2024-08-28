struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(38693i, vec4<u32>(94583u, 26497u, 0u, 101614u), vec3<u32>(44801u, 1u, 0u));

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    global0 = Struct_1(select(-(~abs(u_input.c.x)), u_input.c.x, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true))), vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, global0.b.x), ~u_input.d)), firstLeadingBit(u_input.d.x) << (firstLeadingBit(4294967295u) % 32u), _wgslsmith_dot_vec2_u32(u_input.d, ~abs(vec2<u32>(u_input.a.x, u_input.a.x))), min(_wgslsmith_mod_u32(28621u, u_input.b), 42977u) ^ 20223u), reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(global0.b.yyz), global0.c), ~firstLeadingBit(global0.b.x), u_input.d.x)));
    var var_0 = global1[_wgslsmith_index_u32(select(~(0u | ~(~global0.c.x)), 0u, select(any(vec2<bool>(true, true)), select(true, true, false), true)), 1u)];
    var var_1 = true;
    let var_2 = true;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c.x, _wgslsmith_mult_u32(abs(_wgslsmith_mod_u32(57872u, ~7714u)), global0.c.x), var_0.c.x), 1u)];
    return countOneBits(1u);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<bool>) -> u32 {
    global0 = Struct_1(_wgslsmith_sub_i32(select(~(u_input.c.x | -21983i), countOneBits(i32(-1i) * -1i), false), -1i), vec4<u32>(~43209u, global0.c.x, _wgslsmith_clamp_u32(func_3(), ~arg_1, 0u), 0u) & global0.b, ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(global0.b.ywy, global0.b.zyw), vec3<u32>(18534u, global0.c.x, arg_1))));
    global1 = array<Struct_1, 1>();
    var var_0 = Struct_1(u_input.c.x, global0.b, global0.c);
    var_0 = global1[_wgslsmith_index_u32(~4294967295u, 1u)];
    var var_1 = Struct_1(_wgslsmith_add_i32(2147483647i, firstLeadingBit(1i)), var_0.b, _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(countOneBits(global0.b.zzz), max(u_input.a.wxx, vec3<u32>(var_0.c.x, 29067u, 19382u)))), vec3<u32>(var_0.b.x, 56271u, arg_1)));
    return _wgslsmith_sub_u32(~(~25835u), countOneBits(1u));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global1 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~firstTrailingBit(14709u), func_2(-451f, global0.b.x, vec4<bool>(false, false, false, true)) ^ reverseBits(arg_2), 4294967295u), reverseBits(~vec3<u32>(12425u, u_input.a.x, 0u) | ~u_input.a.yyx), vec3<u32>(abs(4294967295u & u_input.d.x), global0.c.x | arg_0.x, arg_2)), abs(arg_1.c & max(firstLeadingBit(vec3<u32>(1u, u_input.b, arg_1.b.x)), arg_1.c)));
    let var_1 = _wgslsmith_add_vec4_u32(countOneBits(arg_1.b), _wgslsmith_mult_vec4_u32(vec4<u32>(~71410u, global0.b.x, ~arg_0.x, ~(~0u)), ~global0.b));
    let var_2 = Struct_1(u_input.c.x, arg_1.b >> (vec4<u32>((arg_1.c.x >> (arg_2 % 32u)) | min(global0.c.x, var_1.x), global0.b.x, 52589u, func_2(251f, var_0.x & 9494u, vec4<bool>(true, true, true, true))) % vec4<u32>(32u)), vec3<u32>(1u, 4294967295u, ~(~u_input.d.x)));
    var var_3 = abs(_wgslsmith_add_vec2_i32(u_input.c, u_input.c)) | reverseBits(min(abs(u_input.c), firstLeadingBit(u_input.c)));
    return max(~func_3(), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(4294967295u, func_1(~vec2<u32>(0u, 1u), global1[_wgslsmith_index_u32(1u, 1u)], global0.b.x)), countOneBits(-(~u_input.c.x | ~global0.a)));
}

