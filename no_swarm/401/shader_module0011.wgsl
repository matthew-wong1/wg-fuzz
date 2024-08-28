struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(7128u, 0u);

var<private> global1: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec3<u32>) -> vec3<f32> {
    global1 = 2147483647i;
    var var_0 = arg_1.a.c.yz;
    var var_1 = reverseBits(vec2<i32>(24040i, -2147483647i));
    var var_2 = arg_1.a;
    let var_3 = Struct_2(1513f);
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_1.a.c.wxx * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-366f, 744f), _wgslsmith_f_op_f32(-var_2.c.x), -457f) + vec3<f32>(var_0.x, 361f, _wgslsmith_f_op_f32(abs(var_3.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2.c.xyx), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a, -458f, -381f), arg_1.a.c.wwz))))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(min(0u, u_input.e.x), 28901u) << (_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x), countOneBits(vec2<u32>(0u, 1u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(21414u, arg_3), u_input.a.yz)) << (vec2<u32>(min(_wgslsmith_add_u32(13231u, min(global0.x, 4294967295u)), global0.x), ~(~0u ^ max(40245u, u_input.a.x))) % vec2<u32>(32u));
    global1 = -(~arg_1.a.d);
    let var_0 = true;
    global0 = arg_2.a.zy;
    var var_1 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1413f), -621f, _wgslsmith_div_f32(-1458f, _wgslsmith_f_op_f32(ceil(-337f))), _wgslsmith_f_op_f32(-var_1.a.c.x)));
}

fn func_2() -> f32 {
    var var_0 = u_input.b;
    let var_1 = Struct_4(Struct_1(u_input.a.xyw & ~(vec3<u32>(u_input.a.x, global0.x, u_input.a.x) & vec3<u32>(69675u, 119094u, global0.x)), all(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(603f, -475f, -312f, -842f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(false, true, false, true), Struct_4(Struct_1(vec3<u32>(1u, 4294967295u, 1u), true, vec4<f32>(745f, 391f, -367f, 363f), u_input.c), false, 10483u, true), Struct_1(vec3<u32>(global0.x, u_input.a.x, 2807u), true, vec4<f32>(497f, -1282f, -567f, -808f), u_input.c), global0.x)), true)))), -(i32(-1i) * -1i)), any(vec2<bool>(all(vec3<bool>(false, false, false)), false)), 5016u, false);
    var var_2 = Struct_2(var_1.a.c.x);
    var var_3 = -var_0.zz;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1331f, 967f)) - -969f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: u32) -> vec2<u32> {
    var var_0 = Struct_4(Struct_1(arg_0.yxx, all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + 1089f) + _wgslsmith_f_op_f32(floor(560f))), arg_2.a, arg_1.x, _wgslsmith_f_op_f32(-arg_2.a)), i32(-1i) * -30481i), !(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x | u_input.b.x) >= _wgslsmith_add_i32(~u_input.b.x, -u_input.b.x)), min(arg_3, 0u), true);
    var var_1 = Struct_2(-1640f);
    var_0 = Struct_4(var_0.a, var_0.a.b, global0.x, true);
    return select(arg_0.zz, firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(44033u, global0.x) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, global0.x), u_input.e, arg_0.xx) % vec2<u32>(32u)), arg_0.xz)), vec2<bool>(var_0.d, all(!vec3<bool>(var_0.a.b, var_0.b, var_0.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(~abs(global0.x), max(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, global0.x), _wgslsmith_mod_u32(4294967295u, u_input.e.x)), ~0u));
    global0 = min(firstTrailingBit(func_4(vec4<u32>(firstLeadingBit(71451u), ~21979u, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mult_i32(u_input.b.x, u_input.c), Struct_4(Struct_1(vec3<u32>(72118u, 22932u, 39787u), true, vec4<f32>(198f, 244f, 1726f, 387f), -2147483647i), true, global0.x, false), min(u_input.a.xyy, vec3<u32>(0u, u_input.e.x, 81037u)))), Struct_2(_wgslsmith_f_op_f32(func_2())), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, 0u), vec3<u32>(global0.x, u_input.e.x, 4294967295u)))), _wgslsmith_mod_vec2_u32((~vec2<u32>(66385u, u_input.a.x) >> (_wgslsmith_div_vec2_u32(u_input.a.zx, u_input.a.yy) % vec2<u32>(32u))) & vec2<u32>(36745u, 1u), vec2<u32>(~(32545u | global0.x), ~4294967295u & (global0.x >> (40424u % 32u)))));
    global0 = vec2<u32>(global0.x, global0.x);
    var var_0 = false;
    var var_1 = -_wgslsmith_mod_vec3_i32(vec3<i32>(~(u_input.b.x >> (u_input.e.x % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(53753i, 40281i, -12319i, u_input.c), _wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), abs(u_input.b.x)), ~u_input.b.xyz);
    global0 = select(u_input.e, vec2<u32>(~_wgslsmith_add_u32(global0.x, ~1u), ~u_input.a.x), vec2<bool>(~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) > 1i, all(vec4<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, false)), false, true))));
    global0 = vec2<u32>(~(32068u << (reverseBits(_wgslsmith_sub_u32(u_input.d, 0u)) % 32u)), ~0u);
    var_1 = vec3<i32>(~(-(i32(-1i) * -var_1.x)), u_input.b.x, ~_wgslsmith_mod_i32(var_1.x << (global0.x % 32u), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(932f)))), _wgslsmith_f_op_f32(f32(-1f) * -940f), 164f, -410f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f - 343f)), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec4_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_4(Struct_1(vec3<u32>(4294967295u, 8255u, u_input.a.x), true, vec4<f32>(597f, 756f, 1066f, 953f), _wgslsmith_sub_i32(u_input.c, 35895i)), select(true, false, true), ~4294967295u & ~global0.x, _wgslsmith_mod_i32(0i, u_input.b.x) <= countOneBits(u_input.c)), Struct_1(u_input.a.zxz, all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, 227f, -352f, -975f)), u_input.b.x), 1u)), min(abs(countOneBits(u_input.a.x)), ~u_input.a.x), vec3<i32>(reverseBits(0i), u_input.b.x, 1i), -var_1.x);
}

