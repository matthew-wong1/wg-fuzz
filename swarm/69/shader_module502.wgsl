struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<f32>(-1331f, 2263f, 315f, -163f));

var<private> global1: Struct_1;

var<private> global2: vec4<i32> = vec4<i32>(-16636i, -45426i, 2147483647i, -1i);

var<private> global3: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    global1 = Struct_1(any(!(!select(global3[_wgslsmith_index_u32(u_input.c, 6u)], global3[_wgslsmith_index_u32(u_input.c, 6u)], true))), global1.b);
    var var_0 = -463f;
    global0 = Struct_1(!select(!global1.a, !arg_1, !(!global0.a)), _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2285f, -754f, 521f, arg_0) + global0.b))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.x)) + _wgslsmith_f_op_f32(149f - arg_0)), -701f)));
    var var_1 = u_input.a.x;
    return select(abs(_wgslsmith_sub_i32(108305i, global2.x)), -(-u_input.a.x | _wgslsmith_add_i32(u_input.b.x, global2.x)), any(vec3<bool>(false, (u_input.c < 85371u) && all(vec2<bool>(global1.a, false)), any(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, false, false), true)))));
}

fn func_2() -> f32 {
    var var_0 = ~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, abs(0u), ~4294967295u), u_input.c, 0u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, ~u_input.c), ~1u, ~abs(u_input.c)));
    let var_1 = global3[_wgslsmith_index_u32(35066u, 6u)];
    let var_2 = 1f;
    var var_3 = select(global2.x, func_3(930f, global0.a), global1.a);
    global2 = u_input.a;
    return _wgslsmith_f_op_f32(global1.b.x * global1.b.x);
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    global0 = arg_0.b;
    var var_0 = _wgslsmith_f_op_f32(min(global1.b.x, 913f));
    var var_1 = ~u_input.c;
    var var_2 = arg_0.b;
    let var_3 = Struct_1(all(vec3<bool>(u_input.c >= ~4294967295u, true, !all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(568f, 230f, global1.b.x, _wgslsmith_f_op_f32(func_2()))))));
    return _wgslsmith_f_op_vec4_f32(global1.b - arg_0.b.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = -6651i;
    var var_1 = Struct_2(arg_0, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1263f)), global1.b.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(global0.b.x + -758f)))));
    var var_2 = countOneBits(vec2<i32>(1i, global2.x));
    let var_3 = !vec3<bool>(var_1.a.a, true, global0.a);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1152f - 438f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f - 1352f))));
    return (all(select(global3[_wgslsmith_index_u32(u_input.c, 6u)], vec2<bool>(false, false), arg_0.b.x == arg_0.b.x)) && (var_1.c < global1.b.x)) | (arg_0.a & global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(42208u);
    var var_1 = func_4(Struct_1(!global0.a | any(global3[_wgslsmith_index_u32(u_input.c, 6u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) * _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(global1.a, global0.b), Struct_1(global0.a, vec4<f32>(-438f, global1.b.x, -1057f, 306f)), global1.b.x)))) + _wgslsmith_f_op_vec4_f32(exp2(global1.b)))), Struct_1(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, 791f, global1.b.x, _wgslsmith_f_op_f32(abs(global1.b.x))))));
    global3 = array<vec2<bool>, 6>();
    global1 = Struct_1(true || !(!(!global0.a)), global1.b);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f - 244f) - -224f), global0.b.x, any(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_mult_u32(firstTrailingBit(u_input.c), ~36502u), reverseBits(u_input.c << (u_input.c % 32u))), 6u)])));
    global2 = -(u_input.a & u_input.a);
    let var_3 = Struct_1(global0.a, global0.b);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(796f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2069f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.b.x, global1.b.x)))))), _wgslsmith_mult_i32(29938i, _wgslsmith_clamp_i32(global2.x, -u_input.b.x, u_input.a.x)), u_input.c);
}

