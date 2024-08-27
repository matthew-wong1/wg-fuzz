struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 60264u, 0u, 1u), vec4<u32>(4294967295u, 10074u, 4294967295u, 4294967295u), vec4<f32>(-925f, -1614f, 748f, 885f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(global0.b), ~global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -965f, global0.c.x, global0.c.x) - vec4<f32>(global0.c.x, global0.c.x, -168f, global0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2031f, global0.c.x, global0.c.x, 1126f) * vec4<f32>(-336f, global0.c.x, global0.c.x, 187f))))), Struct_1(~(vec4<u32>(21998u, global0.b.x, 29992u, global0.b.x) ^ global0.a) | ~(~global0.b), global0.a, _wgslsmith_f_op_vec4_f32(abs(global0.c))), arg_0, vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-676f, -360f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -135f))))), 4294967295u);
    global0 = var_0.b;
    global0 = Struct_1(var_0.b.b, ~(~vec4<u32>(86450u, var_0.e, global0.b.x, global0.b.x)) | select(vec4<u32>(83424u, 0u, var_0.a.b.x, var_0.e), vec4<u32>(~global0.a.x, 1u, 1u, ~60427u), vec4<bool>(u_input.a >= u_input.a, arg_0 && arg_0, !arg_0, all(vec2<bool>(var_0.c, true)))), global0.c);
    global0 = Struct_1(~global0.a, _wgslsmith_div_vec4_u32(~(~firstTrailingBit(var_0.a.b)), ~vec4<u32>(1u, _wgslsmith_sub_u32(global0.b.x, global0.a.x), ~var_0.b.b.x, ~1u)), _wgslsmith_f_op_vec4_f32(var_0.b.c * global0.c));
    let var_1 = ~vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~1i, u_input.a), firstTrailingBit(u_input.a)), _wgslsmith_add_i32(_wgslsmith_mod_i32(-25339i, -35841i), _wgslsmith_dot_vec2_i32(vec2<i32>(36901i, u_input.a), vec2<i32>(u_input.a, -5897i))) ^ 0i);
    return ~(~global0.a.xxx);
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = Struct_4(global0.c.x, Struct_2(Struct_1(vec4<u32>(1u, global0.a.x, _wgslsmith_clamp_u32(13227u, global0.a.x, global0.a.x), ~26952u), ~_wgslsmith_sub_vec4_u32(global0.a, global0.a), vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(min(107f, global0.c.x)), 345f, -102f)), Struct_1(global0.b, ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.a.x, 4294967295u, 0u), global0.a), global0.c), !((global0.a.x ^ 46235u) != _wgslsmith_mult_u32(global0.a.x, global0.a.x)), global0.c.wz, global0.b.x), 2559u, global0.b.x);
    global0 = var_0.b.a;
    let var_1 = func_3(var_0.b.c) ^ vec3<u32>(var_0.c, var_0.b.b.b.x, global0.a.x);
    global0 = var_0.b.b;
    let var_2 = var_0.b.a;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2427f * var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -360f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_2.c.x) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.x, -975f)))))) * global0.c.yz);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_4(global0.c.x, Struct_2(Struct_1(~(vec4<u32>(global0.a.x, global0.a.x, global0.b.x, 1u) ^ vec4<u32>(global0.a.x, 1u, 49786u, global0.b.x)), vec4<u32>(4294967295u, global0.a.x, _wgslsmith_mod_u32(global0.a.x, global0.a.x), global0.a.x), global0.c), Struct_1(~global0.a | vec4<u32>(4294967295u, 4294967295u, 21305u, global0.a.x), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(global0.b.x, 4294967295u, 22447u, 75315u), vec4<u32>(global0.a.x, global0.b.x, 0u, 1045u), true), vec4<u32>(55940u, global0.b.x, global0.b.x, global0.a.x), ~global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, arg_1.x, arg_0.x))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-260f, 732f)), global0.b.x), ~(global0.a.x ^ (0u ^ func_3(false).x)), select(global0.b.x, ~select(func_3(true).x, 80680u, all(vec4<bool>(true, false, false, true))), -2147483647i < u_input.a));
    global0 = var_0.b.b;
    global0 = Struct_1(~(~(~vec4<u32>(0u, 4294967295u, 7152u, 142326u))), ~(~reverseBits(select(vec4<u32>(global0.b.x, var_0.b.a.a.x, 0u, global0.b.x), var_0.b.a.a, var_0.b.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, _wgslsmith_f_op_f32(var_0.b.b.c.x * arg_1.x), _wgslsmith_f_op_f32(max(-1870f, -1651f)), var_0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b.a.c, vec4<f32>(1000f, 1000f, -614f, global0.c.x)))));
    let var_1 = ~(var_0.b.b.a << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(28849u, var_0.d, global0.b.x, global0.b.x), vec4<u32>(17914u, 29978u, 1u, 0u))) % vec4<u32>(32u)));
    var var_2 = vec3<bool>(false, any(vec4<bool>(_wgslsmith_f_op_f32(global0.c.x - arg_1.x) >= _wgslsmith_f_op_f32(var_0.a * arg_0.x), true, var_0.b.c || true, true && (var_0.b.c && var_0.b.c))), false);
    return Struct_3(var_1.x, ~vec2<u32>(~_wgslsmith_div_u32(var_0.c, global0.a.x), reverseBits(reverseBits(0u))), var_0.b);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = arg_1;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1230f, -462f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(0i, 3260i, -27161i))))) * vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_f_op_vec4_f32(max(global0.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(256f, 330f, 1576f, 1000f)), vec4<f32>(230f, _wgslsmith_f_op_f32(global0.c.x * global0.c.x), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_div_f32(1010f, global0.c.x)))))));
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(global0.c.zz * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.c.a.c.x, var_1.c.d.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1119f), true)), global0.c.x)), vec4<f32>(_wgslsmith_f_op_f32(-2576f - 554f), func_4(vec2<f32>(-168f, var_1.c.a.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c.b.c))).c.d.x, 2558f, global0.c.x)).c.b.c.wz;
    var var_3 = max(arg_0, -firstLeadingBit(u_input.a));
    var_3 = reverseBits(-1i ^ _wgslsmith_mult_i32(34756i, u_input.a)) << (~(~4294967295u) % 32u);
    return 47943u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~func_1(_wgslsmith_mult_i32(12290i, _wgslsmith_add_i32(-2147483647i, u_input.a)), -2407f < _wgslsmith_f_op_f32(round(global0.c.x)), any(vec4<bool>(false, true, false, false))), reverseBits(1u), _wgslsmith_add_u32(0u, countOneBits(global0.a.x)));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_4(global0.c.yw, vec4<f32>(1000f, -199f, global0.c.x, global0.c.x)).c.a.c.x, global0.c.x))) <= _wgslsmith_div_f32(_wgslsmith_div_f32(-528f, _wgslsmith_f_op_f32(global0.c.x + -1131f)), _wgslsmith_f_op_f32(f32(-1f) * -157f)), true, false || any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), -2147483647i > u_input.a)), !any(vec4<bool>(true, true, all(vec2<bool>(true, false)), true)));
    global0 = func_4(vec2<f32>(410f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(158f, global0.c.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.c)))).c.a;
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(global0.a, _wgslsmith_clamp_vec4_u32(global0.b, firstTrailingBit(global0.a), global0.b) | vec4<u32>(var_0.x, ~global0.a.x, _wgslsmith_dot_vec2_u32(global0.a.xy, vec2<u32>(var_0.x, 9475u)), ~42126u)), global0.a & select(max(vec4<u32>(global0.a.x, 14572u, global0.b.x, global0.a.x) >> (vec4<u32>(var_0.x, 57988u, var_0.x, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(var_0.x, var_0.x, 34339u, global0.b.x))), global0.b << (~vec4<u32>(1u, var_0.x, global0.a.x, 1u) % vec4<u32>(32u)), var_1.x), _wgslsmith_div_vec4_f32(global0.c, vec4<f32>(1f, global0.c.x, func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1112f, -1000f), vec2<f32>(310f, 794f), vec2<bool>(var_1.x, true))), vec4<f32>(-1000f, global0.c.x, -1169f, global0.c.x)).c.a.c.x, func_4(global0.c.wz, _wgslsmith_f_op_vec4_f32(floor(global0.c))).c.a.c.x)));
    let var_2 = u_input.a & u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec2<i32>(var_2, var_2) & vec2<i32>(-2147483647i, -1i))), vec2<i32>(reverseBits(~firstLeadingBit(8281i)), countOneBits(-2147483647i)), var_0.x, _wgslsmith_f_op_vec2_f32(func_2(countOneBits(vec3<i32>(countOneBits(var_2), 2270i, countOneBits(-2147483647i))))).x, ~reverseBits(vec2<i32>(2147483647i, -u_input.a)));
}

