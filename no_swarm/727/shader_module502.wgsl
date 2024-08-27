struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-997f, vec2<bool>(true, false), vec4<bool>(false, true, false, false), vec2<i32>(0i, -1i), vec3<i32>(-49711i, 2147483647i, -1i));

var<private> global1: vec4<i32>;

var<private> global2: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a, 1000f, 1018f))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2176f - _wgslsmith_f_op_f32(568f + var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -812f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) - global0.a), _wgslsmith_f_op_f32(-1252f + _wgslsmith_f_op_f32(-var_0.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - var_0.a.x) + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(global0.a + var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f * global0.a)), 1210f)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-922f, 202f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a + 172f))))), !vec2<bool>(global0.c.x, u_input.a >= u_input.a), select(!select(global0.c, global0.c, true), global0.c, global0.c), _wgslsmith_sub_vec2_i32(~(global1.xz & global1.wz), -firstTrailingBit(vec2<i32>(-1i, global1.x))), ~global0.e), !(!global0.c.x), ~vec4<u32>(24311u, u_input.a, ~_wgslsmith_sub_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))));
    let var_2 = !all(select(!global0.c.zwz, select(!global0.c.xyx, global0.c.wyz, select(vec3<bool>(true, global0.b.x, var_1.b.b.x), vec3<bool>(global0.b.x, false, false), vec3<bool>(true, false, true))), false));
    global2 = 41780u;
    var var_3 = global0.c.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.zwy * var_1.a.xxx));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec4<bool> {
    global0 = Struct_1(global0.a, select(global0.c.xx, global0.c.xz, any(global0.c)), select(select(select(select(global0.c, vec4<bool>(true, true, false, global0.c.x), global0.b.x), select(global0.c, vec4<bool>(false, global0.c.x, global0.b.x, global0.b.x), false), global0.b.x), global0.c, !vec4<bool>(global0.b.x, true, global0.c.x, false)), global0.c, !select(vec4<bool>(true, false, global0.b.x, true), !global0.c, vec4<bool>(false, global0.c.x, false, false))), -global1.xx, _wgslsmith_mult_vec3_i32(global1.www ^ global0.e, select(firstTrailingBit(global1.zxw), vec3<i32>(-2147483647i, arg_0, global1.x), select(vec3<bool>(global0.b.x, global0.c.x, true), global0.c.yzy, global0.b.x)) | -_wgslsmith_div_vec3_i32(global0.e, vec3<i32>(arg_0, arg_0, 1i))));
    let var_0 = arg_1;
    global2 = abs(~0u);
    var var_1 = !vec4<bool>(true, !(0u >= ~u_input.a), any(select(vec4<bool>(global0.c.x, global0.c.x, global0.b.x, global0.b.x), !vec4<bool>(global0.c.x, false, true, true), select(global0.c, global0.c, global0.c))), !(any(global0.c) || true));
    global1 = vec4<i32>(global0.d.x, ~2147483647i >> (~_wgslsmith_dot_vec2_u32(max(vec2<u32>(16503u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), countOneBits(vec2<u32>(u_input.a, u_input.a))) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0, 2147483647i), global0.e.zz), min(abs(vec2<i32>(2147483647i, 63604i)), min(global1.xx, vec2<i32>(arg_0, 74837i)))), firstLeadingBit(arg_0));
    return select(vec4<bool>(select(global0.b.x, false, true), any(global0.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a + global0.a), -251f, false)) < arg_1.a.x, global0.b.x), select(vec4<bool>(var_1.x & any(vec3<bool>(global0.c.x, false, true)), any(select(vec2<bool>(false, var_1.x), var_1.xx, vec2<bool>(var_1.x, global0.c.x))), global0.c.x, true), select(global0.c, global0.c, all(global0.c)), vec4<bool>(true, var_1.x, false, !var_1.x)), all(global0.c.wxy));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(-627f, global0.c.yw, func_4(-44i, Struct_3(_wgslsmith_f_op_vec3_f32(func_3()))), firstTrailingBit((vec2<i32>(-1i) * -global0.d) >> (firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), min(~_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(global1.xzx, global1.wxy), vec3<i32>(2147483647i, 0i, 1i)), ~(-(~arg_1))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-146f, arg_0.x, _wgslsmith_f_op_f32(1000f * arg_0.x))))));
    return vec3<bool>(global0.c.x, !(true & select(2147483647i >= global1.x, false, global0.c.x)), !((~arg_1.x > _wgslsmith_sub_i32(0i, arg_1.x)) & any(select(vec4<bool>(global0.b.x, var_0.c.x, false, var_0.b.x), vec4<bool>(global0.b.x, var_0.b.x, global0.c.x, var_0.b.x), global0.b.x))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(false, true);
    global2 = arg_1.x;
    global1 = vec4<i32>(-1i) * -min(vec4<i32>(_wgslsmith_div_i32(0i, global1.x), abs(global0.d.x), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-7375i, global1.x, -38034i, global1.x), vec4<i32>(global0.d.x, 14379i, 1i, global0.e.x))), vec4<i32>(2147483647i << (u_input.a % 32u), global0.e.x, select(0i, 2147483647i, false), 0i));
    var var_1 = func_4(2147483647i, Struct_3(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), 1357f))).xww;
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(290f, global0.a, arg_2.x, arg_2.x) * vec4<f32>(arg_2.x, global0.a, -525f, 1573f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, global0.a, -622f, -1249f), vec4<f32>(1810f, 1048f, global0.a, 750f))))))), vec4<f32>(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-104f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, 605f)) + _wgslsmith_f_op_f32(min(global0.a, arg_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.x)), arg_2.x), -176f)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, arg_2.x))))), select(!arg_0.xy, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -996f) - vec2<f32>(-385f, global0.a)), vec3<i32>(-1i, 2147483647i, 23224i)).xx, var_0), global0.c, -vec2<i32>(min(global0.e.x, global1.x), global1.x & global0.d.x), vec3<i32>(-1i) * -select(vec3<i32>(global1.x, global1.x, global1.x), global1.zxz, false)), all(select(vec2<bool>(any(global0.c.zyy), any(vec4<bool>(var_1.x, false, false, var_1.x))), vec2<bool>(true, true), arg_0.x)), vec4<u32>(_wgslsmith_add_u32(0u, u_input.a ^ 4294967295u), 50702u, firstTrailingBit(u_input.a << (arg_1.x % 32u)), ~(~(~arg_1.x))));
    return var_2.b;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global0.e.x, min(global0.d.x, global1.x), _wgslsmith_div_i32(global0.e.x, global1.x)) & ~reverseBits(global0.e.x), 11335i), 6321i);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1612f, global0.a, -1447f, global0.a))), func_5(!func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 291f)), global0.e), vec3<u32>(abs(u_input.a), u_input.a, 0u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, global0.a, global0.a))), vec3<f32>(_wgslsmith_f_op_f32(global0.a + global0.a), global0.a, 1108f)))), 68425u >= firstTrailingBit(~(~102579u)), vec4<u32>(~1u, abs(u_input.a), abs(~u_input.a), ~u_input.a));
    let var_2 = _wgslsmith_sub_u32(firstTrailingBit(u_input.a) >> (u_input.a % 32u), 1u);
    global2 = 4294967295u;
    global2 = var_1.d.x;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 115f;
    let var_2 = func_5(global0.c.ywz, select(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, var_0, 1u), vec3<u32>(1u, 4294967295u, var_0))), min(_wgslsmith_mod_vec3_u32(vec3<u32>(57724u, u_input.a, 0u), vec3<u32>(u_input.a, 40935u, var_0)), abs(vec3<u32>(var_0, 0u, var_0))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(var_0, u_input.a, 1u), abs(vec3<u32>(var_0, 12609u, 23678u))), func_4(~global1.x, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1550f, var_1, -225f)))).wzx), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 1000f))))));
    global0 = var_2;
    global2 = var_0;
    var var_3 = all(vec3<bool>(true, var_2.c.x, !(!var_2.b.x) & false));
    var var_4 = u_input.a < func_1();
    var var_5 = var_2.c;
    var var_6 = ~(i32(-1i) * -(~global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a, 657f, global0.a), vec3<f32>(var_1, -1675f, -1089f))))))));
}

