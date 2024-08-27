struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 1i, -43447i);

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<f32> {
    global1 = array<Struct_1, 25>();
    var var_0 = u_input.b.xz;
    let var_1 = Struct_1(arg_2.b, all(!select(vec4<bool>(false, false, arg_2.a, true), vec4<bool>(false, true, arg_2.a, arg_2.b), vec4<bool>(false, true, arg_2.a, true))) || true);
    var_0 = vec2<u32>(2495u >> (_wgslsmith_mult_u32(~1u << (~u_input.b.x % 32u), ~u_input.a.x) % 32u), 0u);
    let var_2 = -max(-vec4<i32>(2147483647i, global0.x, 1i << (var_0.x % 32u), global0.x), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(-61266i, 2147483647i, global0.x, global0.x), vec4<i32>(-17412i, -518i, 23126i, -2147483647i))));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 436f) * -1284f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2669f, _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2340f + 697f) - arg_1.x)), 790f), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1187f * arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + arg_1.x))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = ~abs(vec3<i32>(global0.x, select(_wgslsmith_div_i32(-44071i, 4407i), ~global0.x, true), 43148i));
    global0 = reverseBits(vec3<i32>(~(-global0.x | _wgslsmith_add_i32(61416i, global0.x)), _wgslsmith_mod_i32(global0.x, global0.x), -(-26382i | global0.x)));
    let var_0 = vec4<u32>(u_input.b.x, 1u << ((min(81703u, u_input.b.x) & ~1u) % 32u), min(_wgslsmith_clamp_u32(36806u, ~u_input.b.x, ~u_input.a.x), min(0u, _wgslsmith_mod_u32(u_input.b.x, u_input.a.x))), 0u) & vec4<u32>(12938u, u_input.a.x >> (_wgslsmith_mult_u32(select(1u, 51404u, arg_1.a), 1u) % 32u), u_input.a.x, select(7091u, ~u_input.b.x, arg_1.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1440f, -474f, _wgslsmith_f_op_f32(min(641f, 1834f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(-1000f - -1605f), _wgslsmith_div_f32(627f, -893f)) + _wgslsmith_f_op_vec3_f32(func_3(0u, _wgslsmith_f_op_vec4_f32(vec4<f32>(488f, 1098f, -1773f, -237f) - vec4<f32>(-1183f, 851f, 1000f, 1374f)), Struct_1(arg_1.b, arg_0.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1327f, 703f, -253f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1984f, -790f, -998f)))), vec3<f32>(_wgslsmith_div_f32(1000f, -492f), _wgslsmith_f_op_f32(f32(-1f) * -961f), -610f)))));
    var var_2 = ~global0.x;
    return arg_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = func_2(global1[_wgslsmith_index_u32(1u, 25u)], Struct_1(true, !any(select(vec2<bool>(arg_1.a, arg_1.b), vec2<bool>(arg_1.b, true), true))));
    global1 = array<Struct_1, 25>();
    global2 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global0.x, -2147483647i, arg_0.x, -16423i)) & vec4<i32>(1i, ~(-48134i), global0.x, ~arg_0.x), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(66339i, 31178i, 11169i, arg_0.x), vec4<i32>(arg_0.x, global0.x, arg_0.x, 0i)))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, global0.x), 11099i), _wgslsmith_dot_vec2_i32(vec2<i32>(-18889i, -4087i), global0.zz << (u_input.b.yz % vec2<u32>(32u))), global0.x), 2147483647i));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2855f - -1028f) - 251f)), _wgslsmith_f_op_vec3_f32(func_3(53398u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-171f, 268f, 1469f, 1019f) - vec4<f32>(760f, 2060f, -1737f, -1015f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2098f, 936f, 221f, 2437f), vec4<f32>(-669f, -1296f, 1486f, 1000f)))), Struct_1(false, var_0.a))).x)));
    return !select(vec4<bool>(true, var_0.b, true, _wgslsmith_f_op_f32(trunc(521f)) >= -970f), !(!vec4<bool>(var_0.b, arg_1.a, false, var_0.a)), !select(select(vec4<bool>(arg_1.a, var_0.b, false, false), vec4<bool>(arg_1.b, arg_1.a, arg_1.a, arg_1.a), false), !vec4<bool>(arg_1.b, var_0.b, arg_1.b, var_0.a), true));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> i32 {
    var var_0 = func_2(func_2(func_2(func_2(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), func_2(global2[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(false, false))), func_2(Struct_1(true, arg_1.x), Struct_1(arg_1.x, arg_0.a))), global2[_wgslsmith_index_u32(~(~(~82492u)), 31u)]), func_2(Struct_1(arg_0.b, !arg_0.a), Struct_1(arg_0.a, any(arg_1) && false)));
    var var_1 = func_2(Struct_1(!(true & (arg_1.x || false)), arg_0.a), func_2(Struct_1(!all(vec4<bool>(arg_0.a, arg_0.a, true, true)), false), func_2(Struct_1(all(vec3<bool>(false, arg_0.b, arg_1.x)), true), Struct_1(true, 2147483647i < global0.x))));
    global1 = array<Struct_1, 25>();
    var var_2 = firstTrailingBit(vec3<u32>(max(49364u, arg_2), 0u, 17753u));
    global2 = array<Struct_1, 31>();
    return global0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global0 = vec3<i32>(global0.x, -func_5(Struct_1(false || arg_1.b, true), func_4(~vec3<i32>(arg_2.x, 0i, -266i), func_2(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), abs(_wgslsmith_mod_u32(4294967295u, 4294967295u))), _wgslsmith_mult_i32(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1131i, arg_2.x | global0.x), vec2<i32>(arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, -6292i, 46345i), vec4<i32>(-2147483647i, global0.x, global0.x, 14454i))))));
    let var_0 = select(~vec3<u32>(~max(u_input.a.x, u_input.b.x), ~_wgslsmith_mod_u32(u_input.b.x, 82455u), _wgslsmith_dot_vec3_u32(~u_input.b, reverseBits(vec3<u32>(4294967295u, u_input.b.x, u_input.a.x)))), select(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 30u, 0u) | vec3<u32>(86976u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u), !select(vec3<bool>(true, false, arg_0.b), vec3<bool>(false, true, arg_1.b), arg_0.a)), ~abs(~u_input.a), select(false, arg_0.b, !all(vec4<bool>(arg_1.b, arg_1.b, arg_1.a, arg_0.b)))), select(vec3<bool>(false, func_2(Struct_1(arg_1.a, false), func_2(arg_1, arg_0)).a, !arg_1.a), select(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_1.a, arg_0.b), true), !func_4(arg_2, arg_1).xwz, select(vec3<bool>(true, arg_1.b, arg_0.a), !vec3<bool>(arg_0.b, arg_1.a, false), false)), vec3<bool>(arg_0.a, !(arg_1.b == false), true)));
    global2 = array<Struct_1, 31>();
    let var_1 = 2147483647i;
    let var_2 = global1[_wgslsmith_index_u32(24325u >> (1u % 32u), 25u)];
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!(any(vec4<bool>(true, false, false, true)) || true)), firstLeadingBit(1i) > global0.x);
    let var_1 = func_1(Struct_1(true, var_0.b && !var_0.a), Struct_1(all(vec4<bool>(true && var_0.a, false, true, false)), var_0.b), vec3<i32>(global0.x, global0.x, i32(-1i) * -24010i));
    global1 = array<Struct_1, 25>();
    var var_2 = var_0;
    var_2 = func_2(Struct_1(!(true & any(vec4<bool>(var_1.b, true, var_0.b, true))), true), func_1(func_2(func_1(Struct_1(true, false), var_0, vec3<i32>(-2147483647i, global0.x, -2147483647i)), Struct_1(false, var_1.b)), Struct_1(all(vec4<bool>(var_2.a, var_2.a, false, false)), ~0i != (global0.x << (u_input.b.x % 32u))), select(firstLeadingBit(reverseBits(vec3<i32>(6619i, global0.x, global0.x))), ~vec3<i32>(global0.x, global0.x, global0.x), true)));
    var var_3 = !(!select(!(!vec2<bool>(var_2.a, var_2.b)), !vec2<bool>(true, var_1.a), vec2<bool>(true, !var_0.b)));
    var_3 = func_4(vec3<i32>(~_wgslsmith_dot_vec2_i32(global0.xz, -global0.zx), _wgslsmith_div_i32(_wgslsmith_sub_i32(-43899i, global0.x ^ global0.x), ~min(-31809i, 0i)), global0.x ^ ~global0.x), var_1).yy;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(~(~7080i))), u_input.a.x ^ _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b.x, 4269u) << (u_input.b.zx % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(45112u, 0u) << (vec2<u32>(2837u, u_input.b.x) % vec2<u32>(32u)), firstLeadingBit(u_input.a.yz))));
}

