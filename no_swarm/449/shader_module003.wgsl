struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<i32, 20>;

var<private> global3: f32;

var<private> global4: array<vec4<f32>, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global4 = array<vec4<f32>, 30>();
    let var_0 = arg_0;
    let var_1 = 1i;
    return ~((reverseBits(u_input.a.x) | 1u) ^ u_input.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>) -> f32 {
    global1 = array<Struct_1, 29>();
    var var_0 = global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(37417u, u_input.a.x, func_1(Struct_1(vec3<f32>(-148f, 1424f, global0.a.x)))), select(~u_input.a.x, reverseBits(40588u), true), all(select(arg_2.xxw, !(!vec3<bool>(true, true, arg_2.x)), vec3<bool>(1u >= u_input.a.x, true, arg_2.x)))), 29u)];
    global4 = array<vec4<f32>, 30>();
    let var_1 = vec3<bool>(false, all(!select(select(arg_2.xxz, arg_2.xwy, arg_2.zyz), vec3<bool>(arg_1.x, true, arg_2.x), false | arg_2.x)), arg_2.x);
    global4 = array<vec4<f32>, 30>();
    return _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(523f + _wgslsmith_f_op_f32(trunc(735f))));
}

fn func_2() -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 29u)];
    var var_1 = global1[_wgslsmith_index_u32(~(u_input.b.x ^ (~33489u | (select(61940u, u_input.b.x, true) >> (u_input.b.x % 32u)))), 29u)];
    global4 = array<vec4<f32>, 30>();
    var_0 = global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 29u)];
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) * vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(func_3(Struct_1(var_0.a), vec2<bool>(false, true), vec4<bool>(true, false, true, true)))), -1848f)));
    return !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var var_1 = all(vec3<bool>(!select(false, true, false), (~6358u >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.b.x)) % 32u)) > _wgslsmith_clamp_u32(~483u, func_1(Struct_1(vec3<f32>(-1597f, global0.a.x, 1000f))), min(7236u, 23608u)), !any(vec2<bool>(true, true))));
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(select(u_input.a.x, u_input.b.x, true)), 29u)];
    let var_3 = ~0u;
    var var_4 = global1[_wgslsmith_index_u32(u_input.a.x, 29u)];
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 1000f) * _wgslsmith_f_op_f32(abs(-282f))), _wgslsmith_f_op_f32(floor(var_4.a.x)))));
    var var_6 = func_2();
    var_4 = Struct_1(var_5.xzw);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.zz, vec4<i32>(i32(-1i) * -2147483647i, global2[_wgslsmith_index_u32(var_3, 20u)], min(1i, -72341i), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(~110280u, 20u)], 1i ^ ~global2[_wgslsmith_index_u32(0u, 20u)])), u_input.b);
}

