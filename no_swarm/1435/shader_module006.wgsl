struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<f32, 29> = array<f32, 29>(1954f, 635f, -412f, 382f, 1979f, 1096f, 405f, -219f, -875f, 975f, 2138f, 2204f, 137f, -1397f, -966f, 683f, -1219f, -141f, 1236f, -1270f, -983f, -1887f, 513f, -1158f, -616f, 1567f, -1437f, -253f, -391f);

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 0u, 32673u, 66435u), 32869u)), 30744i), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u), 1u)), 1i), Struct_3(Struct_2(Struct_1(vec4<u32>(9983u, 0u, 16458u, 4294967295u), 1u)), -10522i), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 14964u, 101279u), 1u)), -15830i), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u), 1u)), 29153i), Struct_3(Struct_2(Struct_1(vec4<u32>(78839u, 45380u, 0u, 1u), 1u)), -46238i), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 34944u, 0u, 0u), 4294967295u)), 1i), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 81939u, 13899u, 0u), 0u)), 0i), Struct_3(Struct_2(Struct_1(vec4<u32>(1079u, 6996u, 0u, 4294967295u), 19323u)), 0i), Struct_3(Struct_2(Struct_1(vec4<u32>(47671u, 4294967295u, 0u, 1u), 1u)), 28784i), Struct_3(Struct_2(Struct_1(vec4<u32>(30039u, 4294967295u, 23079u, 4294967295u), 27303u)), 9589i), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), 45595u)), 87681i), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 56278u, 11549u, 69691u), 0u)), -1i), Struct_3(Struct_2(Struct_1(vec4<u32>(62392u, 47614u, 4294967295u, 24873u), 1u)), 0i), Struct_3(Struct_2(Struct_1(vec4<u32>(7001u, 0u, 4872u, 0u), 4294967295u)), 1i), Struct_3(Struct_2(Struct_1(vec4<u32>(15140u, 4294967295u, 4294967295u, 1u), 29622u)), -44182i), Struct_3(Struct_2(Struct_1(vec4<u32>(3006u, 122477u, 1u, 42194u), 48390u)), 14054i), Struct_3(Struct_2(Struct_1(vec4<u32>(1303u, 0u, 22092u, 29604u), 4294967295u)), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 28740u, 32746u, 4294967295u), 14064u)), -9577i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = -select(abs(select(_wgslsmith_div_vec4_i32(vec4<i32>(6648i, u_input.a, 24020i, u_input.a), vec4<i32>(u_input.a, u_input.e.x, -2147483647i, -21026i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.e.x, u_input.d.x, -1i), vec4<i32>(u_input.d.x, -2147483647i, 1i, u_input.a)), true)), vec4<i32>(i32(-1i) * -u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.d, max(vec3<i32>(u_input.d.x, 57465i, -2147483647i), vec3<i32>(u_input.d.x, 2147483647i, -8858i))), ~(-u_input.a), _wgslsmith_mod_i32(-21494i, u_input.d.x) << (4294967295u % 32u)), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) - 1000f), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, arg_1.x), u_input.c.zyy)), 29u)]))));
    var var_2 = global0[_wgslsmith_index_u32(arg_2.a.a.x, 23u)];
    var var_3 = var_0.x;
    let var_4 = Struct_2(arg_2.a);
    return Struct_1(~(vec4<u32>(arg_1.x, 1u, arg_1.x, firstTrailingBit(4294967295u)) ^ firstLeadingBit(~vec4<u32>(4294967295u, 0u, 82428u, 71797u))), ~1u);
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = arg_0.a;
    var var_1 = arg_0.a.a;
    var var_2 = Struct_3(Struct_2(func_2(_wgslsmith_mod_vec3_u32(arg_0.a.a.a.yzx ^ var_1.a.zzw, vec3<u32>(var_1.b, var_0.a.b, 1u)), ~(~u_input.c), Struct_2(func_2(arg_0.a.a.a.zxy, var_1.a, Struct_2(Struct_1(vec4<u32>(u_input.c.x, u_input.b.x, arg_0.a.a.b, 1u), 4294967295u)))))), u_input.d.x >> (~18323u % 32u));
    var var_3 = -min(u_input.d, firstTrailingBit(u_input.d));
    let var_4 = arg_0.a.a.a.wxz;
    return vec4<u32>(~48071u, ~u_input.c.x, 64239u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstTrailingBit(1u), firstTrailingBit(1u)), ~1u >> (~(~var_4.x) % 32u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: i32) -> Struct_2 {
    var var_0 = func_2(~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.c.x, arg_1), 19133u, arg_1), vec3<u32>(arg_1, ~1u, 42141u), ~u_input.c.xyz), abs(select(u_input.b, _wgslsmith_div_vec4_u32(~u_input.b, ~vec4<u32>(0u, arg_1, u_input.c.x, u_input.b.x)), true)), global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mod_u32(4294967295u, arg_1) | reverseBits(u_input.b.x)), 23u)]);
    global1 = array<f32, 29>();
    let var_1 = Struct_3(Struct_2(func_2(abs(vec3<u32>(u_input.b.x, arg_1, var_0.a.x)), func_3(Struct_3(Struct_2(Struct_1(u_input.b, var_0.b)), -1189i)), global0[_wgslsmith_index_u32(~(~var_0.a.x), 23u)])), _wgslsmith_mod_i32(u_input.d.x, 19991i));
    global0 = array<Struct_2, 23>();
    var var_2 = Struct_3(Struct_2(var_1.a.a), ~abs(-arg_2));
    return global0[_wgslsmith_index_u32(29605u, 23u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = Struct_1(vec4<u32>(arg_1.a.b, ~u_input.c.x | 49500u, func_3(global2[_wgslsmith_index_u32(~(~60592u), 19u)]).x, ~u_input.b.x), 0u);
    let var_1 = arg_0.x;
    let var_2 = arg_1.a;
    global0 = array<Struct_2, 23>();
    global2 = array<Struct_3, 19>();
    return StorageBuffer(~(~(~arg_1.a.a.xy)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_0.b, 29u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(106f * global1[_wgslsmith_index_u32(16031u, 29u)]))))), global1[_wgslsmith_index_u32(102006u, 29u)])), vec2<u32>(11966u & u_input.c.x, func_2(vec3<u32>(var_1, u_input.c.x, 52225u), ~vec4<u32>(u_input.c.x, var_1, 45756u, var_2.b), func_1(vec2<bool>(false, true), u_input.c.x, -2147483647i)).a.x) & arg_0.zy, _wgslsmith_sub_vec2_i32(u_input.d.yy | vec2<i32>(max(u_input.e.x, -60251i), _wgslsmith_dot_vec2_i32(vec2<i32>(60446i, u_input.e.x), u_input.d.xy)), _wgslsmith_sub_vec2_i32(u_input.d.xy, vec2<i32>(~(-402i), 5601i))), ~(_wgslsmith_mult_i32(-1i, u_input.d.x) << (~var_1 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.c.x, u_input.c.x) | vec3<u32>(1u, u_input.c.x, 0u)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ abs(u_input.b.yyz)) ^ (vec3<u32>(u_input.c.x, ~1u, 39724u) >> (u_input.c.zxy % vec3<u32>(32u))), func_1(select(vec2<bool>(select(true, false, true), all(vec2<bool>(true, false))), vec2<bool>(true, true), true), _wgslsmith_mod_u32(4294967295u, reverseBits(37322u)) ^ u_input.b.x, 22110i << (u_input.b.x % 32u)));
}

