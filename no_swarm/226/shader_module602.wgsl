struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1u, 62514u, 51726u);

var<private> global1: u32;

var<private> global2: array<u32, 18>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global2 = array<u32, 18>();
    global2 = array<u32, 18>();
    var var_0 = 79084u;
    var var_1 = Struct_4(1373f, Struct_3(arg_0.b.b, Struct_2(arg_0.b.a.a, ~global0.xzz << ((arg_0.b.a.b | arg_0.b.a.b) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.x, arg_0.b.c.x)) * _wgslsmith_f_op_vec2_f32(-arg_0.b.c)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.c) - vec2<f32>(1614f, 794f)))));
    var var_2 = _wgslsmith_dot_vec3_u32(arg_0.b.a.b, vec3<u32>(~_wgslsmith_div_u32(arg_0.b.a.b.x, global2[_wgslsmith_index_u32(4294967295u, 18u)]) << (0u % 32u), 0u, 30348u));
    return arg_0.b.b.b.x;
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_add_vec4_u32(abs(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 12139u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 4294967295u), vec4<u32>(1u, global0.x, global0.x, global0.x)), vec4<u32>(func_3(Struct_4(1000f, Struct_3(Struct_2(vec3<bool>(true, true, false), global0.zwy), Struct_2(vec3<bool>(true, true, true), global0.yyw), vec2<f32>(-814f, 358f)))), 84006u, global0.x << (global2[_wgslsmith_index_u32(20465u, 18u)] % 32u), global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 18u)], 18u)], global0.x), 18u)]))), countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(85195u, global0.x, 1u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global0.x, 1u, 0u)), vec4<u32>(global0.x, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13182u, 18u)], 18u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 0u)))));
    var var_0 = Struct_4(-2313f, Struct_3(Struct_2(vec3<bool>(any(vec2<bool>(false, false)), true, any(vec3<bool>(false, false, false))), _wgslsmith_div_vec3_u32(max(global0.wyw, global0.yyy), _wgslsmith_mult_vec3_u32(global0.xxw, global0.ywz))), Struct_2(vec3<bool>(true, true, true), ~select(global0.wyy, vec3<u32>(41682u, 0u, global2[_wgslsmith_index_u32(global0.x, 18u)]), false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f - -1227f)), 873f)));
    var var_1 = Struct_3(var_0.b.a, var_0.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.c)) - var_0.b.c));
    let var_2 = firstTrailingBit(max(u_input.b, ~min(~(-1i), _wgslsmith_clamp_i32(-26617i, u_input.b, 1i))));
    var var_3 = Struct_4(var_1.c.x, Struct_3(Struct_2(var_0.b.b.a, ~(~vec3<u32>(41596u, 1u, 0u))), var_1.a, var_1.c));
    return var_1.b;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = func_2();
    return arg_0.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: bool) -> Struct_2 {
    global2 = array<u32, 18>();
    var var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1179f))), Struct_3(Struct_2(vec3<bool>(false, true, arg_0.x), vec3<u32>(global2[_wgslsmith_index_u32(0u, 18u)], 4294967295u, 1u)), func_2(), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -533f), 1287f))), countOneBits(~_wgslsmith_mult_vec2_i32(~u_input.a, firstLeadingBit(u_input.a))), -(~u_input.a.x), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 18u)], 0u), 38436u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global0.x), 18u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(23172u, global2[_wgslsmith_index_u32(27226u, 18u)], global0.x, 62913u), vec4<u32>(global0.x, 28341u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], 4294967295u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, global2[_wgslsmith_index_u32(global0.x, 18u)], global0.x, 46147u), ~vec4<u32>(4294967295u, global0.x, 19768u, 0u), ~vec4<u32>(24918u, 1u, 1u, 1u))), 18u)], ~global0.x));
    let var_1 = func_4(Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))), Struct_3(var_0.b, func_4(Struct_4(-361f, Struct_3(Struct_2(vec3<bool>(true, true, true), vec3<u32>(0u, global0.x, global2[_wgslsmith_index_u32(global0.x, 18u)])), var_0.b, vec2<f32>(var_0.c.x, var_0.c.x))), vec2<i32>(-75344i, -47936i), arg_1, reverseBits(vec4<u32>(var_0.a.b.x, 19744u, 39910u, var_0.a.b.x))).b, _wgslsmith_f_op_vec2_f32(abs(var_0.c)))), _wgslsmith_sub_vec2_i32(abs(-abs(vec2<i32>(u_input.a.x, arg_1))), countOneBits(min(vec2<i32>(arg_1, u_input.b), u_input.a)) | vec2<i32>(arg_1, u_input.b)), ~reverseBits(-u_input.b), ~select(vec4<u32>(~1u, global0.x, firstTrailingBit(global0.x), 4294967295u), firstTrailingBit(vec4<u32>(0u, 40359u, 4294967295u, global0.x)), !(!vec4<bool>(true, false, arg_0.x, arg_2)))).b.a.x;
    let var_2 = Struct_1(~(_wgslsmith_div_vec3_u32(vec3<u32>(51519u, global0.x, 4294967295u), vec3<u32>(4294967295u, var_0.b.b.x, var_0.b.b.x)) >> (global0.yxz % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_u32(~func_4(Struct_4(345f, Struct_3(var_0.a, var_0.a, vec2<f32>(-239f, var_0.c.x))), u_input.a, 61889i, vec4<u32>(global0.x, var_0.a.b.x, 14592u, 88502u)).b.b, vec3<u32>(38825u, abs(42407u), abs(global0.x)), ~vec3<u32>(global2[_wgslsmith_index_u32(global0.x, 18u)], var_0.b.b.x, global0.x)));
    var_0 = Struct_3(func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), Struct_3(Struct_2(arg_0, global0.yxy), var_0.b, var_0.c)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, -86805i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_1, -19970i, arg_1), vec4<i32>(u_input.a.x, -2147483647i, -66610i, u_input.a.x))), -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -4166i, -52779i) << (vec3<u32>(var_2.a.x, 51431u, var_0.a.b.x) % vec3<u32>(32u)), vec3<i32>(2147483647i, 1i, 29096i)) >> (var_2.a.x % 32u), select(~vec4<u32>(global0.x, var_2.a.x, 0u, 0u) >> ((vec4<u32>(13012u, 8110u, 23249u, 43553u) >> (vec4<u32>(var_0.a.b.x, global2[_wgslsmith_index_u32(1u, 18u)], 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~vec4<u32>(var_0.b.b.x, 0u, 0u, global0.x)), true)).a, var_0.b, _wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(-var_0.c)));
    return func_4(Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1061f - var_0.c.x))), func_4(Struct_4(-848f, Struct_3(Struct_2(vec3<bool>(var_0.b.a.x, arg_2, false), var_2.a), var_0.b, vec2<f32>(1919f, -1355f))), countOneBits(firstTrailingBit(u_input.a)), ~min(-14404i, -2147483647i), vec4<u32>(_wgslsmith_mod_u32(5004u, var_2.a.x), _wgslsmith_clamp_u32(14270u, var_0.b.b.x, global2[_wgslsmith_index_u32(1u, 18u)]), func_3(Struct_4(var_0.c.x, Struct_3(var_0.b, var_0.b, vec2<f32>(var_0.c.x, -1425f)))), _wgslsmith_sub_u32(var_2.a.x, global0.x)))), vec2<i32>(_wgslsmith_div_i32(arg_1, -17012i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-51764i, u_input.a.x, 0i, 1i), vec4<i32>(arg_1, arg_1, arg_1, arg_1)), ~vec4<i32>(arg_1, 0i, -10397i, u_input.b)), firstLeadingBit(min(vec4<i32>(2147483647i, arg_1, arg_1, 1i), vec4<i32>(u_input.a.x, -46240i, 2147483647i, 60199i))))), -max(u_input.b >> (func_2().b.x % 32u), -_wgslsmith_add_i32(arg_1, 1599i)), ~(~reverseBits(~vec4<u32>(48561u, global0.x, 0u, var_0.b.b.x)))).a;
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = arg_0.b.a.a;
    var var_1 = _wgslsmith_f_op_f32(floor(-1730f));
    global1 = 1u;
    global2 = array<u32, 18>();
    let var_2 = Struct_5(vec2<i32>(u_input.b & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(13272i, u_input.b, 16173i), vec3<i32>(-7649i, -1i, u_input.b)), select(u_input.b, u_input.a.x, true)), firstLeadingBit(u_input.b | u_input.b) >> (_wgslsmith_sub_u32(1u, 1u) % 32u)), arg_0.b.c);
    return Struct_1(arg_0.b.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f)), Struct_3(func_1(vec3<bool>(true, true, true), -1i, select(false, false, false)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(global0.x, global0.x, global2[_wgslsmith_index_u32(global0.x, 18u)]) >> (global0.zxw % vec3<u32>(32u))), _wgslsmith_div_vec2_f32(vec2<f32>(523f, -351f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(409f, 254f))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-268f));
    let var_2 = vec3<f32>(1f, 1f, 1f);
    let var_3 = ~(-u_input.a.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f * 1776f));
    var var_5 = -(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 5951i, u_input.a.x), vec3<i32>(2147483647i, 1i, var_3)), _wgslsmith_mult_i32(0i, 1i), 21978i) & _wgslsmith_sub_vec3_i32(vec3<i32>(var_3, 36412i, ~u_input.a.x), vec3<i32>(i32(-1i) * -53098i, 14575i, -12173i)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(select(vec3<bool>(true, true, true), func_4(Struct_4(var_2.x, Struct_3(Struct_2(vec3<bool>(false, true, false), var_0.a), Struct_2(vec3<bool>(false, false, true), global0.wyw), vec2<f32>(-611f, var_1))), u_input.a, 57762i, vec4<u32>(0u, 1u, global2[_wgslsmith_index_u32(global0.x, 18u)], global0.x)).a.a, true), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-21363i, var_5.x, u_input.a.x), vec3<i32>(2147483647i, var_5.x, -1i), vec3<i32>(14613i, var_3, u_input.b)), min(vec3<i32>(var_5.x, var_3, 0i), vec3<i32>(31752i, var_3, 37096i))), var_2.x == var_2.x).b.x, -(vec4<i32>(-38824i, var_5.x, _wgslsmith_div_i32(9809i, -1i), _wgslsmith_clamp_i32(u_input.b, -1i, var_3)) ^ vec4<i32>(0i, -2147483647i, 31605i, -21420i)), -1023f, u_input.a.x, vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(var_5.x, 0i, -6632i), firstTrailingBit(vec3<i32>(1i, 2904i, u_input.b))));
}

