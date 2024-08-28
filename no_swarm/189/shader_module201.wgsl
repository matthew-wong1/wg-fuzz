struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(2147483647i, -11336i), vec2<i32>(4157i, -59713i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 19238i), vec2<i32>(0i, 0i), vec2<i32>(0i, -2924i), vec2<i32>(17507i, -151i), vec2<i32>(-1i, 1i), vec2<i32>(7448i, 16134i), vec2<i32>(-1i, 8400i), vec2<i32>(25732i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 0i));

var<private> global2: array<u32, 20>;

var<private> global3: vec2<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_vec3_u32(max(select(~vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(10813u, 20u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 20u)], 14769u, arg_1.d) >> (vec3<u32>(arg_1.b, 52964u, 4294967295u) % vec3<u32>(32u)), !global3.x) << (~(~vec3<u32>(0u, global2[_wgslsmith_index_u32(0u, 20u)], 84747u)) % vec3<u32>(32u)), abs(min(select(vec3<u32>(arg_1.d, global2[_wgslsmith_index_u32(arg_1.b, 20u)], 4294967295u), vec3<u32>(1u, global2[_wgslsmith_index_u32(19159u, 20u)], global2[_wgslsmith_index_u32(arg_1.b, 20u)]), arg_1.c), vec3<u32>(u_input.a, 4294967295u, u_input.a) | vec3<u32>(12779u, 35581u, u_input.a)))), firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u) & _wgslsmith_mult_u32(u_input.a, u_input.a), firstLeadingBit(0u) >> (~arg_1.b % 32u), 14374u)));
    global0 = (vec4<i32>(-10155i, abs(-1i) ^ ~arg_0.b.x, -2147483647i, -6650i) | (_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, arg_1.a, arg_0.b.x, global0.x), vec4<i32>(u_input.b, global0.x, -31701i, 44341i), arg_1.c), vec4<i32>(0i, arg_1.a, u_input.b, -1i)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 20u)], var_0.x, 67290u, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.a, 1u), vec4<u32>(4294967295u, arg_1.d, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)])), vec4<u32>(u_input.a, 4294967295u, 7987u, u_input.a)) % vec4<u32>(32u)))) ^ _wgslsmith_mod_vec4_i32(max(vec4<i32>(-29238i, i32(-1i) * -1i, -47112i, arg_1.a & arg_0.b.x), ~vec4<i32>(arg_1.a, arg_0.b.x, -25411i, 1i)), firstLeadingBit(~vec4<i32>(-85675i, -6144i, 16708i, -2147483647i)));
    let var_1 = 473f;
    let var_2 = -360f;
    let var_3 = arg_0;
    return ~abs(max(var_0, vec3<u32>(_wgslsmith_clamp_u32(0u, 47993u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15736u, 20u)], 20u)]), abs(11090u), _wgslsmith_sub_u32(18194u, 8866u))));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(222f, 963f) * vec2<f32>(-1590f, 1410f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(129f, 125f) * vec2<f32>(1274f, 975f))))))), max(global0.xyy, ~global0.wyx) << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, ~19966u, u_input.a), func_3(Struct_3(vec2<f32>(2254f, -842f), global0.xyz), Struct_1(-2147483647i, 25433u, global3.x, 1u, vec2<bool>(global3.x, global3.x)), _wgslsmith_f_op_f32(551f * 1228f))) % vec3<u32>(32u)));
    var var_1 = select(!(!(!(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)))), select(vec4<bool>(-196f != _wgslsmith_f_op_f32(var_0.a.x + 498f), any(!vec4<bool>(false, false, true, global3.x)), (false || global3.x) || any(vec4<bool>(false, global3.x, false, true)), select(global3.x, false, true) == (false == global3.x)), select(!(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), !vec4<bool>(false, false, true, global3.x), select(!vec4<bool>(global3.x, global3.x, global3.x, global3.x), select(vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(false, global3.x, true, true), vec4<bool>(false, global3.x, true, global3.x)), select(vec4<bool>(false, true, false, global3.x), vec4<bool>(false, false, global3.x, false), global3.x))), global3.x), vec4<bool>((global3.x && global3.x) | true, !all(!vec2<bool>(true, global3.x)), !global3.x, !global3.x));
    let var_2 = global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(1u, 20u)], ~func_3(Struct_3(var_0.a, vec3<i32>(var_0.b.x, arg_0, u_input.b)), Struct_1(17099i, global2[_wgslsmith_index_u32(35481u, 20u)], true, 6802u, var_1.xz), var_0.a.x).x), 20u)] & abs(_wgslsmith_dot_vec2_u32(vec2<u32>(113927u, 0u), vec2<u32>(abs(1u), global2[_wgslsmith_index_u32(1u, 20u)]))), 14u)];
    let var_3 = _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(1u, u_input.a, u_input.a, u_input.a) | countOneBits(vec4<u32>(u_input.a, 0u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 20u)])))), vec4<u32>(global2[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~(~0u), 20u)], 0u), 29105u, ~(~66817u)));
    global3 = !(!var_1.yy);
    return vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~21329u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], global2[_wgslsmith_index_u32(108u, 20u)], 0u), var_3.yyx)), min(~0u, _wgslsmith_add_u32(~4294967295u, global2[_wgslsmith_index_u32(var_3.x, 20u)] << (u_input.a % 32u))), ~abs(_wgslsmith_clamp_u32(u_input.a, 80604u, global2[_wgslsmith_index_u32(0u, 20u)]))), ~firstTrailingBit(firstLeadingBit(~u_input.a)), global2[_wgslsmith_index_u32(8157u, 20u)], _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global2[_wgslsmith_index_u32(var_3.x, 20u)], 81658u, var_3.x)) << (~var_3.wzw % vec3<u32>(32u)), ((var_3.xyy << (vec3<u32>(4294967295u, var_3.x, 6691u) % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(1u, var_3.x, global2[_wgslsmith_index_u32(1u, 20u)])) % vec3<u32>(32u))) & vec3<u32>(~1u, 4294967295u, _wgslsmith_mult_u32(44077u, 1u))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-39283i, -2147483647i, _wgslsmith_mod_i32(~_wgslsmith_div_i32(u_input.b, 0i), 2147483647i), abs(-_wgslsmith_sub_i32(-24452i, -24822i))), vec4<i32>(u_input.b, -1i, -2759i, _wgslsmith_sub_i32(-2147483647i, 1i)));
    var var_1 = true;
    var var_2 = Struct_4(arg_1.a, 1f, Struct_2(~_wgslsmith_mod_vec4_u32(func_2(2147483647i), ~vec4<u32>(39681u, u_input.a, 30199u, global2[_wgslsmith_index_u32(arg_1.a.x, 20u)]))), Struct_1(20115i, 32729u, global3.x, ~(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(51244u, 20u)], 79710u) << (~474u % 32u)), vec2<bool>(true, !(global3.x || false))), !(!global3.x));
    let var_3 = min(~arg_1.a, var_2.a);
    let var_4 = arg_0 >> (var_3.wyx % vec3<u32>(32u));
    return _wgslsmith_add_vec3_u32(var_2.a.zyy, var_4);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    global1 = array<vec2<i32>, 14>();
    var var_0 = vec4<bool>(u_input.b > _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-34561i, u_input.b, -1i, global0.x), vec4<i32>(arg_2.b.x, -22870i, -1i, u_input.b)) | u_input.b, 17176i, u_input.b), true, true, any(!select(select(vec4<bool>(false, arg_3.e, false, global3.x), vec4<bool>(true, global3.x, true, arg_3.e), vec4<bool>(true, arg_3.e, true, arg_3.e)), !vec4<bool>(false, false, true, global3.x), true)));
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_2.a.x));
    let var_2 = 2147483647i;
    let var_3 = vec3<u32>(~_wgslsmith_mult_u32(func_2(-32497i).x, func_2(arg_3.d.a).x), 130336u, arg_3.d.d);
    return Struct_1(~(~var_2), func_1(~(~(~vec3<u32>(arg_0.x, 0u, 6429u))), Struct_2(arg_3.a & arg_1.a)).x, 0u <= func_2(arg_2.b.x).x, _wgslsmith_mod_u32(arg_1.a.x, u_input.a), !(!var_0.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1488f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(374f, -337f)) - _wgslsmith_f_op_f32(select(1494f, -1263f, true)))), -878f);
    var var_1 = global0.zz;
    var var_2 = func_4(select(vec3<u32>(firstTrailingBit(~u_input.a), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 23899u) ^ ~1u, 1u), select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 72315u), vec3<u32>(global2[_wgslsmith_index_u32(26764u, 20u)], global2[_wgslsmith_index_u32(41135u, 20u)], 49977u)), vec3<u32>(29289u, global2[_wgslsmith_index_u32(35792u, 20u)], global2[_wgslsmith_index_u32(20637u, 20u)])), _wgslsmith_add_vec3_u32(func_1(vec3<u32>(global2[_wgslsmith_index_u32(8644u, 20u)], u_input.a, 94071u), Struct_2(vec4<u32>(global2[_wgslsmith_index_u32(42975u, 20u)], 1u, 0u, 4294967295u))), vec3<u32>(23141u, u_input.a, 4294967295u)), select(select(vec3<bool>(false, true, global3.x), vec3<bool>(true, global3.x, true), global3.x), vec3<bool>(false, true, global3.x), vec3<bool>(global3.x, true, global3.x))), true), Struct_2(_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a, u_input.a, 2776u)), _wgslsmith_add_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], u_input.a, 10803u, global2[_wgslsmith_index_u32(u_input.a, 20u)]), ~vec4<u32>(6050u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], u_input.a)))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-352f - _wgslsmith_f_op_f32(min(-452f, var_0))), var_0), vec3<i32>(~4943i, _wgslsmith_clamp_i32(global0.x, 6125i, -26756i) >> (global2[_wgslsmith_index_u32(1u, 20u)] % 32u), ~var_1.x)), Struct_4(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(69539u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21934u, 20u)], 20u)]), 1u, 1u, global2[_wgslsmith_index_u32(abs(46849u), 20u)]), vec4<u32>(u_input.a, 0u, func_2(-13399i).x, 6881u)), var_0, Struct_2(~(vec4<u32>(4294967295u, 27310u, 20792u, 1u) | vec4<u32>(0u, u_input.a, 1u, u_input.a))), Struct_1(_wgslsmith_add_i32(-58551i, -1i), u_input.a >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 20u)] % 32u), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(global3.x, false))), 54720u, vec2<bool>(true, true)), !global3.x));
    let var_3 = Struct_1(~(-41580i), var_2.d, func_4(vec3<u32>(~5424u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 50177u), vec3<u32>(var_2.d, global2[_wgslsmith_index_u32(var_2.d, 20u)], 22717u)), ~u_input.a) << (~firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, var_2.d)) % vec3<u32>(32u)), Struct_2(~(~vec4<u32>(0u, 0u, u_input.a, 4294967295u))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, -468f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_div_vec3_i32(global0.wwx, global0.wwy) ^ (vec3<i32>(-40141i, u_input.b, -1i) ^ global0.wzz)), Struct_4(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 561u, 1u, 20537u), vec4<u32>(u_input.a, 4294967295u, 51944u, global2[_wgslsmith_index_u32(var_2.d, 20u)]), vec4<u32>(u_input.a, var_2.d, var_2.b, var_2.d)), _wgslsmith_f_op_f32(f32(-1f) * -686f), Struct_2(vec4<u32>(4294967295u, 85287u, var_2.d, var_2.b)), Struct_1(u_input.b, ~0u, !global3.x, ~var_2.b, vec2<bool>(var_2.e.x, false)), global3.x)).c, var_2.d, func_4(select(~(vec3<u32>(global2[_wgslsmith_index_u32(0u, 20u)], 1u, 4294967295u) | vec3<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 20u)])), ~abs(vec3<u32>(0u, u_input.a, global2[_wgslsmith_index_u32(var_2.d, 20u)])), (var_1.x >> (69454u % 32u)) != global0.x), Struct_2(vec4<u32>(0u << (1u % 32u), _wgslsmith_div_u32(0u, var_2.d), var_2.b & global2[_wgslsmith_index_u32(15638u, 20u)], u_input.a)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, -108f)))), global0.wyw), Struct_4(vec4<u32>(~global2[_wgslsmith_index_u32(86724u, 20u)], global2[_wgslsmith_index_u32(80398u, 20u)], var_2.b, u_input.a), _wgslsmith_f_op_f32(ceil(var_0)), Struct_2(vec4<u32>(1u, 61248u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 19483u)), func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], 0u, 28297u)), Struct_2(vec4<u32>(6824u, 9617u, u_input.a, 1u)), Struct_3(vec2<f32>(-1348f, var_0), global0.wyy), Struct_4(vec4<u32>(u_input.a, u_input.a, u_input.a, var_2.d), var_0, Struct_2(vec4<u32>(103771u, u_input.a, u_input.a, global2[_wgslsmith_index_u32(var_2.b, 20u)])), Struct_1(-2147483647i, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], true, global2[_wgslsmith_index_u32(var_2.b, 20u)], var_2.e), global3.x)), false)).e);
    var_2 = var_3;
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 197f), vec2<f32>(-120f, 924f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1307f, var_0) * vec2<f32>(var_0, -1000f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1007f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), var_2.e)))), vec3<i32>(var_3.a, firstLeadingBit(~u_input.b & (12497i & var_1.x)), _wgslsmith_sub_i32(u_input.b, countOneBits(u_input.b) ^ 0i)));
    var var_5 = ~reverseBits(var_3.a) << (~_wgslsmith_add_u32(~var_2.d & u_input.a, 24675u) % 32u);
    var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -747f) * _wgslsmith_f_op_f32(sign(-1000f))), var_4.a.x)), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1152f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) + _wgslsmith_f_op_f32(-var_0)), -792f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(var_4.a.x, 888f, global3.x)), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-var_4.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.a.x, -1173f, 303f), vec3<f32>(891f, var_4.a.x, 1026f))))))));
}

