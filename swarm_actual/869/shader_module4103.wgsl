struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: array<bool, 32>;

var<private> global2: array<u32, 8>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-27211i, -u_input.b.x, _wgslsmith_add_i32(-42466i, 1i)), -global3.b.b.xzy) & ~_wgslsmith_add_i32(0i, global3.b.b.x), -abs(global3.b.c) & _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global3.b.c, global3.b.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 27364i, -2147483647i), vec3<i32>(20096i, -2147483647i, -1619i))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global3.b.a, 0i), u_input.b), ~vec2<i32>(1i, u_input.b.x)), i32(-1i) * -u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, _wgslsmith_f_op_f32(trunc(global3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - global3.a) - 525f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global3.a)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-269f, global3.a), _wgslsmith_f_op_f32(trunc(global3.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a + global3.a), _wgslsmith_f_op_f32(floor(global3.a))), 397f)));
    return _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~(~min(global3.b.d.xyx, vec3<u32>(arg_0.x, arg_0.x, global3.b.d.x))), ~_wgslsmith_clamp_vec3_u32(global3.b.d.zwy, global3.b.e.yww, vec3<u32>(0u, 4294967295u, global3.b.d.x)) << ((global3.b.d.xzx >> (global3.b.d.zxz % vec3<u32>(32u))) % vec3<u32>(32u))), global3.b.e.zxw);
}

fn func_2() -> Struct_1 {
    var var_0 = global3.b.d;
    global2 = array<u32, 8>();
    global1 = array<bool, 32>();
    let var_1 = Struct_1(8884i, global3.b.b, 20490i, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(func_3(global3.b.e.yy), _wgslsmith_div_vec3_u32(global3.b.e.zzx, vec3<u32>(global2[_wgslsmith_index_u32(42492u, 8u)], global3.b.e.x, 4042u))), _wgslsmith_sub_u32(~4294967295u, global3.b.d.x), 40796u, _wgslsmith_div_u32(1u >> (u_input.c % 32u), _wgslsmith_sub_u32(1u, 1u))), vec4<u32>(_wgslsmith_clamp_u32(reverseBits(global3.b.d.x), 0u, 1u), ~(global3.b.d.x ^ var_0.x), var_0.x, 1u)), global3.b.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global3.a)))));
    return Struct_1(_wgslsmith_div_i32(u_input.b.x << ((_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 8u)], 4294967295u, global2[_wgslsmith_index_u32(5470u, 8u)], 4294967295u), global3.b.d) << (var_1.d.x % 32u)) % 32u), global3.b.c), (vec4<i32>(-2147483647i, global3.b.a, u_input.b.x, var_1.b.x) >> ((min(global3.b.e, var_1.d) & select(global3.b.e, vec4<u32>(var_0.x, 5970u, 1u, global2[_wgslsmith_index_u32(global3.b.d.x, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(56376u, 32u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 32u)], false, global1[_wgslsmith_index_u32(4294967295u, 32u)]))) % vec4<u32>(32u))) | ~(-firstLeadingBit(vec4<i32>(global3.b.b.x, u_input.b.x, -2936i, -8709i))), -17811i, global3.b.e, var_1.e);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = -vec2<i32>(-20505i, 14580i);
    var var_2 = !select(vec3<bool>(all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 32u)], global1[_wgslsmith_index_u32(40003u, 32u)]), vec3<bool>(global1[_wgslsmith_index_u32(23357u, 32u)], global1[_wgslsmith_index_u32(u_input.c, 32u)], false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true, true))), false, all(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true, false))), select(!vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 32u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), !(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true, false)), vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.b.e.x, firstLeadingBit(global3.b.e.x)), 32u)]);
    global2 = array<u32, 8>();
    var var_3 = countOneBits(i32(-1i) * -2147483647i);
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global1 = array<bool, 32>();
    var var_0 = -arg_0.c;
    var var_1 = func_2();
    var_1 = arg_0;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(f32(-1f) * -1508f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_f_op_f32(f32(-1f) * -1833f))), global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1546f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a, global3.a))))))), global3.a);
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 8>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1204f)) * _wgslsmith_f_op_f32(-global3.a)))), global3.b);
    global0 = array<Struct_2, 30>();
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(var_0.b.b.x, func_4(func_1(-1287f), Struct_1(global3.b.c, vec4<i32>(-1i, -6001i, 1i, u_input.b.x), u_input.b.x, vec4<u32>(0u, var_0.b.d.x, global3.b.e.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50365u, 8u)], 8u)]), var_0.b.d)) | max(global3.b.c, -var_0.b.a)), global3.b.a, var_0.b.c, -global3.b.b.x);
    let var_2 = !(!select(vec3<bool>(all(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.b.e.x, 32u)])), !global1[_wgslsmith_index_u32(25061u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(41747u, 32u)], global1[_wgslsmith_index_u32(19161u, 32u)], true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(global3.b.e.x, 32u)], true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(73949u, 32u)])), global1[_wgslsmith_index_u32(~u_input.c, 32u)]), !all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], false, true))));
    global0 = array<Struct_2, 30>();
    var_0 = Struct_2(687f, global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(~4294967295u)), 47122u), _wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_mod_vec2_u32(var_0.b.d.xy | vec2<u32>(~4294967295u, ~4294967295u), ~min(_wgslsmith_mod_vec2_u32(var_0.b.e.wz, var_0.b.d.yy), var_0.b.e.wz)), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.b.c, var_1.x, -7487i), vec3<i32>(global3.b.b.x ^ -31305i, ~global3.b.b.x, -global3.b.a)), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_0.b.b.x), var_0.b.b.xz, var_0.b.b.zw), global3.b.b.wy), ~(-18812i), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, 41157i), min(var_1.x, -1i))));
}

