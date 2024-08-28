struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = global0.x;
    var var_1 = ~_wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(-8379i), abs(-2147483647i)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 2147483647i)) << (firstTrailingBit(vec2<u32>(24100u, 1692u)) % vec2<u32>(32u)), ~(~vec2<i32>(23573i, 0i))));
    let var_2 = ~(vec3<u32>(4294967295u, ~0u, ~select(u_input.a.x, u_input.a.x, false)) | (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 23257u, 628u) & vec3<u32>(u_input.a.x, u_input.a.x, 0u), ~vec3<u32>(1u, u_input.a.x, u_input.a.x)) >> (max(vec3<u32>(1u, 15860u, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, 52328u), vec3<u32>(1u, u_input.a.x, u_input.a.x) & vec3<u32>(35160u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))));
    var var_3 = true;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-226f)) * _wgslsmith_f_op_f32(267f * _wgslsmith_f_op_f32(271f - -1000f))))), reverseBits(select(vec3<i32>(31074i, var_1.x, -4555i), abs(vec3<i32>(-17272i, var_1.x, 56247i)), global0.x != false) | _wgslsmith_div_vec3_i32(-vec3<i32>(var_1.x, 12522i, -17427i), vec3<i32>(-56758i, var_1.x, 1i))));
    return var_4.a;
}

fn func_2() -> Struct_2 {
    var var_0 = select(select(vec3<bool>(!any(global0.xx), false && !global0.x, false), vec3<bool>(_wgslsmith_f_op_f32(func_3()) > _wgslsmith_div_f32(-367f, -1392f), true, true), false), !(!select(vec3<bool>(true, false, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), global0.x), vec3<bool>(global0.x, true, true))), true);
    var var_1 = 50430u ^ _wgslsmith_clamp_u32(74675u, 4294967295u, u_input.a.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(1059f, _wgslsmith_f_op_f32(-1f))), vec3<i32>(1i, 1i, 1i));
    global0 = select(vec3<bool>(true, global0.x, global0.x), select(select(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false), var_0.x), !(!vec3<bool>(true, global0.x, global0.x)), true), select(vec3<bool>(true, !global0.x, var_2.a >= var_2.a), select(vec3<bool>(var_0.x, false, global0.x), vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(true, false, false), vec3<bool>(global0.x, var_0.x, false), true)), any(vec2<bool>(var_0.x, var_0.x))), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true), global0.x)), var_0.x);
    var var_3 = 0u;
    return Struct_2(var_2.a, var_2.b);
}

fn func_1() -> vec3<f32> {
    var var_0 = func_2();
    var var_1 = ~(~(~vec2<u32>(abs(u_input.a.x), u_input.a.x)));
    global0 = vec3<bool>(all(!(!vec3<bool>(false, global0.x, false))) && !(!global0.x), all(vec3<bool>(true, true, true)) && ((u_input.a.x >= ~13330u) || global0.x), global0.x);
    let var_2 = var_0.b.x;
    let var_3 = !all(select(vec2<bool>(global0.x, !global0.x), global0.xy, global0.yz));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, _wgslsmith_f_op_f32(func_3()), var_0.a)) - vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), 223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f)), _wgslsmith_f_op_f32(min(180f, -770f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2243f, 863f, -848f) * vec3<f32>(-1649f, 954f, var_0.a))) - vec3<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), var_0.a, _wgslsmith_f_op_f32(var_0.a + -997f)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 85550u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 66076u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_add_u32(41269u, countOneBits(6367u)), 16314u), u_input.a.x, firstTrailingBit(69738u)), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_0.b.x, arg_0.b.x, -2147483647i), select(~vec4<i32>(-19123i, arg_0.b.x, arg_0.b.x, arg_0.b.x), -vec4<i32>(1i, arg_0.b.x, arg_0.b.x, -1i), global0.x)), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(ceil(1340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1234f * _wgslsmith_f_op_f32(arg_1 - arg_2.x)))), !(!(any(vec4<bool>(true, global0.x, false, global0.x)) || global0.x)));
    let var_1 = 1i;
    var var_2 = Struct_1(~abs(var_0.a), -_wgslsmith_div_i32(-2147483647i, -51797i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_2 + vec3<f32>(var_0.c.x, 483f, -160f)), vec3<f32>(-655f, arg_2.x, 524f), !vec3<bool>(false, var_0.d, var_0.d))), var_0.c, select(global0.x, any(global0.xz), false))))), true || any(!vec2<bool>(global0.x, global0.x)));
    global1 = firstLeadingBit(-13808i);
    global1 = -(_wgslsmith_dot_vec2_i32(arg_0.b.xz, ~vec2<i32>(arg_0.b.x, var_2.b)) << (u_input.a.x % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-253f, _wgslsmith_f_op_f32(func_4(Struct_2(-955f, ~vec3<i32>(-32125i, 0i, 0i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) + -1112f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1967f, 759f, -661f))) + _wgslsmith_f_op_vec3_f32(func_1())))))), 471f, 755f);
    global0 = vec3<bool>(_wgslsmith_clamp_i32(4896i, _wgslsmith_mod_i32(1i, 1i), ~(~(-10378i))) != _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-19745i, 2147483647i, -76910i, -2147483647i)), min(vec4<i32>(-2147483647i, 26563i, 14276i, 1i) << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u) % vec4<u32>(32u)), vec4<i32>(0i, -22155i, -1i, -1i))), global0.x, true);
    let var_1 = Struct_2(var_0.x, vec3<i32>(reverseBits(-(0i << (u_input.a.x % 32u))), 11481i, 7970i));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))), -1123f, var_1.a);
    global1 = var_1.b.x;
    var var_3 = Struct_1(~min(vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(24510u, u_input.a.x), 6028u), select(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(1u, 1u, 1u), !global0.x)), 1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zyx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_1.a, -353f), vec3<f32>(620f, var_2.x, var_0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), false))) * vec3<f32>(-1000f, var_1.a, _wgslsmith_f_op_f32(-var_1.a))), !vec3<bool>(all(vec3<bool>(false, true, true)), global0.x, any(global0.xx)))), (i32(-1i) * -firstLeadingBit(var_1.b.x)) != (_wgslsmith_div_i32(var_1.b.x, var_1.b.x << (u_input.a.x % 32u)) << (1u % 32u)));
    var var_4 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(var_3.a.x, var_3.a.x, var_3.a.x), 32782u, var_3.a.x) & var_3.a, 1i, _wgslsmith_f_op_vec3_f32(-var_2), !all(select(!vec4<bool>(var_3.d, false, true, false), select(vec4<bool>(global0.x, var_3.d, var_3.d, false), vec4<bool>(false, false, global0.x, var_3.d), vec4<bool>(var_3.d, global0.x, var_3.d, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~vec3<i32>(~_wgslsmith_sub_i32(var_3.b, -24515i), ~firstLeadingBit(var_1.b.x), i32(-1i) * -var_3.b), _wgslsmith_add_u32(firstLeadingBit(~(~74308u)), _wgslsmith_mult_u32(24478u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, var_3.a.x, 77030u, 0u), vec4<u32>(18930u, u_input.a.x, var_4.a.x, 4294967295u)), 26390u))), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(420f)), var_1.a))));
}

