struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 45752u), vec3<i32>(2147483647i, -69025i, -27160i), vec3<i32>(0i, -45144i, 1i), vec2<bool>(true, false)), Struct_1(vec2<u32>(14394u, 4294967295u), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(-35192i, 10871i, 1i), vec2<bool>(true, true)), Struct_1(vec2<u32>(0u, 29037u), vec3<i32>(45143i, -25849i, -5814i), vec3<i32>(1i, -17136i, -1i), vec2<bool>(true, true)), vec2<f32>(-327f, -547f), vec2<bool>(true, false));

var<private> global1: array<bool, 23> = array<bool, 23>(true, false, true, true, false, false, true, true, false, false, true, false, true, false, true, true, true, true, false, false, true, true, true);

var<private> global2: i32 = 0i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = Struct_2(global0.c, global0.a, Struct_1(~(~(vec2<u32>(u_input.a, global0.a.a.x) << (global0.b.a % vec2<u32>(32u)))), global0.a.b, -(vec3<i32>(global0.c.c.x, global0.c.b.x, arg_0) ^ global0.a.b), vec2<bool>(true, (arg_0 & 34054i) >= global0.b.c.x)), vec2<f32>(1772f, 1297f), select(vec2<bool>(true & (global0.c.c.x <= -9550i), !global1[_wgslsmith_index_u32(max(32866u, 4294967295u), 23u)]), !vec2<bool>(global0.e.x, !global0.e.x), select(select(!vec2<bool>(false, global0.e.x), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), !global0.c.d), global0.c.d, any(global0.e))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1545f, global0.d.x, 1112f, 188f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, -1704f, -420f, global0.d.x) * vec4<f32>(1000f, 261f, -863f, global0.d.x)) - vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)), vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(global0.d.x + global0.d.x), _wgslsmith_f_op_f32(global0.d.x + 2611f), _wgslsmith_f_op_f32(-global0.d.x))), true)) * vec4<f32>(global0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1748f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -942f), -163f));
    var var_1 = abs(~global0.a.a.x);
    var_1 = select(u_input.a, 72235u, all(vec3<bool>(true, select(global1[_wgslsmith_index_u32(1u, 23u)], any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(113611u, 23u)], true)), global0.d.x == -1403f), global0.c.a.x < u_input.a)));
    let var_2 = Struct_5(~u_input.a, _wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2031f)))), Struct_2(global0.a, Struct_1(global0.b.a, -global0.c.c, global0.a.c, global0.b.d), global0.a, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-582f + -384f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(249f)) - _wgslsmith_f_op_f32(-global0.d.x))), !select(vec2<bool>(global0.c.d.x, true), global0.e, true)));
    return -187f;
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global2 = _wgslsmith_clamp_i32(global0.b.b.x << (~1u % 32u), reverseBits(~(~(-8507i) >> (1u % 32u))), min(~global0.a.b.x, countOneBits(~1i)));
    global2 = countOneBits(2147483647i);
    let var_0 = Struct_3(global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(627f, _wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_f_op_f32(func_3(-1i)))), Struct_1(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(global0.c.a.x, 4294967295u), ~vec2<u32>(u_input.a, global0.b.a.x), true), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.a.x, 1u), vec2<u32>(u_input.a, 617u)), abs(global0.b.a))), vec3<i32>(i32(-1i) * -15140i, 2147483647i, ~max(global0.b.b.x, -1i)), global0.a.c | vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.c.c.x, global0.a.b.x), global0.c.b), global0.b.c.x, -global0.c.b.x), select(!(!global0.a.d), global0.a.d, vec2<bool>(false, global0.a.d.x))), global0.b);
    var var_1 = vec3<u32>(~0u, _wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 77971u, 4294967295u), vec3<u32>(u_input.a, global0.b.a.x, 3658u) >> (vec3<u32>(56947u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.c.a.x, 26615u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(38946u, 4294967295u, 55922u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 81727u, u_input.a), vec3<u32>(42279u, u_input.a, u_input.a), vec3<u32>(u_input.a, var_0.d.a.x, global0.c.a.x)), ~vec3<u32>(u_input.a, 14830u, var_0.a.a.x), vec3<u32>(var_0.c.a.x, u_input.a, 52504u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u >> (var_0.a.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 67391u, 69552u, 10981u), vec4<u32>(var_0.d.a.x, var_0.d.a.x, 4294967295u, 4294967295u)), global0.b.a.x), min(vec3<u32>(global0.c.a.x, var_0.d.a.x, var_0.a.a.x), abs(vec3<u32>(0u, u_input.a, var_0.a.a.x)))) << (var_0.c.a.x % 32u));
    var_1 = ~(~(~(vec3<u32>(var_1.x, 62355u, 1u) & vec3<u32>(var_0.d.a.x, 29964u, 40969u)))) >> (min(~(~countOneBits(vec3<u32>(global0.c.a.x, 0u, 10364u))), max(vec3<u32>(var_0.a.a.x, 1u ^ global0.a.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(26065u, 4294967295u, var_0.d.a.x), vec3<u32>(global0.b.a.x, 1u, 0u))), firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 1u))))) % vec3<u32>(32u));
    return select(~max(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_0.c.a.x, global0.c.a.x, global0.c.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 81437u, 25419u, 37659u), vec4<u32>(var_1.x, 1u, var_0.a.a.x, global0.c.a.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(global0.c.a.x, 12618u, var_1.x, var_0.c.a.x), vec4<u32>(35847u, 1u, 1u, u_input.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(~(~u_input.a), var_1.x, 1u, _wgslsmith_mod_u32(global0.c.a.x, 1u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, u_input.a, global0.b.a.x), select(vec4<u32>(1u, 1u, 0u, var_0.a.a.x), vec4<u32>(26236u, 4294967295u, global0.a.a.x, var_0.d.a.x), var_0.c.d.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(var_0.c.d.x, false, var_0.a.d.x, false))), countOneBits(vec4<u32>(u_input.a, 4294967295u, var_0.c.a.x, var_0.d.a.x)) ^ select(vec4<u32>(global0.b.a.x, 93917u, var_0.c.a.x, global0.b.a.x), vec4<u32>(global0.a.a.x, var_0.c.a.x, var_0.a.a.x, 38864u), global1[_wgslsmith_index_u32(0u, 23u)]))), vec4<bool>(var_0.d.d.x, false, global0.e.x, false));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> i32 {
    global2 = arg_0.b.x;
    var var_0 = Struct_3(Struct_1(func_2(global0.d.x).yw, vec3<i32>((arg_0.c.x << (1u % 32u)) & arg_0.b.x, -1i | abs(global0.c.c.x), 1i), -(~arg_0.b | ~arg_0.b), global0.a.d), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1115f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0.d.x))))), global0.d.x, global0.d.x), arg_0, global0.a);
    let var_1 = Struct_5(var_0.d.a.x | max(1u, arg_2.x), _wgslsmith_f_op_f32(-518f + _wgslsmith_f_op_f32(-var_0.b.x)), Struct_2(arg_0, Struct_1(vec2<u32>(~var_0.d.a.x, 103300u), var_0.c.c << ((arg_2.zxw ^ vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), abs(~vec3<i32>(2147483647i, var_0.c.c.x, var_0.a.b.x)), vec2<bool>(var_0.c.a.x >= u_input.a, true)), var_0.c, global0.d, global0.e));
    global1 = array<bool, 23>();
    var var_2 = var_1.c;
    return 1i;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> vec3<u32> {
    global1 = array<bool, 23>();
    var var_0 = -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~(-1i), abs(-1i)), global0.a.c.x, global0.a.c.x, 16344i), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(global0.a.c.x, global0.b.c.x) >> ((52407u | global0.c.a.x) % 32u), max(-13540i, i32(-1i) * -78662i), countOneBits(0i) << (global0.b.a.x % 32u)));
    let var_1 = select(~func_4(Struct_1(vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec3_i32(var_0.zzx, vec3<i32>(global0.a.b.x, 2147483647i, var_0.x)), vec3<i32>(1i, global0.a.c.x, var_0.x), !global0.e), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(49160u, 23u)]), func_2(_wgslsmith_f_op_f32(global0.d.x - global0.d.x))), var_0.x, !(!any(!vec3<bool>(true, global1[_wgslsmith_index_u32(global0.a.a.x, 23u)], false))));
    var var_2 = select(global0.a.c.x, -2147483647i, true);
    let var_3 = Struct_2(global0.b, global0.c, Struct_1(~vec2<u32>(~5246u, u_input.a), -vec3<i32>(max(2147483647i, -66250i), var_0.x, ~var_0.x), var_0.yww, vec2<bool>(!(-896f == arg_1.x), true)), _wgslsmith_f_op_vec2_f32(global0.d - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1549f - global0.d.x), global0.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, arg_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(771f, 567f))))), select(vec2<bool>(true, true), vec2<bool>(global0.a.d.x, !any(global0.a.d)), global0.e));
    return vec3<u32>(~countOneBits(1u) >> (select(~(~u_input.a), u_input.a, false) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.c.a.x, _wgslsmith_dot_vec2_u32(var_3.b.a, vec2<u32>(var_3.a.a.x, var_3.b.a.x)), _wgslsmith_sub_u32(u_input.a, global0.b.a.x), 73754u), vec4<u32>(~(~121616u), 54906u, 13373u, min(69396u, var_3.b.a.x))), _wgslsmith_add_u32(func_2(1000f).x, 14107u));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = func_2(global0.d.x).zx;
    global2 = ~global0.a.b.x;
    let var_1 = _wgslsmith_clamp_vec3_i32(select(~_wgslsmith_mod_vec3_i32(-vec3<i32>(-7629i, global0.a.c.x, 5206i), -vec3<i32>(9579i, global0.b.c.x, 4356i)), vec3<i32>(global0.a.c.x, -82289i, 1i), global0.b.d.x != arg_3.a), firstLeadingBit(firstLeadingBit(min(-vec3<i32>(-1i, global0.a.b.x, global0.c.b.x), -global0.a.c))), vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global0.c.b.x, 2168i) << (arg_0.yz % vec2<u32>(32u))), global0.c.c.zx >> (max(global0.a.a, vec2<u32>(13880u, var_0.x)) % vec2<u32>(32u))), ~9624i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.c.b.x, 50061i), vec2<i32>(global0.a.c.x, -48752i)), vec2<i32>(global0.c.b.x, global0.a.b.x)), min(global0.b.c.x, -36872i))));
    global0 = Struct_2(global0.b, Struct_1(~(~countOneBits(arg_1.xx)), vec3<i32>(-reverseBits(var_1.x), global0.b.c.x, _wgslsmith_div_i32(0i, var_1.x)), abs(global0.c.c), global0.b.d), Struct_1(arg_1.yx, global0.c.b, -select(global0.b.b, var_1, !vec3<bool>(false, true, global0.a.d.x)), select(!global0.b.d, global0.b.d, !(!global0.c.d))), vec2<f32>(_wgslsmith_f_op_f32(arg_2 * 1291f), -1000f), !select(vec2<bool>(false, arg_3.a), vec2<bool>(4294967295u <= global0.b.a.x, false), false));
    var var_2 = Struct_5(~(~abs(~22988u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2036f))))), Struct_2(global0.c, global0.c, Struct_1(~(~arg_1.zy), _wgslsmith_mod_vec3_i32(var_1, vec3<i32>(-2147483647i, global0.c.c.x, 0i)) | vec3<i32>(26191i, var_1.x, var_1.x), vec3<i32>(2147483647i, reverseBits(var_1.x), var_1.x), !(!global0.e)), global0.d, select(vec2<bool>(true, global0.a.d.x || false), global0.e, false)));
    return var_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, func_5(func_1(false, vec2<f32>(450f, global0.d.x)), min(vec3<u32>(firstLeadingBit(global0.b.a.x), global0.a.a.x, ~78079u), vec3<u32>(u_input.a, ~0u, 1u)), global0.d.x, Struct_4(_wgslsmith_f_op_f32(trunc(465f)) == global0.d.x)), func_5(vec3<u32>(~4294967295u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(3853u, u_input.a, 1u), vec3<u32>(u_input.a, 0u, 25622u))) & firstTrailingBit(~vec3<u32>(global0.b.a.x, 63436u, global0.a.a.x)), vec3<u32>(22037u, global0.a.a.x, ~global0.c.a.x), global0.d.x, Struct_4(select(!global0.c.d.x, true, 2147483647i < global0.b.b.x))), _wgslsmith_f_op_vec2_f32(global0.d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(global0.d)))))), global0.b.d);
    var var_0 = Struct_2(global0.c, func_5(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.a, 11511u)), ~vec3<u32>(0u, global0.c.a.x, u_input.a)), ~(~vec3<u32>(u_input.a, 33432u, 63188u))), ~vec3<u32>(1u >> (u_input.a % 32u), select(4294967295u, global0.b.a.x, true), firstLeadingBit(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d.x, global0.d.x)))), Struct_4(any(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global0.a.d.x)))), Struct_1(~(vec2<u32>(97640u, u_input.a) << (global0.b.a % vec2<u32>(32u))), global0.b.c, -global0.b.b, !(!global0.a.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1135f)), global0.d.x) - _wgslsmith_f_op_vec2_f32(min(global0.d, vec2<f32>(global0.d.x, 2753f))))), select(global0.a.d, global0.c.d, select(!(!global1[_wgslsmith_index_u32(global0.b.a.x, 23u)]), global0.e.x, !all(vec2<bool>(false, false)))));
    let var_1 = Struct_5(select(_wgslsmith_clamp_u32(1u, ~7913u, ~_wgslsmith_mult_u32(18633u, 1u)), 1u, func_5(func_1(all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], var_0.b.d.x, true, true)), vec2<f32>(var_0.d.x, 1597f)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.a.x, 53663u, var_0.c.a.x), vec3<u32>(u_input.a, global0.c.a.x, var_0.a.a.x)), -964f, Struct_4(global0.c.d.x)).d.x), 544f, Struct_2(Struct_1(select(~global0.c.a, ~vec2<u32>(54800u, 73268u), vec2<bool>(var_0.c.d.x, var_0.a.d.x)), func_5(reverseBits(vec3<u32>(1u, u_input.a, 1u)), ~vec3<u32>(u_input.a, var_0.c.a.x, global0.b.a.x), _wgslsmith_f_op_f32(-global0.d.x), Struct_4(global0.e.x)).c, ~(vec3<i32>(-1i, global0.a.c.x, -1i) >> (vec3<u32>(var_0.b.a.x, global0.a.a.x, var_0.a.a.x) % vec3<u32>(32u))), func_5(select(vec3<u32>(global0.a.a.x, global0.c.a.x, 11553u), vec3<u32>(71887u, global0.a.a.x, global0.a.a.x), vec3<bool>(global1[_wgslsmith_index_u32(5589u, 23u)], global0.e.x, true)), vec3<u32>(40050u, global0.b.a.x, 15705u), global0.d.x, Struct_4(true)).d), func_5(abs(select(vec3<u32>(1u, global0.b.a.x, 9926u), vec3<u32>(u_input.a, 4294967295u, 1u), var_0.c.d.x)), firstLeadingBit(vec3<u32>(1u, 75468u, global0.b.a.x) & vec3<u32>(1u, var_0.a.a.x, 47286u)), _wgslsmith_f_op_f32(-var_0.d.x), Struct_4(true)), Struct_1(_wgslsmith_clamp_vec2_u32(var_0.a.a, ~vec2<u32>(1u, 0u), vec2<u32>(global0.a.a.x, var_0.a.a.x)), -_wgslsmith_add_vec3_i32(var_0.c.b, global0.a.c), global0.c.b, !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)], var_0.b.d.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(var_0.d)))), global0.c.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-259f * -248f), -344f, _wgslsmith_f_op_f32(-var_1.b)), abs(vec4<u32>(_wgslsmith_sub_u32(var_0.b.a.x << (10595u % 32u), min(var_0.c.a.x, 0u)), ~(~77941u), min(func_5(vec3<u32>(2944u, u_input.a, var_1.c.c.a.x), vec3<u32>(0u, 4294967295u, 1u), var_1.c.d.x, Struct_4(var_0.a.d.x)).a.x, global0.b.a.x & 0u), var_1.c.a.a.x)), countOneBits(_wgslsmith_dot_vec3_i32(var_1.c.c.c & global0.c.c, vec3<i32>(-11226i, var_0.c.b.x, -1i)) >> (~(~58149u) % 32u)), vec2<f32>(-1534f, _wgslsmith_f_op_f32(-924f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-790f + global0.d.x), _wgslsmith_f_op_f32(var_0.d.x - -2234f))))));
}

