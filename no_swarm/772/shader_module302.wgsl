struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(-625f, 653f), vec2<f32>(-889f, 514f), vec2<f32>(1000f, 511f), vec2<f32>(-738f, -703f), vec2<f32>(-2033f, 179f), vec2<f32>(572f, 1474f), vec2<f32>(786f, -1083f), vec2<f32>(491f, -585f), vec2<f32>(-2415f, 1336f), vec2<f32>(1000f, -425f), vec2<f32>(-2356f, 392f), vec2<f32>(1000f, 633f), vec2<f32>(465f, 757f), vec2<f32>(1138f, 1000f), vec2<f32>(-192f, 694f), vec2<f32>(-2668f, 1000f), vec2<f32>(1049f, 257f), vec2<f32>(-466f, 398f), vec2<f32>(-1247f, 1262f), vec2<f32>(-508f, -1597f), vec2<f32>(-839f, 1000f), vec2<f32>(1036f, 416f), vec2<f32>(432f, -1000f), vec2<f32>(1476f, 639f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    return 13182u;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> i32 {
    let var_0 = arg_2.a;
    var var_1 = Struct_2(Struct_1(1f, vec4<bool>(true, true, true, true)));
    global1 = array<vec2<f32>, 24>();
    return countOneBits(select(-_wgslsmith_clamp_i32(arg_0, firstLeadingBit(-8327i), ~arg_0), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_2.b, arg_0), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(arg_2.a.x, 31u)])), -3243i) ^ 19491i, true));
}

fn func_3() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.b, 24u)];
    global0 = array<i32, 31>();
    var var_1 = Struct_1(var_0.x, !vec4<bool>(true, !any(vec3<bool>(false, false, true)), !select(true, true, true), true));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_1.a - var_0.x), select(var_1.b, !select(var_1.b, var_1.b, true), var_1.b.x)));
    let var_3 = ~_wgslsmith_dot_vec4_u32(countOneBits(max(max(vec4<u32>(1u, u_input.d, u_input.d, 11215u), vec4<u32>(u_input.d, 4294967295u, 18119u, u_input.c)), vec4<u32>(u_input.a, 0u, 1u, 51153u) & vec4<u32>(0u, 17643u, 598u, 0u))), vec4<u32>(1u, ~(~4294967295u), abs(u_input.d) >> (1u % 32u), ~u_input.c));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global1 = array<vec2<f32>, 24>();
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(~78850u), _wgslsmith_mult_u32(max(u_input.c, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.d), vec3<u32>(u_input.d, u_input.d, 60070u))) & ~u_input.d), (~(~vec2<u32>(39236u, 4294967295u)) & ~abs(vec2<u32>(4294967295u, u_input.a))) << (vec2<u32>(2389u, ~(~12684u)) % vec2<u32>(32u)));
    let var_2 = Struct_3(var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 31u)] & 2147483647i, 0i, global0[_wgslsmith_index_u32(func_1(Struct_1(1386f, vec4<bool>(false, false, true, true)), Struct_3(vec2<u32>(var_1.x, var_1.x), 0i), firstLeadingBit(vec4<u32>(38201u, 4294967295u, var_1.x, 4294967295u)), Struct_1(-1134f, vec4<bool>(true, true, true, true))), 31u)], ~1i << (u_input.d % 32u)), _wgslsmith_div_vec4_i32(vec4<i32>(~global0[_wgslsmith_index_u32(4294967295u, 31u)], 22161i & global0[_wgslsmith_index_u32(1u, 31u)], -9854i, global0[_wgslsmith_index_u32(19804u, 31u)]), -_wgslsmith_mult_vec4_i32(vec4<i32>(-18947i, 2147483647i, global0[_wgslsmith_index_u32(var_1.x, 31u)], 45679i), vec4<i32>(global0[_wgslsmith_index_u32(38840u, 31u)], 31403i, global0[_wgslsmith_index_u32(0u, 31u)], -1i)))));
    var_0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~43433i, func_2(_wgslsmith_clamp_i32(-1i ^ var_2.b, ~(-53173i), _wgslsmith_sub_i32(12595i, 36264i)), _wgslsmith_mult_u32(u_input.a, ~4294967295u), Struct_3(var_2.a & var_2.a, _wgslsmith_add_i32(var_2.b, global0[_wgslsmith_index_u32(var_2.a.x, 31u)]))), -reverseBits(~2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(1699f, 489f)), -153f, _wgslsmith_f_op_f32(func_3()), -1708f)))), max(_wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(73256i, global0[_wgslsmith_index_u32(0u, 31u)], 46690i, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<i32>(var_2.b, -36089i, var_2.b, global0[_wgslsmith_index_u32(37045u, 31u)]))), abs(vec4<i32>(1i, global0[_wgslsmith_index_u32(82836u, 31u)], var_2.b, global0[_wgslsmith_index_u32(41032u, 31u)]) << (vec4<u32>(var_1.x, 0u, 0u, var_1.x) % vec4<u32>(32u))), vec4<i32>(global0[_wgslsmith_index_u32(var_2.a.x, 31u)], 1i, global0[_wgslsmith_index_u32(32338u, 31u)], 0i) << (vec4<u32>(1u, var_1.x, var_2.a.x, var_1.x) % vec4<u32>(32u))), select(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_2.b, var_2.b, 27280i, global0[_wgslsmith_index_u32(var_1.x, 31u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b, -7781i, global0[_wgslsmith_index_u32(1u, 31u)], var_2.b), vec4<i32>(26612i, 38330i, -1i, -1i))), vec4<i32>(-65098i << (var_1.x % 32u), global0[_wgslsmith_index_u32(var_2.a.x, 31u)] ^ global0[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.b, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(var_1.x, 31u)]), vec4<i32>(44811i, var_2.b, -2147483647i, 0i)), -global0[_wgslsmith_index_u32(1u, 31u)]), all(vec4<bool>(false, true, false, false)))));
}

