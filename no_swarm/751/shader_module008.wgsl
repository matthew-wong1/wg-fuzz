struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(false), 1170f, vec2<f32>(1000f, 1000f), 4294967295u), Struct_2(Struct_1(true), -872f, vec2<f32>(661f, 1073f), 1u), Struct_2(Struct_1(false), -1493f, vec2<f32>(258f, -241f), 6338u), Struct_2(Struct_1(false), -135f, vec2<f32>(260f, 326f), 46291u), Struct_2(Struct_1(true), -1000f, vec2<f32>(-118f, -449f), 1u), Struct_2(Struct_1(true), -1400f, vec2<f32>(-865f, -904f), 15266u), Struct_2(Struct_1(true), 963f, vec2<f32>(553f, 1650f), 1u), Struct_2(Struct_1(false), -594f, vec2<f32>(-589f, -517f), 4294967295u));

var<private> global3: u32 = 64240u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<u32> {
    global0 = array<Struct_2, 30>();
    global3 = _wgslsmith_sub_u32(0u, ~(~(~arg_0.d)));
    let var_0 = arg_0;
    global3 = 46205u;
    global0 = array<Struct_2, 30>();
    return ~select(vec3<u32>(_wgslsmith_add_u32(select(1u, var_0.d, var_0.a.a), var_0.d), _wgslsmith_sub_u32(~74761u, arg_0.d), 4294967295u), vec3<u32>(1u << (~var_0.d % 32u), var_0.d, var_0.d), any(!select(vec2<bool>(var_0.a.a, true), arg_1.xy, arg_1.zw)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_1(global1.a);
    var var_1 = Struct_2(Struct_1(any(!(!vec2<bool>(global1.a, false)))), _wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1942f, -1758f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(137f, 1268f) - vec2<f32>(-1000f, -636f)))) * vec2<f32>(1029f, _wgslsmith_f_op_f32(f32(-1f) * -522f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~4294967295u), 1u, ~1u), func_3(Struct_2(Struct_1(arg_0), _wgslsmith_f_op_f32(select(-606f, 1000f, true)), vec2<f32>(-1000f, 1114f), _wgslsmith_clamp_u32(27529u, 33728u, 1u)), select(!vec4<bool>(arg_0, false, false, false), select(vec4<bool>(false, global1.a, true, true), vec4<bool>(false, arg_0, true, var_0.a), false), !vec4<bool>(false, var_0.a, var_0.a, true)))));
    let var_2 = var_1.a;
    var_1 = global2[_wgslsmith_index_u32(abs(var_1.d), 8u)];
    global1 = Struct_1(true);
    return _wgslsmith_dot_vec3_u32(func_3(global2[_wgslsmith_index_u32(20047u, 8u)], !vec4<bool>(var_0.a, false, var_2.a & true, true)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_1.d, var_1.d), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1.d, 4294967295u), vec3<u32>(var_1.d, var_1.d, 0u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.d, 1u), vec3<u32>(var_1.d, var_1.d, 44753u))));
}

fn func_1() -> u32 {
    return _wgslsmith_add_u32(func_2(global1.a), func_3(Struct_2(Struct_1(u_input.c.x > -16026i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1257f - 294f) + 1121f), vec2<f32>(1f, 1f), abs(0u)), vec4<bool>(any(!vec4<bool>(global1.a, global1.a, global1.a, global1.a)), true == (global1.a || global1.a), all(vec2<bool>(false, false)), any(!vec3<bool>(global1.a, global1.a, global1.a)))).x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> StorageBuffer {
    let var_0 = (false || all(arg_2)) || any(vec2<bool>(arg_1.a, arg_1.a));
    let var_1 = Struct_1(global1.a);
    var var_2 = arg_2;
    var var_3 = !var_2.x;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1117f)))))));
    return StorageBuffer(vec3<i32>(abs(u_input.c.x), 2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-21419i, 29489i), max(u_input.a.x, _wgslsmith_sub_i32(u_input.b.x, 5343i)))), vec2<f32>(-314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1744f), -1559f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f + 1585f) - _wgslsmith_f_op_f32(ceil(263f))))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true);
    var var_1 = var_0.a;
    var_1 = any(!vec4<bool>(any(vec2<bool>(global1.a, true)) && true, true, global1.a, var_0.a));
    let x = u_input.a;
    s_output = func_4(~max(~(~vec3<u32>(139280u, 32453u, 15722u)), vec3<u32>(33267u, 0u, func_1())), Struct_1(true), vec4<bool>(var_0.a, true, var_0.a, true));
}

