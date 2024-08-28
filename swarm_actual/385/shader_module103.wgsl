struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> bool {
    global0 = !vec4<bool>(arg_3, all(!global0.yx), all(vec2<bool>(any(global0.wz), false)), arg_1);
    var var_0 = select(global0.zy, select(!select(!vec2<bool>(true, arg_3), select(vec2<bool>(arg_3, false), global0.yw, arg_1), !global0.xz), global0.xw, false), global0.ww);
    var_0 = select(global0.zx, vec2<bool>(true, all(vec3<bool>(arg_1, true, true))), !global0.x);
    let var_1 = arg_0;
    let var_2 = vec2<bool>(true, 0u <= var_1);
    return false;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> i32 {
    var var_0 = !vec3<bool>(true, global0.x, any(select(!vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), global0.x))));
    global0 = select(select(select(vec4<bool>(all(var_0.zz), false, false && global0.x, true), select(!vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x), any(global0.yx)), vec4<bool>(var_0.x, !var_0.x, true, false)), select(vec4<bool>(true, true, arg_0 != arg_0, true), select(vec4<bool>(true, global0.x, false, var_0.x), select(vec4<bool>(var_0.x, global0.x, var_0.x, true), vec4<bool>(global0.x, global0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, false)), !vec4<bool>(false, global0.x, var_0.x, var_0.x)), !(!vec4<bool>(false, false, global0.x, var_0.x))), vec4<bool>(true, all(!vec4<bool>(global0.x, global0.x, var_0.x, var_0.x)), 1i != arg_1.x, !global0.x)), vec4<bool>(true, any(vec3<bool>(false, false, func_3(4294967295u, false, vec4<f32>(922f, -1818f, arg_0, arg_0), false))), var_0.x, var_0.x), var_0.x);
    var var_1 = 1962f;
    var var_2 = Struct_1(reverseBits(~(~(~1u))), vec3<i32>(_wgslsmith_mod_i32(-2147483647i, select(1i, abs(2147483647i), var_0.x | false)), ~(1i ^ u_input.a.x), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(13381i, u_input.a.x, 1i), arg_1.wxz)), max(abs(u_input.a.yyz), u_input.a.xxw))), _wgslsmith_f_op_f32(arg_0 * arg_0), 10033u);
    var var_3 = Struct_2(Struct_1(~4294967295u, -(u_input.a.ywx << (vec3<u32>(var_2.a, var_2.d, var_2.a) % vec3<u32>(32u))) ^ vec3<i32>(var_2.b.x, arg_1.x >> (var_2.a % 32u), u_input.a.x << (var_2.d % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(select(-814f, -1463f, global0.x))))), 1u), Struct_1(~firstLeadingBit(4294967295u), vec3<i32>(-countOneBits(-2147483647i), -1i, var_2.b.x), 870f, var_2.a), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -25063i, 59673i, 1i) & u_input.a, select(vec4<i32>(1i, var_2.b.x, 70917i, var_2.b.x), vec4<i32>(14547i, 6627i, u_input.a.x, arg_1.x), var_0.x))), vec4<i32>(-22979i, select(~arg_1.x, -1i, global0.x), _wgslsmith_dot_vec4_i32(u_input.a, abs(arg_1)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, var_2.b.x), arg_1.x, arg_1.x))), ~vec3<u32>(~var_2.d >> (var_2.d % 32u), ~_wgslsmith_clamp_u32(var_2.a, 0u, var_2.d), 36629u));
    return var_2.b.x;
}

fn func_1() -> f32 {
    global0 = !(!select(vec4<bool>(global0.x, global0.x, !global0.x, true), vec4<bool>(true || global0.x, all(vec4<bool>(true, global0.x, global0.x, false)), global0.x, true), select(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, false, global0.x, false), vec4<bool>(true, global0.x, false, global0.x)), vec4<bool>(global0.x, false, false, false), global0.x || global0.x)));
    global0 = vec4<bool>((false | !any(vec2<bool>(global0.x, global0.x))) != true, true, global0.x && !(func_2(-314f, u_input.a) <= reverseBits(u_input.a.x)), -35923i <= u_input.a.x);
    var var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) - -1793f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(345f * _wgslsmith_f_op_f32(-860f - _wgslsmith_f_op_f32(sign(-426f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-588f - -347f))));
    let var_2 = 18806u & countOneBits(select(63575u, 12402u, true));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-367f - _wgslsmith_f_op_f32(2264f + 471f)), -2006f) * 1903f));
    global0 = vec4<bool>(var_0 >= -1953f, any(vec2<bool>(true, !global0.x)), global0.x, true);
    var var_1 = firstLeadingBit(~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_add_u32(1u, 0u)));
    var var_2 = _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(firstTrailingBit(4294967295u), var_1.x, _wgslsmith_sub_u32(var_1.x, 29142u), var_1.x >> (47647u % 32u))), _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x) & vec4<u32>(19481u, var_1.x, 19268u, 25725u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.x, 0u, var_1.x), vec4<u32>(var_1.x, var_1.x, 49692u, var_1.x)))), vec4<u32>(4294967295u, _wgslsmith_mult_u32(firstTrailingBit(var_1.x), _wgslsmith_mod_u32(1092u, 1u)), var_1.x, 1u), min(vec4<u32>(var_1.x, 1341u, var_1.x, var_1.x) >> (vec4<u32>(32621u, var_1.x, 76327u, var_1.x) % vec4<u32>(32u)), min(vec4<u32>(var_1.x, var_1.x, 79798u, 334u), vec4<u32>(var_1.x, var_1.x, 1u, 4294967295u))) & vec4<u32>(~21127u, var_1.x, _wgslsmith_mod_u32(var_1.x, 1u), _wgslsmith_clamp_u32(var_1.x, var_1.x, 137017u))));
    var var_3 = global0.wz;
    var_3 = select(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 144f)) <= 1635f), vec2<bool>(true, true), select(global0.xz, vec2<bool>(select(true, !var_3.x, false), func_3(min(var_1.x, var_1.x), true, vec4<f32>(var_0, -375f, var_0, var_0), true)), global0.zy));
    global0 = !vec4<bool>(true && all(vec2<bool>(var_3.x, true)), any(select(vec4<bool>(true, global0.x, var_3.x, false), !vec4<bool>(var_3.x, false, false, true), false)), !all(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(var_3.x, var_3.x, false), global0.xww)), true);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~countOneBits(vec3<u32>(var_1.x, 62688u, var_1.x))), firstTrailingBit(~(vec3<u32>(var_1.x, var_1.x, var_1.x) << (vec3<u32>(1u, var_1.x, 1u) % vec3<u32>(32u))))));
}

