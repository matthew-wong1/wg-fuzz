struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec4<f32>(305f, 625f, 434f, -555f)), Struct_1(vec4<f32>(-928f, -1322f, 488f, 321f)), Struct_1(vec4<f32>(-143f, -727f, 525f, 190f)), -1000f, vec4<bool>(true, false, false, false)));

var<private> global2: u32;

var<private> global3: f32 = 435f;

var<private> global4: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(411f, _wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(trunc(-685f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1890f * 567f), 1f))), u_input.b.x, select(~(~u_input.b.x), u_input.b.x, global0.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -797f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - var_0.a) - vec2<f32>(-1000f, var_0.a.x)))));
    let var_2 = !select(vec2<bool>(select(true, global0.x && global0.x, -35882i == u_input.a), false), global0.ww, !global0.xw);
    let var_3 = !select(vec2<bool>(false, all(vec2<bool>(var_2.x, true))), global0.xz, all(vec2<bool>(true, var_2.x)));
    global1 = array<Struct_2, 1>();
    return _wgslsmith_f_op_f32(floor(var_1.x));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_5((_wgslsmith_clamp_i32(u_input.a << (0u % 32u), -8771i, ~u_input.a) & 2147483647i) << (firstTrailingBit(42156u) % 32u));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 2483f), 871f);
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1)))))), 4294967295u << (min(abs(abs(81338u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.wxw, vec3<u32>(69159u, 58739u, u_input.b.x)), ~u_input.b.x)) % 32u), abs(41501u));
    var var_3 = Struct_5(select(var_0.a, firstTrailingBit(select(select(var_0.a, 1i, global0.x), u_input.a, true)), true));
    var var_4 = ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.a, 0i, u_input.a)), ~(~vec3<i32>(var_0.a, -52873i, var_3.a))));
    return Struct_3(i32(-1i) * -_wgslsmith_add_i32(-8748i, -var_0.a), u_input.b.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -1576f, 1000f, -356f) * vec4<f32>(-1957f, var_2.a.x, 254f, -1000f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-489f, var_2.a.x, 923f, var_2.a.x), vec4<f32>(var_1.x, -666f, var_1.x, var_1.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -238f, var_2.a.x, -1363f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1503f, 420f, var_1.x)), vec4<bool>(true, global0.x, global0.x, global0.x)))), 2197f, vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_5(u_input.a);
    var var_1 = vec3<f32>(-192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), arg_1.c.c.a.x);
    let var_2 = -304f;
    var var_3 = Struct_5(_wgslsmith_mult_i32(-1635i, arg_1.a));
    var var_4 = max(abs(var_0.a), -1i);
    return func_2().c;
}

fn func_1() -> vec4<f32> {
    global3 = _wgslsmith_f_op_f32(-325f + -1343f);
    let var_0 = func_4(firstTrailingBit(~u_input.b.x), func_2(), false);
    global1 = array<Struct_2, 1>();
    var var_1 = _wgslsmith_mult_u32(u_input.b.x, 1u);
    var var_2 = Struct_1(var_0.b.a);
    return vec4<f32>(var_0.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-154f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x + var_2.a.x) * _wgslsmith_f_op_f32(ceil(var_0.c.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(912f - var_2.a.x) - 915f), _wgslsmith_f_op_f32(min(var_2.a.x, func_4(41463u, Struct_3(u_input.a, 37897u, Struct_2(Struct_1(vec4<f32>(var_2.a.x, var_2.a.x, -282f, var_0.b.a.x)), var_0.a, var_0.a, 244f, var_0.e)), false).c.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1225f)) - var_0.d)), -556f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, -826f, 1700f, 1234f)))) - _wgslsmith_f_op_vec4_f32(func_1())));
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_1()).x))), -114f), 0u, ~u_input.b.x);
    var var_2 = global1[_wgslsmith_index_u32(37001u, 1u)];
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.c.a.zz, var_1.a, !var_2.e.x)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.d, -223f)))), max(0u, _wgslsmith_sub_u32(0u >> (u_input.b.x % 32u), select(423u, var_1.c, true)) ^ var_1.c), max(~1u, 13217u));
    let var_4 = var_2.b;
    let var_5 = var_3.a.x;
    var var_6 = !var_2.e;
    let var_7 = Struct_5(1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -366f));
}

