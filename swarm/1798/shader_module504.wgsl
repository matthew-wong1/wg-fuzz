struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, true);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), false, vec3<f32>(-481f, -1000f, 122f), vec2<bool>(false, true));

var<private> global2: array<i32, 1> = array<i32, 1>(1i);

var<private> global3: vec4<bool>;

var<private> global4: array<bool, 12>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    global3 = vec4<bool>(all(!arg_2.d.a), global3.x, any(!vec4<bool>(false, arg_2.e.x | false, global1.c.x == -501f, global0[_wgslsmith_index_u32(u_input.b, 2u)])), arg_0);
    let var_0 = Struct_1(!arg_2.d.a, global4[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.b) ^ u_input.b), 12u)] | (u_input.b >= u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(422f, global1.c.x)), _wgslsmith_f_op_f32(-arg_2.c.x), -1375f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.c.x, global1.c.x, 1126f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, arg_2.a.x, -391f))), select(global3.zyz, select(vec3<bool>(true, true, arg_2.d.a.x), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 2u)]), true), any(vec2<bool>(global1.b, arg_1))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + 392f), global1.c.x, 1000f)), global1.a.zz);
    global0 = array<bool, 2>();
    global1 = Struct_1(select(var_0.a, !vec4<bool>(38610i == global2[_wgslsmith_index_u32(u_input.b, 1u)], false, arg_1, false), select(arg_2.b.a, !vec4<bool>(arg_0, true, arg_1, false), !var_0.a)), true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-249f, var_0.c.x, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(590f + 1916f)))), select(select(arg_2.b.a.wx, !select(vec2<bool>(false, global3.x), vec2<bool>(arg_0, false), arg_1), select(!global1.a.xz, select(arg_2.d.a.xy, vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 12u)], global3.x), true), true)), vec2<bool>(!(!arg_2.b.a.x), all(select(var_0.a, var_0.a, vec4<bool>(global0[_wgslsmith_index_u32(34854u, 2u)], global1.a.x, false, true)))), select(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 2u)])), select(vec2<bool>(true, false), vec2<bool>(false, arg_1), arg_1), var_0.c.x >= 1632f)));
    global0 = array<bool, 2>();
    return global1.c.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> vec4<bool> {
    global0 = array<bool, 2>();
    let var_0 = u_input.a.xxw;
    let var_1 = Struct_1(!select(vec4<bool>(!global0[_wgslsmith_index_u32(0u, 2u)], !global4[_wgslsmith_index_u32(4294967295u, 12u)], var_0.x <= 14594i, !global0[_wgslsmith_index_u32(u_input.b, 2u)]), !arg_0, global4[_wgslsmith_index_u32(u_input.b, 12u)]), any(vec2<bool>(all(vec2<bool>(false, true)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1528f, -386f)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(func_3(!global0[_wgslsmith_index_u32(4294967295u, 2u)], global3.x || false, Struct_2(vec4<f32>(arg_1, -2590f, global1.c.x, -2181f), Struct_1(vec4<bool>(arg_0.x, global1.b, true, false), arg_0.x, vec3<f32>(arg_1, arg_1, -773f), global1.d), vec4<f32>(267f, 625f, global1.c.x, 526f), Struct_1(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 12u)], true, global4[_wgslsmith_index_u32(u_input.b, 12u)], global4[_wgslsmith_index_u32(u_input.b, 12u)]), arg_0.x, global1.c, global3.zx), vec3<bool>(global3.x, true, true)), vec4<i32>(-2147483647i, u_input.a.x, global2[_wgslsmith_index_u32(1u, 1u)], 21063i))), -262f)), vec2<bool>(!(!(!global4[_wgslsmith_index_u32(u_input.b, 12u)])), true));
    return vec4<bool>(!global4[_wgslsmith_index_u32(~abs(92595u), 12u)], any(arg_0.zyz), true, true);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(Struct_1(global1.a, true, global1.c, vec2<bool>(any(vec4<bool>(true, global3.x, global0[_wgslsmith_index_u32(8300u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)])), all(select(global1.a, vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<bool>(false, false, global3.x, false))))));
    var var_1 = vec4<u32>(u_input.b, 4294967295u ^ u_input.b, 1u, 4294967295u);
    var var_2 = any(!select(select(!global1.a, global1.a, func_2(vec4<bool>(false, var_0.a.b, global3.x, true), var_0.a.c.x)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(26768u, 2u)], var_0.a.b, global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<bool>(global1.a.x, true, var_0.a.d.x, false), true), !global1.a));
    return Struct_1(global1.a, !(_wgslsmith_mod_u32(u_input.b, ~30961u) >= 4294967295u), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x))), global1.c), _wgslsmith_f_op_vec3_f32(-global1.c)), vec2<bool>(false, u_input.b == _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 0u, 44147u, 21498u), vec4<u32>(u_input.b, 0u, 72106u, 19830u)), abs(vec4<u32>(0u, u_input.b, u_input.b, 21924u)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_3 {
    global4 = array<bool, 12>();
    global3 = select(vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 12u)], select(abs(49077u), arg_0.x, true) >= _wgslsmith_mult_u32(abs(34579u), u_input.b), arg_3.b.d.x), arg_3.b.a, global1.a);
    var var_0 = arg_3.b;
    global4 = array<bool, 12>();
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(-arg_3.b.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-643f, arg_3.b.c.x) - _wgslsmith_f_op_f32(-arg_3.b.c.x)), -2192f), _wgslsmith_f_op_f32(-arg_1.c.x))));
    return Struct_3(arg_1.a, min(2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(6944i, -21912i)), arg_2.zy), 45395i)), arg_3.c, _wgslsmith_mod_i32(arg_2.x, arg_2.x));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(func_1());
    var_0 = Struct_4(Struct_1(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, global4[_wgslsmith_index_u32(1u, 12u)], true))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.c.x, 785f, var_0.a.c.x)))) + vec3<f32>(-406f, _wgslsmith_f_op_f32(923f - 1803f), 1000f)), !vec2<bool>(var_0.a.b, false)));
    return Struct_1(!select(func_1().a, global1.a, true), ~global2[_wgslsmith_index_u32(~abs(1u), 1u)] > _wgslsmith_sub_i32(-10542i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, global2[_wgslsmith_index_u32(u_input.b, 1u)])), _wgslsmith_f_op_vec3_f32(max(func_4(vec3<u32>(~u_input.b, u_input.b, ~u_input.b), func_4(~vec3<u32>(10081u, u_input.b, u_input.b), func_4(vec3<u32>(39266u, u_input.b, 1u), arg_0, vec4<i32>(arg_0.b, arg_0.b, global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]), Struct_2(arg_0.c, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(24210u, 2u)], global3.x, true, global1.b), global4[_wgslsmith_index_u32(0u, 12u)], vec3<f32>(arg_0.c.x, 188f, -1753f), vec2<bool>(true, global1.b)), vec4<f32>(161f, -1244f, global1.c.x, global1.c.x), arg_0.a, vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 12u)], false))), vec4<i32>(global2[_wgslsmith_index_u32(65659u, 1u)], u_input.a.x, arg_0.b, -1i) ^ u_input.a, Struct_2(arg_0.c, Struct_1(global1.a, true, arg_0.c.yxw, vec2<bool>(true, global1.d.x)), vec4<f32>(-1877f, -168f, global1.c.x, arg_0.a.c.x), arg_0.a, vec3<bool>(global1.a.x, var_0.a.b, false))), firstLeadingBit(firstLeadingBit(u_input.a)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -597f, 954f, global1.c.x) * vec4<f32>(arg_0.a.c.x, -1021f, 384f, arg_0.c.x)), func_1(), arg_0.c, var_0.a, vec3<bool>(false, false, global0[_wgslsmith_index_u32(45863u, 2u)]))).a.c, vec3<f32>(_wgslsmith_div_f32(1f, arg_0.a.c.x), -155f, 179f))), !var_0.a.a.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    var var_1 = Struct_3(func_5(func_4(vec3<u32>(max(u_input.b, u_input.b), u_input.b, _wgslsmith_sub_u32(0u, u_input.b)), Struct_3(Struct_1(global1.a, global0[_wgslsmith_index_u32(33358u, 2u)], vec3<f32>(-957f, -470f, 1416f), global3.wy), 0i, vec4<f32>(global1.c.x, 479f, global1.c.x, -583f), u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 1u)], 2147483647i, u_input.a.x, 26691i), _wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(31967u, 1u)], u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 1u)], u_input.a.x, global2[_wgslsmith_index_u32(u_input.b, 1u)], u_input.a.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1385f, global1.c.x, -629f, global1.c.x)), Struct_1(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], true), global0[_wgslsmith_index_u32(u_input.b, 2u)], vec3<f32>(-113f, 275f, global1.c.x), global3.xz), vec4<f32>(454f, global1.c.x, 837f, 207f), func_1(), select(global1.a.zyw, global3.zzy, vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 12u)], false, false))))), global2[_wgslsmith_index_u32(u_input.b, 1u)], vec4<f32>(229f, _wgslsmith_f_op_f32(func_3(true, false, Struct_2(vec4<f32>(global1.c.x, 1000f, global1.c.x, -1503f), Struct_1(vec4<bool>(global1.d.x, global1.b, true, global0[_wgslsmith_index_u32(19715u, 2u)]), global1.d.x, vec3<f32>(global1.c.x, -927f, 686f), vec2<bool>(global4[_wgslsmith_index_u32(0u, 12u)], false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(763f, global1.c.x, 113f, global1.c.x) - vec4<f32>(1000f, global1.c.x, -821f, global1.c.x)), Struct_1(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 12u)], global4[_wgslsmith_index_u32(38700u, 12u)], global4[_wgslsmith_index_u32(1u, 12u)], global1.a.x), true, vec3<f32>(global1.c.x, global1.c.x, -375f), vec2<bool>(global3.x, false)), !global1.a.wwx), select(u_input.a, reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 1u)], 18513i, -2147483647i, -18625i)), global3.x))), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c.x)) - global1.c.x) - global1.c.x)), -1i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_div_f32(-2445f, func_1().c.x));
    global1 = Struct_1(!func_5(Struct_3(func_5(Struct_3(var_1.a, 2147483647i, vec4<f32>(1670f, global1.c.x, var_1.c.x, -2496f), global2[_wgslsmith_index_u32(u_input.b, 1u)])), var_1.b, _wgslsmith_f_op_vec4_f32(var_1.c - vec4<f32>(global1.c.x, global1.c.x, global1.c.x, var_1.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.b, global2[_wgslsmith_index_u32(24827u, 1u)], var_1.d), u_input.a))).a, true, _wgslsmith_f_op_vec3_f32(min(var_1.a.c, var_1.c.zyy)), func_5(func_4(vec3<u32>(~u_input.b, 1u, ~u_input.b), Struct_3(var_1.a, _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.wz), var_1.c, _wgslsmith_mult_i32(u_input.a.x, -62539i)), vec4<i32>(-global2[_wgslsmith_index_u32(953u, 1u)], reverseBits(0i), select(0i, u_input.a.x, false), u_input.a.x), Struct_2(var_1.c, Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 2u)], var_1.a.b, true), global3.x, global1.c, var_1.a.d), _wgslsmith_div_vec4_f32(vec4<f32>(496f, var_1.c.x, global1.c.x, -407f), var_1.c), var_1.a, vec3<bool>(global3.x, false, global1.a.x)))).d);
    global4 = array<bool, 12>();
    var var_3 = global0[_wgslsmith_index_u32(u_input.b, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(abs(vec3<u32>(64722u, u_input.b, u_input.b))), ~(~vec3<u32>(u_input.b, 19991u, u_input.b))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.b), vec2<u32>(2254u, 47025u)), u_input.b, 2141u) % vec3<u32>(32u)), u_input.a.x, min(~22600u, u_input.b), ~1u | _wgslsmith_mod_u32(~4294967295u, u_input.b));
}

