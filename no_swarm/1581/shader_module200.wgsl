struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<u32>, 32>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(32742u), Struct_1(0u), Struct_1(29975u), Struct_1(0u), Struct_1(1u), Struct_1(10065u), Struct_1(4294967295u), Struct_1(44798u), Struct_1(1u), Struct_1(4294967295u), Struct_1(25184u), Struct_1(14137u), Struct_1(1u), Struct_1(1u), Struct_1(0u), Struct_1(21820u));

var<private> global3: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(23714u), vec4<f32>(618f, -739f, -1412f, -1320f), Struct_1(0u), vec4<u32>(0u, 33999u, 38998u, 1u), vec2<i32>(-20935i, -56177i)), Struct_2(Struct_1(0u), vec4<f32>(-592f, -358f, 103f, 373f), Struct_1(1u), vec4<u32>(0u, 5272u, 1u, 74283u), vec2<i32>(-7468i, -7992i)), vec2<bool>(false, false), vec4<bool>(false, false, false, true)), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(1u), vec4<f32>(-356f, -765f, 1816f, 1356f), Struct_1(0u), vec4<u32>(1u, 0u, 4294967295u, 21512u), vec2<i32>(16389i, 23834i)), Struct_2(Struct_1(6752u), vec4<f32>(-884f, -170f, 259f, -1143f), Struct_1(1u), vec4<u32>(0u, 12784u, 3207u, 59844u), vec2<i32>(-9377i, 7054i)), vec2<bool>(true, false), vec4<bool>(false, false, true, false)), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(0u), vec4<f32>(2105f, 657f, -2016f, -260f), Struct_1(4294967295u), vec4<u32>(0u, 4294967295u, 18250u, 927u), vec2<i32>(8113i, 2147483647i)), Struct_2(Struct_1(0u), vec4<f32>(454f, -1000f, -380f, 559f), Struct_1(1u), vec4<u32>(4294967295u, 193u, 4294967295u, 1u), vec2<i32>(2147483647i, -11172i)), vec2<bool>(false, false), vec4<bool>(true, false, false, true)), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(1u), vec4<f32>(-137f, -111f, 754f, -1000f), Struct_1(1u), vec4<u32>(4294967295u, 1u, 4294967295u, 1321u), vec2<i32>(-5255i, 2107i)), Struct_2(Struct_1(4294967295u), vec4<f32>(1282f, 391f, 204f, 639f), Struct_1(57718u), vec4<u32>(0u, 13304u, 1u, 29270u), vec2<i32>(41595i, -1i)), vec2<bool>(false, false), vec4<bool>(true, true, true, false)));

var<private> global4: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(-417f)));
    global2 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_div_f32(-960f, _wgslsmith_f_op_f32(round(1261f)));
    let var_2 = global4.a.x;
    global3 = array<Struct_3, 4>();
    return Struct_1(abs(global0.x));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: u32) -> bool {
    let var_0 = global4.b.e.x >> (max(func_1().a, 1u) % 32u);
    var var_1 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(max(global0.x, u_input.a), ~0u), abs(global4.c.d.x)));
    global3 = array<Struct_3, 4>();
    global4 = Struct_3(arg_0, Struct_2(global4.c.c, _wgslsmith_f_op_vec4_f32(trunc(global4.b.b)), Struct_1(var_1.a), global4.b.d, u_input.b.zz), Struct_2(Struct_1(arg_2), _wgslsmith_f_op_vec4_f32(min(global4.b.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(858f, global4.b.b.x, global4.b.b.x, global4.c.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.b.x, 565f, global4.c.b.x, 196f))))), Struct_1(abs(~47849u)), vec4<u32>(_wgslsmith_sub_u32(global0.x, max(1u, arg_2)), ~arg_2, 16794u, 1u), _wgslsmith_clamp_vec2_i32(global4.c.e, -u_input.b.zy, vec2<i32>(~global4.c.e.x, _wgslsmith_mult_i32(888i, global4.b.e.x)))), vec2<bool>(global4.a.x || all(vec2<bool>(global4.a.x, false)), arg_0.x), select(vec4<bool>(true, true, arg_1, global4.d.x), select(vec4<bool>(global4.e.x, global4.a.x, !global4.d.x, arg_0.x), global4.e, _wgslsmith_f_op_f32(global4.c.b.x + global4.c.b.x) != _wgslsmith_f_op_f32(max(global4.c.b.x, -1000f))), vec4<bool>(any(vec3<bool>(false, global4.d.x, arg_1)), global4.d.x & true, arg_1, all(vec3<bool>(arg_1, true, global4.a.x)))));
    var var_2 = vec4<u32>((arg_2 << (4294967295u % 32u)) >> (0u % 32u), global4.c.a.a << (var_1.a % 32u), ~u_input.a, max(arg_2, _wgslsmith_dot_vec3_u32(~global4.b.d.xzw ^ vec3<u32>(global4.c.a.a, 0u, global0.x), select(vec3<u32>(global4.b.a.a, 4294967295u, 12509u), firstLeadingBit(vec3<u32>(4294967295u, 0u, 0u)), -5371i >= u_input.c))));
    return arg_0.x;
}

fn func_2(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = vec2<bool>(!global4.d.x, func_3(global4.e.xx, true, ~_wgslsmith_sub_u32(~u_input.a, 0u)));
    global1 = array<vec4<u32>, 32>();
    global3 = array<Struct_3, 4>();
    global3 = array<Struct_3, 4>();
    var var_1 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global4.c.e.x, arg_0.e.x, 45026i), vec4<i32>(u_input.c, 9416i, 2147483647i, -44738i) & vec4<i32>(arg_0.e.x, 2148i, 2147483647i, -13344i)), firstTrailingBit(vec4<i32>(-22596i, -2147483647i, 39598i, 30429i)))) ^ vec4<i32>(~(~(-1i)) >> (firstLeadingBit(global4.b.c.a) % 32u), ~(-264i), arg_0.e.x, -39403i);
    return StorageBuffer(var_1.xxy, 4294967295u, ~firstLeadingBit(global4.c.d.ywz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-14778i, ~global4.c.e.x);
    var_0 = ~(~_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(global4.b.e.x, -1i), _wgslsmith_add_i32(-1i, u_input.c)), u_input.d));
    var_0 = countOneBits(_wgslsmith_mod_i32(-1i, u_input.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global4.b.b.xzx * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 1000f, global4.b.b.x), _wgslsmith_f_op_vec3_f32(max(global4.b.b.xyy, vec3<f32>(1000f, 1152f, 504f)))))))) + _wgslsmith_f_op_vec3_f32(-global4.c.b.yyw));
    let var_2 = func_1();
    global3 = array<Struct_3, 4>();
    var var_3 = true;
    let x = u_input.a;
    s_output = func_2(Struct_2(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-503f, var_1.x, 914f, -1000f)))), Struct_1(~var_2.a), ~reverseBits(~global4.c.d), _wgslsmith_mod_vec2_i32(-global4.c.e, max(global4.b.e, global4.c.e)) << (firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(46098u, 4294967295u), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))));
}

