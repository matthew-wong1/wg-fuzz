struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<bool>(false, false, false));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = Struct_1((_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.a.x), u_input.a.x) ^ abs(countOneBits(u_input.a.x))) == 17402u, vec3<bool>(true, abs(~u_input.a.x) <= ~143417u, true));
    global0 = Struct_1(true, vec3<bool>(global0.b.x && all(vec4<bool>(true, global0.a, global0.a, global0.a)), !all(vec4<bool>(global0.b.x, global0.b.x, global0.a, true)), !(!global0.a)));
    let var_0 = ~min(u_input.a, _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(38731u, u_input.a.x, 1u, 40922u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 5950u, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x)));
    var var_1 = Struct_3(Struct_2(Struct_1(select(global0.a, global0.b.x, true), !vec3<bool>(global0.a, global0.a, global0.b.x)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b, 1i), vec2<i32>(-8947i, -30776i)) >> (min(var_0.zw, vec2<u32>(56386u, u_input.a.x)) % vec2<u32>(32u)), ~(~vec2<i32>(1i, u_input.b))), Struct_1(true, vec3<bool>(!global0.b.x, all(vec2<bool>(false, global0.b.x)), any(vec3<bool>(global0.b.x, false, false)))), global0.a, abs(_wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(12828i, -27929i)))), abs(~(~90579u)) << (var_0.x % 32u), !(!select(global0.b.yx, select(vec2<bool>(global0.b.x, global0.a), global0.b.xx, global0.a), true)), Struct_2(Struct_1(!(true && global0.a), select(global0.b, global0.b, all(vec4<bool>(false, global0.a, global0.b.x, true)))), ~_wgslsmith_sub_i32(max(-26750i, -2147483647i), -u_input.b), Struct_1(false, vec3<bool>(true, any(vec3<bool>(global0.a, true, false)), true)), true, ~(~(i32(-1i) * -2735i))));
    let var_2 = var_1.a;
    return -1583i;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    global0 = Struct_1(global0.a && (476f == arg_2), global0.b);
    var var_0 = -798f;
    var var_1 = -1076f;
    let var_2 = Struct_3(Struct_2(Struct_1((global0.b.x & global0.b.x) && true, vec3<bool>(global0.a, true, false)), u_input.b, Struct_1(!(54323i >= u_input.b), vec3<bool>(any(global0.b.zx), -2147483647i == u_input.b, !global0.b.x)), false, firstLeadingBit(_wgslsmith_div_i32(u_input.b ^ u_input.b, func_3()))), arg_1.x, !vec2<bool>(global0.b.x, true & all(vec4<bool>(true, global0.b.x, global0.b.x, false))), Struct_2(Struct_1(true, !vec3<bool>(false, global0.b.x, global0.b.x)), abs(u_input.b), Struct_1((arg_0 == arg_2) || true, global0.b), !(false | global0.b.x) && any(vec3<bool>(true, global0.a, false)), (u_input.b & _wgslsmith_div_i32(u_input.b, u_input.b)) | u_input.b));
    let var_3 = Struct_3(var_2.d, arg_1.x ^ _wgslsmith_div_u32(var_2.b, ~(~8298u)), vec2<bool>(~countOneBits(1i) == _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.e, u_input.b, -6198i, var_2.d.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.b, var_2.d.e, -2147483647i, -2147483647i), vec4<i32>(var_2.d.e, 34623i, u_input.b, u_input.b))), -1317f >= arg_0), var_2.a);
    return _wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(abs(vec3<i32>(1i, 2147483647i, 0i)) >> (firstTrailingBit(vec3<u32>(17889u, 1u, 32249u)) % vec3<u32>(32u)))), select(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(13663i, u_input.b, -1i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(-59975i, var_3.a.b, 7298i), vec3<i32>(0i, 21865i, 2147483647i))), vec3<i32>(firstTrailingBit(1i), ~39210i, _wgslsmith_mod_i32(~(-35719i), 1i)), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.b, -25234i), vec2<i32>(-13109i, 2147483647i))) < (~2147483647i << ((0u << (var_2.b % 32u)) % 32u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-298f, 1077f)) * _wgslsmith_f_op_f32(floor(-1038f))))), Struct_3(Struct_2(Struct_1(true, arg_0), func_2(-1000f, ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -670f)), Struct_1(arg_0.x & arg_0.x, vec3<bool>(false, global0.a, true)), !(arg_0.x && true), arg_1.x), 16205u, arg_0.yz, Struct_2(Struct_1(any(global0.b.yz), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, false, true), global0.b)), ~(-16616i), Struct_1(true, !global0.b), arg_0.x, -u_input.b)));
    var var_1 = var_0;
    global0 = var_0.b.a.c;
    let var_2 = !select(vec4<bool>(true, true, var_0.b.a.c.a, true), vec4<bool>(_wgslsmith_mod_i32(arg_1.x, -36931i) < arg_1.x, u_input.a.x == var_0.b.b, true, true), select(vec4<bool>(false, all(var_1.b.a.a.b), true, any(vec4<bool>(arg_0.x, global0.b.x, true, var_1.b.d.a.b.x))), vec4<bool>(global0.a, var_1.b.a.a.a, all(vec3<bool>(global0.a, true, var_0.b.d.a.b.x)), arg_0.x && arg_0.x), vec4<bool>(var_0.b.b == 16100u, any(vec2<bool>(global0.a, global0.a)), true, !var_0.b.d.a.a)));
    var_1 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(var_1.a - var_0.a))))), Struct_3(var_0.b.a, min(1u & _wgslsmith_div_u32(0u, var_1.b.b), 0u), arg_0.yx, Struct_2(Struct_1(var_0.b.d.c.b.x, global0.b), u_input.b, var_0.b.a.a, !(arg_0.x || var_2.x), func_3())));
    return var_0.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = -vec4<i32>(_wgslsmith_clamp_i32(-u_input.b, -arg_0.x, -14173i), 2147483647i, u_input.b, (abs(-5585i) & select(u_input.b, arg_0.x, global0.a)) | ~arg_0.x);
    let var_1 = -(~28268i);
    global0 = Struct_1(any(select(select(!vec4<bool>(global0.a, global0.a, true, false), !vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x)), select(!vec4<bool>(global0.a, true, global0.a, false), select(vec4<bool>(false, arg_1.x, false, true), vec4<bool>(global0.a, false, arg_1.x, true), true), !vec4<bool>(arg_1.x, false, false, global0.b.x)), global0.a)), select(select(arg_1, !(!vec3<bool>(arg_1.x, global0.b.x, true)), global0.a), global0.b, !select(select(global0.b, vec3<bool>(true, true, true), global0.b), !global0.b, true)));
    var var_2 = select(arg_0.wwx, var_0.wwx, !vec3<bool>(false, true, !(arg_2.x >= arg_2.x)));
    let var_3 = vec4<u32>(u_input.a.x, 65227u, ~_wgslsmith_clamp_u32(22954u, ~1u, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.xxw, vec3<u32>(33652u, u_input.a.x, 41720u))))) & _wgslsmith_mod_vec4_u32(~vec4<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(0u, u_input.a.x), ~u_input.a.x, u_input.a.x ^ 7096u), vec4<u32>(abs(1u), ~_wgslsmith_div_u32(1u, u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.a.x), u_input.a.x, ~u_input.a.x)));
    return func_4(select(vec3<bool>(true, all(global0.b), arg_1.x), select(global0.b, !select(global0.b, vec3<bool>(arg_1.x, global0.a, global0.b.x), arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true)), arg_1.x), vec4<i32>(-func_2(_wgslsmith_f_op_f32(-1000f + 1359f), _wgslsmith_mod_vec3_u32(u_input.a.yxw, u_input.a.zyy), -1095f), -func_2(arg_2.x, firstLeadingBit(var_3.xwx), _wgslsmith_f_op_f32(-arg_2.x)), countOneBits(-(var_0.x << (0u % 32u))), 1i));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_4 {
    global0 = func_4(global0.b, vec4<i32>(arg_1.d.b, -24234i, -7950i, ~(-1i))).a.a;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) + 1f));
    let var_1 = any(select(!vec4<bool>(global0.b.x, true, false, true), !vec4<bool>(global0.b.x, false, true, arg_1.d.c.a), any(!arg_1.d.c.b.xx))) & true;
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_3.xyy * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.x, -1827f))), var_0, _wgslsmith_f_op_f32(round(741f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-599f)), _wgslsmith_f_op_f32(f32(-1f) * -992f), _wgslsmith_f_op_f32(f32(-1f) * -380f)) * vec3<f32>(arg_2.x, _wgslsmith_div_f32(277f, arg_3.x), 123f))));
    let var_3 = u_input.a;
    return Struct_4(113f, func_4(!select(vec3<bool>(arg_1.c.x, var_1, false), !vec3<bool>(false, true, global0.b.x), arg_1.d.a.b), -select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -13686i, 49873i, u_input.b), vec4<i32>(arg_0.x, arg_1.d.e, 0i, u_input.b)), vec4<i32>(arg_1.a.b, -2147483647i, 2147483647i, -1i) ^ vec4<i32>(1i, -4018i, arg_0.x, arg_1.a.b), select(vec4<bool>(false, true, false, global0.a), vec4<bool>(global0.a, true, true, arg_1.a.c.a), arg_1.d.c.a))));
}

fn func_6(arg_0: Struct_4) -> i32 {
    global0 = Struct_1(arg_0.b.a.c.b.x, global0.b);
    var var_0 = ~vec4<i32>(u_input.b, _wgslsmith_add_i32(arg_0.b.a.e, func_5(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_0.b.a.e), vec2<i32>(-46336i, -1i)), arg_0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(arg_0.a, arg_0.a), global0.b.xz)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, 677f, -2144f, arg_0.a))).b.a.b), arg_0.b.a.b, -26739i);
    let var_1 = _wgslsmith_f_op_f32(round(-892f));
    var_0 = _wgslsmith_sub_vec4_i32(~select(_wgslsmith_add_vec4_i32(vec4<i32>(36847i, var_0.x, 2147483647i, u_input.b), select(vec4<i32>(u_input.b, 41460i, -26069i, -25381i), vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x), true)), firstTrailingBit(vec4<i32>(0i, 0i, -2147483647i, -3148i)), !(!vec4<bool>(true, false, global0.b.x, arg_0.b.d.a.b.x))), -(~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, 39262i, u_input.b, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.d.b, 1i, -60637i, -38014i), vec4<i32>(-1i, arg_0.b.a.b, u_input.b, u_input.b)))));
    let var_2 = func_5(vec2<i32>(0i, _wgslsmith_dot_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(2147483647i, 1i, u_input.b, u_input.b))), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -18743i, 1i, 0i) & vec4<i32>(var_0.x, -2147483647i, -41986i, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -8032i, 2147483647i, -2147483647i), vec4<i32>(u_input.b, 17424i, u_input.b, arg_0.b.d.b), vec4<i32>(var_0.x, 5789i, var_0.x, u_input.b))))), func_4(arg_0.b.d.a.b, -vec4<i32>(-29136i << (1u % 32u), arg_0.b.a.b, _wgslsmith_mult_i32(u_input.b, u_input.b), func_4(vec3<bool>(global0.b.x, true, arg_0.b.a.c.a), vec4<i32>(0i, 17620i, 2147483647i, 3979i)).a.e)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -361f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -804f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(510f * -1276f))), _wgslsmith_div_f32(-1134f, var_1), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2428f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f) + -570f)))).b.a;
    return -(~_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, ~var_0.x, -1i, max(var_2.e, var_2.e)), -vec4<i32>(2147483647i, var_2.e, u_input.b, var_2.e)));
}

fn func_7(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(336f))))));
    var var_1 = any(vec2<bool>(true, true));
    let var_2 = (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + -1000f), -330f)) >= _wgslsmith_f_op_f32(-997f + _wgslsmith_f_op_f32(882f + _wgslsmith_f_op_f32(trunc(1000f))))) && all(select(!vec4<bool>(arg_1, global0.a, true, false), !select(vec4<bool>(arg_1, true, false, global0.b.x), vec4<bool>(false, global0.b.x, arg_1, true), true), select(select(vec4<bool>(arg_1, true, false, false), vec4<bool>(true, false, arg_1, global0.a), true), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), global0.b.x)));
    var_1 = global0.b.x;
    var var_3 = func_4(vec3<bool>(false, true, false), arg_3).a.c;
    return func_5(arg_0, Struct_3(func_5(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 3194i), vec2<i32>(1i, 2147483647i)), func_5(vec2<i32>(arg_0.x, arg_0.x), func_1(arg_3, vec3<bool>(false, var_2, true), vec4<f32>(-673f, 485f, 1725f, -487f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -271f, -1156f, 537f) * vec4<f32>(-1180f, -285f, 720f, 959f))).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-223f, 1002f) + vec2<f32>(602f, 400f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-160f, -667f, -893f, -314f), vec4<f32>(-570f, 1183f, 775f, 297f)), vec4<f32>(1505f, -544f, 240f, -111f)))).b.a, _wgslsmith_dot_vec3_u32(u_input.a.yzx, vec3<u32>(func_1(vec4<i32>(-22161i, arg_2, -7842i, u_input.b), global0.b, vec4<f32>(-957f, 609f, 1000f, -332f)).b, 4294967295u ^ u_input.a.x, 0u)), vec2<bool>(!arg_1, any(select(vec4<bool>(false, global0.a, true, false), vec4<bool>(var_2, global0.b.x, true, global0.a), arg_1))), func_1(arg_3, func_5(arg_0, Struct_3(Struct_2(Struct_1(false, global0.b), arg_3.x, Struct_1(true, vec3<bool>(global0.a, var_3.a, true)), global0.b.x, 1i), 4294967295u, global0.b.yx, Struct_2(Struct_1(global0.b.x, vec3<bool>(var_2, var_2, var_3.a)), 660i, Struct_1(true, vec3<bool>(var_3.a, var_3.b.x, false)), var_2, 0i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1668f, 913f) - vec2<f32>(-419f, -359f)), vec4<f32>(400f, 687f, 1308f, 114f)).b.a.c.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-605f, -899f, -2012f, 1300f), vec4<f32>(-415f, -1000f, -237f, 137f)))).a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-808f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1432f - -1187f), 383f))), 1736f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-703f, _wgslsmith_f_op_f32(select(-173f, _wgslsmith_div_f32(-1096f, -170f), true)), _wgslsmith_f_op_f32(-309f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-629f, -931f), _wgslsmith_div_f32(-839f, 236f))))).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec2<i32>(u_input.b, func_6(func_5(vec2<i32>(-1i, u_input.b), func_1(vec4<i32>(-2147483647i, -15405i, 10414i, u_input.b), global0.b, vec4<f32>(1098f, -394f, 648f, 1386f)), _wgslsmith_div_vec2_f32(vec2<f32>(441f, 1843f), vec2<f32>(-275f, -127f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2278f, -749f, 130f, -547f) + vec4<f32>(-293f, 460f, 596f, -1582f))))), true, 1i, ~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, -34361i), 27193i), -2147483647i, min(u_input.b, u_input.b), u_input.b));
    let var_1 = Struct_1(true, global0.b);
    global0 = Struct_1(32218u > _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a.x, 40067u, u_input.a.x, u_input.a.x), u_input.a), vec4<u32>(u_input.a.x, 99u, u_input.a.x, 31550u)), countOneBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))), !var_1.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(floor(810f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(905f)), -1329f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(668f, -555f)), _wgslsmith_f_op_f32(-1458f + -1195f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-329f, _wgslsmith_f_op_f32(trunc(207f)), _wgslsmith_f_op_f32(-1458f - -311f)) + vec3<f32>(1298f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(max(1046f, 238f))))));
    var var_3 = _wgslsmith_f_op_f32(func_5(vec2<i32>(~(~u_input.b), -60477i), func_5(~max(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 1i)), Struct_3(func_4(vec3<bool>(false, var_1.a, false), vec4<i32>(u_input.b, 37662i, u_input.b, u_input.b)).a, 4294967295u, !var_0.a.b.zx, func_7(vec2<i32>(47962i, var_0.b), var_1.b.x, -1i, vec4<i32>(u_input.b, 66095i, u_input.b, u_input.b))), var_2.xy, _wgslsmith_div_vec4_f32(vec4<f32>(-582f, 177f, 146f, 1382f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 255f, -299f, -1000f) * vec4<f32>(var_2.x, var_2.x, -176f, var_2.x)))).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xy + _wgslsmith_f_op_vec2_f32(-var_2.zy)) - var_2.xz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -268f, 750f, -1367f)))).a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(883f, var_2.x))) * -489f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 898f))))));
    var_0 = Struct_2(Struct_1(abs(15432i) <= -u_input.b, global0.b), var_0.b & _wgslsmith_sub_i32(-40955i, _wgslsmith_mod_i32(-1i, u_input.b)), Struct_1(any(!select(vec4<bool>(var_1.b.x, var_1.b.x, var_0.d, false), vec4<bool>(var_1.b.x, false, global0.b.x, global0.b.x), var_0.d)), vec3<bool>(func_4(func_1(vec4<i32>(2147483647i, u_input.b, -9653i, u_input.b), vec3<bool>(var_1.b.x, false, var_1.b.x), vec4<f32>(var_2.x, var_2.x, 500f, 1524f)).a.c.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, 1i, 5021i), vec4<i32>(60062i, 13293i, var_0.e, -2147483647i))).d.a.b.x, any(select(var_1.b, vec3<bool>(false, false, true), vec3<bool>(false, true, var_1.b.x))), true)), any(select(!vec4<bool>(false, false, var_1.a, true), select(select(vec4<bool>(var_1.a, true, false, false), vec4<bool>(var_1.a, global0.b.x, true, false), false), vec4<bool>(true, global0.b.x, var_0.a.a, var_1.b.x), var_1.a), var_1.a)), countOneBits(-func_2(-144f, vec3<u32>(16696u, u_input.a.x, u_input.a.x), var_2.x)) ^ u_input.b);
    var var_4 = var_2.x;
    var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(-416f, var_2.x)), _wgslsmith_f_op_f32(-286f - -497f)))));
    var var_5 = !select(vec4<bool>(true && select(var_0.c.a, true, true), func_5(~vec2<i32>(379i, var_0.e), Struct_3(Struct_2(Struct_1(var_1.b.x, vec3<bool>(var_1.b.x, true, var_1.a)), 2147483647i, Struct_1(true, global0.b), true, 2147483647i), u_input.a.x, vec2<bool>(var_0.c.a, true), Struct_2(var_1, var_0.b, var_1, global0.a, 26988i)), var_2.zz, vec4<f32>(871f, 1832f, 889f, var_2.x)).b.a.c.b.x, !(!global0.a), true), !select(select(vec4<bool>(global0.a, true, false, true), vec4<bool>(true, false, true, var_1.a), true), !vec4<bool>(true, true, false, var_0.d), vec4<bool>(false, var_1.b.x, false, false)), u_input.a.x > 5825u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-27600i), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), firstLeadingBit(1u), reverseBits(4294967295u)), u_input.a.x | (u_input.a.x | 1u)), u_input.a.x, u_input.a.x), countOneBits(_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(var_0.e, u_input.b)), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -41572i), vec2<i32>(var_0.e, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(50670i, 13641i)), select(vec2<i32>(14487i, -2147483647i), vec2<i32>(2147483647i, 11487i), var_5.yw)))), var_2.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-610f, _wgslsmith_f_op_f32(abs(var_2.x)))));
}

