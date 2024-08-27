struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_5;

var<private> global3: array<vec2<u32>, 19>;

var<private> global4: Struct_5 = Struct_5(Struct_1(9696u, 41701u), vec2<i32>(2315i, -6118i), vec2<bool>(false, true), Struct_4(false), Struct_1(1u, 110562u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    global2 = Struct_5(Struct_1(38734u, ~(~max(44230u, 0u))), firstTrailingBit(~vec2<i32>(2147483647i, -2147483647i)), global4.c, Struct_4(select(0u > (global0.x & global4.a.a), true, true)), Struct_1(_wgslsmith_dot_vec4_u32(u_input.d, ~max(u_input.d, vec4<u32>(0u, 3731u, 4294967295u, 10440u))), ~_wgslsmith_mult_u32(global4.a.a, 6867u)));
    global4 = Struct_5(arg_1.b, vec2<i32>(global4.b.x, 1i), select(select(vec2<bool>(true, true), select(vec2<bool>(arg_0.a, arg_0.a), select(global4.c, vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a)), !global2.c), vec2<bool>(true, true)), global4.c, !select(global2.c, select(vec2<bool>(global4.d.a, false), vec2<bool>(true, false), global4.c), !global2.d.a)), global2.d, global2.e);
    let var_0 = Struct_5(Struct_1(global2.e.b, 1u), vec2<i32>(~_wgslsmith_sub_i32(select(global4.b.x, u_input.b, false), arg_2.x), 1i), vec2<bool>(any(select(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(global2.c.x, global4.d.a, true, true), all(vec3<bool>(true, global4.d.a, true)))), true), Struct_4(all(vec2<bool>(global4.c.x, true))), Struct_1(~(~65279u), ~select(firstTrailingBit(40688u), global0.x, all(vec3<bool>(global4.c.x, true, global2.c.x)))));
    var var_1 = Struct_5(global4.e, abs(global2.b), select(!select(!global2.c, vec2<bool>(arg_0.a, true), global4.d.a), global2.c, true || select(false, var_0.d.a, global4.c.x)), Struct_4(true), Struct_1(~(~4294967295u & u_input.c.x), 8504u));
    let var_2 = Struct_3(~max(u_input.d.zyw, _wgslsmith_sub_vec3_u32(arg_1.a, ~arg_1.a)), global4.a);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_3)))), !(any(select(vec4<bool>(true, true, true, arg_0.a), vec4<bool>(false, false, global2.c.x, global2.d.a), vec4<bool>(false, arg_0.a, global4.d.a, global4.d.a))) || arg_0.a)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec3<f32> {
    global3 = array<vec2<u32>, 19>();
    global4 = Struct_5(Struct_1(u_input.a | 50680u, ~global0.x), global2.b, select(select(vec2<bool>(any(vec4<bool>(global4.d.a, true, global4.d.a, false)), 3260i != global2.b.x), select(vec2<bool>(global2.c.x, global4.d.a), !vec2<bool>(global4.c.x, false), global2.c.x), !(!global2.c)), !global4.c, select(vec2<bool>(global4.b.x > 1i, false), select(global2.c, global4.c, true), true)), Struct_4(false), Struct_1(global4.e.b & _wgslsmith_dot_vec4_u32(u_input.d, reverseBits(vec4<u32>(0u, 1u, 36790u, global2.e.b))), ~1u));
    var var_0 = vec3<bool>((u_input.b >> (~(~53630u) % 32u)) <= _wgslsmith_div_i32(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, -7275i, global2.b.x), vec3<i32>(u_input.b, -58609i, 1i)), ~global2.b.x)), (global4.b.x ^ 1i) >= u_input.b, global2.d.a);
    let var_1 = Struct_5(global4.a, vec2<i32>(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(global2.b.x, 0i)), ~select(vec2<i32>(2147483647i, u_input.b), global2.b, var_0.zy)), -37707i), vec2<bool>(global2.c.x, select(var_0.x, max(global2.e.b, u_input.c.x) < arg_1.x, true)), global2.d, Struct_1(global2.e.a, ~u_input.c.x));
    var var_2 = Struct_1(~global2.a.a, (0u >> (_wgslsmith_mod_u32(abs(global4.e.b), global2.a.a) % 32u)) << (arg_1.x % 32u));
    return arg_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-603f, global1.x)) * global1.x), _wgslsmith_f_op_f32(func_3(global4.d, Struct_3(vec3<u32>(50481u, 11818u, 4294967295u), global4.e), select(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(1i, -8940i, global4.b.x), global4.d.a), _wgslsmith_div_f32(global1.x, global1.x)))), arg_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(global4.c.x), Struct_3(vec3<u32>(81864u, 56941u, arg_1.x), Struct_1(75696u, 0u)), arg_0.wyz, global1.x)), global1.x), _wgslsmith_f_op_f32(global1.x * global1.x))));
    var var_0 = ~4294967295u;
    var var_1 = Struct_5(Struct_1(_wgslsmith_sub_u32(4294967295u, 2011u), global4.e.b), vec2<i32>(u_input.b, firstTrailingBit(-firstTrailingBit(-2147483647i))), !global2.c, Struct_4(!global2.c.x), Struct_1(~global0.x, ~(arg_1.x | 8566u)));
    var var_2 = vec4<u32>(12768u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(var_1.a.b, global4.e.b, 49199u, 4294967295u)), vec4<u32>(10169u, 49410u, global4.a.b, 1u), vec4<u32>(4294967295u, global4.e.a, 1u, 1u)), reverseBits(u_input.d)), _wgslsmith_clamp_u32(12446u, _wgslsmith_mod_u32(~global0.x, 1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(31598u, 1u), ~u_input.d.x)), ~abs(~0u)) ^ vec4<u32>(_wgslsmith_sub_u32(~4294967295u, u_input.d.x), 4294967295u, ~firstLeadingBit(27160u) >> (u_input.d.x % 32u), arg_1.x);
    let var_3 = global4.d;
    return Struct_1(94106u, global0.x);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = select(_wgslsmith_sub_i32(_wgslsmith_div_i32(~60133i, global4.b.x), 2147483647i), u_input.b, _wgslsmith_f_op_f32(-256f + -164f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) - _wgslsmith_f_op_f32(min(global1.x, -1190f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-850f - global1.x), _wgslsmith_f_op_f32(f32(-1f) * -821f))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -293f, 1314f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(-407f))))));
    let var_1 = func_2(reverseBits(abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.b.x, u_input.b, u_input.b, global4.b.x), vec4<i32>(0i, 1i, u_input.b, global2.b.x), vec4<i32>(-32500i, global2.b.x, global4.b.x, 0i)))), vec2<u32>(11279u, _wgslsmith_dot_vec2_u32(vec2<u32>(111640u, global0.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(global4.e.a, 0u), vec2<u32>(0u, u_input.c.x)) % vec2<u32>(32u)), u_input.c)));
    var var_2 = Struct_2(58362i, select(309f >= global1.x, true, true && global4.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -508f, 392f, global1.x), vec4<f32>(global1.x, 262f, global1.x, global1.x)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - -1758f), _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(-global1.x)), !(!vec4<bool>(false, global4.d.a, global2.d.a, global4.d.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, -1320f), vec3<f32>(498f, global1.x, 646f)), vec2<u32>(arg_0.x, ~1u)))));
    var var_3 = var_1;
    return func_2(vec4<i32>(_wgslsmith_sub_i32(~global4.b.x, _wgslsmith_div_i32(45678i, 6711i)), abs(-24530i), -1i, max(var_2.a, select(1i, -2147483647i, var_2.b) >> (_wgslsmith_add_u32(30688u, 0u) % 32u))), ~arg_0.xw);
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: vec4<i32>) -> vec2<i32> {
    var var_0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, ~_wgslsmith_dot_vec2_i32(global2.b, vec2<i32>(2147483647i, global2.b.x))), vec2<i32>(arg_3.x | -46387i, ~_wgslsmith_dot_vec4_i32(arg_3, arg_3)));
    global4 = Struct_5(Struct_1(~(~(~54031u)), ~(52958u ^ arg_2.a.x)), global2.b, !global2.c, Struct_4(true), global4.a);
    var var_1 = select(!select(vec3<bool>(global0.x >= global2.e.a, all(vec3<bool>(false, arg_0, true)), !global2.c.x), !vec3<bool>(global4.c.x, false, false), vec3<bool>(any(global4.c), select(arg_0, arg_0, true), any(vec2<bool>(false, arg_0)))), vec3<bool>(global2.c.x, any(select(vec4<bool>(false, global2.d.a, global2.c.x, arg_0), !vec4<bool>(arg_0, global2.c.x, false, true), vec4<bool>(global2.c.x, global4.c.x, true, false))), global2.c.x), !(select(select(false, true, false), global2.d.a, false) | true));
    global2 = Struct_5(global2.a, vec2<i32>(-(~1i), _wgslsmith_dot_vec4_i32(vec4<i32>(24828i, global2.b.x, 1i, -1i) | ~arg_3, select(_wgslsmith_clamp_vec4_i32(arg_3, vec4<i32>(var_0.x, 2147483647i, 2147483647i, u_input.b), vec4<i32>(0i, global4.b.x, -2147483647i, u_input.b)), countOneBits(arg_3), select(vec4<bool>(true, arg_0, false, global4.d.a), vec4<bool>(global4.d.a, false, false, true), vec4<bool>(global4.d.a, global4.d.a, true, true))))), !global4.c, global4.d, func_2(arg_3, select(vec2<u32>(~98804u, ~global4.e.a), ~vec2<u32>(global0.x, 1u), select(select(global2.c, vec2<bool>(true, var_1.x), arg_0), select(vec2<bool>(true, true), global4.c, arg_0), any(global2.c)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -1479f, global1.x);
    return global2.b;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_2) -> Struct_1 {
    global2 = Struct_5(func_1(~u_input.d), max(~vec2<i32>(-global2.b.x, func_5(global2.d.a, 568f, Struct_3(u_input.d.xxw, global4.a), vec4<i32>(-1i, -2147483647i, global2.b.x, global2.b.x)).x), _wgslsmith_clamp_vec2_i32(global2.b, vec2<i32>(global2.b.x, -1i << (1u % 32u)), arg_0.b)), global4.c, Struct_4(global4.d.a), arg_0.e);
    var var_0 = vec3<i32>(~_wgslsmith_add_i32(u_input.b, -(u_input.b << (global2.a.b % 32u))), 1i, global4.b.x);
    var var_1 = _wgslsmith_f_op_f32(min(arg_1.c.x, 262f));
    let var_2 = vec4<i32>(~(-1i ^ firstLeadingBit(-u_input.b)), -_wgslsmith_clamp_i32(-12250i, global4.b.x, global4.b.x), ~_wgslsmith_sub_i32(u_input.b, ~global2.b.x) >> (firstTrailingBit(1u) % 32u), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(global2.b.x, abs(u_input.b)), 23819i), global2.b.x));
    var_0 = -(~(_wgslsmith_mod_vec3_i32(var_2.ywx, firstTrailingBit(var_2.zxz)) | select(~var_2.zzy, var_2.wyy, global2.d.a)));
    return global4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_5(global2.e, func_5(!select(global4.d.a, true, global2.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f - 1794f)), Struct_3(u_input.d.zwy, func_1(vec4<u32>(4294967295u, 1u, 1u, 1u))), reverseBits(-vec4<i32>(2147483647i, -1i, 20968i, global2.b.x))), vec2<bool>(!all(vec4<bool>(global4.c.x, true, global2.d.a, global4.d.a)), true), global2.d, global2.e), Struct_2(global2.b.x, false, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1700f, 587f, global1.x, global1.x) - vec4<f32>(global1.x, -1546f, global1.x, 719f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(global1.x + global1.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))))) * _wgslsmith_f_op_f32(-201f + 1000f));
    global4 = Struct_5(Struct_1(4294967295u, _wgslsmith_dot_vec3_u32(u_input.d.xyw, ~u_input.d.wyw)), global4.b, vec2<bool>(true, true), Struct_4(global4.d.a), Struct_1((abs(45059u) << (global4.a.b % 32u)) | 1u, _wgslsmith_sub_u32(var_0.b, var_0.a)));
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x * global1.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 417f, 676f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1759f, global1.x, global1.x) - vec3<f32>(global1.x, global1.x, -1008f))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, global1.x, 398f)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), global1.x, global1.x)))))));
    global2 = Struct_5(Struct_1(func_2(~reverseBits(vec4<i32>(-45981i, -2147483647i, 1i, global2.b.x)), u_input.c).b, 8555u), (~(~global2.b) << (global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, var_0.b), 19u)] % vec2<u32>(32u))) << (max(vec2<u32>(1u, var_0.a), ~vec2<u32>(global4.a.a, 17333u)) % vec2<u32>(32u)), !global2.c, global2.d, func_6(Struct_5(Struct_1(~global2.a.b, _wgslsmith_sub_u32(38817u, 37095u)), -global2.b, global4.c, Struct_4(true), func_1(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d))), Struct_2(i32(-1i) * -36982i, true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1085f, -315f, -971f) * vec4<f32>(global1.x, global1.x, 1116f, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 534f, global1.x, -145f) * vec4<f32>(-1524f, global1.x, global1.x, 681f))), _wgslsmith_div_vec3_f32(vec3<f32>(-416f, global1.x, 739f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1021f, -1206f, -1174f))))));
    global4 = Struct_5(var_0, -(~select(vec2<i32>(-2147483647i, u_input.b), select(vec2<i32>(0i, u_input.b), global2.b, vec2<bool>(global4.c.x, global4.d.a)), !global4.c.x)), vec2<bool>(true, false), Struct_4(all(global4.c)), var_0);
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.b)), vec4<i32>(global2.b.x, abs(~u_input.b) & u_input.b, _wgslsmith_div_i32(reverseBits(-global2.b.x), abs(-770i)), 55116i), vec3<i32>(-_wgslsmith_div_i32(u_input.b, ~global2.b.x), -(~1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 21038i, global2.b.x, global4.b.x), max(vec4<i32>(global2.b.x, -2147483647i, global4.b.x, global2.b.x), vec4<i32>(1i, -1i, 2147483647i, 1i))), 8349i)), vec3<i32>(u_input.b, func_5(true, global1.x, Struct_3(vec3<u32>(8252u, u_input.c.x, global4.a.b), global4.a), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global2.b.x, global4.b.x, u_input.b) | vec4<i32>(-1i, -1i, -26052i, 1i), ~vec4<i32>(-2147483647i, 14071i, global4.b.x, -27848i))).x, 2147483647i), -_wgslsmith_clamp_vec2_i32(global2.b, min(global4.b, vec2<i32>(global2.b.x, u_input.b)), vec2<i32>(34731i, u_input.b)) ^ _wgslsmith_mod_vec2_i32(global4.b, ~global2.b));
}

