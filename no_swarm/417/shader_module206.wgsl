struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-214f, -744f, true)), -964f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-564f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(772f, 119f)))))));
    let var_1 = Struct_2(Struct_1(abs(-(~(-1i))), 0u, !arg_2.yx, select(select(select(vec4<bool>(arg_2.x, false, true, false), vec4<bool>(arg_2.x, false, false, true), arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), all(arg_2.zx)), !(!vec4<bool>(false, true, false, arg_2.x)), false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-957f, -625f), var_0.x)))), Struct_1(u_input.d.x, 1u, arg_2.xy, vec4<bool>(arg_2.x, !all(vec4<bool>(arg_2.x, false, arg_2.x, false)), true || !arg_2.x, arg_2.x)), Struct_1(2870i, _wgslsmith_div_u32(1u, abs(~arg_0)), !select(arg_2.xz, vec2<bool>(false, arg_2.x), !arg_2.yx), select(!(!vec4<bool>(true, false, false, arg_2.x)), !(!vec4<bool>(false, arg_2.x, true, false)), arg_2.x)));
    let var_2 = Struct_4(var_1, var_1);
    let var_3 = var_1;
    var var_4 = ~vec4<u32>(arg_1, _wgslsmith_div_u32(max(1u, ~29190u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(61516u, 10847u), vec2<u32>(4294967295u, 19067u)), abs(4294967295u))), 29472u, reverseBits(arg_1));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a, 15573u), vec2<u32>(arg_0, 0u) >> (vec2<u32>(arg_1, var_3.c.b) % vec2<u32>(32u)), 38117u != arg_1), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1.d.b), vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, var_2.b.c.b))), min(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, u_input.a), ~vec2<u32>(7965u, 64953u)), var_4.zx)) << (1u % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = vec2<bool>(true, true);
    var_0 = _wgslsmith_mod_u32(113121u, select(0u, 1u, true));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.c), 1i), ~func_3(37698u, 30726u, vec3<bool>(var_1.x, var_1.x, false)), vec2<bool>(any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), var_1.x)), any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), select(vec4<bool>(true, var_1.x, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, true, false, var_1.x)), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, true, false, true), var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x)))), -2100f, Struct_1(~u_input.c, ~(~firstLeadingBit(5820u)), var_1, !(!select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, true), var_1.x))), Struct_1(firstTrailingBit(-2147483647i >> (u_input.a % 32u)) | -2147483647i, (1u >> (0u % 32u)) << (_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, 0u), u_input.a) % 32u), select(var_1, !(!vec2<bool>(false, var_1.x)), vec2<bool>(true, true)), vec4<bool>(any(select(var_1, var_1, var_1)), true, true, !(!var_1.x))));
    let var_3 = 1925f;
    return var_2.d;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.c, u_input.a, vec2<bool>(true, true), !vec4<bool>(all(vec3<bool>(true, false, false)), !all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)), false));
    var var_1 = Struct_2(func_2(), _wgslsmith_f_op_f32(arg_0.x * 733f), Struct_1(u_input.c, 4294967295u, select(vec2<bool>(all(vec3<bool>(var_0.d.x, false, var_0.c.x)), false), select(select(var_0.d.zz, vec2<bool>(var_0.d.x, var_0.c.x), var_0.d.xx), var_0.c, true), all(var_0.d) && var_0.c.x), vec4<bool>(!any(var_0.d.yxw), false, false, all(!vec2<bool>(true, var_0.d.x)))), Struct_1(var_0.a, _wgslsmith_mult_u32(75979u, min(firstLeadingBit(0u), firstLeadingBit(var_0.b))), func_2().c, select(vec4<bool>(all(vec2<bool>(false, var_0.c.x)), func_2().d.x, true, false), vec4<bool>(all(var_0.d.xww), select(var_0.d.x, var_0.c.x, var_0.d.x), true, false), select(select(var_0.d, var_0.d, vec4<bool>(var_0.d.x, var_0.d.x, false, true)), select(var_0.d, var_0.d, vec4<bool>(true, true, var_0.d.x, var_0.c.x)), vec4<bool>(false, var_0.c.x, var_0.c.x, true)))));
    return Struct_1(1i, max(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(countOneBits(37677u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.b, 15050u), vec3<u32>(var_1.d.b, var_0.b, 35737u))), 53780u, _wgslsmith_sub_u32(var_0.b, _wgslsmith_sub_u32(4294967295u, 4294967295u))), _wgslsmith_add_u32(4294967295u, select(_wgslsmith_mod_u32(var_0.b, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 4294967295u), vec2<u32>(0u, 4294967295u)), !var_1.c.c.x))), func_2().c, !(!vec4<bool>(true, all(var_1.a.c), !var_1.c.c.x, var_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = u_input.c;
    var var_2 = Struct_4(Struct_2(Struct_1(firstTrailingBit(-1i), abs(~u_input.a), select(vec2<bool>(false, false), vec2<bool>(var_0, false), all(vec3<bool>(var_0, var_0, false))), !vec4<bool>(false, true, var_0, var_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(521f)))), func_1(vec2<f32>(_wgslsmith_f_op_f32(1306f - -1000f), _wgslsmith_f_op_f32(max(-1141f, 2891f)))), Struct_1(-8502i, ~func_3(u_input.a, 0u, vec3<bool>(var_0, var_0, var_0)), vec2<bool>(var_0, false | var_0), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(1660f, -1452f), vec2<f32>(-1355f, 512f))).d)), Struct_2(func_2(), _wgslsmith_f_op_f32(min(-631f, 1000f)), Struct_1(-abs(-2147483647i), ~u_input.a << (4294967295u % 32u), !select(vec2<bool>(false, true), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)), func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1403f, -1318f), vec2<f32>(-561f, -396f)))).d), Struct_1(func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2342f, 510f), vec2<f32>(624f, 2388f), vec2<bool>(false, false)))).a, countOneBits(countOneBits(0u)), !vec2<bool>(true, var_0), !select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(false, true, false, var_0), var_0))));
    let var_3 = Struct_3(vec4<f32>(var_2.b.b, var_2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.b, var_2.a.b)) + _wgslsmith_f_op_f32(f32(-1f) * -434f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f))), Struct_2(Struct_1(~var_2.a.a.a, 1u & min(var_2.a.d.b, 1u), vec2<bool>(var_2.b.a.d.x, var_0), var_2.a.c.d), var_2.a.b, Struct_1(1i, 1u, vec2<bool>(false || var_0, func_1(vec2<f32>(var_2.b.b, var_2.b.b)).d.x), func_2().d), Struct_1(~(~var_2.a.d.a), _wgslsmith_div_u32(var_2.a.a.b, _wgslsmith_dot_vec2_u32(vec2<u32>(9936u, 1u), vec2<u32>(0u, u_input.a))), var_2.b.d.c, var_2.b.c.d)));
    let var_4 = Struct_5(!any(var_2.b.a.d), u_input.a);
    let var_5 = var_4;
    let var_6 = var_2.a.a;
    let var_7 = Struct_4(var_2.a, var_2.a);
    var var_8 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1297f + var_3.b.b) - _wgslsmith_div_f32(var_2.b.b, -1000f))), _wgslsmith_f_op_vec4_f32(select(var_3.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(select(var_7.b.b, var_2.a.b, var_3.b.a.d.x)), var_3.a.x, var_7.b.b))), !(var_6.a > _wgslsmith_div_i32(20576i, u_input.c)))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, var_3.b.c.a, 1i, var_1), vec4<i32>(var_7.a.c.a, -2147483647i, var_1, -32148i), max(vec4<i32>(-43605i, 1i, 2147483647i, var_1), vec4<i32>(var_7.b.d.a, var_6.a, var_2.a.d.a, -23671i))) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_5.b, u_input.a, var_5.b, 4294967295u) ^ vec4<u32>(var_2.b.c.b, var_3.b.a.b, 1u, var_4.b), vec4<u32>(var_4.b, 10296u, var_6.b, 51595u) & vec4<u32>(var_4.b, 112738u, 4294967295u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(var_6.a, -var_7.b.a.a, -var_1, -2147483647i ^ abs(var_7.b.c.a))), var_3.b.c.b);
}

