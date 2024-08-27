struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 27998u, 4301u, 4294967295u), vec3<f32>(-198f, -1559f, 556f), 79965u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: u32) -> f32 {
    global1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(117290u, 25473u, global1.a.x << (arg_3 % 32u)), abs(1u)), 80427u, ~arg_3, _wgslsmith_add_u32(1u, ~min(43480u, 1u))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(972f + _wgslsmith_div_f32(arg_1, global1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b.x - arg_1), _wgslsmith_div_f32(arg_0.b.x, 820f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1629f, arg_1))), _wgslsmith_f_op_f32(trunc(arg_0.b.x)))), _wgslsmith_f_op_f32(arg_0.b.x * arg_1)), ~arg_3);
    var var_0 = arg_0.b.x;
    let var_1 = Struct_1(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 529f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))) - -2857f)), arg_0.c);
    let var_2 = -(~abs(_wgslsmith_clamp_i32(arg_2 << (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), u_input.d.xw), ~arg_2)));
    var_0 = var_1.b.x;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1745f), _wgslsmith_f_op_f32(-arg_0.b.x))) - var_1.b.x), _wgslsmith_f_op_f32(-arg_0.b.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec4<f32> {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 69628u), vec3<f32>(246f, global1.b.x, -112f), global1.a.x), -1229f, 54687i, global1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-929f, 1361f)) * global1.b.x))), _wgslsmith_div_u32(select(1u, 1u, true), _wgslsmith_clamp_u32(~38630u, 4294967295u, abs(26808u))) & reverseBits(~global1.a.x));
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(step(global1.b, global1.b)), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1.a.ywz, global1.a.wxy), ~global1.c)), ~abs(_wgslsmith_sub_u32(global1.c, 4294967295u)), min(~0u, ~_wgslsmith_add_u32(global1.c, global1.c))));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(var_0.a << ((vec4<u32>(34399u, 4294967295u, 1u, 0u) << (~vec4<u32>(global1.c, 4294967295u, var_0.c, 10939u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~global1.a, ~vec4<u32>(73376u, 1u, var_0.a.x, 29032u)) & ~reverseBits(global1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)) - _wgslsmith_f_op_vec3_f32(min(var_0.b, global1.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1.b))))), 3533u);
    let var_2 = ~(_wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(4294967295u, global1.a.x, 4294967295u)), ~(~vec3<u32>(var_1.a.x, var_1.a.x, 62448u)), select(~vec3<u32>(0u, 2075u, 5773u), vec3<u32>(global1.a.x, global1.c, var_1.c), select(vec3<bool>(arg_0.x, arg_1.x, arg_0.x), vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, false, true)))) & ~_wgslsmith_add_vec3_u32(abs(var_1.a.wyy), ~var_0.a.yyx));
    var_1 = Struct_1(~var_1.a, vec3<f32>(-107f, _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x), global1.a.x);
    return vec4<f32>(_wgslsmith_f_op_f32(-209f * _wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, var_1.b.x))), -1169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f - 246f) - 1f));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    global0 = ~global1.c;
    let var_0 = _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + 1000f)))));
    global1 = Struct_1(~(~global1.a), vec3<f32>(arg_0.x, 1554f, _wgslsmith_f_op_f32(f32(-1f) * -276f)), 18960u);
    var var_1 = vec3<i32>(u_input.b, -u_input.b, ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.d.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(1i, u_input.a.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, -1i), -vec2<i32>(-18088i, -2147483647i))));
    var_1 = u_input.c.zyz;
    return Struct_1(vec4<u32>(_wgslsmith_mod_u32(global1.a.x, ~global1.c), countOneBits(0u), firstTrailingBit(~17414u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, global1.a.x))) >> (global1.a % vec4<u32>(32u)), global1.b, ~max(1u, 0u));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    global0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(global1.a.x, global1.a.x << (1u % 32u)), global1.c) << (78079u % 32u);
    global0 = ~(~max(1u | global1.a.x, global1.a.x));
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1478f, global1.b.x, global1.b.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1))))))) + vec4<f32>(arg_2.x, global1.b.x, _wgslsmith_f_op_f32(355f - _wgslsmith_f_op_f32(global1.b.x + 167f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + global1.b.x), global1.b.x))));
    let var_1 = 61050u;
    var var_2 = countOneBits(~15657u);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(var_0.a.x & ~var_1, 8207u << (~global1.a.x % 32u))), vec2<u32>(~(~var_0.c), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_0.c, var_1, 5477u), global1.a), abs(select(vec4<u32>(22632u, 42089u, var_0.a.x, var_0.a.x), var_0.a, vec4<bool>(false, false, true, arg_1))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, arg_2.b.x, global1.b.x) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, -1893f, global1.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, global1.b.x), arg_1.b))))), arg_1.c);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec4_u32(global1.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, arg_0.x, 0u, global1.c), ~global1.a)), vec3<f32>(_wgslsmith_f_op_f32(func_3(func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-342f, arg_1.b.x, -294f, global1.b.x), vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 895f)))), global1.b.x, 47939i, ~33045u)), -2327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * global1.b.x) * _wgslsmith_f_op_f32(round(799f))) - 1636f)), select(_wgslsmith_sub_u32(global1.a.x, 33401u), _wgslsmith_sub_u32(~(~222u), global1.c), !(true && (arg_2 >= arg_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    global0 = 104343u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(~52874u, 1u, global1.a.x), ~vec3<u32>(454u, 87726u, global1.c));
    var var_1 = ~vec2<i32>(firstLeadingBit(u_input.c.x), _wgslsmith_mult_i32(-2147483647i, 1i));
    var var_2 = vec4<bool>(true, true, true, true);
    var var_3 = func_6(abs(vec2<u32>(_wgslsmith_mult_u32(global1.c, 29039u) & ~global1.a.x, 12960u ^ ~global1.c)), func_5(global1.a.xw, Struct_1(vec4<u32>(global1.c, abs(35546u), firstLeadingBit(0u), min(4294967295u, global1.a.x)), global1.b, func_1(~var_1.x, u_input.c.x <= 32795i, global1.b.yy)), Struct_1(~vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 76401u), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(var_2.x, true), vec2<bool>(true, var_2.x))).x, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global1.b.x * 856f)), _wgslsmith_mult_u32(49589u, ~global1.c))), ~abs(reverseBits(55615u)));
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 2147483647i);
}

