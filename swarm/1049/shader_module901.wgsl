struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25>;

var<private> global1: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(174f, 617f, -1577f), vec3<f32>(1000f, 550f, 1229f), vec3<f32>(-332f, -2045f, -409f), vec3<f32>(402f, -213f, -1203f), vec3<f32>(1000f, -764f, -102f), vec3<f32>(618f, -851f, -348f), vec3<f32>(879f, -617f, 837f), vec3<f32>(-2025f, 191f, 358f), vec3<f32>(-103f, 412f, -728f));

var<private> global2: array<u32, 24> = array<u32, 24>(4294967295u, 4294967295u, 0u, 82602u, 58072u, 1u, 78803u, 23849u, 1u, 118989u, 62943u, 27120u, 4294967295u, 206u, 52335u, 25779u, 66346u, 69116u, 4294967295u, 91341u, 1u, 1u, 6241u, 53958u);

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(vec3<u32>(0u, u_input.e, _wgslsmith_dot_vec4_u32(min(~arg_2, arg_2), ~arg_2 << (arg_2 % vec4<u32>(32u)))));
    var var_1 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.a, vec3<u32>(u_input.e, global2[_wgslsmith_index_u32(arg_2.x, 24u)], 1u)), var_0.a) & (vec3<u32>(~0u, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21267u, 24u)], 24u)], 24u)], _wgslsmith_div_u32(47741u, u_input.e)) & ((var_0.a >> (arg_2.wxw % vec3<u32>(32u))) | vec3<u32>(arg_0, 46775u, global2[_wgslsmith_index_u32(var_0.a.x, 24u)]))));
    return 16959u;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = false;
    let var_1 = arg_0.a >> (~vec3<u32>(reverseBits(global2[_wgslsmith_index_u32(func_3(u_input.e, arg_0.a.yy, vec4<u32>(0u, u_input.e, arg_0.a.x, arg_0.a.x), var_0), 24u)]), arg_0.a.x, u_input.e) % vec3<u32>(32u));
    global1 = array<vec3<f32>, 9>();
    global3 = select(!vec4<bool>(arg_1, global3.x, all(vec3<bool>(false, true, arg_1)), !any(vec2<bool>(true, false))), select(select(select(!vec4<bool>(true, arg_1, var_0, global3.x), !vec4<bool>(true, true, global3.x, true), select(vec4<bool>(arg_1, arg_1, arg_1, var_0), vec4<bool>(true, false, arg_1, true), vec4<bool>(true, var_0, var_0, true))), select(select(vec4<bool>(false, true, arg_1, var_0), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, var_0, arg_1, false)), vec4<bool>(global3.x, false, false, arg_1), true), select(vec4<bool>(var_0, var_0, arg_1, true), !vec4<bool>(arg_1, var_0, true, false), true)), !select(vec4<bool>(global3.x, true, var_0, global3.x), select(vec4<bool>(global3.x, true, true, true), vec4<bool>(false, arg_1, false, false), vec4<bool>(var_0, false, var_0, global3.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(var_0, false, global3.x, global3.x), vec4<bool>(global3.x, arg_1, arg_1, var_0))), select(!select(vec4<bool>(true, true, global3.x, true), vec4<bool>(true, global3.x, arg_1, arg_1), vec4<bool>(false, false, true, arg_1)), vec4<bool>(true, -40380i == u_input.b.x, u_input.d <= u_input.b.x, true), !(!vec4<bool>(arg_1, true, false, var_0)))), !select(vec4<bool>(true, global3.x, true, arg_1), !select(vec4<bool>(global3.x, arg_1, var_0, true), vec4<bool>(true, false, var_0, global3.x), arg_1), -456f != _wgslsmith_f_op_f32(select(-130f, 569f, true))));
    global0 = array<vec3<i32>, 25>();
    return any(select(!vec4<bool>(arg_1, all(vec4<bool>(arg_1, true, true, true)), true, all(vec3<bool>(arg_1, true, var_0))), vec4<bool>(_wgslsmith_f_op_f32(floor(663f)) <= _wgslsmith_div_f32(1229f, 466f), select(var_0, true, true), true, all(select(global3.zz, vec2<bool>(true, false), false))), !var_0));
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(vec3<u32>(select(_wgslsmith_mult_u32(reverseBits(4294967295u), firstLeadingBit(u_input.e)), u_input.e, func_2(Struct_1(vec3<u32>(99705u, 0u, u_input.e)), false)), 1u, 51613u >> (u_input.e % 32u)));
    global3 = !vec4<bool>(global3.x, any(global3.wy), false, any(vec4<bool>(any(vec3<bool>(true, true, true)), func_2(Struct_1(vec3<u32>(u_input.e, 1u, 1u)), false), true, false)));
    global1 = array<vec3<f32>, 9>();
    let var_1 = _wgslsmith_mult_i32(firstTrailingBit(max(~(-40338i), _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(-16932i, 10656i)))), max(-(~u_input.d), select(u_input.a.x, firstLeadingBit(1i), true))) >= 1i;
    let var_2 = 1243f;
    return u_input.a.xx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 25>();
    let var_0 = func_1();
    var var_1 = Struct_1(vec3<u32>(select(global2[_wgslsmith_index_u32(~firstTrailingBit(u_input.e), 24u)], _wgslsmith_add_u32(~53039u, ~u_input.e), any(select(global3.xxz, vec3<bool>(true, false, global3.x), vec3<bool>(global3.x, true, false)))), 101488u, 70057u));
    let var_2 = Struct_1(var_1.a);
    global2 = array<u32, 24>();
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-986f, _wgslsmith_f_op_f32(386f - _wgslsmith_f_op_f32(-485f - -1965f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -136f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-669f)), -1212f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -(select(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(91141u, 24u)], 25u)], vec3<i32>(21253i, var_0.x, -1i), select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(true, global3.x, true), global3.wwy)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a.x, 24u)], 24u)], global2[_wgslsmith_index_u32(u_input.e, 24u)]), vec3<u32>(u_input.e, var_1.a.x, var_1.a.x)) % vec3<u32>(32u))));
}

