struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -20504i, 1469i);

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<bool, 31>;

var<private> global3: array<vec4<f32>, 9>;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-1435f, _wgslsmith_f_op_f32(min(-1248f, _wgslsmith_f_op_f32(global4.c.a + 303f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-905f + -893f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.a.a - -1000f))), global4.c.a)), Struct_1(_wgslsmith_div_f32(global4.a.a, global4.c.a)));
    var var_1 = Struct_2(var_0.c, _wgslsmith_f_op_vec3_f32(abs(global4.b)), var_0.c);
    let var_2 = _wgslsmith_clamp_vec3_i32(~(~_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, -41697i), vec3<i32>(global0.x, global0.x, arg_0))) << (min(_wgslsmith_add_vec3_u32(vec3<u32>(83395u, 1u, 74759u), u_input.e) >> (select(u_input.b.xww, vec3<u32>(9841u, u_input.e.x, 4294967295u), arg_1) % vec3<u32>(32u)), vec3<u32>(~75937u, ~u_input.a, max(u_input.e.x, 33619u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(19721i, 18569i), vec2<i32>(global0.x, -2147483647i)), -arg_0, -2147483647i) & firstLeadingBit(abs(abs(vec3<i32>(-40306i, arg_0, global0.x)))), ~vec3<i32>(~(-1i), firstTrailingBit(1i), ~_wgslsmith_mod_i32(1459i, arg_0)));
    var var_3 = Struct_1(var_0.b.x);
    var var_4 = var_0;
    return reverseBits(-2147483647i);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    global4 = Struct_2(Struct_1(2587f), global4.b, global4.c);
    var var_0 = ~_wgslsmith_dot_vec3_i32((_wgslsmith_div_vec3_i32(vec3<i32>(47414i, u_input.c, global0.x), vec3<i32>(20331i, 0i, 25022i)) >> (abs(vec3<u32>(4294967295u, u_input.e.x, 0u)) % vec3<u32>(32u))) ^ vec3<i32>(u_input.d, func_3(global0.x, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 31u)], true, true)), ~(-2147483647i)), ~_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, global0.x, global0.x), select(vec3<i32>(global0.x, u_input.d, u_input.c), vec3<i32>(-1i, -1i, global0.x), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.e.x, 31u)]))));
    let var_1 = -23204i;
    global0 = -vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 13227i, -66533i, -38815i), vec4<i32>(-2147483647i, u_input.c, -2147483647i, u_input.d), vec4<i32>(-35854i, u_input.d, u_input.c, 8133i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(38216i, 18856i, var_1, 1i), vec4<i32>(0i, var_1, var_1, global0.x), vec4<i32>(0i, -15043i, 348i, u_input.c))), -firstTrailingBit(vec4<i32>(23086i, var_1, var_1, 1i))), var_1, -_wgslsmith_mult_i32(max(-44245i, var_1), 1i));
    var var_2 = _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 10927u, 8979u), select(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 10496u, 5331u), vec3<bool>(arg_0, false, false))), select(44193u, u_input.a >> (u_input.a % 32u), true)), vec2<u32>(min(18556u, 1u), u_input.b.x));
    return _wgslsmith_f_op_vec3_f32(global4.b - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global4.b * global4.b))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1.c;
    let var_1 = global0.x;
    let var_2 = vec3<bool>(false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)]), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<bool>(global2[_wgslsmith_index_u32(22390u, 31u)], global2[_wgslsmith_index_u32(45709u, 31u)], false), global2[_wgslsmith_index_u32(u_input.a, 31u)]), global2[_wgslsmith_index_u32(u_input.e.x, 31u)] && true), false)), false);
    global0 = max(vec3<i32>(~1i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-13468i, u_input.c, -53371i, arg_0.x)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1i, u_input.c, global0.x, u_input.c)), ~vec4<i32>(global0.x, -26782i, global0.x, u_input.c), -vec4<i32>(3506i, u_input.d, u_input.d, -25344i))), global0.x), arg_0);
    let var_3 = Struct_1(-506f);
    return Struct_2(var_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(579f + 971f), -593f, _wgslsmith_div_f32(-683f, var_3.a)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(arg_1.b)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global4.b))))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(abs(_wgslsmith_mult_u32(u_input.b.x, 1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 59670u), vec2<u32>(u_input.e.x, u_input.b.x)), u_input.e.x), 6u)]);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    global1 = array<Struct_1, 6>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~u_input.e.x), u_input.a), 9u)];
    global3 = array<vec4<f32>, 9>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, arg_0.a, global4.b.x, -416f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, global4.c.a, global4.b.x, -226f))))))) * global3[_wgslsmith_index_u32(countOneBits(4294967295u >> (1u % 32u)) | ~arg_1.x, 9u)]);
    let var_2 = func_4(vec3<i32>(~(~(~u_input.c)), global0.x, global0.x), Struct_2(Struct_1(-165f), _wgslsmith_f_op_vec3_f32(func_2(any(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(13425u, 31u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 31u)], global2[_wgslsmith_index_u32(13662u, 31u)], false), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)], global2[_wgslsmith_index_u32(15738u, 31u)]))))), global1[_wgslsmith_index_u32(119218u, 6u)]));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -893f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1810f)) * _wgslsmith_f_op_f32(-301f - var_2.a.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstTrailingBit(~(-vec3<i32>(1i, global0.x, u_input.d))) & ~(~vec3<i32>(-8131i, 2147483647i, global0.x >> (u_input.b.x % 32u)));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a), _wgslsmith_mod_u32(0u, u_input.a)) & u_input.b.x, ~_wgslsmith_sub_u32(43843u, _wgslsmith_sub_u32(u_input.a, u_input.b.x))) >= u_input.e.x;
    global4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global4.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.b.x, global4.a.a, true))))), global4.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-310f), u_input.b)))))));
    global0 = _wgslsmith_add_vec3_i32(var_0, -abs(vec3<i32>(-39745i, -2147483647i, -var_0.x)));
    global4 = func_4(firstLeadingBit(abs(~var_0)), Struct_2(func_4(vec3<i32>(u_input.c, u_input.d, 1i) >> (vec3<u32>(32377u, u_input.e.x, 0u) % vec3<u32>(32u)), Struct_2(func_4(vec3<i32>(u_input.c, u_input.c, 28120i), Struct_2(global1[_wgslsmith_index_u32(8695u, 6u)], global4.b, Struct_1(global4.a.a))).c, _wgslsmith_f_op_vec3_f32(abs(global4.b)), func_4(vec3<i32>(-41248i, 48328i, 22200i), Struct_2(Struct_1(global4.c.a), global4.b, global4.a)).c)).c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global4.b))), global1[_wgslsmith_index_u32(u_input.a, 6u)]));
    global0 = -(max((var_0 & vec3<i32>(-8725i, var_0.x, var_0.x)) >> (reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.e.x)) % vec3<u32>(32u)), firstLeadingBit(-var_0)) & (var_0 ^ vec3<i32>(_wgslsmith_clamp_i32(2214i, 24301i, 0i), 11947i | var_0.x, var_0.x)));
    let var_2 = countOneBits(_wgslsmith_add_u32(u_input.e.x, 43095u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global4.b.yx);
}

