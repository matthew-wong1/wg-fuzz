struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>) -> bool {
    var var_0 = arg_0.a;
    global0 = array<vec2<u32>, 3>();
    var_0 = Struct_2(arg_0.a.b, arg_0.a.c, arg_0.a.c);
    var var_1 = firstLeadingBit(~0i);
    var var_2 = u_input.b.x;
    return 49534u >= ~(abs(13629u | u_input.b.x) ^ _wgslsmith_mult_u32(1u, 26138u));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), func_3(Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(true, false, true), false, true), Struct_1(vec3<bool>(true, false, false), false, true))), false, abs(vec4<i32>(u_input.a.x, u_input.a.x, 10007i, u_input.a.x))), any(vec4<bool>(true, true, true, true))), Struct_1(vec3<bool>(true, true, 0u > u_input.b.x), true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))), Struct_1(vec3<bool>(false, func_3(Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(false, false, false), true, true), Struct_1(vec3<bool>(false, false, false), false, true))), false, vec4<i32>(1i, -2147483647i, -11527i, u_input.a.x)), true), false, all(vec2<bool>(true, true)))));
    global0 = array<vec2<u32>, 3>();
    let var_1 = var_0;
    let var_2 = var_1;
    var var_3 = func_3(var_1, false, u_input.a);
    return u_input.a.x;
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = ~max(vec4<u32>(25442u, 1u, 15561u, u_input.b.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(12008u, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(57986u, u_input.b.x, u_input.b.x, 83833u), vec4<u32>(5242u, u_input.b.x, 1u, 4984u)))) >> (firstLeadingBit(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b.x, 69774u, u_input.b.x, 20911u)), vec4<u32>(~4294967295u, min(0u, 70923u), ~28111u, 0u))) % vec4<u32>(32u));
    var var_1 = select(select(vec2<bool>(true, select(any(vec3<bool>(true, true, false)), true, true)), vec2<bool>(select(false, all(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_f32(trunc(1152f)) >= _wgslsmith_f_op_f32(124f - -1156f)), vec2<bool>(false, _wgslsmith_mult_u32(u_input.b.x, var_0.x) > 23311u)), vec2<bool>(true, true), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), all(vec2<bool>(false, true)) & true)));
    var var_2 = ~func_2();
    let var_3 = !any(!vec2<bool>(!var_1.x, all(vec4<bool>(var_1.x, var_1.x, true, var_1.x))));
    var_1 = select(select(vec2<bool>(true, !var_1.x), vec2<bool>(true, true), (u_input.a.x & -25201i) != ~reverseBits(u_input.a.x)), !vec2<bool>(false, all(vec4<bool>(false, var_3, var_1.x, var_3)) | true), !all(vec2<bool>(true, true)));
    return any(!(!vec2<bool>(all(vec3<bool>(true, var_3, var_3)), var_1.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = -abs(u_input.a) << (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u) % vec4<u32>(32u));
    global0 = array<vec2<u32>, 3>();
    let var_1 = Struct_2(Struct_1(!(!select(vec3<bool>(arg_1, arg_2, false), vec3<bool>(arg_2, arg_1, arg_1), vec3<bool>(arg_2, arg_2, true))), !(30319i < _wgslsmith_sub_i32(var_0.x, var_0.x)), true), Struct_1(vec3<bool>(arg_2, !(u_input.a.x >= 1i), arg_1), false, all(select(vec4<bool>(arg_2, arg_2, arg_1, false), select(vec4<bool>(arg_1, false, arg_1, arg_2), vec4<bool>(arg_2, true, true, arg_1), arg_2), arg_2))), Struct_1(select(select(select(vec3<bool>(false, arg_2, arg_1), vec3<bool>(arg_1, true, true), arg_2), vec3<bool>(arg_2, false, arg_1), vec3<bool>(true, true, true)), select(!vec3<bool>(arg_2, false, false), select(vec3<bool>(arg_2, arg_1, false), vec3<bool>(arg_1, arg_2, arg_2), vec3<bool>(true, arg_2, arg_1)), !arg_1), func_3(Struct_3(Struct_2(Struct_1(vec3<bool>(arg_1, arg_2, arg_2), false, arg_2), Struct_1(vec3<bool>(true, false, arg_2), true, arg_2), Struct_1(vec3<bool>(arg_2, arg_1, arg_1), arg_1, arg_1))), true, select(vec4<i32>(u_input.a.x, 1i, 14594i, var_0.x), vec4<i32>(0i, u_input.a.x, -2147483647i, var_0.x), true))), select(!arg_1, true, true), var_0.x < -_wgslsmith_div_i32(-14912i, u_input.a.x)));
    let var_2 = 1u;
    var var_3 = !(!(!select(var_1.a.a, var_1.b.a, var_1.c.a)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(~(~vec4<u32>(u_input.b.x, 8567u, 0u, u_input.b.x)) << (~(~vec4<u32>(41958u, 128169u, 1u, u_input.b.x)) % vec4<u32>(32u)), !select(true, select(false, false, true), any(vec2<bool>(false, false))), func_1(-abs(55940i))), func_4(vec4<u32>(firstLeadingBit(u_input.b.x & u_input.b.x), select(~u_input.b.x, ~u_input.b.x, true), u_input.b.x, u_input.b.x), !any(vec2<bool>(false, true)), func_3(Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), true, true), Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(false, false, false), false, false))), select(true, true, true), u_input.a)), func_4(vec4<u32>(reverseBits(0u << (u_input.b.x % 32u)), reverseBits(u_input.b.x), ~_wgslsmith_add_u32(49460u, 39555u), 15566u), true, _wgslsmith_sub_i32(-1i, u_input.a.x) >= firstTrailingBit(min(u_input.a.x, -23271i))));
    var var_1 = Struct_2(Struct_1(!vec3<bool>(var_0.a.b, true, !var_0.b.a.x), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 2147483647i), u_input.a)) >= -24308i, !(true && all(vec2<bool>(true, var_0.a.c)))), var_0.c, Struct_1(var_0.b.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b), reverseBits(u_input.b)) > reverseBits(abs(u_input.b.x)), true));
    var var_2 = u_input.a.x;
    let var_3 = var_1.c.a.xx;
    var var_4 = u_input.a.x;
    let var_5 = ~(~reverseBits(~vec2<u32>(4294967295u, u_input.b.x))) & _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(34737u, 6665u ^ u_input.b.x));
    var_1 = Struct_2(var_0.c, Struct_1(!var_1.c.a, !(-u_input.a.x != (u_input.a.x ^ 31639i)), var_3.x), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(~vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(2147483647i, -47136i, u_input.a.x) & u_input.a.zxy, true)), -30767i, _wgslsmith_mod_u32(4294967295u, 4082u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(469f * -2068f), _wgslsmith_f_op_f32(sign(1087f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -817f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, 718f, -762f, 1229f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-246f, -297f, -2176f, 1360f), vec4<f32>(-499f, 623f, 453f, 1343f)))))), _wgslsmith_f_op_f32(abs(-703f)));
}

