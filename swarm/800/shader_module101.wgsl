struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(1u), Struct_4(73630u), Struct_4(4294967295u), Struct_4(0u), Struct_4(57442u), Struct_4(16606u), Struct_4(1u), Struct_4(54710u), Struct_4(21826u), Struct_4(4294967295u), Struct_4(1u), Struct_4(38824u), Struct_4(28973u), Struct_4(4294967295u), Struct_4(19927u), Struct_4(5894u), Struct_4(39514u), Struct_4(1072u), Struct_4(1u), Struct_4(1u), Struct_4(4294967295u), Struct_4(21547u), Struct_4(47115u), Struct_4(1u), Struct_4(0u), Struct_4(29764u), Struct_4(72051u), Struct_4(1u));

var<private> global1: Struct_4 = Struct_4(1u);

var<private> global2: array<bool, 11> = array<bool, 11>(true, false, true, true, true, false, true, false, false, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.a.xz);
    let var_1 = -vec4<i32>(0i, arg_3.b.a, _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.x, _wgslsmith_div_i32(-1i, u_input.a)), (u_input.a >> (0u % 32u)) >> (firstLeadingBit(1u) % 32u), _wgslsmith_dot_vec2_i32(arg_3.c.yy, arg_3.c.zz)), _wgslsmith_clamp_i32(~_wgslsmith_div_i32(-2147483647i, arg_0.x), -select(13321i, 0i, arg_3.a), abs(-47063i) >> (1u % 32u)));
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    return vec4<bool>(arg_2.b.x, global2[_wgslsmith_index_u32(arg_3.b.b.x, 11u)], true, arg_3.b.b.x >= _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_3.b.b.x, firstTrailingBit(0u)), 28501u >> (0u % 32u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec2<i32> {
    global2 = array<bool, 11>();
    var var_0 = !(true || global2[_wgslsmith_index_u32(~(global1.a >> ((global1.a << (arg_1 % 32u)) % 32u)), 11u)]);
    var var_1 = !(!(!vec3<bool>(true, !global2[_wgslsmith_index_u32(0u, 11u)], global1.a < 0u)));
    let var_2 = all(var_1.zx);
    global1 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    return vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.x << (u_input.b % 32u), -30620i, 3720i, min(u_input.d, -29539i)), ~vec4<i32>(1i, arg_0.x, arg_0.x, u_input.d), select(func_3(vec4<i32>(24275i, u_input.d, arg_0.x, u_input.a), var_2, Struct_3(vec4<f32>(1094f, 491f, -227f, 292f), vec3<bool>(false, var_2, var_2), vec3<f32>(-1548f, 333f, -100f)), Struct_2(global2[_wgslsmith_index_u32(arg_1, 11u)], Struct_1(24566i, vec2<u32>(arg_1, 4294967295u)), vec3<i32>(1i, 1i, u_input.d), vec4<f32>(316f, 1106f, -818f, 2704f))), !vec4<bool>(false, true, var_2, false), false)), vec4<i32>(u_input.a, -2147483647i, -max(1i, arg_0.x), _wgslsmith_dot_vec2_i32(-arg_0, vec2<i32>(-52639i, arg_0.x)))), arg_0.x);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> Struct_5 {
    let var_0 = Struct_2(false && (func_3(firstTrailingBit(vec4<i32>(u_input.a, 25491i, arg_1.x, u_input.d)), true, Struct_3(vec4<f32>(arg_2, 1591f, 524f, arg_2), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], false, global2[_wgslsmith_index_u32(19536u, 11u)]), vec3<f32>(1000f, -1412f, -580f)), Struct_2(true, Struct_1(arg_1.x, vec2<u32>(0u, 25909u)), vec3<i32>(arg_1.x, arg_1.x, u_input.a), vec4<f32>(arg_2, arg_2, arg_2, -1000f))).x || true), Struct_1(i32(-1i) * -2147483647i, _wgslsmith_mult_vec2_u32(~vec2<u32>(27402u, global1.a), vec2<u32>(_wgslsmith_mult_u32(42685u, u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.c, global1.a), vec3<u32>(0u, u_input.e, global1.a))))), ~(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 20248i, arg_1.x, u_input.d), vec4<i32>(arg_1.x, -53538i, -11370i, 1i)), arg_1.x) | vec3<i32>(u_input.d, 1i, 47797i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -128f, arg_2, arg_2))) - vec4<f32>(_wgslsmith_f_op_f32(-221f + arg_2), _wgslsmith_f_op_f32(arg_2 - arg_2), -2062f, _wgslsmith_div_f32(arg_2, -973f)))));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    var var_2 = vec4<bool>(var_0.a, false, select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1129f + 1000f)) != arg_2, true, !global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 12889u), 11u)]), true);
    global2 = array<bool, 11>();
    var_2 = !func_3(select(~min(vec4<i32>(u_input.a, 80263i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, -35556i, arg_1.x, 0i)), max(vec4<i32>(arg_1.x, -12321i, -19169i, var_0.c.x), vec4<i32>(u_input.d, 33359i, u_input.d, arg_1.x)) >> (vec4<u32>(u_input.e, var_1.a, arg_0, 1u) % vec4<u32>(32u)), !(!vec4<bool>(var_0.a, false, var_2.x, false))), 17884u < u_input.e, Struct_3(vec4<f32>(_wgslsmith_f_op_f32(step(arg_2, arg_2)), _wgslsmith_f_op_f32(1303f * var_0.d.x), var_0.d.x, _wgslsmith_f_op_f32(arg_2 + var_0.d.x)), vec3<bool>(true, false, !var_2.x), _wgslsmith_f_op_vec3_f32(-var_0.d.wzy)), var_0);
    return Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(arg_2 + -110f), var_0.d.x), vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), _wgslsmith_f_op_f32(arg_2 * 756f))))));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_5 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.a, global1.a), 28u)];
    let var_0 = ~(vec2<u32>(_wgslsmith_sub_u32(1u, ~u_input.b), u_input.e) ^ vec2<u32>(4294967295u, 0u));
    let var_1 = vec4<u32>(~_wgslsmith_sub_u32(var_0.x, abs(~u_input.e)), var_0.x, ~77485u, ~88216u);
    global0 = array<Struct_4, 28>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2048f, _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(871f + 392f)))));
    return func_4(35138u, _wgslsmith_add_vec2_i32(countOneBits(~func_2(vec2<i32>(u_input.d, u_input.d), 44386u)), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-2147483647i, u_input.a)), abs(vec2<i32>(2147483647i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 28722i), vec2<i32>(-45674i, 2147483647i)))), _wgslsmith_f_op_f32(exp2(arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1446f, 1450f, -890f, -260f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1597f, -1433f, 1006f, 1850f), vec4<f32>(-1000f, -1371f, -528f, 661f), global2[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1105f, -557f, 1184f, 1941f))))), vec3<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(global1.a, 11u)], true)), any(!vec2<bool>(false, global2[_wgslsmith_index_u32(global1.a, 11u)])), any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], false)) | global2[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1367f, 538f, -923f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1506f, 1638f, -747f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-206f + 826f) - _wgslsmith_f_op_f32(-1901f + 1000f)), 996f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(55388u, u_input.b, u_input.b), vec3<u32>(global1.a, 8485u, global1.a)), ~global1.a, 48153u), vec2<i32>(1i, 1i) << (reverseBits(vec2<u32>(u_input.c, u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))).a.x, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -893f)))));
    global2 = array<bool, 11>();
    let var_2 = (select(~vec4<u32>(global1.a, u_input.b, 4294967295u, u_input.c) | vec4<u32>(global1.a, u_input.e, 2635u, u_input.c), reverseBits(~vec4<u32>(0u, 61549u, u_input.c, 50075u)), func_3(~vec4<i32>(-33872i, -1i, u_input.a, 2147483647i), all(vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 11u)], global2[_wgslsmith_index_u32(63416u, 11u)], global2[_wgslsmith_index_u32(30017u, 11u)], false)), Struct_3(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1128f), vec3<bool>(global2[_wgslsmith_index_u32(31926u, 11u)], global2[_wgslsmith_index_u32(global1.a, 11u)], false), vec3<f32>(var_1.x, -197f, var_0.a.x)), Struct_2(false, Struct_1(u_input.a, vec2<u32>(16538u, 60040u)), vec3<i32>(u_input.d, u_input.d, u_input.a), var_0.a))) & vec4<u32>(~select(global1.a, global1.a, false), max(77550u, 0u | global1.a), ~global1.a, global1.a)) & firstLeadingBit(abs(~(vec4<u32>(39116u, u_input.c, 4294967295u, global1.a) ^ vec4<u32>(global1.a, u_input.b, 1u, 18733u))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.yx << (((var_2.wz & var_2.xx) & select(vec2<u32>(1u, 0u), vec2<u32>(global1.a, 1u), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(0u, 11u)]))) % vec2<u32>(32u)), var_2.wz) & var_2.x, 28u)];
    var var_4 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(~global1.a, u_input.e, reverseBits(23351u), 0u), var_2 >> (~vec4<u32>(var_2.x, 89371u, 4294967295u, var_2.x) % vec4<u32>(32u))) << ((var_3.a ^ u_input.b) % 32u));
    global1 = global0[_wgslsmith_index_u32(~(~(~(~159601u) << (_wgslsmith_add_u32(27001u, u_input.c) % 32u))), 28u)];
    var var_5 = Struct_1(-_wgslsmith_mult_i32(-(27105i >> (global1.a % 32u)), ~u_input.d), select(vec2<u32>(_wgslsmith_mult_u32(29172u, ~global1.a), 26798u), _wgslsmith_sub_vec2_u32(select(var_2.wz << (vec2<u32>(u_input.c, global1.a) % vec2<u32>(32u)), abs(vec2<u32>(u_input.c, 8100u)), vec2<bool>(true, global2[_wgslsmith_index_u32(global1.a, 11u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(var_4.a, 12086u), ~var_2.yx)), !select(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 11u)]), select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(var_2.x, 11u)], global2[_wgslsmith_index_u32(var_3.a, 11u)]), true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(-1398f, u_input.c, ~(~vec2<i32>(~2486i, 1i)), (select(var_4.a | var_3.a, _wgslsmith_dot_vec2_u32(var_2.wy, var_5.b), true) << (1u % 32u)) | firstTrailingBit(u_input.c), -2147483647i);
}

