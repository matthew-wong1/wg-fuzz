struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1000f, 0u);

var<private> global1: array<u32, 15> = array<u32, 15>(49896u, 20231u, 28855u, 0u, 40374u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 0u, 43313u, 0u, 0u, 0u, 145650u);

var<private> global2: vec3<bool>;

var<private> global3: vec4<bool>;

var<private> global4: Struct_1 = Struct_1(-270f, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = vec4<i32>(u_input.e.x, -2147483647i, 0i, 2147483647i);
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.a, global0.a) + _wgslsmith_f_op_f32(trunc(-1000f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_dot_vec2_u32(~(~u_input.d.xz), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.d.x) << (1u % 32u), select(~11032u, u_input.b, global2.x))));
    global2 = select(global3.yxy, vec3<bool>(all(vec3<bool>(any(vec4<bool>(true, global3.x, true, global3.x)), !global3.x, global2.x)), true, global3.x), global3.xxy);
    var var_1 = abs(vec2<u32>(4294967295u, u_input.c));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a + 585f))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -423f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
    return vec3<i32>(var_0.x, 0i, var_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    let var_0 = abs(func_3(Struct_1(-946f, ~(~global0.b))));
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(min(select(reverseBits(vec4<u32>(arg_1.b, 32564u, global1[_wgslsmith_index_u32(arg_1.b, 15u)], 4294967295u)), vec4<u32>(0u, 39560u, 22380u, 6520u), select(global2.x, false, global3.x)), ~vec4<u32>(41493u, 1u, 4294967295u, global0.b) >> (firstTrailingBit(vec4<u32>(22606u, arg_0.b, global4.b, arg_1.b)) % vec4<u32>(32u))), countOneBits(max(~vec4<u32>(4294967295u, 1u, 18657u, global1[_wgslsmith_index_u32(4294967295u, 15u)]), firstLeadingBit(vec4<u32>(9356u, 15046u, arg_1.b, 16429u))))), reverseBits(abs(vec4<u32>(global4.b, 1u, ~arg_0.b, ~34611u))));
    global4 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-3059f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -546f))))))), arg_0.b << (_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 35175u, arg_1.b, 4294967295u), vec4<u32>(1u, 0u, global4.b, 4294967295u)), vec4<u32>(1u, reverseBits(1u), global4.b, global1[_wgslsmith_index_u32(abs(arg_1.b), 15u)])) % 32u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.a))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)) * 1191f)), arg_3.x, arg_2.a);
    global1 = array<u32, 15>();
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = -19211i > ~_wgslsmith_mod_i32(abs(u_input.a) << (25791u % 32u), 37845i);
    var var_1 = Struct_1(-203f, ~(~_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(33573u, global0.b, u_input.d.x))));
    var_0 = !any(select(vec4<bool>(-32594i > u_input.a, any(global3.yxy), func_2(Struct_1(-289f, global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), Struct_1(-762f, 7152u), Struct_1(708f, global0.b), vec3<f32>(1213f, 338f, 1371f)), true), !(!vec4<bool>(global3.x, false, global2.x, false)), !(global2.x & false)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(global1[_wgslsmith_index_u32(global4.b, 15u)]), global4.b, 33053u), ~countOneBits(u_input.d)));
    var var_3 = _wgslsmith_clamp_vec3_i32(-abs(-vec3<i32>(1i, -2147483647i, 29947i)), vec3<i32>(-1i) * -vec3<i32>(~(-32810i), u_input.e.x, ~0i), min(vec3<i32>(62058i, -32530i, -u_input.a), max(vec3<i32>(2147483647i, u_input.e.x, 0i) ^ vec3<i32>(u_input.a, 2147483647i, u_input.e.x), vec3<i32>(u_input.a, u_input.a, -2147483647i) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)) | vec3<i32>(1i, u_input.e.x, ~(-51548i))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1010f, _wgslsmith_add_u32(countOneBits(max(firstLeadingBit(u_input.b), global1[_wgslsmith_index_u32(1u, 15u)] >> (global1[_wgslsmith_index_u32(1u, 15u)] % 32u))), 10636u));
}

