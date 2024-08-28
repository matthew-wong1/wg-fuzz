struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(65091u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(67167u, 1350u), vec2<u32>(66120u, 1u), vec2<u32>(16938u, 17353u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 63799u), vec2<u32>(24178u, 1u), vec2<u32>(10206u, 1u), vec2<u32>(10486u, 27836u), vec2<u32>(0u, 4294967295u), vec2<u32>(1128u, 1u), vec2<u32>(1u, 18530u));

var<private> global1: array<bool, 12> = array<bool, 12>(false, true, false, false, true, false, true, false, true, true, false, true);

var<private> global2: Struct_1;

var<private> global3: array<f32, 16> = array<f32, 16>(-403f, 613f, -211f, -174f, -150f, -1229f, -1697f, -1368f, 360f, 300f, 408f, -1688f, -1000f, -682f, 1505f, -751f);

var<private> global4: vec4<i32> = vec4<i32>(10064i, -28088i, 2147483647i, 23706i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(43073u, 16u)])))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2013f, 831f)), global3[_wgslsmith_index_u32(global2.a.x >> (u_input.a % 32u), 16u)]))), _wgslsmith_f_op_f32(trunc(-1211f))), global2.a.wwx, vec4<i32>(global4.x, ((global4.x | global4.x) ^ 1i) ^ abs(3739i), _wgslsmith_sub_i32(2147483647i, global4.x), _wgslsmith_div_i32(6229i, -1i)));
    global3 = array<f32, 16>();
    var var_1 = global1[_wgslsmith_index_u32(global2.a.x, 12u)];
    let var_2 = (~min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 138542u, global2.a.x, var_0.b.x), global2.a), 30079u ^ var_0.b.x) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b.x, u_input.a), var_0.b.x) % 32u)) < 1u;
    global3 = array<f32, 16>();
    return reverseBits(var_0.c);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_1(reverseBits(max(global2.a, countOneBits(global2.a))));
    global1 = array<bool, 12>();
    global1 = array<bool, 12>();
    global2 = Struct_1(vec4<u32>(52125u, ~0u, select(_wgslsmith_mod_u32(~var_0.a.x, 1u), ~_wgslsmith_clamp_u32(7565u, 85351u, 1u), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, arg_1, arg_1), 12u)]), var_0.a.x));
    var var_1 = select(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(-2147483647i), global4.x, global4.x, ~(-31033i)), func_3())), vec4<i32>(global4.x, arg_2, countOneBits(global4.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global4.x, -1i, -1i), vec4<i32>(global4.x, 65593i, global4.x, -2147483647i) << (var_0.a % vec4<u32>(32u)))), !vec4<bool>(true, false, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(arg_0, 12u)], false, false)) || global1[_wgslsmith_index_u32(var_0.a.x, 12u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, arg_0, ~global2.a.x), 12u)]));
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-895f, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(0u, 16u)]))) - _wgslsmith_f_op_f32(ceil(1237f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) - -656f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0.a.x, 16u)], global3[_wgslsmith_index_u32(arg_1, 16u)]) - _wgslsmith_f_op_f32(-arg_3.x)))), ~(~(abs(vec3<u32>(var_0.a.x, u_input.a, 0u)) << (~global2.a.wzz % vec3<u32>(32u)))), ~min(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global4.x, var_1.x, global4.x), vec4<i32>(-1i, arg_2, arg_2, -2147483647i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -38627i, 17138i, -30742i), vec4<i32>(-45304i, 0i, 1i, arg_2)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, 10052i, 44721i), vec4<i32>(arg_2, global4.x, -14518i, arg_2)), vec4<i32>(var_1.x, arg_2, var_1.x, 2036i))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = arg_0.a;
    global1 = array<bool, 12>();
    var var_1 = Struct_2(true);
    global3 = array<f32, 16>();
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))), arg_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 879f) - func_2(u_input.a, arg_2, -1i, arg_3.a.yx).a.x)), arg_1)));
    return vec4<i32>(39650i, ~_wgslsmith_sub_i32(func_2(global2.a.x, reverseBits(u_input.a), 31556i, var_2.zx).c.x, firstLeadingBit(arg_3.c.x)), _wgslsmith_add_i32(2147483647i, 0i), -1i);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(true);
    var var_1 = vec2<f32>(-711f, arg_1.a.x);
    global2 = Struct_1(global2.a);
    let var_2 = -(~(~_wgslsmith_mod_i32(arg_1.c.x, -47016i)) >> (global2.a.x % 32u));
    let var_3 = true;
    return Struct_1(~reverseBits(global2.a));
}

fn func_1() -> vec2<i32> {
    global2 = func_5(Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(247f, _wgslsmith_f_op_f32(-242f + global3[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a, 16u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 16u)], 318f, global3[_wgslsmith_index_u32(global2.a.x, 16u)])) - _wgslsmith_div_vec3_f32(vec3<f32>(-420f, global3[_wgslsmith_index_u32(0u, 16u)], -467f), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 16u)], 154f, -669f)))), reverseBits(vec3<u32>(~2741u, _wgslsmith_mult_u32(0u, global2.a.x), 1u)), -func_4(Struct_2(global1[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(global2.a.x, 16u)])), 4294967295u, func_2(6398u, u_input.a, -1i, vec2<f32>(-694f, global3[_wgslsmith_index_u32(global2.a.x, 16u)])))), func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(global2.a.x ^ 4294967295u, 13u)], min(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(49828u, 13u)])), global2.a.x), 0u, ~(i32(-1i) * -27788i), vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(u_input.a, 92095u, false), 16u)]), _wgslsmith_f_op_f32(trunc(920f)))));
    let var_0 = ~abs(abs(firstLeadingBit(vec4<u32>(u_input.a, 1u, 1u, global2.a.x)) & global2.a));
    let var_1 = vec2<bool>(true, true);
    global1 = array<bool, 12>();
    return reverseBits(global4.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~31173u, 16u)];
    var var_1 = _wgslsmith_mult_vec2_i32(global4.wx, func_1());
    global4 = select(vec4<i32>(11305i, countOneBits(-42504i), 2147483647i, ~global4.x), ~(~vec4<i32>(countOneBits(2147483647i), global4.x ^ -1i, 52732i, ~(-1i))), true);
    let var_2 = Struct_3(-_wgslsmith_sub_i32(var_1.x ^ var_1.x, 3381i));
    global4 = -reverseBits(countOneBits(~select(vec4<i32>(-1i, var_2.a, var_1.x, global4.x), vec4<i32>(var_2.a, global4.x, var_1.x, 1i), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(reverseBits(firstLeadingBit(u_input.a)) | _wgslsmith_dot_vec4_u32(select(reverseBits(global2.a), _wgslsmith_mult_vec4_u32(global2.a, global2.a), global1[_wgslsmith_index_u32(func_5(Struct_4(vec3<f32>(1407f, -528f, global3[_wgslsmith_index_u32(global2.a.x, 16u)]), global2.a.xyz, vec4<i32>(var_1.x, var_1.x, -41053i, var_1.x)), Struct_4(vec3<f32>(global3[_wgslsmith_index_u32(48809u, 16u)], -1142f, global3[_wgslsmith_index_u32(u_input.a, 16u)]), vec3<u32>(0u, 4294967295u, u_input.a), vec4<i32>(-1i, global4.x, 2147483647i, global4.x))).a.x, 12u)]), vec4<u32>(86438u, _wgslsmith_dot_vec3_u32(global2.a.wyy, global2.a.wyz), _wgslsmith_div_u32(global2.a.x, 18458u), 1u >> (global2.a.x % 32u))), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1098f) * -1830f)))), var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(u_input.a, 16u)]) * vec2<f32>(-1955f, -1081f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, global3[_wgslsmith_index_u32(37838u, 16u)])))) - vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 16u)] * -1152f), _wgslsmith_f_op_f32(1000f + global3[_wgslsmith_index_u32(global2.a.x, 16u)])))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 16u)]);
}

