struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(66268i);

var<private> global1: array<bool, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    global1 = array<bool, 19>();
    global0 = Struct_3(-abs(3331i));
    global0 = arg_2;
    global0 = arg_1;
    global0 = Struct_3(-abs(_wgslsmith_mod_i32(global0.a | u_input.b, arg_1.a)));
    return 0u;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f) + 1000f));
    let var_1 = global1[_wgslsmith_index_u32(~func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a.x), 19u)], arg_2, arg_1), 19u)];
    return Struct_1(all(vec4<bool>(true, all(select(vec4<bool>(global1[_wgslsmith_index_u32(8352u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(34124u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 19u)], false, global1[_wgslsmith_index_u32(arg_0, 19u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], false))), any(!vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0, 19u)])), any(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 19u)])))), max(~vec2<i32>(~0i, -arg_1.a), _wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(global0.a, -17369i)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-19554i, -2147483647i), vec2<i32>(global0.a, global0.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(29369i, 45990i))), ~(-vec2<i32>(arg_1.a, -1i)))), _wgslsmith_f_op_f32(1653f + _wgslsmith_f_op_f32(abs(-575f))), abs(u_input.c), true);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(arg_0.x, Struct_3(global0.a), Struct_3(-u_input.b));
    var var_1 = true;
    var var_2 = 4294967295u;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - -1540f)))));
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global0.a, -23301i), vec2<i32>(2147483647i, u_input.b))), firstLeadingBit(abs(vec2<i32>(global0.a, 0i)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.d, reverseBits(18270i)), select(-vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-41346i, 1i) | vec2<i32>(-2147483647i, global0.a), true), ~firstTrailingBit(vec2<i32>(-11690i, global0.a)))) >> (vec2<u32>(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 64473u), vec3<u32>(u_input.c.x, 0u, 0u)), _wgslsmith_add_u32(0u, u_input.c.x)), 1u) % vec2<u32>(32u));
    let var_1 = true;
    var_0 = vec2<i32>(var_0.x, -1i);
    global0 = Struct_3(-2307i);
    global0 = Struct_3(-30451i);
    return vec4<i32>(~(-38651i), var_0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(countOneBits(select(vec2<i32>(2147483647i, var_0.x), vec2<i32>(global0.a, 43362i), true)), ~vec2<i32>(2147483647i, global0.a) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))), ~(-12840i)), global0.a);
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> vec3<f32> {
    global0 = Struct_3(arg_0);
    global0 = Struct_3(abs(arg_0));
    global1 = array<bool, 19>();
    let var_0 = Struct_1(!all(!select(vec4<bool>(false, arg_2, false, true), vec4<bool>(global1[_wgslsmith_index_u32(28690u, 19u)], true, false, true), false)), arg_1.xx, arg_3, vec3<u32>(func_3(false, Struct_3(u_input.b), Struct_3(arg_0)), func_2(_wgslsmith_add_u32(u_input.c.x, u_input.a.x), Struct_3(global0.a), Struct_3(8575i)).d.x, 4294967295u) >> (~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 20353u, u_input.a.x))) % vec3<u32>(32u)), any(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 19u)]), vec3<bool>(false, false, true), false)) || select(arg_2, global1[_wgslsmith_index_u32(u_input.c.x, 19u)], all(!vec3<bool>(arg_2, true, global1[_wgslsmith_index_u32(0u, 19u)]))));
    global1 = array<bool, 19>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(651f, var_0.c, -1475f) + vec3<f32>(var_0.c, 781f, arg_3)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, arg_3, -694f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c) * vec3<f32>(var_0.c, arg_3, -1441f)), vec3<bool>(true, false, false))), global1[_wgslsmith_index_u32(~var_0.d.x, 19u)] | !global1[_wgslsmith_index_u32(u_input.c.x, 19u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, 1000f, var_0.c)))), vec3<f32>(arg_3, var_0.c, 805f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, func_2(79223u, Struct_3(arg_0), Struct_3(-2147483647i)).c, _wgslsmith_f_op_f32(f32(-1f) * -291f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, arg_3, -393f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(23439i, ~func_4(func_1(~vec4<u32>(0u, u_input.c.x, 4294967295u, 28301u), Struct_2(1878f), Struct_2(1000f))), global1[_wgslsmith_index_u32(4294967295u, 19u)], 273f));
    let var_1 = func_2(countOneBits(u_input.c.x), Struct_3(14768i), Struct_3(2147483647i));
    var var_2 = Struct_3(-(~(~(-2147483647i))));
    var var_3 = Struct_3(2147483647i);
    global0 = Struct_3(reverseBits(~(-global0.a >> (_wgslsmith_mult_u32(var_1.d.x, var_1.d.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), -868f, var_0.x), var_2.a << (1u % 32u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, -153f, _wgslsmith_f_op_f32(min(-242f, -1045f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c - 1000f), func_1(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), Struct_2(var_1.c), Struct_2(var_1.c)).a))))), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(5449u, var_1.d.x, 1u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.x, 4294967295u, u_input.c.x, 36048u), vec4<u32>(1u, var_1.d.x, var_1.d.x, 12646u), vec4<u32>(15778u, 1072u, u_input.c.x, 0u)), !vec4<bool>(false, global1[_wgslsmith_index_u32(32548u, 19u)], false, global1[_wgslsmith_index_u32(1u, 19u)])), ~vec4<u32>(u_input.a.x, 0u, ~0u, var_1.d.x)));
}

