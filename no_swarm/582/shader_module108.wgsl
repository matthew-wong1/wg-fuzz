struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(89719u, 66624u), vec2<u32>(33895u, 4294967295u), vec2<u32>(40680u, 99423u), vec2<u32>(1u, 4294967295u), vec2<u32>(37812u, 0u), vec2<u32>(0u, 0u), vec2<u32>(28320u, 37257u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(72367u, 111201u), vec2<u32>(391u, 0u), vec2<u32>(13747u, 14020u), vec2<u32>(4294967295u, 62390u));

var<private> global1: array<Struct_4, 8>;

var<private> global2: array<u32, 3>;

var<private> global3: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = true;
    let var_1 = var_0 == !all(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, false)));
    let var_2 = global1[_wgslsmith_index_u32(u_input.e, 8u)];
    var var_3 = min(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), u_input.d.xz) << ((_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b.b, 83293u), global0[_wgslsmith_index_u32(3084u, 13u)], u_input.b.xw) & ~u_input.b.zx) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(var_2.c.b, 13u)], u_input.a.xy), (vec2<u32>(9404u, u_input.b.x) | vec2<u32>(59506u, 4294967295u)) << (global0[_wgslsmith_index_u32(4294967295u, 13u)] % vec2<u32>(32u)), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 3u)], ~arg_1.b.b)) ^ ~u_input.b.xy);
    var_3 = vec2<u32>(_wgslsmith_div_u32(~firstTrailingBit(global2[_wgslsmith_index_u32(u_input.b.x, 3u)]), ~u_input.d.x) << (~(~(~54503u)) % 32u), 25222u);
    return ~_wgslsmith_mult_vec4_u32(u_input.b, select(~vec4<u32>(1u, var_3.x, u_input.e, 4490u), _wgslsmith_sub_vec4_u32(vec4<u32>(42128u, 28579u, 4294967295u, 25907u), vec4<u32>(var_3.x, var_2.a, 1u, 1u)), var_0 & true)) << (reverseBits(_wgslsmith_mult_vec4_u32(u_input.b, u_input.d)) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<f32>) -> i32 {
    let var_0 = arg_0.c;
    var var_1 = arg_0.d.a;
    var var_2 = _wgslsmith_add_vec3_i32(firstTrailingBit(select(vec3<i32>(~(-1i), ~arg_0.d.a, reverseBits(var_0.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-14376i, u_input.c.x, u_input.c.x) ^ vec3<i32>(10870i, var_0.a, 46851i), ~vec3<i32>(2147483647i, -2147483647i, 1i)), 1i > _wgslsmith_add_i32(arg_0.c.a, 71533i))), firstLeadingBit(abs(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.c.x, arg_2)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.x, 25333i, u_input.c.x), vec3<i32>(var_0.a, -32154i, -1i), vec3<i32>(var_0.a, u_input.c.x, var_0.a))))));
    return ~(~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a, var_2.zz), arg_0.a), -vec2<i32>(var_0.a, arg_0.a.x)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    global1 = array<Struct_4, 8>();
    global3 = array<vec4<bool>, 32>();
    global0 = array<vec2<u32>, 13>();
    let var_0 = func_4(Struct_2(-vec2<i32>(-arg_1, 0i | u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1273f, arg_0, arg_0), vec4<f32>(-2380f, -794f, arg_0, arg_0), vec4<bool>(true, false, false, false))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, 1000f))))), Struct_1(arg_1, (global2[_wgslsmith_index_u32(u_input.a.x, 3u)] ^ u_input.e) ^ reverseBits(1u)), Struct_1(-36567i, global2[_wgslsmith_index_u32(31272u, 3u)])), ~_wgslsmith_sub_vec4_u32(func_3(-2147483647i, Struct_3(-28709i, Struct_1(14531i, u_input.e))) & vec4<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(6177u, 3u)], global2[_wgslsmith_index_u32(22659u, 3u)]), u_input.b), countOneBits(-31121i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(323f, arg_0)))))));
    global3 = array<vec4<bool>, 32>();
    return Struct_2(firstLeadingBit(-u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1348f, _wgslsmith_f_op_f32(sign(-441f)), _wgslsmith_f_op_f32(step(-1000f, arg_0)), _wgslsmith_f_op_f32(floor(-1236f))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-659f, arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -1843f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(788f + -1062f)))), Struct_1(firstLeadingBit(arg_1), ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, global2[_wgslsmith_index_u32(4294967295u, 3u)]), u_input.b.yyx), 3u)], 3u)])), Struct_1(37267i, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)])) << ((7825u & global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 3u)], global2[_wgslsmith_index_u32(26822u, 3u)]), 3u)]) % 32u)));
}

fn func_1() -> vec4<i32> {
    var var_0 = false & ((1u < u_input.b.x) || true);
    var var_1 = func_2(644f, -(u_input.c.x ^ _wgslsmith_add_i32(firstTrailingBit(u_input.c.x), u_input.c.x)));
    let var_2 = Struct_2(vec2<i32>(2147483647i, -_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, 2147483647i, u_input.c.x, -58758i)), min(vec4<i32>(1i, 1i, 21937i, u_input.c.x), vec4<i32>(-2147483647i, var_1.d.a, -1i, 2147483647i)))), var_1.b, Struct_1(u_input.c.x, 57696u), Struct_1(firstLeadingBit(~2051i), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(0u, 3u)]), 3u)], u_input.e)));
    global3 = array<vec4<bool>, 32>();
    var var_3 = ~vec2<u32>(~4294967295u, func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b.x), -1076f, false)), -1i).d.b);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.d.a, 2920i, _wgslsmith_clamp_i32(u_input.c.x, ~(-4562i), _wgslsmith_sub_i32(~u_input.c.x, select(var_1.a.x, -2147483647i, false))), var_2.a.x), max(-firstTrailingBit(-vec4<i32>(var_2.c.a, var_1.c.a, var_1.c.a, var_2.d.a)), ~vec4<i32>(-u_input.c.x, u_input.c.x, u_input.c.x, func_4(Struct_2(var_1.a, vec4<f32>(1083f, var_2.b.x, var_1.b.x, -227f), var_1.d, Struct_1(29972i, u_input.a.x)), u_input.b, -2147483647i, vec2<f32>(var_1.b.x, -624f)))), ~(~vec4<i32>(var_2.c.a, -5203i, 0i, u_input.c.x) & vec4<i32>(1i, countOneBits(var_2.a.x), firstLeadingBit(1i), firstLeadingBit(var_2.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(1u, 8u)];
    var var_1 = _wgslsmith_mod_vec4_i32(firstTrailingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(8672i, var_0.c.a, u_input.c.x, var_0.c.a)) << (_wgslsmith_sub_vec4_u32(u_input.b, reverseBits(u_input.d)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.a, var_0.c.a, var_0.c.a, 12192i), vec4<i32>(u_input.c.x, u_input.c.x, var_0.c.a, 1i)), vec4<i32>(u_input.c.x, -4437i, u_input.c.x, 23879i) | -vec4<i32>(28409i, 1i, u_input.c.x, 1i)), abs(~vec4<i32>(var_0.c.a, -1i, -2147483647i, 1i))));
    var_1 = -(-_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(33816i, u_input.c.x, u_input.c.x, -10059i), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 21391i)), vec4<i32>(u_input.c.x, -15921i, var_1.x, -2147483647i)) >> (~(vec4<u32>(133u, 1u, 39401u, var_0.c.b) >> ((u_input.d | u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = array<vec2<u32>, 13>();
    let var_2 = 1i >= var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-2147483647i, var_0.c.a, max(var_0.c.a | 2147483647i, ~var_0.c.a)), max(vec4<i32>(i32(-1i) * -var_0.c.a, var_0.c.a, var_1.x, u_input.c.x), max(func_1() | -vec4<i32>(var_0.c.a, u_input.c.x, -3695i, -18609i), min(vec4<i32>(2147483647i, -2147483647i, var_1.x, 1i), vec4<i32>(var_0.c.a, -1i, -24703i, var_1.x)) << (vec4<u32>(var_0.c.b, global2[_wgslsmith_index_u32(16756u, 3u)], 1u, 0u) % vec4<u32>(32u)))), u_input.e, global0[_wgslsmith_index_u32(u_input.e, 13u)], -9237i);
}

