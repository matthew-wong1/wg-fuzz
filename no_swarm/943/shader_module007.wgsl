struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(54233u, 12733u), vec2<u32>(1u, 50627u), vec2<u32>(30184u, 26784u), vec2<u32>(87836u, 4294967295u), vec2<u32>(4294967295u, 65665u), vec2<u32>(1u, 57810u), vec2<u32>(4294967295u, 9906u), vec2<u32>(0u, 8275u), vec2<u32>(0u, 1u), vec2<u32>(21041u, 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = arg_0;
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    let var_1 = arg_0;
    global0 = array<vec2<u32>, 10>();
    return i32(-1i) * -2147483647i;
}

fn func_3() -> i32 {
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1415f, -1022f)), -1191f, _wgslsmith_div_f32(237f, 1338f))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-128f, -549f, 315f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-774f, 209f, -1779f) * vec3<f32>(-1000f, 1063f, -167f)))));
    global0 = array<vec2<u32>, 10>();
    var var_2 = ~(i32(-1i) * -21252i);
    global0 = array<vec2<u32>, 10>();
    return _wgslsmith_sub_i32(-8011i, 7812i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> i32 {
    var var_0 = select(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~2253u, arg_2.a), reverseBits(_wgslsmith_mult_u32(51427u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, arg_2.a, 39592u), min(vec4<u32>(56210u, 1u, 58929u, 1u), vec4<u32>(arg_2.a, 4294967295u, u_input.a, u_input.a))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, arg_2.a, 70451u), vec3<u32>(0u, arg_2.a, arg_2.a)), vec3<u32>(4294967295u, 4294967295u, arg_2.a))), select(~vec4<u32>(arg_2.a, u_input.a, u_input.a, arg_2.a), ~vec4<u32>(30749u, 49505u, 1u, arg_2.a), true)), vec4<u32>(51844u, arg_2.a, arg_2.a ^ 4294967295u, ~44241u), true);
    var var_1 = select(countOneBits(~vec4<u32>(0u, 68596u, arg_2.a, 0u) & vec4<u32>(0u, 0u, var_0.x, 4294967295u)), ~vec4<u32>(11945u, _wgslsmith_mult_u32(var_0.x, 0u), var_0.x, arg_2.a & arg_2.a), arg_2.d) & firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, arg_2.a), arg_2.a, min(u_input.a, 19042u), 52226u), ~vec4<u32>(arg_2.a, 3273u, 53511u, u_input.a)));
    var_0 = firstTrailingBit(abs(min(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, 4294967295u, arg_2.a), max(vec4<u32>(var_0.x, 0u, var_1.x, var_1.x), vec4<u32>(42746u, u_input.a, arg_2.a, 1u))), vec4<u32>(arg_2.a, 1u, var_0.x, arg_2.a) << (~vec4<u32>(var_1.x, var_0.x, u_input.a, 1u) % vec4<u32>(32u)))));
    var var_2 = Struct_1(vec3<bool>(arg_3, true, any(arg_2.d)));
    return _wgslsmith_sub_i32(abs(arg_2.c.x), -(~reverseBits(_wgslsmith_div_i32(2147483647i, 61725i))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> vec3<i32> {
    var var_0 = ~vec2<i32>(1i, _wgslsmith_mult_i32(~arg_2.c.x, -34634i));
    global0 = array<vec2<u32>, 10>();
    var var_1 = arg_2;
    var_0 = var_1.c;
    let var_2 = ~func_4(_wgslsmith_mod_i32(func_3(), -abs(-3916i)), Struct_1(!select(vec3<bool>(false, false, false), arg_2.d.ywy, arg_2.d.xzw)), Struct_2(45345u, _wgslsmith_f_op_vec4_f32(-arg_2.b), select(~vec2<i32>(2147483647i, -92462i), -vec2<i32>(arg_2.c.x, 2147483647i), arg_2.d.zz), !select(arg_2.d, vec4<bool>(arg_2.d.x, false, true, true), vec4<bool>(true, true, true, var_1.d.x))), var_1.d.x);
    return _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_2.c.x), ~_wgslsmith_mult_vec3_i32(reverseBits(select(vec3<i32>(-30266i, 2147483647i, -1i), vec3<i32>(arg_2.c.x, -5315i, var_1.c.x), true)), -(~vec3<i32>(arg_2.c.x, 1i, 0i))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    let var_0 = ~_wgslsmith_sub_vec2_u32(~select(global0[_wgslsmith_index_u32(~1u, 10u)], vec2<u32>(0u, u_input.a), false), vec2<u32>(_wgslsmith_add_u32(~1u, min(u_input.a, 23970u)), 1u));
    let var_1 = Struct_1(vec3<bool>(any(vec2<bool>(true, true)), u_input.a < max(1u, ~49453u), ~(i32(-1i) * -19356i) > firstTrailingBit(~(-21621i))));
    let var_2 = Struct_2(~17570u, vec4<f32>(_wgslsmith_f_op_f32(-129f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f))), 261f, arg_2, -2079f), _wgslsmith_mult_vec2_i32(-(arg_1.zz | _wgslsmith_clamp_vec2_i32(arg_1.zw, arg_0.zz, vec2<i32>(-26335i, 1i))), abs(_wgslsmith_add_vec2_i32(arg_1.yy, vec2<i32>(arg_0.x, arg_0.x))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(24004u, u_input.a) >> (global0[_wgslsmith_index_u32(var_0.x, 10u)] % vec2<u32>(32u)), ~vec2<u32>(u_input.a, var_0.x), vec2<u32>(4294967295u, 27938u)) % vec2<u32>(32u))), vec4<bool>(select(true, var_1.a.x, var_1.a.x), var_1.a.x, any(vec2<bool>(var_1.a.x && true, true)), any(select(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), select(vec4<bool>(true, false, var_1.a.x, var_1.a.x), vec4<bool>(false, var_1.a.x, var_1.a.x, true), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)), select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x)))));
    let var_3 = ~arg_0.x;
    var var_4 = _wgslsmith_dot_vec2_u32(~var_0, ~firstLeadingBit(vec2<u32>(4294967295u, 1u)));
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(34349i, abs(1i) & func_1(Struct_2(u_input.a, vec4<f32>(-1000f, -968f, 830f, 662f), vec2<i32>(-47121i, -45293i), vec4<bool>(true, true, false, false)), vec3<i32>(1i, 15651i, -24168i), Struct_1(vec3<bool>(true, false, false)), -1i), func_5(func_2(22723i, vec2<u32>(6253u, u_input.a), Struct_2(51279u, vec4<f32>(-538f, -353f, 291f, 489f), vec2<i32>(-45948i, 2147483647i), vec4<bool>(false, true, false, false)), u_input.a), max(vec4<i32>(-42121i, -28590i, 1i, 37062i), vec4<i32>(-1i, 0i, 2147483647i, 14005i)), -357f))), abs(~vec3<i32>(0i, -26701i, 27076i)) << (~vec3<u32>(select(u_input.a, 0u, false), u_input.a, u_input.a) % vec3<u32>(32u)));
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    let var_1 = Struct_1(!vec3<bool>(true, all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) - -1221f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) * _wgslsmith_f_op_f32(f32(-1f) * -124f)))) - 1500f));
    let x = u_input.a;
    s_output = StorageBuffer(~(21470u & select(1u, u_input.a, false)), (_wgslsmith_sub_u32(4294967295u << (u_input.a % 32u), _wgslsmith_mult_u32(0u, 0u)) | reverseBits(4294967295u)) ^ _wgslsmith_div_u32(1u, u_input.a));
}

