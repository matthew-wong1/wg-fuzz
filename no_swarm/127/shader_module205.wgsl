struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
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

var<private> global0: array<i32, 29>;

var<private> global1: array<vec4<f32>, 3>;

var<private> global2: array<Struct_1, 17>;

var<private> global3: i32 = 12389i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = ~global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 15317u, u_input.b, 34289u), vec4<u32>(28956u, 14038u, 1u, 0u) ^ vec4<u32>(u_input.c, 4294967295u, u_input.b, 0u)), u_input.c), 29u)] ^ _wgslsmith_dot_vec4_i32(u_input.d, countOneBits(u_input.d));
    let var_1 = false;
    let var_2 = 2147483647i & var_0;
    global1 = array<vec4<f32>, 3>();
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.b, _wgslsmith_mult_u32(firstTrailingBit(u_input.c), u_input.c), true || var_1), 1u, countOneBits(1u), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(17074u, u_input.b, 4294967295u, 21583u)) | ~27968u) << (_wgslsmith_mod_u32(1u << (1u % 32u), firstTrailingBit(0u)) % 32u)), ~(~select(~vec4<u32>(0u, 8335u, 0u, 0u), reverseBits(vec4<u32>(u_input.c, u_input.b, u_input.c, 17753u)), select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, true, true, var_1), vec4<bool>(false, var_1, var_1, var_1))))), 17u)];
    return ~_wgslsmith_sub_u32(~(~_wgslsmith_div_u32(u_input.b, u_input.c)), abs(~(u_input.b ^ 58836u)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), 417f, true)) * 1204f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x)))))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 0u), firstTrailingBit(0u)), _wgslsmith_div_u32(4294967295u, 1u) ^ arg_0), ~func_3()) << ((arg_0 & ~(~_wgslsmith_div_u32(36471u, u_input.c))) % 32u);
    global1 = array<vec4<f32>, 3>();
    global0 = array<i32, 29>();
    var var_2 = var_0.x;
    return arg_1.x;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global1 = array<vec4<f32>, 3>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -723f))) - 1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b, vec2<f32>(-375f, -825f))) + 1680f)), _wgslsmith_f_op_f32(1386f + -308f))));
    global3 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, u_input.d.zz), -(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)]) << (vec2<u32>(u_input.c, 17227u) % vec2<u32>(32u)))), u_input.e.xx), u_input.a << (vec2<u32>(1u, ~u_input.b) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_mult_vec3_i32(countOneBits(select(_wgslsmith_add_vec3_i32(vec3<i32>(9757i, -59510i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], u_input.e.x, u_input.d.x)), u_input.e, true)) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], u_input.e.x, -min(0i, global0[_wgslsmith_index_u32(0u, 29u)])), u_input.e);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1539f), _wgslsmith_f_op_f32(max(var_0.x, -1735f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.c, 3u)] + vec4<f32>(var_0.x, var_0.x, 801f, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -239f, var_0.x, var_0.x) * global1[_wgslsmith_index_u32(1u, 3u)]))))), var_0.x);
    return abs(~13801u);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = all(arg_1.a.a);
    let var_1 = arg_1.d.a.x;
    let var_2 = arg_1;
    var var_3 = var_2.d;
    var var_4 = (arg_1.c << (firstLeadingBit(82097u) % 32u)) >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(31448u, u_input.b)), vec2<u32>(u_input.c, ~u_input.c)) % 32u);
    return select((abs(~vec2<i32>(arg_1.c, arg_1.c)) >> (max(~vec2<u32>(12669u, 3789u), abs(vec2<u32>(u_input.c, u_input.b))) % vec2<u32>(32u))) & u_input.e.xx, ~var_2.b.zz, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a | func_4(false, Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(vec3<bool>(true, false, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1829u), vec2<u32>(u_input.c, 4294967295u))), 17u)], u_input.e, abs(-3252i) >> (~u_input.b % 32u), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-994f, -542f))), global1[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_f_op_f32(-1475f + -384f))));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(~u_input.c, 17u)], min(_wgslsmith_div_vec3_i32(~(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], var_0.x, global0[_wgslsmith_index_u32(9542u, 29u)])), _wgslsmith_mult_vec3_i32(-u_input.e, reverseBits(vec3<i32>(1i, u_input.a.x, 10969i)))), u_input.e), -(~(-12972i)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1994f, -428f, true))), 517f), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.b, u_input.b)), 3u)] - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -122f), -824f, -1291f, _wgslsmith_div_f32(-311f, 594f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(f32(-1f) * -731f)))))));
    global2 = array<Struct_1, 17>();
    global0 = array<i32, 29>();
    global3 = global0[_wgslsmith_index_u32(firstTrailingBit(77944u), 29u)];
    global3 = func_4(!(_wgslsmith_f_op_f32(step(1000f, var_1.d.c)) < _wgslsmith_f_op_f32(floor(var_1.d.b.x))), var_1).x << (u_input.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 77521u, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, 0u, u_input.b)), _wgslsmith_div_u32(u_input.b, 53210u)), max(~u_input.c, ~70653u)));
}

