struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: vec3<u32>,
    d: vec2<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<bool>;

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x ^ u_input.a.x, abs(1502u), ~global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(57875u, u_input.a.x, 85832u, 4294967295u), vec4<u32>(14049u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(global0.x, u_input.a.x, global0.x, global0.x) % vec4<u32>(32u)))), ~vec4<u32>(u_input.a.x, countOneBits(_wgslsmith_mod_u32(u_input.a.x, 21275u)), _wgslsmith_dot_vec2_u32(vec2<u32>(16398u, u_input.a.x), max(global0.wz, vec2<u32>(0u, 44090u))), ~_wgslsmith_dot_vec3_u32(global0.wwz, vec3<u32>(15995u, u_input.a.x, 11016u))));
    let var_0 = Struct_1(u_input.a.x < ~(~0u), vec4<bool>(!global1.x, true, select(global1.x, false, !(!global1.x)), all(vec4<bool>(true, true, !global1.x, global1.x))), (abs(~global0.xy) & u_input.a.xy) & u_input.a.yx, u_input.b >> (~(global0.x ^ global0.x) % 32u));
    let var_1 = ~(4294967295u & _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.c.x, u_input.a.x, 4294967295u, 3716u), ~vec4<u32>(u_input.a.x, 0u, var_0.c.x, var_0.c.x)), vec4<u32>(0u, var_0.c.x, u_input.a.x, global0.x) | select(vec4<u32>(var_0.c.x, u_input.a.x, var_0.c.x, 13222u), vec4<u32>(56843u, u_input.a.x, 1u, u_input.a.x), var_0.b)));
    var var_2 = -(_wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_0.d), u_input.c.ww)), -vec2<i32>(var_0.d, 30674i)) | abs(u_input.c.zw));
    global0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(34179u, global0.x, abs(_wgslsmith_mult_u32(28729u, u_input.a.x)), 51503u), select(~(_wgslsmith_div_vec4_u32(vec4<u32>(40655u, 1u, 4294967295u, 15892u), vec4<u32>(34746u, 4294967295u, 28072u, var_0.c.x)) >> ((vec4<u32>(var_0.c.x, 0u, 17369u, var_0.c.x) << (vec4<u32>(var_1, 0u, 111197u, 83209u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_0.c.x, 1u, u_input.a.x, global0.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(54330u, global0.x, var_0.c.x, 3142u), vec4<u32>(var_1, global0.x, global0.x, var_0.c.x)), ~vec4<u32>(var_1, var_0.c.x, var_0.c.x, var_1)), true));
    return -1446f;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) - 1f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(min(-478f, 476f))) - 1063f))));
    var var_0 = true;
    let var_1 = firstTrailingBit(~11800i);
    let var_2 = Struct_1(any(vec2<bool>(false, !(4294967295u == u_input.a.x))), !(!vec4<bool>(any(vec3<bool>(false, true, true)), global1.x, global1.x, !global1.x)), countOneBits(arg_0), ~(~(~(~u_input.d))));
    let var_3 = 25816u;
    return Struct_2(_wgslsmith_sub_i32(var_1, 0i), var_1 & var_2.d, Struct_1(all(select(!var_2.b.yxx, !var_2.b.yww, !vec3<bool>(global1.x, false, false))), var_2.b, vec2<u32>(_wgslsmith_sub_u32(var_3, global0.x), global0.x), _wgslsmith_dot_vec2_i32(-max(vec2<i32>(23276i, var_1), u_input.c.yw), u_input.c.zz)), u_input.d);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> bool {
    let var_0 = firstTrailingBit(4965i);
    var var_1 = arg_2.b.c.d;
    var var_2 = func_2(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(39578u, 0u), u_input.a.yy), vec2<u32>(20327u, arg_3)) << (vec2<u32>(44824u, _wgslsmith_mult_u32(u_input.a.x, global0.x)) % vec2<u32>(32u)), reverseBits(~vec2<u32>(34854u, 2070u))));
    var var_3 = arg_2;
    global2 = _wgslsmith_f_op_f32(277f + -501f);
    return 23319u >= _wgslsmith_mult_u32(~(~global0.x), countOneBits(~(~var_3.b.c.c.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> vec3<bool> {
    let var_0 = global0.wzw;
    let var_1 = Struct_4(_wgslsmith_div_f32(294f, 711f));
    var var_2 = arg_1;
    let var_3 = global0.zxy;
    var var_4 = abs(u_input.d);
    return vec3<bool>(false, !(637f == var_1.a), any(!select(arg_0, vec3<bool>(true, arg_1, global1.x), select(vec3<bool>(false, true, false), arg_0, vec3<bool>(arg_0.x, arg_1, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)));
    var var_1 = select(vec3<bool>(!(!global1.x), !any(vec4<bool>(global1.x, global1.x, global1.x, false)) && (all(vec3<bool>(false, true, true)) || global1.x), true), func_4(select(vec3<bool>(false, func_1(u_input.b, 209f, Struct_3(Struct_1(global1.x, vec4<bool>(global1.x, global1.x, true, global1.x), global0.zy, -8389i), Struct_2(-14999i, 2147483647i, Struct_1(global1.x, vec4<bool>(global1.x, false, false, false), vec2<u32>(global0.x, 1u), u_input.c.x), u_input.c.x)), 53635u), global1.x && true), vec3<bool>(func_1(1i, -246f, Struct_3(Struct_1(false, vec4<bool>(global1.x, global1.x, global1.x, false), global0.zz, -1i), Struct_2(-32674i, 1i, Struct_1(false, vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec2<u32>(u_input.a.x, 5293u), u_input.d), 0i)), 1u), global1.x, global1.x != global1.x), global1.x & true), select(any(vec4<bool>(true, false, global1.x, global1.x)), global1.x & !global1.x, global1.x)), true);
    let var_2 = Struct_4(466f);
    global1 = vec2<bool>(any(vec4<bool>(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, -1i, -4276i), vec4<i32>(1i, -10782i, u_input.c.x, -7167i)) > 6095i, any(vec2<bool>(true, true)), global1.x)), true);
    let var_3 = -425f;
    var var_4 = countOneBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(19125u, 4294967295u, u_input.a.x, 0u) ^ vec4<u32>(u_input.a.x, global0.x, 10907u, global0.x), ~vec4<u32>(4294967295u, global0.x, 1u, global0.x))));
    let var_5 = Struct_3(func_2(~min(~global0.zy, vec2<u32>(18487u, 4294967295u))).c, Struct_2(i32(-1i) * -9454i, u_input.c.x, Struct_1(true, vec4<bool>(global1.x, !global1.x, true, !var_1.x), vec2<u32>(var_4.x, 0u) << (var_4.ww % vec2<u32>(32u)), -2147483647i), 6907i));
    var_4 = max(~max(vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(33039u, 2665u, var_5.b.c.c.x, var_4.x), vec4<u32>(35772u, global0.x, 7904u, 0u)), 30507u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), ~(vec4<u32>(4294967295u, 4294967295u, var_5.b.c.c.x, var_5.b.c.c.x) | vec4<u32>(1u, var_4.x, 57625u, 30847u))), _wgslsmith_div_vec4_u32(reverseBits(select(~vec4<u32>(global0.x, 9390u, 72386u, 0u), countOneBits(vec4<u32>(var_4.x, 1u, u_input.a.x, global0.x)), false)), _wgslsmith_add_vec4_u32(min(vec4<u32>(var_4.x, var_4.x, 0u, u_input.a.x) << (vec4<u32>(1u, global0.x, 62309u, 1u) % vec4<u32>(32u)), vec4<u32>(7970u, var_4.x, 0u, var_5.a.c.x)), vec4<u32>(var_4.x & 0u, 62681u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, 453u), vec3<u32>(var_4.x, global0.x, var_5.a.c.x)), 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(134f, _wgslsmith_sub_u32(~69029u, _wgslsmith_mult_u32(0u, ~func_2(vec2<u32>(var_4.x, global0.x)).c.c.x)), 792u, ~u_input.a.x, ~vec3<i32>(u_input.c.x, i32(-1i) * -6210i, -var_5.b.b ^ reverseBits(38025i)));
}

