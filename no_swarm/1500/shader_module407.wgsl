struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1547u, 24338u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = ~firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, arg_1.b, global0.x, arg_1.b)), firstTrailingBit(~vec4<u32>(4294967295u, 16421u, global0.x, 0u))));
    global0 = ~((vec2<u32>(~global0.x, ~global0.x) ^ var_0.yz) & ~_wgslsmith_mod_vec2_u32(arg_1.c, ~vec2<u32>(global0.x, 0u)));
    let var_1 = -480f;
    var var_2 = Struct_2(arg_1.a, ~(global0.x | ~50282u), vec2<u32>(1u, abs(96267u)));
    let var_3 = any(vec2<bool>(true, !(var_0.x == 26868u)));
    return u_input.a;
}

fn func_2() -> Struct_1 {
    global0 = firstLeadingBit(vec2<u32>(59690u, 1u));
    global0 = reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(578u, 1u), vec2<u32>(6743u, global0.x))) ^ _wgslsmith_clamp_vec2_u32(~(vec2<u32>(u_input.b, global0.x) & vec2<u32>(0u, global0.x)), abs(vec2<u32>(global0.x, 9362u)), ~vec2<u32>(u_input.a, 0u) | ~vec2<u32>(u_input.a, global0.x)));
    global0 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, 32346u)), ~(~vec2<u32>(global0.x, u_input.b))) ^ select(vec2<u32>(~reverseBits(6716u), firstLeadingBit(_wgslsmith_div_u32(global0.x, u_input.a))), vec2<u32>(~3918u, _wgslsmith_mult_u32(func_3(1324f, Struct_2(Struct_1(1263f, 0u, vec2<i32>(0i, 25572i), vec2<bool>(false, true)), 4294967295u, vec2<u32>(1u, u_input.b)), 1u), _wgslsmith_add_u32(global0.x, u_input.b))), true);
    global0 = vec2<u32>(~(~(~abs(u_input.a))), ~u_input.a);
    global0 = ~reverseBits(vec2<u32>(4294967295u, func_3(-335f, Struct_2(Struct_1(-499f, 0u, vec2<i32>(-6845i, -2147483647i), vec2<bool>(false, false)), u_input.a, vec2<u32>(u_input.a, global0.x)), _wgslsmith_add_u32(global0.x, 74561u))));
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -606f) + _wgslsmith_f_op_f32(-678f - -895f))), -1362f)), u_input.b, vec2<i32>(-(~(-68918i)), ~_wgslsmith_mult_i32(i32(-1i) * -17995i, _wgslsmith_mult_i32(25388i, 0i))), vec2<bool>(select(true, true, true), true));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 464f)), 549f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-263f, 1057f))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(1433f)), _wgslsmith_f_op_f32(trunc(-392f))))));
    global0 = ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(u_input.b), global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, global0.x), reverseBits(vec3<u32>(global0.x, u_input.a, u_input.a)))), ~1u);
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec2_i32(abs(arg_0.a.c), -reverseBits(arg_0.a.c));
    var var_1 = 2147483647i;
    var_1 = _wgslsmith_mod_i32(-(_wgslsmith_sub_i32(~var_0.x, ~(-34171i)) ^ func_2().c.x), abs(-15243i));
    var var_2 = Struct_1(508f, abs(_wgslsmith_sub_u32(~0u, firstLeadingBit(13083u))), min(-(var_0 >> (min(vec2<u32>(4294967295u, 0u), arg_0.c) % vec2<u32>(32u))), vec2<i32>(49013i, -17531i)), vec2<bool>(true, false));
    var var_3 = Struct_2(arg_0.a, max(85688u, u_input.b), arg_0.c);
    return Struct_2(func_1(), func_2().b, vec2<u32>(arg_0.a.b, func_2().b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(), 4294967295u, _wgslsmith_add_vec2_u32(vec2<u32>(36058u, 22892u) >> (vec2<u32>(60834u, u_input.a) % vec2<u32>(32u)), ~(~vec2<u32>(global0.x, u_input.b)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1501f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1790f), _wgslsmith_f_op_f32(round(-306f)))), func_2().a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, -1081f, 758f, 1039f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1988f, 1040f, 773f, -859f) + vec4<f32>(-1736f, -1544f, -167f, 1172f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, 1444f, 375f, -1078f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 1302f, -1707f, 533f))))))));
    var var_1 = func_4(func_4(func_4(func_4(func_4(Struct_2(Struct_1(var_0.a.a, 57970u, vec2<i32>(var_0.a.c.x, var_0.a.c.x), vec2<bool>(false, var_0.a.d.x)), 747u, var_0.c), vec2<f32>(var_0.a.a, var_0.a.a), vec4<f32>(var_0.a.a, var_0.a.a, var_0.a.a, var_0.a.a)), vec2<f32>(var_0.a.a, var_0.a.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 315f, -120f, var_0.a.a), vec4<f32>(var_0.a.a, -559f, 107f, 729f), vec4<bool>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, false)))), vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.a)), -623f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-342f, var_0.a.a, var_0.a.a, 943f))))), vec2<f32>(func_2().a, -331f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(742f, var_0.a.a, -404f, var_0.a.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.a, var_0.a.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(361f, -208f), vec2<f32>(var_0.a.a, var_0.a.a), var_0.a.d)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-383f, var_0.a.a))) * _wgslsmith_div_vec2_f32(vec2<f32>(181f, 695f), vec2<f32>(703f, var_0.a.a))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(-160f + func_4(func_4(Struct_2(Struct_1(-498f, 1u, vec2<i32>(-4507i, 41988i), var_0.a.d), 1u, var_0.c), vec2<f32>(var_0.a.a, 617f), vec4<f32>(var_0.a.a, 1447f, var_0.a.a, var_0.a.a)), vec2<f32>(var_0.a.a, -105f), _wgslsmith_div_vec4_f32(vec4<f32>(693f, 2474f, -3309f, var_0.a.a), vec4<f32>(var_0.a.a, -1444f, -135f, 810f))).a.a), var_0.a.a));
    var_0 = Struct_2(Struct_1(var_1.a.a, ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.b, 18080u), var_0.a.d), vec2<u32>(var_1.b, 66948u) & vec2<u32>(var_1.a.b, 4294967295u)), vec2<i32>(var_1.a.c.x, -_wgslsmith_div_i32(var_1.a.c.x, var_1.a.c.x)), vec2<bool>(var_0.a.d.x, func_2().d.x & var_0.a.d.x)), 74688u, select(vec2<u32>(~1u, 6916u) >> (max(vec2<u32>(global0.x, 14131u), countOneBits(var_0.c)) % vec2<u32>(32u)), vec2<u32>(u_input.a ^ ~var_1.a.b, 4294967295u), 1184f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.a.a))))));
    var var_2 = vec3<i32>(-7756i, -1i, min(var_0.a.c.x, ~(-abs(var_1.a.c.x))));
    var var_3 = vec3<bool>((-298f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1560f)))) && !(!all(var_1.a.d)), true, all(vec3<bool>(var_0.a.d.x, true, var_0.a.d.x)) & true);
    let var_4 = vec3<bool>(_wgslsmith_div_f32(-998f, _wgslsmith_f_op_f32(abs(784f))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-151f)), _wgslsmith_f_op_f32(-var_1.a.a))), !var_1.a.d.x, var_1.a.d.x);
    global0 = var_1.c & vec2<u32>(u_input.a, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, -228f, var_0.a.a)))), vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.a)), _wgslsmith_f_op_f32(trunc(var_1.a.a)), 1000f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(460f, -1001f, var_1.a.a), vec3<f32>(var_1.a.a, 775f, var_1.a.a))))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.a.a, -305f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, var_0.a.a, var_1.a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.a.a, var_1.a.a))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1085f, var_1.a.a, var_1.a.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.a, var_0.a.a, -399f))), select(vec3<bool>(true, var_1.a.d.x, var_1.a.d.x), vec3<bool>(var_0.a.d.x, true, var_1.a.d.x), var_4))))))), 20458u, var_1.c.x);
}

