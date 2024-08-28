struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(true, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.b), arg_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, 1664f, -1000f, -1141f), arg_1.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1229f, 1475f, -339f, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_2.b.x, arg_1.b.x, arg_2.b.x)))))), arg_2.c, ~_wgslsmith_dot_vec3_u32(abs(u_input.a.zyx ^ u_input.a.wyz), max(_wgslsmith_sub_vec3_u32(u_input.a.yzy, u_input.a.zyy), u_input.a.wwx)));
    let var_1 = ((-(vec3<i32>(arg_2.c.x, 0i, arg_2.c.x) ^ vec3<i32>(arg_1.c.x, 2147483647i, var_0.c.x)) & select(vec3<i32>(1i, 1i, -1i), vec3<i32>(arg_2.c.x, -12034i, -18320i) | vec3<i32>(19939i, 0i, -2147483647i), 19261i >= arg_2.c.x)) | vec3<i32>(49330i, ~max(-2147483647i, 1i), arg_1.c.x)) << (vec3<u32>(0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, arg_2.d) << (u_input.a.xw % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~u_input.a.xy, vec2<u32>(0u, 0u))), _wgslsmith_add_u32(arg_1.d, 4294967295u)) % vec3<u32>(32u));
    let var_2 = Struct_1(select(var_0.c.x == 2147483647i, select(true, any(!vec4<bool>(true, arg_1.a, true, true)), !all(vec4<bool>(var_0.a, arg_1.a, arg_2.a, arg_1.a))), (select(var_0.a, false, arg_1.a) || (false | arg_2.a)) | (arg_2.a || arg_2.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(arg_2.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, -513f, var_0.b.x, -733f)), var_0.b)), vec4<bool>(select(true, false, true), 145f >= arg_1.b.x, true, arg_1.a))))), var_1.zz, 1u);
    let var_3 = u_input.a.xw;
    var var_4 = select(vec3<bool>(!select(all(vec3<bool>(var_2.a, true, arg_2.a)), true, var_2.a && false), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, arg_1.a, true, arg_2.a)))), all(!vec3<bool>(arg_1.a, true, var_0.a))), vec3<bool>(arg_1.a, !arg_2.a, !var_0.a), var_2.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 1000f)), _wgslsmith_f_op_f32(max(-772f, -1063f))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = ~(-reverseBits(_wgslsmith_mult_i32(30514i << (arg_2.x % 32u), -2147483647i)));
    let var_1 = Struct_1(arg_1.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-630f, -1000f), _wgslsmith_f_op_f32(trunc(189f)), 391f, -2173f) - vec4<f32>(_wgslsmith_f_op_f32(func_3(4294967295u, Struct_1(arg_1.x, vec4<f32>(218f, -111f, -661f, 290f), vec2<i32>(15245i, 20418i), u_input.a.x), Struct_1(arg_1.x, vec4<f32>(-1566f, -412f, -622f, 356f), vec2<i32>(var_0, -2147483647i), 57173u))), 1f, 320f, _wgslsmith_f_op_f32(f32(-1f) * -171f))))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(~var_0, 3666i), vec2<i32>(2147483647i, firstLeadingBit(-20828i))), arg_0.x);
    var var_2 = -1i;
    return Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, 1285f, var_1.b.x)))))) * vec4<f32>(458f, _wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x)), vec2<i32>(var_1.c.x, var_0), arg_2.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = 1079f;
    var var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x, 0u >> (u_input.a.x % 32u), ~u_input.a.x), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 78028u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x))));
    var_1 = _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, ~1385u), 55087u, ~4294967295u, ~(~u_input.a.x)), u_input.a));
    let var_2 = func_2(firstTrailingBit(vec2<u32>(208u, select(~var_1.x, _wgslsmith_clamp_u32(var_1.x, 4294967295u, 55315u), false))), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, !arg_1, (-590f < arg_0.x) || any(vec2<bool>(arg_1, arg_1))), true), firstLeadingBit(u_input.a << (firstTrailingBit(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, 1u, 0u))) % vec4<u32>(32u))), var_1.yw);
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec3_u32(abs(abs(u_input.a.zww)), ~u_input.a.ywx), 4294967295u), ~(~abs(vec4<u32>(4294967295u, 4294967295u, 66324u, 48019u))), vec4<u32>(abs(reverseBits(0u)), ~42269u ^ var_2.d, ~(~u_input.a.x), min(var_2.d, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.x, 11166u), ~u_input.a.x))));
    return abs(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -547f), -270f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-575f)))))));
    var var_1 = reverseBits(54137i);
    var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5584i, -12387i, _wgslsmith_mult_i32(996i, 1i), -1i), vec4<i32>(2147483647i, -31333i, 2147483647i, -13968i) >> (u_input.a % vec4<u32>(32u))) >> (~1u % 32u), _wgslsmith_add_i32(1i << (func_1(var_0.zy, var_0.x < var_0.x, _wgslsmith_f_op_f32(abs(-815f)), 1000f) % 32u), ~(-countOneBits(2147483647i))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -1036f), vec3<f32>(var_0.x, var_0.x, -2587f), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 472f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(504f, var_0.x, 752f), vec3<f32>(var_0.x, var_0.x, var_0.x)))), vec3<bool>(true, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-423f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-417f, var_0.x)))))));
    let var_3 = func_2(reverseBits(u_input.a.yz), !(!vec3<bool>(all(vec4<bool>(true, true, false, true)), true, all(vec3<bool>(true, false, true)))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(3903u, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 2585u, 0u, 1u), vec4<bool>(false, true, true, false))), 4508u, u_input.a.x, ~_wgslsmith_clamp_u32(u_input.a.x, 0u, 16863u)) ^ u_input.a, abs(~((u_input.a.ww >> (u_input.a.zx % vec2<u32>(32u))) & select(vec2<u32>(24647u, 36409u), u_input.a.xw, vec2<bool>(true, true)))));
    var_2 = 891f;
    var var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

