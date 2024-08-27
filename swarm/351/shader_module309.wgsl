struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
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

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec4<f32>(710f, -138f, 1186f, 569f), vec4<bool>(true, false, false, false), vec2<u32>(0u, 59453u)), Struct_2(vec4<f32>(-2278f, -907f, -3016f, 771f), vec4<bool>(true, false, false, false), vec2<u32>(4027u, 0u)), Struct_2(vec4<f32>(-1877f, -2266f, -390f, 969f), vec4<bool>(true, false, false, false), vec2<u32>(41315u, 15749u)), Struct_2(vec4<f32>(785f, -714f, -1592f, 1000f), vec4<bool>(true, false, false, false), vec2<u32>(0u, 43889u)), Struct_2(vec4<f32>(-1165f, -1000f, -951f, -618f), vec4<bool>(true, false, true, false), vec2<u32>(15275u, 4294967295u)), Struct_2(vec4<f32>(493f, 552f, 247f, -613f), vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 8510u)), Struct_2(vec4<f32>(318f, -395f, 1000f, -832f), vec4<bool>(false, false, false, true), vec2<u32>(6514u, 4294967295u)), Struct_2(vec4<f32>(-1625f, -140f, -2476f, 1216f), vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 1u)), Struct_2(vec4<f32>(-376f, -873f, -582f, 1000f), vec4<bool>(true, true, false, false), vec2<u32>(1u, 0u)), Struct_2(vec4<f32>(1350f, 403f, 672f, 1059f), vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 47031u)), Struct_2(vec4<f32>(-675f, -451f, 1686f, 385f), vec4<bool>(true, false, false, false), vec2<u32>(1u, 28696u)), Struct_2(vec4<f32>(-543f, -1105f, -551f, 585f), vec4<bool>(true, true, false, false), vec2<u32>(84305u, 2839u)), Struct_2(vec4<f32>(134f, 1596f, 636f, 845f), vec4<bool>(true, true, false, false), vec2<u32>(1u, 0u)), Struct_2(vec4<f32>(-480f, 1217f, 281f, 759f), vec4<bool>(true, true, false, false), vec2<u32>(1u, 1u)), Struct_2(vec4<f32>(198f, 514f, 341f, 632f), vec4<bool>(true, true, true, false), vec2<u32>(0u, 4294967295u)), Struct_2(vec4<f32>(-694f, 271f, -328f, 1285f), vec4<bool>(false, false, true, true), vec2<u32>(33133u, 4294967295u)), Struct_2(vec4<f32>(421f, -1000f, -305f, 1636f), vec4<bool>(true, false, false, true), vec2<u32>(62719u, 13662u)));

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_1 = _wgslsmith_f_op_f32(abs(-854f));
    let var_2 = any(arg_0.a);
    var var_3 = select(vec4<bool>(all(!var_0.b.zz), var_2, var_2, var_2), vec4<bool>((var_0.a.x >= -1793f) | select(var_0.b.x, arg_0.a.x, true), (var_0.b.x || (var_2 || var_0.b.x)) || false, true, arg_0.a.x), !var_0.b.x);
    let var_4 = global1.d.wzz;
    return _wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, global1.b) ^ vec4<u32>(var_0.c.x, u_input.a, var_0.c.x, var_0.c.x), abs(vec4<u32>(4294967295u, var_0.c.x, global1.b, 4294967295u))) | firstLeadingBit(vec4<u32>(global1.b, 4294967295u, 1u, u_input.a))), vec4<u32>(~(~global1.b), ~0u, ~_wgslsmith_mod_u32(32818u, 4294967295u), ~(3047u | u_input.a)), ~vec4<u32>(_wgslsmith_mult_u32(44080u, u_input.a), _wgslsmith_dot_vec2_u32(var_0.c & vec2<u32>(16231u, global1.b), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_div_u32(global1.b, abs(0u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(43871u, var_0.c.x, u_input.a, var_0.c.x), vec4<u32>(52688u, var_0.c.x, var_0.c.x, 0u)), max(vec4<u32>(1u, global1.b, 6866u, 1u), vec4<u32>(var_0.c.x, 0u, 39198u, 0u)))));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_u32(countOneBits(~u_input.a) << (_wgslsmith_mult_u32(16582u, ~4294967295u) % 32u), ~1u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(global1.b, global1.b, 19519u, u_input.a) >> (func_3(Struct_4(vec4<bool>(false, true, true, false))) % vec4<u32>(32u))), ~select(vec4<u32>(0u, u_input.a, global1.b, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b, global1.b, global1.b, 4294967295u), vec4<u32>(u_input.a, u_input.a, 66320u, 27609u), vec4<u32>(u_input.a, global1.b, 9483u, 1u)), true)));
    global1 = Struct_1(u_input.c.xz, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.a), max(_wgslsmith_sub_u32(global1.b, var_0), 0u), _wgslsmith_sub_u32(~global1.b, ~var_0), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1662u, 0u)))), vec4<u32>(reverseBits(~global1.b), ~u_input.a, _wgslsmith_mult_u32(abs(0u), ~u_input.a), 5538u)), _wgslsmith_f_op_vec2_f32(select(global1.c, vec2<f32>(_wgslsmith_f_op_f32(select(1438f, -304f, true)), global1.c.x), select(vec2<bool>(true, false), vec2<bool>(any(vec2<bool>(false, true)), false), true))), _wgslsmith_sub_vec4_i32(abs(u_input.c) ^ (vec4<i32>(global1.d.x, global1.d.x, -26411i, 1i) << (vec4<u32>(u_input.a, 30079u, 36345u, var_0) % vec4<u32>(32u))), u_input.c) >> (~_wgslsmith_mod_vec4_u32(~vec4<u32>(74096u, u_input.a, 0u, global1.b), ~vec4<u32>(global1.b, 4294967295u, 0u, var_0)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-global1.e));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -245f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1024f)) - _wgslsmith_f_op_f32(-global1.e)))), global1.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e, global1.c.x, global1.c.x, 1315f) * vec4<f32>(global1.e, global1.e, -767f, -1509f))) + _wgslsmith_div_vec4_f32(vec4<f32>(417f, 1000f, 389f, global1.c.x), vec4<f32>(1000f, -259f, global1.e, -294f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.e, global1.c.x, -101f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e, 1882f, global1.c.x, global1.e) * vec4<f32>(global1.e, -480f, global1.e, global1.c.x))))));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    return firstTrailingBit(~vec4<u32>(~_wgslsmith_sub_u32(global1.b, 0u), _wgslsmith_add_u32(var_0 & 16661u, global1.b), ~_wgslsmith_sub_u32(u_input.a, 64884u), ~var_0));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 17>();
    let var_0 = func_2();
    return Struct_1(vec2<i32>(min(-1i & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, -60676i), global1.d.yzz), global1.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(63774i, 20075i, global1.d.x, 21391i), u_input.c), 481i) | global1.d.x), countOneBits(~var_0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-130f, 678f), global1.c, false)) - _wgslsmith_f_op_vec2_f32(min(global1.c, vec2<f32>(global1.c.x, global1.c.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -328f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + _wgslsmith_f_op_f32(-global1.e)) == _wgslsmith_f_op_f32(-1061f + _wgslsmith_f_op_f32(select(global1.e, global1.c.x, false))))), abs(vec4<i32>(reverseBits(0i) & (global1.d.x & 2147483647i), -1i, 1i, -(~31710i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(502f)) * -686f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 17>();
    let var_0 = Struct_3(func_1(), func_1());
    var var_1 = vec2<u32>(0u, max(u_input.a, ~max(0u, u_input.a))) << (_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_0.a.b, _wgslsmith_sub_u32(var_0.b.b, u_input.a)), min(_wgslsmith_sub_u32(4294967295u, var_0.b.b), ~0u)), vec2<u32>(0u, 31011u)) % vec2<u32>(32u));
    var var_2 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, global1.b ^ 4294967295u, 14998u, 1u), max(vec4<u32>(50862u, var_1.x, 36110u, 1u), vec4<u32>(u_input.a, global1.b, 9741u, 32863u) | vec4<u32>(80912u, var_1.x, global1.b, var_1.x))), vec4<u32>(var_1.x, _wgslsmith_mod_u32(countOneBits(26523u), ~0u), u_input.a, var_1.x));
    var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_2.x), var_2.xxy), var_2.x, var_1.x >> (17603u % 32u)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.b, 1u, 1u, global1.b), vec4<u32>(1u, global1.b, 66022u, var_1.x)) % vec4<u32>(32u)), ~min(~vec4<u32>(10810u, u_input.a, u_input.a, 50721u), ~vec4<u32>(1029u, global1.b, 0u, var_1.x))) | firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(select(var_1.x, 0u, true), _wgslsmith_sub_u32(34144u, 33024u), max(4294967295u, var_1.x), _wgslsmith_mod_u32(var_2.x, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, 0u, 75757u, var_2.x), firstLeadingBit(vec4<u32>(4294967295u, var_2.x, var_2.x, 0u))), _wgslsmith_mult_vec4_u32(vec4<u32>(66779u, var_1.x, var_2.x, 106714u), vec4<u32>(81809u, var_1.x, 4294967295u, var_2.x)) << (reverseBits(vec4<u32>(38666u, global1.b, var_1.x, 13712u)) % vec4<u32>(32u))));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.x);
}

