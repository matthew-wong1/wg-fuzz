struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: bool;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec2<u32> {
    global1 = false | !all(vec3<bool>(true, true, true));
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(~87138u, 8u)]);
    var var_1 = 18422i;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f - _wgslsmith_f_op_f32(-1000f - -2168f))))));
    var var_3 = Struct_3(Struct_2(Struct_1(all(!vec4<bool>(true, false, var_0.a.c, false)), var_0.a.b, _wgslsmith_add_u32(0u, u_input.a.x) == 60818u)), countOneBits(firstTrailingBit(-abs(vec4<i32>(1i, -21966i, var_0.a.b.x, var_0.a.b.x)))), global0[_wgslsmith_index_u32(~u_input.a.x, 8u)], -vec3<i32>(i32(-1i) * -51653i, ~var_0.a.b.x, 1i), var_0.a.b.x);
    return u_input.a.zw;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(~func_3(vec4<u32>(~u_input.a.x, 30605u, ~u_input.a.x, _wgslsmith_clamp_u32(47171u, 5603u, u_input.a.x)), ~4294967295u), 22932i > (_wgslsmith_dot_vec2_i32(vec2<i32>(45219i, -6707i), -vec2<i32>(0i, 22427i)) >> (~(100241u | u_input.a.x) % 32u)));
    let var_1 = ~(-abs(countOneBits(-1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1766f, -123f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(970f, 1623f)))), var_0.b))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2398f), _wgslsmith_div_f32(-1047f, var_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(-2085f)), _wgslsmith_f_op_f32(abs(var_2.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, var_2.x) - var_2)))), vec2<bool>(~reverseBits(1u) < firstTrailingBit(0u), false)));
    let var_4 = Struct_4(u_input.a.xw, true);
    return var_0;
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_1, 8>();
    let var_0 = u_input.a;
    var var_1 = 0u;
    global0 = array<Struct_1, 8>();
    let var_2 = func_2();
    return Struct_5(true, Struct_2(Struct_1(u_input.a.x <= var_0.x, vec3<i32>(countOneBits(-11137i), ~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(47235i, 15396i), vec2<i32>(1i, 1i))), all(vec2<bool>(true, false)))), 9039i, global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 8u)], vec2<f32>(_wgslsmith_f_op_f32(-799f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(641f)) + _wgslsmith_f_op_f32(min(1697f, 1278f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), -525f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(func_1().b, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-34648i, var_0.d.b.x, var_0.c, var_0.b.a.b.x) & vec4<i32>(var_0.b.a.b.x, var_0.c, -2147483647i, 12863i), vec4<i32>(1i, 1i, -2147483647i, -23212i)), vec4<i32>(_wgslsmith_mult_i32(1i, -1i), func_1().d.b.x, var_0.c, ~var_0.b.a.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.a.b.x, abs(33260i), -88979i, -2147483647i), (vec4<i32>(-2147483647i, 43800i, var_0.d.b.x, var_0.c) ^ vec4<i32>(10056i, 1i, -62483i, var_0.d.b.x)) << (~vec4<u32>(5337u, u_input.a.x, 40832u, 77937u) % vec4<u32>(32u)))), Struct_1((any(vec4<bool>(false, var_0.d.c, false, var_0.b.a.c)) & !var_0.a) || true, vec3<i32>(var_0.c, var_0.c, 2147483647i), _wgslsmith_mod_i32(firstLeadingBit(2147483647i), 1i) > var_0.d.b.x), ~(~vec3<i32>(var_0.d.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.b.x, 2147483647i, -1i), vec3<i32>(2147483647i, 1i, 2147483647i)), 1i)), -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.e.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~u_input.a.x < u_input.a.x))));
    var var_3 = var_2;
    let var_4 = ~var_1.b;
    let var_5 = false;
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(52420u);
}

