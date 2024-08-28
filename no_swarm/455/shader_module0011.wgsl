struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(495f, -218f)) * _wgslsmith_div_f32(-2658f, 605f))), -282f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1683f)), _wgslsmith_div_f32(-1920f, _wgslsmith_f_op_f32(507f - -939f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-364f)) + _wgslsmith_f_op_f32(abs(142f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 412f)) + -321f))));
    let var_1 = Struct_2(false || any(vec4<bool>(false, select(false, false, global0.x), any(vec3<bool>(global0.x, global0.x, false)), !global0.x)));
    global0 = vec3<bool>(any(vec2<bool>(true, var_1.a)), var_1.a, !all(vec4<bool>(true, true, true, true)) != (any(vec2<bool>(true, false)) || var_1.a));
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(all(vec4<bool>(!any(vec2<bool>(false, global0.x)), true, true, !func_3())), true, func_3(), global0.x);
    return arg_3;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = global0.x;
    return abs(_wgslsmith_div_u32(1u, u_input.b));
}

fn func_1() -> bool {
    global0 = !vec3<bool>(!global0.x, true, false);
    global0 = !vec3<bool>(global0.x, true, false);
    let var_0 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(~u_input.a), 120756u, func_4(reverseBits(u_input.a), Struct_1(vec4<f32>(573f, 723f, 959f, -283f)), func_2(vec4<f32>(378f, -570f, -1000f, -1250f), vec4<i32>(-2147483647i, 0i, 8480i, -21574i), vec2<f32>(-901f, 697f), Struct_1(vec4<f32>(-1512f, -1000f, 324f, -952f))), Struct_2(global0.x)), u_input.a), ~min(vec4<u32>(u_input.a, u_input.a, u_input.b, 18241u), vec4<u32>(0u, u_input.b, 0u, u_input.a) >> (vec4<u32>(42813u, 4294967295u, u_input.b, 88189u) % vec4<u32>(32u))), select(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, 1u), vec4<u32>(4294967295u, 4227u, u_input.b, u_input.a)), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), ~(vec4<u32>(u_input.b, 51458u, u_input.a, 4294967295u) << (vec4<u32>(77771u, 4294967295u, 60353u, u_input.b) % vec4<u32>(32u))), !select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), _wgslsmith_add_vec4_u32(~((vec4<u32>(u_input.a, u_input.b, u_input.b, 1u) << (vec4<u32>(u_input.a, u_input.a, 71937u, 8388u) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 8876u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, 26607u, 122125u, u_input.a))), vec4<u32>(firstLeadingBit(u_input.a), u_input.a, u_input.a, 28556u)), vec4<bool>(false, false, false, !select(0u >= u_input.a, !global0.x, true)));
    var var_1 = !(!select(vec4<bool>(any(vec3<bool>(true, true, true)), true && global0.x, !global0.x, !global0.x), select(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, true)), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, true, false, true), true), vec4<bool>(true, global0.x, true, global0.x)), select(!vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, global0.x, global0.x, true), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, false, global0.x, true)))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(1783f, 771f, -1426f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(238f)), _wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(378f - -555f)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(365f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1116f)))))));
    return !(!var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(!(!all(vec2<bool>(global0.x, false))), _wgslsmith_mult_u32(0u, ~u_input.a) <= u_input.b, !func_1(), true);
    let var_1 = -1i;
    var var_2 = func_2(vec4<f32>(-504f, -522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(348f)) + _wgslsmith_div_f32(-1214f, -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(820f, 188f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-196f, -625f), -523f)) * -772f)), _wgslsmith_mod_vec4_i32(abs(-vec4<i32>(-1i, -1i, var_1, 78949i)), ~(-vec4<i32>(8162i, var_1, 2147483647i, var_1))) ^ vec4<i32>(-30109i, -1i, -(~(-7873i)), -var_1), vec2<f32>(_wgslsmith_f_op_f32(min(-506f, -1276f)), -1000f), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, -1127f, _wgslsmith_f_op_f32(round(-378f)), _wgslsmith_f_op_f32(f32(-1f) * -633f)) - vec4<f32>(-291f, _wgslsmith_f_op_f32(min(220f, -1000f)), -122f, _wgslsmith_f_op_f32(ceil(-162f))))));
    global0 = select(!vec3<bool>(!func_3(), true, global0.x | var_0.x), vec3<bool>(all(vec3<bool>(global0.x, global0.x, false)), global0.x, u_input.b < u_input.a), !all(var_0.yz));
    let var_3 = func_2(var_2.a, vec4<i32>(var_1, max(~_wgslsmith_clamp_i32(-45511i, var_1, -1i), ~(-41324i)), var_1, ~(-7637i)), vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(445f))))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(1088f)), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(floor(var_2.a.x)), _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -418f, var_2.a.x, var_2.a.x) - var_2.a))), var_0.x))));
    var var_4 = Struct_2(any(vec3<bool>(!(global0.x == true), !global0.x, 1807f > func_2(var_3.a, vec4<i32>(var_1, var_1, var_1, var_1), var_2.a.zz, Struct_1(vec4<f32>(-464f, 204f, var_3.a.x, var_2.a.x))).a.x)));
    global0 = select(select(vec3<bool>(countOneBits(0u) >= u_input.b, all(!var_0.zw), all(select(var_0.wz, vec2<bool>(var_0.x, var_4.a), vec2<bool>(var_0.x, true)))), select(var_0.zyz, vec3<bool>(false, var_4.a, global0.x), all(vec4<bool>(true, true, var_4.a, var_4.a))), select(vec3<bool>(var_0.x & false, all(vec4<bool>(var_4.a, true, var_4.a, var_0.x)), true), select(!vec3<bool>(true, var_0.x, true), !var_0.xxy, true), var_0.xzy)), vec3<bool>(func_1(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_3.a.x)), var_3.a.x)) != _wgslsmith_div_f32(var_3.a.x, -606f), !(u_input.a < u_input.b)), _wgslsmith_sub_i32(~(var_1 << (u_input.b % 32u)), 2147483647i) < ~_wgslsmith_mult_i32(abs(2147483647i), _wgslsmith_mod_i32(-10052i, var_1)));
    global0 = var_0.zyw;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.wy, 798f);
}

