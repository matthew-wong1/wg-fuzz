struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(31327u, 28823u), true, false, -1i, 121f);

var<private> global1: i32 = 22331i;

var<private> global2: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-1i, -27611i, -1i, 18271i));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 75598u);

var<private> global4: array<vec4<f32>, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global4 = array<vec4<f32>, 10>();
    global2 = array<vec4<i32>, 1>();
    var var_0 = Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(4294967295u, ~u_input.a.x)), !global0.c, _wgslsmith_mult_i32(u_input.b, global0.d) < -21201i, ~u_input.b | u_input.b, -1125f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x) + var_0.e), -349f, var_0.e, global0.e);
    var_0 = Struct_1(~vec2<u32>(countOneBits(global0.a.x), global0.a.x), true, var_0.b, _wgslsmith_add_i32(~(-var_0.d), var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) + arg_0.x));
    return u_input.b;
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.zz >> (vec2<u32>(~60043u, global3.x) % vec2<u32>(32u)), countOneBits(~countOneBits(arg_0.a))), 10u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(22357u, 74186u), ~global0.a, !vec2<bool>(arg_0.b, false)), vec2<u32>(~u_input.a.x, global0.a.x)), 10u)]));
    let var_1 = ~u_input.a.x;
    var var_2 = !(!vec2<bool>(!(global0.d == global0.d), global0.c));
    let var_3 = all(vec2<bool>(false, !select(arg_0.d > 2147483647i, true, select(var_2.x, var_2.x, global0.b))));
    global2 = array<vec4<i32>, 1>();
    return vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~firstTrailingBit(0u), arg_0.a.x), global0.a.x), ~201u, ~_wgslsmith_add_u32(34754u, countOneBits(51917u)), ~_wgslsmith_div_u32(10127u << (_wgslsmith_mult_u32(global3.x, var_1) % 32u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x), global3.x, var_1)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = -2147483647i;
    var var_0 = ~arg_0.a;
    global3 = ~max(vec3<u32>(22035u, 79725u, reverseBits(1u & u_input.a.x)), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 35284u, 35020u), select(vec3<u32>(0u, 44838u, global0.a.x), vec3<u32>(56120u, 1u, 36965u), vec3<bool>(false, false, false)), ~vec3<u32>(4294967295u, 27740u, arg_1.a.x))));
    let var_1 = vec3<bool>(true, true, (_wgslsmith_clamp_i32(arg_1.d ^ arg_1.d, 2147483647i, _wgslsmith_mult_i32(35748i, u_input.b)) < (func_2(vec3<f32>(2431f, global0.e, 614f)) | abs(-1i))) || arg_1.c);
    global2 = array<vec4<i32>, 1>();
    return Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_1.a.x, 9386u, 4294967295u), func_3(arg_0)), 4294967295u << (var_0.x % 32u)), false, _wgslsmith_f_op_f32(step(arg_1.e, arg_1.e)) <= -155f, ~_wgslsmith_sub_i32(-1i, -arg_0.d), _wgslsmith_f_op_f32(-760f - -2700f));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    global2 = array<vec4<i32>, 1>();
    let var_0 = select(_wgslsmith_div_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, global0.d, global0.d), vec4<i32>(-36635i, -1i, -67060i, -29909i))) << (~(~vec4<u32>(1u, global3.x, arg_0.a.x, 1u)) % vec4<u32>(32u)), countOneBits(global2[_wgslsmith_index_u32(13037u, 1u)])), global2[_wgslsmith_index_u32(arg_0.a.x, 1u)], arg_1 & true);
    global3 = ~_wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(22786u, global0.a.x, 54788u))), _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(1u, 17602u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 1u), false), vec3<u32>(27317u, 81522u, abs(1u)), ~func_3(Struct_1(global3.xy, arg_0.b, true, global0.d, global0.e)).wxw));
    global3 = ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, u_input.a.x, 1u), vec3<u32>(arg_0.a.x, 0u, global3.x))) ^ firstTrailingBit(~vec3<u32>(global3.x, 1u, global3.x)));
    global3 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(~abs(vec3<u32>(arg_0.a.x, global3.x, global3.x))), _wgslsmith_clamp_vec3_u32(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 12461u, 1u), vec3<u32>(12791u, 0u, 29206u), vec3<u32>(1u, 0u, 0u)), abs(vec3<u32>(18458u, global3.x, global0.a.x))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0.a.x, arg_0.a.x), vec3<u32>(0u, 25219u, global0.a.x)), (vec3<u32>(1u, 0u, 4294967295u) ^ vec3<u32>(global3.x, global0.a.x, 4294967295u)) | (vec3<u32>(global0.a.x, 43480u, 5734u) >> (vec3<u32>(arg_0.a.x, 0u, arg_0.a.x) % vec3<u32>(32u))))), vec3<u32>(abs(global3.x), ~(~4294967295u >> (0u % 32u)), ~0u));
    return global3.yy;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_1 {
    global2 = array<vec4<i32>, 1>();
    global4 = array<vec4<f32>, 10>();
    var var_0 = ~_wgslsmith_dot_vec4_i32(~(min(global2[_wgslsmith_index_u32(arg_0.a.x, 1u)], vec4<i32>(global0.d, arg_3.x, -2147483647i, global0.d)) | -vec4<i32>(u_input.b, -8890i, -85039i, -2147483647i)), arg_3);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.e, arg_0.e), vec2<f32>(arg_0.e, global0.e), arg_2.ww))))))));
    var var_2 = 1u;
    return Struct_1(~(~(~vec2<u32>(global3.x, 69228u))), all(!(!vec3<bool>(false, global0.c, arg_2.x))), arg_1 || (firstTrailingBit(~1u) > _wgslsmith_mult_u32(_wgslsmith_add_u32(105360u, global3.x), ~global3.x)), ~1i, arg_0.e);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-firstLeadingBit(1i), -(i32(-1i) * -1i)), u_input.b << (~_wgslsmith_mod_u32(global3.x, global0.a.x) % 32u)), ~(vec2<i32>(-u_input.b, _wgslsmith_div_i32(arg_0.d, 43537i)) << (vec2<u32>(arg_1.a.x, 1u) % vec2<u32>(32u))));
    var var_0 = Struct_1(vec2<u32>(func_1(func_5(Struct_1(vec2<u32>(arg_0.a.x, global0.a.x), true, arg_0.b, arg_1.d, -712f), !global0.b, select(vec4<bool>(arg_0.b, true, false, arg_0.c), vec4<bool>(true, false, arg_0.b, arg_1.c), arg_1.b), vec4<i32>(-1i, 0i, arg_1.d, arg_0.d)), Struct_1(arg_1.a, false, false, -arg_0.d, _wgslsmith_div_f32(arg_0.e, 669f))).a.x, 0u), false || all(!select(vec3<bool>(global0.c, arg_0.c, false), vec3<bool>(true, true, false), true)), all(!(!vec3<bool>(false, arg_1.b, arg_0.b))) & all(vec3<bool>(true, any(vec4<bool>(arg_1.b, true, global0.c, global0.b)), true)), 1i, 179f);
    global1 = ~(-2147483647i ^ u_input.b);
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.a.x, 38488u), 1u), _wgslsmith_sub_u32(1u, abs(952u) >> ((4294967295u >> (arg_1.a.x % 32u)) % 32u)));
    let var_2 = Struct_1(~_wgslsmith_mult_vec2_u32(var_0.a, ~vec2<u32>(4294967295u, 80825u)), arg_0.a.x != (global3.x ^ ~_wgslsmith_add_u32(0u, 0u)), !(false | select(arg_0.b, !global0.b, true)), func_1(func_5(func_5(arg_1, arg_1.b || arg_1.c, select(vec4<bool>(arg_1.b, arg_1.b, global0.c, var_0.c), vec4<bool>(false, global0.c, true, global0.c), vec4<bool>(false, false, false, var_0.b)), global2[_wgslsmith_index_u32(u_input.a.x, 1u)] & global2[_wgslsmith_index_u32(global0.a.x, 1u)]), false, select(!vec4<bool>(true, var_0.c, true, false), vec4<bool>(false, false, arg_1.b, false), select(vec4<bool>(true, arg_1.b, true, false), vec4<bool>(true, true, var_0.c, var_0.b), vec4<bool>(arg_1.b, arg_0.c, global0.c, true))), ~vec4<i32>(-2147483647i, -24370i, arg_0.d, arg_0.d)), Struct_1(u_input.a, all(!vec3<bool>(global0.b, true, true)), true, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(668f, global0.e, 749f) - vec3<f32>(-1335f, var_0.e, arg_1.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.e)) - _wgslsmith_f_op_f32(step(arg_0.e, global0.e))))).d, _wgslsmith_f_op_f32(round(-352f)));
    return StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.d, _wgslsmith_sub_i32(~arg_1.d, arg_1.d), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_1.d, -2147483647i, u_input.b)), abs(vec3<i32>(u_input.b, u_input.b, var_0.d)))), _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -5791i, -13470i), vec3<i32>(var_2.d, -2147483647i, -1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-33771i, global0.d, var_0.d), vec3<i32>(1i, global0.d, arg_0.d)), vec3<i32>(-72638i, global0.d, arg_0.d)))), arg_1.d, _wgslsmith_f_op_f32(356f + 651f), _wgslsmith_clamp_i32(countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, -2147483647i, var_0.d), vec3<i32>(14379i, arg_0.d, 27927i))), 2147483647i, -func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e, 1119f, -825f) + vec3<f32>(-1908f, -1343f, arg_1.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e - _wgslsmith_f_op_f32(step(global0.e, global0.e))) - _wgslsmith_f_op_f32(1062f - global0.e)))), 1810f);
    var_0 = _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(4294967295u, global0.a.x, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(56964u, global0.a.x, u_input.a.x), firstLeadingBit(vec3<u32>(62559u, 14393u, global0.a.x))))), 10u)] * global4[_wgslsmith_index_u32(4294967295u, 10u)]);
    var var_1 = Struct_1(reverseBits(global0.a), false, all(vec4<bool>(!all(vec3<bool>(global0.b, global0.c, global0.c)), true && (global0.b | global0.b), true, countOneBits(u_input.b) != u_input.b)), -27576i, -265f);
    global3 = _wgslsmith_mult_vec3_u32(abs(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 14689u, global0.a.x)), firstTrailingBit(select(vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, u_input.a.x, 23466u), vec3<bool>(global0.c, true, true))))), min(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 1u, 1u, 3187u) & vec4<u32>(global3.x, 0u, u_input.a.x, 12428u), vec4<u32>(global3.x, u_input.a.x, 15949u, 1u)), 0u), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 17727u, 23421u), ~select(vec3<u32>(var_1.a.x, global0.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 62252u, global0.a.x), vec3<bool>(true, false, global0.b)))));
    let var_2 = var_1.c;
    global2 = array<vec4<i32>, 1>();
    var var_3 = firstTrailingBit(-var_1.d | var_1.d);
    let x = u_input.a;
    s_output = func_6(func_5(Struct_1(func_4(func_1(Struct_1(u_input.a, false, true, u_input.b, var_0.x), Struct_1(global0.a, global0.b, global0.c, -17062i, var_1.e)), all(vec2<bool>(var_1.c, true))), true, global0.c, u_input.b, global0.e), !func_1(func_1(Struct_1(vec2<u32>(u_input.a.x, global3.x), var_1.b, false, global0.d, global0.e), Struct_1(vec2<u32>(50384u, 10654u), global0.c, var_1.b, -13381i, -2587f)), func_1(Struct_1(vec2<u32>(4294967295u, u_input.a.x), global0.c, false, 0i, 1362f), Struct_1(vec2<u32>(u_input.a.x, global0.a.x), global0.b, var_1.b, 0i, 1000f))).b, select(!(!vec4<bool>(false, global0.b, true, global0.b)), vec4<bool>(true, true, true, true), !vec4<bool>(var_1.c, false, var_1.b, global0.b)), vec4<i32>(global0.d, global0.d, min(1i, -1i | var_1.d), min(~global0.d, ~(-35574i)))), Struct_1(vec2<u32>(abs(global0.a.x), _wgslsmith_sub_u32(func_1(Struct_1(vec2<u32>(10645u, global0.a.x), true, false, -27446i, var_0.x), Struct_1(u_input.a, global0.b, false, -5725i, -695f)).a.x, ~u_input.a.x)), !global0.c, global0.b, -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1480f)));
}

