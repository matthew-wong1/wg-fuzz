struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, 0i, 46451u), Struct_1(false, -3374i, 1u), Struct_1(true, -80615i, 4294967295u), Struct_1(true, -18433i, 15946u), Struct_1(true, -12164i, 40028u), Struct_1(true, -40573i, 58675u), Struct_1(false, 59245i, 68826u), Struct_1(true, 1i, 48023u), Struct_1(true, 1i, 4020u));

var<private> global2: bool;

var<private> global3: vec3<f32> = vec3<f32>(-1000f, 920f, 1295f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 9>();
    global2 = !global0.x;
    global2 = true;
    let var_0 = global1[_wgslsmith_index_u32(u_input.a | u_input.a, 9u)];
    global1 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(f32(-1f) * -461f);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1887f + global3.x), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) - arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) + 143f), global3.x);
    var var_1 = !any(select(vec2<bool>(false, arg_1.a), vec2<bool>(true, arg_2.a), !select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(true, true), false)));
    var var_2 = _wgslsmith_f_op_f32(297f * global3.x);
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.www)), vec3<f32>(-489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(arg_0.x, 318f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1165f - -703f), _wgslsmith_f_op_f32(-global3.x))), -2204f), ~arg_1.b <= ~24204i));
    return select(select(vec3<bool>(any(vec3<bool>(false, arg_2.a, false)), all(!vec4<bool>(global0.x, arg_2.a, arg_2.a, false)), arg_2.a), !(!select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_2.a, true, arg_1.a), vec3<bool>(true, global0.x, arg_1.a))), select(select(vec3<bool>(true, global0.x, arg_2.a), !vec3<bool>(arg_1.a, global0.x, true), true), vec3<bool>(!arg_2.a, global0.x, select(false, global0.x, arg_2.a)), select(vec3<bool>(true, arg_1.a, global0.x), !vec3<bool>(global0.x, false, true), vec3<bool>(false, false, false)))), !select(vec3<bool>(arg_2.a, select(global0.x, false, global0.x), true), select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, true, true), select(arg_2.a, true, true)), arg_1.a), select(!vec3<bool>(false, true, !arg_1.a), !select(select(vec3<bool>(false, global0.x, arg_2.a), vec3<bool>(arg_1.a, false, arg_2.a), arg_1.a), select(vec3<bool>(arg_1.a, true, true), vec3<bool>(false, true, arg_2.a), vec3<bool>(arg_2.a, false, true)), false), any(select(!vec4<bool>(false, false, global0.x, false), select(vec4<bool>(arg_1.a, false, true, true), vec4<bool>(false, arg_2.a, false, arg_1.a), true), 427f == global3.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_f32(-global3.x), 308f, global3.x), !func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-750f, -968f, -1080f, 528f) * vec4<f32>(1143f, global3.x, 734f, -148f)), Struct_1(true, -1i, 56440u), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 9u)], _wgslsmith_div_i32(-1i, -11186i)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(func_2()))), global3.x, 1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global3.x + var_0.x)) - vec3<f32>(927f, _wgslsmith_f_op_f32(f32(-1f) * -318f), 1f))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-3552f, 1507f, global3.x), vec3<f32>(2155f, 500f, global3.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -1441f, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-637f, 1025f, var_0.x) - vec3<f32>(2154f, global3.x, var_0.x)), vec3<bool>(true, true, true)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-322f, global3.x))), -1094f, var_0.x) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -656f)), vec3<f32>(global3.x, 850f, _wgslsmith_f_op_f32(ceil(-842f)))))), vec3<bool>(global0.x, func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-532f, 365f, global3.x, global3.x))), global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(26459u << (u_input.a % 32u), 9u)], abs(-1i)).x & (global0.x || true), !global0.x)));
    global3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.x * _wgslsmith_div_f32(var_0.x, global3.x)), global3.x, _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-943f, -950f, -266f), vec3<f32>(555f, -2320f, 451f)), vec3<f32>(var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-431f, -135f, 147f) * vec3<f32>(1045f, global3.x, -2483f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 441f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 216f, -1000f), vec3<f32>(-1058f, var_0.x, var_0.x))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -964f), global3.x))))));
    global1 = array<Struct_1, 9>();
    return Struct_1(global0.x, -16685i, min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a & u_input.a, countOneBits(u_input.a)), vec2<u32>(u_input.a, u_input.a & u_input.a)), u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    var var_0 = ~arg_1.c;
    let var_1 = vec3<f32>(global3.x, -564f, global3.x);
    let var_2 = -615f;
    let var_3 = func_1();
    let var_4 = var_1;
    return ~_wgslsmith_mod_i32(~select(abs(2147483647i), -var_3.b, !var_3.a), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_4(vec4<u32>(u_input.a & _wgslsmith_div_u32(1u, 28723u), firstTrailingBit(1u), ~1u, u_input.a >> (68073u % 32u)), func_1(), vec2<u32>(select(4294967295u, 12676u, global0.x), ~u_input.a) | ~select(vec2<u32>(11864u, u_input.a), vec2<u32>(4722u, u_input.a), global0.x)), -_wgslsmith_div_i32(func_4(vec4<u32>(u_input.a, u_input.a, 53670u, u_input.a), func_1(), vec2<u32>(0u, 4294967295u)), reverseBits(1i)));
    let var_1 = u_input.a;
    let var_2 = ~_wgslsmith_sub_u32(var_1, 0u);
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), ~(~(~vec2<u32>(var_1, var_2)))), 44905u);
    global0 = !select(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -111f, 1129f, global3.x)) + vec4<f32>(401f, 1223f, 712f, global3.x)), Struct_1(any(vec3<bool>(true, global0.x, false)), max(var_0.x, var_0.x), 20527u), func_1(), var_0.x).xz, func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, 1684f, -720f, global3.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, 306f, global3.x, -1480f))))), Struct_1(false, var_0.x, 92654u), func_1(), 2147483647i).yy, !(!vec2<bool>(true, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(global3.x - -1283f))), _wgslsmith_f_op_f32(-global3.x)));
}

