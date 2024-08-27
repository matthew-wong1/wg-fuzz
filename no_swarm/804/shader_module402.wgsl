struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: vec3<i32> = vec3<i32>(54005i, 44587i, -1i);

var<private> global2: array<bool, 17> = array<bool, 17>(false, false, false, true, true, false, true, false, false, false, false, true, true, true, false, true, false);

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(78491u, vec3<i32>(-52101i, 1i, -4391i), vec3<i32>(68188i, 26658i, 32730i), vec2<i32>(0i, -73450i)), Struct_1(12239u, vec3<i32>(0i, 1i, 15848i), vec3<i32>(70321i, 7147i, -18158i), vec2<i32>(2147483647i, -27705i)), Struct_1(21737u, vec3<i32>(0i, -6560i, 61690i), vec3<i32>(15094i, 1482i, 1i), vec2<i32>(-31913i, -1i)), Struct_1(4294967295u, vec3<i32>(1i, 0i, 4361i), vec3<i32>(27623i, i32(-2147483648), -33527i), vec2<i32>(16186i, 1i)), Struct_1(42063u, vec3<i32>(0i, 0i, 1i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec2<i32>(i32(-2147483648), -5511i)), Struct_1(13401u, vec3<i32>(11754i, 24535i, 1i), vec3<i32>(37754i, -22244i, 12176i), vec2<i32>(88369i, -23887i)), Struct_1(4294967295u, vec3<i32>(-19879i, -14687i, 1i), vec3<i32>(-15290i, 0i, 2147483647i), vec2<i32>(2147483647i, 2147483647i)), Struct_1(1u, vec3<i32>(-1i, 39268i, 2147483647i), vec3<i32>(-15277i, -2911i, i32(-2147483648)), vec2<i32>(1i, 15741i)), Struct_1(55244u, vec3<i32>(11053i, i32(-2147483648), -16830i), vec3<i32>(-1i, -3771i, i32(-2147483648)), vec2<i32>(56458i, 2147483647i)), Struct_1(1u, vec3<i32>(-13858i, -12413i, 52302i), vec3<i32>(-10466i, 0i, -13389i), vec2<i32>(-24423i, 27282i)), Struct_1(33294u, vec3<i32>(23825i, -34058i, 22957i), vec3<i32>(18992i, 0i, i32(-2147483648)), vec2<i32>(-1i, 1i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    global1 = ~_wgslsmith_sub_vec3_i32(~(~(-vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 9u)], -1i))), reverseBits(u_input.a) & u_input.a);
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2166f, -562f, -1407f)), vec3<f32>(1000f, -599f, -145f), true)))), ~u_input.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b, u_input.b, select(98322u, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 17u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b) | vec4<u32>(32327u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, u_input.b, 1u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 22580u), vec2<u32>(u_input.b, 18604u)), _wgslsmith_dot_vec2_u32(vec2<u32>(50872u, u_input.b), vec2<u32>(u_input.b, 26399u)), _wgslsmith_add_u32(0u, u_input.b), countOneBits(25507u)) ^ (select(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(81794u, 37046u, 4294967295u, 19370u), global2[_wgslsmith_index_u32(0u, 17u)]) << (~vec4<u32>(4294967295u, u_input.b, u_input.b, 1u) % vec4<u32>(32u)))), 11u)], _wgslsmith_sub_i32(abs(0i ^ global0[_wgslsmith_index_u32(~u_input.b, 9u)]), -(~_wgslsmith_div_i32(29678i, global1.x))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, abs(u_input.b)), ~_wgslsmith_clamp_u32(1u, 0u, 9026u), _wgslsmith_dot_vec4_u32(~vec4<u32>(42534u, u_input.b, u_input.b, 4294967295u), ~vec4<u32>(1u, u_input.b, u_input.b, 43843u))), u_input.a, u_input.a, vec2<i32>(~(~2147483647i), u_input.a.x)));
    let var_1 = var_0.c;
    global0 = array<i32, 9>();
    let var_2 = reverseBits(~(~vec2<u32>(120497u, ~var_1.a)));
    return var_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1308f * _wgslsmith_f_op_f32(f32(-1f) * -397f)) + _wgslsmith_f_op_f32(f32(-1f) * -165f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-107f, _wgslsmith_f_op_f32(step(-1000f, 1000f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(620f, 622f))), _wgslsmith_div_f32(-452f, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~1u, u_input.b, u_input.b), select(vec3<u32>(u_input.b, ~u_input.b, 72702u), select(vec3<u32>(22077u, 1329u, arg_0.a), _wgslsmith_add_vec3_u32(vec3<u32>(51532u, arg_0.a, arg_0.a), vec3<u32>(u_input.b, 0u, arg_0.a)), !vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.a, 17u)], true)), select(select(vec3<bool>(arg_1, true, true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]), vec3<bool>(true, arg_1, false)), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 17u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(1u, 4294967295u)), 17u)]))), Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, 63683u, 4294967295u)), ~abs(vec4<u32>(21610u, arg_0.a, 40261u, arg_0.a))), select(~vec3<i32>(53835i, 17700i, -44059i), ~vec3<i32>(-48171i, u_input.a.x, arg_0.b.x), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 17u)], true, global2[_wgslsmith_index_u32(u_input.b, 17u)]), vec3<bool>(false, arg_1, false), vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], true, global2[_wgslsmith_index_u32(u_input.b, 17u)]))) << (~vec3<u32>(10357u, 45599u, u_input.b) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(~0i, max(global0[_wgslsmith_index_u32(28646u, 9u)], -30017i)), 42803i, _wgslsmith_dot_vec2_i32(arg_0.b.yx, firstTrailingBit(u_input.a.zy))), vec2<i32>(-arg_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -15734i, -1i, 8738i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], -3811i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 9u)])))), 2147483647i, Struct_1(4294967295u, arg_0.b, firstTrailingBit(vec3<i32>(1i, -global1.x, u_input.a.x)), -u_input.a.yy));
    let var_1 = select(!vec2<bool>(any(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 17u)], false, arg_1), vec3<bool>(arg_1, false, global2[_wgslsmith_index_u32(arg_0.a, 17u)]))), select(111894u == arg_0.a, any(vec3<bool>(arg_1, true, global2[_wgslsmith_index_u32(110742u, 17u)])), arg_1)), vec2<bool>(any(vec3<bool>(true, 20094u > arg_0.a, any(vec2<bool>(true, true)))), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0.c.a, _wgslsmith_div_u32(arg_0.a, 21084u), ~82338u), 17u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.b, 0u) << (~vec3<u32>(25880u, 0u, 0u) % vec3<u32>(32u)), ~abs(vec3<u32>(arg_0.a, var_0.c.a, u_input.b))) == _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~var_0.c.a, arg_0.a >> (4294967295u % 32u)), 18105u, 1u));
    global2 = array<bool, 17>();
    global1 = arg_0.c;
    var var_2 = vec3<i32>(7215i, -(-1i & global0[_wgslsmith_index_u32(u_input.b, 9u)]) & _wgslsmith_mod_i32(abs(global0[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_0.b, 9u)], u_input.a.x, u_input.a.x)), select(global0[_wgslsmith_index_u32(57005u, 9u)], arg_0.d.x << (~arg_0.a % 32u), arg_1)) >> (~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0.a, u_input.b), 14729u & var_0.c.a, u_input.b), firstLeadingBit(var_0.c.a), u_input.b) % vec3<u32>(32u));
    return arg_0.a;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global3 = array<Struct_1, 11>();
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    global1 = vec3<i32>(min(u_input.a.x, _wgslsmith_clamp_i32(~88337i << (u_input.b % 32u), ~2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, u_input.b, 18484u, u_input.b), vec4<u32>(arg_0.e.a, 94479u, 4294967295u, 0u)), 9u)] << (0u % 32u))), -11202i, 11499i);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, 748f, arg_0.a.x, arg_0.a.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1410f, arg_0.a.x, 551f, -2736f), vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -469f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-145f, arg_0.a.x, -3131f, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, -586f, 770f, arg_0.a.x))))), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 17u)], false, global2[_wgslsmith_index_u32(27138u, 17u)])))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(524f, arg_0.a.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-214f, arg_0.a.x, arg_0.a.x, arg_0.a.x))), true)))));
    return Struct_1(countOneBits(~(~u_input.b)), ~(-abs(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_0.e.b.x, 75087i), u_input.a))), -select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 13169i, 0i) >> (vec3<u32>(arg_0.c.a, 4294967295u, 46312u) % vec3<u32>(32u)), u_input.a), arg_0.e.c, select(global2[_wgslsmith_index_u32(min(u_input.b, 1u), 17u)], global2[_wgslsmith_index_u32(func_2(Struct_1(arg_0.b, arg_0.c.c, arg_0.c.b, u_input.a.xy), global2[_wgslsmith_index_u32(55192u, 17u)]), 17u)], all(vec3<bool>(false, true, true)))), -(~u_input.a.yx));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    global3 = array<Struct_1, 11>();
    global3 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) * _wgslsmith_f_op_f32(f32(-1f) * -372f));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), var_0)))), 1748u, func_4(Struct_2(vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -280f)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 24233u, u_input.b, 1u), vec4<u32>(u_input.b, 1u, u_input.b, 1u))), arg_0, -1i, Struct_1(func_2(Struct_1(42502u, u_input.a, vec3<i32>(0i, 2147483647i, arg_0.b.x), global1.zy), true), vec3<i32>(arg_0.b.x, arg_0.c.x, -32071i) << (vec3<u32>(arg_0.a, arg_0.a, 4294967295u) % vec3<u32>(32u)), arg_0.b, _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, global0[_wgslsmith_index_u32(96286u, 9u)]), u_input.a.zx)))), abs(-global1.x >> (u_input.b % 32u)), arg_0);
    global0 = array<i32, 9>();
    return _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(min(1823f, var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global1.x;
    global0 = array<i32, 9>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(1u, 11u)], vec2<bool>(global2[_wgslsmith_index_u32(~58841u, 17u)], !global2[_wgslsmith_index_u32(10225u, 17u)]))), -169f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1563f))))), u_input.b, global3[_wgslsmith_index_u32(7816u, 11u)], 1i, Struct_1(~(~u_input.b), _wgslsmith_sub_vec3_i32(-(vec3<i32>(u_input.a.x, -81494i, 46398i) & u_input.a), vec3<i32>(-u_input.a.x, -global1.x, firstLeadingBit(u_input.a.x))), u_input.a, min(~vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 9u)]), _wgslsmith_clamp_vec2_i32(global1.xy, global1.xx, u_input.a.yx)) << (~countOneBits(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))));
    var var_2 = !(!global2[_wgslsmith_index_u32(u_input.b, 17u)]);
    var var_3 = Struct_1(_wgslsmith_mult_u32(~(~u_input.b & 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.a, var_1.b << (1u % 32u), u_input.b), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, var_1.c.a, 5497u), vec3<u32>(13100u, u_input.b, var_1.c.a)))), u_input.a, u_input.a, ~_wgslsmith_mod_vec2_i32(~var_1.e.c.yz, max(abs(vec2<i32>(global1.x, var_1.d)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -25421i), vec2<i32>(2147483647i, 21497i)))));
    var var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x, 26559u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1335f, -411f) * vec2<f32>(152f, 1241f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(min(var_1.a.xz, vec2<f32>(var_1.a.x, 405f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -1000f) + _wgslsmith_f_op_f32(-var_1.a.x)) + _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(min(-316f, 534f))))));
}

