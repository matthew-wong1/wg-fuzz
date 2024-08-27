struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(40217u, 0u, 4294967295u), vec3<u32>(4294967295u, 989u, 43112u), vec3<u32>(0u, 20671u, 4294967295u), vec3<u32>(4294967295u, 41195u, 24559u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 84643u, 6318u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(73901u, 1u, 0u), vec3<u32>(0u, 47639u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 27748u, 1u), vec3<u32>(35004u, 903u, 29547u), vec3<u32>(658u, 8246u, 52920u), vec3<u32>(67367u, 0u, 4294967295u), vec3<u32>(68949u, 18644u, 0u), vec3<u32>(42112u, 0u, 1u), vec3<u32>(11517u, 32000u, 4294967295u), vec3<u32>(3985u, 4294967295u, 33255u), vec3<u32>(28026u, 17881u, 37902u), vec3<u32>(16190u, 0u, 52109u), vec3<u32>(44079u, 16428u, 28056u));

var<private> global1: array<f32, 14> = array<f32, 14>(216f, 836f, 300f, -1569f, -544f, -379f, -1188f, -640f, -484f, 139f, 1000f, 106f, 254f, -921f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> bool {
    return false;
}

fn func_3() -> vec3<bool> {
    var var_0 = any(vec4<bool>((all(vec2<bool>(false, true)) && true) && true, false, (_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(-61499i, u_input.a.x)) > -26238i) | true, ~u_input.c <= _wgslsmith_add_u32(u_input.d, 0u)));
    let var_1 = Struct_1(43828u);
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(38293u, firstTrailingBit(~u_input.d), abs(var_2.a)), 14u)]))));
    var_0 = false;
    return vec3<bool>(true, any(vec3<bool>(true, all(vec2<bool>(false, false)), false)), true || select(true | all(vec2<bool>(true, false)), false, func_2(-575f, 35436u, true, var_1)));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = select(vec3<bool>(all(vec2<bool>(true, true)), ~(u_input.c << (u_input.d % 32u)) != ~1u, select(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), !all(vec3<bool>(true, false, true)), select(true, func_2(-384f, 35872u, false, Struct_1(22900u)), true))), func_3(), vec3<bool>(true, !all(vec4<bool>(false, false, true, true)), !all(vec2<bool>(true, true))));
    let var_1 = func_2(global1[_wgslsmith_index_u32(~3362u, 14u)], _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6867u, abs(1u)), select(abs(vec2<u32>(60927u, u_input.d)), ~vec2<u32>(0u, u_input.d), false)), u_input.c), !(!(!var_0.x)), Struct_1(48822u));
    var var_2 = Struct_1(abs(_wgslsmith_clamp_u32(43097u, u_input.c, ~58684u)));
    let var_3 = !vec3<bool>(var_0.x, 863f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_2.a, 14u)], -1000f)) * _wgslsmith_f_op_f32(trunc(arg_0.x))), all(select(!vec3<bool>(var_0.x, var_1, false), select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_1, false), vec3<bool>(var_0.x, true, false)), func_3())));
    var var_4 = u_input.e.x;
    return min(min(min(~1u, 0u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.c, 0u), ~global0[_wgslsmith_index_u32(5066u, 22u)]), 52091u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(max(vec2<u32>(1u, var_2.a), vec2<u32>(u_input.d, 0u)), ~vec2<u32>(153876u, 1u), !var_3.yy), vec2<u32>(var_2.a, u_input.c) & ~vec2<u32>(36382u, u_input.d)), ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 22>();
    let var_0 = Struct_1(0u);
    let var_1 = select(select(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false)), !any(vec3<bool>(true, true, true))), vec2<bool>(-1881f < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a, 14u)]), false), vec2<bool>(true && (global1[_wgslsmith_index_u32(25771u, 14u)] <= 1464f), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.d <= func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(22214u, 14u)]), vec3<f32>(1000f, -107f, -2397f)))), vec2<bool>(true | any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    global1 = array<f32, 14>();
    let var_2 = Struct_1(65356u);
    var var_3 = select(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(firstTrailingBit(reverseBits(-1i)), u_input.b.x, 0i)), firstLeadingBit(-(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.b.x, -3754i))), select(vec3<bool>(true, var_1.x, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, var_1.x, var_1.x), true), !select(func_3(), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 1u);
}

