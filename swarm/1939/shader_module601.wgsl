struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 44297i;

var<private> global1: vec2<u32>;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(0i, vec4<u32>(57090u, 4294967295u, 72111u, 68655u), vec2<f32>(-1002f, -2248f), vec2<bool>(true, true)), Struct_1(-633i, vec4<u32>(78635u, 19185u, 117730u, 16286u), vec2<f32>(-176f, -1021f), vec2<bool>(true, false)), Struct_1(19631i, vec4<u32>(0u, 4294967295u, 4294967295u, 56723u), vec2<f32>(-759f, 105f), vec2<bool>(false, true)), Struct_1(7397i, vec4<u32>(1u, 1u, 3492u, 1u), vec2<f32>(-543f, 2712f), vec2<bool>(false, false)), Struct_1(44628i, vec4<u32>(4294967295u, 30192u, 0u, 33959u), vec2<f32>(-206f, -125f), vec2<bool>(false, false)), Struct_1(1i, vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec2<f32>(1030f, 214f), vec2<bool>(false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a.x;
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.x, reverseBits(_wgslsmith_mult_u32(max(u_input.b.x, global1.x), ~93412u))), _wgslsmith_div_u32(~global1.x, firstTrailingBit(79563u))), 6u)];
    var var_2 = global2.zy;
    global1 = u_input.b.zy;
    let var_3 = -firstTrailingBit(vec4<i32>(-21258i, _wgslsmith_clamp_i32(firstLeadingBit(var_0), -1i, var_0 ^ var_0), 50172i, u_input.a.x));
    return Struct_2(global3[_wgslsmith_index_u32(28548u, 6u)], vec2<u32>(~49700u, var_1.b.x ^ 49445u));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.c.x, _wgslsmith_f_op_f32(select(-416f, -252f, arg_2.a.d.x)), arg_2.a.c.x, _wgslsmith_f_op_f32(arg_1.a.c.x + -512f)))) + vec4<f32>(func_2().a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1596f), 845f, 150f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1850f, 608f))))), _wgslsmith_f_op_f32(round(arg_2.a.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-203f, 1920f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(~(~firstTrailingBit(global1.x)) << (~12941u % 32u), arg_2, arg_0));
    global3 = array<Struct_1, 6>();
    global0 = -(~33853i);
    return var_1.x;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    let var_0 = arg_2;
    global3 = array<Struct_1, 6>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.c.x, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_u32(_wgslsmith_mult_u32(97759u, 10317u), 4294967295u), func_2(), var_0)).x, !any(!vec4<bool>(false, arg_3.x, false, arg_3.x)))));
    let var_2 = func_2().a;
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(1405f - -334f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(704f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_1(Struct_2(global3[_wgslsmith_index_u32(82542u, 6u)], vec2<u32>(0u, 45633u)), vec3<f32>(-1211f, -506f, 1089f), Struct_2(global3[_wgslsmith_index_u32(0u, 6u)], vec2<u32>(4294967295u, global1.x)), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), vec4<i32>(-2147483647i, -4099i, 28693i, 34013i) & vec4<i32>(u_input.a.x, u_input.a.x, 9749i, u_input.a.x), Struct_2(Struct_1(-19513i, vec4<u32>(u_input.b.x, global1.x, 4294967295u, global1.x), vec2<f32>(905f, 356f), global2.wx), vec2<u32>(32502u, 17781u)), global2.yy)))))), _wgslsmith_f_op_f32(step(1376f, func_2().a.c.x)), _wgslsmith_f_op_f32(func_1(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, -1179f, -1000f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, -1243f, -897f) * vec3<f32>(-1546f, 933f, -2199f))))), func_2(), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -62123i))));
    var var_1 = Struct_1(u_input.a.x, vec4<u32>(u_input.b.x, firstTrailingBit(u_input.b.x), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(93219u, 4294967295u, 0u) >> (u_input.b % vec3<u32>(32u)), vec3<u32>(1u, 0u, 4294967295u))) ^ ~countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), vec2<f32>(-960f, -900f), global2.yw);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, 1363f, var_0.x, var_1.c.x) * vec4<f32>(var_0.x, -688f, 342f, var_1.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-965f, var_1.c.x, 1000f, var_0.x)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, -1000f, var_0.x, 435f)))));
    var var_3 = 1359f;
    var var_4 = ~_wgslsmith_mult_u32(1u & _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, global1.x, 1u, 8439u), var_1.b), _wgslsmith_mult_u32(var_1.b.x, 20506u));
    global2 = select(!vec4<bool>(global2.x || !global2.x, true, _wgslsmith_f_op_f32(-var_1.c.x) <= _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(688f + var_1.c.x) > _wgslsmith_f_op_f32(144f - var_2.x)), !(!(!vec4<bool>(true, true, var_1.d.x, var_1.d.x))), vec4<bool>(true | !global2.x, !(!var_1.d.x) & var_1.d.x, all(func_2().a.d), var_1.d.x));
    let var_5 = vec3<u32>(abs(min(global1.x, ~(~23212u))), _wgslsmith_sub_u32(23993u, u_input.b.x), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

