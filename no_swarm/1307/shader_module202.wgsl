struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5 = Struct_5(false, i32(-2147483648), -1567f);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1i, vec2<u32>(39827u, 0u), -69012i), Struct_1(73302i, vec2<u32>(4294967295u, 0u), 1i), Struct_1(-22928i, vec2<u32>(1u, 4294967295u), 54165i), Struct_1(-16545i, vec2<u32>(1u, 39704u), 0i), Struct_1(2147483647i, vec2<u32>(76442u, 3508u), i32(-2147483648)), Struct_1(1i, vec2<u32>(64810u, 24330u), 1248i), Struct_1(-14615i, vec2<u32>(55512u, 4294967295u), 14663i), Struct_1(-1i, vec2<u32>(16374u, 36087u), 0i), Struct_1(1i, vec2<u32>(0u, 4294967295u), -539i), Struct_1(-1i, vec2<u32>(0u, 4294967295u), i32(-2147483648)), Struct_1(9345i, vec2<u32>(11911u, 43875u), 35812i), Struct_1(-19311i, vec2<u32>(4294967295u, 8287u), i32(-2147483648)), Struct_1(-26827i, vec2<u32>(33530u, 4294967295u), -2415i), Struct_1(2147483647i, vec2<u32>(1u, 9915u), -1i), Struct_1(0i, vec2<u32>(1u, 4294967295u), -22437i), Struct_1(91955i, vec2<u32>(4294967295u, 1u), 0i), Struct_1(7384i, vec2<u32>(32314u, 6368u), 60562i), Struct_1(-7376i, vec2<u32>(0u, 98330u), -44421i), Struct_1(-28650i, vec2<u32>(4294967295u, 0u), 2147483647i), Struct_1(0i, vec2<u32>(4294967295u, 16206u), -1i), Struct_1(50841i, vec2<u32>(34888u, 30728u), 15413i), Struct_1(-19276i, vec2<u32>(0u, 17556u), -17967i), Struct_1(1i, vec2<u32>(4294967295u, 21004u), 34676i), Struct_1(0i, vec2<u32>(29789u, 40707u), 15539i), Struct_1(12884i, vec2<u32>(22541u, 0u), 2147483647i), Struct_1(2147483647i, vec2<u32>(8498u, 4294967295u), -32288i), Struct_1(-32041i, vec2<u32>(1u, 0u), -82335i), Struct_1(8980i, vec2<u32>(14892u, 15542u), 32815i), Struct_1(43004i, vec2<u32>(0u, 22656u), 0i), Struct_1(-18576i, vec2<u32>(40894u, 63059u), -27194i));

var<private> global3: vec2<u32> = vec2<u32>(14878u, 0u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    return arg_3.c;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> bool {
    let var_0 = vec4<i32>(~_wgslsmith_mult_i32(firstTrailingBit(0i), global1.b), 1i, -global1.b << (0u % 32u), global1.b);
    let var_1 = !(reverseBits(_wgslsmith_sub_i32(countOneBits(-1i), global1.b)) != -28228i);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(782f)))))));
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: f32) -> Struct_3 {
    var var_0 = arg_1.a;
    let var_1 = vec2<bool>(u_input.a < 4294967295u, global1.a);
    let var_2 = Struct_3(vec3<bool>(true, select(true, true, var_1.x), func_3(min(vec4<u32>(arg_0, global3.x, u_input.a, global3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, global3.x, 2883u, global3.x), vec4<u32>(4294967295u, u_input.a, 8269u, 0u))), Struct_4(u_input.c.yzw ^ vec3<i32>(global1.b, -34710i, -1i), any(vec4<bool>(arg_1.a, false, global1.a, var_1.x)), func_2(225f, vec2<f32>(-1580f, global1.c), Struct_3(vec3<bool>(true, arg_1.a, global1.a), arg_2, vec2<u32>(4294967295u, arg_0), vec3<bool>(global1.a, false, global1.a), Struct_2(0u, -1i, -2147483647i)), Struct_4(u_input.c.wwz, arg_1.a, Struct_1(37507i, vec2<u32>(arg_0, u_input.a), 1i), Struct_3(vec3<bool>(true, true, arg_1.a), -571f, vec2<u32>(arg_0, 0u), vec3<bool>(arg_1.a, true, false), Struct_2(1u, 2147483647i, u_input.c.x)))), Struct_3(vec3<bool>(arg_1.a, false, arg_1.a), -1359f, vec2<u32>(arg_0, 4294967295u), vec3<bool>(false, true, var_1.x), Struct_2(global3.x, arg_1.b, 2147483647i))))), _wgslsmith_f_op_f32(312f + -1241f), vec2<u32>(_wgslsmith_mult_u32(4294967295u, abs(global3.x)) << (_wgslsmith_dot_vec2_u32(func_2(-755f, vec2<f32>(-1353f, arg_1.c), Struct_3(vec3<bool>(false, var_1.x, global1.a), arg_1.c, vec2<u32>(u_input.b, u_input.a), vec3<bool>(false, global1.a, global1.a), Struct_2(global3.x, arg_1.b, 18904i)), Struct_4(u_input.c.xwx, global1.a, global2[_wgslsmith_index_u32(u_input.a, 30u)], Struct_3(vec3<bool>(var_1.x, global1.a, false), arg_2, vec2<u32>(50886u, 4294967295u), vec3<bool>(var_1.x, arg_1.a, global1.a), Struct_2(45482u, arg_1.b, global1.b)))).b, countOneBits(vec2<u32>(0u, 69109u))) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.b, global3.x)), ~vec2<u32>(63989u, arg_0), _wgslsmith_mod_vec2_u32(vec2<u32>(1628u, u_input.a), vec2<u32>(u_input.b, global3.x))), select(~vec2<u32>(45852u, arg_0), ~vec2<u32>(u_input.b, 80217u), global1.a))), vec3<bool>(false, true, all(vec2<bool>(true, global1.a))), Struct_2(~min(global3.x & global3.x, ~0u), arg_1.b, -(-u_input.c.x & -45308i)));
    global0 = global1.b;
    let var_3 = var_2.e;
    return Struct_3(select(!var_2.d, !vec3<bool>(var_2.d.x, arg_1.a, 1u <= u_input.b), vec3<bool>(!all(var_2.a.zy), !var_1.x, global1.a)), -650f, var_2.c, vec3<bool>(var_2.d.x, global1.a, !(862f >= _wgslsmith_f_op_f32(abs(arg_2)))), var_3);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> bool {
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(!(!vec3<bool>(global1.a, true, global1.a)), select(!(!vec3<bool>(global1.a, true, global1.a)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, global1.a), any(vec4<bool>(true, global1.a, global1.a, global1.a))), func_4(func_1(u_input.b, Struct_5(global1.a, 89425i, -1530f), 496f), ~u_input.a)), !(!(!vec3<bool>(true, global1.a, global1.a)))), global1.c, _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(37127u, 74248u), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global3.x, u_input.a), vec2<bool>(false, true)))), reverseBits(vec2<u32>(u_input.b, u_input.a)) << (~(~vec2<u32>(u_input.a, 28797u)) % vec2<u32>(32u))), vec3<bool>(global1.a, global1.a, any(vec2<bool>(global1.a && global1.a, func_3(vec4<u32>(77341u, 4294967295u, u_input.b, 4294967295u), Struct_4(vec3<i32>(24806i, -62120i, global1.b), false, Struct_1(global1.b, vec2<u32>(u_input.b, global3.x), global1.b), Struct_3(vec3<bool>(global1.a, true, false), 1014f, vec2<u32>(u_input.b, u_input.b), vec3<bool>(global1.a, false, global1.a), Struct_2(19105u, -1i, 8061i))))))), func_1(~(~(~428u)), Struct_5(!global1.a == (global1.a || global1.a), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1147f + global1.c))), 423f).e);
    let var_1 = ~(~66740u);
    let var_2 = func_1(51800u, Struct_5(!any(vec4<bool>(global1.a, var_0.a.x, var_0.a.x, global1.a)), u_input.c.x, global1.c), var_0.b).e;
    let var_3 = var_0.c.x;
    var var_4 = global2[_wgslsmith_index_u32(0u >> (~var_0.c.x % 32u), 30u)];
    let var_5 = var_1;
    var var_6 = ~func_1(abs(~_wgslsmith_mult_u32(var_0.e.a, var_1)), Struct_5(var_0.d.x, _wgslsmith_clamp_i32(var_2.c, 13570i, 12630i) | 5586i, _wgslsmith_f_op_f32(select(-844f, _wgslsmith_f_op_f32(1892f + global1.c), func_1(111838u, Struct_5(true, 31603i, global1.c), -201f).d.x))), var_0.b).e.c;
    var var_7 = func_1(global3.x, Struct_5(var_0.a.x, var_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(201f, _wgslsmith_f_op_f32(-global1.c)), global1.c))), global1.c).e;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.ww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, global1.c, 1264f) * vec3<f32>(-640f, -430f, -793f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.c, -1000f) * vec3<f32>(-494f, var_0.b, 263f))), vec3<f32>(-863f, _wgslsmith_f_op_f32(f32(-1f) * -1188f), global1.c), var_0.d))));
}

