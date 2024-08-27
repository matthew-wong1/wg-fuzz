struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(0u, 0u, 31646u, 24118u, 108257u, 15861u, 1u);

var<private> global1: array<Struct_5, 26>;

var<private> global2: array<f32, 25> = array<f32, 25>(-112f, 1079f, 215f, -1451f, -1119f, 187f, 1015f, -1609f, -205f, -1605f, -864f, 943f, 591f, -173f, -1033f, 559f, -1245f, 884f, 1340f, -791f, -332f, -1000f, 628f, 1480f, 1294f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    global0 = array<u32, 7>();
    global1 = array<Struct_5, 26>();
    return !(reverseBits(global0[_wgslsmith_index_u32(~1u, 7u)]) <= ~(~_wgslsmith_div_u32(26375u, u_input.c)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1781f, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(4294967295u, 25u)]))), _wgslsmith_div_f32(-206f, global2[_wgslsmith_index_u32(70149u, 25u)]))))), 253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1122f + global2[_wgslsmith_index_u32(abs(u_input.d.x), 25u)]) - 1784f)), -426f);
    var var_1 = var_0;
    global2 = array<f32, 25>();
    var var_2 = Struct_1(vec2<bool>(false, arg_0.a.x | ((21861u < global0[_wgslsmith_index_u32(u_input.d.x, 7u)]) & true)));
    let var_3 = !(all(vec2<bool>(!arg_0.a.x, false)) || (func_3(Struct_3(37907u, vec4<u32>(global0[_wgslsmith_index_u32(10279u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2822u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(63029u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24479u, 7u)], 7u)], 25u)], var_0), ~2147483647i) != (true & arg_0.a.x)));
    return Struct_1(vec2<bool>(arg_0.a.x, var_2.a.x));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 7>();
    return func_2(Struct_1(arg_0.c.zz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-((~u_input.a << (1u % 32u)) | 1782i), Struct_1(vec2<bool>(true, false)), func_1(Struct_3(248u | global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 7u)], 7u)], vec4<u32>(u_input.b.x, 34061u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 7u)], u_input.b.x), ~u_input.b.x), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(max(402f, global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(65002u, 7u)], 25u)])), vec4<f32>(_wgslsmith_f_op_f32(ceil(-902f)), global2[_wgslsmith_index_u32(u_input.c, 25u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 25u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(8858u, 25u)]))), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(65523u, select(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], true)), 7u)], 4294967295u, 1460u, 37982u), -vec2<i32>(2075i, -u_input.a)));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.a, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-22270i, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_0.a, u_input.a), vec3<i32>(-20450i, u_input.a, var_0.a), vec3<i32>(-2147483647i, -2147483647i, -15684i))), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, var_0.a, 1i), vec4<i32>(var_0.a, 43658i, 1i, var_0.a)), -u_input.a))), var_0.c, var_0.b);
    global1 = array<Struct_5, 26>();
    let var_2 = _wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.c, 1u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.d.x, 7u)], u_input.b.x), vec3<u32>(1u, u_input.b.x, 106927u))), firstLeadingBit(~vec4<u32>(79978u, global0[_wgslsmith_index_u32(0u, 7u)], 80906u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)])), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], 1u, global0[_wgslsmith_index_u32(u_input.b.x, 7u)])), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.c, u_input.c, 0u) << (vec4<u32>(15625u, 48128u, u_input.d.x, global0[_wgslsmith_index_u32(30288u, 7u)]) % vec4<u32>(32u))))), vec4<u32>(~35848u, firstLeadingBit(reverseBits(~47904u)), u_input.b.x, ~19323u), (vec4<u32>(1u, 1u, 1u, 1u) >> (~(vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(26222u, 7u)], 21526u, 0u) << (vec4<u32>(u_input.d.x, 38176u, u_input.b.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(~vec4<u32>(37722u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], u_input.b.x, 1u), abs(firstTrailingBit(vec4<u32>(27633u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 7u)], 7u)], 92853u, global0[_wgslsmith_index_u32(u_input.c, 7u)])))));
    var var_3 = countOneBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -1112f, max(vec2<u32>(abs(var_2.x) >> (~u_input.d.x % 32u), u_input.c), (firstTrailingBit(u_input.d.xz) & vec2<u32>(1u, 1u)) ^ vec2<u32>(var_2.x, u_input.b.x)), 292f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(96954u & (17590u | var_2.x), 25u)], global2[_wgslsmith_index_u32(~(49540u ^ u_input.b.x), 25u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(-1f))));
}

