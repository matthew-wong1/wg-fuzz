struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-1i, vec4<bool>(false, true, true, true), vec2<i32>(1i, 27694i), vec3<i32>(-1i, -13910i, -1i), 1u);

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> u32 {
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1711f, 1423f))), 1f, _wgslsmith_div_f32(2046f, _wgslsmith_f_op_f32(f32(-1f) * -132f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(190f, -2633f)) + 312f))));
    global2 = array<Struct_1, 5>();
    return _wgslsmith_dot_vec3_u32(u_input.e.xyz << (~firstTrailingBit(vec3<u32>(u_input.e.x, global1.e, 77007u)) % vec3<u32>(32u)), vec3<u32>(0u, _wgslsmith_div_u32(108207u, 40886u) | _wgslsmith_clamp_u32(24762u, max(arg_2.e, 42317u), _wgslsmith_mod_u32(u_input.d, global0.e)), u_input.e.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = 35095u;
    global2 = array<Struct_1, 5>();
    var var_1 = arg_0;
    var_0 = ~global1.e;
    global0 = Struct_1(-(_wgslsmith_clamp_i32(13157i, -global1.a, 1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -21886i, 1i, u_input.a), vec4<i32>(25052i, -2147483647i, -1i, 120308i))), select(vec4<bool>(true, global0.b.x, true, !(!var_1.b.x)), global0.b, select(!(!vec4<bool>(global0.b.x, var_1.b.x, true, true)), select(vec4<bool>(var_1.b.x, global0.b.x, false, true), select(vec4<bool>(global1.b.x, true, true, arg_0.b.x), vec4<bool>(true, var_1.b.x, var_1.b.x, false), vec4<bool>(true, global0.b.x, global1.b.x, var_1.b.x)), vec4<bool>(true, var_1.b.x, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0.b.x, true, true), arg_0.b))), -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-53219i, 5481i, -10632i, -2147483647i), vec4<i32>(u_input.a, global0.c.x, var_1.a, u_input.a)), -1844i), vec2<i32>(i32(-1i) * -88026i, max(1i, global0.d.x))), ~_wgslsmith_mod_vec3_i32(countOneBits(var_1.d), vec3<i32>(-1i, -global1.a, 1i)), u_input.b);
    return ~_wgslsmith_mult_u32(4294967295u, 5081u ^ abs(var_1.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<f32> {
    global1 = Struct_1(select(~global1.a >> (~arg_1.e % 32u), arg_1.c.x, any(vec4<bool>(false, arg_1.b.x, global0.b.x, false)) | all(!arg_1.b.xzx)), vec4<bool>(false, (select(global1.b.x, true, false) & true) && any(!vec4<bool>(arg_0.b.x, true, global0.b.x, true)), all(!(!vec2<bool>(global1.b.x, false))), !(true && (arg_0.d.x >= arg_0.d.x))), vec2<i32>(-1i) * -(~(vec2<i32>(2147483647i, -9963i) | global1.c)), firstTrailingBit(~(-(vec3<i32>(arg_1.d.x, global0.c.x, 2147483647i) << (u_input.e.yxx % vec3<u32>(32u))))), 0u);
    var var_0 = Struct_1(global1.a, arg_0.b, _wgslsmith_mult_vec2_i32(global1.d.xx, -select(vec2<i32>(54572i, 1i), ~global0.d.zz, arg_1.b.wz)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-16033i, -global0.a, -arg_1.c.x), vec3<i32>(i32(-1i) * -27175i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.x, u_input.a, 1i, -1i), vec4<i32>(global0.d.x, 30510i, arg_0.c.x, global0.d.x)) << (~global1.e % 32u), ~select(arg_0.c.x, -2147483647i, global0.b.x))), u_input.e.x);
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    let var_1 = any(var_0.b.wyy);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) + vec2<f32>(-2232f, _wgslsmith_f_op_f32(floor(-608f))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(global2[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(func_3(true, -19475i, global2[_wgslsmith_index_u32(1u, 5u)]), 5u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(240f, 1411f, -1000f) - vec3<f32>(-963f, 106f, 360f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-516f, -378f, -466f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, -1145f, -1411f, -1087f))), 5u)], Struct_1(-3196i, !global1.b, _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-1i, u_input.a)), ~vec2<i32>(0i, 0i), vec2<i32>(-5076i, 81701i)), -(~global0.d), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, global1.e, 77687u), u_input.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, -984f))))) - vec2<f32>(-1370f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_5(global2[_wgslsmith_index_u32(79895u, 5u)], global2[_wgslsmith_index_u32(global1.e | 36762u, 5u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-244f, 1316f)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(116f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 477f, var_0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, -1083f, -1328f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), -1354f, _wgslsmith_f_op_f32(f32(-1f) * -2097f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 601f))))))));
    global1 = global2[_wgslsmith_index_u32(global1.e | abs(~global0.e), 5u)];
    let var_2 = Struct_1(-global1.c.x, !vec4<bool>(true, !any(global1.b), arg_1, !(!arg_1)), select(-global0.c, global0.c, false), ~_wgslsmith_add_vec3_i32(global1.d, global0.d), 1u);
    let var_3 = Struct_1(u_input.a, vec4<bool>(global1.c.x == ~_wgslsmith_sub_i32(1i, -78722i), arg_1 & global1.b.x, all(select(select(var_2.b.ww, vec2<bool>(true, true), arg_1), var_2.b.wy, select(vec2<bool>(false, false), vec2<bool>(false, true), global0.b.xw))), !select(any(vec3<bool>(global0.b.x, false, global1.b.x)), any(vec3<bool>(true, global1.b.x, global1.b.x)), var_2.b.x)), vec2<i32>(countOneBits((var_2.c.x << (1u % 32u)) & var_2.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-5567i, var_2.c.x), min(global0.a, global0.c.x)), var_2.d.xy)), vec3<i32>(~var_2.c.x, ~(-min(global1.d.x, u_input.a)), -u_input.a), _wgslsmith_div_u32(~18483u, _wgslsmith_clamp_u32(~arg_0, func_4(Struct_1(global0.c.x, vec4<bool>(global1.b.x, arg_1, var_2.b.x, global1.b.x), vec2<i32>(2147483647i, var_2.d.x), var_2.d, 62008u), vec3<f32>(var_0.x, var_1.x, var_0.x), vec4<f32>(-1389f, var_1.x, var_1.x, -2152f)), firstTrailingBit(abs(0u)))));
    return Struct_1(firstLeadingBit(1i << (_wgslsmith_add_u32(20045u & var_3.e, global1.e) % 32u)), !select(global0.b, select(vec4<bool>(var_3.b.x, false, global1.b.x, var_2.b.x), !vec4<bool>(var_3.b.x, arg_1, global1.b.x, global1.b.x), all(vec3<bool>(var_2.b.x, arg_1, true))), global1.b), vec2<i32>(reverseBits(~abs(2147483647i)), _wgslsmith_add_i32(abs(global0.c.x), 6786i)), var_3.d, u_input.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    global2 = array<Struct_1, 5>();
    global1 = func_2(~firstTrailingBit(_wgslsmith_mod_u32(firstLeadingBit(1u), global1.e)), true);
    let var_0 = arg_2;
    var var_1 = arg_1.c.x | arg_0.d.x;
    let var_2 = arg_0;
    return -463f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(global0.e, 5u)];
    let var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(0i, vec4<bool>(false, var_0.x, false, true), vec2<i32>(2147483647i, u_input.a), vec3<i32>(-1213i, global0.d.x, 0i), global1.e), Struct_1(1i, vec4<bool>(true, true, true, false), global0.c, global1.d, global0.e), global2[_wgslsmith_index_u32(4294967295u, 5u)], global1.b.x != true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(trunc(167f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, -307f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-651f, 1000f, false)), _wgslsmith_f_op_f32(step(911f, -479f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_5(func_2(u_input.e.x, true), Struct_1(-32546i, vec4<bool>(false, global1.b.x, global0.b.x, false), global0.c, vec3<i32>(-1i, -2147483647i, 5543i), global1.e), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(373f, -222f))))).x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(1791i, global0.b, global0.d.yx, vec3<i32>(2147483647i, -1i, global0.a), 1u), global2[_wgslsmith_index_u32(global0.e, 5u)], vec2<f32>(-2227f, 1939f))).x, -632f))))));
    var var_2 = global2[_wgslsmith_index_u32(~0u, 5u)];
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-217f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(-10181i, global1.b, global1.d.zx, global1.d, 4294967295u), Struct_1(2147483647i, vec4<bool>(false, var_2.b.x, global1.b.x, var_0.x), vec2<i32>(global1.c.x, global0.d.x), vec3<i32>(var_2.d.x, global1.a, 30192i), 32371u), vec2<f32>(var_1.x, -307f))).x, -297f)) * -898f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(floor(var_1.x)))) - 1155f));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(!func_2(4294967295u | global0.e, -33362i == var_2.d.x).b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(-var_2.c.x, var_2.d.x), -2147483647i), func_2(0u, var_2.b.x)), -(~max(vec4<i32>(3243i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(-2147483647i, -35091i, var_2.c.x, global1.d.x))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(-40894i), _wgslsmith_add_i32(global0.d.x, -2147483647i), _wgslsmith_clamp_i32(-39671i, -2147483647i, 0i), ~(-47113i)), vec4<i32>(u_input.a | global1.d.x, 1i, -2147483647i, ~var_2.a), ~vec4<i32>(-2147483647i, var_2.d.x, 1i, -7268i) | ~vec4<i32>(22949i, -1i, global0.a, -9027i)), u_input.e);
}

