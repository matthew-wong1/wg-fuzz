struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(i32(-2147483648), true, vec4<f32>(-311f, -516f, 855f, -1176f), vec2<bool>(true, false), vec3<f32>(-2019f, 635f, 387f)), Struct_1(i32(-2147483648), false, vec4<f32>(1000f, 897f, 1721f, -446f), vec2<bool>(false, true), vec3<f32>(-642f, 601f, -1000f)), Struct_1(4025i, true, vec4<f32>(371f, -151f, 669f, -147f), vec2<bool>(false, false), vec3<f32>(364f, -768f, 1000f)), Struct_1(-1i, true, vec4<f32>(1077f, 865f, -743f, 1146f), vec2<bool>(true, true), vec3<f32>(333f, -541f, 658f)));

var<private> global2: Struct_1 = Struct_1(-1i, false, vec4<f32>(1064f, 545f, 172f, -1913f), vec2<bool>(true, false), vec3<f32>(842f, 1163f, -2351f));

var<private> global3: array<i32, 6> = array<i32, 6>(56226i, 0i, 0i, 46099i, i32(-2147483648), 2147483647i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    var var_0 = global2.c.x;
    let var_1 = false;
    var var_2 = firstLeadingBit(_wgslsmith_mod_i32(5845i, _wgslsmith_sub_i32(arg_2 << (4294967295u % 32u), ~arg_0.a))) >= 1i;
    var var_3 = global1[_wgslsmith_index_u32(56125u, 4u)];
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.e.x))))));
    return _wgslsmith_f_op_vec4_f32(-global2.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<f32>) -> bool {
    let var_0 = arg_2;
    var var_1 = abs(countOneBits(_wgslsmith_div_vec3_u32(~(~vec3<u32>(14765u, 0u, 58500u)), reverseBits(vec3<u32>(4294967295u, 44442u, 1u)))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, ~(60971u << (var_1.x % 32u))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(var_1.zy), firstLeadingBit(vec2<u32>(4294967295u, var_1.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 12825u), var_1.xy, vec2<u32>(var_1.x, 4294967295u) >> (var_1.yy % vec2<u32>(32u)))), ~var_1.yx | ~var_1.zz)), 23u)];
    var var_3 = arg_2;
    global1 = array<Struct_1, 4>();
    return var_2.d.x || var_3.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a ^ u_input.a.x, !arg_0.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + 395f), _wgslsmith_f_op_f32(-global2.c.x), 1672f, _wgslsmith_f_op_f32(global2.e.x - 852f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, global2.c.x, global2.c.x, -583f) + vec4<f32>(-799f, global2.c.x, arg_0.c.x, arg_0.e.x)) + _wgslsmith_f_op_vec4_f32(-global2.c)))), !vec2<bool>(u_input.a.x >= (global2.a & -51513i), true), vec3<f32>(global2.e.x, _wgslsmith_f_op_f32(arg_0.c.x * -1077f), _wgslsmith_f_op_f32(global2.c.x + -1000f)));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(2844u, 1u, 25605u), vec3<u32>(4294967295u, 1u, 45007u))), ~1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(30000u, 1u) >> (1u % 32u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(15602u, 0u), vec2<u32>(4294967295u, 44411u)), vec2<u32>(1u, 1u)), _wgslsmith_add_u32(1u, 1u), 0u), vec4<u32>(~1u, 44723u, ~_wgslsmith_add_u32(5361u, 5290u), 4294967295u)));
    let var_2 = select(func_4(arg_0, Struct_1(~u_input.a.x, true, _wgslsmith_f_op_vec4_f32(func_3(var_0, Struct_1(-7237i, var_0.d.x, vec4<f32>(arg_0.e.x, arg_0.e.x, global2.c.x, -945f), var_0.d, vec3<f32>(2826f, -2393f, arg_0.e.x)), reverseBits(var_0.a))), vec2<bool>(true, var_0.d.x), vec3<f32>(-227f, 1000f, _wgslsmith_div_f32(-2445f, -706f))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(false, var_0.d.x, true), vec3<bool>(false, true, global2.d.x)), false), vec3<f32>(605f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(0i, true, var_0.c, arg_0.d, vec3<f32>(arg_0.c.x, global2.c.x, var_0.c.x)), var_0, var_0.a)).x, _wgslsmith_f_op_f32(f32(-1f) * -274f))), _wgslsmith_f_op_f32(select(-660f, _wgslsmith_f_op_f32(-global2.e.x), var_0.d.x)))), false, global2.b);
    let var_3 = var_0;
    global2 = var_3;
    return global0[_wgslsmith_index_u32(~(~1u), 23u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = -(countOneBits(vec3<i32>(u_input.b, i32(-1i) * -6689i, 2147483647i)) >> (vec3<u32>(~63337u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(39418u, 47701u), vec2<u32>(0u, 1u))), ~max(0u, 6558u)) % vec3<u32>(32u)));
    global1 = array<Struct_1, 4>();
    var var_1 = func_2(global0[_wgslsmith_index_u32(0u, 23u)]);
    return 0u;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.c.x, global2.c.x, 578f), vec3<f32>(884f, global2.c.x, -144f)))))));
    let var_1 = _wgslsmith_div_i32(global3[_wgslsmith_index_u32(abs(20571u), 6u)], -1i);
    let var_2 = select(min(vec4<u32>(~_wgslsmith_sub_u32(4294967295u, 4294967295u), firstTrailingBit(_wgslsmith_mod_u32(1u, 1u)), 24627u, func_5(func_2(Struct_1(u_input.a.x, true, vec4<f32>(828f, 655f, var_0.x, 1075f), global2.d, global2.c.yxw)), !vec3<bool>(global2.b, global2.b, global2.b), func_2(Struct_1(9905i, false, global2.c, global2.d, vec3<f32>(global2.c.x, -124f, 1000f))))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 80935u, 5942u, 31695u), vec4<u32>(0u, 4294967295u, 81975u, 13215u)), 14170u), ~1u, 1u << (1u % 32u), 1u)), vec4<u32>(abs(~65981u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 47504u))), 59075u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 14620u), vec4<u32>(53315u, 63925u, 31850u, 4294967295u)) ^ min(0u, 1u), 26677u), firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 10033u), abs(vec2<u32>(0u, 4294967295u))))), !(!vec4<bool>(func_4(Struct_1(var_1, false, global2.c, vec2<bool>(true, false), vec3<f32>(546f, 217f, global2.c.x)), Struct_1(global2.a, global2.d.x, global2.c, vec2<bool>(false, true), vec3<f32>(global2.c.x, global2.c.x, -1139f)), vec3<bool>(false, global2.b, global2.b), vec3<f32>(var_0.x, 691f, global2.c.x)), var_0.x >= 131f, all(vec4<bool>(global2.d.x, global2.d.x, false, true)), true && global2.d.x)));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    let var_0 = !select(vec4<bool>(func_1(), true, !(!global2.b), global2.b), !select(select(vec4<bool>(false, global2.d.x, false, global2.b), vec4<bool>(global2.d.x, true, global2.b, global2.d.x), true), !vec4<bool>(false, false, global2.b, global2.b), !vec4<bool>(global2.d.x, false, false, global2.d.x)), vec4<bool>(true, true, true, true));
    let var_1 = func_2(func_2(Struct_1(_wgslsmith_div_i32(0i, -1i) << (min(1u, 0u) % 32u), var_0.x, _wgslsmith_f_op_vec4_f32(-func_2(Struct_1(u_input.b, global2.b, global2.c, global2.d, vec3<f32>(240f, global2.e.x, 439f))).c), var_0.wz, _wgslsmith_f_op_vec3_f32(max(global2.e, _wgslsmith_f_op_vec3_f32(select(global2.e, global2.e, true)))))));
    let var_2 = func_2(global1[_wgslsmith_index_u32(max(63940u, 1u), 4u)]);
    var var_3 = vec2<u32>(max(4294967295u, ~min(~0u, 1u)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.xzx, ~(~26753u << (0u % 32u)), -u_input.b);
}

