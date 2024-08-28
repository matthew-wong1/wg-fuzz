struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<bool, 12> = array<bool, 12>(false, true, false, true, false, true, false, true, true, false, true, true);

var<private> global2: array<vec3<bool>, 24>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global2 = array<vec3<bool>, 24>();
    var var_0 = u_input.c.x | _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(_wgslsmith_mod_u32(133059u, 42516u), u_input.c.x, _wgslsmith_sub_u32(27618u, u_input.c.x), u_input.c.x)), u_input.c.x);
    global2 = array<vec3<bool>, 24>();
    var var_1 = vec2<i32>(~u_input.b.x, _wgslsmith_div_i32(0i, u_input.b.x));
    var var_2 = 29046u;
    return vec2<bool>(arg_0, false);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = vec3<bool>(global0.x, true, !any(select(!vec2<bool>(global1[_wgslsmith_index_u32(61412u, 12u)], false), func_3(false), true)));
    let var_0 = ~select(countOneBits(~select(arg_2.c.x, arg_0.x, true)), 50058u, global1[_wgslsmith_index_u32(~4294967295u, 12u)] & any(vec4<bool>(true, true, true, false)));
    let var_1 = ~(-vec2<i32>(~(~2147483647i), -u_input.d.x));
    global0 = vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global0.x);
    let var_2 = abs(vec3<i32>(firstTrailingBit(var_1.x), -66261i, u_input.b.x));
    return Struct_1(1000f, _wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(max(2067f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(227f, arg_2.a)))))), arg_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = func_2(vec2<u32>(4294967295u, countOneBits(~(~arg_1.c.x))), func_2(vec2<u32>(~1u, firstTrailingBit(u_input.c.x)) & ~(~arg_0.c.zz), Struct_1(_wgslsmith_f_op_f32(1398f - arg_0.b), -688f, arg_0.c), arg_1), func_2(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c.x, arg_1.c.x), ~vec2<u32>(u_input.c.x, 0u)), func_2(min(arg_0.c.yy | vec2<u32>(70333u, 59709u), arg_0.c.xw), Struct_1(_wgslsmith_f_op_f32(select(arg_0.a, arg_1.b, true)), arg_0.b, arg_1.c), func_2(arg_0.c.zx, Struct_1(1793f, -708f, vec4<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, 16490u)), func_2(vec2<u32>(u_input.c.x, 7517u), arg_1, arg_1))), arg_0));
    var var_1 = arg_1.b;
    global1 = array<bool, 12>();
    global0 = vec3<bool>(true, all(select(!global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global0.x && global1[_wgslsmith_index_u32(0u, 12u)])) & !(global1[_wgslsmith_index_u32(9865u, 12u)] & false), false);
    global1 = array<bool, 12>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(-668f, arg_1.a), global0.zy)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1445f, arg_1.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-672f, arg_1.b)))))) - vec2<f32>(var_0.b, _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = ~(~select(arg_3, _wgslsmith_div_vec3_u32(reverseBits(arg_3), countOneBits(arg_3)), global0.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), arg_2.x, firstLeadingBit(firstLeadingBit(countOneBits(firstLeadingBit(vec4<u32>(1u, arg_3.x, 45180u, u_input.c.x))))));
    var var_2 = global0.x;
    return Struct_1(arg_2.x, _wgslsmith_f_op_f32(-arg_1.x), abs(vec4<u32>(var_0.x, 39711u, min(var_1.c.x, var_1.c.x), u_input.c.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = !global0.x;
    return func_5(-(~u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(vec2<u32>(arg_2.c.x, 32578u), Struct_1(arg_0.b, arg_2.a, arg_0.c), Struct_1(arg_2.a, arg_1.b, arg_1.c)), Struct_1(arg_0.b, arg_2.b, arg_2.c))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(668f, -926f), vec2<f32>(-688f, 1065f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-805f, arg_0.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.b, -1819f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1420f)) * vec2<f32>(arg_0.b, -1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(arg_1.b, -403f), global1[_wgslsmith_index_u32(0u, 12u)])))))), ~select(_wgslsmith_div_vec3_u32(reverseBits(arg_1.c.zyy), select(vec3<u32>(arg_0.c.x, 51135u, 3032u), arg_0.c.wyw, global1[_wgslsmith_index_u32(1u, 12u)])), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(43142u, arg_0.c.x, 1u), vec3<u32>(32972u, arg_0.c.x, arg_1.c.x))), select(!var_0, true, false)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_u32(arg_2.c.x, 51719u);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(global1[_wgslsmith_index_u32(17831u, 12u)], true, func_6(Struct_1(492f, -1694f, vec4<u32>(u_input.c.x, 27731u, 1u, 39846u)), ~vec4<i32>(1i, 0i, -25410i, u_input.b.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -258f), -276f, ~vec4<u32>(u_input.c.x, u_input.c.x, 124928u, 53930u)), func_1(Struct_1(-945f, -213f, vec4<u32>(u_input.c.x, 20363u, 111940u, u_input.c.x)), Struct_1(266f, 171f, vec4<u32>(u_input.c.x, 7467u, 63338u, u_input.c.x)), Struct_1(-831f, 1614f, vec4<u32>(26030u, 75998u, u_input.c.x, u_input.c.x)), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1083f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1352f - 1803f))), 1000f, reverseBits(func_1(Struct_1(-760f, _wgslsmith_f_op_f32(round(572f)), vec4<u32>(u_input.c.x, 83242u, u_input.c.x, 19542u)), Struct_1(529f, _wgslsmith_div_f32(849f, -183f), vec4<u32>(u_input.c.x, 13272u, 4294967295u, u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(-497f * 1492f), _wgslsmith_f_op_f32(798f - 1000f), vec4<u32>(u_input.c.x, 20547u, 0u, u_input.c.x)), select(global0.zz, func_3(global0.x), !vec2<bool>(global0.x, global0.x))).c));
    var var_1 = vec4<i32>(1i, u_input.b.x, max(u_input.d.x, _wgslsmith_clamp_i32(~(~(-24629i)), 1i, ~(~u_input.b.x))), _wgslsmith_mod_i32(countOneBits(~firstLeadingBit(u_input.b.x)), 0i));
    global0 = vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)]);
    let var_2 = select(select(-select(vec4<i32>(var_1.x, 2147483647i, var_1.x, u_input.b.x), vec4<i32>(41341i, u_input.b.x, u_input.d.x, -10402i), global0.x & false), ~vec4<i32>(~(-42087i), _wgslsmith_sub_i32(u_input.a, -24938i), var_1.x ^ var_1.x, 821i >> (u_input.c.x % 32u)), vec4<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.c.x, var_0.c.x), 12u)], func_6(func_2(var_0.c.xy, Struct_1(var_0.a, 1000f, var_0.c), Struct_1(1296f, 554f, var_0.c)), ~vec4<i32>(var_1.x, 0i, var_1.x, 43741i), func_2(var_0.c.wz, Struct_1(var_0.a, var_0.a, vec4<u32>(38741u, 41042u, 4294967295u, 4294967295u)), Struct_1(var_0.b, var_0.b, vec4<u32>(u_input.c.x, 0u, 8039u, 42388u))), func_1(Struct_1(var_0.b, 168f, vec4<u32>(u_input.c.x, 7862u, u_input.c.x, u_input.c.x)), Struct_1(var_0.a, 631f, vec4<u32>(var_0.c.x, 1u, var_0.c.x, var_0.c.x)), Struct_1(-117f, var_0.a, var_0.c), global0.yy)), false)), vec4<i32>(-_wgslsmith_div_i32(0i, -56960i) | _wgslsmith_add_i32(2147483647i, var_1.x), 53747i, 1i, u_input.a << (_wgslsmith_mod_u32(min(u_input.c.x, var_0.c.x), _wgslsmith_add_u32(u_input.c.x, u_input.c.x)) % 32u)), true);
    var var_3 = var_0.a;
    var var_4 = var_1.wzz;
    var var_5 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2414f, var_0.b) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(max(-360f, var_0.a)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(625f, -1918f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1797f))), vec2<f32>(-2493f, _wgslsmith_f_op_f32(-var_0.b)), vec2<bool>(true, true)))))));
    let var_6 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(reverseBits(var_0.c.zwy & var_0.c.wyx) << (var_0.c.zww % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x - var_5.x) + _wgslsmith_f_op_f32(-190f + 556f))), var_0.a), ~(~vec3<u32>(countOneBits(var_0.c.x), ~var_0.c.x, var_0.c.x)));
}

