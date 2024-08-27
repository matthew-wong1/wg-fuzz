struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1u, 42076u, 43354u), vec3<u32>(26213u, 81032u, 1u), vec3<u32>(4294967295u, 8667u, 4294967295u), vec3<u32>(65595u, 4294967295u, 23701u), vec3<u32>(14415u, 1u, 48132u), vec3<u32>(18991u, 0u, 4294967295u), vec3<u32>(23114u, 12203u, 2202u), vec3<u32>(81306u, 1u, 41876u));

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: i32) -> u32 {
    var var_0 = 31568u;
    global1 = select(!(!(!vec4<bool>(false, global1.x, global1.x, true))), vec4<bool>(select(firstLeadingBit(arg_1), ~arg_1, any(vec4<bool>(global1.x, global1.x, global1.x, global1.x))) == -_wgslsmith_mult_i32(arg_1, -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1558f + -953f) - arg_0) < _wgslsmith_f_op_f32(select(arg_0, 901f, global1.x)), select(all(vec4<bool>(false, false, false, global1.x)), any(select(vec2<bool>(false, global1.x), global1.zy, global1.x)), global1.x), !(false != global1.x)), vec4<bool>(any(select(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(true, global1.x, true, global1.x), true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x))), true, global1.x, select(true | global1.x, all(select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(false, global1.x, global1.x, true), global1.x)), !select(true, false, global1.x))));
    let var_1 = global1.x;
    var_0 = u_input.a;
    let var_2 = vec4<f32>(-1000f, arg_0, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1363f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(ceil(global3.x))))));
    return reverseBits(~(~(~u_input.a))) >> (countOneBits(_wgslsmith_dot_vec3_u32(min(vec3<u32>(5421u, 65442u, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a), global2[_wgslsmith_index_u32(0u << (u_input.a % 32u), 8u)]), min(abs(vec3<u32>(4294967295u, u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(u_input.a, 43124u, 66539u))))) % 32u);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(select(~u_input.a, ~(~u_input.a | _wgslsmith_div_u32(func_3(1000f, -1i), 45792u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-120f, global3.x)) + _wgslsmith_f_op_f32(-867f * global3.x)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(513f, 648f), true)))), 27u)];
    return ~_wgslsmith_mod_i32(1i, -9494i);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-539f, global3.x, global3.x, global3.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2183f, -742f, -481f, global3.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -135f, global3.x, global3.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, global3.x, global3.x, global3.x)))));
    global1 = !(!select(!select(vec4<bool>(true, false, global1.x, true), vec4<bool>(global1.x, true, false, false), global1.x), select(vec4<bool>(global1.x, false, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, true, true), global1.x), !(!vec4<bool>(true, true, global1.x, global1.x))));
    let var_0 = global0[_wgslsmith_index_u32(37471u << (1u % 32u), 27u)];
    global3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(min(292f, global3.x)))), global3.x), _wgslsmith_f_op_f32(global3.x + global3.x), -1154f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global3.x)), -407f)));
    global0 = array<Struct_1, 27>();
    return func_2(true, vec3<bool>(all(!global1.yyx), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(!all(!(!vec4<bool>(false, global1.x, false, true))), false, (1i & _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 2147483647i, 3008i), -vec3<i32>(-17772i, -47143i, 5624i))) < 1i, false);
    var var_0 = firstTrailingBit(~vec4<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -4459i), vec2<i32>(1147i, 0i)), i32(-1i) * -1i, func_1(global2[_wgslsmith_index_u32(u_input.a, 8u)], 4294967295u)) << (~vec4<u32>(~u_input.a, 74527u ^ u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)));
    let var_1 = !global1.wx;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 1000f) + global3.xy)) * _wgslsmith_f_op_vec2_f32(-global3.yz))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-global3.x)));
    global2 = array<vec3<u32>, 8>();
    var var_3 = Struct_1(true);
    global1 = vec4<bool>(!(!var_3.a), all(!vec2<bool>(true, var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-445f, global3.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2615f * var_2.x))) > _wgslsmith_f_op_f32(global3.x * 157f), any(vec3<bool>(all(vec2<bool>(var_3.a, global1.x)), var_0.x >= ~(-2147483647i), select(false, u_input.a == u_input.a, true | var_1.x))));
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1125f, 1679f, 1000f, -1504f))), vec4<f32>(818f, -1639f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-101f, global3.x, -598f, global3.x), vec4<f32>(507f, 210f, 938f, 124f), var_3.a))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -250f, global3.x)))))), 1i);
}

