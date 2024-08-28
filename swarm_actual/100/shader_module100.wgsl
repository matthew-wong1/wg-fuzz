struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_1(true, select(arg_1.x > _wgslsmith_mod_i32(abs(-49021i), _wgslsmith_mult_i32(u_input.c, 33408i)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-238f)), _wgslsmith_f_op_f32(trunc(390f))) != _wgslsmith_f_op_f32(f32(-1f) * -1250f)), ~vec2<u32>(select(u_input.e.x, ~arg_0.c.x, true), _wgslsmith_sub_u32(reverseBits(4294967295u), arg_0.c.x)), arg_0.d, all(select(vec2<bool>(arg_0.e, any(vec4<bool>(arg_0.b, false, arg_0.b, true))), select(select(vec2<bool>(false, arg_0.d.x), vec2<bool>(arg_0.e, true), arg_0.b), select(vec2<bool>(arg_0.e, true), vec2<bool>(arg_0.e, false), arg_0.e), !arg_0.d.zz), any(select(vec4<bool>(true, arg_0.a, arg_0.e, true), vec4<bool>(arg_0.b, false, true, arg_0.e), arg_0.a)))));
    let var_1 = vec2<bool>(!arg_0.b, arg_0.d.x);
    let var_2 = var_0.c.x;
    return reverseBits(var_2);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.e.x, ~(u_input.e.x ^ u_input.e.x)), u_input.e.x) >> ((u_input.e.x & ((func_3(Struct_1(true, false, vec2<u32>(61578u, 1u), vec3<bool>(true, false, true), false), vec2<i32>(u_input.b.x, -1i)) ^ (u_input.e.x ^ u_input.e.x)) & 21141u)) % 32u);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -339f), Struct_2(Struct_1(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), false, u_input.e.wy, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), true), true), Struct_1(all(vec4<bool>(true, true, true, true)), true, countOneBits(vec2<u32>(111806u, u_input.e.x)) & (u_input.e.xy & vec2<u32>(1u, u_input.e.x)), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, false))), Struct_1(true, true, u_input.e.xx, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), all(vec2<bool>(true, true)))), firstTrailingBit(vec2<i32>(~(~(-1081i)), u_input.c)), u_input.b);
    var var_2 = var_1.b;
    let var_3 = ~select(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.c.x, -75107i, var_1.d.x), var_1.d), -(~select(vec3<i32>(var_1.c.x, var_1.d.x, var_1.d.x), vec3<i32>(-8273i, u_input.d.x, 6914i), var_2.b.a)), true);
    let var_4 = var_1.a;
    return Struct_1(var_1.b.c.b, !var_2.c.b, vec2<u32>(var_2.a.c.x, _wgslsmith_sub_u32(u_input.e.x | var_1.b.b.c.x, abs(774u))) >> (_wgslsmith_mod_vec2_u32(var_1.b.b.c, _wgslsmith_add_vec2_u32(~var_2.a.c, vec2<u32>(var_2.a.c.x, 0u))) % vec2<u32>(32u)), var_1.b.b.d, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684f + _wgslsmith_f_op_f32(min(290f, -702f))) + 1242f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1303f)))))));
    var var_1 = vec4<bool>(true, var_0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -258f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-384f, var_0.x)))), arg_0.e, arg_2);
    return Struct_2(arg_0, Struct_1(select(_wgslsmith_dot_vec2_u32(u_input.e.wy, arg_0.c), abs(29249u), func_2().d.x) != _wgslsmith_mult_u32(arg_0.c.x, func_3(Struct_1(false, false, u_input.e.wx, vec3<bool>(true, true, var_1.x), arg_0.a), u_input.b.zx)), arg_2, max(select(select(vec2<u32>(arg_0.c.x, u_input.e.x), vec2<u32>(10249u, 0u), vec2<bool>(var_1.x, false)), vec2<u32>(0u, 0u) & u_input.e.yy, false), _wgslsmith_mod_vec2_u32(u_input.e.zz << (u_input.e.wz % vec2<u32>(32u)), vec2<u32>(u_input.e.x, u_input.e.x) ^ vec2<u32>(arg_0.c.x, 0u))), var_1.zyx, !all(select(var_1.xw, vec2<bool>(arg_2, arg_2), arg_0.d.zz))), func_2());
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_3(-1082f, func_5(func_4(func_2(), vec2<f32>(-177f, _wgslsmith_f_op_f32(f32(-1f) * -1186f)), true & func_2().b), ~(-_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), !any(func_4(Struct_1(true, true, u_input.e.yy, vec3<bool>(false, false, false), false), vec2<f32>(-1734f, -884f), true).d.zz)), u_input.d.ww, u_input.b);
    let var_1 = u_input.d.zx;
    let var_2 = 1540f;
    let var_3 = func_5(func_5(Struct_1(_wgslsmith_f_op_f32(trunc(var_0.a)) < _wgslsmith_f_op_f32(-684f * var_0.a), true, func_5(func_5(Struct_1(true, var_0.b.a.d.x, u_input.e.zx, vec3<bool>(var_0.b.a.e, var_0.b.c.e, true), var_0.b.c.e), var_0.d.x, var_0.b.a.a).a, 0i, false).b.c, func_5(func_4(Struct_1(true, true, vec2<u32>(28002u, var_0.b.a.c.x), var_0.b.c.d, false), vec2<f32>(var_0.a, var_2), var_0.b.c.d.x), _wgslsmith_add_i32(var_1.x, var_0.d.x), !var_0.b.a.e).a.d, any(!vec4<bool>(var_0.b.b.e, var_0.b.a.a, false, var_0.b.a.b))), _wgslsmith_div_i32(var_1.x, ~(var_0.c.x & var_1.x)), all(!var_0.b.b.d) | func_5(func_2(), 24625i, select(var_0.b.b.e, true, var_0.b.c.a)).b.a).b, u_input.c, var_0.b.c.b & true);
    let var_4 = var_0.b;
    return var_0.b.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_2();
    let var_2 = func_2().d.yx;
    var var_3 = var_0.x;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(527f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -443f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(841f, 489f)) - _wgslsmith_f_op_f32(1093f + -1000f)) + _wgslsmith_div_f32(-2286f, _wgslsmith_f_op_f32(-775f + -302f)))));
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-571f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-658f, 791f)), -1252f))) + -179f);
    var var_5 = !select(var_1.d.yz, var_2, select(false, any(vec2<bool>(false, true)), false));
    let var_6 = vec3<u32>(0u, _wgslsmith_add_u32(var_1.c.x, 6829u), _wgslsmith_sub_u32(u_input.e.x, 24261u));
    var var_7 = -u_input.b.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1432f))))), 256f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-315f, _wgslsmith_f_op_f32(-2886f - -382f), _wgslsmith_f_op_f32(f32(-1f) * -1508f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-521f, -106f, -276f), vec3<f32>(1379f, 1064f, -1144f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -806f, 1464f))))))), ~(~73621u), -1000f);
}

