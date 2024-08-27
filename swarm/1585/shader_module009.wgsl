struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-48785i, vec3<i32>(i32(-2147483648), -1i, -35147i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(global0.a, global0.b);
    global0 = Struct_1(~(-2147483647i), abs(~global0.b));
    let var_1 = var_0;
    var var_2 = Struct_1(-52194i, ~(var_1.b & (vec3<i32>(u_input.e.x, -68904i, u_input.b.x) | vec3<i32>(-23710i, var_0.a, var_1.a))));
    let var_3 = Struct_1(var_1.b.x, vec3<i32>(var_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_2.a, global0.a), select(var_0.b.zx, vec2<i32>(-18054i, 1i), any(vec2<bool>(false, true)))), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, -36214i, u_input.c), -global0.b)));
    return 54010u ^ u_input.d;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(global0.a >> (~u_input.d % 32u), -((vec3<i32>(global0.b.x, u_input.e.x, -16551i) & _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, 1i), vec3<i32>(u_input.e.x, u_input.a, u_input.b.x))) & (u_input.b >> (~vec3<u32>(1u, u_input.d, 8232u) % vec3<u32>(32u)))));
    global0 = Struct_1(-u_input.a, firstTrailingBit(firstTrailingBit(~global0.b)) >> (vec3<u32>(u_input.d, func_3() >> (u_input.d % 32u), 1u) % vec3<u32>(32u)));
    let var_0 = ~(abs(~abs(u_input.d)) >> (4294967295u % 32u));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(select(0i >= u_input.c, all(vec2<bool>(true, true)), true), false), vec2<bool>(true, true), true));
    global0 = Struct_1(abs(~4526i), global0.b);
    return Struct_1(~24053i, vec3<i32>(36457i, _wgslsmith_dot_vec3_i32(max(u_input.e, select(vec3<i32>(-1i, global0.b.x, 52077i), vec3<i32>(global0.a, 0i, 2147483647i), vec3<bool>(false, false, var_1.x))), -u_input.e), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, 4761i, 0i, 34018i), vec4<i32>(2147483647i, 1i, global0.b.x, u_input.b.x)) & (global0.a | u_input.a), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.c, -30338i, -44165i)) ^ -u_input.c)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    global0 = Struct_1(_wgslsmith_div_i32(arg_0, _wgslsmith_div_i32(-abs(arg_0), abs(-1i))), global0.b);
    global0 = func_2();
    global0 = Struct_1(~0i, ~(-reverseBits(-u_input.e)));
    var var_0 = arg_1;
    var_0 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(547f * -625f)))) - _wgslsmith_f_op_f32(trunc(-1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(countOneBits(global0.a), vec3<i32>(1i, -1i, _wgslsmith_add_i32(35151i, u_input.c << (1u % 32u))) & vec3<i32>(-(global0.a >> (44826u % 32u)), -u_input.b.x, -32578i));
    var var_0 = ~10767i << (u_input.d % 32u);
    var var_1 = 0u != u_input.d;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f * 984f) + _wgslsmith_div_f32(1633f, -274f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-968f)) + 104f))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1230f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0.b.x, true, vec2<bool>(true, false), false)) - _wgslsmith_f_op_f32(f32(-1f) * -1322f)), 552f, all(vec4<bool>(true, false, true, false))))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1434f, _wgslsmith_f_op_f32(exp2(1f)), true))));
    let var_2 = 1739f;
    var var_3 = Struct_2(select(!(global0.b.x <= u_input.e.x), false, all(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, 39834u, -(u_input.e.x << (~u_input.d % 32u)), _wgslsmith_div_u32(~abs(u_input.d), 1u));
}

