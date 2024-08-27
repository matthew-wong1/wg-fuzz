struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(8737u, vec2<f32>(1165f, 2297f), vec2<bool>(false, true), false, vec4<u32>(11769u, 13616u, 1u, 4294967295u)), vec3<f32>(145f, 569f, -1176f), Struct_1(2910u, vec2<f32>(718f, -889f), vec2<bool>(true, true), true, vec4<u32>(4294967295u, 286u, 0u, 49940u)));

var<private> global1: array<bool, 19>;

var<private> global2: array<u32, 22>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = false;
    global2 = array<u32, 22>();
    global2 = array<u32, 22>();
    var var_1 = global0.c.e;
    let var_2 = true && ((global0.a.d || any(!vec4<bool>(var_0, true, var_0, global0.c.d))) | true);
    return _wgslsmith_f_op_vec3_f32(arg_0.d.b - arg_1.b);
}

fn func_2() -> bool {
    var var_0 = global0.a.b.x;
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(6814u, ~max(0u, _wgslsmith_sub_u32(u_input.a.x, 1u))), _wgslsmith_div_vec2_u32(~global0.c.e.zx, abs(~_wgslsmith_mod_vec2_u32(u_input.a, global0.c.e.xx))));
    global0 = Struct_2(global0.c, _wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -556f), ~(~var_1.x), false, Struct_2(Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61693u, 22u)], 22u)], vec2<f32>(-494f, 107f), vec2<bool>(true, true), true, global0.a.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-823f, global0.a.b.x, global0.c.b.x)), global0.a)), Struct_2(Struct_1(16977u & u_input.a.x, global0.b.zz, vec2<bool>(true, global0.c.c.x), global0.c.c.x, global0.a.e | vec4<u32>(var_1.x, 4294967295u, var_1.x, 1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, 263f)), global0.c))), global0.a);
    let var_2 = Struct_4(select(!vec2<bool>(global0.a.d, true), global0.c.c, select(select(!global0.c.c, select(vec2<bool>(global0.a.d, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec2<bool>(true, true), global0.a.c), !vec2<bool>(global1[_wgslsmith_index_u32(global0.a.a, 19u)], false)), vec2<bool>(all(vec2<bool>(true, false)), select(global0.a.c.x, global0.a.d, global1[_wgslsmith_index_u32(27871u, 19u)])), global3.x)), ~(-2147483647i), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.b.x, _wgslsmith_f_op_f32(global0.a.b.x * global0.c.b.x)) * _wgslsmith_f_op_f32(trunc(global0.a.b.x))), u_input.a.x, true, Struct_2(Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-481f, global0.c.b.x))), !global3.yx, any(vec4<bool>(true, true, global3.x, global3.x)), vec4<u32>(4521u, var_1.x, 22410u, 141290u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-756f, -1000f, 563f) - vec3<f32>(global0.b.x, -1569f, 1556f)))), global0.c)), Struct_2(Struct_1(_wgslsmith_mult_u32(18470u, 49935u), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(-1299f, var_1.x, true, Struct_2(Struct_1(global0.a.e.x, global0.c.b, global0.a.c, global3.x, global0.c.e), vec3<f32>(global0.c.b.x, global0.b.x, -895f), Struct_1(global0.a.a, global0.c.b, vec2<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 19u)]), true, global0.a.e))), Struct_2(global0.a, vec3<f32>(-173f, global0.b.x, global0.c.b.x), global0.a))).x), !(!global3.zw), _wgslsmith_div_f32(global0.c.b.x, global0.a.b.x) >= _wgslsmith_f_op_f32(-global0.c.b.x), vec4<u32>(~u_input.a.x, reverseBits(u_input.a.x), 78579u ^ global0.a.e.x, 4294967295u)), vec3<f32>(global0.b.x, global0.a.b.x, global0.b.x), Struct_1(0u, global0.a.b, select(vec2<bool>(global0.c.c.x, global1[_wgslsmith_index_u32(var_1.x, 19u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global0.c.d), vec2<bool>(false, false)), false, _wgslsmith_mod_vec4_u32(global0.a.e, global0.c.e ^ global0.c.e))), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(-1045f, ~(~1u), global1[_wgslsmith_index_u32(4294967295u, 19u)] || true, Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(global0.b.x, global0.c.b.x, global0.a.b.x)), global0.a)), Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-386f, 321f, -1088f))), global0.c))).x);
    let var_3 = ~vec2<u32>(1u, reverseBits(~u_input.a.x));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = min(vec3<i32>(1i | max(~(-1i), 1i << (global0.a.a % 32u)), 4900i, i32(-1i) * -56678i), _wgslsmith_clamp_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(2147483647i, -29678i), select(_wgslsmith_mod_i32(8466i, 2147483647i), 2147483647i, 406f >= global0.a.b.x), -50200i << (1u % 32u)), -_wgslsmith_mult_vec3_i32(min(vec3<i32>(-1i, -15540i, 44441i), vec3<i32>(-1i, 8057i, 0i)), -vec3<i32>(19259i, 74074i, -359i)), ~vec3<i32>(_wgslsmith_mod_i32(40192i, 15287i), _wgslsmith_sub_i32(1i, -60428i), -1i)));
    var var_1 = global0.a;
    global3 = select(select(vec4<bool>(select(arg_2.x, arg_0.x, arg_1.x) != any(vec2<bool>(false, arg_2.x)), !any(vec4<bool>(true, true, true, true)), false, true), !arg_2, any(select(vec2<bool>(false, global0.c.d), select(vec2<bool>(global1[_wgslsmith_index_u32(49027u, 19u)], var_1.c.x), global0.c.c, vec2<bool>(arg_1.x, global3.x)), !vec2<bool>(arg_0.x, var_1.d)))), select(arg_2, arg_2, global1[_wgslsmith_index_u32(36404u, 19u)]), true);
    var var_2 = Struct_4(!arg_1.zz, _wgslsmith_clamp_i32(~abs(-2147483647i), 32593i >> (global2[_wgslsmith_index_u32(1u, 22u)] % 32u), var_0.x) >> (0u % 32u), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1017f)), _wgslsmith_f_op_f32(select(global0.a.b.x, global0.a.b.x, false))))), firstTrailingBit(1u), true, Struct_2(global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b.x, -439f, global0.b.x) * global0.b)), Struct_1(_wgslsmith_clamp_u32(var_1.e.x, u_input.a.x, var_1.a), vec2<f32>(-1866f, var_1.b.x), select(vec2<bool>(false, true), arg_0.xy, vec2<bool>(true, false)), all(vec4<bool>(true, true, var_1.c.x, var_1.c.x)), vec4<u32>(u_input.a.x, 0u, var_1.a, global2[_wgslsmith_index_u32(26516u, 22u)])))), Struct_2(global0.c, _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b.x, 160f, 1494f))))), global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f) - _wgslsmith_f_op_f32(-var_1.b.x)))));
    var var_3 = (vec4<u32>(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 16946u), 1u, var_1.e.x, var_1.a) & _wgslsmith_mod_vec4_u32(var_1.e, global0.a.e)) >> (var_1.e % vec4<u32>(32u));
    return var_2.c.d;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = ~(~arg_1.a.e);
    global3 = select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.a.a, 19u)], func_4(vec3<bool>(false, true, global1[_wgslsmith_index_u32(57982u, 19u)]), global3.xxw, vec4<bool>(arg_2, false, false, false)).a.d, !arg_3.x), !select(vec4<bool>(true, true, global0.a.c.x, global1[_wgslsmith_index_u32(84627u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 19u)], true, false, arg_0), arg_2), true), !(!select(!vec4<bool>(arg_2, global0.c.d, arg_3.x, global0.a.d), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], false, global3.x, false), true)), func_4(vec3<bool>(all(arg_3.zy), arg_0, arg_0), !arg_3, !vec4<bool>(global1[_wgslsmith_index_u32(1u, 19u)], false, true, false)).a.d & arg_1.c.c.x);
    var_0 = arg_1.a.e;
    let var_1 = func_4(select(select(select(global3.wyw, global3.yzy, false), arg_3, !select(vec3<bool>(true, false, true), vec3<bool>(global3.x, global3.x, false), true)), !(!select(global3.yxy, arg_3, false)), true), arg_3, !(!select(!vec4<bool>(arg_0, global0.c.d, arg_1.a.d, true), select(vec4<bool>(arg_2, arg_3.x, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(9061u, 19u)]), vec4<bool>(arg_1.a.c.x, true, true, arg_1.a.c.x), true), all(vec4<bool>(global3.x, global0.c.c.x, false, true))))).b;
    let var_2 = Struct_3(805f, u_input.a.x, global0.a.c.x, arg_1);
    return Struct_3(arg_1.a.b.x, 36607u, any(!(!select(vec4<bool>(var_2.c, arg_0, true, false), vec4<bool>(true, arg_3.x, false, arg_2), false))), func_4(!arg_3, !select(!global3.wyx, arg_3, vec3<bool>(false, arg_0, arg_0)), vec4<bool>(arg_2, global1[_wgslsmith_index_u32(~u_input.a.x, 19u)], arg_0, global3.x)));
}

fn func_1() -> vec3<i32> {
    global1 = array<bool, 19>();
    global2 = array<u32, 22>();
    global1 = array<bool, 19>();
    let var_0 = func_5(!any(vec3<bool>(true, true, true)), func_4(select(!vec3<bool>(false, false, global0.a.c.x), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0.c.e.x, 19u)]), global0.c.c.x), global3.xxy, vec4<bool>(true, all(global3.zwy), global3.x, func_2())), true, global3.xwx);
    var var_1 = ~vec3<u32>(1u, 93891u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, 4294967295u, var_0.b, var_0.b)), ~abs(var_0.d.a.e)));
    return vec3<i32>(-(i32(-1i) * -(5529i >> (1u % 32u))), -11633i, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_1());
    let var_1 = -var_0.x;
    global1 = array<bool, 19>();
    let var_2 = Struct_4(global0.a.c, -54521i, func_5(func_4(select(vec3<bool>(true, true, false), select(vec3<bool>(true, global3.x, false), vec3<bool>(true, true, true), vec3<bool>(true, global3.x, global0.c.c.x)), !global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), select(select(vec3<bool>(global3.x, global0.c.d, global3.x), global3.yzw, vec3<bool>(false, false, global1[_wgslsmith_index_u32(24398u, 19u)])), global3.wyx, vec3<bool>(global0.c.c.x, global0.c.c.x, global0.a.d)), select(!vec4<bool>(global0.a.d, true, true, true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(35778u, 19u)], false, global3.x), vec4<bool>(true, global0.c.c.x, global3.x, global1[_wgslsmith_index_u32(8474u, 19u)]), global1[_wgslsmith_index_u32(20661u, 19u)]), !vec4<bool>(global0.a.d, global1[_wgslsmith_index_u32(66770u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], false))).c.d, Struct_2(func_5(!global1[_wgslsmith_index_u32(global0.a.e.x, 19u)], func_4(global3.zxy, vec3<bool>(true, global3.x, global1[_wgslsmith_index_u32(54507u, 19u)]), vec4<bool>(global0.c.d, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47871u, 22u)], 22u)], 19u)], true, global3.x)), true, select(global3.zxy, vec3<bool>(false, false, global3.x), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.a, 22u)], 19u)], global3.x, true))).d.a, _wgslsmith_f_op_vec3_f32(abs(global0.b)), func_5(global1[_wgslsmith_index_u32(4294967295u, 19u)], Struct_2(Struct_1(1u, vec2<f32>(global0.c.b.x, -2363f), vec2<bool>(global3.x, global3.x), global1[_wgslsmith_index_u32(0u, 19u)], global0.c.e), global0.b, Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.c.e.x, 22u)], 22u)], vec2<f32>(927f, global0.b.x), vec2<bool>(global0.c.d, global0.a.c.x), global3.x, vec4<u32>(u_input.a.x, 5842u, 1u, global0.a.a))), func_5(global3.x, Struct_2(Struct_1(70575u, global0.b.yx, vec2<bool>(global1[_wgslsmith_index_u32(40118u, 19u)], false), false, global0.a.e), vec3<f32>(global0.a.b.x, global0.b.x, -1020f), global0.c), true, global3.zzw).c, !global3.zyx).d.a), true, !global3.zxw), Struct_2(global0.a, vec3<f32>(-852f, -236f, 1000f), global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b.x) - global0.c.b.x));
    var var_3 = func_5(var_2.a.x, Struct_2(Struct_1(~_wgslsmith_add_u32(var_2.d.a.e.x, 9398u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a.b, var_2.d.b.zz) - var_2.d.c.b), vec2<bool>(all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.c.b, 22u)], 19u)])), true), global1[_wgslsmith_index_u32(85773u, 19u)], reverseBits(~vec4<u32>(0u, u_input.a.x, 0u, var_2.c.b))), _wgslsmith_f_op_vec3_f32(var_2.c.d.b * global0.b), Struct_1(_wgslsmith_add_u32(min(0u, u_input.a.x), 1u), global0.b.xx, vec2<bool>(false, !var_2.a.x), global0.a.d, global0.c.e)), global1[_wgslsmith_index_u32(130039u, 19u)] && (-func_1().x <= -5284i), global3.xwx).d;
    global3 = select(!vec4<bool>(false, false, !global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 22u)], 19u)], any(!vec3<bool>(global1[_wgslsmith_index_u32(91671u, 19u)], global3.x, true))), select(select(vec4<bool>(!var_2.d.a.d, false, func_4(vec3<bool>(false, var_3.a.c.x, global1[_wgslsmith_index_u32(var_2.d.c.e.x, 19u)]), global3.xyx, vec4<bool>(true, global3.x, true, global0.a.c.x)).c.c.x, true), !select(vec4<bool>(var_3.c.c.x, true, global0.c.d, false), vec4<bool>(var_2.a.x, false, var_3.c.c.x, var_3.c.d), vec4<bool>(global0.c.c.x, true, global3.x, true)), global3.x), !select(vec4<bool>(var_3.c.d, false, var_2.c.d.a.c.x, var_3.c.c.x), vec4<bool>(global3.x, global1[_wgslsmith_index_u32(70087u, 19u)], global0.a.d, false), true), select(!vec4<bool>(true, global3.x, false, true), select(vec4<bool>(true, true, true, var_3.a.d), !vec4<bool>(false, false, var_3.c.c.x, var_2.c.c), vec4<bool>(global0.a.d, global1[_wgslsmith_index_u32(0u, 19u)], var_3.c.d, true)), ~global2[_wgslsmith_index_u32(var_2.d.a.a, 22u)] > _wgslsmith_mult_u32(var_3.c.e.x, global0.c.a))), select(select(vec4<bool>(true, !var_3.c.d, all(global3.yzx), false & global0.a.c.x), !(!vec4<bool>(false, global3.x, var_2.d.c.d, global3.x)), !(var_2.d.c.a >= u_input.a.x)), vec4<bool>(false, false, !global0.a.c.x, true || global3.x), all(select(!vec4<bool>(global3.x, global0.c.c.x, false, var_2.d.a.d), select(vec4<bool>(false, global3.x, var_3.a.d, global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global0.a.a, 19u)], true, var_2.a.x), vec4<bool>(true, false, true, global0.a.d)), vec4<bool>(false, true, false, var_2.a.x)))));
    global1 = array<bool, 19>();
    var var_4 = Struct_4(!var_2.a, 1i, var_2.c, Struct_2(func_5(all(select(vec4<bool>(false, var_3.a.c.x, true, false), vec4<bool>(true, var_3.c.d, false, true), vec4<bool>(var_2.d.c.d, global0.a.c.x, true, false))), func_5(global1[_wgslsmith_index_u32(u_input.a.x, 19u)] != global3.x, var_2.c.d, !var_3.c.c.x, !global3.yxw).d, _wgslsmith_sub_i32(var_0.x, -1i) >= _wgslsmith_clamp_i32(51098i, -7460i, 15338i), global3.xyw).d.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.c.b.x))), global0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-502f))))), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 5719u, var_2.c.d.c.a, u_input.a.x), var_3.c.e), max(vec4<u32>(4294967295u, 16058u, global2[_wgslsmith_index_u32(4294967295u, 22u)], 52524u), vec4<u32>(var_3.a.e.x, 25226u, var_2.c.d.c.e.x, var_2.c.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.c.b.x, 917f)))), func_4(!vec3<bool>(var_3.c.c.x, false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.c.e.x, 22u)], 19u)]), vec3<bool>(false, true, var_3.c.c.x), select(vec4<bool>(global0.c.d, false, true, var_2.a.x), vec4<bool>(global3.x, global3.x, false, false), true)).c.c, true, var_3.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)))));
    global0 = func_5(false, Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.c.d.c.b + vec2<f32>(global0.a.b.x, var_3.c.b.x)), _wgslsmith_f_op_vec2_f32(-var_2.c.d.b.xx), var_3.c.c)), var_4.d.a.c, !any(vec4<bool>(false, false, false, var_4.d.a.d)), abs(vec4<u32>(62088u, 4294967295u, 44648u, var_2.c.d.c.a))), _wgslsmith_f_op_vec3_f32(func_4(select(vec3<bool>(false, false, true), global3.zzx, global3.www), vec3<bool>(global3.x, false, global1[_wgslsmith_index_u32(16611u, 19u)]), !vec4<bool>(false, true, global3.x, true)).b + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.d.c.b.x, 818f, global0.a.b.x)))), func_5(any(vec2<bool>(true, true)), func_4(vec3<bool>(false, true, global3.x), vec3<bool>(false, var_3.a.c.x, true), vec4<bool>(true, true, true, true)), true, vec3<bool>(any(vec4<bool>(false, var_3.c.c.x, false, true)), all(vec4<bool>(var_3.a.c.x, true, false, global0.a.c.x)), true)).d.c), false, global3.yxw).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(-var_4.d.a.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -170f), global0.b.x, true)))))), vec4<u32>(u_input.a.x, min(min(1u | global2[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_mod_u32(34938u, u_input.a.x)), ~43754u << (~var_4.c.d.a.e.x % 32u)), _wgslsmith_mult_u32(38562u, min(var_4.c.d.c.a, 67536u)), ~0u), func_1().x);
}

