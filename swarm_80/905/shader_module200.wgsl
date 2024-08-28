struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, true, false, true, false, false, false, false, true, false, true, true, false, true);

var<private> global2: array<vec2<f32>, 26>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<f32>(-216f, 185f, -1985f, -505f), vec4<f32>(407f, -1618f, 776f, 1442f)), Struct_1(vec4<f32>(-471f, 1242f, 942f, -694f), vec4<f32>(1114f, 647f, -2942f, 280f)), Struct_1(vec4<f32>(-770f, -967f, -433f, 244f), vec4<f32>(527f, 909f, -276f, 929f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(arg_1.a.b, global3.b.a);
    global1 = array<bool, 15>();
    var var_1 = countOneBits(vec3<i32>(arg_0, _wgslsmith_add_i32(arg_0, 2147483647i), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 36604i), vec2<i32>(8823i, 2147483647i)), abs(0i))));
    return !(!select(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], false), vec3<bool>(global1[_wgslsmith_index_u32(72479u, 15u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], true, false), !global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(21051u, 15u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(18935u, 15u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(global2[_wgslsmith_index_u32(firstTrailingBit(arg_2.x), 26u)]));
    var var_1 = min(-1661i, max(reverseBits(1778i), -8508i));
    global3 = Struct_2(global3.a, global3.c, arg_3);
    var var_2 = reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 2147483647i), firstLeadingBit(firstLeadingBit(~vec3<i32>(-54153i, 1i, -2147483647i)))));
    let var_3 = ~vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~(~u_input.b), firstTrailingBit(u_input.b)), 1u, u_input.a.x);
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(~43199u, ~58780u)), 30u)];
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    global1 = array<bool, 15>();
    var var_0 = ~u_input.a.x;
    let var_1 = arg_3.b;
    global3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, 294f, -1000f, -630f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.b.x, 400f, var_1.a.x, var_1.a.x)), vec4<bool>(arg_0, arg_0, false, arg_0))), arg_3.b.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + arg_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_3.b.a.x, global3.a.b.x))), -131f, -452f)), global3.a, func_3(!func_2(min(-39216i, 0i), func_3(vec3<bool>(true, arg_0, arg_0), false, u_input.a, global3.a)), any(vec3<bool>(true, arg_1 != global1[_wgslsmith_index_u32(u_input.b.x, 15u)], true || arg_0)), u_input.a, func_3(!(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), true, u_input.b.yy, func_3(func_2(-58382i, Struct_2(var_1, Struct_1(global3.a.a, arg_3.a.a), var_1)), arg_1, ~u_input.a, Struct_1(var_1.a, arg_2)).b).b).c);
    global2 = array<vec2<f32>, 26>();
    return _wgslsmith_dot_vec2_u32(min(u_input.a, ~u_input.a), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, ~(u_input.b.x << (u_input.a.x % 32u))), max(~_wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, 4294967295u), _wgslsmith_div_u32(abs(u_input.b.x), abs(102628u)))));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(vec4<f32>(arg_2.b.x, arg_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f), -1000f), 956f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a.x, 1703f, 166f, 397f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(868f, arg_3.a.x, -1118f, arg_3.b.x))), _wgslsmith_f_op_vec4_f32(-arg_2.a), vec4<bool>(any(vec4<bool>(arg_0, true, arg_0, false)) & true, all(arg_1.xz) || !arg_0, global1[_wgslsmith_index_u32(21651u, 15u)], arg_1.x))));
    global3 = Struct_2(func_3(select(func_2(min(39655i, 3968i), global0[_wgslsmith_index_u32(~1u, 30u)]), !select(arg_1, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], true, arg_0), arg_1), any(arg_1.yx) | arg_0), !global1[_wgslsmith_index_u32(~4294967295u, 15u)], vec2<u32>(~(~35559u), ~u_input.b.x << (~4294967295u % 32u)), Struct_1(global3.c.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.a.x, -844f, 1439f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(min(arg_2.a, vec4<f32>(var_0.a.x, 172f, 513f, -171f)))))).c, arg_3, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1454f, arg_2.a.x, 1000f, 262f) - vec4<f32>(-209f, 897f, 232f, -501f))))), arg_2.b));
    global2 = array<vec2<f32>, 26>();
    global1 = array<bool, 15>();
    let var_1 = func_3(select(vec3<bool>(arg_1.x, true, arg_0), vec3<bool>(true, true, arg_1.x), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(9521i, 2147483647i, -47620i), ~vec3<i32>(0i, -31825i, 6683i)), global0[_wgslsmith_index_u32(45840u, 30u)])), true, u_input.b.xz, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, _wgslsmith_f_op_f32(select(arg_3.a.x, -1026f, arg_1.x)), 894f, _wgslsmith_div_f32(-1307f, 949f))), var_0.a));
    return func_3(vec3<bool>(true, true, true), !any(!vec4<bool>(arg_1.x, false, false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)])) && (var_1.c.b.x == -1094f), abs(firstLeadingBit(vec2<u32>(~74164u, func_4(arg_0, true, vec4<f32>(1901f, arg_3.b.x, 1440f, -551f), var_1)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_3.b.x)), _wgslsmith_f_op_f32(sign(global3.c.b.x)))), global3.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.b.x) - -1091f)), vec4<f32>(184f, _wgslsmith_f_op_f32(arg_2.a.x - 1498f), global3.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a.x)) + _wgslsmith_f_op_f32(ceil(var_1.c.b.x))))));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_5(global1[_wgslsmith_index_u32(func_4(all(!vec3<bool>(true, arg_0, global1[_wgslsmith_index_u32(44129u, 15u)])), !(!(!global1[_wgslsmith_index_u32(9628u, 15u)])), global3.a.b, func_3(!func_2(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), true, reverseBits(u_input.b.yz) >> (u_input.b.zy % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a.a), vec4<f32>(632f, -358f, global3.a.a.x, global3.b.b.x)))), 15u)], vec3<bool>(!all(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 15u)], true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], false))), global1[_wgslsmith_index_u32(max(34839u, 93444u), 15u)], global3.a.b.x == _wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(-223f - -267f))), global3.a, global3.b);
    var var_1 = countOneBits(vec2<i32>(~(~0i), countOneBits(1i)) >> (~select(select(vec2<u32>(27793u, 4294967295u), vec2<u32>(u_input.a.x, 1u), vec2<bool>(false, false)), select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.a, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)) % vec2<u32>(32u)));
    global3 = global0[_wgslsmith_index_u32(49796u, 30u)];
    global1 = array<bool, 15>();
    var_0 = func_3(!(!(!vec3<bool>(arg_0, arg_0, false))), all(select(func_2(var_1.x, global0[_wgslsmith_index_u32(~u_input.a.x, 30u)]).xy, select(vec2<bool>(true, arg_0), select(vec2<bool>(global1[_wgslsmith_index_u32(2334u, 15u)], false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], true), vec2<bool>(false, false)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], true)), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 15u)])))), u_input.b.yx, global3.b);
    return ~min(min(u_input.a.x, 34688u) ^ u_input.a.x, ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global3.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) * -1309f) - _wgslsmith_f_op_f32(-global3.b.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a.a.x))));
    let var_1 = vec3<bool>((false & global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, 4908u) & vec4<u32>(u_input.a.x, 1u, u_input.b.x, 27425u), countOneBits(vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u))), 15u)]) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-310f))) != global3.a.b.x), !global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(42095u, u_input.b.x, u_input.b.x, 21911u) | vec4<u32>(u_input.b.x, u_input.b.x, 77561u, 23122u), select(vec4<u32>(u_input.b.x, 13672u, 65057u, u_input.a.x), vec4<u32>(0u, 1u, 74168u, u_input.b.x), false)), 15u)], !(!select(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true)) && !global1[_wgslsmith_index_u32(u_input.b.x & u_input.a.x, 15u)]);
    global2 = array<vec2<f32>, 26>();
    var var_2 = ~vec2<u32>(min(~u_input.a.x, ~1u), func_1(var_1.x) << ((u_input.b.x ^ 10969u) % 32u)) >> (vec2<u32>(min(_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_mult_u32(0u, 5612u)), u_input.b.x), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(54384u, u_input.a.x, 1u, 51743u)), vec4<u32>(31284u, u_input.a.x, 0u, 42370u) ^ vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 56583u)) << (_wgslsmith_add_u32(u_input.a.x, countOneBits(u_input.a.x)) % 32u)) % vec2<u32>(32u));
    let var_3 = Struct_2(func_5(!func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -16730i), vec2<i32>(-34766i, 38460i)), func_3(vec3<bool>(global1[_wgslsmith_index_u32(0u, 15u)], true, global1[_wgslsmith_index_u32(4294967295u, 15u)]), var_1.x, vec2<u32>(u_input.a.x, 0u), Struct_1(global3.c.a, global3.a.b))).x, vec3<bool>(false, countOneBits(-5325i) == firstTrailingBit(2147483647i), false), global3.b, global3.b).a, func_5(select(var_1.x, true, !any(vec2<bool>(true, var_1.x))), var_1, func_3(var_1, (var_1.x & true) & true, u_input.b.xx, global3.a).b, global3.b).c, Struct_1(_wgslsmith_f_op_vec4_f32(global3.b.a * global3.b.a), global3.c.b));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(round(func_5(global1[_wgslsmith_index_u32(var_2.x, 15u)], var_1, func_5(false, func_2(-86974i, var_3), global3.c, Struct_1(global3.a.b, vec4<f32>(var_0.x, -816f, var_0.x, -1003f))).c, global3.c).a.b)), var_3.b.b);
    let var_5 = !(!select(func_2(1i, global0[_wgslsmith_index_u32(~0u, 30u)]), select(var_1, vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 15u)]), vec3<bool>(var_1.x, true, var_1.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(38914i, abs(~1i), (_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -4265i), vec2<i32>(27565i, 14324i)) >> (_wgslsmith_sub_u32(var_2.x, u_input.a.x) % 32u)) & -countOneBits(-2147483647i), firstLeadingBit(i32(-1i) * -16547i)), ~vec4<u32>(4294967295u, u_input.a.x, u_input.b.x << (1u % 32u), var_2.x));
}

