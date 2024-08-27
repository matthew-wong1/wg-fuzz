struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(i32(-2147483648), -20600i, i32(-2147483648), -10782i, -31459i, -36151i, 1147i, 1i, i32(-2147483648), -1090i, i32(-2147483648), 67651i, 1i, 1i, -1i, -16510i, 32346i, i32(-2147483648));

var<private> global1: array<Struct_1, 21>;

var<private> global2: f32;

var<private> global3: array<f32, 8> = array<f32, 8>(-972f, 1220f, -1524f, -717f, -213f, 911f, -798f, -285f);

var<private> global4: array<f32, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -arg_2, i32(-1i) * -38555i), vec3<i32>(-arg_1.b, -32455i, u_input.a));
    var var_1 = arg_0.c.zy;
    global0 = array<i32, 18>();
    var var_2 = global1[_wgslsmith_index_u32(~(~u_input.b.x), 21u)];
    global0 = array<i32, 18>();
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = !vec4<bool>(arg_1.x, -249f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1423f) + _wgslsmith_f_op_f32(783f - arg_0.c.x)), any(!select(vec3<bool>(true, arg_1.x, false), vec3<bool>(arg_0.a, false, arg_1.x), arg_1)), false);
    global1 = array<Struct_1, 21>();
    var var_1 = -464f;
    global3 = array<f32, 8>();
    let var_2 = arg_0;
    return select(var_0, select(!select(!var_0, vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, true, true, false)), !(!select(var_0, var_0, true)), false), vec4<bool>((firstTrailingBit(u_input.d.x) << (select(u_input.d.x, u_input.e.x, true) % 32u)) >= 17669u, true && (true | arg_1.x), true, true));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.d.x & _wgslsmith_clamp_u32(min(_wgslsmith_add_u32(0u, u_input.e.x) | ~11535u, select(54135u, u_input.d.x, any(vec4<bool>(arg_2.a, true, arg_2.a, false)))), ~reverseBits(~6738u), countOneBits(firstLeadingBit(u_input.b.x)));
    let var_1 = ~17120u;
    var var_2 = vec4<bool>(select(true, _wgslsmith_f_op_f32(-711f + global3[_wgslsmith_index_u32(var_1, 8u)]) > _wgslsmith_f_op_f32(abs(arg_1.c.x)), true) && !arg_2.a, any(!func_3(func_2(global1[_wgslsmith_index_u32(u_input.e.x, 21u)], arg_2, arg_0, Struct_1(true, u_input.a, vec4<f32>(arg_1.c.x, 244f, -622f, 1070f))), !vec3<bool>(true, arg_1.a, true), arg_2.c)), !arg_1.a, arg_2.b <= max(-arg_2.b, arg_2.b));
    global4 = array<f32, 14>();
    global4 = array<f32, 14>();
    return func_2(func_2(arg_1, func_2(func_2(func_2(Struct_1(var_2.x, -22668i, vec4<f32>(arg_2.c.x, 1128f, -173f, arg_1.c.x)), Struct_1(true, 26831i, arg_1.c), arg_1.b, arg_1), arg_2, arg_2.b, func_2(arg_2, global1[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(var_1, 18u)], Struct_1(var_2.x, arg_0, vec4<f32>(arg_2.c.x, global4[_wgslsmith_index_u32(1u, 14u)], 641f, global4[_wgslsmith_index_u32(u_input.e.x, 14u)])))), func_2(arg_2, Struct_1(arg_1.a, 2147483647i, arg_1.c), i32(-1i) * -16828i, global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), arg_2.b, func_2(arg_2, Struct_1(true, arg_2.b, vec4<f32>(global3[_wgslsmith_index_u32(53554u, 8u)], arg_2.c.x, 700f, arg_1.c.x)), -20421i | arg_2.b, Struct_1(false, 2147483647i, arg_1.c))), ~(~(i32(-1i) * -2147483647i)), Struct_1(all(!var_2.xxx), global0[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_vec4_f32(arg_1.c * vec4<f32>(global3[_wgslsmith_index_u32(1u, 8u)], arg_1.c.x, 765f, -1927f)))), arg_1, -1395i, Struct_1(true, -u_input.a, _wgslsmith_f_op_vec4_f32(-arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = Struct_1(false, global0[_wgslsmith_index_u32(u_input.e.x, 18u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(u_input.e.x | 53884u, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 8u)])), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 11809u, 2420u, u_input.e.x), vec4<u32>(40161u, u_input.d.x, 0u, u_input.d.x)), _wgslsmith_sub_u32(u_input.e.x, 6871u)), 14u)], 561f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1915f, global3[_wgslsmith_index_u32(u_input.d.x, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], 1962f), vec4<f32>(-1000f, global4[_wgslsmith_index_u32(73622u, 14u)], global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(u_input.d.x, 14u)]))) - vec4<f32>(global4[_wgslsmith_index_u32(59029u, 14u)], global4[_wgslsmith_index_u32(u_input.e.x, 14u)], -161f, -169f)) * vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -1383f), _wgslsmith_f_op_f32(min(-1025f, global3[_wgslsmith_index_u32(u_input.e.x, 8u)])), _wgslsmith_f_op_f32(-378f + global4[_wgslsmith_index_u32(2968u, 14u)])))));
    let var_2 = func_1(-1374i, var_1, global1[_wgslsmith_index_u32(u_input.e.x, 21u)]);
    let var_3 = var_2.a;
    global1 = array<Struct_1, 21>();
    let var_4 = func_3(Struct_1(_wgslsmith_dot_vec2_u32(u_input.d, ~u_input.e.zy) < _wgslsmith_mod_u32(u_input.d.x, u_input.e.x), 2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -369f, var_2.c.x, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]) * _wgslsmith_f_op_vec4_f32(floor(var_1.c)))), vec3<bool>(true, !var_2.a, false), var_2.c).yxy;
    global3 = array<f32, 8>();
    global4 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(min(~1u, _wgslsmith_div_u32(~u_input.e.x, u_input.e.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 12935u, 0u, 22996u) | vec4<u32>(u_input.b.x, 80878u, u_input.e.x, 1u), vec4<u32>(0u, 0u, 0u, u_input.e.x) << (vec4<u32>(1u, u_input.d.x, u_input.d.x, 0u) % vec4<u32>(32u))) % 32u)), 18u)], vec2<u32>(u_input.e.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(~0u, u_input.b.x), 0u)), select(firstLeadingBit(firstTrailingBit(max(vec3<u32>(u_input.d.x, u_input.d.x, u_input.e.x), u_input.b))), max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<u32>(0u, 24278u, u_input.e.x)), _wgslsmith_mod_vec3_u32(u_input.b, u_input.e)) | u_input.e, vec3<bool>(true || (var_1.a || false), true, !all(var_4.xy))), u_input.d, func_1(-47558i, var_1, global1[_wgslsmith_index_u32(~u_input.d.x, 21u)]).c.x);
}

