struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec3<i32>(-8743i, -1i, 22503i)), Struct_1(vec3<i32>(50788i, i32(-2147483648), 24726i))), Struct_2(Struct_1(vec3<i32>(-1649i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(-3640i, 0i, 2147483647i))), Struct_2(Struct_1(vec3<i32>(0i, -31822i, 5096i)), Struct_1(vec3<i32>(-17927i, -23367i, -41605i))), Struct_2(Struct_1(vec3<i32>(-34610i, i32(-2147483648), -46789i)), Struct_1(vec3<i32>(-39278i, -27061i, -71531i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -17725i, 12989i)), Struct_1(vec3<i32>(-39424i, 3876i, 1i))), Struct_2(Struct_1(vec3<i32>(-11076i, -1i, 1i)), Struct_1(vec3<i32>(-19983i, 34334i, -5879i))), Struct_2(Struct_1(vec3<i32>(1i, 18857i, 0i)), Struct_1(vec3<i32>(-21008i, 17569i, 40909i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i)), Struct_1(vec3<i32>(1i, 0i, 33976i))), Struct_2(Struct_1(vec3<i32>(24488i, -25296i, -5736i)), Struct_1(vec3<i32>(17774i, -51409i, -60370i))), Struct_2(Struct_1(vec3<i32>(49435i, 2147483647i, 1i)), Struct_1(vec3<i32>(2147483647i, 49554i, 18469i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 0i, 53511i)), Struct_1(vec3<i32>(52607i, 1i, -1i))), Struct_2(Struct_1(vec3<i32>(1i, -1i, 23848i)), Struct_1(vec3<i32>(2147483647i, -6746i, 2147483647i))), Struct_2(Struct_1(vec3<i32>(-27721i, -1556i, 1i)), Struct_1(vec3<i32>(0i, 12809i, -1i))));

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 27074u, 35667u, 2363u, 27383u, 47530u, 0u, 0u, 21934u, 4294967295u, 4294967295u, 53815u, 1u, 61028u, 1u, 1u, 8241u, 4294967295u, 40598u, 4294967295u, 90032u, 4294967295u, 4294967295u, 56914u, 51428u, 42895u, 9472u, 0u, 22269u, 4294967295u, 4294967295u, 0u);

var<private> global2: array<i32, 19> = array<i32, 19>(-18250i, 2147483647i, 6425i, 1i, -59696i, -9228i, 2147483647i, 50486i, -1i, -26535i, i32(-2147483648), 0i, 1i, 5548i, 2147483647i, 34973i, 0i, -1i, 2147483647i);

var<private> global3: array<vec4<bool>, 4>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    global4 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(abs(u_input.b ^ global4.a), vec3<i32>(i32(-1i) * -6942i, ~global4.a.x, global2[_wgslsmith_index_u32(select(16523u, 4294967295u, false), 19u)])), vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 0u) ^ global1[_wgslsmith_index_u32(reverseBits(u_input.c.x), 32u)], 19u)], ~(~arg_0.a.b.x), -_wgslsmith_dot_vec4_i32(arg_0.a.b, vec4<i32>(-1i, u_input.a, arg_0.a.b.x, -54619i))), max(-arg_0.a.b.wzw >> (vec3<u32>(4294967295u, 52099u, 1u) % vec3<u32>(32u)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -2147483647i), vec3<i32>(global4.a.x, 0i, 34679i), vec3<i32>(u_input.b.x, global4.a.x, 1i)), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global4.a.x, 0i) >> (u_input.c.xwx % vec3<u32>(32u)), all(vec4<bool>(false, false, true, true))))));
    global0 = array<Struct_2, 13>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_0.a.a), arg_0.a.b);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.a * var_0.a))), vec4<i32>(u_input.a, ~(-2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.d, 32u)]), u_input.c.x) & abs(1u), 19u)], (i32(-1i) * -1i) << (u_input.c.x % 32u)));
    var var_2 = u_input.c.wyz;
    return var_0.b.xxw;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_1(func_3(Struct_4(Struct_3(_wgslsmith_f_op_f32(1021f - 967f), abs(vec4<i32>(0i, 1i, global2[_wgslsmith_index_u32(33306u, 19u)], u_input.a))))));
    global0 = array<Struct_2, 13>();
    var var_1 = Struct_3(-1739f, countOneBits(-vec4<i32>(global2[_wgslsmith_index_u32(max(58649u, global1[_wgslsmith_index_u32(4759u, 32u)]), 19u)], u_input.a, 753i, reverseBits(global2[_wgslsmith_index_u32(u_input.c.x, 19u)]))));
    var var_2 = _wgslsmith_mult_u32(0u, reverseBits(1u));
    let var_3 = Struct_1(select(~_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], var_1.b.x, global2[_wgslsmith_index_u32(1u, 19u)]), var_1.b.ywx), -vec3<i32>(~(-9903i), u_input.a, -21088i), vec3<bool>(true, true, true)));
    return ~u_input.b.x;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 13>();
    var var_0 = Struct_2(Struct_1(~(global4.a << ((u_input.c.zzy | u_input.c.yxz) % vec3<u32>(32u)))), Struct_1(reverseBits(global4.a)));
    let var_1 = func_2(false);
    var var_2 = vec4<i32>(~var_0.a.a.x, ~(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(25970u, 19u)], 1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 19u)])), u_input.b)), _wgslsmith_mult_i32(-41885i, u_input.b.x), global2[_wgslsmith_index_u32(u_input.d, 19u)] & -34600i);
    var_0 = Struct_2(Struct_1(firstLeadingBit(~_wgslsmith_sub_vec3_i32(var_2.wxw, var_2.zwz))), var_0.a);
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(2269f)))))))), ~reverseBits(-vec4<i32>(37344i, var_2.x, var_1, global2[_wgslsmith_index_u32(u_input.d, 19u)])) << (vec4<u32>(reverseBits(1u), _wgslsmith_sub_u32(~33519u, _wgslsmith_dot_vec2_u32(u_input.c.ww, vec2<u32>(12973u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)]))), 12808u, 51131u) % vec4<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: u32, arg_3: bool) -> vec4<i32> {
    let var_0 = false;
    global1 = array<u32, 32>();
    var var_1 = _wgslsmith_div_i32(func_2(false), _wgslsmith_add_i32(1i, ~(-18428i)));
    global0 = array<Struct_2, 13>();
    var_1 = _wgslsmith_sub_i32(-28951i, u_input.a);
    return ~vec4<i32>(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(751u, arg_2), u_input.c.yy) << (5297u % 32u), 32u)], 19u)], 1i, u_input.a, _wgslsmith_add_i32(max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(732u, global1[_wgslsmith_index_u32(u_input.d, 32u)])), 19u)], -u_input.a), -6909i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, any(vec3<bool>(true, true, true)));
    var var_1 = vec4<bool>(var_0.x, 63698u != u_input.d, false, false);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-765f, 531f) * vec2<f32>(871f, 779f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(861f, 227f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1138f, -894f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1118f, -173f) - vec2<f32>(738f, 1927f)), any(vec3<bool>(var_1.x, var_1.x, true)))), vec2<bool>(var_1.x, true))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-441f, _wgslsmith_f_op_f32(f32(-1f) * -817f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 332f))), var_0.xy))));
    let var_3 = ~u_input.c;
    let var_4 = 0i;
    var_0 = select(var_1.wwy, var_1.yzz, vec3<bool>(!(any(vec4<bool>(var_1.x, var_0.x, var_1.x, true)) & var_0.x), false, true));
    let var_5 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f - -1186f)), func_4(69291i, Struct_4(func_1()), abs(reverseBits(21360u)), !var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1727f))), vec4<i32>(func_1().b.x, global4.a.x, _wgslsmith_dot_vec3_i32(~min(u_input.b, vec3<i32>(-6467i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 19u)], var_4)), -firstTrailingBit(vec3<i32>(global4.a.x, 391i, var_5.a.b.x))), -2147483647i), _wgslsmith_clamp_i32(2147483647i, var_4, 18878i) >> (firstLeadingBit(_wgslsmith_clamp_u32(22728u, 104099u, u_input.d) >> (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_3.x, 32u)], 172532u) % 32u)) % 32u));
}

