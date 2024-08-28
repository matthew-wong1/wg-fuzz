struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(-167f, 0i, vec3<bool>(true, false, true)), Struct_3(-305f, 403i, vec3<bool>(true, false, true)), Struct_3(-580f, 0i, vec3<bool>(false, false, false)), Struct_3(167f, 35291i, vec3<bool>(false, false, true)), Struct_3(-699f, 0i, vec3<bool>(true, true, false)), Struct_3(2010f, 6547i, vec3<bool>(false, false, false)), Struct_3(-647f, -1i, vec3<bool>(false, true, true)), Struct_3(318f, -1i, vec3<bool>(true, true, false)), Struct_3(1118f, i32(-2147483648), vec3<bool>(false, false, false)), Struct_3(-727f, 26974i, vec3<bool>(true, false, false)), Struct_3(108f, -53915i, vec3<bool>(true, false, true)), Struct_3(-1503f, 60195i, vec3<bool>(true, false, false)), Struct_3(-1378f, 33533i, vec3<bool>(false, true, false)), Struct_3(-260f, 39291i, vec3<bool>(true, false, false)), Struct_3(1000f, -28626i, vec3<bool>(true, false, false)), Struct_3(1471f, -7046i, vec3<bool>(false, true, true)), Struct_3(-140f, -4900i, vec3<bool>(true, true, false)), Struct_3(344f, 1i, vec3<bool>(true, true, true)));

var<private> global1: array<i32, 16> = array<i32, 16>(22062i, 7120i, -7480i, 2147483647i, i32(-2147483648), i32(-2147483648), 1i, i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648), -20457i, -2306i, -24991i, -1i, 72587i);

var<private> global2: array<i32, 18> = array<i32, 18>(-1i, -3146i, 0i, 1i, -38211i, i32(-2147483648), 2147483647i, 2147483647i, -12627i, 1i, 19746i, 2147483647i, -23731i, -11500i, 23133i, -6570i, -36718i, 10115i);

var<private> global3: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(1u, 1u, 23151u), vec3<u32>(4294967295u, 11611u, 4294967295u), vec3<u32>(56330u, 76692u, 37889u), vec3<u32>(87613u, 88971u, 0u), vec3<u32>(0u, 41443u, 2511u), vec3<u32>(71562u, 0u, 92735u), vec3<u32>(42329u, 51602u, 6124u), vec3<u32>(1u, 4294967295u, 22985u), vec3<u32>(28618u, 27493u, 1u), vec3<u32>(4294967295u, 35613u, 4294967295u), vec3<u32>(1u, 68035u, 0u), vec3<u32>(73863u, 6883u, 3802u), vec3<u32>(80446u, 90634u, 4294967295u), vec3<u32>(1u, 0u, 17848u), vec3<u32>(46477u, 4294967295u, 44540u), vec3<u32>(81102u, 0u, 4294967295u), vec3<u32>(36112u, 4294967295u, 1u), vec3<u32>(4294967295u, 4440u, 32224u), vec3<u32>(116998u, 66128u, 0u), vec3<u32>(4294967295u, 32215u, 2095u), vec3<u32>(66105u, 32036u, 0u), vec3<u32>(73022u, 1u, 34410u), vec3<u32>(24459u, 54991u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(50960u, 0u, 41550u), vec3<u32>(4294967295u, 17100u, 15594u), vec3<u32>(4294967295u, 4294967295u, 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> i32 {
    let var_0 = arg_0.b.x;
    var var_1 = vec2<bool>(!arg_0.c.a.x, !any(!vec4<bool>(arg_0.c.a.x, false, arg_0.c.a.x, arg_0.c.a.x)) & arg_0.c.a.x);
    global1 = array<i32, 16>();
    let var_2 = 4294967295u;
    return ~(-47349i);
}

fn func_2() -> Struct_3 {
    return Struct_3(-909f, _wgslsmith_clamp_i32(1i & ~(-global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), ~_wgslsmith_div_i32(func_3(Struct_2(vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(68861u, 16u)], 118787i, global2[_wgslsmith_index_u32(u_input.b, 18u)]), vec3<f32>(776f, -291f, 126f), Struct_1(vec3<bool>(false, true, false)), vec3<f32>(1588f, 1565f, -976f), -9194i), vec4<i32>(8406i, -2147483647i, 28055i, global1[_wgslsmith_index_u32(4294967295u, 16u)]), 1000f, -1478f), select(1i, 2147483647i, false)), 2147483647i), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), select(_wgslsmith_mod_u32(0u, 121947u), u_input.b, 1u == u_input.b) == firstLeadingBit(_wgslsmith_div_u32(0u, u_input.d)), global1[_wgslsmith_index_u32(u_input.d, 16u)] >= 6866i));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(f32(-1f) * -134f));
    let var_1 = !(!arg_0.c);
    let var_2 = Struct_2(~abs(~(-vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -17920i))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.a)))), var_0, var_0), Struct_1(!vec3<bool>(var_1.x, all(vec2<bool>(arg_0.c.x, var_1.x)), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, -836f, var_0), vec3<f32>(arg_0.a, 455f, var_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 519f, var_0) - vec3<f32>(424f, var_0, var_0))))), _wgslsmith_mult_i32(~(-25219i), -1i));
    global2 = array<i32, 18>();
    global0 = array<Struct_3, 18>();
    return ~0i;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = vec4<i32>(2147483647i, func_4(func_2(), ~(~global3[_wgslsmith_index_u32(1u, 27u)]) << (global3[_wgslsmith_index_u32(12310u, 27u)] % vec3<u32>(32u))), u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, _wgslsmith_div_i32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(39452u, u_input.d), 18u)], arg_0.b)));
    global0 = array<Struct_3, 18>();
    let var_1 = Struct_2(-countOneBits(vec4<i32>(-1i) * -vec4<i32>(arg_0.b, -1i, -1i, -2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.a) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, 1111f, arg_0.a))))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-1604f + _wgslsmith_f_op_f32(min(-461f, arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1311f) + 1152f))), Struct_1(arg_0.c), vec3<f32>(-147f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f), arg_0.a))), -481f), ~u_input.c.x);
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(1u), 18u)];
    global3 = array<vec3<u32>, 27>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-779f)) + _wgslsmith_f_op_f32(386f * 149f))), u_input.c.x, vec3<bool>(!all(vec4<bool>(false, false, true, true)), true, _wgslsmith_div_u32(u_input.d, u_input.b) > u_input.d)));
    global1 = array<i32, 16>();
    var var_1 = u_input.c.x;
    global1 = array<i32, 16>();
    let var_2 = func_1(func_2());
    global2 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zww, func_1(func_2()).e);
}

