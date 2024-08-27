struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<u32, 10> = array<u32, 10>(10640u, 4294967295u, 0u, 1u, 6239u, 4294967295u, 24325u, 69906u, 0u, 1u);

var<private> global1: array<Struct_3, 25>;

var<private> global2: array<u32, 26> = array<u32, 26>(0u, 32200u, 57343u, 85991u, 0u, 105913u, 1u, 29989u, 28700u, 12378u, 12408u, 83535u, 0u, 63683u, 88771u, 0u, 0u, 75752u, 4294967295u, 0u, 4169u, 21599u, 0u, 47850u, 0u, 0u);

var<private> global3: array<Struct_5, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = 1531f;
    global1 = array<Struct_3, 25>();
    var var_1 = vec3<i32>(u_input.a, -1i, _wgslsmith_sub_i32(1i, 51344i));
    global1 = array<Struct_3, 25>();
    global3 = array<Struct_5, 26>();
    return abs(arg_2.x & 86232u);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = abs(14552u);
    var var_1 = -24561i > u_input.b;
    let var_2 = 21702i;
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(Struct_4(~global0[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(f32(-1f) * -988f)), 531f, ~vec3<u32>(0u, 1402u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16164u, 26u)], 10u)], 10u)], 10u)], 10u)]) ^ (vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(33331u, 10u)]) >> (vec3<u32>(1u, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56240u, 26u)], 26u)]) % vec3<u32>(32u))), !select(vec2<bool>(arg_0, true), vec2<bool>(true, false), vec2<bool>(false, arg_0))), 44508u, global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 10u)], 26u)], 26u)], 26u)])) << (countOneBits(1u) % 32u), 10u)], 26u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26951u, 26u)], 10u)] | 0u, ~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6915u, 26u)], 26u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 26u)], 1u), max(vec3<u32>(global0[_wgslsmith_index_u32(12286u, 10u)], 3872u, 0u), vec3<u32>(25505u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 26u)], 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15322u, 26u)], 26u)])))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(19727u, 26u)], global0[_wgslsmith_index_u32(0u, 10u)], 5591u, 0u) & vec4<u32>(0u, 1u, 1u, global2[_wgslsmith_index_u32(80185u, 26u)]), ~vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24364u, 10u)], 10u)], 26u)], global0[_wgslsmith_index_u32(1u, 10u)], 26986u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40358u, 10u)], 10u)])), min(~vec4<u32>(1231u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 26u)], 0u, global2[_wgslsmith_index_u32(0u, 26u)]), vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 26u)], 0u, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)])))), 26u)];
    var var_4 = min(vec2<i32>(_wgslsmith_sub_i32(~u_input.a, 0i), 20917i), -reverseBits(abs(vec2<i32>(-2147483647i, 19694i))));
    return 0u;
}

fn func_1() -> u32 {
    return ~(~global0[_wgslsmith_index_u32(func_2(true), 10u)] << (~_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(1u, 26u)]) % 32u)) | 46994u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2[_wgslsmith_index_u32(4294967295u, 26u)];
    let var_1 = global1[_wgslsmith_index_u32(func_1(), 25u)];
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>((-2147483647i << (0u % 32u)) >> (var_1.b % 32u), 31906i | select(-15787i, var_1.a.c, true), max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 13484i, u_input.b), vec3<i32>(-11122i, -39100i, var_1.a.c)), countOneBits(-4301i))), select(~vec3<i32>(-2147483647i, u_input.b, 1i) | ~vec3<i32>(u_input.a, 2147483647i, -1i), countOneBits(firstTrailingBit(vec3<i32>(var_1.a.c, -2147483647i, var_1.a.c))), !(!var_1.a.b)), ~max(max(vec3<i32>(var_1.a.c, -1i, u_input.b), vec3<i32>(0i, u_input.a, 32622i)), firstLeadingBit(vec3<i32>(u_input.b, u_input.b, -27310i)))), vec3<i32>(-1i, var_1.a.c, firstLeadingBit(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.c, -29232i, var_1.a.c, 1i), vec4<i32>(2147483647i, u_input.a, 0i, var_1.a.c))))));
    global1 = array<Struct_3, 25>();
    var var_3 = var_1.a;
    global1 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c);
}

