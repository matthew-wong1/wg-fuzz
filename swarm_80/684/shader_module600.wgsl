struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1000f, -1853f, -889f), i32(-2147483648));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(1884f, 1879f, 1170f), 11352i), Struct_1(vec3<f32>(-208f, -337f, -1641f), 17761i), Struct_1(vec3<f32>(594f, -1000f, 286f), -1i), Struct_1(vec3<f32>(807f, -337f, 1019f), 17371i));

var<private> global2: array<vec4<bool>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = 7632i;
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32((vec3<i32>(-1i, 36817i, -54056i) | vec3<i32>(45789i, global0.b, arg_1.b)) & countOneBits(vec3<i32>(global0.b, 27962i, -2147483647i)), reverseBits(-vec3<i32>(-49950i, -2147483647i, global0.b))), vec3<i32>(-17685i, global0.b, i32(-1i) * -2147483647i) & (firstTrailingBit(vec3<i32>(global0.b, -8730i, -1i)) << ((vec3<u32>(u_input.a, u_input.b.x, 4294967295u) & u_input.b.yyx) % vec3<u32>(32u)))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, -1i, global0.b, global0.b), vec4<i32>(18670i, arg_1.b, global0.b, -2342i)), _wgslsmith_div_i32(0i, arg_1.b), global0.b) & (max(~vec3<i32>(-18320i, arg_1.b, 44654i), ~vec3<i32>(1i, 1i, global0.b)) | ~select(vec3<i32>(-2147483647i, arg_1.b, global0.b), vec3<i32>(global0.b, arg_1.b, 2147483647i), vec3<bool>(true, false, false))));
    let var_2 = abs(vec4<u32>(u_input.a, firstLeadingBit(~(~u_input.b.x)), 4294967295u, ~u_input.b.x));
    global1 = array<Struct_1, 4>();
    var var_3 = ~vec2<u32>(~0u, 28699u);
    return -43517i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.a, arg_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_0.a.x, 1000f))))), ~min(arg_1.b, -2147483647i));
    var_0 = global1[_wgslsmith_index_u32(max(u_input.b.x, u_input.a), 4u)];
    global2 = array<vec4<bool>, 15>();
    var var_1 = _wgslsmith_clamp_vec4_i32(select(vec4<i32>(~min(global0.b, 43604i), func_3(vec4<f32>(-264f, arg_1.a.x, 1031f, 314f), arg_0), -1i, var_0.b), firstTrailingBit(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, arg_1.b, 48831i, arg_2.b), vec4<i32>(-13433i, 36715i, 2147483647i, global0.b), vec4<bool>(false, true, true, true)), vec4<i32>(-54050i, 72083i, 13419i, arg_2.b), vec4<i32>(2147483647i, 2147483647i, 0i, 1i))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), !global2[_wgslsmith_index_u32(4294967295u, 15u)])), ~(~(~reverseBits(vec4<i32>(-1i, -69650i, arg_2.b, -33853i)))), ~_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(global0.b, -1i, 2147483647i, 0i)), select(vec4<i32>(-73040i, var_0.b, -1i, 0i), vec4<i32>(-1i, arg_0.b, 1i, arg_2.b), select(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], vec4<bool>(true, false, false, false), false))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.a.x, arg_0.a.x, global0.a.x), _wgslsmith_f_op_vec3_f32(exp2(var_0.a)))), 40564i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(249f + _wgslsmith_f_op_f32(min(var_2.a.x, arg_0.a.x))) - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -649f)))) * -1000f);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_1(vec3<f32>(-828f, _wgslsmith_f_op_f32(func_2(arg_1, global1[_wgslsmith_index_u32(~(~u_input.a), 4u)], Struct_1(arg_1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2.x, -2147483647i), vec3<i32>(-11953i, arg_1.b, global0.b))))), 1f), _wgslsmith_sub_i32(-arg_2.x, -1i));
    let var_1 = 1i;
    let var_2 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.a, firstLeadingBit(~u_input.b.x), u_input.a) >> (0u % 32u), ~(~((u_input.a ^ 0u) >> (_wgslsmith_mod_u32(u_input.b.x, 4294967295u) % 32u))));
    global0 = arg_1;
    let var_3 = arg_1;
    return all(select(!select(arg_3, arg_3, false), arg_3, vec3<bool>(arg_3.x, (var_0.b >> (var_2 % 32u)) > var_1, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false != !(!func_1(global0.b < global0.b, global1[_wgslsmith_index_u32(0u, 4u)], ~vec3<i32>(global0.b, global0.b, -19116i), vec3<bool>(true, false, true)));
    var var_1 = any(select(select(!select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(true, var_0)), vec2<bool>(true, true), var_0), select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, var_0), vec2<bool>(false, false))), !select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), var_0), !(-44572i != global0.b)), vec2<bool>(~0u > ~u_input.b.x, !all(global2[_wgslsmith_index_u32(21478u, 15u)]))));
    let var_2 = (1i & global0.b) >= (-17846i ^ func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -1000f, -1079f))), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), countOneBits(-1i))));
    global1 = array<Struct_1, 4>();
    let var_3 = 2147483647i << (reverseBits(countOneBits(~4294967295u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(68631u, 0u))) % 32u)) % 32u);
    var var_4 = global1[_wgslsmith_index_u32(u_input.a, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(~firstLeadingBit(u_input.b.x), ~41842u), u_input.a, select(4294967295u, 16697u, all(select(vec3<bool>(var_2, false, false), vec3<bool>(true, var_0, true), false)))), ~vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 0u, 0u, 0u)))), 214f);
}

