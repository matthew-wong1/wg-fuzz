struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1926f, -544f, -1956f);

var<private> global1: vec4<i32>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_2;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<u32> {
    global1 = -(vec4<i32>(global4.c & _wgslsmith_add_i32(global1.x, 2147483647i), global1.x | reverseBits(-56767i), 2147483647i, ~global4.c) & -min(_wgslsmith_add_vec4_i32(vec4<i32>(global4.c, global1.x, global4.c, 0i), vec4<i32>(global4.c, -33442i, global3.c, global3.a.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.b.c, -9701i, -57126i, 8549i), vec4<i32>(0i, global1.x, global4.c, -7399i))));
    global2 = _wgslsmith_f_op_vec4_f32(-global4.a);
    let var_0 = global3.a.d;
    var var_1 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, all(vec4<bool>(false, true, false, true)), true), select(vec4<bool>(true, false, all(vec3<bool>(true, false, true)), global3.a.d <= -1478f), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), false));
    var var_2 = global3.b;
    return vec4<u32>(~(~_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.b, global3.b.b, 0u), vec3<u32>(0u, global3.b.b, u_input.a)))), var_2.b, 57235u, 0u);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = max(max(~abs(vec4<i32>(global4.c, u_input.b.x, 2147483647i, 1i)), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-9720i, -1i, 46746i, -2147483647i), ~vec4<i32>(21210i, global1.x, global4.c, -2147483647i)))), vec4<i32>(u_input.c, _wgslsmith_sub_i32(-(i32(-1i) * -2147483647i), ~_wgslsmith_add_i32(u_input.c, 3491i)), global1.x, global3.b.c));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(123f - global3.b.d));
    let var_2 = 51393u;
    var var_3 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_add_u32(global4.b ^ u_input.a, 1u), var_2, _wgslsmith_mult_u32(53787u >> (u_input.a % 32u), ~global4.b), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(58560u, 4294967295u)), vec2<u32>(var_2, 0u)))), select(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_2, global4.b, 48584u, global4.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, global4.b, 28523u, 50725u), vec4<u32>(u_input.d.x, 4294967295u, u_input.a, 40434u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global4.b, 0u, 5515u), vec4<u32>(30420u, global3.b.b, var_2, 30698u)) >> ((func_3() ^ ~vec4<u32>(0u, var_2, var_2, u_input.d.x)) % vec4<u32>(32u)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))));
    var_1 = global0.x;
    return abs(~((select(0u, u_input.a, false) << (u_input.d.x % 32u)) << (4294967295u % 32u)));
}

fn func_1() -> vec2<bool> {
    let var_0 = ~firstLeadingBit(func_2(global4.a));
    var var_1 = Struct_1(global3.a.a, var_0, global4.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global2.x, global3.a.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.a.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.x))))));
    global1 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, ~(-32884i), _wgslsmith_sub_i32(~(-var_1.c), var_1.c), i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(global3.a.c, 5367i))), _wgslsmith_add_vec4_i32((-vec4<i32>(23215i, global1.x, 90573i, global3.c) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-5030i, -29363i, global4.c, global4.c), vec4<i32>(global4.c, 5591i, var_1.c, global1.x))) ^ firstTrailingBit(~vec4<i32>(1i, u_input.b.x, global4.c, global1.x)), ~reverseBits(~vec4<i32>(-1i, var_1.c, global3.b.c, 0i))));
    global4 = global3.b;
    let var_2 = var_1.a.wz;
    return select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(true, false))), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))), select(select(vec2<bool>(true, true), vec2<bool>(true, global0.x > var_1.a.x), vec2<bool>(any(vec3<bool>(false, true, false)), true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), any(vec4<bool>(false, true, true, false)))), !(!all(vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), !func_1()));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(global4.a.x, 1329f), global2.x, global0.x, _wgslsmith_f_op_f32(trunc(184f))))), vec4<f32>(309f, _wgslsmith_f_op_f32(142f + -1142f), -115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), global4.b, -42746i, _wgslsmith_f_op_f32(round(197f)));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-584f, _wgslsmith_f_op_f32(-global4.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.a.d)) - global4.d))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.a.d, 1058f, global3.e.x)))), global4.b, 1i, _wgslsmith_f_op_f32(step(global3.a.a.x, _wgslsmith_f_op_f32(select(-1090f, global2.x, true))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-946f, _wgslsmith_f_op_f32(f32(-1f) * -1512f), 1296f, _wgslsmith_f_op_f32(global2.x * 528f))), global3.b.b, 3869i, -1057f), _wgslsmith_sub_i32(min(firstTrailingBit(1i), -15572i), var_1.c), -2147483647i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-114f, 493f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-482f, global0.x)), _wgslsmith_f_op_f32(round(-1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(reverseBits(firstTrailingBit(global3.c) << (global4.b % 32u)), 1i, global1.x), global0.x, global3.a.a, -68616i, -vec2<i32>(var_2.d & ~2147483647i, ~u_input.b.x));
}

