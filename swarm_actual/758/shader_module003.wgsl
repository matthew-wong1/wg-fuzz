struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(-238f);

var<private> global2: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(58415u, 1u), vec2<u32>(63460u, 8617u), vec2<u32>(8884u, 4294967295u), vec2<u32>(3580u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(53128u, 1u), vec2<u32>(25760u, 73978u), vec2<u32>(28654u, 4294967295u), vec2<u32>(42286u, 39139u), vec2<u32>(8381u, 32435u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(10634u, 25632u), vec2<u32>(47083u, 29488u), vec2<u32>(4694u, 96933u), vec2<u32>(1u, 0u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global2 = array<vec2<u32>, 16>();
    global1 = Struct_2(_wgslsmith_f_op_f32(-176f - 895f));
    global2 = array<vec2<u32>, 16>();
    global0 = arg_0;
    var var_0 = select(~abs(vec4<u32>(global0.e, 92652u, _wgslsmith_sub_u32(14894u, u_input.a.x), 4294967295u)), ~vec4<u32>(u_input.a.x, 0u & arg_0.e, ~arg_0.e >> (abs(106561u) % 32u), global0.e), !(!global0.c.x));
    return arg_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> bool {
    let var_0 = vec4<i32>(~(~(-(~548i))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstLeadingBit(min(-7030i, 1i)), arg_0.a.x), arg_0.a.x, _wgslsmith_clamp_i32(abs(36792i), 1i, arg_0.a.x << (global0.e % 32u)) & arg_0.a.x), _wgslsmith_div_i32(global0.a.x, -11949i), ~(~(~(-54576i))) << (arg_0.e % 32u));
    let var_1 = vec4<i32>(-25586i, 1i, countOneBits(global0.a.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-12561i, var_0.x), vec2<i32>(-1i) * -arg_0.a.zy)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(-global1.a)))), -765f);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(global1.a * 1380f));
    let var_4 = ~(-vec3<i32>(abs(global0.a.x << (0u % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(3154i, 0i, var_1.x, -2147483647i), var_1), -1i));
    return arg_0.d;
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a))), -301f, global0.d)));
    var var_0 = func_4(Struct_1(func_3(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global0.a.x, 61461i), global0.a), !global0.b, select(global0.b.zy, vec2<bool>(global0.d, true), global0.c), global0.b.x, 1u)), vec4<bool>(all(global0.b.zz), true, !(!global0.d), true), global0.b.zz, !select(any(vec3<bool>(true, global0.d, false)), true, false), ~4294967295u), global0.b.zz, _wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(global0.e, 24748u), vec2<u32>(u_input.a.x, global0.e)), vec2<u32>(u_input.a.x, 4294967295u), true), reverseBits(_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(76700u, 16u)], vec2<u32>(3245u, 17534u), vec2<u32>(4294967295u, u_input.a.x)))) <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(67625u, 1u), firstTrailingBit(global2[_wgslsmith_index_u32(global0.e, 16u)])));
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~(_wgslsmith_mod_vec2_i32(global0.a.xx, vec2<i32>(global0.a.x, -10590i)) >> (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), abs(vec2<i32>(1i, ~global0.a.x))), abs(max(vec2<i32>(-18169i, -2147483647i) | vec2<i32>(global0.a.x, 2147483647i), _wgslsmith_clamp_vec2_i32(global0.a.xx, vec2<i32>(13139i, -47764i), select(global0.a.zy, global0.a.yy, false)))));
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(global0.e | global0.e), ~41905u), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0.e) >> (u_input.a % vec2<u32>(32u)), reverseBits(vec2<u32>(1u, 24730u))))) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29683u, 0u, global0.e, u_input.a.x), vec4<u32>(u_input.a.x, global0.e, global0.e, u_input.a.x)) >> (max(u_input.a.x, u_input.a.x) % 32u), ~u_input.a.x), vec2<u32>(~(~u_input.a.x), ~49609u));
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-767f, global1.a) + global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a)) + -1401f), global0.c.x)) * _wgslsmith_f_op_f32(max(832f, global1.a))));
    return Struct_1(~global0.a, !select(select(global0.b, global0.b, 968f == global1.a), !select(vec4<bool>(false, false, true, false), global0.b, false), !select(global0.b, vec4<bool>(false, false, global0.b.x, false), global0.b)), vec2<bool>(!func_4(Struct_1(global0.a, global0.b, vec2<bool>(global0.d, false), false, 15044u), select(global0.b.wx, global0.b.zw, global0.d), global0.d), all(vec3<bool>(true, true, global0.c.x)) && all(!vec3<bool>(false, global0.c.x, global0.d))), all(select(vec3<bool>(!global0.c.x, all(global0.b.zzz), !global0.c.x), !global0.b.xwy, global0.c.x)), 1u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~global0.a.yz;
    var_0 = -firstTrailingBit(-vec2<i32>(func_2().a.x, -54581i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), arg_1.a, global1.a, _wgslsmith_f_op_f32(select(1000f, 112f, false))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, arg_1.a, 179f, arg_1.a), vec4<f32>(arg_1.a, global1.a, arg_1.a, -2228f), vec4<bool>(true, arg_0.c.x, false, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a, 811f, arg_1.a, global1.a), vec4<f32>(global1.a, arg_1.a, global1.a, arg_1.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1677f, global1.a, arg_1.a, 159f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 785f, arg_1.a, 1000f)))), vec4<bool>(false, _wgslsmith_f_op_f32(floor(-750f)) != _wgslsmith_f_op_f32(global1.a + 413f), true, global1.a != _wgslsmith_f_op_f32(-arg_1.a)))));
    var var_2 = select(vec4<i32>(-_wgslsmith_div_i32(4525i, ~arg_0.a.x), 0i, arg_0.a.x, max(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a.x, -1i, 1i, var_0.x), vec4<i32>(global0.a.x, arg_0.a.x, global0.a.x, global0.a.x)), arg_0.a.x)), _wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(var_0.x, 50028i, var_0.x, arg_0.a.x)) & (-vec4<i32>(arg_0.a.x, arg_0.a.x, 32898i, 57010i) << (~vec4<u32>(30707u, arg_0.e, u_input.a.x, 39406u) % vec4<u32>(32u))), vec4<i32>(global0.a.x | 1i, var_0.x >> (arg_0.e % 32u), _wgslsmith_mod_i32(global0.a.x, -2147483647i), countOneBits(-1i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global0.a.x, -26342i, -38582i, -21580i), vec4<i32>(1i, 363i, global0.a.x, arg_0.a.x) ^ vec4<i32>(60301i, 1i, 41016i, global0.a.x))), global0.b);
    return Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0.a.x, min(18450i, var_0.x), var_2.x & -2147483647i), _wgslsmith_add_vec3_i32(arg_0.a, min(arg_0.a, _wgslsmith_add_vec3_i32(global0.a, global0.a)))), select(arg_0.b, global0.b, all(!global0.b.zzw)), !(!(!arg_0.b.zx)), global0.d, u_input.a.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    global0 = Struct_1(global0.a << (vec3<u32>(~66457u, _wgslsmith_div_u32(global0.e, _wgslsmith_div_u32(global0.e, 71840u)), ~12828u) % vec3<u32>(32u)), vec4<bool>(false, !arg_0.b.x, all(func_5(Struct_1(global0.a, vec4<bool>(arg_0.d, false, false, arg_0.d), vec2<bool>(global0.c.x, false), true, 4294967295u), Struct_2(-1000f)).b), global0.d), vec2<bool>(all(!func_5(Struct_1(global0.a, arg_0.b, arg_0.c, arg_0.c.x, 26695u), arg_1).c), arg_0.d), false, _wgslsmith_add_u32(~(~12985u), global0.e));
    var var_1 = func_2();
    var var_2 = ~_wgslsmith_clamp_i32(select(~global0.a.x, var_1.a.x, func_4(Struct_1(global0.a, var_1.b, arg_0.b.wz, arg_0.b.x, 6052u), vec2<bool>(true, true), func_5(arg_0, arg_1).c.x)), 1i | (var_1.a.x & global0.a.x), reverseBits(select(~global0.a.x, -1i, true)));
    var_1 = Struct_1(~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_1.a.x, global0.a.x), _wgslsmith_dot_vec3_i32(global0.a, arg_0.a), ~2147483647i), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 77040i, 0i), vec3<i32>(-59630i, arg_0.a.x, 23448i)), vec3<i32>(2147483647i, -40122i, arg_0.a.x), func_3(Struct_1(vec3<i32>(1i, 21822i, global0.a.x), arg_0.b, vec2<bool>(true, var_1.d), false, var_1.e)))), func_2().b, var_1.c, !(!(_wgslsmith_f_op_f32(-var_0.a) <= _wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 88444u, 4294967295u), ~(~(~var_1.e))));
    return Struct_1(-firstTrailingBit(_wgslsmith_mod_vec3_i32(min(vec3<i32>(-1i, 1i, -38331i), vec3<i32>(-30289i, -6895i, arg_0.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a.x, 2147483647i, 31906i), arg_0.a, vec3<i32>(40106i, arg_0.a.x, 11688i)))), vec4<bool>(all(global0.b.wwz), var_1.b.x, true, all(func_2().b.wz)), vec2<bool>(_wgslsmith_sub_i32(min(arg_0.a.x, arg_0.a.x), -1i) == ~(-40135i), true), !global0.b.x, var_1.e);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    var var_0 = global0.a;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(arg_2)));
    global0 = func_6(func_5(func_2(), var_1), Struct_2(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) - -1000f), !func_5(Struct_1(global0.a, global0.b, global0.c, true, u_input.a.x), var_1).d))));
    let var_2 = reverseBits(-2165i);
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(159f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1118f, -224f)))) <= arg_2, global0.c.x, (~_wgslsmith_mod_u32(1u, u_input.a.x) & ~_wgslsmith_add_u32(global0.e, global0.e)) != global0.e);
    return ~19416u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>(1u, global0.e, func_1(global0.c, global0.a.x, -1253f, global0.b), ~33927u), vec4<u32>(17199u, func_1(!global0.b.xy, -63109i, _wgslsmith_f_op_f32(round(global1.a)), func_5(Struct_1(vec3<i32>(global0.a.x, -20067i, 0i), global0.b, vec2<bool>(false, true), global0.c.x, u_input.a.x), Struct_2(global1.a)).b), ~(global0.e << (u_input.a.x % 32u)), global0.e)) & _wgslsmith_mod_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 6788u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, global0.e, 98831u)) << (~vec4<u32>(u_input.a.x, 4294967295u, 69731u, 5210u) % vec4<u32>(32u))), vec4<u32>(global0.e, 42025u, ~global0.e, 27851u ^ global0.e) & min(vec4<u32>(u_input.a.x, 14715u, 1u, 0u), reverseBits(vec4<u32>(31079u, 1u, 4006u, global0.e))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(min(375f, -1096f)))));
    var var_3 = global1.a < -583f;
    let var_4 = firstTrailingBit(firstTrailingBit(abs(vec3<u32>(global0.e, 0u, 0u) >> (vec3<u32>(4294967295u, 29619u, 0u) % vec3<u32>(32u))))) << ((var_1.zwz >> (max(vec3<u32>(~0u, global0.e, 0u), countOneBits(max(var_1.wzw, var_1.yzz))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)), -1591f) - vec2<f32>(global1.a, 1220f))), 1478f, var_2.x, vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~69432u, 4294967295u), vec2<u32>(64849u, ~var_1.x)), countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.e, 0u, 4294967295u, 55434u), vec4<u32>(15278u, 13134u, 0u, var_4.x)), ~vec4<u32>(global0.e, 13551u, 32394u, u_input.a.x)))));
}

