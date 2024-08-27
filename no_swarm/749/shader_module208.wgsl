struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(~abs(-vec4<i32>(-56985i, arg_0, arg_0, u_input.a)), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, arg_0)), vec4<i32>(arg_0, -2147483647i, arg_0, 0i)) << (vec4<u32>(_wgslsmith_mult_u32(103218u, global0.x), global0.x, ~4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(arg_0, u_input.a ^ 33150i, -u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-42639i, u_input.a), vec2<i32>(u_input.a, -11331i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -33166i), vec2<i32>(-14346i, arg_0))))));
    let var_1 = select(var_0.a.xxx, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a | ~1674i, abs(~var_0.a.x), -firstLeadingBit(-34189i)), -vec3<i32>(u_input.a, ~(-2147483647i), -11334i)), !arg_2);
    let var_2 = i32(-1i) * -15311i;
    var var_3 = Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(max(-239f, -1264f)), 782f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -852f), _wgslsmith_f_op_f32(1583f - _wgslsmith_f_op_f32(ceil(636f))))), 1360f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, _wgslsmith_f_op_f32(max(-579f, 493f)), _wgslsmith_f_op_f32(trunc(441f))))));
    var var_4 = Struct_1(-reverseBits(~(-2147483647i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, var_2), var_0.a.yx)), vec4<f32>(var_3.c.x, var_3.c.x, var_3.c.x, 1361f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(-var_3.b.x), -502f)), var_3.b.xyy, !arg_2)));
    return select(arg_2.yx, arg_2.yz, true);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_2(vec4<i32>(-25117i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(arg_1.x, -1i), _wgslsmith_sub_i32(-1i, -2147483647i)), -(~arg_1.xw)), -2147483647i, (_wgslsmith_dot_vec2_i32(arg_1.zy, vec2<i32>(25217i, 32022i)) << ((global0.x ^ 0u) % 32u)) << (~_wgslsmith_mult_u32(global0.x, global0.x) % 32u)));
    let var_1 = select(select(!vec2<bool>(36120u == global0.x, arg_0), func_3(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, u_input.a), -2147483647i), true, !vec3<bool>(false, arg_0, true)), !all(vec2<bool>(true, arg_0))), func_3(48050i, true, vec3<bool>(all(vec3<bool>(true, true, true)), false, arg_0)), all(vec4<bool>(select(true, arg_0, false) & (arg_0 || arg_0), arg_0, !all(vec4<bool>(arg_0, arg_0, arg_0, true)), !(!arg_0))));
    global0 = max(_wgslsmith_div_vec2_u32(abs(select(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x), vec2<bool>(arg_0, true)) << (reverseBits(vec2<u32>(3202u, global0.x)) % vec2<u32>(32u))), ~(~(~vec2<u32>(1u, 114063u)))), vec2<u32>(58602u, global0.x));
    let var_2 = ~(~1689u);
    var var_3 = vec2<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-740f + 1058f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 388f))));
    return 1000f;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = arg_2.b.xww;
    let var_1 = _wgslsmith_f_op_f32(sign(-130f));
    let var_2 = select(vec4<bool>(true, !(any(vec2<bool>(false, true)) | true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), -37078i < arg_0.a.x), select(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), false, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(func_2(all(vec3<bool>(false, false, false)), arg_1.a)) > _wgslsmith_f_op_f32(floor(369f))), !func_3(_wgslsmith_mult_i32(arg_1.a.x, _wgslsmith_dot_vec3_i32(arg_0.a.wwz, arg_0.a.xzy)), all(vec2<bool>(true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))).x);
    let var_3 = !any(vec3<bool>(var_2.x, var_2.x, all(vec4<bool>(var_2.x, var_2.x, true, var_2.x)) || all(var_2)));
    let var_4 = true;
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(31167u, ~global0.x, global0.x), ~(~vec3<u32>(53082u, 13301u, 0u))) >> (vec3<u32>(global0.x, 16427u << (0u % 32u), 0u) % vec3<u32>(32u)), abs(~(~vec3<u32>(4294967295u, 60317u, 1u))), vec3<u32>(~global0.x, global0.x, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u | _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(55910u, global0.x, 4294967295u)) << (min(func_1(Struct_2(vec4<i32>(-20400i, u_input.a, -34133i, u_input.a)), Struct_2(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), Struct_1(u_input.a, vec4<f32>(-863f, 1309f, 459f, -424f), vec3<f32>(1192f, 1338f, -523f))), ~vec3<u32>(global0.x, global0.x, global0.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.x, global0.x), vec3<u32>(31782u, 0u, 628u) ^ vec3<u32>(global0.x, 77610u, 0u)) << (~(vec3<u32>(global0.x, 30851u, global0.x) << (vec3<u32>(global0.x, global0.x, 26959u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_2(abs(firstLeadingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(-3254i, u_input.a, u_input.a, u_input.a), countOneBits(vec4<i32>(-30271i, 0i, u_input.a, u_input.a))))));
    let var_2 = vec2<bool>(false, false);
    var var_3 = Struct_1(var_1.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-360f, -200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(758f * 798f)), _wgslsmith_f_op_f32(-931f - -1195f), _wgslsmith_f_op_f32(f32(-1f) * -563f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1177f, -569f, 520f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(262f, 1143f, -1993f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1396f, -1240f, -477f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(972f, -1000f, 184f))))));
    var var_4 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 1u), vec3<u32>(var_0, var_0, global0.x) ^ vec3<u32>(var_0, var_0, 1u)) >> (abs(~21611u) % 32u)) & 4294967295u;
    var var_5 = abs(var_3.a);
    var var_6 = min(vec2<i32>(1i, select(u_input.a, abs(var_3.a), all(vec3<bool>(false, var_2.x, var_2.x)))), -vec2<i32>(_wgslsmith_sub_i32(var_3.a, u_input.a ^ var_1.a.x), -var_1.a.x));
    let var_7 = Struct_1(min(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.a.yw, var_1.a.xw), var_1.a.zx), vec2<i32>(2147483647i, _wgslsmith_clamp_i32(3010i, -72946i, var_1.a.x))), _wgslsmith_dot_vec2_i32(firstTrailingBit(-var_1.a.zy), vec2<i32>(var_1.a.x, _wgslsmith_div_i32(-30738i, var_6.x)))), var_3.b, _wgslsmith_f_op_vec3_f32(round(var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(31432i), -45169i, max(max(var_6.x, ~u_input.a), 1i)), 89861u);
}

