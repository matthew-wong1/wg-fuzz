struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1096f), Struct_1(-798f), Struct_1(240f), Struct_1(896f));

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(511f, -893f, -1238f, -635f), vec4<f32>(815f, -1045f, 1000f, -625f), vec4<f32>(-265f, -547f, -1000f, 227f), vec4<f32>(694f, 733f, 1141f, -1532f), vec4<f32>(1121f, -1563f, 534f, -1000f), vec4<f32>(880f, -382f, -506f, 884f), vec4<f32>(337f, 607f, 426f, -652f), vec4<f32>(-262f, -817f, 371f, -1000f), vec4<f32>(1649f, -896f, 1000f, 473f), vec4<f32>(164f, -550f, -752f, 1418f), vec4<f32>(-442f, 1000f, 1495f, -1183f), vec4<f32>(-741f, -842f, -1773f, 937f));

var<private> global2: array<u32, 18>;

var<private> global3: array<i32, 22>;

var<private> global4: array<bool, 26> = array<bool, 26>(true, false, false, true, false, false, false, true, true, false, false, false, false, true, true, false, false, true, true, false, true, false, false, false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global2 = array<u32, 18>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 18u)];
    global4 = array<bool, 26>();
    global2 = array<u32, 18>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 4u)];
    return vec3<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(22798u, u_input.a.x), u_input.a), arg_0, any(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global4[_wgslsmith_index_u32(arg_0, 26u)], global4[_wgslsmith_index_u32(10340u, 26u)]))), ~(global2[_wgslsmith_index_u32(arg_0, 18u)] & arg_0))), _wgslsmith_dot_vec3_u32(reverseBits(~(~vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(arg_0, 18u)], 4294967295u))), vec3<u32>(0u, _wgslsmith_clamp_u32(~44163u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), arg_0 >> (global2[_wgslsmith_index_u32(u_input.a.x, 18u)] % 32u)), 6571u)), ~(~arg_0));
}

fn func_2() -> vec4<bool> {
    global0 = array<Struct_1, 4>();
    let var_0 = ~_wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(8137u, u_input.a.x, u_input.a.x) << (vec3<u32>(1u, 6302u, u_input.a.x) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(44818u, global2[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a.x), vec3<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 18u)])))), func_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(13989u << (global2[_wgslsmith_index_u32(u_input.a.x, 18u)] % 32u), min(21829u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57626u, 18u)], 18u)]), ~u_input.a.x), 18u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(30063u, u_input.a.x), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 0u, global4[_wgslsmith_index_u32(u_input.a.x, 26u)]), u_input.a.x), 4u)]));
    let var_1 = global0[_wgslsmith_index_u32(abs(u_input.a.x), 4u)];
    var var_2 = global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(48506u, 18u)], 4u)];
    let var_3 = Struct_1(-656f);
    return vec4<bool>(!all(vec2<bool>(true, global4[_wgslsmith_index_u32(42274u, 26u)])) & true, true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global4[_wgslsmith_index_u32(1u, 26u)], true)), select(vec2<bool>(false, global4[_wgslsmith_index_u32(var_0.x, 26u)]), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))) && global4[_wgslsmith_index_u32(u_input.a.x, 26u)], 0i < -u_input.b.x);
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = func_2();
    let var_1 = vec3<u32>(select(12755u, 1u, any(!select(vec2<bool>(false, var_0.x), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 26u)], global4[_wgslsmith_index_u32(u_input.a.x, 26u)]), false))), ~arg_0, ~1u | u_input.a.x);
    var var_2 = var_1 << (func_3(4294967295u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(366f, -813f) - _wgslsmith_f_op_f32(-1544f + 123f))), global0[_wgslsmith_index_u32(min(arg_0, _wgslsmith_mult_u32(arg_0, 1u)), 4u)]) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)))));
    var var_4 = 1i;
    return -1000f;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 4>();
    global3 = array<i32, 22>();
    global4 = array<bool, 26>();
    let var_0 = arg_2.a;
    var var_1 = reverseBits(vec2<u32>(34968u, ~firstTrailingBit(_wgslsmith_mult_u32(3536u, u_input.a.x))));
    return global0[_wgslsmith_index_u32(var_1.x, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1293f, -2229f, -574f) * vec3<f32>(122f, -361f, 274f))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(56237u, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1288f * -514f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-512f, -1000f)))))), !global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)] << ((_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], u_input.a.x) ^ abs(u_input.a.x)) % 32u), 18u)], 4u)], Struct_1(384f));
    let var_1 = abs(abs(abs(vec2<i32>(-u_input.b.x, 0i))));
    var var_2 = var_0;
    var var_3 = min(1i, -firstTrailingBit(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], -2147483647i))) | -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_0.a, var_0.a);
}

