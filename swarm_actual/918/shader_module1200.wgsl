struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
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

var<private> global0: array<f32, 26>;

var<private> global1: bool;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> f32 {
    let var_0 = true;
    var var_1 = Struct_2(false, arg_0, abs(u_input.b));
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(-72102i ^ -_wgslsmith_div_i32(u_input.e.x, 2147483647i), u_input.d.x), vec2<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_mult_i32(~u_input.a.x, -10188i)));
    let var_4 = !vec3<bool>(true, arg_2.a.a, arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), _wgslsmith_f_op_f32(arg_3 + 1768f))))), _wgslsmith_f_op_f32(step(-1102f, _wgslsmith_f_op_f32(min(727f, _wgslsmith_f_op_f32(1707f + -1000f))))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.a - 623f))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(204f + -1053f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 26u)] * 868f))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b.x & 30352u, 26u)]))))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(func_3(firstTrailingBit(u_input.b.xww), true, Struct_3(Struct_2(arg_1, vec3<u32>(u_input.b.x, 50065u, u_input.b.x), u_input.b), vec3<f32>(var_0.x, 297f, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 25819u)), -1575f)) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -1000f))), select(~u_input.b.xwy, u_input.b.xyx, select(arg_0.yyw, arg_0.xxz, arg_0.x)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, 38449u, u_input.b.x), u_input.b, arg_0) << (~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(abs(u_input.b), ~vec4<u32>(u_input.b.x, 16576u, u_input.b.x, 43515u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -369f), var_0.x, -1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(197f, 1285f, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(40870u, 26u)]) * vec3<f32>(var_0.x, -1593f, var_0.x)))))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b.x, u_input.b.x, 0u), true, Struct_3(Struct_2(true, u_input.b.wyx, u_input.b), vec3<f32>(var_0.x, var_0.x, 338f), Struct_1(761f, 4294967295u)), _wgslsmith_f_op_f32(step(1000f, var_0.x)))))), 1u));
    var var_2 = !(!arg_0.xyx);
    let var_3 = !any(!select(vec2<bool>(arg_0.x, var_2.x), vec2<bool>(arg_0.x, arg_1), arg_0.x)) | (~(u_input.b.x >> (var_1.c.b % 32u)) >= _wgslsmith_mult_u32(var_1.a.c.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, 38508u, var_1.a.b.x, var_1.c.b)), countOneBits(vec4<u32>(var_1.c.b, var_1.a.b.x, u_input.b.x, var_1.a.c.x)))));
    let var_4 = var_1;
    return -(~u_input.a);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = any(vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]), 114f)) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 26u)])))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, false)))), all(vec4<bool>(u_input.c.x <= 742i, false, 4294967295u >= arg_0.b, true))));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-87340i, _wgslsmith_mod_i32(-18726i, -u_input.a.x), _wgslsmith_dot_vec2_i32(func_2(vec4<bool>(false, false, false, true), false), u_input.c), u_input.c.x), ~select(select(vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, -12245i), vec4<i32>(1i, u_input.e.x, 2147483647i, 2147483647i), vec4<bool>(false, true, false, true)), -vec4<i32>(u_input.a.x, u_input.d.x, -1i, 2147483647i), true)) >> (_wgslsmith_sub_u32(u_input.b.x, abs(0u)) % 32u);
    global2 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(13579u, 11996u, arg_0.b, 54849u) >> (vec4<u32>(4294967295u, u_input.b.x, arg_0.b, arg_0.b) % vec4<u32>(32u)))), 26u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(firstLeadingBit(arg_0.b), u_input.b.x), 26u)], _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0.b, 26u)]))), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], arg_0.a));
    let var_3 = abs(countOneBits(vec2<i32>(_wgslsmith_div_i32(-u_input.d.x, reverseBits(1i)), 28038i)));
    return Struct_3(Struct_2(true, u_input.b.wwz, firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(45232u, arg_0.b, arg_0.b, arg_0.b), select(vec4<u32>(u_input.b.x, 59261u, arg_0.b, 4294967295u), u_input.b, vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.xxw))) - var_2.wyy), arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    let var_0 = select(vec4<bool>(!(!arg_2.a), !(!(arg_0.x <= -1155f)), !((arg_2.a && arg_2.a) | arg_2.a), true), vec4<bool>(any(select(vec4<bool>(false, true, true, arg_1.a.a), !vec4<bool>(true, arg_1.a.a, arg_2.a, true), !vec4<bool>(arg_1.a.a, arg_1.a.a, arg_2.a, true))), false, true, true), arg_2.a);
    var var_1 = arg_1.c;
    global0 = array<f32, 26>();
    let var_2 = countOneBits(~(~(-vec4<i32>(-12250i, 0i, 0i, arg_3.x)))) ^ reverseBits(vec4<i32>(u_input.a.x, max(u_input.d.x, u_input.e.x), 10995i, _wgslsmith_sub_i32(u_input.c.x, arg_3.x)));
    global1 = all(var_0.yx);
    return 37115i ^ -select(-10963i, var_2.x, func_1(arg_1.c).c.a > _wgslsmith_f_op_f32(max(arg_0.x, 1871f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    var var_0 = min(vec3<i32>(select(-25600i, 1i, all(vec4<bool>(true, true, true, true))), -u_input.a.x, 22758i >> (u_input.b.x % 32u)), vec3<i32>(-func_4(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -897f, 287f), vec3<f32>(263f, 831f, -1280f)), func_1(Struct_1(-1061f, u_input.b.x)), func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.b.x)).a, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 25402i, -2147483647i), vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x), vec3<i32>(u_input.a.x, 12956i, 9239i))), u_input.a.x, -u_input.c.x << (u_input.b.x % 32u)));
    let var_1 = 0u;
    let var_2 = Struct_3(func_1(func_1(Struct_1(_wgslsmith_f_op_f32(floor(404f)), ~1u)).c).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(~4294967295u, 26u)], 1590f, -672f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(var_1, 26u)]))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(287f, 1009f, 648f)))))), Struct_1(-907f, _wgslsmith_div_u32(~_wgslsmith_add_u32(var_1, 4294967295u), u_input.b.x)));
    var var_3 = false;
    let var_4 = true;
    var var_5 = !(false || (var_2.b.x <= 657f));
    let var_6 = func_1(Struct_1(919f, abs(var_2.a.c.x)));
    var var_7 = func_1(Struct_1(var_2.c.a, u_input.b.x)).c;
    let x = u_input.a;
    s_output = StorageBuffer(542f);
}

