struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global2: array<u32, 30>;

var<private> global3: array<u32, 28> = array<u32, 28>(64553u, 14356u, 26782u, 0u, 40293u, 1u, 0u, 3996u, 64398u, 0u, 4294967295u, 73720u, 35293u, 110268u, 87636u, 2025u, 0u, 2437u, 1u, 4294967295u, 1u, 1u, 1642u, 4294967295u, 0u, 4294967295u, 1u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> bool {
    return false;
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> bool {
    var var_0 = arg_0.a;
    global3 = array<u32, 28>();
    let var_1 = arg_0;
    global3 = array<u32, 28>();
    let var_2 = var_1.a.a;
    return all(!vec3<bool>(select(arg_0.b.x | arg_1, var_0.b < -1416f, false), false, u_input.b <= global3[_wgslsmith_index_u32(~4294967295u, 28u)]));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(arg_2 - -672f))))) + vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1819f - arg_0.b) - arg_1.b), global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * 496f)))));
    let var_1 = vec2<bool>(!(!func_2(abs(1u), 17219u, global0.x)), all(!vec3<bool>(false, global0.x, false)) && func_3(Struct_3(Struct_2(arg_1.a, -121f), !vec4<bool>(global0.x, global0.x, global0.x, true), u_input.a, 1147f), global0.x, _wgslsmith_add_vec2_u32(~vec2<u32>(42470u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 30u)], 30u)], 28u)], 30u)]), vec2<u32>(u_input.b, u_input.b)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(66673u, 28u)] | 34498u, 4294967295u), 30u)]));
    let var_2 = Struct_3(Struct_2(arg_1.a, 1771f), select(vec4<bool>(-1i != countOneBits(u_input.a.x), select(true, all(vec4<bool>(true, true, true, false)), global0.x), true, var_1.x), select(!vec4<bool>(global0.x, global0.x, global0.x, true), select(select(vec4<bool>(var_1.x, global0.x, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, true)), !vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(false, global0.x, false, var_1.x)), !(!vec4<bool>(true, var_1.x, true, global0.x))), !vec4<bool>(true, false, -3089i > u_input.d.x, false)), vec4<i32>(~u_input.d.x, u_input.a.x, 25841i, firstLeadingBit(~(-u_input.d.x))), 201f);
    return arg_0.a;
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1461f) - _wgslsmith_f_op_f32(-520f - 2310f)) * -1698f));
    return countOneBits(~_wgslsmith_sub_i32(u_input.c, ~u_input.a.x)) == u_input.c;
}

fn func_5(arg_0: vec2<bool>) -> vec2<bool> {
    global0 = arg_0;
    global1 = array<vec3<bool>, 22>();
    let var_0 = _wgslsmith_clamp_vec2_i32(-u_input.a.wx, u_input.d.xy, firstLeadingBit(~firstTrailingBit(u_input.d.zx)));
    var var_1 = ~vec3<u32>(firstLeadingBit(firstLeadingBit(85815u)), _wgslsmith_sub_u32(firstLeadingBit(u_input.b), u_input.b), firstTrailingBit((global2[_wgslsmith_index_u32(u_input.b, 30u)] & global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28460u, 28u)], 30u)]) ^ abs(global3[_wgslsmith_index_u32(29221u, 28u)])));
    global2 = array<u32, 30>();
    return select(arg_0, !vec2<bool>(!global0.x, true), !arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 22>();
    global0 = !func_5(select(vec2<bool>(!global0.x, global0.x), select(vec2<bool>(true, true), select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), false), !vec2<bool>(true, global0.x)), func_4(func_1(Struct_2(Struct_1(-258f), -422f), Struct_2(Struct_1(-2149f), -289f), 838f))));
    global0 = !select(func_5(vec2<bool>(any(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 28u)], 22u)]), true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false)), !select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), global0.x)), vec2<bool>(true, true));
    var var_0 = func_1(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 210f), Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(-1142f + 779f))), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f)));
    global1 = array<vec3<bool>, 22>();
    let var_1 = select(!(!(!(!vec4<bool>(global0.x, false, global0.x, false)))), vec4<bool>(global0.x, true, any(select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !vec4<bool>(false, global0.x, false, true), !global0.x)), global0.x), vec4<bool>(false, any(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !global0.x, func_3(Struct_3(Struct_2(Struct_1(633f), 2752f), select(vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, global0.x, true, true), true), ~vec4<i32>(u_input.c, u_input.d.x, u_input.a.x, 31423i), _wgslsmith_div_f32(-1703f, var_0.a)), func_5(vec2<bool>(global0.x, global0.x)).x, ~reverseBits(vec2<u32>(53872u, 4294967295u)), 4294967295u)));
    global0 = var_1.wz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u << (1u % 32u), 1u, ~countOneBits(1u), ~1u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1889f, 967f, -321f), vec3<f32>(var_0.a, var_0.a, var_0.a)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1000f, 235f)) - vec3<f32>(var_0.a, 151f, -1000f))))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], u_input.b), vec2<u32>(39039u, 38197u)), vec2<u32>(_wgslsmith_add_u32(61024u, 23734u), u_input.b)), max(1u, _wgslsmith_clamp_u32(u_input.b << (60367u % 32u), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global3[_wgslsmith_index_u32(11315u, 28u)], global3[_wgslsmith_index_u32(35467u, 28u)]))))));
}

