struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_3(arg_1, !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec3<bool>(true, true, false)) & select(false, true, false)), Struct_2(arg_2));
    let var_1 = Struct_3(arg_1, vec2<bool>(var_0.b.x, !(_wgslsmith_f_op_f32(f32(-1f) * -957f) < _wgslsmith_f_op_f32(select(1000f, -1337f, true)))), arg_1);
    var_0 = var_1;
    var_0 = var_1;
    var_0 = Struct_3(var_1.c, vec2<bool>(var_1.b.x, !var_0.b.x), Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(min(vec3<i32>(2147483647i, 2147483647i, arg_1.a.a.x), arg_1.a.a), countOneBits(vec3<i32>(arg_3.a.x, 73258i, 15044i))), (arg_1.a.b | vec4<u32>(arg_3.b.x, 24451u, 83480u, 3856u)) ^ ~arg_1.a.b)));
    return ~(i32(-1i) * -1i);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(u_input.d.zyw, select(~vec4<u32>(4294967295u, 4294967295u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.a.x, 0u, u_input.b.x) >> (vec4<u32>(52678u, u_input.a.x, 41085u, 54778u) % vec4<u32>(32u)), any(vec2<bool>(true, true))))), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)) & true, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))), Struct_2(Struct_1(vec3<i32>(4103i, _wgslsmith_mult_i32(-12185i, arg_2), _wgslsmith_mult_i32(1i, 2147483647i)), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 4294967295u) ^ vec4<u32>(u_input.b.x, 46449u, 19169u, u_input.a.x), ~vec4<u32>(1u, u_input.b.x, 38452u, 1u), true))));
    let var_1 = var_0.a.a;
    return -521f;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = -1000f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1192f * _wgslsmith_f_op_f32(max(-376f, -1566f))), 233f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1023f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -352f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-444f + -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -415f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(firstTrailingBit(_wgslsmith_mult_i32(u_input.d.x, func_3(u_input.c, Struct_2(Struct_1(vec3<i32>(u_input.d.x, 10044i, 17761i), vec4<u32>(1u, 17426u, u_input.a.x, 24561u))), Struct_1(vec3<i32>(u_input.c.x, u_input.d.x, -1286i), vec4<u32>(10601u, u_input.a.x, 20881u, 0u)), Struct_1(u_input.d.zwy, vec4<u32>(0u, u_input.a.x, 820u, 0u))))), 30335i, -2147483647i)) - 1746f);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(501f + -720f))))));
    var_0 = -1280f;
    return arg_0.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1.a;
    let var_1 = arg_1;
    let var_2 = arg_1.a;
    var var_3 = Struct_3(Struct_2(Struct_1(vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, 0i), ~4224i, firstLeadingBit(arg_1.a.a.x)), _wgslsmith_sub_vec4_u32(var_2.b ^ var_0.b, _wgslsmith_sub_vec4_u32(var_2.b, arg_1.a.b)))), select(arg_0.xx, !vec2<bool>(all(arg_0.yx), true | arg_0.x), false), arg_1);
    let var_4 = Struct_3(Struct_2(var_1.a), arg_0.yz, Struct_2(var_2));
    return Struct_2(var_1.a);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_5(select(!vec3<bool>(true, func_2(vec4<bool>(false, true, false, arg_0)), arg_0), vec3<bool>(true, true, true), false), Struct_2(Struct_1(u_input.d.wxz, max(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 27269u), ~vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 0u)))));
    var var_1 = Struct_1(u_input.c, var_0.a.b);
    var var_2 = var_0.a.b.ww;
    let var_3 = Struct_3(func_5(!(!(!vec3<bool>(arg_0, false, arg_0))), Struct_2(var_0.a)), vec2<bool>(all(vec2<bool>(!arg_0, true)), true), func_5(vec3<bool>(false, arg_0, true), func_5(select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), func_5(!vec3<bool>(arg_0, true, false), Struct_2(var_0.a)))));
    let var_4 = var_0.a;
    return var_3.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!((0i < u_input.d.x) | true)));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -u_input.d.x, ~(-1i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, var_0.a, var_0.a), abs(u_input.c))), _wgslsmith_add_vec3_i32(var_0.a, var_0.a)), -12079i, ~var_0.a.x);
    var var_2 = func_5(!(!select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), true)), Struct_2(var_0));
    let var_3 = func_1(!any(vec3<bool>(all(vec2<bool>(false, true)), var_0.b.x < var_2.a.b.x, any(vec4<bool>(false, true, true, true)))));
    var_1 = var_3.a;
    let var_4 = _wgslsmith_div_f32(564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.d.x, 0i, -2147483647i))));
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(1337f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(var_4 * var_4)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4)))), _wgslsmith_f_op_f32(-var_4))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, 1420f, var_4, var_4) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(976f, -127f, -308f, -1858f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-621f, var_4, var_4, 647f)))))), var_5.a.yx, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, firstLeadingBit(6105i)), func_1(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false))).a.xy));
}

