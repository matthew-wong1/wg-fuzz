struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(i32(-2147483648), 3968i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -13130i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, 3788i), vec2<i32>(24921i, 12935i), vec2<i32>(i32(-2147483648), -11314i), vec2<i32>(1i, -6050i), vec2<i32>(-4384i, 1i), vec2<i32>(27466i, i32(-2147483648)));

var<private> global1: f32;

var<private> global2: array<u32, 15> = array<u32, 15>(4294967295u, 0u, 4294967295u, 23883u, 123833u, 4294967295u, 0u, 47648u, 1u, 4294967295u, 6695u, 4294967295u, 4294967295u, 0u, 0u);

var<private> global3: array<Struct_1, 28>;

var<private> global4: array<i32, 8> = array<i32, 8>(i32(-2147483648), 9976i, -566i, 2147483647i, i32(-2147483648), 1i, 78731i, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = arg_0;
    return u_input.b;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    global3 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1687f)))) + 948f);
    global3 = array<Struct_1, 28>();
    global1 = var_0;
    global4 = array<i32, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1175f + 1186f));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = true;
    let var_1 = global3[_wgslsmith_index_u32(~(~38061u), 28u)];
    let var_2 = max(~abs(vec2<i32>(firstTrailingBit(u_input.a.x), -1i)), vec2<i32>(arg_1.b.x, global4[_wgslsmith_index_u32(u_input.b, 8u)]));
    var_0 = true;
    var var_3 = ~firstLeadingBit(u_input.b);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(142f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec4<u32>(global2[_wgslsmith_index_u32(614u, 15u)], u_input.b, global2[_wgslsmith_index_u32(8986u, 15u)], 4294967295u), global3[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(vec2<bool>(true, false), arg_1.c, arg_1.c, u_input.a.x, var_1.e), vec3<f32>(285f, 1029f, -462f)), global3[_wgslsmith_index_u32(u_input.b, 28u)], true, arg_0.x), 28u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-355f + -169f), -1318f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(reverseBits(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u), vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], u_input.b, 49116u)) & _wgslsmith_add_vec4_u32(vec4<u32>(79660u, u_input.b, 6067u, u_input.b), vec4<u32>(1272u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 5747u, 1u)))));
    var var_1 = global3[_wgslsmith_index_u32(u_input.b, 28u)];
    var var_2 = -81157i;
    let var_3 = ~0u >> (global2[_wgslsmith_index_u32(var_0.x, 15u)] % 32u);
    global0 = array<vec2<i32>, 10>();
    var_1 = global3[_wgslsmith_index_u32(var_3, 28u)];
    let var_4 = !all(var_1.e.zzw);
    var_2 = 50194i;
    let var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1901f, -404f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1589f)), _wgslsmith_div_f32(-878f, _wgslsmith_f_op_f32(325f + 1043f)))), ~(~var_0.zy), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(var_0.zx, Struct_1(!vec2<bool>(var_1.e.x, var_4), var_1.c, vec3<i32>(var_1.d, 10633i, -2147483647i), global4[_wgslsmith_index_u32(14127u, 8u)], select(var_1.e, vec4<bool>(false, var_4, var_1.e.x, true), vec4<bool>(true, false, var_1.e.x, var_1.a.x))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, var_4, true), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), vec3<bool>(false, true, true), select(var_1.e.zxw, var_1.e.wyx, var_1.e.zzw)))))), -1839f);
}

