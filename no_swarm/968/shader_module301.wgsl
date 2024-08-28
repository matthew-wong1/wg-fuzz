struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 18>;

var<private> global2: array<bool, 12>;

var<private> global3: array<bool, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> bool {
    return true;
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = global0.a;
    global2 = array<bool, 12>();
    global0 = Struct_2(global0.b, global0.a, abs(countOneBits(min(_wgslsmith_mod_i32(2147483647i, -1i), u_input.a.x))), 38560i, ~global1[_wgslsmith_index_u32(firstTrailingBit(~global0.b.a), 18u)]);
    let var_1 = global0.b;
    let var_2 = Struct_1(firstLeadingBit(~global0.e), var_0.b);
    return countOneBits(global0.c);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<bool>) -> Struct_2 {
    global0 = Struct_2(Struct_1(29540u, global0.a.b), global0.a, u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(~u_input.a.x | -25682i, func_3(-1i, select(global0.c, u_input.a.x, false))), _wgslsmith_mult_i32(min(_wgslsmith_div_i32(global0.d, global0.d), u_input.a.x), _wgslsmith_mult_i32(-u_input.a.x, ~u_input.a.x))), _wgslsmith_dot_vec4_u32(max(min(global0.b.b & vec4<u32>(u_input.b, arg_1, 23086u, global1[_wgslsmith_index_u32(arg_1, 18u)]), vec4<u32>(14152u, arg_1, 4294967295u, 4294967295u)), firstLeadingBit(reverseBits(global0.b.b))), ~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global0.b.b.x, global1[_wgslsmith_index_u32(0u, 18u)], 30951u, u_input.c)), abs(global0.a.b))));
    global0 = Struct_2(Struct_1(1u, global0.a.b), Struct_1(69355u, global0.a.b), -4116i, select(-countOneBits(u_input.a.x), 1i, false), 1u);
    var var_0 = Struct_1(arg_1, ~_wgslsmith_mult_vec4_u32(global0.b.b, ~(~global0.b.b)));
    var_0 = Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_0.b.zyw, ~_wgslsmith_add_vec3_u32(global0.a.b.yyy, global0.a.b.wzw)), 18u)], vec4<u32>(min(~1u, ~firstLeadingBit(var_0.b.x)), 4294967295u, ~_wgslsmith_div_u32(36886u, ~global1[_wgslsmith_index_u32(global0.a.a, 18u)]), 1u));
    var var_1 = countOneBits(global0.a.b.x | ~(~44166u));
    return Struct_2(global0.b, global0.b, u_input.a.x, global0.d, global1[_wgslsmith_index_u32((u_input.c << (~(global1[_wgslsmith_index_u32(4294967295u, 18u)] | var_0.a) % 32u)) ^ arg_1, 18u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.yyw;
    global1 = array<u32, 18>();
    var var_1 = -26168i;
    var var_2 = ~u_input.a;
    var var_3 = func_2(global3[_wgslsmith_index_u32(global0.a.a, 32u)], u_input.c, vec4<bool>(global2[_wgslsmith_index_u32(global0.b.b.x, 12u)] | func_1(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 12u)] != true, global0.a.b.wyx), true, true, global3[_wgslsmith_index_u32(~42961u, 32u)]));
    let var_4 = !vec3<bool>(!(!global3[_wgslsmith_index_u32(4294967295u, 32u)]) | (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 18u)], 18u)] > (4294967295u >> (u_input.c % 32u))), true, true);
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(reverseBits(u_input.a.x), 0i), _wgslsmith_add_i32(i32(-1i) * -75047i, ~(min(-1i, u_input.a.x) ^ firstTrailingBit(37614i))));
}

