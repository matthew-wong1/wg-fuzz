struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec2<i32>(2147483647i, -33963i), vec3<i32>(25338i, -21230i, 244i), false, vec3<u32>(1u, 0u, 16747u), 280f)), Struct_2(Struct_1(vec2<i32>(1i, 7985i), vec3<i32>(0i, -14444i, 0i), true, vec3<u32>(9714u, 4294967295u, 4294967295u), 101f)), Struct_2(Struct_1(vec2<i32>(1i, 0i), vec3<i32>(9986i, 0i, 15342i), false, vec3<u32>(4294967295u, 14182u, 23110u), 168f)), Struct_2(Struct_1(vec2<i32>(1i, 29999i), vec3<i32>(48126i, -16588i, 14254i), true, vec3<u32>(28050u, 43998u, 28663u), -350f)), Struct_2(Struct_1(vec2<i32>(-9299i, 75350i), vec3<i32>(2147483647i, 61433i, 0i), true, vec3<u32>(3424u, 47187u, 80007u), -323f)), Struct_2(Struct_1(vec2<i32>(2147483647i, 28454i), vec3<i32>(22858i, 1i, -34092i), false, vec3<u32>(1u, 4294967295u, 0u), 675f)), Struct_2(Struct_1(vec2<i32>(2147483647i, -633i), vec3<i32>(-34901i, 0i, 2147483647i), false, vec3<u32>(11307u, 4294967295u, 21540u), -1199f)), Struct_2(Struct_1(vec2<i32>(49126i, 2147483647i), vec3<i32>(-47799i, 2147483647i, i32(-2147483648)), false, vec3<u32>(4294967295u, 77059u, 4294967295u), -432f)), Struct_2(Struct_1(vec2<i32>(0i, -77629i), vec3<i32>(-1i, i32(-2147483648), -28859i), false, vec3<u32>(27997u, 69845u, 4294967295u), -523f)), Struct_2(Struct_1(vec2<i32>(26139i, -846i), vec3<i32>(i32(-2147483648), 0i, -1i), true, vec3<u32>(6955u, 16853u, 4294967295u), 822f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -10822i), vec3<i32>(-17704i, 1i, 16959i), true, vec3<u32>(13174u, 1u, 4294967295u), 776f)), Struct_2(Struct_1(vec2<i32>(-31952i, -19121i), vec3<i32>(0i, 8249i, i32(-2147483648)), false, vec3<u32>(49827u, 4294967295u, 28657u), -531f)), Struct_2(Struct_1(vec2<i32>(-39014i, 18293i), vec3<i32>(7572i, -19516i, 64471i), false, vec3<u32>(67108u, 56542u, 1u), -657f)), Struct_2(Struct_1(vec2<i32>(1i, 0i), vec3<i32>(50145i, 0i, 82430i), true, vec3<u32>(4294967295u, 0u, 0u), -282f)), Struct_2(Struct_1(vec2<i32>(2918i, -1i), vec3<i32>(-1764i, 0i, 1i), true, vec3<u32>(32566u, 1u, 90495u), 1172f)), Struct_2(Struct_1(vec2<i32>(-22760i, -14764i), vec3<i32>(9111i, 18019i, 2147483647i), false, vec3<u32>(4294967295u, 17693u, 1u), -623f)));

var<private> global2: array<Struct_2, 20>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = 361f;
    global1 = array<Struct_2, 16>();
    var var_1 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(223f, 818f))))), 895f);
    let var_2 = global3.a.c;
    var var_3 = Struct_2(global3.a);
    return global2[_wgslsmith_index_u32(~(abs(var_3.a.d.x) | 0u), 20u)];
}

fn func_3() -> vec2<i32> {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-242f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1632f)))))));
    let var_1 = global2[_wgslsmith_index_u32(abs(77312u << (((_wgslsmith_sub_u32(global3.a.d.x, global3.a.d.x) << (_wgslsmith_mod_u32(30787u, var_0.a.d.x) % 32u)) ^ var_0.a.d.x) % 32u)), 20u)];
    return ~abs(var_0.a.b.xz);
}

fn func_1() -> bool {
    var var_0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.a.e)) - global3.a.e))));
    let var_1 = func_3();
    let var_2 = _wgslsmith_sub_vec2_i32(var_1, select(select(-global3.a.b.xy, var_1, vec2<bool>(true, global3.a.c)), -vec2<i32>(var_0.a.b.x, var_1.x), select(vec2<bool>(false, false), select(vec2<bool>(var_0.a.c, false), vec2<bool>(var_0.a.c, var_0.a.c), vec2<bool>(true, true)), true)) >> (countOneBits(min(countOneBits(var_0.a.d.zx), abs(global0.zw))) % vec2<u32>(32u)));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1238f - var_0.a.e)))))).a;
    var var_4 = 343f;
    return true;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    let var_0 = Struct_1(vec2<i32>(~(-2147483647i), -(~(-30004i))), ~global3.a.b, arg_2.a.c, firstLeadingBit(global3.a.d), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_1)));
    global2 = array<Struct_2, 20>();
    global3 = Struct_2(Struct_1(vec2<i32>((arg_2.a.a.x | global3.a.b.x) << (1u % 32u), var_0.a.x), arg_2.a.b, var_0.c, vec3<u32>(global3.a.d.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global3.a.d.x, var_0.d.x, var_0.d.x), vec4<u32>(24131u, 58769u, arg_2.a.d.x, arg_2.a.d.x)) % 32u), 1u, arg_3.x), _wgslsmith_f_op_f32(-1385f + -928f)));
    global3 = Struct_2(Struct_1(vec2<i32>(1i >> (~arg_3.x % 32u), var_0.a.x), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_2.a.a, vec2<i32>(var_0.a.x, var_0.b.x)), reverseBits(~var_0.b.x), min(-42016i, arg_2.a.b.x ^ global3.a.a.x)), func_1(), arg_2.a.d, global3.a.e));
    let var_1 = var_0.b.yx;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2441f, 1000f) * _wgslsmith_f_op_f32(min(arg_2.a.e, var_0.e)))))), _wgslsmith_f_op_f32(f32(-1f) * -822f)));
}

fn func_5(arg_0: f32) -> vec4<u32> {
    global3 = Struct_2(Struct_1(global3.a.b.xz, ~global3.a.b, global3.a.c, global0.yyx, arg_0));
    let var_0 = _wgslsmith_f_op_f32(global3.a.e - -1096f) != _wgslsmith_f_op_f32(global3.a.e - 1811f);
    global1 = array<Struct_2, 16>();
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    global1 = array<Struct_2, 16>();
    return ~vec4<u32>(global0.x, global0.x, ~global3.a.d.x & global3.a.d.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_5(_wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -943f)), global1[_wgslsmith_index_u32(59776u, 16u)], _wgslsmith_mod_vec3_u32(func_2(global3.a.e).a.d, select(global0.zyx, vec3<u32>(55397u, u_input.a, global0.x), vec3<bool>(true, false, true))))));
    let var_0 = func_2(global3.a.e);
    global2 = array<Struct_2, 20>();
    let var_1 = var_0.a;
    global1 = array<Struct_2, 16>();
    global2 = array<Struct_2, 20>();
    global0 = ~((_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.x, u_input.a, 55692u, var_1.d.x), vec4<u32>(61140u, 0u, 0u, global0.x), vec4<u32>(16172u, 4459u, 8865u, 0u)) & ~vec4<u32>(var_1.d.x, 16669u, u_input.a, var_0.a.d.x)) & vec4<u32>(global0.x << (u_input.a % 32u), ~0u, global3.a.d.x, ~var_1.d.x)) & ~(vec4<u32>(var_1.d.x, func_2(global3.a.e).a.d.x, 20821u, abs(118685u)) | vec4<u32>(1u, var_1.d.x, 4294967295u, var_0.a.d.x));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.yy);
}

