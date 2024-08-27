struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
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

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = true;
    var var_1 = vec2<u32>(arg_2.x, ~(~_wgslsmith_mod_u32(808u, 4294967295u)));
    var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~abs(vec2<u32>(4294967295u, 4294967295u)), u_input.d.xz) ^ vec2<u32>(~var_1.x, 45461u), arg_2 | ~(select(vec2<u32>(57809u, 0u), u_input.d.xw, true) << (u_input.d.yx % vec2<u32>(32u))), arg_2);
    let var_2 = (u_input.d.xyy & _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.x, var_1.x, var_1.x), u_input.d.wwz | vec3<u32>(var_1.x, u_input.d.x, var_1.x))) & vec3<u32>(_wgslsmith_div_u32(14489u, 4294967295u), ~0u, firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, ~2932u)));
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(abs(arg_3.b) ^ abs(global1.a), vec4<i32>(2147483647i, 1i, ~2147483647i, -1i)) >> (vec4<u32>(var_1.x, u_input.d.x, ~_wgslsmith_div_u32(0u, 7826u), _wgslsmith_mod_u32(1u, ~u_input.d.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(global1.a >> (vec4<u32>(select(1u, 1544u, false), ~var_2.x, 1u, arg_2.x | 9730u) % vec4<u32>(32u)), countOneBits(_wgslsmith_sub_vec4_i32(firstLeadingBit(global1.a), global1.a))));
    return var_3;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1255f);
    var var_1 = Struct_2(countOneBits(global1.a), 664f);
    var var_2 = arg_1;
    var_1 = Struct_2(max(-(~func_3(vec3<i32>(arg_0, -2147483647i, 1i), u_input.c, vec2<u32>(u_input.d.x, 4294967295u), Struct_1(-1553f, vec4<i32>(-1i, -14809i, -1i, 29286i)))), ~max(vec4<i32>(0i, global1.a.x, 0i, arg_0) ^ vec4<i32>(u_input.b, global1.a.x, arg_0, -29241i), var_1.a << (u_input.d % vec4<u32>(32u)))), global0.x);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x + 1222f)));
    return Struct_2(global1.a, var_2.x);
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(vec4<i32>(global1.a.x, global1.a.x, _wgslsmith_add_i32(~2147483647i, u_input.b), u_input.a), global0.x);
    global1 = func_2(firstTrailingBit(-countOneBits(reverseBits(global1.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global1.b, global1.b, global1.b) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global1.b, 749f), vec4<f32>(173f, global1.b, -416f, 720f), vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1028f, 972f, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global1.b, -176f)), false))))));
    global1 = func_2(~((i32(-1i) * -30209i) ^ -(~global1.a.x)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-601f, 846f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)), _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(floor(549f))), _wgslsmith_f_op_f32(-global0.x)));
    let var_0 = Struct_3(!vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.e.xx, vec2<i32>(-32699i, global1.a.x)) != firstTrailingBit(-2147483647i), all(vec3<bool>(false, false, true)), true, true), vec4<i32>(_wgslsmith_div_i32(countOneBits(global1.a.x), 2147483647i), global1.a.x, _wgslsmith_add_i32(~(u_input.b >> (4294967295u % 32u)), -_wgslsmith_add_i32(u_input.b, -10704i)), select(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, 18674i, 0i), vec3<i32>(8755i, u_input.e.x, u_input.a)), ~2147483647i, abs(u_input.d.zw), Struct_1(-1379f, global1.a)).x, global1.a.x, !all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(global0.x * global0.x), Struct_2(_wgslsmith_clamp_vec4_i32(-select(vec4<i32>(global1.a.x, 31202i, -2147483647i, -30777i), vec4<i32>(global1.a.x, 0i, -5057i, 14430i), false), ~vec4<i32>(-28110i, global1.a.x, 30094i, global1.a.x) & global1.a, func_2(_wgslsmith_sub_i32(global1.a.x, -9112i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1267f, global1.b, global0.x, -1526f))).a), global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.b, 518f) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-162f, global1.b, -1273f), vec3<f32>(1000f, 2782f, global0.x), vec3<bool>(false, false, false))))))));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b, -377f)));
    return Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-855f)), _wgslsmith_f_op_f32(-global0.x), all(var_0.a.ww))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 826f))));
    global1 = Struct_2(global1.a, -478f);
    global1 = func_1();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + func_1().b)))), -1220f);
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(244f, global1.b))), _wgslsmith_f_op_f32(-global1.b))), global0.x) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -276f), vec2<f32>(-209f, -1000f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(484f, global0.x), vec2<f32>(-1000f, global0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 2426f))), vec2<f32>(678f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))));
    global1 = func_2(2147483647i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -1048f, -733f, -1042f), vec4<f32>(855f, 1000f, 1000f, global1.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, global1.b, -400f, 1757f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1647f, 745f, -226f, 1327f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -724f, 684f, 523f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 425f, -1480f, -605f)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(u_input.d.wwz, _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), u_input.d.wyx)));
}

