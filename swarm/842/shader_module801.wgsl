struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, false, true, false, true, true, true, false, true, false, false, true, true, false, false, true);

var<private> global1: array<vec4<i32>, 12>;

var<private> global2: array<f32, 28> = array<f32, 28>(1210f, -506f, 1113f, -348f, -350f, -1382f, -1043f, -787f, 346f, -249f, -269f, 545f, -1415f, -930f, 782f, 475f, -1429f, -1393f, -1742f, -667f, -1000f, 1276f, -317f, -492f, -187f, 2607f, 610f, 242f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(arg_0);
    let var_1 = -759f;
    global1 = array<vec4<i32>, 12>();
    let var_2 = arg_0;
    global2 = array<f32, 28>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a - var_0.a.d.zy));
}

fn func_2(arg_0: vec4<i32>) -> vec2<f32> {
    var var_0 = 1u;
    var var_1 = Struct_3(vec2<i32>((arg_0.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 55389u), vec3<u32>(u_input.b, u_input.b, 19370u)) % 32u)) & min(1i, ~(-2147483647i)), -(~(~arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(1000f, 746f), vec4<u32>(120899u, 18315u, 78237u, u_input.a), 1692u, vec3<f32>(-891f, -511f, global2[_wgslsmith_index_u32(49718u, 28u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)]))))) - vec2<f32>(-939f, -100f)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]) + vec2<f32>(387f, global2[_wgslsmith_index_u32(37574u, 28u)])) + vec2<f32>(global2[_wgslsmith_index_u32(5947u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]))), vec4<u32>(0u, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(25087u, u_input.b) & vec2<u32>(3803u, 0u)), ~40699u), ~firstTrailingBit(1u), vec3<f32>(219f, _wgslsmith_f_op_f32(round(816f)), global2[_wgslsmith_index_u32(u_input.a, 28u)])));
    var_0 = 7394u;
    var_0 = ~(~u_input.b);
    let var_2 = any(select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.c.b.x, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_1.c.c, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(80779u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)])), !(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.c.c, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1.c.b.wzx, vec3<u32>(108613u, 0u, 64756u)), _wgslsmith_mult_u32(u_input.a, 32914u)), 16u)]));
    return _wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_1.b, vec4<u32>(abs(_wgslsmith_add_u32(var_1.c.b.x, 1u)), 72240u, u_input.b, u_input.b), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c.d, vec3<f32>(global2[_wgslsmith_index_u32(50452u, 28u)], -1165f, 951f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(var_1.c.b.x, 28u)]) + var_1.c.d))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - -1000f)) * global2[_wgslsmith_index_u32(u_input.a, 28u)])));
    global2 = array<f32, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(414f, -853f, 909f, -1240f) - vec4<f32>(570f, var_0.x, -1259f, global2[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(718f, arg_1.a.x, var_0.x, arg_0.d.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-706f)), global2[_wgslsmith_index_u32(arg_1.b.x | 79232u, 28u)], _wgslsmith_div_f32(1432f, -1129f), _wgslsmith_f_op_f32(f32(-1f) * -974f)))));
    let var_2 = !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 16u)], select(true, true != any(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.b, 16u)])), !all(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.c, 16u)], global0[_wgslsmith_index_u32(12787u, 16u)]))));
    let var_3 = Struct_3(~vec2<i32>(~17998i, ~(-u_input.c.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-379f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(545f + global2[_wgslsmith_index_u32(5918u, 28u)]), _wgslsmith_f_op_vec2_f32(func_3(arg_1)).x))))), Struct_1(var_1.zx, _wgslsmith_add_vec4_u32(~(arg_0.b & vec4<u32>(u_input.a, u_input.a, 3674u, u_input.a)), vec4<u32>(max(arg_0.c, 4294967295u), ~42890u, countOneBits(82464u), ~u_input.b)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(24317u, 1u, 1u), arg_1.b.yxz), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1464f - 833f), arg_1.d.x, _wgslsmith_f_op_f32(976f + 1788f)), _wgslsmith_f_op_vec3_f32(arg_0.d - vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], var_1.x, var_1.x)))));
    return Struct_5(Struct_4(var_3, var_3.c, _wgslsmith_add_vec2_u32(select(_wgslsmith_sub_vec2_u32(var_3.c.b.wz, var_3.c.b.zz), var_3.c.b.zw ^ arg_0.b.wy, any(vec2<bool>(false, true))), ~(vec2<u32>(0u, 13151u) & vec2<u32>(u_input.b, var_3.c.c)))), ~arg_1.b.zyw, false, arg_1.b, var_3.c.b);
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    global0 = array<bool, 16>();
    var var_0 = true;
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1044f, global2[_wgslsmith_index_u32(u_input.a, 28u)]))), vec4<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, 67672u), _wgslsmith_dot_vec4_u32(vec4<u32>(34242u, u_input.a, u_input.a, u_input.b), vec4<u32>(0u, 22936u, u_input.a, u_input.a)), u_input.a) >> (firstLeadingBit(~vec4<u32>(u_input.a, 0u, 1246u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(38498u, 0u), vec2<u32>(u_input.b, 0u)), true), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(54674u, 28u)], 145f) - vec3<f32>(1918f, global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)])) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(2814f, 693f, global2[_wgslsmith_index_u32(18523u, 28u)]) + vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], -664f, 625f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(536f, 1272f), vec2<f32>(-566f, global2[_wgslsmith_index_u32(u_input.b, 28u)]))) - _wgslsmith_f_op_vec2_f32(func_2(global1[_wgslsmith_index_u32(20332u, 12u)]))) * vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(60055u, 28u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(4294967295u, u_input.a)), 28u)])), countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29920u, 34653u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a)), u_input.a, abs(u_input.a), u_input.b)), ~_wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(184u, 77279u, 1u)), vec3<f32>(-268f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1u, 28u)])))));
    var var_2 = func_4(var_1.a.b, var_1.a.b).a;
    let var_3 = func_4(var_2.a.c, var_2.a.c).a.a;
    return Struct_4(var_3, func_4(var_2.a.c, func_4(var_2.a.c, func_4(var_1.a.a.c, Struct_1(var_1.a.a.c.d.yx, var_3.c.b, u_input.b, vec3<f32>(var_3.c.a.x, -1000f, var_1.a.a.c.a.x))).a.b).a.b).a.a.c, var_3.c.b.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.c.zz, select(~abs(u_input.c.xy), u_input.c.yz ^ ~(u_input.c.zx & vec2<i32>(u_input.c.x, u_input.c.x)), false));
    global0 = array<bool, 16>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1368f, global2[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(65589u, 28u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u, 28u)] - 1038f))));
    var var_2 = Struct_5(func_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 16u)], false)), ~vec3<u32>(u_input.b, u_input.a, ~u_input.b), ((any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false, global0[_wgslsmith_index_u32(25183u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)])) | (true & global0[_wgslsmith_index_u32(4294967295u, 16u)])) || all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], false, global0[_wgslsmith_index_u32(0u, 16u)]))) && (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), reverseBits(vec2<u32>(u_input.b, 2791u))), 28u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 12u)])).x + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 28u)]))), (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 23039u), vec4<u32>(0u, u_input.a, 0u, 1u))) ^ ~firstLeadingBit(vec4<u32>(1u, 16887u, u_input.a, 77799u))) & _wgslsmith_div_vec4_u32(select(vec4<u32>(44162u, u_input.b, 4294967295u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.b, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(2199u, 22525u, 18026u, 12299u), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], true)), abs(~vec4<u32>(u_input.a, 84971u, 7155u, u_input.a))), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 48483u, u_input.a, u_input.b)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.b, 74780u), vec4<u32>(64084u, u_input.a, u_input.a, 29442u)), vec4<u32>(0u, 55732u, 65338u, u_input.a) >> (vec4<u32>(9353u, u_input.a, 0u, 0u) % vec4<u32>(32u)))));
    let var_3 = var_2.a.a;
    var_1 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_2.b.x, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_2.a.b.d.x, var_3.c.d.x, global0[_wgslsmith_index_u32(var_2.e.x, 16u)])))))));
    var var_4 = Struct_2(var_3.c);
    var var_5 = func_4(Struct_1(var_3.b, abs(vec4<u32>(0u, 30342u, 13404u, var_4.a.c) & ~vec4<u32>(var_2.b.x, 17594u, var_4.a.c, 0u)), _wgslsmith_sub_u32(var_4.a.c ^ firstTrailingBit(u_input.a), var_4.a.c), var_3.c.d), func_1(!vec3<bool>(any(vec2<bool>(true, false)), 1u != var_2.d.x, true)).b);
    let var_6 = min(firstLeadingBit(-vec2<i32>(u_input.c.x, 28108i) & min(vec2<i32>(var_2.a.a.a.x, u_input.c.x), var_5.a.a.a)) >> (_wgslsmith_mod_vec2_u32(var_5.b.zy, min(var_2.e.wy, var_5.d.yw) << (_wgslsmith_mod_vec2_u32(vec2<u32>(54912u, var_3.c.b.x), vec2<u32>(var_3.c.b.x, 62965u)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -47392i), var_3.a) | u_input.c.x, -29146i), -var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_i32(var_0.x, 25967i), countOneBits(u_input.c.x)) | firstLeadingBit(_wgslsmith_dot_vec2_i32(~var_3.a, var_3.a)));
}

