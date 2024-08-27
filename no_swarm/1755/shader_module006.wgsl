struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 2>;

var<private> global2: array<vec2<u32>, 24>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(13796u, 4294967295u)), Struct_1(vec2<u32>(75395u, 1u)), Struct_1(vec2<u32>(4294967295u, 8978u)), Struct_1(vec2<u32>(2920u, 19284u)), Struct_1(vec2<u32>(1u, 34994u)), Struct_1(vec2<u32>(25627u, 132628u)), Struct_1(vec2<u32>(4294967295u, 33850u)), Struct_1(vec2<u32>(0u, 20406u)), Struct_1(vec2<u32>(1u, 6208u)), Struct_1(vec2<u32>(23941u, 20260u)), Struct_1(vec2<u32>(91682u, 1u)), Struct_1(vec2<u32>(4294967295u, 31004u)), Struct_1(vec2<u32>(43960u, 57244u)), Struct_1(vec2<u32>(0u, 45978u)), Struct_1(vec2<u32>(6951u, 4294967295u)), Struct_1(vec2<u32>(59949u, 55668u)), Struct_1(vec2<u32>(18137u, 4294967295u)), Struct_1(vec2<u32>(7443u, 43631u)), Struct_1(vec2<u32>(1u, 33598u)), Struct_1(vec2<u32>(83475u, 17622u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(46219u, 11548u)), Struct_1(vec2<u32>(34874u, 29870u)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = 1i;
    global3 = array<Struct_1, 23>();
    global2 = array<vec2<u32>, 24>();
    var var_1 = arg_1;
    global3 = array<Struct_1, 23>();
    return 56039u;
}

fn func_1() -> u32 {
    global1 = array<bool, 2>();
    var var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a.x, u_input.b.x, ~u_input.b.x), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 67602u, u_input.b.x), vec3<u32>(1u, global0.a.x, u_input.b.x)), 4294967295u, reverseBits(global0.a.x)));
    global2 = array<vec2<u32>, 24>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.a.x, func_2(-u_input.c.x, Struct_1(_wgslsmith_add_vec2_u32(global0.a, vec2<u32>(64090u, 12602u))))) << (u_input.b.x % 32u), 23u)];
    var var_2 = Struct_1(~var_1.a);
    return ~(~_wgslsmith_sub_u32(~0u, 4294967295u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> vec3<i32> {
    return vec3<i32>(~arg_0.x, -1i, _wgslsmith_div_i32(33837i, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 2>();
    global3 = array<Struct_1, 23>();
    var var_0 = global3[_wgslsmith_index_u32(reverseBits(~(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, u_input.b.x), vec3<u32>(global0.a.x, 4294967295u, global0.a.x)) ^ 0u) >> ((func_1() & ~global0.a.x) % 32u)), 23u)];
    var var_1 = firstTrailingBit(vec4<u32>(var_0.a.x, global0.a.x, firstTrailingBit(_wgslsmith_div_u32(global0.a.x, u_input.b.x)), ~_wgslsmith_mod_u32(1u, 26926u))) & min(~firstLeadingBit(vec4<u32>(u_input.b.x, 36620u, u_input.b.x, 11574u)), ~vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), 0u, ~var_0.a.x));
    let var_2 = -u_input.c.x;
    global1 = array<bool, 2>();
    let var_3 = vec2<u32>(var_0.a.x, global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(var_2, u_input.a)), -(vec2<i32>(u_input.c.x, 2147483647i) & u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(76746i, u_input.c.x, 1i), select(vec3<i32>(var_2, u_input.c.x, var_2), vec3<i32>(var_2, var_2, u_input.a), vec3<bool>(false, global1[_wgslsmith_index_u32(global0.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.b.x, 2u)])) | vec3<i32>(-1i, -51949i, u_input.a))), -_wgslsmith_add_vec3_i32(~vec3<i32>(var_2, var_2, u_input.c.x), vec3<i32>(-2147483647i, var_2, 0i)) | _wgslsmith_add_vec3_i32(func_3(-vec3<i32>(3302i, -2147483647i, u_input.c.x), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(1u, 2u)]), false, ~1u), ~vec3<i32>(38686i, var_2, u_input.a)), _wgslsmith_add_vec3_i32(abs(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, var_2), vec3<i32>(35841i, var_2, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, 0i), vec3<i32>(var_2, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, var_2, var_2)))), reverseBits(vec3<i32>(firstLeadingBit(15366i), -35858i ^ u_input.c.x, 1i))));
}

