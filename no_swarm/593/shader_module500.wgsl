struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28>;

var<private> global1: array<f32, 19>;

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-8387i, 2147483647i), vec2<i32>(-15952i, 20521i), vec2<i32>(32720i, 30171i), vec2<i32>(53702i, i32(-2147483648)), vec2<i32>(-23500i, 974i), vec2<i32>(15578i, 0i), vec2<i32>(2147483647i, -4823i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-60454i, 8089i), vec2<i32>(-883i, 2147483647i), vec2<i32>(1i, 37325i), vec2<i32>(-71088i, 1i), vec2<i32>(-22706i, 30969i), vec2<i32>(2147483647i, -1092i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, -34596i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -12600i), vec2<i32>(0i, 9986i), vec2<i32>(-31417i, -15753i), vec2<i32>(-61606i, i32(-2147483648)), vec2<i32>(-4274i, i32(-2147483648)), vec2<i32>(-42767i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(-18629i, i32(-2147483648)), vec2<i32>(2147483647i, 7869i));

var<private> global4: array<f32, 2> = array<f32, 2>(-887f, 873f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = vec3<bool>(!(!any(vec2<bool>(true, false))) || all(vec4<bool>(true, true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true)))), true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(global0[_wgslsmith_index_u32(58273u, 28u)]), true), select(true, true, false))));
    global3 = array<vec2<i32>, 30>();
    var_0 = !vec3<bool>(var_0.x, false, true);
    global1 = array<f32, 19>();
    global3 = array<vec2<i32>, 30>();
    return vec2<bool>(var_0.x, var_0.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(-1077f, Struct_1(vec2<bool>(true, true), true, (global2.xw & u_input.c.yy) << (u_input.c.ww % vec2<u32>(32u)), global4[_wgslsmith_index_u32(countOneBits(~u_input.a) & (global2.x >> (4294967295u % 32u)), 2u)], -126f));
    let var_1 = var_0.b;
    var var_2 = Struct_2(var_0.a, Struct_1(func_3(-vec4<i32>(u_input.b.x, 26776i, 2147483647i, -81883i) ^ ~vec4<i32>(u_input.b.x, u_input.b.x, -8841i, u_input.b.x), -_wgslsmith_div_vec2_i32(u_input.b.zy, vec2<i32>(41965i, 2147483647i)), _wgslsmith_clamp_vec3_i32(~u_input.b, u_input.b, vec3<i32>(u_input.b.x, -42952i, -1i))), 640f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(global2.x, 2u)], var_0.a, false))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 73441u, 1u), ~vec4<u32>(4294967295u, u_input.c.x, 89890u, var_0.b.c.x)), countOneBits(var_0.b.c.x)), var_0.b.d, var_1.e));
    var var_3 = Struct_2(907f, Struct_1(!vec2<bool>(true, var_1.b), all(select(func_3(vec4<i32>(u_input.b.x, 1i, u_input.b.x, -27134i), global3[_wgslsmith_index_u32(1u, 30u)], vec3<i32>(974i, u_input.b.x, 22706i)), !vec2<bool>(var_0.b.a.x, false), vec2<bool>(true, true))), ~(~vec2<u32>(30828u, 27243u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_1.c.x, 19u)])) * 529f), var_1.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 19u)]), _wgslsmith_div_f32(320f, _wgslsmith_f_op_f32(f32(-1f) * -321f)), var_1.b))));
    var var_4 = Struct_3(Struct_1(!(!var_2.b.a), any(select(select(vec3<bool>(true, var_3.b.a.x, var_1.b), vec3<bool>(var_2.b.a.x, var_2.b.a.x, false), false), vec3<bool>(true, false, var_0.b.a.x), var_3.b.b & true)), vec2<u32>(countOneBits(~0u), var_0.b.c.x), global1[_wgslsmith_index_u32(22782u, 19u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.e)))))), _wgslsmith_f_op_f32(-var_3.b.e), Struct_2(global1[_wgslsmith_index_u32(~4294967295u | ~u_input.a, 19u)], Struct_1(!func_3(vec4<i32>(u_input.b.x, 1662i, 30734i, 37874i), vec2<i32>(-29586i, 20254i), u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 26588i), u_input.b) >= countOneBits(u_input.b.x), ~vec2<u32>(var_0.b.c.x, var_1.c.x) & vec2<u32>(49872u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1387f), _wgslsmith_f_op_f32(-364f + _wgslsmith_f_op_f32(var_3.b.e - -1000f)))));
    return var_4.c.b.a;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.b;
    var_0 = arg_0.b;
    let var_1 = Struct_3(Struct_1(func_3(select(vec4<i32>(2147483647i, 28139i, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, -2147483647i, -15591i, u_input.b.x), vec4<bool>(var_0.a.x, false, false, var_0.b)) >> (~u_input.c % vec4<u32>(32u)), select(vec2<i32>(u_input.b.x, -2147483647i) << (u_input.c.zx % vec2<u32>(32u)), global3[_wgslsmith_index_u32(21267u, 30u)], select(false, var_0.a.x, false)), vec3<i32>(u_input.b.x, ~0i, -18386i)), any(!(!vec3<bool>(true, var_0.a.x, arg_0.b.b))), max(vec2<u32>(_wgslsmith_mod_u32(var_0.c.x, 17456u), 0u), _wgslsmith_mod_vec2_u32(select(vec2<u32>(32259u, global2.x), var_0.c, vec2<bool>(var_0.b, var_0.a.x)), _wgslsmith_mult_vec2_u32(arg_0.b.c, global2.wy))), _wgslsmith_f_op_f32(round(666f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~u_input.a, 2u)]), var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(527f))), arg_0);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.d * 1027f), Struct_1(var_1.a.a, any(select(vec3<bool>(true, var_0.a.x, var_1.a.a.x), !vec3<bool>(var_1.a.a.x, true, var_0.b), false)), vec2<u32>(_wgslsmith_mod_u32(0u, global2.x), ~4294967295u) & max(reverseBits(global2.zy), vec2<u32>(u_input.a, 0u)), 1672f, -1066f));
    global3 = array<vec2<i32>, 30>();
    return Struct_1(!var_1.c.b.a, 280f <= arg_0.b.d, u_input.c.zw, _wgslsmith_div_f32(442f, _wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_div_f32(982f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 2u)] + var_1.a.d))))), -680f);
}

fn func_1() -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(global2.x, 2u)];
    let var_1 = abs(global2.x);
    return func_4(Struct_2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~0u, 2u)]), Struct_1(select(vec2<bool>(false, true), func_2(), vec2<bool>(true, false)), !all(vec2<bool>(false, false)), vec2<u32>(_wgslsmith_add_u32(1u, 34041u), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(72888u, 2u)] * -630f) - _wgslsmith_f_op_f32(f32(-1f) * -1475f)), -2634f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 28>();
    let var_0 = ~(vec4<i32>(0i, -4071i, 25465i, 47907i) << (reverseBits(~vec4<u32>(30825u, u_input.a, u_input.a, 0u)) % vec4<u32>(32u)));
    var var_1 = global3[_wgslsmith_index_u32(0u, 30u)];
    global4 = array<f32, 2>();
    var var_2 = func_1();
    let var_3 = Struct_1(var_2.a, any(!select(select(vec3<bool>(var_2.b, var_2.b, false), vec3<bool>(true, true, var_2.b), true), vec3<bool>(var_2.b, var_2.b, var_2.a.x), select(vec3<bool>(false, true, true), vec3<bool>(var_2.b, true, var_2.b), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)))), func_4(Struct_2(-164f, func_1())).c, _wgslsmith_f_op_f32(ceil(737f)), global4[_wgslsmith_index_u32(abs(4294967295u), 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(var_2.c.x, 2u)], var_3.e)), _wgslsmith_f_op_f32(-var_3.e))), _wgslsmith_f_op_f32(ceil(-1527f)), _wgslsmith_div_f32(-1000f, var_2.e))), vec4<u32>(~1u, var_3.c.x, abs(0u), global2.x << (_wgslsmith_mult_u32(30221u, 1u) % 32u)), var_0.yxz, firstTrailingBit(countOneBits(vec4<i32>(u_input.b.x | 30037i, var_1.x, 32705i, -var_0.x))));
}

