struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, false, true, true, false, false, false, false, true, true, false, true, false, false);

var<private> global1: array<f32, 26>;

var<private> global2: array<vec4<bool>, 27>;

var<private> global3: array<vec4<u32>, 32>;

var<private> global4: vec4<bool>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    let var_0 = min(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(56804u, 19507u), vec2<u32>(1u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(22502u, 22357u), vec2<u32>(74031u, 0u), vec2<u32>(58979u, 4294967295u))), (~3189u & _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(52695u, 32u)], global3[_wgslsmith_index_u32(79403u, 32u)])) ^ ~(~6197u)) >= ~_wgslsmith_clamp_u32(~4294967295u, abs(70239u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4751u, 1u, 63854u), vec4<u32>(88711u, 4294967295u, 4294967295u, 0u)) % 32u), 16u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_3.zwz)));
    global4 = !vec4<bool>(true, all(select(!vec2<bool>(true, global4.x), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)]), select(vec2<bool>(false, false), vec2<bool>(true, var_0), false))), var_0 && any(vec3<bool>(false, global0[_wgslsmith_index_u32(4830u, 15u)], false)), select(true, true, ~u_input.a <= 2147483647i));
    global0 = array<bool, 15>();
    var var_2 = Struct_3(abs(0u), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), 1858f, global1[_wgslsmith_index_u32(abs(24393u), 26u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2742f, -442f)), _wgslsmith_f_op_f32(sign(-415f)))), arg_0.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_2)), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), arg_2)))), _wgslsmith_div_vec3_u32(abs(max(~vec3<u32>(29823u, 4294967295u, 67831u), vec3<u32>(1u, 1u, 1u))), ~vec3<u32>(reverseBits(8827u), 104648u, 83176u)), -_wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(arg_0.b.x, 33414i, 2147483647i, u_input.a)), -vec4<i32>(arg_0.b.x, 17115i, 0i, arg_0.b.x), vec4<i32>(arg_0.b.x << (1u % 32u), -2147483647i >> (1u % 32u), arg_0.b.x, arg_0.b.x)));
    return u_input.a;
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> vec3<bool> {
    var var_0 = -vec4<i32>(func_3(arg_0.b, !vec3<bool>(global4.x, true, global4.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, arg_0.c.x), arg_0.c.xx), 26u)], arg_0.b.a), ~min(u_input.a & 38312i, 2147483647i), arg_0.b.b.x, countOneBits(-2147483647i));
    var var_1 = 73532u;
    global2 = array<vec4<bool>, 27>();
    var var_2 = arg_0;
    var var_3 = ~1u;
    return vec3<bool>(!(~_wgslsmith_mult_u32(51705u, arg_0.c.x) <= 1u), all(global4.wx), !all(global4.xx));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = any(global4.xzy) && any(select(vec3<bool>(!global0[_wgslsmith_index_u32(arg_2.x, 15u)], all(vec4<bool>(global4.x, true, true, false)), all(vec2<bool>(arg_0.c, arg_0.c))), vec3<bool>(select(true, true, arg_0.d.x), false, global4.x && global4.x), select(select(global4.wzy, arg_0.d, global4.x), !vec3<bool>(true, arg_1, false), all(arg_0.d.zy))));
    let var_1 = arg_0.d;
    global0 = array<bool, 15>();
    global4 = !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(~arg_2.zxx, select(vec3<u32>(arg_2.x, arg_2.x, 0u), arg_2.xzx, vec3<bool>(false, true, false))), vec3<u32>(reverseBits(countOneBits(7821u)), 1u, ~(~arg_2.x))), 27u)];
    var_0 = !(!arg_1);
    return Struct_3(57346u, Struct_1(vec4<f32>(1620f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 26u)])), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.x, arg_2.x, arg_2.x), 26u)]), -1542f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.x, 26u)]), -1344f, !global0[_wgslsmith_index_u32(arg_2.x, 15u)]))), arg_0.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.a.zz)))), vec3<u32>(0u, 515u, 30705u), firstTrailingBit(vec4<i32>(arg_0.a.b.x, 1i, countOneBits(u_input.a), abs(u_input.a))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global3 = array<vec4<u32>, 32>();
    var var_0 = 70728u;
    global4 = global2[_wgslsmith_index_u32(firstTrailingBit(~firstTrailingBit(~4294967295u)), 27u)];
    let var_1 = Struct_1(arg_2.a.a, abs(arg_2.a.b) & -vec3<i32>(22252i, _wgslsmith_mod_i32(arg_0.b.b.x, 42200i), 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.a.c, _wgslsmith_f_op_vec2_f32(min(arg_0.b.c, arg_2.e.wz)))) * vec2<f32>(-196f, global1[_wgslsmith_index_u32(abs(~16646u), 26u)])));
    let var_2 = true;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), arg_0.b.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.a.x, 484f), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.a.x - 612f), _wgslsmith_f_op_f32(f32(-1f) * -1242f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-886f, global1[_wgslsmith_index_u32(arg_0.c.x, 26u)]))))))));
}

fn func_1() -> Struct_2 {
    var var_0 = global4.x;
    var var_1 = Struct_3(min(4294967295u, ~1u), func_5(func_4(Struct_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(17102u, 26u)], global1[_wgslsmith_index_u32(1016u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], 2075f), vec3<i32>(5076i, u_input.a, 0i), vec2<f32>(global1[_wgslsmith_index_u32(0u, 26u)], -315f)), global4.x, true, func_2(Struct_3(29393u, Struct_1(vec4<f32>(-1000f, 1427f, global1[_wgslsmith_index_u32(1240u, 26u)], global1[_wgslsmith_index_u32(4604u, 26u)]), vec3<i32>(-81600i, -14566i, -1894i), vec2<f32>(-1806f, 439f)), vec3<u32>(37325u, 0u, 41238u), vec4<i32>(-23528i, u_input.a, u_input.a, 1i)), -2014f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(808f, global1[_wgslsmith_index_u32(1u, 26u)], 650f, -1949f))), all(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(51448u, 24072u), 27u)]), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(99752u, 32u)], global3[_wgslsmith_index_u32(93359u, 32u)]), 32u)]), 57949u, Struct_2(func_4(Struct_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(29166u, 26u)], global1[_wgslsmith_index_u32(8677u, 26u)], -992f), vec3<i32>(u_input.a, 67007i, 2147483647i), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])), global4.x, true, global4.xxz, vec4<f32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(66099u, 26u)], global1[_wgslsmith_index_u32(9542u, 26u)], 1242f)), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 15u)], global3[_wgslsmith_index_u32(~42070u, 32u)]).b, !(true && global0[_wgslsmith_index_u32(1u, 15u)]), global4.x, select(vec3<bool>(true, global4.x, global4.x), !vec3<bool>(true, false, global4.x), global4.xyx), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, -486f, global1[_wgslsmith_index_u32(45488u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-892f, global1[_wgslsmith_index_u32(8050u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(38781u, 26u)]))), true)))), ~vec3<u32>(1u, firstTrailingBit(~4294967295u), ~1u), -(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) & vec4<i32>(0i, u_input.a, u_input.a, -2147483647i)) | -vec4<i32>(-31945i, -1i, 1i, 26842i));
    var_0 = false;
    var var_2 = func_4(Struct_2(var_1.b, global0[_wgslsmith_index_u32(~var_1.c.x, 15u)], !(global0[_wgslsmith_index_u32(var_1.a, 15u)] && global4.x), global4.wyx, _wgslsmith_f_op_vec4_f32(-var_1.b.a)), global0[_wgslsmith_index_u32(var_1.a, 15u)], select(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(var_1.c.x, 8683u), countOneBits(41389u)), 32u)], vec4<u32>(var_1.a, _wgslsmith_dot_vec3_u32(var_1.c ^ vec3<u32>(var_1.a, var_1.a, var_1.c.x), var_1.c), _wgslsmith_mult_u32(~var_1.c.x, 0u << (var_1.a % 32u)), _wgslsmith_dot_vec2_u32(var_1.c.xz, _wgslsmith_add_vec2_u32(var_1.c.xz, var_1.c.xy))), !(!select(global2[_wgslsmith_index_u32(var_1.c.x, 27u)], vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], false, false), false))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.x, _wgslsmith_f_op_f32(min(-1665f, -564f)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 26u)], var_1.b.a.x)))), var_2.b.a.zww));
    return Struct_2(var_1.b, all(global4.yy), global4.x, func_2(func_4(Struct_2(func_4(Struct_2(var_2.b, true, global0[_wgslsmith_index_u32(var_1.a, 15u)], global4.yzy, var_1.b.a), global0[_wgslsmith_index_u32(var_2.a, 15u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]).b, false, global0[_wgslsmith_index_u32(firstLeadingBit(97920u), 15u)], global4.yxw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 848f, var_2.b.c.x, 1231f))), true, vec4<u32>(countOneBits(var_2.c.x), 14103u ^ var_1.a, _wgslsmith_mult_u32(0u, 46257u), var_1.c.x)), var_1.b.c.x), var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~max(vec3<u32>(5353u, _wgslsmith_div_u32(1u, 1u), 11669u), abs(select(~vec3<u32>(0u, 22902u, 1u), ~vec3<u32>(0u, 42971u, 0u), true == global4.x)));
    let var_2 = Struct_4(func_1(), vec2<i32>(7164i, u_input.a));
    let var_3 = var_0.c;
    global1 = array<f32, 26>();
    var var_4 = !((~(var_2.b.x << (1u % 32u)) >= ~(-1i << (var_1.x % 32u))) | false);
    var var_5 = func_3(var_0.a, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1170f, -1000f, var_2.a.e.x, 734f)) + vec4<f32>(1312f, 131f, var_0.a.a.x, global1[_wgslsmith_index_u32(16154u, 26u)])))));
    let var_6 = var_2.a.d.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_1.x & ~var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 26u)])))), global1[_wgslsmith_index_u32(select(~0u, ~var_1.x & var_1.x, var_0.c), 26u)], var_0.a.c.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.a.c.x, var_2.a.a.a.x, true))), 585f, 1f))));
}

