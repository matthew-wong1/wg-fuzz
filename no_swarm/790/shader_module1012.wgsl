struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(1u, 27048u), vec2<u32>(13787u, 15407u), vec2<u32>(52130u, 57651u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(56992u, 0u), vec2<u32>(44085u, 0u), vec2<u32>(19550u, 0u), vec2<u32>(1964u, 36876u), vec2<u32>(3010u, 1u), vec2<u32>(0u, 9235u), vec2<u32>(4294967295u, 0u), vec2<u32>(48788u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(30500u, 0u), vec2<u32>(53361u, 11958u), vec2<u32>(13028u, 4294967295u), vec2<u32>(4294967295u, 73922u), vec2<u32>(1u, 11174u), vec2<u32>(1u, 44935u), vec2<u32>(79346u, 7160u), vec2<u32>(1u, 13146u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(53192u, 4294967295u), vec2<u32>(48467u, 2840u), vec2<u32>(32336u, 8800u), vec2<u32>(13665u, 19272u));

var<private> global2: Struct_2 = Struct_2(Struct_1(646f, vec3<f32>(-942f, -1247f, 1682f)), Struct_1(-540f, vec3<f32>(-709f, 1146f, -109f)), Struct_1(2908f, vec3<f32>(2211f, -712f, -2902f)));

var<private> global3: vec2<u32>;

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(arg_0.b.x, -399f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), global2.a.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.a))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1201f - 635f))));
    global0 = select(vec4<u32>(1u, 15625u, ~(~u_input.b), 1u), min(~reverseBits(vec4<u32>(14446u, 4294967295u, 103542u, 17230u)) | select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.x, 35510u, global0.x), vec4<u32>(u_input.b, 84031u, 4294967295u, 54420u)), ~vec4<u32>(global0.x, 1u, 4294967295u, arg_1.x), global4.x), vec4<u32>(9951u ^ ~u_input.b, global0.x, 0u, _wgslsmith_mod_u32(~5196u, ~38661u))), vec4<bool>(true, true, all(select(vec4<bool>(false, global4.x, global4.x, global4.x), !vec4<bool>(false, global4.x, true, global4.x), vec4<bool>(true, false, global4.x, global4.x))), global4.x));
    global1 = array<vec2<u32>, 26>();
    let var_2 = Struct_1(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.b.x, 968f, global4.x)), _wgslsmith_f_op_f32(round(global2.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), 464f));
    return select(countOneBits(select(~min(u_input.b, global0.x), _wgslsmith_add_u32(global3.x, 4294967295u), global4.x)), ~0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + -495f) * 377f))) <= arg_2.b.a);
}

fn func_2() -> Struct_2 {
    global4 = vec3<bool>(select(global4.x, !(64919u < global0.x) || global4.x, all(select(select(vec4<bool>(false, false, global4.x, global4.x), vec4<bool>(global4.x, false, global4.x, true), vec4<bool>(true, true, global4.x, global4.x)), !vec4<bool>(false, global4.x, false, true), !vec4<bool>(false, false, false, global4.x)))), all(!select(vec3<bool>(true, global4.x, true), vec3<bool>(true, global4.x, global4.x), false)), global4.x || true);
    let var_0 = -(_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a, 1i, max(49494i, 2147483647i), ~u_input.a), -(~vec4<i32>(31003i, u_input.c, u_input.c, u_input.a))) | ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a), ~vec4<i32>(u_input.c, u_input.c, u_input.c, -1541i)));
    var var_1 = vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(reverseBits(global0.yz), vec2<u32>(54432u | func_3(global2.c, global0.xww, Struct_2(global2.c, global2.b, Struct_1(global2.c.b.x, global2.a.b)), -19202i), u_input.b)), global3.x);
    var var_2 = global2.c;
    var var_3 = global4.x;
    return Struct_2(global2.b, global2.b, global2.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    global4 = !vec3<bool>(true, false, all(!vec3<bool>(global4.x, global4.x, false)));
    var var_0 = -1i;
    let var_1 = vec4<bool>(-22540i >= (_wgslsmith_sub_i32(i32(-1i) * -30756i, max(u_input.c, u_input.a)) & u_input.a), all(vec3<bool>(all(global4.xy), global4.x, global4.x & global4.x)), all(select(vec3<bool>(global4.x, u_input.a == 0i, 0u < global3.x), vec3<bool>(global4.x || global4.x, true, !global4.x), vec3<bool>(global4.x, true, select(true, false, global4.x)))), !global4.x);
    global1 = array<vec2<u32>, 26>();
    var var_2 = arg_1.x;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = ~global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(global0.xyy, global0.zyy, true), ~global0.xxx, abs(vec3<u32>(1u, u_input.b, arg_1.x))), vec3<u32>(global0.x << (global0.x % 32u), u_input.b << (u_input.b % 32u), ~4294967295u)), 26u)];
    global3 = vec2<u32>(~_wgslsmith_mod_u32(~global3.x, func_3(arg_0.b, global0.wxz, func_4(arg_0, vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.a)), -u_input.c)), reverseBits(~_wgslsmith_add_u32(var_0.x, arg_1.x << (global3.x % 32u))));
    let var_1 = arg_1.x;
    var var_2 = ~select(countOneBits(firstLeadingBit(~vec4<i32>(-27538i, -1i, u_input.c, -2147483647i))), -abs(vec4<i32>(u_input.c, 36959i, -12898i, 2147483647i)), select(!(!vec4<bool>(global4.x, arg_2.x, true, arg_2.x)), !(!vec4<bool>(global4.x, global4.x, global4.x, false)), vec4<bool>(var_1 >= 0u, !arg_2.x, !global4.x, true)));
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * global2.b.a))) + var_3.a.b.x), _wgslsmith_f_op_vec3_f32(arg_0.c.b - vec3<f32>(_wgslsmith_f_op_f32(-global2.a.a), global2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.c.a))))));
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, countOneBits(global3.x)), u_input.b, global0.x, u_input.b) >> ((~vec4<u32>(global0.x, global3.x, global3.x, u_input.b) & (vec4<u32>(4294967295u, u_input.b, u_input.b, 30353u) >> (abs(vec4<u32>(32245u, 13043u, global3.x, 4294967295u)) % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 38419u, 2746u, global0.x), vec4<u32>(1u, 4294967295u, global0.x, 1u))), select(select(~vec4<u32>(global0.x, 8379u, global0.x, global3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 67791u, global0.x, global3.x), vec4<u32>(1u, 1u, 21617u, 21056u)), all(vec4<bool>(true, false, global4.x, false))), _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, 32196u, u_input.b, global3.x), vec4<u32>(u_input.b, 20172u, 57821u, 1u)) << (vec4<u32>(global0.x, 31814u, 40976u, global3.x) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global4.x, false, true, global4.x), vec4<bool>(true, global4.x, global4.x, global4.x), global4.x), !vec4<bool>(global4.x, true, true, true)))));
    var var_0 = vec4<u32>(abs(25805u), 38740u, ~0u, ~1u);
    let var_1 = 1u;
    global0 = ~(~_wgslsmith_div_vec4_u32(abs(~vec4<u32>(1u, var_1, 9286u, 0u)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(global3.x, 8468u, var_1, var_0.x)), ~vec4<u32>(global0.x, global3.x, 11836u, global3.x))));
    let var_2 = ~u_input.a;
    return func_4(Struct_2(Struct_1(467f, vec3<f32>(arg_0.c.a, global2.c.a, _wgslsmith_f_op_f32(floor(1240f)))), global2.c, global2.c), vec4<i32>(u_input.c, -42008i, u_input.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-4508i, u_input.a, -2147483647i, 41786i) << (vec4<u32>(global0.x, global3.x, 0u, u_input.b) % vec4<u32>(32u)), vec4<i32>(var_2, -10800i, -24719i, u_input.a))));
}

fn func_1() -> vec3<f32> {
    global2 = func_6(Struct_2(func_5(func_4(func_2(), reverseBits(vec4<i32>(7168i, 65003i, u_input.a, -1i))), ~(~vec4<u32>(global0.x, 4294967295u, global0.x, 0u)), select(select(global4.yx, vec2<bool>(global4.x, global4.x), false), select(global4.xx, vec2<bool>(true, global4.x), global4.yx), global4.x)), global2.c, global2.a));
    let var_0 = func_6(func_6(func_4(Struct_2(func_6(Struct_2(Struct_1(-881f, global2.b.b), Struct_1(global2.c.a, vec3<f32>(-1856f, 1328f, 345f)), Struct_1(global2.c.b.x, global2.b.b))).c, global2.a, global2.c), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 11931i, 0i, u_input.a), vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i)))));
    var var_1 = Struct_2(global2.c, Struct_1(_wgslsmith_div_f32(1569f, _wgslsmith_f_op_f32(-var_0.b.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2108f, 1f, _wgslsmith_f_op_f32(abs(-240f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, -388f, -911f)))), Struct_1(-480f, global2.a.b));
    global0 = ~vec4<u32>(u_input.b, max(_wgslsmith_dot_vec4_u32(select(vec4<u32>(43337u, global3.x, 4294967295u, global3.x), vec4<u32>(global3.x, global3.x, u_input.b, 35573u), global4.x), vec4<u32>(global3.x, u_input.b, global0.x, 4294967295u)), func_3(global2.a, firstTrailingBit(global0.xwy), Struct_2(Struct_1(-2197f, global2.a.b), var_1.a, Struct_1(-1983f, vec3<f32>(1373f, -695f, 1655f))), -2147483647i | u_input.c)), _wgslsmith_dot_vec2_u32(~(~global1[_wgslsmith_index_u32(global3.x, 26u)]), ~vec2<u32>(28013u, u_input.b)), global3.x);
    let var_2 = func_4(var_0, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, ~u_input.c, _wgslsmith_mult_i32(~u_input.c, -29092i), u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c, abs(u_input.a), 1i), firstLeadingBit(vec4<i32>(u_input.c, u_input.a, 0i, u_input.a))))).c;
    return vec3<f32>(func_5(Struct_2(global2.b, func_2().a, Struct_1(1000f, _wgslsmith_f_op_vec3_f32(-var_2.b))), _wgslsmith_div_vec4_u32(~vec4<u32>(56106u, u_input.b, global3.x, 17624u) ^ (vec4<u32>(1u, global3.x, global0.x, global3.x) | vec4<u32>(50710u, global3.x, 7547u, 40460u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, u_input.b, global3.x, 1u), vec4<u32>(global3.x, global3.x, 1u, 1u)), vec4<u32>(4294967295u, global0.x, global3.x, global0.x) | vec4<u32>(global3.x, 0u, global0.x, 19523u))), select(vec2<bool>(!global4.x, false), vec2<bool>(all(vec3<bool>(false, global4.x, false)), !global4.x), any(vec4<bool>(global4.x, global4.x, true, global4.x)))).a, _wgslsmith_f_op_f32(abs(-398f)), var_1.b.b.x);
}

fn func_7(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_1(1082f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-594f, _wgslsmith_f_op_f32(global2.b.a - -537f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f + global2.b.b.x))), 189f));
    var var_1 = select(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, 49552u, global0.x, 12610u), vec4<u32>(u_input.b, 1u, 1u, 1u) >> (vec4<u32>(global3.x, 7658u, 3379u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global3.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 28317u, global3.x, global3.x))), vec4<u32>(4294967295u << (u_input.b % 32u), ~0u, _wgslsmith_clamp_u32(73107u, global3.x, 60328u), ~u_input.b)), ~(~min(vec4<u32>(65550u, global3.x, u_input.b, global3.x) ^ vec4<u32>(4294967295u, 38587u, global3.x, 16820u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) & vec4<u32>(global3.x, 81525u, global3.x, global3.x))), vec4<bool>(select(true, (u_input.a >> (global0.x % 32u)) > 2147483647i, (global3.x >= 25374u) || all(vec3<bool>(true, true, false))), any(vec4<bool>(global4.x, any(vec4<bool>(true, global4.x, global4.x, global4.x)), true, all(global4.yy))), global4.x, true));
    global0 = ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(33340u, 0u, 4294967295u), global0.xxx), global3.x, var_1.x, 64553u) ^ ~vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(28787u, 11736u), vec2<u32>(u_input.b, 4294967295u)), reverseBits(15959u), global0.x << (u_input.b % 32u)));
    var var_2 = ~13104u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))))) + 446f);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-686f, var_0.b.x, 1276f, var_0.a)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, var_0.a, 910f, 613f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, arg_0.x, global2.c.a, var_3), vec4<f32>(var_3, 351f, var_0.a, var_0.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1385f, -936f, -304f, -742f), vec4<f32>(global2.a.b.x, var_3, var_3, var_0.a)), false)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -704f, global2.c.a, -1000f) + vec4<f32>(197f, -123f, 698f, arg_0.x)))), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.a, var_3, arg_0.x, -289f) - vec4<f32>(-565f, var_0.a, arg_0.x, arg_0.x))))), vec4<f32>(1840f, -1498f, _wgslsmith_f_op_vec3_f32(func_1()).x, global2.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_7(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f)), _wgslsmith_f_op_f32(select(388f, 1009f, any(vec3<bool>(global4.x, false, global4.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())))));
    global0 = select(~vec4<u32>(~1u, ~_wgslsmith_clamp_u32(global3.x, global0.x, u_input.b), u_input.b, 1464u), vec4<u32>(u_input.b, 4294967295u, _wgslsmith_clamp_u32(abs(global3.x) << (~global0.x % 32u), global0.x, ~firstLeadingBit(42970u)), ~_wgslsmith_dot_vec3_u32(global0.zxz, vec3<u32>(u_input.b, 0u, 4294967295u)) >> (67024u % 32u)), !global4.x);
    global3 = global0.yx;
    var var_1 = vec4<i32>(2147483647i, u_input.a, 815i, i32(-1i) * -13723i);
    var var_2 = Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.xwx) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.b.a, -327f, 673f), vec3<f32>(var_0.x, -1833f, -598f)))) - vec3<f32>(_wgslsmith_f_op_f32(-global2.c.b.x), _wgslsmith_f_op_f32(global2.a.b.x * 498f), 1050f))), Struct_1(1200f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1184f, var_0.x, var_0.x) - global2.b.b) - vec3<f32>(global2.b.a, 515f, global2.a.a)) - vec3<f32>(867f, _wgslsmith_f_op_f32(-var_0.x), func_5(Struct_2(global2.b, global2.a, Struct_1(var_0.x, global2.c.b)), vec4<u32>(78788u, 55942u, global0.x, 4294967295u), vec2<bool>(true, false)).a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1956f + -811f)), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x))));
    var_1 = (vec4<i32>(var_1.x, abs(u_input.c), i32(-1i) * -35736i, -var_1.x) | vec4<i32>(~_wgslsmith_mod_i32(u_input.a, 32978i), ~(-1i), ~u_input.a, abs(u_input.c))) | (vec4<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, 26116i, 0i), vec4<i32>(var_1.x, -28257i, u_input.a, -2147483647i))), 0i, ~_wgslsmith_add_i32(u_input.a, 51394i)) ^ ~(vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c) ^ (vec4<i32>(var_1.x, 7913i, 2147483647i, var_1.x) << (vec4<u32>(4294967295u, 0u, 19424u, u_input.b) % vec4<u32>(32u)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f * -1110f)), global2.a.b), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_2.c.b.x)))), global2.c.b.x), vec3<f32>(global2.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) - global2.c.b.x), var_2.a.b.x)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.b.x), _wgslsmith_f_op_f32(trunc(-1527f))))), _wgslsmith_f_op_vec3_f32(-var_2.a.b)));
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 48934u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(53433u, 4294967295u), _wgslsmith_div_u32(global0.x, 4294967295u)), u_input.b & (global0.x | 58621u)), abs(~vec4<u32>(4294967295u, 15977u, 5529u, u_input.b))) >> (_wgslsmith_mod_vec4_u32(abs(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global0.x, 42023u, u_input.b), vec4<u32>(global0.x, 8054u, 4294967295u, global0.x)))), _wgslsmith_mult_vec4_u32(max(max(vec4<u32>(u_input.b, global0.x, global0.x, u_input.b), vec4<u32>(u_input.b, u_input.b, global0.x, 9964u)), select(vec4<u32>(49778u, u_input.b, 3589u, 8953u), vec4<u32>(1u, global0.x, 4294967295u, global0.x), vec4<bool>(true, global4.x, global4.x, global4.x))), abs(vec4<u32>(global0.x, 0u, 7035u, global0.x)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, u_input.c, var_1.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x), vec4<i32>(-2147483647i, 21469i, var_1.x, -47204i)), u_input.c | 42883i, 22268i)), var_1.xyw), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a)), _wgslsmith_f_op_f32(trunc(global2.b.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(var_0.x - var_0.x), !global4.x)), global2.c.b.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zz)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(433f, -651f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1426f, global2.c.b.x) * var_0.zx)))));
}

