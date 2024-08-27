struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1904f, -500f, -303f, 1311f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), 1f);
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, arg_2.b.x, -1494f, arg_0.b.x) + vec4<f32>(arg_3.x, arg_3.x, -729f, 429f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b.x, -1000f, arg_3.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(arg_2.b + arg_2.b);
    global0 = _wgslsmith_f_op_vec4_f32(arg_2.b + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b)))))));
    var var_1 = arg_1;
    return -select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_2.d.x, arg_2.e.x), _wgslsmith_add_vec3_i32(arg_2.d, arg_0.e.zzx)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_0.e.x, arg_0.e.x), vec2<bool>(false, arg_2.c.x)), arg_0.d.yx), 0i, ~2147483647i), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0.d.x, 1i, -2147483647i, arg_2.d.x), arg_0.e, ~arg_0.e), firstLeadingBit(firstTrailingBit(arg_2.e)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2277i, u_input.a, u_input.a, 23264i), vec4<i32>(arg_2.a, 1i, 0i, 10699i)) ^ -vec4<i32>(arg_2.e.x, arg_0.a, arg_0.a, -14138i)), true);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-arg_1.b);
    let var_0 = true;
    var var_1 = any(arg_1.c.xy);
    let var_2 = select(_wgslsmith_div_i32(-24077i, arg_1.d.x), u_input.a, !(true || !any(vec2<bool>(var_0, true))));
    let var_3 = Struct_1(_wgslsmith_div_i32(~arg_2.x, -arg_1.d.x), arg_1.b, select(vec3<bool>(true, false, false), arg_1.c, vec3<bool>(var_0, !(false & var_0), any(!vec4<bool>(false, false, var_0, var_0)))), arg_1.e.yxx, func_3(arg_1, true, arg_1, arg_1.b));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0.b)))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, global0.x, -389f, global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(570f, -939f, 439f, -1853f))), arg_3.b)), arg_0.b)));
    var var_0 = Struct_1(_wgslsmith_sub_i32(select(func_2(arg_2.x != 4294967295u, func_2(arg_1, Struct_1(11897i, arg_0.b, vec3<bool>(true, arg_3.c.x, true), vec3<i32>(-62225i, 2147483647i, arg_3.d.x), arg_3.e), arg_3.e, arg_3.b.x), ~arg_3.e, _wgslsmith_f_op_f32(-arg_0.b.x)).a, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 10960i, 7872i, 2147483647i), -vec4<i32>(0i, 2147483647i, 1i, arg_3.a)), arg_1), arg_0.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * arg_3.b.x), _wgslsmith_f_op_f32(round(arg_0.b.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x + global0.x) + 321f), func_2(false, Struct_1(arg_0.e.x, vec4<f32>(global0.x, 1477f, global0.x, 3062f), arg_0.c, arg_3.e.zxy, vec4<i32>(-14345i, -7567i, 11476i, u_input.a)), _wgslsmith_clamp_vec4_i32(arg_0.e, vec4<i32>(-44374i, -1i, u_input.a, 18952i), vec4<i32>(arg_3.d.x, -8984i, arg_3.a, -17105i)), _wgslsmith_div_f32(409f, 1237f)).b.x))), func_2(arg_0.c.x, Struct_1(~(~arg_3.e.x), arg_3.b, vec3<bool>(true, any(arg_3.c.xy), true), vec3<i32>(firstLeadingBit(u_input.a), arg_3.e.x, ~(-1i)), min(arg_3.e >> (vec4<u32>(49636u, arg_2.x, arg_2.x, 26637u) % vec4<u32>(32u)), arg_3.e)), -firstLeadingBit(_wgslsmith_mod_vec4_i32(arg_0.e, vec4<i32>(u_input.a, 36297i, arg_3.e.x, arg_3.e.x))), 527f).c, vec3<i32>(0i, firstTrailingBit(0i), -9632i), ~(abs(vec4<i32>(2147483647i, -22890i, 26416i, 5951i)) ^ _wgslsmith_sub_vec4_i32(arg_0.e, arg_0.e)) << (arg_2 % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + arg_3.b.x)), _wgslsmith_f_op_f32(259f * var_0.b.x), arg_3.b.x, 213f) + vec4<f32>(299f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x))), var_0.b.x, _wgslsmith_f_op_f32(step(-797f, arg_0.b.x))));
    var var_1 = func_3(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~(-45781i), reverseBits(arg_0.e.x), 20089i), 1i, 1i), func_2(true, Struct_1(_wgslsmith_clamp_i32(-1i, u_input.a, -1i), _wgslsmith_f_op_vec4_f32(-var_0.b), !arg_3.c, arg_0.d, select(var_0.e, arg_3.e, false)), -vec4<i32>(var_0.e.x, arg_0.d.x, var_0.d.x, 2147483647i), global0.x).b, vec3<bool>((arg_1 && false) & var_0.c.x, var_0.c.x, var_0.c.x), vec3<i32>(-1i) * -vec3<i32>(var_0.a, -22779i, u_input.a), ~vec4<i32>(u_input.a & 3487i, arg_3.e.x, _wgslsmith_sub_i32(115783i, -1i), 1i)), (min(-7514i, _wgslsmith_dot_vec4_i32(arg_3.e, arg_0.e)) ^ -32897i) == (-1i >> ((29399u >> (_wgslsmith_sub_u32(arg_2.x, 0u) % 32u)) % 32u)), func_2(all(select(!vec3<bool>(arg_1, var_0.c.x, arg_1), vec3<bool>(true, arg_1, false), arg_3.c.x)), Struct_1(arg_3.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1441f, global0.x, arg_3.b.x, -1804f)), vec3<bool>(any(vec4<bool>(var_0.c.x, arg_1, arg_1, var_0.c.x)), !var_0.c.x, select(false, var_0.c.x, arg_1)), arg_3.d, ~(~arg_0.e)), -abs(arg_3.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) * _wgslsmith_f_op_vec4_f32(-arg_0.b))) * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, var_0.b.x))))).ywz;
    let var_2 = func_2(func_2(arg_3.c.x, Struct_1(0i, var_0.b, vec3<bool>(all(arg_0.c), all(vec2<bool>(var_0.c.x, true)), all(vec4<bool>(false, true, true, true))), abs(vec3<i32>(2147483647i, arg_0.e.x, -1i)), arg_0.e), vec4<i32>(arg_0.d.x, _wgslsmith_mod_i32(u_input.a, -var_0.e.x), _wgslsmith_mult_i32(var_1.x, _wgslsmith_add_i32(var_1.x, var_0.d.x)), _wgslsmith_mod_i32(6294i, arg_3.e.x)), -1943f).c.x, arg_0, -vec4<i32>(-(~(-43655i)), ~(-u_input.a), -2147483647i, reverseBits(min(-2147483647i, -2147483647i))), arg_3.b.x);
    return min(~(~(-1i)), ~_wgslsmith_sub_i32(u_input.a, i32(-1i) * -1492i));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1371f, global0.x, -823f, _wgslsmith_f_op_f32(global0.x + 272f)) + vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1499f), global0.x)));
    let var_0 = 2039f;
    global0 = arg_1.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.b.wz, arg_1.b.wx) - arg_1.b.xy);
    let var_2 = 1u;
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(abs(-355f))) * -1000f) <= 1345f, arg_1, _wgslsmith_clamp_vec4_i32(arg_1.e, vec4<i32>(13961i, arg_0, ~u_input.a << (countOneBits(var_2) % 32u), _wgslsmith_div_i32(-21234i, -u_input.a)), arg_1.e), _wgslsmith_f_op_f32(trunc(global0.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<f32>) -> bool {
    let var_0 = func_5(~(~func_4(func_2(false, Struct_1(0i, vec4<f32>(-698f, -588f, -1148f, 316f), vec3<bool>(false, true, false), vec3<i32>(u_input.a, u_input.a, -51741i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), 410f), true, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 12554u, 1u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), func_2(false, Struct_1(1i, vec4<f32>(1203f, arg_1, arg_1, 587f), vec3<bool>(true, true, false), vec3<i32>(-5876i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), vec4<i32>(64567i, 0i, u_input.a, 2110i), 402f))), func_2(!((arg_0.x >> (88427u % 32u)) > select(4294967295u, 1u, false)), Struct_1(-8784i, vec4<f32>(arg_2.x, -1493f, _wgslsmith_f_op_f32(sign(1071f)), _wgslsmith_f_op_f32(-arg_2.x)), vec3<bool>(-85343i <= u_input.a, any(vec3<bool>(true, false, false)), true), -vec3<i32>(u_input.a, u_input.a, u_input.a) >> (firstLeadingBit(vec3<u32>(7905u, 74694u, arg_0.x)) % vec3<u32>(32u)), vec4<i32>(min(-40387i, u_input.a), u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), u_input.a)), max(abs(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), vec4<i32>(2147483647i, u_input.a, u_input.a, min(6600i, u_input.a))), -325f));
    return !var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_1(~vec2<u32>(1u, 1u), -1388f, global0.zz), true, all(func_5(_wgslsmith_mult_i32(u_input.a, func_2(true, Struct_1(u_input.a, vec4<f32>(-1219f, -1483f, -832f, global0.x), vec3<bool>(true, true, false), vec3<i32>(u_input.a, u_input.a, 0i), vec4<i32>(16917i, -19050i, -23621i, 0i)), vec4<i32>(-5118i, u_input.a, -92267i, u_input.a), -1224f).e.x), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 29154i)), vec4<f32>(global0.x, -551f, global0.x, global0.x), vec3<bool>(true, true, true), select(vec3<i32>(u_input.a, 4068i, 2147483647i), vec3<i32>(-2147483647i, u_input.a, 2147483647i), true), -vec4<i32>(-1i, u_input.a, u_input.a, -13176i))).c));
    global0 = vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1235f, _wgslsmith_f_op_f32(trunc(1742f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(942f - _wgslsmith_f_op_f32(sign(682f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 1131f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1812f) - _wgslsmith_f_op_f32(min(1000f, -1117f))))), global0.x);
    let var_1 = vec2<i32>(1i, countOneBits(-1323i));
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))), func_2(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a) == var_1.x, Struct_1(-8186i >> (0u % 32u), vec4<f32>(global0.x, global0.x, global0.x, 309f), vec3<bool>(var_0.x, var_0.x, var_0.x), func_2(var_0.x, Struct_1(u_input.a, vec4<f32>(global0.x, -1479f, -401f, global0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<i32>(u_input.a, 37902i, 12179i), vec4<i32>(u_input.a, var_1.x, u_input.a, -2147483647i)), vec4<i32>(u_input.a, -1i, var_1.x, u_input.a), -792f).d, _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, -1i, 23290i, var_1.x), vec4<i32>(1i, var_1.x, u_input.a, var_1.x))), select(~vec4<i32>(u_input.a, u_input.a, 11140i, 72183i), -vec4<i32>(4189i, u_input.a, -2147483647i, u_input.a), all(var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0.x, -1401f)), -749f))).b.x, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x))), global0.x)), vec4<f32>(1f, 561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(false, Struct_1(27406i, vec4<f32>(global0.x, 634f, global0.x, -1098f), var_0, vec3<i32>(u_input.a, var_1.x, -1i), vec4<i32>(u_input.a, 0i, u_input.a, -1i)), vec4<i32>(57783i, u_input.a, 20879i, u_input.a), 1337f).b.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -183f, 232f, 240f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(func_2(var_0.x, Struct_1(var_1.x, vec4<f32>(global0.x, -1000f, global0.x, global0.x), var_0, vec3<i32>(u_input.a, u_input.a, var_1.x), vec4<i32>(u_input.a, u_input.a, -2147483647i, var_1.x)), vec4<i32>(42076i, 9442i, u_input.a, u_input.a), 1290f).b.x, -3005f, -966f, -1142f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1265f, -139f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, 1000f, global0.x, global0.x)))))));
    var var_2 = firstTrailingBit(0u);
    var var_3 = Struct_1(var_1.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(max(-1000f, -234f))), -139f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-975f))), global0.x), func_2(var_0.x | var_0.x, func_2(func_1(firstLeadingBit(vec2<u32>(0u, 1u)), global0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - global0.xx)), Struct_1(737i, vec4<f32>(-128f, 527f, global0.x, global0.x), var_0, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, 2147483647i), vec3<i32>(-53981i, 0i, -21436i)), func_3(Struct_1(6823i, vec4<f32>(global0.x, global0.x, global0.x, 731f), var_0, vec3<i32>(-73250i, -32694i, var_1.x), vec4<i32>(15107i, var_1.x, var_1.x, u_input.a)), true, Struct_1(var_1.x, vec4<f32>(global0.x, -480f, global0.x, global0.x), vec3<bool>(true, true, true), vec3<i32>(2147483647i, u_input.a, 32142i), vec4<i32>(-1i, u_input.a, u_input.a, 21800i)), vec4<f32>(global0.x, global0.x, -1062f, global0.x))), vec4<i32>(var_1.x, 31847i, 1i, var_1.x) & vec4<i32>(1i, -1i, u_input.a, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f))), vec4<i32>(var_1.x, ~2147483647i, ~u_input.a, -96846i), global0.x).c, select(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -2734i, var_1.x), vec3<i32>(u_input.a, 16056i, var_1.x)), vec3<i32>(i32(-1i) * -18608i, 29998i, var_1.x), var_0.x) | firstLeadingBit(_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_1.x, var_1.x, 39292i)), min(vec3<i32>(u_input.a, var_1.x, -10720i), vec3<i32>(1i, 2147483647i, u_input.a)))), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, ~select(u_input.a, 27765i, false), var_1.x, var_1.x), max(-vec4<i32>(u_input.a, -1i, -25979i, 1779i), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(52935i, u_input.a, var_1.x, u_input.a), vec4<i32>(u_input.a, -12182i, -28393i, var_1.x))))));
    var var_4 = firstLeadingBit(1u);
    var_4 = ~_wgslsmith_mod_u32(19434u, abs(~_wgslsmith_sub_u32(4294967295u, 94822u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mod_u32(0u, min(81331u, 22362u)), abs(37269u << (0u % 32u))), func_5(_wgslsmith_add_i32(firstLeadingBit(var_1.x), var_1.x), func_2(any(vec4<bool>(var_0.x, var_0.x, true, true)), func_2(false, Struct_1(u_input.a, vec4<f32>(148f, var_3.b.x, global0.x, 601f), vec3<bool>(var_3.c.x, var_3.c.x, true), vec3<i32>(u_input.a, -1i, var_3.a), vec4<i32>(u_input.a, -1i, u_input.a, 24875i)), var_3.e, -772f), var_3.e, func_2(var_0.x, Struct_1(-6443i, var_3.b, var_0, var_3.e.zzz, var_3.e), var_3.e, global0.x).b.x)).c.x), ~(~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(64248u, 0u, 4294967295u, 4294967295u)), ~vec4<u32>(11758u, 4294967295u, 2308u, 4294967295u), vec4<u32>(4294967295u, 1u, 38939u, 23635u))));
}

