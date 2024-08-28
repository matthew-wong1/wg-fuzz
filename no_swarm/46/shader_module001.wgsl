struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(934f, 1000f, -129f, 506f, -910f, -969f, -1012f, -637f, -2017f, -402f, -1712f, 1245f, -968f, -914f, 588f, 221f, -212f, 1000f, -1000f, 299f, -528f, -1741f, 898f, 179f, 1000f, 1000f, 154f, 958f, -2111f, 1155f, 243f, 815f);

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = (~min(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, 1i), vec4<i32>(-2147483647i, 32881i, u_input.a, -14209i))) >= _wgslsmith_clamp_i32(u_input.c, -(~u_input.b), -14157i)) | any(arg_0);
    var var_1 = Struct_2(all(select(select(vec2<bool>(var_0, arg_0.x), vec2<bool>(false, false), arg_0.yz), arg_0.xy, false)));
    global0 = array<f32, 32>();
    var var_2 = global1[_wgslsmith_index_u32(1u, 5u)];
    var_1 = Struct_2(true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, u_input.d), 32u)] + global0[_wgslsmith_index_u32(49267u, 32u)]), _wgslsmith_div_f32(-207f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(46582u, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)])))));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = !(!select(vec2<bool>(select(true, true, true), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec3<bool>(true, false, var_0.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1157f)), _wgslsmith_f_op_f32(abs(-179f)))), 1000f))));
    var_0 = !vec2<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(u_input.d, arg_0, var_0.x), 32u)]) <= -644f, true);
    let var_2 = !(!vec4<bool>(!(!var_0.x), ~u_input.d >= ~u_input.d, all(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x))), !any(vec4<bool>(var_0.x, true, var_0.x, true))));
    global0 = array<f32, 32>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(abs(6218u), 32u)])) - global0[_wgslsmith_index_u32(u_input.d, 32u)]))), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 32u)])));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1100f, _wgslsmith_f_op_f32(func_2(116888u)), global0[_wgslsmith_index_u32(1u, 32u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_2, 32u)], -1178f, global0[_wgslsmith_index_u32(19526u, 32u)]) * vec3<f32>(547f, -517f, -401f))))))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]))), global0[_wgslsmith_index_u32(~(0u << (arg_1 % 32u)), 32u)], 2037f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1229f, var_0.x, var_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(11203u, 32u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1393f, global0[_wgslsmith_index_u32(arg_2, 32u)], var_0.x), vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(0u, 32u)], var_0.x), vec3<bool>(true, true, arg_0))) * vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 32u)], 1672f, 283f)))));
    var var_3 = var_1;
    let var_4 = global1[_wgslsmith_index_u32(1u, 5u)];
    return global1[_wgslsmith_index_u32(arg_2, 5u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<f32, 32>();
    let var_0 = ~countOneBits(-1i);
    var var_1 = !all(vec4<bool>(arg_1, true, !all(vec3<bool>(false, arg_1, true)), true));
    return vec3<u32>(1u, ~(~(~u_input.d)), u_input.d) | reverseBits(max(~vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(4294967295u, _wgslsmith_sub_u32(28704u, 0u), _wgslsmith_add_u32(9560u, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec3<u32>(~(~24300u), u_input.d, 0u), func_4(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), (global0[_wgslsmith_index_u32(46261u, 32u)] < global0[_wgslsmith_index_u32(u_input.d, 32u)]) || true, func_1(all(vec2<bool>(true, false)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(28773u, 0u), vec2<u32>(4294967295u, 4294967295u))))) & vec3<u32>(37930u, ~(~u_input.d ^ max(u_input.d, u_input.d)), _wgslsmith_add_u32(select(u_input.d, 6367u >> (0u % 32u), true), _wgslsmith_div_u32(~u_input.d, 1481u)));
    var var_1 = -2040f;
    let var_2 = vec4<bool>(!(!(all(vec2<bool>(false, false)) | true)), !select(true, !func_1(true, var_0.x, 4294967295u).d.x, any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), _wgslsmith_add_u32(~(var_0.x ^ 34596u), u_input.d ^ var_0.x) < ~1u, select(false, true, any(vec3<bool>(u_input.c <= u_input.c, true, true))));
    var var_3 = Struct_3(Struct_1(true, ~(~vec4<i32>(u_input.a, 1i, u_input.b, 0i)), ~u_input.a, var_2, u_input.c), global0[_wgslsmith_index_u32(min(~6011u, _wgslsmith_sub_u32(var_0.x, _wgslsmith_sub_u32(1u, u_input.d))), 32u)], -(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, 2147483647i, -13262i), vec3<i32>(u_input.b, u_input.b, 29670i) & vec3<i32>(u_input.c, -2147483647i, u_input.b)) & ~vec3<i32>(-444i, 25558i, u_input.c)), global1[_wgslsmith_index_u32(var_0.x, 5u)]);
    let var_4 = select(-var_3.a.b.wwx, ~(-var_3.d.b.xyw), select(!func_1(func_1(var_2.x, 36843u, 15598u).d.x, ~0u, 1u).d.xxy, !select(select(vec3<bool>(var_2.x, false, var_3.a.d.x), var_2.wwz, false), select(vec3<bool>(var_3.a.a, true, true), vec3<bool>(true, true, var_3.a.a), var_3.a.d.x), func_1(var_2.x, var_0.x, var_0.x).d.zyz), var_2.x));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-704f, _wgslsmith_div_f32(323f, _wgslsmith_f_op_f32(func_2(1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, ~u_input.d, ~var_0.x, 1u), vec4<u32>(var_0.x << (var_0.x % 32u), var_0.x, u_input.d, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, 1u, var_0.x), vec4<u32>(4294967295u, 4855u, var_0.x, 1u), vec4<u32>(u_input.d, 105419u, u_input.d, u_input.d))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(29291u, 0u, var_0.x, 58021u), min(vec4<u32>(u_input.d, u_input.d, 4294967295u, var_0.x), vec4<u32>(var_0.x, 0u, 1u, var_0.x))), ~vec4<u32>(u_input.d, u_input.d, 12844u, 1410u) << (~vec4<u32>(u_input.d, var_0.x, 0u, u_input.d) % vec4<u32>(32u)))), var_4);
}

