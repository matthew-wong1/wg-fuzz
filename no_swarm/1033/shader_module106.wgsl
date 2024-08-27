struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = countOneBits(u_input.a);
    var var_1 = vec3<f32>(679f, 2038f, arg_1.x);
    return var_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<u32>) -> u32 {
    var var_0 = i32(-1i) * -18825i;
    let var_1 = vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(min(478f, 615f)), arg_0.a, arg_0.a);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(1543f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), arg_0.c, arg_0.c, _wgslsmith_f_op_vec2_f32(abs(var_1.yy)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(ceil(251f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -198f))), false)), _wgslsmith_f_op_f32(-var_2.a));
    var_2 = Struct_2(104f, -110f, Struct_1(~u_input.a, false), arg_0.d, arg_0.e);
    return arg_0.d.a;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<u32>(~countOneBits(~0u) | func_4(Struct_2(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, -61034i, 1i), vec3<f32>(968f, -751f, 459f), vec2<bool>(true, false), Struct_1(u_input.a, true))), Struct_1(u_input.a, false), Struct_1(u_input.a, false), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1028f, 443f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), ~vec4<u32>(u_input.a, u_input.a, 23118u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), max(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(31256u, 24999u, u_input.a), vec3<u32>(0u, u_input.a, 46658u)), select(vec3<u32>(4294967295u, u_input.a, 43788u), vec3<u32>(u_input.a, u_input.a, u_input.a), true) << (_wgslsmith_add_vec3_u32(vec3<u32>(88393u, 0u, u_input.a), vec3<u32>(47602u, 0u, u_input.a)) % vec3<u32>(32u))), 56997u), 26872u);
    var_0 = vec3<u32>(_wgslsmith_sub_u32(~u_input.a >> ((u_input.a ^ 4294967295u) % 32u), ~77753u), 4294967295u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.x, 43809u, 4294967295u), _wgslsmith_mult_u32(var_0.x, 51403u))) ^ firstLeadingBit(select(~(~vec3<u32>(u_input.a, var_0.x, 99908u)), select(max(vec3<u32>(0u, var_0.x, 4294967295u), vec3<u32>(24763u, 68337u, u_input.a)), vec3<u32>(1u, 72776u, 62233u) ^ vec3<u32>(0u, u_input.a, var_0.x), true), any(vec2<bool>(true, true))));
    let var_1 = ~var_0.x;
    let var_2 = Struct_1(u_input.a, !select(all(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, false, false)), true) & !(any(vec2<bool>(false, false)) && true));
    let var_3 = Struct_1(45417u, true && (select(-1i, 1i, var_2.b) >= 2147483647i));
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -825f), 1626f, Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(18577u, 4294967295u, 1u), select(vec3<u32>(var_1, 1u, 27168u), vec3<u32>(1u, var_1, 0u), true)), vec3<u32>(~4294967295u, ~var_1, u_input.a)), any(select(select(vec4<bool>(var_2.b, true, var_2.b, var_3.b), vec4<bool>(var_2.b, var_3.b, var_3.b, false), vec4<bool>(var_3.b, var_2.b, true, false)), select(vec4<bool>(var_3.b, var_3.b, var_3.b, var_2.b), vec4<bool>(false, var_3.b, true, true), vec4<bool>(var_2.b, true, var_3.b, var_2.b)), all(vec3<bool>(true, true, false))))), var_3, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-184f, _wgslsmith_f_op_f32(trunc(878f)))), vec2<f32>(1f, 1f)));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.e.x, _wgslsmith_f_op_f32(ceil(-433f)))));
    let var_1 = 4294967295u;
    let var_2 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2073f)) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-116f - var_0.x))), select(func_2().c.b, all(select(vec4<bool>(arg_1.c.b, arg_1.c.b, true, true), vec4<bool>(true, arg_2, arg_1.d.b, arg_1.c.b), arg_2)), arg_2));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.e * arg_1.e)));
    var var_3 = select(!select(var_2, !select(var_2, var_2, vec2<bool>(true, arg_2)), all(var_2)), select(vec2<bool>(arg_2, any(vec4<bool>(var_2.x, var_2.x, true, false))), !var_2, true), false);
    return -5311i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(~(-17798i), -2147483647i, func_5(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -2147483647i, 44057i, 2147483647i) << (countOneBits(vec4<u32>(32660u, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u)), min(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(21840i, -1i, -39698i, 16672i))), func_2(), _wgslsmith_f_op_f32(func_3(-vec3<i32>(0i, 40834i, -14829i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(155f, 139f, 626f)), vec2<bool>(true, false), func_2().d)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2089f))), ~(~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))))), ~_wgslsmith_add_i32(abs(-26624i), firstTrailingBit(_wgslsmith_add_i32(-1i, -29286i))));
    var_0 = firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 0i, -1i, var_0.x), vec4<i32>(32531i, var_0.x, var_0.x, var_0.x))), var_0.x, _wgslsmith_clamp_i32(-2147483647i >> (u_input.a % 32u), var_0.x, abs(61370i))), _wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-31619i, var_0.x, -1i, -11182i), vec4<i32>(var_0.x, 43844i, 1i, var_0.x)), select(_wgslsmith_add_vec4_i32(vec4<i32>(17954i, var_0.x, var_0.x, 21172i), vec4<i32>(var_0.x, -4478i, -1021i, var_0.x)), firstLeadingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))));
    let var_1 = true;
    let var_2 = ~(~4294967295u);
    var var_3 = var_0.x;
    return Struct_1(_wgslsmith_mult_u32(1u, countOneBits(~select(34036u, 26650u, var_1))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(2450f, _wgslsmith_f_op_f32(-543f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) * _wgslsmith_f_op_f32(ceil(1069f))))), func_1(), func_1(), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(463f, -463f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-906f, 1716f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-2463f)), 953f)))));
    var var_1 = select(vec4<bool>(firstTrailingBit(-2147483647i) < (_wgslsmith_dot_vec4_i32(vec4<i32>(5971i, -1i, 2147483647i, 2710i), vec4<i32>(26962i, -1i, -2147483647i, -1i)) & ~0i), !(var_0.e.x > -1888f), !((56861u == u_input.a) | var_0.c.b), var_0.c.b), select(select(select(select(vec4<bool>(false, var_0.d.b, true, true), vec4<bool>(var_0.d.b, var_0.d.b, var_0.c.b, true), vec4<bool>(var_0.c.b, var_0.c.b, false, var_0.d.b)), vec4<bool>(false, false, false, false), all(vec4<bool>(false, true, true, false))), select(!vec4<bool>(false, var_0.c.b, false, var_0.d.b), vec4<bool>(true, var_0.c.b, var_0.d.b, true), true), !select(vec4<bool>(var_0.d.b, var_0.c.b, true, var_0.c.b), vec4<bool>(var_0.c.b, true, var_0.d.b, var_0.c.b), vec4<bool>(false, true, true, var_0.c.b))), !vec4<bool>(var_0.c.b, !var_0.d.b, var_0.c.b, !var_0.d.b), true), false);
    var var_2 = Struct_2(var_0.e.x, _wgslsmith_f_op_f32(-var_0.b), func_2().d, Struct_1(~abs(var_0.d.a), true), var_0.e);
    let var_3 = var_2.c;
    var var_4 = -19328i;
    var var_5 = 40132i;
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(485f, var_2.b, -119f) + vec3<f32>(-700f, var_0.b, var_2.b)) + vec3<f32>(var_2.b, 686f, 615f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_2.e.x, var_0.b) * vec3<f32>(var_0.b, var_0.a, 382f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, var_2.b, var_2.a), vec3<f32>(674f, -1242f, -457f), false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1000f, var_2.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_0.b, 1000f), vec3<f32>(var_2.a, var_2.b, -163f), false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, i32(-1i) * -48398i, min(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2792i, 3540i, 2147483647i) << (vec4<u32>(var_0.c.a, 20103u, var_2.d.a, 1u) % vec4<u32>(32u)), vec4<i32>(14154i, 17740i, 12382i, 8116i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -518i, -2147483647i), vec3<i32>(-37326i, -11958i, -9766i))))), -vec4<i32>(min(12956i, -2537i), select(firstLeadingBit(-1700i), ~(-6911i), var_2.c.b & true), firstLeadingBit(-52746i) << (var_3.a % 32u), i32(-1i) * -26788i), max(abs(~(~23343i)), ~_wgslsmith_mult_i32(1i, 1i)), ~(~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_0.d.a, 97591u)), ~vec2<u32>(1u, var_3.a))));
}

