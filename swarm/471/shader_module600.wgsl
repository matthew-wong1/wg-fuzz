struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<bool, 30> = array<bool, 30>(true, true, true, false, false, true, false, false, true, false, true, false, false, true, true, true, true, true, true, false, false, true, true, true, true, true, false, true, true, false);

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> u32 {
    global2 = Struct_3(Struct_2(true, arg_2.c.a.b, 1u));
    let var_0 = ~_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(global2.a.b.d, arg_0, 0u, 0u), vec4<u32>(117920u, arg_2.a, u_input.a, arg_0) & vec4<u32>(1u, global2.a.c, arg_0, arg_2.a), !vec4<bool>(false, false, global2.a.a, global1[_wgslsmith_index_u32(arg_2.b.x, 30u)])), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.c.a.b.d, u_input.a, u_input.a, 72980u), vec4<u32>(arg_0, u_input.a, 1u, arg_0))), reverseBits(~(vec4<u32>(17731u, 0u, 6529u, arg_0) >> (vec4<u32>(u_input.a, 4606u, 0u, arg_0) % vec4<u32>(32u)))));
    let var_1 = Struct_2(false, global2.a.b, global2.a.c);
    global2 = arg_2.c;
    global1 = array<bool, 30>();
    return _wgslsmith_dot_vec3_u32(var_0.wxy, _wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, global2.a.b.d)), var_0.ywy));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    var var_0 = arg_1;
    var var_1 = vec2<bool>(!arg_2.a.a, true);
    let var_2 = Struct_3(var_0.c.a);
    var var_3 = arg_1.b;
    global0 = -48040i;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1031f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1796f, -487f) - _wgslsmith_f_op_f32(ceil(-357f)))));
}

fn func_1() -> u32 {
    global3 = array<Struct_3, 2>();
    var var_0 = -1337f;
    var var_1 = _wgslsmith_mod_vec3_u32(~min(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global2.a.b.d, u_input.a), select(vec3<u32>(global2.a.b.d, 0u, global2.a.c), vec3<u32>(u_input.a, u_input.a, global2.a.b.d), global2.a.b.b)), firstTrailingBit(vec3<u32>(31966u, 56777u, 102801u))), vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.a, 21387u, func_2(13547u, -365f, Struct_4(0u, vec2<u32>(12730u, 1u), global3[_wgslsmith_index_u32(global2.a.b.d, 2u)]))) | func_2(1u, _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(75354u, 2u)], Struct_4(3581u, vec2<u32>(15782u, 67230u), Struct_3(global2.a)), Struct_3(global2.a))), Struct_4(1u, vec2<u32>(u_input.a, global2.a.c), global3[_wgslsmith_index_u32(20886u, 2u)])), ~1u));
    var_1 = vec3<u32>(firstLeadingBit(4294967295u), ~firstLeadingBit(countOneBits(var_1.x)), ~0u);
    let var_2 = global3[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~var_1.x, u_input.a), u_input.a), 2u)];
    return ~var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(reverseBits(~(~2771u)), ~abs(4294967295u) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.a.c, 63953u), vec3<u32>(16698u, 1u, global2.a.b.d)), firstTrailingBit(28876u)) % 32u), all(select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], true, global1[_wgslsmith_index_u32(u_input.a, 30u)], true), vec4<bool>(global2.a.b.b, global1[_wgslsmith_index_u32(global2.a.b.d, 30u)], true, global1[_wgslsmith_index_u32(20119u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 30u)], true, false, global2.a.a)), !vec4<bool>(global2.a.b.b, global1[_wgslsmith_index_u32(120u, 30u)], false, global2.a.a), false))), u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.a.b.a.x, 0i, global2.a.b.a.x, 24544i) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, global2.a.b.d) % vec4<u32>(32u)), vec4<i32>(global2.a.b.a.x, -55257i, global2.a.b.c, -26114i) | firstLeadingBit(vec4<i32>(global2.a.b.c, global2.a.b.a.x, -2283i, global2.a.b.a.x))) > global2.a.b.a.x);
    let var_1 = _wgslsmith_add_u32(5735u, global2.a.c);
    let var_2 = !select(vec3<bool>(false, true, !all(vec3<bool>(true, global2.a.a, global2.a.b.b))), !(!(!vec3<bool>(global2.a.a, false, global1[_wgslsmith_index_u32(1u, 30u)]))), select(select(vec3<bool>(false, true, global2.a.a), !vec3<bool>(true, global2.a.b.b, global2.a.a), select(global1[_wgslsmith_index_u32(53598u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], global2.a.a)), vec3<bool>(true, true, !global2.a.a), true != all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1, 30u)]))));
    global0 = max(global2.a.b.c, firstLeadingBit(1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(870f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(273f + -421f) - _wgslsmith_f_op_f32(-149f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(554f)) * _wgslsmith_f_op_f32(973f + -464f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(306f, -212f, -103f), vec3<f32>(-556f, 168f, 659f), false)), vec3<f32>(254f, 2089f, -1180f)) * vec3<f32>(-958f, _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(floor(598f))))), global2.a.b.d, vec3<u32>(_wgslsmith_clamp_u32(1u, func_1(), 0u), 1u, ~u_input.a >> (_wgslsmith_mult_u32(0u, global2.a.c) % 32u)) | reverseBits(~countOneBits(vec3<u32>(global2.a.b.d, var_1, global2.a.b.d))));
}

