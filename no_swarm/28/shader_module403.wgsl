struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_1(countOneBits(max(~abs(vec4<i32>(24697i, -8542i, u_input.c, u_input.c)), vec4<i32>(0i, select(8997i, u_input.c, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 8060i), vec2<i32>(u_input.c, -4467i)), -2147483647i))), (~u_input.c << (0u % 32u)) <= -2147483647i);
    let var_1 = vec4<bool>(any(select(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, var_0.b), false), arg_0 == -691f), var_0.b)), select(~(-u_input.c) <= min(u_input.c, u_input.c), !all(vec3<bool>(true, var_0.b, var_0.b)), all(vec2<bool>(!var_0.b, !var_0.b))), var_0.b, !(!(any(vec3<bool>(var_0.b, false, true)) || (var_0.b != false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(select(arg_0, arg_0, false))), arg_0, -558f)));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(666f - -927f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-946f, arg_0, var_2.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(floor(806f)), _wgslsmith_f_op_f32(sign(arg_0))))), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-224f, -281f, var_2.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, 1053f, arg_0), vec3<f32>(var_2.x, -790f, var_2.x)))))));
    let var_3 = var_0.a;
    return true | var_1.x;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = -vec3<i32>(u_input.c >> (u_input.b % 32u), u_input.c, 3561i ^ _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, u_input.c), u_input.c));
    let var_1 = !vec4<bool>(true, true, !(!any(vec3<bool>(false, true, true))), any(vec3<bool>(all(vec2<bool>(false, arg_0)), true, func_3(133f))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1233f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-926f, 1f))), _wgslsmith_f_op_f32(-1000f * 807f))));
    var var_3 = _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(21067u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, 79163u), 96807u), ~u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_add_u32(u_input.b, u_input.a.x))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.a.x, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(37830u, 17263u, u_input.a.x))), select(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 0u)), abs(vec3<u32>(97391u, 29567u, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.b, 29793u) % vec3<u32>(32u))), var_1.zxw)));
    var var_4 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(select(420f, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -214f)), (_wgslsmith_mult_u32(u_input.b, 41164u) ^ firstLeadingBit(u_input.b)) >= ((u_input.a.x | 63685u) ^ 61225u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x * 1584f)))))), var_2.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x - -668f))), 185f));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(974f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2060f - -1757f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(553f, 392f)))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(879f)))), 705f, 844f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f + 274f))), _wgslsmith_f_op_f32(func_2(arg_1.b)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f + 1162f))))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(29783i, u_input.c, arg_1.a.x, arg_1.a.x), vec4<i32>(-32051i, arg_1.a.x, arg_1.a.x, -2147483647i)), _wgslsmith_div_vec4_i32(arg_1.a, vec4<i32>(10929i, arg_1.a.x, u_input.c, arg_1.a.x))), abs(select(arg_1.a, vec4<i32>(u_input.c, arg_1.a.x, arg_1.a.x, -65292i), vec4<bool>(false, arg_1.b, arg_0, arg_0))), _wgslsmith_div_vec4_i32(countOneBits(arg_1.a), -vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x))), _wgslsmith_add_vec4_i32(arg_1.a, arg_1.a)), arg_0);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(true, false, true), Struct_1(_wgslsmith_add_vec4_i32(~(vec4<i32>(-2147483647i, -1i, u_input.c, u_input.c) | vec4<i32>(28342i, u_input.c, u_input.c, 19910i)), vec4<i32>(abs(u_input.c), -2419i ^ u_input.c, ~1i, 12809i)), !((u_input.a.x != 1u) & all(vec3<bool>(true, false, true)))));
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-461f))));
    let var_3 = _wgslsmith_div_u32(u_input.a.x, 0u);
    var_0 = func_1(false, func_1((func_3(var_2) != true) && true, Struct_1(-select(var_0.a, var_0.a, var_0.b), _wgslsmith_f_op_f32(-var_2) >= _wgslsmith_f_op_f32(min(-1720f, var_2)))));
    var_0 = func_1(true, Struct_1(var_0.a, false || !all(vec3<bool>(false, false, var_0.b))));
    let var_4 = func_1((true && var_0.b) & func_1(var_0.b, func_1(all(vec2<bool>(var_0.b, var_0.b)), func_1(true, Struct_1(vec4<i32>(-2147483647i, 1i, -2147483647i, -59286i), var_0.b)))).b, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(func_1(false, Struct_1(var_0.a, var_0.b)).a.x, i32(-1i) * -11604i, -2147483647i, var_1.x), -vec4<i32>(16235i, var_1.x, -29636i, var_1.x) & -var_0.a), var_0.b));
    var_0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2, _wgslsmith_f_op_f32(round(-1197f)), _wgslsmith_f_op_f32(-var_2)), vec2<i32>(i32(-1i) * -2147483647i, var_1.x), u_input.a, var_0.a);
}

