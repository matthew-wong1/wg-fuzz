struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(45863i, 24757i, -5121i, 34610i, 19730i, 28336i, 0i, -24935i);

var<private> global1: array<i32, 19> = array<i32, 19>(2147483647i, 2147483647i, -9216i, 1i, 13216i, 41609i, 12880i, -18849i, 40335i, 0i, 2147483647i, 2669i, 51035i, 1i, 32272i, i32(-2147483648), 0i, 2147483647i, i32(-2147483648));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -578f);
    var var_1 = ~(arg_1.x ^ _wgslsmith_sub_u32(~arg_1.x, 1u));
    global0 = array<i32, 8>();
    var_1 = abs(u_input.a);
    let var_2 = Struct_2(vec3<i32>(2147483647i, (global0[_wgslsmith_index_u32(arg_1.x, 8u)] ^ -18459i) >> (_wgslsmith_dot_vec3_u32(u_input.b.xzw, arg_1.zzz) % 32u), 1i), abs(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(55435u, 8u)], 1i), vec2<i32>(-26502i, 44371i), vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 8u)])))));
    return vec3<i32>(-max(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, arg_2) >> ((arg_2 ^ arg_2) % 32u), 8u)], 0i), max((i32(-1i) * -20657i) >> (~(arg_1.x ^ arg_1.x) % 32u), var_2.b.x), -global1[_wgslsmith_index_u32(arg_1.x, 19u)]);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2026f, arg_2.x)) + _wgslsmith_f_op_f32(-499f - 1537f)))))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 19u)] & (i32(-1i) * -1i);
    global1 = array<i32, 19>();
    var var_2 = 10671u;
    var var_3 = true;
    return 4841i;
}

fn func_2() -> StorageBuffer {
    var var_0 = -_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], -1i, global0[_wgslsmith_index_u32(65278u, 8u)])) & _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(22765u, 19u)], 0i, global1[_wgslsmith_index_u32(1u, 19u)]), vec3<i32>(-12426i, -21593i, global1[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], 0i, -2147483647i), vec3<i32>(-44485i, 2147483647i, global0[_wgslsmith_index_u32(0u, 8u)]) | vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], 31682i, global0[_wgslsmith_index_u32(18712u, 8u)]))) >> (countOneBits(~firstLeadingBit(u_input.b.yzz)) % vec3<u32>(32u));
    global0 = array<i32, 8>();
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(1u), 8u)];
    global1 = array<i32, 19>();
    var var_2 = countOneBits(firstTrailingBit(~u_input.b.yyy ^ vec3<u32>(38783u, ~4294967295u, 71491u)));
    return StorageBuffer(_wgslsmith_div_vec4_i32(~vec4<i32>(func_3(global1[_wgslsmith_index_u32(134456u, 19u)], Struct_1(vec4<f32>(-387f, -128f, 1191f, 176f), 476f, vec3<bool>(false, false, true)), vec4<f32>(-291f, -287f, -202f, 1262f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, global1[_wgslsmith_index_u32(1u, 19u)]), vec3<i32>(37292i, -68604i, global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), 28665i, global1[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(~u_input.a, 19u)], _wgslsmith_sub_i32(1i, global0[_wgslsmith_index_u32(var_2.x, 8u)]), var_0.x, abs(global0[_wgslsmith_index_u32(45924u, 8u)])), reverseBits(vec4<i32>(var_0.x, var_0.x, -30346i, global0[_wgslsmith_index_u32(4294967295u, 8u)])))), vec2<f32>(558f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-619f * 129f)))))), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(0u, select(1u, 4294967295u, true), min(1u, 49163u), select(var_2.x, 18251u, true))), -select(~global1[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_mod_i32(-34362i, -2147483647i), select(true, false, false)) ^ 34750i, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(u_input.b.xwz, vec3<u32>(u_input.a, min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(119095u, u_input.a), 4294967295u), 34957u), 2932u));
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    let var_1 = Struct_2(~_wgslsmith_div_vec3_i32(countOneBits(func_1(false, u_input.b, u_input.a)), vec3<i32>(countOneBits(1i), _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(var_0.x, 8u)]), _wgslsmith_mod_i32(-15074i, global0[_wgslsmith_index_u32(1u, 8u)]))), ~vec2<i32>(global0[_wgslsmith_index_u32(0u, 8u)] << (u_input.b.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.yz, u_input.b.xy), 8u)]) | _wgslsmith_mult_vec2_i32(firstLeadingBit(abs(vec2<i32>(-25836i, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]))), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(12477u, 8u)], global0[_wgslsmith_index_u32(var_0.x, 8u)]), vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)])))));
    let var_2 = var_1.a;
    global0 = array<i32, 8>();
    let x = u_input.a;
    s_output = func_2();
}

