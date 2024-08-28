struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(-1i, 23040i, i32(-2147483648), -1i, i32(-2147483648), 0i);

var<private> global1: array<vec4<i32>, 1>;

var<private> global2: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(-24945i, 0i, 14051i, 37956i), vec4<i32>(45212i, -32578i, 2147483647i, -42958i), vec4<i32>(i32(-2147483648), -1i, -79584i, 32220i), vec4<i32>(2147483647i, i32(-2147483648), -46108i, 2147483647i), vec4<i32>(2147483647i, -14901i, i32(-2147483648), -23710i), vec4<i32>(-1i, -6731i, 34252i, 2147483647i), vec4<i32>(42077i, -61612i, -14295i, 45108i), vec4<i32>(2147483647i, i32(-2147483648), 55772i, 2147483647i), vec4<i32>(14978i, -1i, 1i, 44980i), vec4<i32>(11593i, 0i, 22668i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -26116i), vec4<i32>(-1i, i32(-2147483648), 0i, 4987i), vec4<i32>(-1180i, 0i, -45563i, i32(-2147483648)), vec4<i32>(36454i, -1i, 43717i, 3637i), vec4<i32>(-1i, -1i, 1i, 2875i), vec4<i32>(i32(-2147483648), 1i, 0i, 25175i), vec4<i32>(-1i, -23163i, 25993i, -1i), vec4<i32>(11885i, -14958i, -1i, 0i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    return arg_0.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_0 = ~global1[_wgslsmith_index_u32(arg_0.a, 1u)] << (vec4<u32>(49795u, 19331u, arg_0.b, arg_0.b) % vec4<u32>(32u));
    let var_1 = arg_0.b;
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 1434f))), _wgslsmith_f_op_f32(func_3(Struct_1(1878f)))))), _wgslsmith_mult_vec2_i32(arg_0.c, vec2<i32>(~arg_1.x, var_0.x)), Struct_3(-4646i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-840f, -791f)))))));
    return -34084i;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = func_2(Struct_2(max(_wgslsmith_sub_u32(select(45365u, 11295u, false), firstLeadingBit(arg_0.x)), _wgslsmith_clamp_u32(5232u, arg_0.x, 4294967295u) & _wgslsmith_sub_u32(59558u, arg_0.x)), ~arg_0.x, vec2<i32>(0i, ~(-12312i))), ~vec3<i32>(-(global0[_wgslsmith_index_u32(arg_0.x, 6u)] & global0[_wgslsmith_index_u32(arg_0.x, 6u)]), select(global0[_wgslsmith_index_u32(~arg_0.x, 6u)], abs(global0[_wgslsmith_index_u32(arg_0.x, 6u)]), false), -_wgslsmith_clamp_i32(u_input.b.x, 1i, -1i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(109f, -633f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -564f))))));
    var var_2 = Struct_3(_wgslsmith_add_i32(_wgslsmith_clamp_i32(max(var_0, var_0), -2147483647i, _wgslsmith_sub_i32(u_input.a.x, var_0)), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b.x, ~(-17116i)), ~global0[_wgslsmith_index_u32(1u, 6u)])));
    let var_3 = var_1;
    let var_4 = Struct_4(Struct_1(-456f), u_input.b.xy, Struct_3(var_2.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1121f, _wgslsmith_f_op_f32(var_1 * -1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1027f, -1440f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-973f, 1578f), vec2<f32>(1000f, var_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(var_1 + -1029f))))));
    return Struct_2(6388u, _wgslsmith_sub_u32(arg_0.x ^ arg_0.x, ~19235u), var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1189f, _wgslsmith_f_op_f32(sign(-759f))))));
    let var_1 = func_1(vec2<u32>(1u, _wgslsmith_mod_u32(1u, ~51716u)));
    var var_2 = !(!vec4<bool>(any(vec2<bool>(false, false)) | any(vec2<bool>(true, true)), false, true, true));
    global1 = array<vec4<i32>, 1>();
    var var_3 = _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_div_f32(-150f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(-349f * var_0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1487f + var_0.a), _wgslsmith_f_op_f32(-var_0.a)))))), countOneBits(min(_wgslsmith_div_u32(var_1.a, 0u), 1u) >> (~25992u % 32u)), var_1.b);
}

