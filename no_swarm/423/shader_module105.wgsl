struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-global0.a.e);
}

fn func_3() -> i32 {
    global0 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32(global0.a.a, global0.a.a)), global0.a.b, abs(reverseBits(-global0.a.c)), vec2<i32>(u_input.a, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2058f))))), global0.c.yy, !global0.c, global0.c);
    global1 = ~_wgslsmith_mult_u32(~global0.a.b.x, _wgslsmith_mod_u32(0u, global0.a.b.x));
    global1 = global0.a.b.x;
    global1 = 4294967295u;
    var var_0 = Struct_2(global0.a, vec2<bool>(global0.b.x, !(-u_input.c <= firstTrailingBit(36039i))), global0.d, select(global0.c, select(vec3<bool>(all(vec4<bool>(false, true, true, global0.c.x)), any(vec4<bool>(true, false, false, false)), true), vec3<bool>(any(vec2<bool>(global0.d.x, global0.c.x)), global0.a.b.x >= 2504u, global0.c.x), vec3<bool>(9822u == global0.a.b.x, true, global0.b.x)), true));
    return abs(-(-u_input.a << (firstTrailingBit(1u) % 32u)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    var var_0 = -536f;
    var var_1 = Struct_2(global0.a, vec2<bool>(true, !global0.c.x), select(vec3<bool>(false || (10461i == u_input.b), true, false), !vec3<bool>(select(arg_0, false, global0.d.x), true, true), !select(vec3<bool>(true, arg_0, global0.d.x), global0.c, global0.c)), !vec3<bool>(global0.d.x, all(vec2<bool>(global0.d.x, arg_0)), select(arg_0, any(vec3<bool>(false, global0.b.x, global0.c.x)), true)));
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(var_1.a.a, vec4<i32>(arg_1, -4091i, abs(var_1.a.d.x), _wgslsmith_dot_vec4_i32(global0.a.a, global0.a.a)))), reverseBits(vec3<u32>(~(var_1.a.b.x ^ global0.a.b.x), 0u << (~var_1.a.b.x % 32u), ~4294967295u)), ~_wgslsmith_add_i32(1i, -44157i), vec2<i32>(i32(-1i) * -14188i, 1219i), -375f);
    var var_3 = ~(global0.a.a.x | u_input.b);
    let var_4 = Struct_1(firstTrailingBit(vec4<i32>(~(~642i), arg_1, ~(~var_1.a.c), func_3() | arg_2.x)), firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(1971u, 923u, var_2.b.x), _wgslsmith_add_vec3_u32(var_2.b, var_1.a.b))), arg_2.x, vec2<i32>(arg_2.x, ~var_1.a.d.x | (var_1.a.d.x ^ firstLeadingBit(var_2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-517f, _wgslsmith_f_op_f32(step(186f, _wgslsmith_f_op_f32(step(var_2.e, -2002f)))))));
    return var_4.e;
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = false;
    let var_1 = Struct_2(global0.a, !(!vec2<bool>(global0.a.b.x != global0.a.b.x, any(global0.c.zy))), vec3<bool>(false, !all(vec3<bool>(global0.b.x, var_0, global0.c.x)), !(global0.d.x || !var_0)), vec3<bool>(((-2147483647i | global0.a.c) != countOneBits(u_input.b)) == true, arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.e)), global0.d.x));
    global0 = var_1;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -142f);
    return Struct_1(abs(var_1.a.a), ~(~firstLeadingBit(vec3<u32>(1u, var_1.a.b.x, 49874u))), max(_wgslsmith_dot_vec4_i32(global0.a.a, select(-vec4<i32>(-2147483647i, 0i, u_input.b, 13252i), var_1.a.a | var_1.a.a, !var_1.d.x)), var_1.a.c), min(vec2<i32>(~(i32(-1i) * -28331i), ~(global0.a.a.x ^ 0i)), var_1.a.d), _wgslsmith_f_op_f32(min(2201f, var_1.a.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f * 1030f) + _wgslsmith_f_op_f32(func_1(vec3<f32>(global0.a.e, global0.a.e, -2860f), vec3<bool>(global0.d.x, global0.b.x, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, global0.a.c, vec3<i32>(0i, -25258i, -13005i))) - _wgslsmith_f_op_f32(-global0.a.e)))), global0.c.yx, !select(global0.c, !(!vec3<bool>(global0.d.x, true, false)), select(global0.d, select(vec3<bool>(true, global0.b.x, false), vec3<bool>(global0.b.x, global0.b.x, global0.d.x), global0.d), all(vec4<bool>(global0.b.x, global0.b.x, global0.d.x, global0.d.x)))), !global0.d);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1444f, _wgslsmith_f_op_f32(-global0.a.e)));
    global0 = Struct_2(func_4(_wgslsmith_f_op_f32(f32(-1f) * -884f)), !select(!global0.c.zz, global0.d.zz, global0.c.yy), select(!select(!global0.d, vec3<bool>(global0.d.x, global0.b.x, global0.d.x), select(global0.c, global0.c, true)), !global0.d, global0.c), select(select(!vec3<bool>(global0.c.x, global0.b.x, false), vec3<bool>(any(global0.c), true, global0.b.x), select(global0.d, vec3<bool>(global0.d.x, global0.b.x, global0.c.x), false)), !(!(!global0.c)), global0.c.x));
    global0 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.a.x, -44016i, u_input.a, global0.a.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 17969i, global0.a.c, 1i), global0.a.a)), -global0.a.a), vec3<u32>(global0.a.b.x, global0.a.b.x, ~4294967295u), ~u_input.c & _wgslsmith_mod_i32(31538i, _wgslsmith_add_i32(global0.a.d.x, u_input.b)), global0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0.b.x, -global0.a.c, vec3<i32>(global0.a.c, 21527i, -18538i))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.e + 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -463f)))), select(select(global0.b, !select(vec2<bool>(global0.c.x, global0.c.x), global0.b, global0.c.x), vec2<bool>(false, global0.a.b.x > global0.a.b.x)), vec2<bool>(all(vec2<bool>(global0.b.x, global0.c.x)), global0.b.x | false), _wgslsmith_mod_u32(~10330u, global0.a.b.x) <= max(global0.a.b.x, 13859u)), select(vec3<bool>(true, false, (global0.c.x || global0.b.x) || true), select(select(vec3<bool>(true, global0.d.x, false), vec3<bool>(true, false, global0.b.x), global0.b.x), global0.d, (u_input.a | -2147483647i) == 49297i), !select(select(global0.c, vec3<bool>(false, true, true), vec3<bool>(false, global0.b.x, false)), global0.c, global0.d)), select(global0.c, select(global0.c, global0.c, vec3<bool>(any(vec4<bool>(global0.d.x, false, false, global0.b.x)), false, true)), false | global0.d.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.e, 827f))) + -921f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(_wgslsmith_clamp_i32(global0.a.a.x, -1i, global0.a.d.x), u_input.a, global0.d.x) << (~(~82229u) % 32u), ~u_input.c, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~global0.a.d.x, u_input.c, _wgslsmith_mult_i32(u_input.a, global0.a.c)), _wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(0i, -2147483647i)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1264f, global0.a.e, 1254f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.e, 608f, 1387f) - vec3<f32>(297f, global0.a.e, global0.a.e))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.e, -1074f, global0.a.e)), vec3<f32>(global0.a.e, global0.a.e, global0.a.e))))), vec3<f32>(global0.a.e, -1000f, global0.a.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1000f + 416f), _wgslsmith_f_op_f32(global0.a.e - global0.a.e), 312f, _wgslsmith_f_op_f32(f32(-1f) * -397f))))));
}

