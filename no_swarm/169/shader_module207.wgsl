struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_3 = Struct_3(-7853i, 839f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = global2.b;
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, global0.x), ~firstTrailingBit(abs(global0.x)), _wgslsmith_mult_u32(u_input.c.x, ~50515u)), firstTrailingBit(u_input.c.x));
    var var_2 = select(_wgslsmith_add_vec3_i32(abs((vec3<i32>(-1i, global2.a, global2.a) >> (vec3<u32>(43080u, 25929u, 6878u) % vec3<u32>(32u))) << (u_input.e % vec3<u32>(32u))), u_input.a.wxw), u_input.a.yzz, !select(select(global1.yyy, select(global1.yww, global1.zxw, true), global1.x), select(!vec3<bool>(global1.x, false, global1.x), !global1.wyx, select(global1.xyz, global1.wwx, global1.x)), global2.b == _wgslsmith_f_op_f32(select(global2.b, 1875f, true))));
    global2 = Struct_3(_wgslsmith_clamp_i32(var_2.x, var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, 2147483647i) & (vec3<i32>(32014i, u_input.b, -2147483647i) & vec3<i32>(u_input.b, -38718i, 0i)), -u_input.a.wzx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b * global2.b))) * _wgslsmith_f_op_f32(min(global2.b, -100f)))));
    return var_2.x;
}

fn func_2() -> Struct_3 {
    global2 = Struct_3(_wgslsmith_mult_i32(func_3(), firstTrailingBit(countOneBits(-u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-202f * global2.b), _wgslsmith_f_op_f32(global2.b - global2.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2017f, -772f)))) - _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b))))));
    let var_0 = vec4<i32>(6203i, _wgslsmith_div_i32(~23492i, firstTrailingBit(firstTrailingBit(35185i & global2.a))), -countOneBits(global2.a), u_input.a.x);
    global0 = ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.e.x, 0u) & vec3<u32>(global0.x, 43278u, global0.x), vec3<u32>(55953u, u_input.e.x, u_input.c.x) << (vec3<u32>(global0.x, 37505u, global0.x) % vec3<u32>(32u))), vec3<u32>(u_input.c.x, 4294967295u & u_input.c.x, 1u), select(!global1.zyx, global1.ywz, 0i != global2.a)) >> (_wgslsmith_sub_vec3_u32(max(abs(u_input.e), _wgslsmith_div_vec3_u32(abs(vec3<u32>(116u, global0.x, 0u)), max(vec3<u32>(u_input.c.x, global0.x, u_input.d), u_input.e))), select(_wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, u_input.d, 21687u), vec3<u32>(1u, 44647u, 42417u), vec3<u32>(1u, u_input.c.x, 4294967295u))), u_input.e, any(vec4<bool>(global1.x, false, false, global1.x)))) % vec3<u32>(32u));
    global1 = select(select(vec4<bool>(all(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, true, false, false), true)), true, true, global1.x), !select(vec4<bool>(false, global1.x, global1.x, true), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, true, false, true), vec4<bool>(global1.x, global1.x, true, false)), true), global1.x), select(select(!select(vec4<bool>(true, global1.x, false, true), vec4<bool>(global1.x, true, global1.x, global1.x), global1.x), select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, true, false), global1.x), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), var_0.x > -2147483647i), 386f == global2.b), vec4<bool>(global1.x, false, global1.x, !(true & global1.x)), !vec4<bool>(global1.x, !global1.x, global1.x, false)), select(select(!select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false), vec4<bool>(true, true, true, true), true && (global1.x | global1.x)), vec4<bool>(any(vec2<bool>(true, true)), false, true, !select(false, false, false)), !(!select(vec4<bool>(false, false, global1.x, false), vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, true)))));
    let var_1 = -807f;
    return Struct_3(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -219f));
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    global2 = func_2();
    let var_0 = Struct_3(1i, _wgslsmith_f_op_f32(global2.b * -1287f));
    var var_1 = 1148f;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1668f * global2.b)));
    let var_3 = 1u;
    return Struct_4(_wgslsmith_f_op_f32(trunc(483f)));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> f32 {
    let var_0 = min(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-1i, global2.a)), u_input.a.yx, firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.a.xy, max(vec2<i32>(global2.a, u_input.b), u_input.a.yx)))), select(~u_input.a.yy, firstTrailingBit(u_input.a.xy), global1.x));
    global0 = ~select(~countOneBits(vec3<u32>(7690u, global0.x, u_input.d)) & ~vec3<u32>(u_input.c.x, global0.x, 4294967295u), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(global0.x, global0.x, 4294967295u) >> (vec3<u32>(global0.x, 4294967295u, 5810u) % vec3<u32>(32u))), vec3<u32>(global0.x, global0.x, select(53161u, global0.x, true))), ~(-38143i ^ u_input.a.x) != global2.a);
    let var_1 = _wgslsmith_mod_u32(max(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.d, 67055u, u_input.d) ^ u_input.e) & select(u_input.e, u_input.e, global1.x), select(vec3<u32>(80260u, global0.x, u_input.d), u_input.e, select(global1.ywx, vec3<bool>(false, global1.x, global1.x), global1.x))), firstTrailingBit(global0.x)), global0.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))))), 780f);
    let var_3 = func_2();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 32750u;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.b, global2.b))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1480f - 410f)))), global2.b, _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, -578f) + vec2<f32>(-226f, global2.b))), global2.b))));
    let var_2 = _wgslsmith_dot_vec4_i32(countOneBits(countOneBits(select(u_input.a, u_input.a << (vec4<u32>(0u, 4294967295u, global0.x, u_input.e.x) % vec4<u32>(32u)), global1.x))), vec4<i32>(7394i, ~1i, ~abs(_wgslsmith_add_i32(global2.a, u_input.a.x)), _wgslsmith_mod_i32(-(~u_input.a.x), global2.a)));
    global1 = !select(vec4<bool>(true, global1.x & global1.x, !global1.x, global1.x), !(!select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), false)), all(vec2<bool>(u_input.a.x > global2.a, global1.x || global1.x)));
    global0 = vec3<u32>(abs(~u_input.c.x), 74730u, 4695u) | abs(_wgslsmith_sub_vec3_u32(select(~u_input.e, min(vec3<u32>(u_input.e.x, u_input.e.x, 13598u), u_input.e), vec3<bool>(false, global1.x, global1.x)), ~(~u_input.e)));
    global2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, -542f)) - vec2<f32>(-539f, -109f)) - vec2<f32>(func_2().b, _wgslsmith_f_op_f32(step(var_1.x, 790f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(305f, -623f), var_1.zz, global1.x)), vec2<f32>(-1000f, var_1.x))) + vec2<f32>(func_1(var_1.xx).a, global2.b)))), 1f, func_3(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1))))), ~(~(~(~vec4<u32>(u_input.e.x, 0u, 5072u, 23801u)))));
}

