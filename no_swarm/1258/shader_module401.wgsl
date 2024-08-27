struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = -(vec4<i32>(-1i) * -firstLeadingBit(-vec4<i32>(u_input.d, 0i, u_input.d, 0i)));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), -1000f, -1176f, 338f), Struct_1(u_input.a.x), vec3<bool>(global0.x, global0.x, global0.x), (-24262i >> (u_input.a.x % 32u)) <= ~3025i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1623f, -1594f, false))), var_1.a.x, var_1.a.x);
    var var_3 = Struct_4(firstLeadingBit(90928u));
    var_3 = Struct_4(~_wgslsmith_div_u32(min(var_1.b.a, ~4294967295u), ~var_3.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a, 64940u), vec2<u32>(1u, var_3.a)) % 32u)));
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = select(!select(select(vec2<bool>(true, true), arg_3, !vec2<bool>(arg_1.x, true)), arg_1.zy, arg_3), arg_3, all(vec2<bool>(true, true)) != (true | arg_3.x));
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -832f) < arg_0.x, true);
    var_0 = select(vec2<bool>(arg_2.x, func_3()), !select(select(!vec2<bool>(arg_2.x, arg_3.x), arg_3, vec2<bool>(true, arg_3.x)), arg_1.wz, !(!arg_1.xw)), arg_2.yy);
    global0 = vec2<bool>(all(arg_1), !(func_3() | (all(vec3<bool>(false, arg_2.x, false)) || true)));
    let var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - 1f), arg_0.x), Struct_4(1u), select(!(!(!vec3<bool>(global0.x, arg_1.x, true))), vec3<bool>(!arg_2.x, func_3(), func_3()), false), ~(-17587i ^ -u_input.d), abs(4294967295u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-604f)) * _wgslsmith_f_op_f32(exp2(arg_0.x))))));
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: i32, arg_3: Struct_5) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(arg_1.a.x, -1299f, -318f), vec4<bool>(arg_1.c.x, arg_0, false, false), arg_1.c, vec2<bool>(false, true)))) * vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x - -1182f), _wgslsmith_f_op_f32(552f + arg_3.a.x), arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1826f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(arg_3.a.x)), _wgslsmith_f_op_f32(-325f - -235f), _wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x), _wgslsmith_f_op_f32(trunc(arg_1.a.x))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(arg_1.a.x + -225f), -1220f, 1481f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, arg_3.a.x, -2126f, 141f)) - vec4<f32>(arg_1.a.x, arg_3.a.x, 736f, 1275f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, arg_1.a.x, arg_1.a.x, arg_1.a.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(739f)))), 1601f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_3.a.x) * _wgslsmith_f_op_f32(-var_0.x)), -581f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_3.a.x)), arg_1.a.x, arg_1.a.x, 454f)));
    let var_2 = Struct_3(-3550i, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.x, 552f, 1000f) + vec4<f32>(-229f, _wgslsmith_f_op_f32(ceil(arg_1.a.x)), -1490f, _wgslsmith_f_op_f32(select(-1000f, var_0.x, true)))), Struct_1(arg_3.b.a), arg_3.c, _wgslsmith_f_op_f32(ceil(1196f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))));
    var var_3 = Struct_3(u_input.d & _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.c.xx & vec2<i32>(-2147483647i, -1i)), min(~vec2<i32>(-33096i, -1i), select(u_input.c.yx, u_input.c.xz, vec2<bool>(true, arg_1.c.x)))), var_2.b);
    let var_4 = ~select(reverseBits(~_wgslsmith_add_u32(u_input.a.x, arg_3.b.a)), firstLeadingBit(firstLeadingBit(~1u)), false);
    return !all(select(!(!var_2.b.c), select(select(arg_3.c, vec3<bool>(arg_0, true, arg_1.c.x), var_2.b.c), vec3<bool>(true, arg_3.c.x, true), var_2.b.c), arg_1.c));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = ~vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.xy), select(u_input.b, u_input.d, true), _wgslsmith_mod_i32(u_input.b, u_input.c.x)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -42987i), vec2<i32>(-843i, 23286i)), 1i), _wgslsmith_sub_i32(8958i, u_input.c.x) << (u_input.a.x % 32u)) >> (~(vec3<u32>(~0u, _wgslsmith_sub_u32(arg_0, arg_0), ~84107u) << ((select(vec3<u32>(u_input.a.x, u_input.a.x, 71997u), vec3<u32>(37772u, 49202u, u_input.a.x), arg_1.wyx) & (vec3<u32>(0u, 0u, u_input.a.x) & vec3<u32>(4294967295u, arg_0, u_input.a.x))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = ~max(arg_0, u_input.a.x);
    global0 = !(!select(!vec2<bool>(global0.x, false), select(vec2<bool>(false, true), arg_1.yy, global0.x & global0.x), true));
    var var_2 = u_input.c.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(691f, _wgslsmith_f_op_f32(min(816f, -873f)), -2397f, -1104f) - vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-717f, -305f, 1000f, -1000f), vec4<f32>(551f, 302f, -1465f, -1174f), global0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1007f, 928f, -1087f, -2373f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(297f, 1314f, -754f, 391f) * vec4<f32>(582f, 233f, 1000f, -887f))))), Struct_1(0u & abs(arg_0 << (u_input.a.x % 32u))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f) - _wgslsmith_f_op_f32(step(572f, 1732f))) < _wgslsmith_f_op_f32(-1f), true, true), true);
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!global0.x, !any(vec2<bool>(true, global0.x)), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(782f, -321f), _wgslsmith_f_op_f32(ceil(946f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1386f))), _wgslsmith_f_op_f32(-466f * 1f)));
    global0 = var_0.zy;
    let var_2 = u_input.c;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1707f, var_1.x, 699f)))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 997f, 332f) * vec4<f32>(-2124f, -265f, var_1.x, var_1.x)))))));
    var var_3 = func_4(~abs(u_input.a.x), select(select(vec4<bool>(true, u_input.d < 8047i, select(false, false, true), all(vec4<bool>(var_0.x, true, true, var_0.x))), select(!vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(var_0.x, true, global0.x, true), vec4<bool>(true, global0.x, global0.x, var_0.x), false), !vec4<bool>(global0.x, var_0.x, false, var_0.x)), vec4<bool>(func_1(true, Struct_5(var_1.www, Struct_4(u_input.a.x), var_0, -2147483647i, 1u), var_2.x, Struct_5(var_1.wxw, Struct_4(u_input.a.x), var_0, var_2.x, 70301u)), any(vec4<bool>(global0.x, true, var_0.x, false)), true, global0.x)), vec4<bool>(true, true, true, _wgslsmith_sub_u32(4294967295u, 0u) > u_input.a.x), !var_0.x));
    let var_4 = -u_input.c;
    let var_5 = firstLeadingBit(firstTrailingBit(firstTrailingBit(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(69747i, _wgslsmith_f_op_vec3_f32(-var_1.zxz), vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(10195u, u_input.a.x, 47228u), vec3<u32>(u_input.a.x, var_3.a, var_5.x)), min(var_3.a, ~(~u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, 0u) << (_wgslsmith_div_u32(countOneBits(1u), _wgslsmith_add_u32(u_input.a.x, 12606u)) % 32u)));
}

