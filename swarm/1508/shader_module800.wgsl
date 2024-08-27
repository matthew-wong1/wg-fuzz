struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec3<u32>, 7>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<f32>(-1260f, 1311f, 712f), vec3<f32>(320f, 647f, 177f), vec4<i32>(-1i, -9120i, 1i, -3936i), 10474i, vec4<u32>(99439u, 7258u, 0u, 1u)), Struct_1(vec3<f32>(321f, 187f, 695f), vec3<f32>(1951f, -1038f, 578f), vec4<i32>(-1i, 1i, i32(-2147483648), -24909i), 0i, vec4<u32>(0u, 4294967295u, 16683u, 5338u)), Struct_1(vec3<f32>(425f, 904f, 1000f), vec3<f32>(392f, 1548f, 678f), vec4<i32>(-63874i, 8545i, -70010i, 4832i), 2147483647i, vec4<u32>(41060u, 37244u, 20375u, 82129u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(146527u, 7611u, arg_1.x, 1u), min(vec4<u32>(14424u, arg_1.x, 1u, 4294967295u), vec4<u32>(49766u, u_input.c.x, u_input.b, u_input.b)), vec4<bool>(false, true, false, global3.x)) | abs(vec4<u32>(arg_1.x, 0u, ~u_input.c.x, abs(u_input.c.x))), ~abs(vec4<u32>(1u, 2622u, 43461u, abs(arg_1.x)))), 23u)];
    let var_1 = false;
    var var_2 = var_1;
    global0 = array<Struct_1, 3>();
    let var_3 = vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(36511i, -1i, firstTrailingBit(0i)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(26307i, 7092i, -36147i), var_0.c.xxx), -var_0.c.zwz), any(vec2<bool>(true, true))), -vec3<i32>(2147483647i, -u_input.a.x, ~11951i)));
    return 808f;
}

fn func_2() -> i32 {
    var var_0 = 83699u;
    global0 = array<Struct_1, 3>();
    var_0 = u_input.c.x;
    global1 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(-1i, 0i)), select(vec2<i32>(abs(u_input.a.x & -1i), 2314i), _wgslsmith_div_vec2_i32(vec2<i32>(35585i, -1i), ~(vec2<i32>(2147483647i, 30662i) >> (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u)))), global3.x));
    return -_wgslsmith_clamp_i32(26411i, -59653i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 23>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1084f * -156f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-916f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-749f - 1f), 676f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(max(1041f, 1515f)), global2[_wgslsmith_index_u32(31855u, 7u)])) + _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(926f, -122f))), -1166f)), ~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -39955i, -1i), vec4<i32>(23549i, u_input.a.x, u_input.a.x, u_input.a.x)) ^ (vec4<i32>(u_input.a.x, u_input.a.x, -27853i, u_input.a.x) ^ vec4<i32>(0i, 2147483647i, -19033i, -1i))) | _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, -58646i, u_input.a.x), ~vec4<i32>(-2147483647i, 71559i, 0i, u_input.a.x)), vec4<i32>(u_input.a.x, func_2(), u_input.a.x >> (u_input.b % 32u), 1i)), ~(-17650i), vec4<u32>(u_input.b, _wgslsmith_add_u32(45869u, _wgslsmith_div_u32(u_input.b, u_input.b)), u_input.c.x, 4294967295u));
    var var_1 = var_0.e.x;
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(var_0.e.x), 23u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(step(var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.b, vec3<f32>(1f, 1f, 1f))) * var_0.b))), vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x)), var_2.c, u_input.a.x, vec4<u32>(min(~(~17973u), _wgslsmith_sub_u32(var_0.e.x, 21466u) | ~49377u), u_input.c.x, ~1u, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(var_3.e.x, 0u)), vec2<i32>(min(var_0.c.x, -var_2.c.x), var_3.d), 1u, u_input.a);
}

