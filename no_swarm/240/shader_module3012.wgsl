struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_2 {
    let var_0 = 1u;
    var var_1 = Struct_1(vec4<u32>(var_0, _wgslsmith_add_u32(_wgslsmith_add_u32(~23094u, _wgslsmith_add_u32(0u, var_0)), var_0), abs(var_0), ~_wgslsmith_mod_u32(4294967295u, var_0 & var_0)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -616f) * _wgslsmith_f_op_f32(-global0.a));
    var var_3 = u_input.a & firstLeadingBit(~u_input.b.x << ((~var_1.a.x & var_0) % 32u));
    var_1 = Struct_1(var_1.a);
    return Struct_2(var_2);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2.x, arg_2.x) & firstTrailingBit(84580u), ~_wgslsmith_sub_u32(arg_2.x, 0u)) >> (arg_2.x % 32u));
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), 52503u, _wgslsmith_dot_vec2_u32(arg_2.xx, vec2<u32>(arg_2.x, var_0)), arg_2.x), ~vec4<u32>(~var_0, arg_2.x, ~arg_2.x, ~47128u)));
    return Struct_3(_wgslsmith_f_op_f32(trunc(758f)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_1(countOneBits(vec4<u32>(select(1539u, ~0u, true), abs(firstTrailingBit(1u)), 1u, ~_wgslsmith_mod_u32(17285u, 1u))));
    global0 = Struct_3(_wgslsmith_f_op_f32(-1335f + _wgslsmith_f_op_f32(-global0.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f));
    global0 = func_3(func_2(), Struct_2(_wgslsmith_f_op_f32(var_1 + 931f)), ~(~(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 51078u), var_0.a.www) << (~var_0.a.wwy % vec3<u32>(32u)))), ~(~vec2<i32>(61013i, u_input.c)) & u_input.b.yy);
    global0 = func_3(func_2(), Struct_2(1163f), (vec3<u32>(var_0.a.x, ~var_0.a.x, 4294967295u) ^ var_0.a.xxz) >> (_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(var_0.a.zyw, var_0.a.xww), _wgslsmith_div_vec3_u32(var_0.a.xzz, vec3<u32>(4294967295u, var_0.a.x, 1u))) % vec3<u32>(32u)), vec2<i32>(select(-(~(-2147483647i)), ~(-1i), true || any(vec2<bool>(true, true))), ~(-1i)));
    return func_3(Struct_2(arg_0), func_2(), vec3<u32>(min(62759u, 5375u), var_0.a.x, 1u) << (~(~var_0.a.yzy) % vec3<u32>(32u)), vec2<i32>(select(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(u_input.a, 0i)), firstLeadingBit(1i), all(vec4<bool>(true, true, false, true))), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = func_1(_wgslsmith_f_op_f32(ceil(218f)));
    let var_1 = !(!select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true));
    var var_2 = global0.a;
    let var_3 = var_0 < -2147483647i;
    let var_4 = all(select(vec4<bool>(var_3, true, !var_1.x, _wgslsmith_clamp_u32(1u, 40338u, 1u) >= 79906u), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_3, var_1.x, var_1.x, false), vec4<bool>(false, var_3, var_3, var_3), vec4<bool>(false, var_1.x, var_1.x, false)), var_1.x), vec4<bool>(true, false, all(var_1), true), vec4<bool>(var_3, var_1.x, select(true, var_1.x, var_3), !var_3)), var_3 | false));
    let var_5 = Struct_1(~vec4<u32>(~93432u, max(1u, 1u), 1u, _wgslsmith_mod_u32(~42383u, 82449u)));
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1435f, global0.a)), -134f) - func_2().a))), -169f);
    let var_7 = _wgslsmith_div_i32(-u_input.b.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_0, var_0), var_0, var_0 | 22589i, var_0), _wgslsmith_add_vec4_i32(u_input.b, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_5.a, ~vec4<u32>(~var_5.a.x, 1u, 4294967295u, 46004u & var_5.a.x)), _wgslsmith_f_op_f32(-var_6.x), var_5.a.yx);
}

