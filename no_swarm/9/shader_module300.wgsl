struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(4294967295u, 6319u, 73839u, 26461u), Struct_1(vec4<f32>(919f, 2195f, -606f, -363f), -571f, vec4<f32>(1939f, 876f, -1703f, 1115f)), Struct_3(true, Struct_2(vec3<f32>(180f, 529f, 236f)), vec2<i32>(2147483647i, i32(-2147483648)), 576u), -1i);

var<private> global1: array<vec2<f32>, 24>;

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(67114u, 0u, 0u), vec3<u32>(1u, 4294967295u, 4405u), vec3<u32>(0u, 3181u, 17032u), vec3<u32>(0u, 1176u, 4294967295u), vec3<u32>(18860u, 4294967295u, 1u), vec3<u32>(59942u, 0u, 0u), vec3<u32>(4294967295u, 0u, 5977u), vec3<u32>(15318u, 4294967295u, 1u), vec3<u32>(1u, 53916u, 59590u), vec3<u32>(1u, 47987u, 58259u), vec3<u32>(3792u, 28510u, 36299u), vec3<u32>(45759u, 1u, 37327u));

var<private> global3: array<vec2<u32>, 8>;

var<private> global4: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<u32> {
    let var_0 = 38709i;
    global3 = array<vec2<u32>, 8>();
    let var_1 = Struct_4(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(47241u, global0.a.x, 100974u, global4.x), max(vec4<u32>(0u, 1u, u_input.b.x, 1u), global0.a))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.b.a, vec4<f32>(global0.c.b.a.x, global0.b.b, global0.c.b.a.x, global0.b.b))))), 510f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.a)) + vec4<f32>(global0.b.c.x, -308f, _wgslsmith_f_op_f32(abs(-972f)), global0.b.a.x))), Struct_3(any(vec3<bool>(!global0.c.a, global0.c.a, true)), Struct_2(_wgslsmith_f_op_vec3_f32(-global0.b.c.xwx)), -vec2<i32>(u_input.c.x, min(u_input.c.x, 1i)), u_input.b.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 12401i), vec3<i32>(-9877i, 2147483647i, i32(-1i) * -1429i)), global0.c.c.x));
    global0 = var_1;
    var var_2 = global0.b;
    return global0.a;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = Struct_4(select(global0.a, firstTrailingBit(func_3()), !select(select(vec4<bool>(global0.c.a, true, global0.c.a, false), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), global0.c.a), vec4<bool>(false, arg_2.x, arg_2.x, false), !global0.c.a)), global0.b, Struct_3(!(!select(true, global0.c.a, global0.c.a)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1140f)), _wgslsmith_f_op_f32(global0.c.b.a.x + arg_0.a.x), _wgslsmith_f_op_f32(exp2(arg_0.a.x)))), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c.x, ~(-11699i)), select(vec2<i32>(global0.d, -2147483647i), -u_input.c.xy, arg_2.zy)), 1u), _wgslsmith_mod_i32(-11730i, arg_1));
    var var_1 = global0.c.c.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-488f, arg_0.a.x)) - _wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.a.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.a.x, 1434f, arg_0.a.x) - vec3<f32>(arg_0.a.x, 526f, var_0.c.b.a.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-668f, -613f, global0.b.b), arg_0.a))))));
    global0 = Struct_4(vec4<u32>(1u, ~u_input.b.x, max(8524u, 17463u), 17254u), var_0.b, var_0.c, -(_wgslsmith_sub_i32(global0.c.c.x, -global0.c.c.x) << (_wgslsmith_mult_u32(global0.a.x, global0.c.d) % 32u)));
    let var_3 = vec3<i32>(2147483647i, 1i, _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(~firstTrailingBit(33671i), 0i)));
    return Struct_4(~vec4<u32>(abs(_wgslsmith_mod_u32(15931u, var_0.c.d)), ~_wgslsmith_clamp_u32(var_0.c.d, global4.x, var_0.c.d), global0.c.d, 0u), var_0.b, global0.c, ~48169i);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = func_2(global0.c.b, countOneBits(30342i), select(arg_0, !vec3<bool>(global0.c.a, global0.c.a, true), vec3<bool>(true, all(vec4<bool>(false, arg_0.x, global0.c.a, global0.c.a)), true)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.b.a - global0.b.c.zww) * vec3<f32>(var_0.b.b, 331f, 109f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b.a.x, -1208f, 1067f)))));
    var var_2 = false;
    var_0 = Struct_4(global0.a, var_0.b, global0.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.d, _wgslsmith_mod_i32(21658i, 26942i)) >> (max(~20238u, ~12833u) % 32u), u_input.a));
    let var_3 = !all(arg_0.xz);
    return func_2(global0.c.b, -51404i, arg_0).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(all(select(!vec4<bool>(global0.c.a, true, true, true), !vec4<bool>(global0.c.a, global0.c.a, true, true), vec4<bool>(global0.c.a, global0.c.a, global0.c.a, false))), !any(!vec2<bool>(global0.c.a, true)), false));
    global3 = array<vec2<u32>, 8>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-func_2(global0.c.b, 0i, !(!vec3<bool>(global0.c.a, true, global0.c.a))).c.b.a);
    global4 = _wgslsmith_div_vec4_u32(global0.a, ~countOneBits(vec4<u32>(4294967295u, global0.c.d, 1u, global0.a.x) >> (_wgslsmith_mod_vec4_u32(global0.a, global0.a) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<i32>((i32(-1i) * -16910i) >> (global0.a.x % 32u), 44097i, -u_input.c.x) << (global4.yzx % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(608f, _wgslsmith_f_op_f32(f32(-1f) * -1389f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 615f)))), global0.c.b.a.x));
}

