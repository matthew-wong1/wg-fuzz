struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1206f, -1021f, -396f);

var<private> global1: i32 = -34056i;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec4<i32>(-26749i, i32(-2147483648), 2147483647i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global1 = -(arg_0 | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 71369i), vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(-10656i, global2.b.x))));
    return vec3<bool>(true, all(select(select(vec3<bool>(global2.a.x, true, true), vec3<bool>(true, true, false), global2.a.x || global2.a.x), global2.a, global2.a)), all(select(vec4<bool>(global0.x < -274f, true, !arg_1.a.x, all(vec2<bool>(arg_1.a.x, global2.a.x))), vec4<bool>(global2.a.x, true, true, false), true)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(func_3(-u_input.a.x, arg_0), global2.b);
    var var_1 = select(select(vec4<bool>(!(!arg_0.a.x), _wgslsmith_f_op_f32(select(global0.x, global0.x, var_0.a.x)) == _wgslsmith_f_op_f32(-2166f * -969f), false, func_3(i32(-1i) * -2147483647i, Struct_1(var_0.a, vec4<i32>(-7324i, -2147483647i, u_input.a.x, global2.b.x))).x), !vec4<bool>(false, any(var_0.a.xy), var_0.a.x, false), ~1u != _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 34646u, 1u, 1u), reverseBits(vec4<u32>(0u, 55577u, 54550u, 4294967295u)))), select(!vec4<bool>(func_3(1i, arg_0).x, true, arg_0.a.x, true), !vec4<bool>(!var_0.a.x, var_0.a.x, any(var_0.a), arg_0.a.x != arg_0.a.x), !select(vec4<bool>(true, true, arg_0.a.x, false), !vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(var_0.a.x, arg_0.a.x, arg_0.a.x, var_0.a.x))), false);
    var var_2 = -(-2147483647i & arg_1) ^ ~(var_0.b.x >> (abs(~82362u) % 32u));
    global2 = var_0;
    var_1 = vec4<bool>(any(func_3(-3687i, var_0)), true, false, arg_0.a.x);
    return Struct_1(func_3(-u_input.a.x, Struct_1(select(!arg_0.a, vec3<bool>(true, true, false), true), vec4<i32>(16663i, 2147483647i, u_input.a.x, select(var_0.b.x, 0i, var_0.a.x)))), firstLeadingBit(u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = func_2(arg_3, 28909i);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3335f, _wgslsmith_f_op_f32(global0.x * global0.x), global0.x))) - vec3<f32>(560f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-680f)) * global0.x) - -555f)));
    let var_1 = all(!select(select(vec4<bool>(true, true, false, global2.a.x), select(vec4<bool>(false, true, arg_3.a.x, true), vec4<bool>(false, var_0.a.x, true, true), vec4<bool>(global2.a.x, true, global2.a.x, var_0.a.x)), select(vec4<bool>(arg_0.a.x, false, true, global2.a.x), vec4<bool>(false, global2.a.x, var_0.a.x, true), vec4<bool>(arg_0.a.x, var_0.a.x, arg_0.a.x, var_0.a.x))), !select(vec4<bool>(global2.a.x, false, arg_3.a.x, false), vec4<bool>(global2.a.x, true, global2.a.x, arg_3.a.x), vec4<bool>(arg_0.a.x, var_0.a.x, true, var_0.a.x)), false));
    global1 = -_wgslsmith_mult_i32(~_wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(var_0.b.x, u_input.a.x)), i32(-1i) * -1i);
    let var_2 = select(true, arg_3.a.x, any(vec3<bool>((-2147483647i & arg_3.b.x) == var_0.b.x, true, true)));
    return _wgslsmith_sub_vec3_u32(~arg_2.wwz, arg_2.xzy);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global2 = Struct_1(func_2(Struct_1(!vec3<bool>(false, global2.a.x, false), ~global2.b & _wgslsmith_mult_vec4_i32(global2.b, vec4<i32>(global2.b.x, arg_1.b.x, -42377i, -2147483647i))), arg_1.b.x).a, _wgslsmith_mod_vec4_i32(-(~(-global2.b)), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x >> (38712u % 32u), -u_input.a.x), arg_1.b.x, arg_1.b.x, u_input.a.x)));
    var var_0 = 193f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -533f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-616f, 3026f)), global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -591f), _wgslsmith_f_op_f32(1055f * -718f), global2.a.x)))));
    var_0 = _wgslsmith_f_op_f32(-global0.x);
    var var_2 = func_2(func_2(arg_1, 32294i), max(arg_1.b.x, ~(select(arg_1.b.x, arg_1.b.x, false) << (_wgslsmith_add_u32(47404u, arg_0.x) % 32u))));
    return func_2(Struct_1(!vec3<bool>(all(vec3<bool>(arg_1.a.x, var_2.a.x, false)), !var_2.a.x, !global2.a.x), -vec4<i32>(-38744i, ~1i, -2147483647i, max(var_2.b.x, u_input.a.x))), _wgslsmith_add_i32((var_2.b.x << (arg_0.x % 32u)) >> (~arg_0.x % 32u), 33605i) | (firstLeadingBit(_wgslsmith_clamp_i32(u_input.a.x, -23552i, global2.b.x)) >> (~abs(60644u) % 32u)));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    global2 = func_2(Struct_1(vec3<bool>(func_3(14042i, func_4(vec3<u32>(4294967295u, 36337u, 19154u), Struct_1(vec3<bool>(global2.a.x, false, global2.a.x), vec4<i32>(17064i, u_input.a.x, -2390i, 17477i)))).x, arg_0.a.x, false), _wgslsmith_mod_vec4_i32(max(u_input.a, firstLeadingBit(vec4<i32>(u_input.a.x, arg_0.b.x, u_input.a.x, u_input.a.x))), vec4<i32>(0i, ~(-2147483647i), 1i, global2.b.x))), ~(-2147483647i));
    let var_0 = arg_0;
    var var_1 = Struct_1(vec3<bool>(arg_0.a.x, var_0.a.x, global2.a.x), abs(arg_0.b));
    var_1 = var_0;
    var var_2 = -1976f;
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), 1231f), -1278f)), global0.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, 939f, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1043f, 425f, 992f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), !var_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-616f, 711f, global0.x, global0.x), vec4<f32>(global0.x, 425f, global0.x, 188f), false))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - global0.yz) + global0.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(global2.a, reverseBits(min(vec4<i32>(-2147483647i, _wgslsmith_div_i32(global2.b.x, 36152i), i32(-1i) * -18809i, u_input.a.x), global2.b)));
    var var_0 = vec3<i32>(-1i) * -(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, -61388i), _wgslsmith_sub_vec3_i32(global2.b.wxw, global2.b.zwy)) | vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), firstLeadingBit(-2147483647i), global2.b.x | global2.b.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-564f * -117f)))));
    global1 = 1i;
    let var_2 = any(!(!select(!vec4<bool>(false, false, true, global2.a.x), select(vec4<bool>(false, false, false, global2.a.x), vec4<bool>(true, false, global2.a.x, true), vec4<bool>(true, global2.a.x, false, true)), var_1.x > 1205f)));
    let x = u_input.a;
    s_output = func_5(func_4(func_1(Struct_1(vec3<bool>(global2.a.x, true, false), countOneBits(global2.b)), -_wgslsmith_div_i32(-2147483647i, -4387i), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(!global2.a, reverseBits(vec4<i32>(var_0.x, var_0.x, -39643i, u_input.a.x)))), func_2(func_2(Struct_1(vec3<bool>(var_2, global2.a.x, true), global2.b), global2.b.x), u_input.a.x)));
}

