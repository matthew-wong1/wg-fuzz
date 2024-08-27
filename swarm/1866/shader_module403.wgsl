struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 13> = array<u32, 13>(11977u, 2611u, 35585u, 17166u, 30327u, 1u, 51011u, 91935u, 77434u, 4294967295u, 17732u, 25445u, 4294967295u);

var<private> global2: array<i32, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = vec4<bool>(false, all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), !(!(!(arg_0.b.x < arg_0.b.x))), !all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))));
    var var_1 = func_1(func_1(func_1(arg_2)));
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, global0.a.x)))) * arg_2.a), _wgslsmith_f_op_vec2_f32(-arg_0.c.yz)), countOneBits(arg_2.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.c, vec3<f32>(arg_0.a.x, arg_2.c.x, 1121f))) + vec3<f32>(1863f, arg_2.a.x, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.a.x, 1000f)))), var_1.d);
    let var_2 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(731f, arg_1), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(100f, 1865f), vec2<f32>(arg_2.a.x, arg_0.a.x), var_0.zx)), true))), _wgslsmith_add_vec3_i32(~func_1(Struct_1(vec2<f32>(global0.a.x, 176f), vec3<i32>(var_1.b.x, u_input.a.x, arg_0.b.x), vec3<f32>(-1208f, 189f, var_1.c.x), arg_2.d)).b, countOneBits(-vec3<i32>(arg_0.b.x, u_input.a.x, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.c.x, -1339f, -266f))), _wgslsmith_mod_u32(~global0.d, 30425u)));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_1.c.xy)), ~vec3<i32>(9729i, var_1.b.x, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(~var_2.d, 21u)], ~var_1.b.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * 276f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(max(var_2.c.x, -183f)))), -308f), func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(258f, arg_2.a.x)), arg_0.b, var_2.c, firstTrailingBit(arg_2.d))).c, vec3<bool>(var_1.c.x != func_1(arg_2).a.x, any(select(var_0.xyz, vec3<bool>(false, var_0.x, var_0.x), true)), var_0.x))), func_1(func_1(func_1(arg_0))).d);
    return arg_0.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global2 = array<i32, 21>();
    var var_0 = Struct_1(vec2<f32>(-294f, global0.c.x), reverseBits(vec3<i32>(-1i) * -(global0.b & arg_3.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_3, 1000f, Struct_1(vec2<f32>(288f, global0.c.x), u_input.a.xyy, global0.c, 4294967295u))) * vec3<f32>(global0.c.x, arg_2.a.x, arg_2.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), arg_3.a.x, _wgslsmith_f_op_f32(round(arg_3.a.x)))) * _wgslsmith_f_op_vec3_f32(-global0.c)), global0.d & global0.d);
    var var_1 = u_input.a;
    let var_2 = arg_3.b;
    let var_3 = arg_2;
    return _wgslsmith_f_op_f32(1779f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + global0.c.x)));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = max(_wgslsmith_add_i32(global0.b.x << ((~u_input.c.x & (4294967295u ^ global1[_wgslsmith_index_u32(global0.d, 13u)])) % 32u), global0.b.x), global0.b.x);
    var_0 = u_input.a.x;
    let var_1 = vec3<f32>(global0.c.x, _wgslsmith_f_op_vec3_f32(func_3(func_1(func_1(func_1(Struct_1(global0.c.yx, global0.b, arg_0, 17549u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(step(-1000f, global0.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -817f))), select(all(vec2<bool>(false, false)), true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -1019f))), vec3<i32>(global0.b.x, -global2[_wgslsmith_index_u32(global0.d, 21u)], 1i), _wgslsmith_f_op_vec3_f32(-arg_0), ~u_input.c.x))).x, 1084f);
    let var_2 = !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true));
    let var_3 = ~(~0u);
    return func_1(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-385f, var_1.x)), var_1.xy), vec3<i32>(-1i) * -abs(global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1))), u_input.c.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global2 = array<i32, 21>();
    var var_0 = func_4(arg_2.c);
    var var_1 = arg_2;
    let var_2 = true;
    global0 = arg_2;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + -1023f) * _wgslsmith_div_f32(arg_2.c.x, global0.c.x)))), vec3<i32>(global2[_wgslsmith_index_u32(var_0.d, 21u)], global0.b.x, 1i), vec3<f32>(882f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_0.c.x) + global0.c.x))), arg_2.c.x), 40345u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(vec4<bool>(true, !any(vec3<bool>(false, false, true)), global2[_wgslsmith_index_u32(86894u, 21u)] == -2147483647i, true), vec4<bool>(true, true, true, true), true), 4294967295u, func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), global0.c.x, _wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, false), 20390i, func_1(Struct_1(global0.a, vec3<i32>(global2[_wgslsmith_index_u32(16653u, 21u)], global2[_wgslsmith_index_u32(110976u, 21u)], -16538i), vec3<f32>(-2097f, 1793f, 2051f), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 13u)], 13u)])), Struct_1(vec2<f32>(-795f, global0.c.x), global0.b, global0.c, global1[_wgslsmith_index_u32(u_input.b, 13u)]))))), ~(_wgslsmith_div_u32(1u, global0.d) & (~0u ^ u_input.c.x)));
    let var_1 = var_0.a;
    var var_2 = func_1(var_0);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_5(select(select(vec4<bool>(var_3, var_3, var_3, true), vec4<bool>(false, var_3, false, false), false), select(vec4<bool>(var_3, false, var_3, var_3), vec4<bool>(var_3, var_3, true, false), vec4<bool>(var_3, true, true, var_3)), !vec4<bool>(var_3, false, var_3, var_3)), _wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(var_0.d, 13u)], 4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.c.xz), global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_1.x, var_0.c.x)), ~45483u), ~(~4294967295u)).c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 1048f, 806f) - var_0.c) + vec3<f32>(global0.a.x, var_2.c.x, var_2.c.x)))), global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(504f, 2225f, _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_div_f32(var_1.x, -821f)), vec4<f32>(_wgslsmith_f_op_f32(-461f - -1300f), _wgslsmith_f_op_f32(f32(-1f) * -576f), func_5(vec4<bool>(true, var_3, true, true), var_0.d, var_0, 17483u).c.x, 101f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(143f, -383f, 1000f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_0.c.x, -585f, var_1.x)))))), vec3<i32>(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1160f, var_2.a.x)))).b.x, max(global0.b.x, 8580i), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, var_0.b.x, -2147483647i ^ global0.b.x, var_0.b.x << (0u % 32u)))));
}

