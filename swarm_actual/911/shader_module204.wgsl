struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_1 = Struct_1(1u);

var<private> global2: vec2<i32> = vec2<i32>(0i, -62521i);

var<private> global3: f32;

var<private> global4: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-575f, 1037f), vec2<f32>(-1625f, 287f), vec2<f32>(-336f, 1231f), vec2<f32>(-106f, 397f), vec2<f32>(1127f, -165f), vec2<f32>(201f, 495f), vec2<f32>(1087f, 1473f), vec2<f32>(-147f, -459f), vec2<f32>(-1243f, -439f), vec2<f32>(374f, 1237f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = !select(vec3<bool>(true, all(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))), vec3<bool>(true, true, true), vec3<bool>(false, true, true));
    var var_1 = Struct_2(~vec3<u32>(~_wgslsmith_clamp_u32(global1.a, u_input.d, u_input.b), (10916u >> (arg_0 % 32u)) ^ max(u_input.a, 546u), select(global1.a, u_input.b >> (45466u % 32u), true)), max(firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 4294967295u)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(39117u, global1.a, 4294967295u), vec3<u32>(global1.a, 3113u, u_input.b)) % vec3<u32>(32u)), vec3<u32>(6656u, 34491u, 1u)), reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, u_input.e, -1i, u_input.c.x), vec4<i32>(2147483647i, 15211i, u_input.c.x, u_input.e)) >> (select(vec4<u32>(u_input.b, 34792u, u_input.a, 0u) & vec4<u32>(4294967295u, 16526u, arg_0, u_input.a), vec4<u32>(global1.a, u_input.a, global1.a, global1.a), false) % vec4<u32>(32u))), !(!select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, true, true, false), var_0.x), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, true, var_0.x, var_0.x), false), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x))), Struct_1(~_wgslsmith_sub_u32(2421u, abs(arg_0))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-448f)) + -472f), -1074f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(556f, -1838f))) + -699f) * _wgslsmith_f_op_f32(ceil(1353f))));
    let var_3 = min(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(59626u, 39438u, 1u)), _wgslsmith_mod_vec3_u32(var_1.a, var_1.b)), var_1.b), ~_wgslsmith_clamp_u32(var_1.a.x, countOneBits(0u), u_input.d)), var_1.a.yx);
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(48522u, u_input.d, _wgslsmith_mult_u32(u_input.b, ~arg_0)), 4u)];
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> f32 {
    global4 = array<vec2<f32>, 10>();
    let var_0 = global0[_wgslsmith_index_u32(~(~arg_0.a.x), 4u)];
    let var_1 = !(func_3(70533u) | arg_1);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1017f), -680f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(226f))), !(!var_0.d.x))), 760f));
    var var_2 = false;
    return _wgslsmith_f_op_f32(f32(-1f) * -941f);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(1u, 4u)], true)))));
    global1 = arg_3;
    global2 = abs(select(~vec2<i32>(~20035i, -33767i), u_input.c, true));
    global1 = Struct_1(select(104058u, ~1u, false) << (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 98194u, 48220u), vec3<u32>(arg_3.a, global1.a, 21602u))) % 32u));
    global2 = _wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(~firstLeadingBit(2147483647i << (arg_3.a % 32u)), countOneBits(20100i)));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -40255i;
    let var_1 = u_input.d;
    var var_2 = func_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), false), Struct_1(34357u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1112f), _wgslsmith_f_op_f32(max(-511f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1720f)), _wgslsmith_f_op_f32(f32(-1f) * -1362f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f))), Struct_1(_wgslsmith_mult_u32(abs(var_1), _wgslsmith_add_u32(~global1.a, firstTrailingBit(global1.a)))));
    let var_3 = global0[_wgslsmith_index_u32(~u_input.b, 4u)];
    global0 = array<Struct_2, 4>();
    var var_4 = (u_input.c >> (_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, u_input.b)) ^ min(var_3.b.yz, var_3.b.xz), var_3.b.zx) % vec2<u32>(32u))) << (var_3.b.xy % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_f32(step(1143f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-521f * 768f) + _wgslsmith_f_op_f32(abs(-300f))))))));
}

