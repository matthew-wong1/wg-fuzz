struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: Struct_3 = Struct_3(vec4<i32>(1i, i32(-2147483648), 17110i, 24383i), vec2<f32>(309f, 726f));

var<private> global3: array<u32, 14> = array<u32, 14>(62234u, 41495u, 1893u, 4294967295u, 32733u, 0u, 4294967295u, 20015u, 31319u, 41267u, 4294967295u, 1u, 0u, 1u);

var<private> global4: array<u32, 10> = array<u32, 10>(0u, 6985u, 3923u, 56677u, 1u, 144553u, 1u, 4294967295u, 0u, 103004u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), arg_1.a));
    global3 = array<u32, 14>();
    let var_1 = u_input.b.yy;
    global0 = array<u32, 15>();
    var var_2 = global2.a.wxx;
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = max(_wgslsmith_sub_u32(func_2(~1u, arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1664f, arg_2, arg_0.a.a), vec3<f32>(323f, 1111f, arg_2))))).b, max(_wgslsmith_div_u32(u_input.b.x, u_input.a), arg_0.a.b) << (((u_input.b.x >> (1u % 32u)) & 2368u) % 32u)), _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(1u, 28700u)));
    var var_1 = func_2(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~firstTrailingBit(~11034u) << (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(select(min(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(64967u, 10u)], 15u)], u_input.b.x), var_0, any(global1.xzx)), 14u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14399u, var_0, 43892u), ~vec4<u32>(global3[_wgslsmith_index_u32(arg_0.c.x, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)], 1u, global3[_wgslsmith_index_u32(7963u, 14u)]))) % 32u), 10u)], 15u)], arg_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(round(-313f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.b.x, 774f, true)), _wgslsmith_f_op_f32(global2.b.x * -1904f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_3.b.x, 743f), 147f, _wgslsmith_f_op_f32(-arg_0.a.a)))));
    var var_2 = vec4<u32>(4294967295u, var_1.b, ~46120u, 0u);
    global0 = array<u32, 15>();
    var var_3 = reverseBits(i32(-1i) * -1i);
    return countOneBits(~min(_wgslsmith_clamp_u32(33381u, 0u, 9879u), _wgslsmith_add_u32(53653u, global0[_wgslsmith_index_u32(1u, 15u)])) >> (4294967295u % 32u));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> f32 {
    global0 = array<u32, 15>();
    var var_0 = vec2<u32>(reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.b.x, 15u)] | 1u, ~1u, arg_2.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(44563u, global0[_wgslsmith_index_u32(58652u, 15u)], global4[_wgslsmith_index_u32(arg_2.x, 10u)], 11526u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 37199u, 7028u, 1u), vec4<u32>(76164u, 4294967295u, u_input.a, 40054u)))), 14u)]), ~_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(1u, 14u)])), vec2<u32>(4294967295u, 2968u) << (~vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 10u)], u_input.b.x) % vec2<u32>(32u))));
    global2 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, abs(3627i), -1i, -63823i), -(abs(vec4<i32>(global2.a.x, arg_3.x, u_input.c.x, -7246i)) << (firstLeadingBit(vec4<u32>(47977u, 4294967295u, u_input.b.x, 19546u)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1))));
    var var_1 = global1.zyy;
    var_1 = vec3<bool>(!(!global1.x), false | !(!any(vec2<bool>(false, var_1.x))), _wgslsmith_f_op_f32(-global2.b.x) == _wgslsmith_div_f32(func_2(_wgslsmith_add_u32(17172u, 0u), func_2(u_input.b.x, Struct_1(-1458f, global4[_wgslsmith_index_u32(5403u, 10u)], false), vec3<f32>(global2.b.x, 109f, -1319f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, global2.b.x, arg_1.x))).a, global2.b.x));
    return arg_1.x;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(max(func_3(Struct_2(func_2(1u, Struct_1(1201f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 14u)], 10u)], false), vec3<f32>(706f, -2332f, global2.b.x)), vec2<bool>(global1.x, false), ~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(arg_0.x, 15u)], global4[_wgslsmith_index_u32(68579u, 10u)], u_input.b.x)), true, _wgslsmith_f_op_f32(global2.b.x - 410f), Struct_3(min(vec4<i32>(29637i, global2.a.x, 2147483647i, global2.a.x), u_input.c), global2.b)), ~(~global0[_wgslsmith_index_u32(1u, 15u)])), 14u)], vec2<f32>(_wgslsmith_f_op_f32(floor(global2.b.x)), _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_add_vec2_u32(select(reverseBits(vec2<u32>(4294967295u, 58391u)), select(abs(vec2<u32>(0u, arg_0.x)), ~u_input.b.zz, all(vec3<bool>(global1.x, global1.x, true))), select(!global1.xw, select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), global1.zz), u_input.d < -4369i)), reverseBits(~(~vec2<u32>(4294967295u, 18361u)))), _wgslsmith_div_vec2_i32(-(~(vec2<i32>(u_input.d, -1i) << (vec2<u32>(52070u, 0u) % vec2<u32>(32u)))), vec2<i32>(firstTrailingBit(u_input.c.x), u_input.c.x))));
    global3 = array<u32, 14>();
    global1 = vec4<bool>(global1.x, !((global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(reverseBits(4294967295u), 10u)], 10u)] >> (global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(arg_0.x, 14u)], 15u)] % 32u)) != _wgslsmith_add_u32(func_2(arg_0.x, Struct_1(-652f, 4294967295u, global1.x), vec3<f32>(464f, -377f, var_0)).b, global3[_wgslsmith_index_u32(4294967295u, 14u)] & arg_0.x)), false, all(global1.xw));
    var var_1 = Struct_2(func_2(~22261u, Struct_1(_wgslsmith_f_op_f32(-global2.b.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 4294967295u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 15u)], 1u, 1u, 6566u), vec4<u32>(global0[_wgslsmith_index_u32(1823u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(143u, 10u)], 15u)], 10u)], 15u)], 15u)], u_input.b.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 14u)], 15u)])) % 32u), 15u)], all(global1.yw)), vec3<f32>(1148f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.b.x, 456f)), var_0), var_0)), global1.xx, _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(0u), _wgslsmith_mult_u32(31505u, 8429u) << (global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(arg_0.x, 14u)], 14u)] % 32u), ~35664u & u_input.a, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.x, global4[_wgslsmith_index_u32(0u, 10u)]), global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 10u)], global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(102953u, 14u)], 10u)])), abs(countOneBits(~vec4<u32>(0u, arg_0.x, 14974u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)])))));
    let var_2 = Struct_2(func_2((firstLeadingBit(15258u) ^ _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(41576u, 10u)], 25423u)) >> (~abs(1u) % 32u), func_2(54392u, func_2(u_input.a, Struct_1(858f, global4[_wgslsmith_index_u32(28590u, 10u)], var_1.a.c), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, -1293f, var_1.a.a), vec3<f32>(var_1.a.a, var_0, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(185f, 1511f, var_1.a.a))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.b.x, 433f, global2.b.x), vec3<f32>(-1153f, var_1.a.a, -808f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, -1053f, var_0) + vec3<f32>(var_1.a.a, 2326f, var_1.a.a)))))), vec2<bool>(!func_2(_wgslsmith_dot_vec3_u32(var_1.c.xxy, u_input.b), Struct_1(var_1.a.a, var_1.c.x, var_1.b.x), vec3<f32>(845f, -162f, var_0)).c, !(_wgslsmith_mod_u32(1u, 1u) < ~global4[_wgslsmith_index_u32(50117u, 10u)])), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(3062u, _wgslsmith_add_u32(4294967295u, u_input.b.x), firstLeadingBit(16236u), 1u)), vec4<u32>(arg_0.x, abs(abs(var_1.c.x)), u_input.b.x, 1u), max(var_1.c, ~vec4<u32>(7578u, global4[_wgslsmith_index_u32(6473u, 10u)], global4[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(var_1.c.x, 14u)]) >> (~vec4<u32>(0u, u_input.b.x, 19177u, 27021u) % vec4<u32>(32u)))));
    return -403f;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    global4 = array<u32, 10>();
    global2 = Struct_3(vec4<i32>(abs(~_wgslsmith_dot_vec3_i32(global2.a.xwx, vec3<i32>(2147483647i, -1i, 11871i))), u_input.d, _wgslsmith_clamp_i32(u_input.c.x, -16151i, -2147483647i), ~3245i), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) + _wgslsmith_f_op_f32(global2.b.x + -179f)), arg_1.a.a)), global2.b.x));
    global1 = select(!vec4<bool>(any(!vec2<bool>(global1.x, global1.x)), !any(global1.xy), arg_1.b.x, -6591i < global2.a.x), select(select(vec4<bool>(any(global1.yxx), all(arg_1.b), func_2(u_input.b.x, Struct_1(global2.b.x, 20411u, true), arg_0).c, select(true, global1.x, false)), !select(vec4<bool>(false, arg_1.a.c, arg_1.b.x, arg_1.a.c), vec4<bool>(arg_1.b.x, arg_1.b.x, false, global1.x), vec4<bool>(global1.x, arg_1.a.c, false, global1.x)), true), vec4<bool>(!(global1.x || global1.x), _wgslsmith_f_op_f32(step(arg_0.x, -990f)) != 719f, all(!vec4<bool>(false, true, arg_1.b.x, global1.x)), true), !any(global1.yzx)), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 15u)] > 106416u, 642f < arg_1.a.a, all(global1.xyw)), vec4<bool>(!global1.x, any(vec4<bool>(global1.x, arg_1.b.x, arg_1.b.x, true)), func_2(u_input.a, Struct_1(global2.b.x, arg_1.a.b, arg_1.a.c), vec3<f32>(-423f, arg_0.x, arg_0.x)).c, arg_1.a.b == global0[_wgslsmith_index_u32(15163u, 15u)]), false), !(!select(vec4<bool>(global1.x, arg_1.a.c, false, arg_1.b.x), vec4<bool>(arg_1.b.x, global1.x, global1.x, false), vec4<bool>(arg_1.a.c, global1.x, global1.x, arg_1.b.x))), !(_wgslsmith_f_op_f32(trunc(-1726f)) < _wgslsmith_div_f32(1940f, 1848f))));
    let var_0 = !vec2<bool>(arg_1.a.c, !arg_1.b.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(arg_0.x)), ~(~4294967295u), true);
    return _wgslsmith_sub_i32(select(_wgslsmith_dot_vec3_i32(~vec3<i32>(31219i, -6123i, -12413i), vec3<i32>(-1i) * -vec3<i32>(global2.a.x, global2.a.x, -40045i)), ~(-2147483647i), true), global2.a.x << (global0[_wgslsmith_index_u32(4294967295u, 15u)] % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c.yz, global2.a.zz), ~u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1980f - _wgslsmith_f_op_f32(round(global2.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * 1259f))))));
    var var_2 = global1.x;
    let var_3 = 1u;
    var var_4 = vec3<i32>(var_0, firstTrailingBit(0i), func_5(vec3<f32>(_wgslsmith_f_op_f32(ceil(global2.b.x)), 1745f, _wgslsmith_f_op_f32(func_1(~vec2<u32>(u_input.b.x, u_input.a)))), Struct_2(func_2(var_3, func_2(0u, Struct_1(1315f, 1u, true), vec3<f32>(-428f, -237f, 1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(210f, global2.b.x, global2.b.x)))), !select(vec2<bool>(false, global1.x), global1.wz, vec2<bool>(false, true)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_3, 4294967295u, 34905u), vec4<u32>(global4[_wgslsmith_index_u32(54813u, 10u)], global4[_wgslsmith_index_u32(1u, 10u)], 0u, 4294967295u)))));
    var_2 = !(!(!global1.x));
    let var_5 = global1.x;
    let var_6 = Struct_2(Struct_1(-720f, global4[_wgslsmith_index_u32(u_input.b.x, 10u)], all(select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, false, global1.x, global1.x), global1.x))), global1.wz, ~countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u) | (vec4<u32>(var_3, 4294967295u, 20906u, global0[_wgslsmith_index_u32(53884u, 15u)]) & vec4<u32>(u_input.a, var_3, var_3, u_input.a))));
    let var_7 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_6.a.a), 296f, _wgslsmith_f_op_f32(-1852f - var_6.a.a))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b.x - 1000f), _wgslsmith_f_op_f32(func_1(u_input.b.yx)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(var_3, 15u)], var_6.a.b), _wgslsmith_div_vec2_u32(vec2<u32>(var_3, u_input.a), vec2<u32>(global3[_wgslsmith_index_u32(61744u, 14u)], 0u))), true), select(select(!global1.zx, !global1.wy, !global1.x), var_6.b, var_6.b), ~var_6.c));
    let x = u_input.a;
    s_output = StorageBuffer(37830u, _wgslsmith_f_op_f32(global2.b.x + global2.b.x), ~abs(_wgslsmith_div_vec3_u32(var_6.c.xzz, u_input.b)), abs(_wgslsmith_mult_i32(u_input.d, global2.a.x)));
}

