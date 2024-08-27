struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: vec4<u32> = vec4<u32>(43706u, 3509u, 0u, 6118u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    global1 = countOneBits(countOneBits(_wgslsmith_sub_vec4_u32((vec4<u32>(u_input.b, 7703u, 8651u, global1.x) & vec4<u32>(9189u, 1052u, u_input.d, 0u)) ^ ~vec4<u32>(7353u, 105523u, global1.x, u_input.b), vec4<u32>(_wgslsmith_sub_u32(global1.x, global1.x), u_input.b, u_input.c.x, u_input.c.x << (u_input.c.x % 32u)))));
    return global1.x;
}

fn func_2() -> i32 {
    global0 = array<f32, 1>();
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(-17444i, _wgslsmith_div_i32(-u_input.a, i32(-1i) * -39965i)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a), _wgslsmith_div_i32(-2147483647i, u_input.a)), ~u_input.a)), _wgslsmith_mult_i32(~1i, min(_wgslsmith_add_i32(u_input.a ^ 33328i, 2147483647i), 3098i)));
    var var_1 = false;
    global1 = ~vec4<u32>(0u, global1.x, global1.x, u_input.b) | vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(global1.x, u_input.d, 0u, 64316u)), select(~vec4<u32>(0u, global1.x, global1.x, 77933u), select(vec4<u32>(37941u, global1.x, global1.x, 0u), vec4<u32>(4294967295u, 44094u, u_input.d, global1.x), true), vec4<bool>(true, false, true, true))), ~60311u, abs(~u_input.c.x), func_3(countOneBits(u_input.a), u_input.a, select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(7199u, 1u)), ~vec2<u32>(11437u, u_input.b)), global1.x, u_input.b, ~73982u);
    return 50808i;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    let var_0 = !any(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_1 = (~(-_wgslsmith_add_i32(-2147483647i, u_input.a)) | ~28192i) << (select(~(_wgslsmith_dot_vec3_u32(arg_1.ywz, vec3<u32>(4294967295u, arg_0, 1u)) << (~4294967295u % 32u)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(14646u, countOneBits(1u)), 0u), var_0) % 32u);
    global1 = _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(1u, 4294967295u, 1u, ~global1.x)), _wgslsmith_div_vec4_u32(~(vec4<u32>(arg_0, global1.x, 41289u, u_input.d) | (vec4<u32>(4294967295u, 27831u, arg_1.x, global1.x) ^ vec4<u32>(1u, u_input.d, u_input.c.x, 4294967295u))), ~(~arg_1 << (vec4<u32>(global1.x, 1u, 55709u, 0u) % vec4<u32>(32u)))));
    var var_2 = Struct_1(!select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), true), arg_0);
    var var_3 = Struct_2(-260f, Struct_1(vec2<bool>(true, true), ~_wgslsmith_div_u32(~22761u, func_3(-51447i, arg_2, vec2<bool>(var_2.a.x, true)))), Struct_1(vec2<bool>(!var_2.a.x, global0[_wgslsmith_index_u32(~0u, 1u)] == _wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(arg_0, 1u)])), arg_1.x));
    return -_wgslsmith_mod_i32(-4946i, _wgslsmith_div_i32(-(u_input.a | 1i), u_input.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = vec4<i32>(38167i, -_wgslsmith_mod_i32(33656i, 2147483647i), ~u_input.a, reverseBits(arg_2.x));
    var var_2 = _wgslsmith_sub_i32(func_4(~var_0.x, abs(vec4<u32>(arg_0.x, var_0.x, u_input.c.x, arg_1.c.b)) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 881u, 86528u, 5328u), vec4<u32>(27525u, arg_0.x, 111928u, 4294967295u)), abs(func_2())), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_2, arg_2), var_1.x)) <= arg_2.x;
    var_1 = vec4<i32>(-1i) * -arg_2;
    var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.x, 25745u), var_0), 4294967295u) >= _wgslsmith_div_u32(max(~var_0.x, arg_1.b.b), ~(~(~30682u)));
    return select(vec4<bool>(true, arg_1.b.a.x, true, arg_1.b.a.x), !vec4<bool>(arg_1.b.a.x, true, u_input.a < (arg_2.x << (arg_1.b.b % 32u)), any(select(vec3<bool>(false, false, arg_1.c.a.x), vec3<bool>(arg_1.c.a.x, arg_1.c.a.x, arg_1.c.a.x), vec3<bool>(arg_1.c.a.x, false, arg_1.c.a.x)))), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 1u)] >= 759f, !arg_1.c.a.x, false), select(vec4<bool>(false, arg_1.b.a.x, true, true), select(vec4<bool>(false, false, arg_1.c.a.x, true), vec4<bool>(false, arg_1.b.a.x, arg_1.c.a.x, true), vec4<bool>(true, arg_1.c.a.x, false, false)), vec4<bool>(arg_1.c.a.x, false, false, true)), arg_1.b.a.x), select(vec4<bool>(!arg_1.b.a.x, any(arg_1.b.a), -2101i != u_input.a, arg_1.b.a.x), select(vec4<bool>(arg_1.b.a.x, true, true, false), select(vec4<bool>(false, true, arg_1.c.a.x, false), vec4<bool>(arg_1.b.a.x, false, arg_1.c.a.x, false), false), true), !(!arg_1.c.a.x)), true));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a << (~69243u % 32u), _wgslsmith_div_i32(_wgslsmith_mult_i32(-18929i, -3511i), -36154i), firstTrailingBit(abs(u_input.a))), vec3<i32>(i32(-1i) * -u_input.a, countOneBits(abs(1i)), _wgslsmith_add_i32(~(-6966i), -2147483647i))));
    var var_1 = _wgslsmith_f_op_f32(arg_2.x + global0[_wgslsmith_index_u32(1u, 1u)]);
    var var_2 = Struct_2(arg_2.x, Struct_1(vec2<bool>(arg_1.x, true), arg_0 >> (_wgslsmith_dot_vec3_u32(global1.xxw & vec3<u32>(arg_0, arg_0, 56974u), vec3<u32>(u_input.c.x, 108995u, arg_0)) % 32u)), Struct_1(vec2<bool>(any(!vec3<bool>(arg_1.x, false, arg_1.x)), arg_1.x), 1u));
    let var_3 = abs(firstLeadingBit(vec4<i32>(1i, abs(select(var_0.x, 1i, false)), reverseBits(-1778i), 2147483647i)));
    let var_4 = vec3<bool>(true, false, any(var_2.c.a));
    return Struct_1(!select(select(vec2<bool>(true, false), arg_1.wy, arg_2.x == global0[_wgslsmith_index_u32(var_2.b.b, 1u)]), vec2<bool>(true, false), var_4.zz), ~u_input.d);
}

fn func_6(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_5(~min(max(func_5(arg_1.x, vec4<bool>(false, true, arg_3.a.x, arg_3.a.x), vec4<f32>(2031f, 1277f, -979f, global0[_wgslsmith_index_u32(71096u, 1u)])).b, _wgslsmith_sub_u32(4294967295u, global1.x)), select(0u ^ u_input.c.x, u_input.d, all(vec2<bool>(true, arg_3.a.x)))), vec4<bool>(true, true, any(!func_1(arg_1.ywy, Struct_2(global0[_wgslsmith_index_u32(arg_3.b, 1u)], arg_3, arg_3), vec4<i32>(-1i, u_input.a, 14906i, 0i))), select(arg_3.a.x, (arg_2.x != 8759i) & true, arg_3.a.x)), _wgslsmith_mod_i32(u_input.a, 14503i), select(func_1(vec3<u32>(firstTrailingBit(arg_0), ~1u, _wgslsmith_clamp_u32(arg_3.b, global1.x, global1.x)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -652f), func_5(74128u, vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x), vec4<f32>(564f, global0[_wgslsmith_index_u32(arg_1.x, 1u)], 1253f, global0[_wgslsmith_index_u32(13799u, 1u)])), arg_3), ~select(vec4<i32>(-54890i, u_input.a, -13383i, 52318i), vec4<i32>(0i, u_input.a, arg_2.x, arg_2.x), vec4<bool>(arg_3.a.x, true, arg_3.a.x, arg_3.a.x))).wz, !vec2<bool>(true, select(arg_3.a.x, true, arg_3.a.x)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_mult_i32(~reverseBits(u_input.a), 10747i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1077f)) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 0u), vec3<u32>(92316u, var_0.a, 0u)), 1u)])), -579f)), arg_3, func_5(90408u, !func_1(vec3<u32>(global1.x, u_input.d, 1u) >> (global1.zzz % vec3<u32>(32u)), Struct_2(global0[_wgslsmith_index_u32(arg_3.b, 1u)], arg_3, arg_3), -vec4<i32>(var_1, var_0.c, var_0.c, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1199f, 2474f, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 1000f) * vec4<f32>(1608f, 879f, global0[_wgslsmith_index_u32(50197u, 1u)], 216f)) + vec4<f32>(-482f, -2756f, global0[_wgslsmith_index_u32(arg_3.b, 1u)], -1294f)))));
    var var_3 = Struct_5(26200u << (arg_3.b % 32u), var_0.b, 36520i, !var_0.b.zy);
    var var_4 = _wgslsmith_f_op_f32(790f + 109f);
    return func_5(max(_wgslsmith_add_u32(u_input.c.x, ~_wgslsmith_dot_vec3_u32(global1.wyx, global1.ywx)), var_3.a), select(vec4<bool>(false, true, false, var_0.d.x), var_0.b, vec4<bool>(!(-457f != var_2.a), any(!vec2<bool>(var_2.b.a.x, var_0.d.x)), true, all(select(var_3.b.yww, vec3<bool>(var_0.b.x, arg_3.a.x, false), var_0.b.wzx)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 1u)], 2538f, global0[_wgslsmith_index_u32(arg_1.x, 1u)], global0[_wgslsmith_index_u32(global1.x, 1u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(!vec3<bool>(-26168i >= u_input.a, true, global0[_wgslsmith_index_u32(global1.x, 1u)] < 414f)), true);
    var var_1 = func_6(1u, abs(vec4<u32>(~10100u, global1.x, countOneBits(abs(97230u)), firstTrailingBit(~u_input.b))), vec3<i32>(u_input.a, u_input.a & -(0i | u_input.a), -abs(u_input.a)), func_5(35821u, select(!func_1(vec3<u32>(0u, 0u, global1.x), Struct_2(-181f, Struct_1(var_0, 0u), Struct_1(vec2<bool>(var_0.x, var_0.x), global1.x)), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), !(!vec4<bool>(true, var_0.x, var_0.x, false)), select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, true, true), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 933f, global0[_wgslsmith_index_u32(4294967295u, 1u)], 112f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 1u)], 347f, -409f, 178f), vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 1u)], global0[_wgslsmith_index_u32(var_1.b, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(8671u, 1u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], -463f, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-186f, global0[_wgslsmith_index_u32(var_1.b, 1u)], global0[_wgslsmith_index_u32(var_1.b, 1u)], -203f), vec4<f32>(1926f, global0[_wgslsmith_index_u32(67087u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(var_1.b, 1u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2181f, -3029f, 102f, 794f)))))));
    global1 = ((firstTrailingBit(vec4<u32>(var_1.b, 0u, var_1.b, 1u) ^ vec4<u32>(global1.x, 0u, var_1.b, 4294967295u)) ^ ~vec4<u32>(40443u, 79144u, 1u, global1.x)) << ((~min(vec4<u32>(1u, 0u, global1.x, u_input.d), vec4<u32>(global1.x, 25329u, 75986u, 1117u)) >> (countOneBits(vec4<u32>(var_1.b, 1u, 32493u, u_input.d)) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<u32>(1u, 1u, 39489u, ~(~firstTrailingBit(1u)));
    global1 = vec4<u32>(1u ^ var_1.b, u_input.c.x, _wgslsmith_clamp_u32(~(u_input.c.x >> (u_input.b % 32u)), ~(u_input.c.x & 4294967295u), 96342u) >> (u_input.d % 32u), 1u);
    let var_3 = vec3<f32>(global0[_wgslsmith_index_u32(u_input.b ^ (u_input.d | ~abs(105060u)), 1u)], _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(201f, _wgslsmith_f_op_f32(abs(var_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(-1484f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_1.b, 1u)])))) + 339f));
    global0 = array<f32, 1>();
    global1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(firstLeadingBit(~vec4<u32>(865u, 53439u, u_input.d, 42696u))), vec4<u32>(~(~1u), abs(u_input.b), ~1u, 20193u), ~max(select(vec4<u32>(global1.x, 77958u, 31796u, global1.x), vec4<u32>(u_input.c.x, global1.x, 0u, u_input.c.x), vec4<bool>(var_1.a.x, var_0.x, var_0.x, var_0.x)), vec4<u32>(1u, 19414u, global1.x, global1.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, global1.x, _wgslsmith_mod_u32(u_input.d, var_1.b), func_3(u_input.a, -31119i, var_0)), select(firstLeadingBit(vec4<u32>(var_1.b, global1.x, 23709u, var_1.b)), ~vec4<u32>(global1.x, 4294967295u, var_1.b, 64640u), select(vec4<bool>(var_1.a.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_1.a.x, false, false), vec4<bool>(var_0.x, false, var_1.a.x, true)))));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -28413i, _wgslsmith_div_vec2_u32((global1.xz ^ vec2<u32>(0u, var_1.b)) >> (~(vec2<u32>(u_input.c.x, 1u) | vec2<u32>(57832u, u_input.d)) % vec2<u32>(32u)), abs(vec2<u32>(global1.x, 28385u)) >> (~(global1.yy ^ vec2<u32>(1u, var_1.b)) % vec2<u32>(32u))));
}

