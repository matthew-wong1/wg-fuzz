struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<f32, 14>;

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    global2 = array<f32, 14>();
    global0 = 255f;
    var var_0 = arg_2;
    var var_1 = arg_2;
    global0 = _wgslsmith_div_f32(1051f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(367f * _wgslsmith_f_op_f32(-645f + var_0.a.x)) * -221f));
    return 1409f;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec3<bool>(false, !arg_0 | true, any(!vec4<bool>(true, true, all(vec2<bool>(false, arg_0)), true)));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1614f * -709f), _wgslsmith_f_op_f32(func_3(1955u, vec4<bool>(var_0.x, true, true, true), Struct_1(vec3<f32>(global1.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 14u)], global1.a.x)), vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(-global1.a.x)));
    global0 = _wgslsmith_f_op_f32(-1305f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.x), -1054f)));
    var_1 = global1.a.x;
    var var_2 = u_input.c.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a));
}

fn func_1() -> Struct_1 {
    let var_0 = !(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))) || true);
    let var_1 = ~(~(~(~(~u_input.c.x))));
    let var_2 = func_2(false);
    return func_2(any(!select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), !vec2<bool>(var_0, false))));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = any(!vec4<bool>(false & all(vec2<bool>(false, false)), true, true, true));
    var_0 = true;
    let var_1 = ~u_input.c;
    var var_2 = select(9546i, 1i, (!all(vec4<bool>(true, false, false, true)) && true) & true);
    let var_3 = abs(~(~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(var_1.x, 26561u, 1u)), ~vec3<u32>(17283u, 23540u, arg_1.x))));
    return Struct_1(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.a))));
    global0 = global1.a.x;
    let var_1 = func_4(u_input.c.x >> (1u % 32u), u_input.c, func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(select(global1.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2[_wgslsmith_index_u32(80105u, 14u)], var_0.x, global2[_wgslsmith_index_u32(17067u, 14u)]))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))))));
    global1 = func_4(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_mult_vec2_u32(~(~u_input.c), u_input.c)), u_input.c, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.a + global1.a))), _wgslsmith_f_op_vec3_f32(global1.a * vec3<f32>(global2[_wgslsmith_index_u32(34069u, 14u)], var_0.x, 1469f)))), func_4(abs(u_input.c.x) << (1u % 32u), vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, 0u), firstTrailingBit(u_input.c.x)), var_1, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 812f, 779f) * _wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(var_1.a.x, 710f, global2[_wgslsmith_index_u32(66397u, 14u)]))))));
    global0 = _wgslsmith_f_op_f32(abs(var_0.x));
    let var_2 = 30368i;
    var var_3 = var_0.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 121f, 365f, var_1.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, 738f, var_1.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 14u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, var_1.a.x, -1607f, 1000f))), any(vec4<bool>(true, true, true, true)))) + vec4<f32>(func_4(min(u_input.c.x, u_input.c.x), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)), func_2(true), Struct_1(vec3<f32>(-748f, -228f, var_1.a.x))).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1244f - var_0.x) - global1.a.x), func_4(firstTrailingBit(4294967295u), vec2<u32>(6825u, 1u), func_4(u_input.c.x, vec2<u32>(1u, 0u), var_1, var_1), var_1).a.x, global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(u_input.b), ~_wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), -abs(u_input.b)), vec4<u32>(~5799u, 1u, 1u, ~(~u_input.c.x)), global2[_wgslsmith_index_u32(~57419u, 14u)], ~vec2<u32>(16945u, 28228u) | vec2<u32>(firstTrailingBit(6800u) << (~55411u % 32u), max(32316u, 1u)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(-u_input.b, u_input.a)));
}

