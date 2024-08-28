struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
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

var<private> global0: i32 = -19170i;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_5(countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-8096i, -12456i, -1i), u_input.b.wxz, true), firstTrailingBit(vec3<i32>(0i, 1i, 0i))), vec3<i32>(u_input.b.x >> (arg_0 % 32u), -u_input.d.x, u_input.d.x))), Struct_2(firstTrailingBit(select(vec2<u32>(u_input.a, arg_0), arg_1.a, true)) >> (arg_1.a % vec2<u32>(32u)), vec2<bool>(false, false)), 1000f, !select(true, true, false));
    global1 = min(~u_input.a, _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(~(~var_0.b.a.x), 1u)));
    let var_1 = Struct_3(Struct_2(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), countOneBits(vec2<u32>(0u, arg_0)))), vec2<bool>(arg_2.x, any(!vec3<bool>(arg_1.b.x, true, false)))));
    var var_2 = var_0.b.a.x;
    var_0 = Struct_5(_wgslsmith_sub_vec3_i32(u_input.b.yxx ^ vec3<i32>(firstLeadingBit(u_input.d.x), -29911i, max(var_0.a.x, -15629i)), select(u_input.b.xxy, (var_0.a & vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x)) | ~vec3<i32>(1i, 35462i, 1i), arg_2)), var_0.b, -381f, false);
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~(~var_0.b.a.x), 1980u), u_input.a, ~(~(~0u)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_1(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, 38224u, 1u)), min(vec4<u32>(u_input.a, 7083u, 0u, u_input.c), vec4<u32>(1u, u_input.a, 39382u, u_input.a))), vec4<u32>(u_input.c, abs(32532u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a, 1u), vec3<u32>(u_input.a, 0u, 0u)), firstLeadingBit(4294967295u))));
    let var_1 = Struct_3(Struct_2(var_0.a.zy, !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    global0 = -(~arg_0.x);
    var var_2 = (!(!(!var_1.a.b.x)) && (max(~var_1.a.a.x, func_3(1u, Struct_2(var_1.a.a, var_1.a.b), vec3<bool>(var_1.a.b.x, true, var_1.a.b.x))) >= _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a.zyz, vec3<u32>(var_1.a.a.x, 5845u, u_input.a)), firstTrailingBit(vec3<u32>(var_1.a.a.x, 115775u, 0u))))) & !(-min(1i, arg_0.x) < reverseBits(1i));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + -570f);
    return _wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3))));
}

fn func_4(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.c, u_input.c, 15755u, u_input.c)), vec4<u32>(4294967295u, 16322u, u_input.c, u_input.a)), ~vec4<u32>(~20178u, ~4294967295u, 1u, reverseBits(11105u))));
    let var_1 = var_0;
    global1 = 18457u >> (~(~15819u & ~var_1.a.x) % 32u);
    global0 = select(-4003i, u_input.b.x, true);
    global0 = u_input.b.x;
    return Struct_3(Struct_2(~(~(~vec2<u32>(1u, var_0.a.x))), vec2<bool>(arg_0, true)));
}

fn func_1() -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(func_2(vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, 14317i), 1i << (u_input.a % 32u), -15802i, 0i))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f)) + _wgslsmith_f_op_f32(234f - _wgslsmith_f_op_f32(select(-1374f, 2233f, false)))));
    var var_1 = vec4<bool>(false, any(var_0.a.b), !var_0.a.b.x, false);
    var var_2 = Struct_1(abs(~vec4<u32>(abs(u_input.c), 58906u, u_input.c, 41775u)));
    global0 = i32(-1i) * -1i;
    var var_3 = u_input.b;
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(497f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_div_f32(300f, -899f)))), -851f), _wgslsmith_f_op_f32(f32(-1f) * -676f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_dot_vec3_u32(~(abs(vec3<u32>(4030u, 1u, u_input.a)) | _wgslsmith_add_vec3_u32(vec3<u32>(39540u, 10006u, 1390u), vec3<u32>(u_input.c, 64709u, u_input.a))), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 4294967295u), vec3<u32>(29866u, 4294967295u, u_input.a)), firstLeadingBit(40303u), max(~u_input.c, u_input.c)));
    var var_0 = Struct_1(vec4<u32>(~1u, _wgslsmith_mult_u32(1910u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.a, 0u), vec3<u32>(u_input.a, 27306u, 4294967295u)), ~vec3<u32>(47035u, u_input.c, 32081u))), _wgslsmith_add_u32(4294967295u, firstLeadingBit(_wgslsmith_mod_u32(u_input.a, 0u))), ~max(_wgslsmith_sub_u32(56783u, u_input.a), u_input.c)));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(637f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(660f - 896f), _wgslsmith_f_op_f32(f32(-1f) * -243f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1038f, _wgslsmith_f_op_f32(sign(-336f))))))));
    global0 = ~firstTrailingBit(abs(~1i));
    var_0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(1u, 15144u), _wgslsmith_clamp_u32(1u, ~var_0.a.x, ~_wgslsmith_clamp_u32(var_0.a.x, 14789u, 19980u)), max(~abs(4294967295u), firstLeadingBit(12262u)), min(var_0.a.x << (1u % 32u), abs(4294967295u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 82315u), ~var_0.a.ww) % 32u)));
    global1 = countOneBits(abs(~var_0.a.x));
    global0 = _wgslsmith_clamp_i32(reverseBits(-1i), min(i32(-1i) * -2147483647i, -u_input.d.x), -21167i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(var_0.a.x, 39401u));
}

