struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(11582u, 24580u, 1u), vec3<u32>(1u, 18501u, 20693u), vec3<u32>(0u, 12847u, 29096u), vec3<u32>(1u, 33249u, 4294967295u), vec3<u32>(42405u, 12188u, 98917u), vec3<u32>(2519u, 43515u, 1u), vec3<u32>(0u, 16216u, 52812u), vec3<u32>(184u, 0u, 83184u), vec3<u32>(2613u, 45925u, 4294967295u), vec3<u32>(70392u, 3014u, 0u), vec3<u32>(76503u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 29677u), vec3<u32>(1u, 0u, 5153u), vec3<u32>(4294967295u, 10902u, 0u), vec3<u32>(43312u, 1u, 41840u), vec3<u32>(0u, 4294967295u, 12916u), vec3<u32>(75710u, 68509u, 0u), vec3<u32>(83102u, 1u, 0u), vec3<u32>(4294967295u, 4542u, 1u), vec3<u32>(4294967295u, 28159u, 17762u), vec3<u32>(5939u, 1u, 0u), vec3<u32>(2479u, 1u, 4294967295u), vec3<u32>(54831u, 48907u, 0u), vec3<u32>(3281u, 22632u, 8868u), vec3<u32>(4294967295u, 80457u, 5531u), vec3<u32>(34941u, 6818u, 99655u), vec3<u32>(1u, 20022u, 35641u), vec3<u32>(45074u, 2415u, 55858u), vec3<u32>(4294967295u, 44770u, 4294967295u), vec3<u32>(4506u, 63804u, 28592u), vec3<u32>(51791u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 10241u));

var<private> global1: Struct_4 = Struct_4(Struct_3(0i, vec2<u32>(45178u, 4294967295u), vec2<i32>(22280i, i32(-2147483648)), Struct_1(vec3<i32>(19671i, 9467i, 5642i), vec4<bool>(true, true, true, true), -53351i, false), vec3<i32>(1i, i32(-2147483648), -1i)), vec2<u32>(4294967295u, 4294967295u), Struct_2(Struct_1(vec3<i32>(-635i, 1i, -34927i), vec4<bool>(true, true, true, false), -15432i, true)), vec2<f32>(1604f, -180f));

var<private> global2: Struct_3;

var<private> global3: array<vec2<u32>, 19>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    global1 = Struct_4(arg_1, reverseBits(vec2<u32>(arg_1.b.x, _wgslsmith_sub_u32(u_input.b, u_input.b))) ^ global3[_wgslsmith_index_u32(global2.b.x, 19u)], Struct_2(Struct_1(abs(global2.e) << (vec3<u32>(global2.b.x, global2.b.x, global2.b.x) % vec3<u32>(32u)), vec4<bool>(true && arg_1.d.b.x, true, arg_1.d.b.x, true), -2147483647i, global1.c.a.b.x)), global1.d);
    let var_0 = global1.a;
    global2 = global1.a;
    var var_1 = Struct_2(global1.a.d);
    var var_2 = Struct_4(global1.a, countOneBits(abs(reverseBits(global3[_wgslsmith_index_u32(var_0.b.x ^ 0u, 19u)]))), Struct_2(Struct_1(-select(u_input.c, vec3<i32>(arg_0.a.x, var_1.a.a.x, var_0.a), arg_3.a.b.x), !arg_0.b, (i32(-1i) * -6735i) >> (firstTrailingBit(4294967295u) % 32u), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, arg_3.a.d), vec3<bool>(arg_3.a.d, var_1.a.b.x, arg_3.a.d))))), global1.d);
    return select(_wgslsmith_sub_vec3_i32(firstTrailingBit(var_0.d.a), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(45773i, arg_3.a.a.x), var_2.a.a), max(global2.d.a, global2.e))), vec3<i32>(-1i, arg_3.a.c, reverseBits(var_1.a.a.x)), false);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    global1 = Struct_4(global1.a, vec2<u32>(~_wgslsmith_mult_u32(global2.b.x, global2.b.x), ~(~(~1u))), Struct_2(global1.a.d), vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -672f))))));
    global2 = global1.a;
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    var var_0 = Struct_1(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global2.e, vec3<i32>(9927i, 2147483647i, 1i)), global1.c.a.a.x, global1.a.d.a.x), vec3<i32>(_wgslsmith_add_i32(global2.e.x, u_input.d), -75681i, u_input.d))), global1.c.a.b, abs(_wgslsmith_sub_i32(global1.a.c.x, -1i)), false);
    return Struct_1(min(abs(func_3(global1.c.a, global1.a, Struct_2(global2.d), global1.c)), vec3<i32>(firstLeadingBit(var_0.a.x), global1.c.a.a.x | global2.e.x, abs(global1.c.a.a.x))) >> (vec3<u32>(u_input.a.x, abs(~u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 42564u, 20142u), global0[_wgslsmith_index_u32(global1.a.b.x, 32u)]), 1u)) % vec3<u32>(32u)), global1.a.d.b, abs(var_0.c), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_3(arg_0.e.x, arg_0.b, global2.d.a.xy, func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(arg_1.x + -727f)), true), func_3(Struct_1(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, -733f, arg_1.x), vec3<f32>(-473f, -2924f, arg_1.x)), true && global2.d.d).a, select(vec4<bool>(global2.d.d, false, true, arg_0.d.b.x), arg_0.d.b, 983f <= arg_1.x), u_input.c.x, all(global1.c.a.b)), Struct_3(firstTrailingBit(_wgslsmith_clamp_i32(1i, 0i, global2.d.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_0.b.x), firstTrailingBit(vec2<u32>(arg_0.b.x, arg_0.b.x))), vec2<i32>(u_input.d, 2147483647i), global1.a.d, -vec3<i32>(1179i, 1595i, 2147483647i)), global1.c, global1.c));
    var var_1 = -5058i;
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.d.x, -709f, -605f))))), _wgslsmith_f_op_f32(floor(global1.d.x)) > 1382f);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    global3 = array<vec2<u32>, 19>();
    global1 = Struct_4(Struct_3(~countOneBits(-1i), vec2<u32>(4294967295u, global1.b.x), firstLeadingBit(_wgslsmith_clamp_vec2_i32(~u_input.c.zz, vec2<i32>(33167i, global1.c.a.a.x), vec2<i32>(global2.a, global2.c.x))), global1.a.d, global1.c.a.a), global1.a.b, Struct_2(Struct_1(~arg_0.a.a, select(vec4<bool>(false, false, false, global1.a.d.d), !global1.a.d.b, vec4<bool>(global2.d.b.x, true, arg_0.a.d, global1.c.a.b.x)), global2.e.x, any(vec3<bool>(arg_0.a.d, arg_0.a.d, global2.d.d)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.d.x, -787f), _wgslsmith_f_op_vec2_f32(global1.d * vec2<f32>(1000f, -1875f)))))));
    global1 = Struct_4(global1.a, global2.b, arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 630f) + vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global1.d, vec2<f32>(-864f, arg_2.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(global1.d, vec2<f32>(global1.d.x, global1.d.x))), vec2<f32>(arg_1, -1187f))))));
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(arg_2.zzx + _wgslsmith_f_op_vec3_f32(-arg_2.xyx)), !all(vec3<bool>(false, global2.d.b.x, !global1.c.a.d))).b.zz;
    var var_1 = _wgslsmith_sub_i32(global1.c.a.a.x, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -4818i)) << (40645u % 32u);
    return arg_0.a;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = func_5(Struct_2(func_4(Struct_3(abs(-70320i), vec2<u32>(u_input.b, 56642u), global1.c.a.a.yy, func_2(vec3<f32>(global1.d.x, global1.d.x, 499f), global2.d.b.x), -vec3<i32>(global1.a.e.x, -1i, -1i)), _wgslsmith_f_op_vec2_f32(max(global1.d, _wgslsmith_f_op_vec2_f32(global1.d + vec2<f32>(-421f, global1.d.x)))))), global1.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d.x))), global1.d.x, global1.d.x, -773f)));
    global1 = Struct_4(Struct_3(global1.c.a.a.x, _wgslsmith_mult_vec2_u32(abs(global3[_wgslsmith_index_u32(global1.b.x, 19u)] ^ vec2<u32>(global1.a.b.x, u_input.b)), vec2<u32>(_wgslsmith_sub_u32(global1.a.b.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global2.b.x, 5849u, global2.b.x), vec4<u32>(18309u, global1.b.x, 1u, u_input.b)))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(u_input.c.zx, vec2<i32>(arg_0, 41322i)), var_0, countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.e.x, var_0.a.x, arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, global1.c.a.a.x, 0i), vec3<i32>(arg_0, 3216i, global1.c.a.a.x))))), ~vec2<u32>(reverseBits(global2.b.x >> (global1.a.b.x % 32u)), ~(global2.b.x >> (20290u % 32u))), Struct_2(Struct_1(u_input.c, !global1.c.a.b, arg_0, global2.d.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1471f * -1486f), global1.d.x) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(global1.d.x + -642f)), _wgslsmith_f_op_f32(-global1.d.x))));
    let var_1 = Struct_3(-1i, ~select(vec2<u32>(~global1.a.b.x, global1.b.x), global3[_wgslsmith_index_u32(~global2.b.x, 19u)], any(func_5(Struct_2(global2.d), global1.d.x, vec4<f32>(516f, global1.d.x, global1.d.x, -389f)).b)), u_input.c.zx, Struct_1(abs(_wgslsmith_mult_vec3_i32(~var_0.a, _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -1i, global2.a), vec3<i32>(u_input.c.x, global1.a.a, 4658i)))), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.d.x, global1.d.x, global1.d.x), vec3<f32>(global1.d.x, global1.d.x, 832f))), vec3<f32>(-1250f, 648f, global1.d.x))), false).b, arg_0, func_4(global1.a, vec2<f32>(global1.d.x, global1.d.x)).b.x), vec3<i32>(func_5(global1.c, 1386f, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 1051f, -775f, -1211f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 984f, global1.d.x, global1.d.x) + vec4<f32>(931f, -1991f, global1.d.x, -1661f)))).c, reverseBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d, u_input.c.x), var_0.a.x)), _wgslsmith_clamp_i32(57255i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, -2869i), vec2<i32>(global1.a.d.a.x, global1.a.e.x), global2.d.b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.c.a.a.x, arg_0), var_0.a.xx)), -41148i)));
    var var_2 = var_0.a.x >> (1u % 32u);
    global0 = array<vec3<u32>, 32>();
    return vec4<u32>(119463u, ~0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global1.a.b.x, 22226u, global2.b.x), countOneBits(vec4<u32>(4294967295u, 47408u, var_1.b.x, u_input.b))) << (_wgslsmith_div_vec4_u32(max(vec4<u32>(global2.b.x, 56957u, 3250u, var_1.b.x), vec4<u32>(0u, global2.b.x, 30603u, u_input.b)), vec4<u32>(u_input.a.x, global1.b.x, 0u, 0u) << (vec4<u32>(global1.b.x, var_1.b.x, var_1.b.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~firstTrailingBit(~vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, global1.a.b.x))), 27908u >> (~reverseBits(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(38587u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)])) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 817u;
    var var_1 = ~(~(~func_1(global2.c.x)));
    var var_2 = Struct_4(global1.a, ~firstTrailingBit(~global1.a.b >> (select(global1.a.b, global2.b, global2.d.b.zw) % vec2<u32>(32u))), global1.c, global1.d);
    var var_3 = vec3<bool>(func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(438f, global1.d.x, var_2.d.x))), select(-614f == global1.d.x, global2.d.d, true)).a.x != ~(u_input.c.x >> (abs(6355u) % 32u)), select(false, select(global2.d.d, var_2.c.a.b.x || global2.d.b.x, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-394f, global1.d.x, global1.d.x)), true).d), true), var_2.a.d.d & !(!(!global1.a.d.d)));
    global0 = array<vec3<u32>, 32>();
    var var_4 = var_2.c.a.b.x;
    let var_5 = !(!vec3<bool>(true & all(var_3.zx), all(!vec4<bool>(global1.c.a.d, true, false, global2.d.b.x)), !(u_input.d == 13501i)));
    let var_6 = Struct_2(var_2.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.a.c);
}

