struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-36729i, -18566i, 1i, -12368i, 2147483647i, 2147483647i, -57288i, 28216i);

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global2: Struct_1;

var<private> global3: array<bool, 12>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<bool>) -> u32 {
    global0 = array<i32, 8>();
    let var_0 = arg_1.a;
    var var_1 = arg_1.b;
    global4 = ~(~arg_0.a.x);
    let var_2 = Struct_3(arg_1.d, var_0.x, arg_0.c, arg_1.d.x);
    return 1u;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.c.b.x, -290f, arg_1.c.b.x)))))))));
    var var_2 = func_1(Struct_3(arg_0.wxx, !select(false, false, arg_1.a.x), vec2<u32>(u_input.d, 119452u), ~54195u), Struct_2(vec2<bool>(!var_0, any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], false, var_0, true))), global3[_wgslsmith_index_u32(arg_1.d.x, 12u)], arg_1.c, vec3<u32>(~arg_1.d.x, ~51696u, _wgslsmith_div_u32(1u, arg_1.d.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.b.x, 991f, var_1.x, 102f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(600f, -357f, arg_1.c.b.x, 1414f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-624f, global2.a, 1374f, 852f), vec4<f32>(772f, arg_1.c.a, -1000f, var_1.x)))), vec4<bool>(true, false, true, var_0 && var_0))), !vec2<bool>(all(vec4<bool>(false, var_0, true, global3[_wgslsmith_index_u32(arg_1.d.x, 12u)])), arg_1.a.x & arg_1.b)) == 71278u;
    var var_3 = u_input.c;
    var_3 = _wgslsmith_sub_i32(countOneBits(abs(_wgslsmith_add_i32(2147483647i, u_input.c))), -1i);
    return !arg_1.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(select(func_3(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.d, 26611u, arg_1.c.x, arg_1.d), vec4<u32>(17309u, 140847u, 0u, arg_1.c.x)), vec4<u32>(0u, 13986u, arg_1.a.x, u_input.a)), Struct_2(!arg_0, any(arg_0), arg_2, arg_1.a)), arg_0, !arg_0), !any(vec3<bool>(true, true, arg_0.x)), arg_2, ~(~vec3<u32>(arg_1.d, 4294967295u, u_input.d) << (~vec3<u32>(arg_1.a.x, 1u, u_input.d) % vec3<u32>(32u))));
    var var_1 = Struct_2(select(var_0.a, vec2<bool>((var_0.d.x >= 0u) & (true == var_0.a.x), global3[_wgslsmith_index_u32(~(~11940u), 12u)]), select(var_0.a, select(arg_0, var_0.a, vec2<bool>(true, true)), arg_0.x)), all(var_0.a) && false, arg_2, firstTrailingBit(arg_1.a));
    let var_2 = 33721u;
    let var_3 = vec2<bool>(all(vec3<bool>(true, true, true)), true);
    var var_4 = _wgslsmith_mod_u32(1u, 3516u);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = Struct_2(vec2<bool>(any(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 12u)], false))), false), true, Struct_1(-453f, vec2<f32>(global2.a, -190f)), vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(func_1(Struct_3(vec3<u32>(0u, 0u, 1u), global3[_wgslsmith_index_u32(u_input.a, 12u)], vec2<u32>(u_input.d, u_input.d), u_input.d), Struct_2(vec2<bool>(false, global3[_wgslsmith_index_u32(36396u, 12u)]), false, Struct_1(-113f, global2.b), vec3<u32>(u_input.a, u_input.a, u_input.d)), vec4<f32>(global2.b.x, global2.b.x, global2.a, global2.b.x), vec2<bool>(true, false))), countOneBits(24605u >> (u_input.d % 32u))), u_input.a, 1u >> (~(u_input.a | 1u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.b.x, global2.a, global2.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, 356f, -466f) * vec3<f32>(global2.b.x, global2.a, var_1.c.b.x)), global3[_wgslsmith_index_u32(u_input.a | var_1.d.x, 12u)]))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.a * var_1.c.a), -1000f, _wgslsmith_f_op_f32(471f + 838f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.b.x, var_1.c.a, global2.b.x), vec3<f32>(var_1.c.a, global2.b.x, 1944f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, var_1.c.a, 436f), vec3<f32>(var_1.c.b.x, global2.b.x, global2.a), true))))), ~56559u, _wgslsmith_sub_vec2_u32(var_1.d.yy, vec2<u32>(~func_2(var_1.a, Struct_3(vec3<u32>(0u, u_input.a, 4294967295u), var_1.a.x, var_1.d.yy, var_1.d.x), Struct_1(global2.b.x, global2.b)), u_input.d | firstLeadingBit(24612u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.b, vec2<f32>(var_1.c.a, 718f))) + _wgslsmith_f_op_vec2_f32(-global2.b)), global2.b))));
}

