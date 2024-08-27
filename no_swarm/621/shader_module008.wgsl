struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32;

var<private> global2: vec2<f32>;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_div_u32(~(~0u), ~u_input.c);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1289f - -1014f) - 243f), _wgslsmith_f_op_f32(-741f + -1404f));
    let var_1 = countOneBits(vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(44407u, u_input.c, u_input.c))), _wgslsmith_clamp_u32(u_input.c, select(~u_input.c, abs(u_input.c), true), u_input.c >> (0u % 32u))));
    let var_2 = Struct_2(~abs(-global0.a));
    var var_3 = Struct_2(_wgslsmith_sub_i32(-2147483647i, (i32(-1i) * -1i) << (~(~var_1.x) % 32u)));
    return _wgslsmith_sub_u32(reverseBits((1u ^ _wgslsmith_add_u32(u_input.c, 1u)) & 0u), ~_wgslsmith_mod_u32(var_1.x, ~max(24795u, 45594u)));
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(u_input.c, ~func_3(Struct_2(2147483647i), 2022f == global2.x)), ~(~4294967295u), u_input.c, u_input.c);
    var var_1 = vec4<u32>(1u, 16017u, var_0.x | ~reverseBits(0u), _wgslsmith_add_u32(21460u >> (0u % 32u), u_input.c));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(-772f, global2.x, _wgslsmith_f_op_f32(sign(-1803f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1847f)))), _wgslsmith_f_op_f32(1381f * global2.x), -1103f));
    let var_3 = vec3<u32>(min(var_0.x, _wgslsmith_mod_u32(20030u, 1u)) ^ ~56569u, 41957u, var_1.x);
    global3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.zz)));
    return Struct_2(_wgslsmith_add_i32(2147483647i ^ (u_input.b.x & 2147483647i), reverseBits(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(global0.a, u_input.b.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = arg_2.b;
    let var_1 = arg_0;
    global0 = Struct_2(-(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -2147483647i, var_0.a), arg_3.yyy | vec3<i32>(arg_3.x, -16723i, arg_3.x)) ^ arg_0.a));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1703f, 405f, -680f, global3.x)))))));
    return func_2();
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-192f)), global3.x, -1000f, _wgslsmith_f_op_f32(max(453f, -1000f))) * vec4<f32>(-984f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(global2.x + -437f), _wgslsmith_f_op_f32(max(304f, 115f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-555f - global3.x), _wgslsmith_f_op_f32(round(-988f)), -424f, -948f) * vec4<f32>(_wgslsmith_f_op_f32(floor(1107f)), _wgslsmith_f_op_f32(global2.x - global3.x), _wgslsmith_f_op_f32(select(497f, global2.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -791f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-312f, 708f, true)))))), _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-291f, -118f) - -496f))));
    let var_1 = Struct_2(_wgslsmith_mod_i32(~_wgslsmith_add_i32(i32(-1i) * -22971i, 1i), 1i));
    let var_2 = false;
    let var_3 = var_1.a;
    global2 = vec2<f32>(-1054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(global3.x + global2.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(u_input.b), u_input.a.xx), -abs(vec2<i32>(var_1.a, var_3))));
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    global1 = global3.x;
    let var_0 = Struct_1(14642i);
    var var_1 = arg_2;
    var var_2 = Struct_3(arg_0.a, func_5(Struct_2(-36907i)));
    let var_3 = ~(~max(countOneBits(vec4<u32>(60506u, u_input.c, 33056u, u_input.c)), ~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c) & ~vec4<u32>(1u, 4527u, u_input.c, 71158u)));
    return Struct_3(any(vec2<bool>(true, u_input.c >= u_input.c)), var_2.b);
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_3(!any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)), Struct_1(u_input.b.x));
    return func_6(Struct_3(true, func_5(func_4(func_2(), var_0.a, Struct_3(var_0.a, Struct_1(30702i)), abs(vec4<i32>(var_0.b.a, var_0.b.a, -2147483647i, -1i))))), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 0u, u_input.c), vec4<u32>(u_input.c, 33202u, u_input.c, u_input.c)) >= _wgslsmith_add_u32(~u_input.c, _wgslsmith_clamp_u32(1u, 4294967295u, 58948u))) || !(global0.a >= _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), Struct_2(var_0.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(sign(global2.x)), select(false, true, true | (global3.x != global2.x)))));
    global0 = Struct_2(-abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, var_0.b.a), -1i)));
    global1 = _wgslsmith_f_op_f32(trunc(212f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -540f), -1134f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 582f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, global3.x)))))), select(-vec4<i32>(_wgslsmith_div_i32(global0.a, 21368i), _wgslsmith_mod_i32(-22757i, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a, global0.a), vec2<i32>(99313i, var_0.b.a)), 1i), reverseBits(vec4<i32>(u_input.b.x, 13794i, -38354i, -38737i)) | reverseBits(vec4<i32>(-1i, -58175i, u_input.a.x, 7521i) | vec4<i32>(1i, global0.a, global0.a, -2147483647i)), func_6(Struct_3(u_input.c == 4294967295u, func_5(Struct_2(u_input.b.x))), var_0.a, Struct_2(global0.a)).a));
}

