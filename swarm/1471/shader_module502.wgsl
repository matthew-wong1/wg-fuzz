struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(83093u, vec4<i32>(2147483647i, -12136i, 2147483647i, -1i), Struct_1(true, vec3<u32>(4294967295u, 0u, 0u), false));

var<private> global1: bool;

var<private> global2: vec4<f32> = vec4<f32>(422f, -1262f, 1528f, -1244f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_4 {
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.x, -2528f, 205f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 438f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -763f, global2.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, global2.x, -415f, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 515f, global2.x, -649f)))))), (global0.c.a || false) & global0.c.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, global2.x, global2.x, 259f) * vec4<f32>(global2.x, global2.x, global2.x, global2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 214f, global2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, 601f, -297f, -2095f))))))));
    var var_0 = Struct_1(true, global0.c.b, global0.c.a);
    return Struct_4(~global0.a, min(-(global0.b << (vec4<u32>(1u, var_0.b.x, var_0.b.x, 12149u) % vec4<u32>(32u))), -vec4<i32>(-2147483647i, 67569i, global0.b.x, global0.b.x)) | _wgslsmith_sub_vec4_i32(~(global0.b >> (vec4<u32>(0u, 1u, global0.a, 27360u) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -1643i, reverseBits(2147483647i), 0i, -global0.b.x)), Struct_1(global0.c.c, global0.c.b, false));
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(vec3<bool>(any(select(vec4<bool>(true, false, global0.c.c, global0.c.a), vec4<bool>(false, false, global0.c.a, global0.c.a), true)), firstLeadingBit(2147483647i) != _wgslsmith_mod_i32(-2147483647i, global0.b.x), _wgslsmith_f_op_f32(abs(global2.x)) == 1441f), global0.c, global0.c), global2.x, func_2().c, Struct_2(!(!(!vec3<bool>(global0.c.a, global0.c.a, true))), func_2().c, func_2().c));
    global0 = func_2();
    let var_1 = min(global0.b.x, 17627i);
    let var_2 = Struct_4(~_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 20267u) >> (u_input.a % 32u), -(~vec4<i32>(-1i >> (global0.c.b.x % 32u), var_1, 0i, ~17325i)), Struct_1(all(!select(var_0.d.a, var_0.d.a, false)), global0.c.b, all(vec3<bool>(any(vec3<bool>(false, false, var_0.c.c)), var_1 < -2147483647i, global2.x <= global2.x))));
    return false;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f * -614f) + -893f)), 334f, _wgslsmith_div_f32(-566f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(min(1370f, -891f)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-3003f)), global2.x, global2.x));
    global0 = func_2();
    let var_1 = Struct_3(Struct_2(select(vec3<bool>(global0.c.c, func_3(), global0.c.c && true), select(vec3<bool>(false, false, false), !vec3<bool>(true, global0.c.c, true), vec3<bool>(false, global0.c.c, true)), global0.c.c), global0.c, Struct_1(any(vec3<bool>(true, global0.c.c, global0.c.a)), vec3<u32>(global0.a, ~27707u, _wgslsmith_add_u32(global0.a, 4294967295u)), !(global0.a != u_input.a))), -475f, func_2().c, Struct_2(vec3<bool>(global0.c.a, true, !global0.c.c), global0.c, Struct_1(global0.c.a, _wgslsmith_add_vec3_u32(~global0.c.b, global0.c.b), all(!vec2<bool>(global0.c.a, global0.c.a)))));
    global1 = all(var_1.a.a);
    let var_2 = global0.b.x;
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_4(_wgslsmith_add_u32(arg_0.c.b.x, 0u), min(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, 2147483647i, -40571i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, global0.b.x, 3147i, global0.b.x), global0.b)), vec4<i32>(2147483647i, _wgslsmith_sub_i32(0i & global0.b.x, 2147483647i), ~global0.b.x, 2147483647i)), func_2().c);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, abs(2147483647i << (global0.a % 32u))) & _wgslsmith_dot_vec3_i32(var_0.b.yzw, -vec3<i32>(arg_2.x, 9117i, global0.b.x)), func_2().b.x);
    global2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + -781f))) * -1416f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(803f * global2.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x * 1f))), _wgslsmith_f_op_f32(-1139f - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) - -2362f));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -281f, 380f, _wgslsmith_f_op_f32(trunc(global2.x))), vec4<f32>(618f, 636f, global2.x, _wgslsmith_f_op_f32(round(501f))), _wgslsmith_add_u32(_wgslsmith_add_u32(global0.a ^ 556u, ~4294967295u), 11408u) < func_1(_wgslsmith_f_op_f32(-828f * _wgslsmith_f_op_f32(global2.x * global2.x))).b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_1(global2.x), vec2<bool>(!global0.c.c, true), ~(-reverseBits(vec2<i32>(-1i, global0.b.x))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(567f, -1420f, global2.x, -330f), vec4<f32>(global2.x, 472f, global2.x, 1506f))) * vec4<f32>(-116f, _wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(-global2.x), global2.x)))));
    var var_1 = vec3<i32>(2147483647i, global0.b.x, -(~(-14603i)) | global0.b.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global2.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, 320f)))));
    var var_3 = vec3<u32>(45774u, global0.c.b.x, ~44529u);
    var var_4 = Struct_1(global0.c.a, abs(vec3<u32>(firstTrailingBit(firstTrailingBit(u_input.a)), ~1u, reverseBits(u_input.a))), all(vec2<bool>(var_1.x == firstLeadingBit(-2147483647i), any(vec3<bool>(false, false, false)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2.x, -1244f, global2.x)), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec3<bool>(global0.c.c, false, global0.c.c), Struct_1(true, var_4.b, true), Struct_1(global0.c.c, vec3<u32>(4294967295u, global0.a, 0u), global0.c.c)), vec2<bool>(var_4.c, false), global0.b.xz))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 201f, -529f, 402f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(447f, 1836f, global2.x, var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(766f + var_2.x), _wgslsmith_f_op_f32(select(-1013f, var_0.x, false))))), var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x)))), var_4.b | global0.c.b);
}

