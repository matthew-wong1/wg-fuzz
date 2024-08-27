struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(164f, 446f);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(954f, -156f, -1000f), Struct_1(vec4<u32>(4294967295u, 50815u, 1740u, 13792u)), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global2: Struct_2 = Struct_2(vec3<f32>(924f, -594f, -1275f), Struct_1(vec4<u32>(8096u, 0u, 0u, 0u)), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<u32>(0u, 8320u, 1u, 11531u)), Struct_1(vec4<u32>(19073u, 4294967295u, 4452u, 61553u)), Struct_1(vec4<u32>(4294967295u, 1u, 38590u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 128674u, 0u)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 33480u)), Struct_1(vec4<u32>(4294967295u, 9632u, 38994u, 1235u)), Struct_1(vec4<u32>(60032u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<u32>(28959u, 1u, 0u, 0u)));

var<private> global4: array<u32, 12>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(1035u, 12u)];
    let var_1 = ~arg_1.a.yx;
    var var_2 = vec3<bool>(!(firstTrailingBit(max(arg_1.a.x, -6161i)) >= 1i), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(602f - arg_3.a.x), true))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 1390f, global2.a.x, arg_3.a.x), vec4<f32>(global2.a.x, global0.x, 1799f, -1011f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-463f, global0.x, 193f, arg_1.b.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 556f, -994f, global1.a.x) * vec4<f32>(global0.x, global1.a.x, -162f, -2346f)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), 1266f, -794f, 525f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(675f, -1000f, -596f, 1037f), vec4<f32>(arg_1.b.a.x, global1.a.x, arg_3.a.x, -206f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(921f, arg_3.a.x, global2.a.x, 233f) * vec4<f32>(399f, 212f, 590f, -678f)))), arg_1.c))));
    let var_4 = ~global2.b.a.x << (global2.b.a.x % 32u);
    return any(select(!arg_1.c, !arg_1.c, arg_1.c));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    let var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0, _wgslsmith_mult_u32(global1.b.a.x, global2.b.a.x) >> (global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global1.b.a.x), 12u)] % 32u)), ~_wgslsmith_sub_u32(~43629u, firstTrailingBit(1u)), ~firstLeadingBit(~0u)), 12u)];
    let var_1 = vec4<f32>(263f, -1265f, 1193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - 665f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = true;
    let var_3 = Struct_2(global1.a, global2.b, vec3<bool>(!global2.d.x, true, func_3(select(all(vec4<bool>(global2.c.x, global1.d.x, false, true)), true, false), Struct_3(u_input.a, Struct_2(vec3<f32>(-2457f, 665f, 509f), global3[_wgslsmith_index_u32(22224u, 8u)], vec3<bool>(global2.c.x, false, true), vec3<bool>(global1.d.x, false, true)), select(vec4<bool>(var_2, global1.c.x, global2.c.x, global2.d.x), vec4<bool>(global1.d.x, global2.d.x, false, true), global2.c.x), true), global2.b, Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1320f, -123f, 1966f))), global1.b, select(vec3<bool>(false, false, global1.c.x), global2.c, vec3<bool>(false, global1.d.x, global1.c.x)), !vec3<bool>(global2.d.x, true, true)))), vec3<bool>(true, all(vec3<bool>(all(vec4<bool>(global2.d.x, false, true, true)), arg_0 == global1.b.a.x, all(vec4<bool>(true, true, true, false)))), false));
    let var_4 = global1.b;
    return -1000f;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    global3 = array<Struct_1, 8>();
    let var_0 = ~25635u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(70160u, vec2<i32>(-3483i, 8762i))))) - global1.a.x), _wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)));
    var var_2 = vec2<u32>(firstTrailingBit(1u), 4759u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_1.b.a.x), arg_1.b.a.yy), _wgslsmith_clamp_vec2_u32(vec2<u32>(8296u, global4[_wgslsmith_index_u32(1u, 12u)]), vec2<u32>(var_0, global2.b.a.x), global1.b.a.xy), ~vec2<u32>(global1.b.a.x, arg_1.b.a.x)), select(select(global1.b.a.xw, arg_1.b.a.xw, true), vec2<u32>(25868u, var_0), vec2<bool>(false, global2.c.x))) % 32u));
    var var_3 = _wgslsmith_div_vec2_f32(global2.a.xy, vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(arg_1.a.x))) - _wgslsmith_f_op_f32(arg_1.a.x + -434f))));
    return Struct_3(countOneBits(~(-min(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a * global1.a))), arg_1.b, select(select(!arg_1.c, select(arg_1.d, vec3<bool>(global1.c.x, true, false), true), true), !(!vec3<bool>(false, arg_1.d.x, true)), vec3<bool>(false, false, false)), global1.c), vec4<bool>(global2.c.x, !(!(!global1.c.x)), arg_1.c.x | global2.d.x, true), func_3(true || !(arg_1.d.x && global1.d.x), Struct_3(u_input.a, arg_1, vec4<bool>(global1.c.x, true, true, true), global1.d.x), Struct_1(global2.b.a), arg_1));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = func_1(~(-arg_0.a.x), func_1(_wgslsmith_mult_i32(select(0i, arg_0.a.x, global0.x > 382f), -u_input.b), func_1(countOneBits(~u_input.b), Struct_2(global2.a, arg_0.b.b, global2.c, func_1(arg_0.a.x, arg_0.b).c.xyw)).b).b).b.b;
    let var_1 = select(u_input.a, vec3<i32>(max(arg_0.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 44763i, 8732i), vec3<i32>(-1i, u_input.a.x, -45980i)), -vec3<i32>(arg_0.a.x, 1i, 2147483647i))), 0i, countOneBits(2147483647i)), !(!vec3<bool>(func_3(true, arg_0, global3[_wgslsmith_index_u32(0u, 8u)], Struct_2(global2.a, arg_0.b.b, global1.d, vec3<bool>(arg_0.c.x, true, true))), global1.c.x, true)));
    let var_2 = firstLeadingBit(~(~72360u));
    var var_3 = Struct_2(global2.a, var_0, vec3<bool>(true, global1.c.x, true), vec3<bool>(!global2.c.x, any(!select(arg_0.c, arg_0.c, arg_0.c)), !(0i > var_1.x)));
    let var_4 = _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.x | 1i, var_1.x) << ((_wgslsmith_dot_vec2_u32(func_1(var_1.x, arg_0.b).b.b.a.wz, global1.b.a.zw) ^ 4294967295u) % 32u), ~_wgslsmith_add_i32(select(reverseBits(arg_0.a.x), ~(-12033i), true), countOneBits(1i)));
    return func_1(-u_input.b, Struct_2(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) * _wgslsmith_f_op_f32(max(248f, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2549f)))), Struct_1(_wgslsmith_sub_vec4_u32(~arg_0.b.b.a, _wgslsmith_add_vec4_u32(arg_0.b.b.a, global2.b.a))), !(!func_1(-3855i, Struct_2(vec3<f32>(global2.a.x, global2.a.x, 336f), Struct_1(vec4<u32>(0u, 4294967295u, global4[_wgslsmith_index_u32(var_0.a.x, 12u)], global4[_wgslsmith_index_u32(4294967295u, 12u)])), vec3<bool>(true, true, true), global1.c)).c.yzy), global1.d)).b.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    global4 = array<u32, 12>();
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, arg_0.a.x) * global1.a.xz);
    global1 = arg_0;
    var var_0 = global3[_wgslsmith_index_u32(countOneBits(max(~1u & global4[_wgslsmith_index_u32(49633u, 12u)], _wgslsmith_mod_u32(global1.b.a.x >> (global1.b.a.x % 32u), global2.b.a.x & (59797u >> (global1.b.a.x % 32u))))), 8u)];
    var var_1 = Struct_3(vec3<i32>(u_input.a.x, select(arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -27402i), abs(arg_1.zx)), select(any(global1.d), global1.d.x, all(vec2<bool>(global2.d.x, true)))), 12617i), func_1(firstLeadingBit(-67569i), Struct_2(vec3<f32>(arg_0.a.x, 141f, _wgslsmith_div_f32(-1000f, 1050f)), Struct_1(~var_0.a), !vec3<bool>(arg_0.d.x, true, global1.d.x), func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -969i), arg_1.zz), func_1(2147483647i, arg_0).b).c.xyy)).b, !(!vec4<bool>(global2.c.x, arg_0.d.x & true, !global2.c.x, arg_0.c.x && arg_0.d.x)), ~_wgslsmith_mult_u32(max(global2.b.a.x, 3519u), ~global1.b.a.x) != _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.b.a.x, global2.b.a.x), ~79566u & ~global2.b.a.x, ~var_0.a.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(firstTrailingBit(~u_input.a), func_5(Struct_2(_wgslsmith_f_op_vec3_f32(step(global2.a, vec3<f32>(353f, global2.a.x, 182f))), func_4(func_1(u_input.b, Struct_2(vec3<f32>(global2.a.x, global2.a.x, 597f), global1.b, vec3<bool>(false, global1.d.x, true), vec3<bool>(false, true, global1.d.x)))), func_1(1i & u_input.a.x, Struct_2(vec3<f32>(1473f, 225f, global1.a.x), global2.b, global1.d, global2.c)).c.zyy, !(!global2.c)), vec4<i32>(~(-15724i), ~(0i << (global1.b.a.x % 32u)), 1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -61273i), u_input.a))), vec4<bool>(true, all(func_1(5105i, Struct_2(global2.a, Struct_1(global2.b.a), vec3<bool>(false, global2.c.x, global1.d.x), global1.c)).b.c) | func_1(u_input.a.x, func_1(-1i, Struct_2(vec3<f32>(global0.x, global1.a.x, global1.a.x), global3[_wgslsmith_index_u32(1u, 8u)], global1.c, vec3<bool>(true, true, false))).b).d, true, !all(vec4<bool>(global2.d.x, global2.c.x, global2.c.x, true)) & !global1.d.x), all(vec4<bool>(global1.d.x, func_1(2147483647i, Struct_2(global2.a, global1.b, vec3<bool>(global2.d.x, global1.d.x, global1.c.x), global1.c)).b.c.x != any(global1.d), global1.c.x, func_5(func_5(Struct_2(vec3<f32>(-284f, -366f, 1000f), Struct_1(global2.b.a), global1.d, global1.d), vec4<i32>(-2147483647i, 36772i, 1i, u_input.a.x)), firstTrailingBit(vec4<i32>(-66507i, u_input.a.x, 11172i, -8063i))).d.x)));
    global0 = vec2<f32>(_wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-1000f - 2191f)))), _wgslsmith_f_op_f32(f32(-1f) * -1122f));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(592f, global0.x, var_0.b.a.x)));
    var var_2 = (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~global2.b.a.xzz, ~var_0.b.b.a.yxy), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b.b.a.x, 1u, 4294967295u), var_0.b.b.a.xyx)) & vec3<u32>(global1.b.a.x, global2.b.a.x, 3317u)) << (abs(func_4(func_1(-2147483647i, Struct_2(vec3<f32>(var_1.x, global0.x, 1000f), Struct_1(global2.b.a), global2.d, global2.c))).a.xxz) % vec3<u32>(32u));
    var var_3 = func_1((firstLeadingBit(_wgslsmith_sub_i32(2147483647i, var_0.a.x)) & min(_wgslsmith_dot_vec3_i32(u_input.a, var_0.a), 33810i)) & -15830i, var_0.b);
    var var_4 = ~abs(-reverseBits(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(-(~u_input.b), abs(u_input.b)), var_1.x);
}

