struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<Struct_3, 4>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<f32> {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    let var_0 = global0[_wgslsmith_index_u32(42717u, 21u)];
    let var_1 = any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(~arg_0.x, 21u)], any(vec2<bool>(false, true))), vec3<bool>(true, true, true), ~arg_0.x != countOneBits(arg_0.x)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -487f);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -493f), -151f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) - _wgslsmith_f_op_f32(sign(-1060f))), _wgslsmith_f_op_f32(ceil(1f)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_3 {
    var var_0 = ~(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 0u, 1u, 1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 10644u, 33502u, 26235u), vec4<u32>(79813u, 0u, 0u, 0u), vec4<u32>(71983u, 57596u, 21067u, 4294967295u)), abs(vec4<u32>(46657u, 4294967295u, 1u, 161159u))));
    var var_1 = arg_0.yx;
    var_1 = vec2<f32>(-937f, _wgslsmith_f_op_f32(f32(-1f) * -1026f));
    var_1 = arg_0.wz;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1610f)), 1298f);
    return Struct_3(_wgslsmith_f_op_vec2_f32(func_3(~_wgslsmith_div_vec4_u32(max(vec4<u32>(var_0.x, 38899u, var_0.x, 41979u), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)), vec4<u32>(var_0.x, 66950u, 1u, 13130u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-452f)), -1789f));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_3) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)), arg_0.c.b);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_3.c.a)) + _wgslsmith_f_op_vec2_f32(select(arg_3.c.a, arg_3.c.a, all(arg_0)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(arg_3, vec3<i32>(-102i, arg_3.a.x, -1i), arg_1.d.b, func_2(vec4<f32>(arg_3.c.b, arg_1.c.b, arg_1.c.b, -1142f), false))), _wgslsmith_f_op_vec2_f32(func_4(Struct_4(u_input.a.yxy, Struct_1(u_input.a.x, arg_2.x, global0[_wgslsmith_index_u32(6383u, 21u)]), Struct_3(vec2<f32>(-977f, 1382f), 530f), Struct_2(arg_3.d.a, arg_3.d.b)), vec3<i32>(-5962i, arg_1.a.x, -23562i) | vec3<i32>(arg_1.b.a, arg_1.b.a, arg_3.a.x), countOneBits(arg_3.a), arg_1.c)), arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.b)))));
    let var_1 = false;
    let var_2 = Struct_5(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_div_f32(var_0.a.x, 449f))) - var_0.a.x), 49480i < arg_1.a.x, -947f);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(var_2.a.c.a));
    var var_4 = !(!arg_0);
    return ~firstTrailingBit(1u) & (~min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 16697u, 68491u)), countOneBits(0u)) | _wgslsmith_add_u32(abs(0u), min(abs(32795u), 33947u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 4>();
    global0 = array<bool, 21>();
    let var_0 = vec3<u32>(1u, 4294967295u, 1u);
    global1 = array<Struct_3, 4>();
    var var_1 = vec3<bool>(false, true, true);
    var var_2 = vec4<bool>(true, true, true, all(!vec4<bool>(global0[_wgslsmith_index_u32(func_1(var_1.zy, Struct_4(vec3<i32>(1i, 8777i, u_input.a.x), Struct_1(u_input.a.x, true, false), Struct_3(vec2<f32>(-1000f, 1000f), 1604f), Struct_2(Struct_1(2147483647i, global0[_wgslsmith_index_u32(var_0.x, 21u)], false), vec3<i32>(-1i, u_input.a.x, u_input.a.x))), var_1.xz, Struct_4(u_input.a.zwy, Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(var_0.x, 21u)], true), Struct_3(vec2<f32>(441f, -434f), 129f), Struct_2(Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(var_0.x, 21u)], false), u_input.a.xxz))), 21u)], !var_1.x, var_1.x, true)));
    global1 = array<Struct_3, 4>();
    let var_3 = 532f;
    var var_4 = Struct_2(Struct_1(~u_input.a.x, true, any(!vec3<bool>(false, var_2.x, var_2.x))), vec3<i32>(u_input.a.x, u_input.a.x, 23667i << (~4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(var_0.x, 33898u)), var_0.xz & var_0.yy, vec2<u32>(select(_wgslsmith_div_u32(var_0.x, var_0.x), var_0.x, true), min(_wgslsmith_div_u32(1u, 25490u), 5696u))));
}

