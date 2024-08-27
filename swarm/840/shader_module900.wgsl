struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, true, true, true, false, false, true, true, true, true, true, true, true, false, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = all(arg_1);
    global1 = array<bool, 18>();
    var_0 = !any(select(arg_1, select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], false), vec2<bool>(arg_1.x, false), all(arg_1)), true));
    global0 = array<vec2<i32>, 5>();
    let var_1 = ~(~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(28103u, 33027u)), ~vec2<u32>(19161u, u_input.a)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 7105u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(u_input.a, 22566u) % vec2<u32>(32u)), ~vec2<u32>(9251u, 1u))));
    return ~arg_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(func_3(Struct_1(arg_0.b, _wgslsmith_clamp_i32(41615i, ~arg_0.b, arg_0.a | arg_0.a), -590f), select(vec2<bool>(66924u == u_input.a, !global1[_wgslsmith_index_u32(u_input.a, 18u)]), vec2<bool>(any(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(4294967295u, 18u)])), true), vec2<bool>(true, select(global1[_wgslsmith_index_u32(19211u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])))), 2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -839f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = vec2<u32>(~0u, _wgslsmith_sub_u32(~(~u_input.a), 1u) << (u_input.a % 32u));
    let var_3 = firstLeadingBit(-select(vec4<i32>(1i, 21675i, -2147483647i, -28360i), vec4<i32>(var_1.a, var_1.a, arg_0.b, 0i), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(var_2.x, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], false, false, global1[_wgslsmith_index_u32(var_2.x, 18u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(96484u, 18u)], false))) << (vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(var_2.x), ~var_2.x), 1u, 4271u, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.x, var_2.x), abs(22746u))) % vec4<u32>(32u)));
    let var_4 = true;
    return Struct_1(_wgslsmith_dot_vec3_i32(var_3.wzw >> (select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 36652u), vec3<u32>(0u, var_2.x, var_2.x)), vec3<u32>(4294967295u, 55854u, 33014u), !var_4) % vec3<u32>(32u)), vec3<i32>(max(var_3.x, -var_3.x), -18896i, ~arg_0.a)), -_wgslsmith_mod_i32(~var_1.b, ~(-1i)) ^ max(var_1.a, 10222i), _wgslsmith_f_op_f32(1071f + -598f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> vec3<i32> {
    global1 = array<bool, 18>();
    let var_0 = 1962i;
    return _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(-max(vec3<i32>(-38455i, arg_0.b, -2147483647i), vec3<i32>(1i, arg_1.x, arg_0.a)) & (vec3<i32>(-1i) * -vec3<i32>(32618i, -1i, var_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a, arg_1.x, -2147483647i), ~vec3<i32>(arg_2.a, 36389i, 2147483647i), ~vec3<i32>(arg_0.a, arg_0.b, 2147483647i)) << (abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(124086u, u_input.a, 1u))) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(14758i), abs(var_0), func_3(arg_0, vec2<bool>(true, true))), ~(~vec3<i32>(arg_1.x, -1i, var_0))) >> (~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 18256u, 1u), vec3<u32>(13794u, 0u, 0u))) % vec3<u32>(32u)));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1.x, 10084i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1040f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-576f)))));
    let var_1 = arg_2;
    var var_2 = ~17679i;
    var_2 = _wgslsmith_mult_i32(func_4(Struct_1(~arg_2.b, ~(-1i ^ arg_2.b), _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -139f)))), arg_1.zx, func_2(Struct_1(38090i, -arg_2.a, -1000f), vec2<f32>(var_1.c, _wgslsmith_f_op_f32(219f - var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1535f)), var_0.c)), _wgslsmith_f_op_f32(ceil(var_0.c))).x, -(~0i));
    let var_3 = var_0;
    return var_0;
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 18>();
    let var_0 = !global1[_wgslsmith_index_u32(max(0u, _wgslsmith_add_u32(0u, u_input.a) << (5495u % 32u)), 18u)];
    global1 = array<bool, 18>();
    let var_1 = func_5(-(_wgslsmith_sub_i32(i32(-1i) * -51957i, i32(-1i) * -1i) >> (u_input.a % 32u)), abs(func_4(func_2(Struct_1(-41324i, 0i, 343f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1914f, -1000f)), _wgslsmith_f_op_f32(-803f + -495f)), ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(150u, 52898u), 5u)], Struct_1(~2147483647i, firstLeadingBit(-1559i), 136f), _wgslsmith_f_op_f32(-885f * _wgslsmith_f_op_f32(step(-2018f, 182f))))), Struct_1(max(firstLeadingBit(select(-1i, 15584i, true)), min(select(1i, -1i, false), 1i)), _wgslsmith_clamp_i32(func_2(func_2(Struct_1(9021i, 0i, 103f), vec2<f32>(-564f, -1000f), -385f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1495f, -391f) * vec2<f32>(-1325f, 1000f)), _wgslsmith_f_op_f32(2389f * -307f)).b, 0i, 26831i), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), max(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(select(u_input.a, 79266u, true), u_input.a)));
    var var_2 = var_1;
    return var_1;
}

fn func_6(arg_0: Struct_1) -> f32 {
    var var_0 = ~(~min(39033u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 790u, 1u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)))));
    global0 = array<vec2<i32>, 5>();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(26283u, 5u)], ~max(vec2<i32>(i32(-1i) * -2147483647i, 1i), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.b, 10492i), global0[_wgslsmith_index_u32(46316u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), global0[_wgslsmith_index_u32(55403u, 5u)], !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1351f, -1370f, 1541f, 1094f), vec4<f32>(424f, arg_0.c, -138f, 1000f))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, -120f, -1201f, arg_0.c), vec4<f32>(arg_0.c, 875f, 1932f, arg_0.c))))), vec4<f32>(1f, 663f, 2021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - arg_0.c))))));
    return -1805f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 5>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, 60213u), 18u)];
    global0 = array<vec2<i32>, 5>();
    let var_1 = !vec4<bool>(global1[_wgslsmith_index_u32(abs(15365u), 18u)], true, global1[_wgslsmith_index_u32(~max(u_input.a, 1u), 18u)] & !any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])), false);
    var var_2 = Struct_1(abs(i32(-1i) * -866i), _wgslsmith_clamp_i32(countOneBits(21198i), select(abs(-2147483647i), 0i, u_input.a >= u_input.a) << (19058u % 32u), _wgslsmith_mod_i32(countOneBits(abs(-20321i)), 1i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_6(func_1())), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1193f)), _wgslsmith_f_op_f32(-612f - 288f))))))));
    let var_3 = vec4<u32>(u_input.a, 1u, u_input.a, 1u);
    var var_4 = func_5(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(select(0i, -22309i, false), _wgslsmith_mod_i32(var_2.b, var_2.b)), func_4(func_2(Struct_1(-1i, var_2.b, -291f), vec2<f32>(var_2.c, 1000f), var_2.c), global0[_wgslsmith_index_u32(4294967295u, 5u)] >> (var_3.zz % vec2<u32>(32u)), Struct_1(-8938i, 1i, -232f), var_2.c).x), var_2.a), -(~(vec3<i32>(var_2.b, 2147483647i, var_2.b) << (max(var_3.xyx, vec3<u32>(var_3.x, var_3.x, 15196u)) % vec3<u32>(32u)))), Struct_1(-(~(-var_2.a)), var_2.b & firstLeadingBit(var_2.a), var_2.c), ~vec2<u32>(~4294967295u, reverseBits(~10657u)));
    let var_5 = select(var_1.wy, select(vec2<bool>(var_1.x, true), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 18u)], false))), !all(!vec4<bool>(false, false, var_1.x, var_1.x))), var_1.x);
    var_4 = Struct_1(var_2.a, ~func_5(var_4.b, _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, var_4.b, var_4.a), vec3<i32>(8517i, -2147483647i, 0i)), Struct_1(var_2.b, func_2(Struct_1(var_2.a, 2147483647i, 180f), vec2<f32>(398f, 1030f), 385f).b, _wgslsmith_f_op_f32(func_6(Struct_1(-2147483647i, var_2.a, var_4.c)))), var_3.wx).b, _wgslsmith_f_op_f32(f32(-1f) * -1683f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1112f, _wgslsmith_f_op_f32(693f * _wgslsmith_f_op_f32(f32(-1f) * -530f)))))));
}

