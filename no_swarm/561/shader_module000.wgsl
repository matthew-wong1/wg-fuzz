struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<i32>) -> vec2<bool> {
    return global0.zz;
}

fn func_3() -> vec4<bool> {
    var var_0 = select(vec4<bool>(all(select(select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, true, global0.x, false)), !vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false)))), global0.x, global0.x, all(vec2<bool>(1u <= u_input.b, global0.x))), select(vec4<bool>(global0.x, false, !global0.x, false), !(!select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), true)), vec4<bool>(true, !global0.x, true, global0.x)), select(false, !any(vec3<bool>(true, global0.x, global0.x)), global0.x));
    let var_1 = !(!(!(!select(vec4<bool>(true, true, true, global0.x), vec4<bool>(true, global0.x, var_0.x, false), global0.x))));
    global0 = select(vec4<bool>(func_2(1u, countOneBits(min(vec3<u32>(u_input.c, u_input.a, 139348u), u_input.e)), reverseBits(vec3<i32>(u_input.d, u_input.d, 0i))).x, !(!var_0.x & false), true, global0.x), !select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_1.x, global0.x, false, false), global0.x), var_1, all(var_1.zyx)), vec4<bool>(!var_1.x, true, any(vec3<bool>(true, var_1.x, var_1.x)), true)), select(vec4<bool>(!var_1.x, !var_1.x, 7731u >= u_input.a, !global0.x | true), vec4<bool>(all(select(var_1.zxw, vec3<bool>(true, true, global0.x), var_1.zxw)), any(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_1.x, true, true), var_0.x)), true, true && global0.x), select(select(!vec4<bool>(true, var_0.x, var_1.x, false), var_1, vec4<bool>(global0.x, false, true, global0.x)), select(select(vec4<bool>(false, global0.x, true, var_0.x), var_1, vec4<bool>(true, global0.x, global0.x, false)), !vec4<bool>(false, true, false, global0.x), var_1), var_1.x)));
    var var_2 = ~u_input.c;
    let var_3 = var_0.x;
    return !(!vec4<bool>(!(!var_0.x), false, (u_input.d >> (u_input.e.x % 32u)) > abs(u_input.d), !func_2(u_input.c, vec3<u32>(16039u, u_input.b, 0u), vec3<i32>(u_input.d, u_input.d, u_input.d)).x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -760f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-665f, 1324f)), -1590f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-534f - 2072f)))), -331f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(541f - -1730f) + 1649f));
    let var_1 = !select(func_2(u_input.b, vec3<u32>(firstLeadingBit(u_input.b), countOneBits(0u), 1u), vec3<i32>(_wgslsmith_add_i32(-23342i, 34568i), i32(-1i) * -22770i, arg_2.a.x)), global0.wy, !global0.x);
    global0 = !(!(!select(func_3(), !vec4<bool>(var_1.x, var_1.x, global0.x, false), vec4<bool>(false, global0.x, false, false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-131f, 1143f, -154f, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(660f, var_0.x, 1000f, var_0.x))) + vec4<f32>(694f, _wgslsmith_f_op_f32(select(1370f, 213f, arg_1.x)), var_0.x, _wgslsmith_div_f32(var_0.x, 998f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-749f, var_0.x, 368f, var_0.x), vec4<f32>(var_0.x, -384f, 1000f, -1246f), false)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1332f, -1874f, var_0.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -827f, -596f, var_0.x))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 108f), _wgslsmith_f_op_f32(select(var_2.x, var_0.x, false)))), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(select(var_2.x, var_0.x, var_1.x))))));
    return all(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(!(!vec4<bool>(false, global0.x, global0.x, true)), !vec4<bool>(global0.x, true, global0.x, global0.x), !(!vec4<bool>(true, false, global0.x, false))));
    let var_0 = !select(vec2<bool>(global0.x, true), vec2<bool>(all(vec3<bool>(global0.x, global0.x, false)), func_1(vec3<i32>(u_input.d, -25824i, u_input.d), vec3<bool>(global0.x, true, global0.x), Struct_1(vec4<i32>(u_input.d, 9957i, 16354i, u_input.d))) || global0.x), global0.x);
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1i, 21469i, 2147483647i), -1i, select(1i, 2810i, false), ~u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, _wgslsmith_sub_i32(-2147483647i, -27652i)), ~(-vec4<i32>(u_input.d, u_input.d, 46625i, 0i))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -55660i, -2147483647i, u_input.d) & vec4<i32>(-1i, u_input.d, 1i, u_input.d), select(vec4<i32>(15899i, u_input.d, 1i, 19963i), vec4<i32>(20056i, -30102i, 6286i, 0i), true)), vec4<i32>(1i, -2147483647i, u_input.d, u_input.d) << (~vec4<u32>(24096u, u_input.c, 4294967295u, 19544u) % vec4<u32>(32u)))));
    let var_2 = global0.ww;
    let var_3 = -1000f;
    let var_4 = Struct_1(~(-(_wgslsmith_clamp_vec4_i32(var_1.a, var_1.a, var_1.a) | vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, -11931i))));
    global0 = !select(select(!func_3(), !vec4<bool>(var_2.x, false, true, false), global0.x), !(!select(vec4<bool>(var_2.x, global0.x, false, var_0.x), vec4<bool>(var_2.x, false, var_2.x, var_0.x), vec4<bool>(true, false, var_2.x, true))), !(!(!global0.x)));
    var var_5 = var_4;
    var var_6 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(var_4.a.zz, -_wgslsmith_sub_vec2_i32(max(vec2<i32>(var_4.a.x, 5282i), vec2<i32>(6792i, var_5.a.x)), -var_1.a.zy)), _wgslsmith_div_vec2_i32(var_5.a.yz, var_5.a.zw | select(-var_4.a.yy, var_5.a.yx, func_3().xz)), vec2<i32>(-(~var_1.a.x), abs(-10759i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-321f, _wgslsmith_f_op_f32(-1253f - 883f))) - 1424f), u_input.b);
}

