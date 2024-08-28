struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_1(vec3<u32>(u_input.a, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 22124u, u_input.b.x, u_input.b.x), u_input.b)), _wgslsmith_clamp_u32(countOneBits(firstTrailingBit(1u)), 0u, 63266u)), _wgslsmith_sub_u32(u_input.a, 45511u), !all(vec3<bool>(arg_0.x, true, arg_0.x)) & arg_0.x, vec3<u32>(~u_input.a, 4294967295u, u_input.a), _wgslsmith_mult_u32(u_input.b.x, u_input.a));
    global0 = array<bool, 1>();
    return -944f;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1234f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1092f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, false), vec3<i32>(1i, 6605i, 20939i))), _wgslsmith_f_op_f32(func_3(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true, false), vec3<i32>(-2147483647i, 17366i, 2147483647i)))))), select(all(select(vec3<bool>(global0[_wgslsmith_index_u32(26344u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 1u)]), global0[_wgslsmith_index_u32(37800u, 1u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(55111u, 1u)], global0[_wgslsmith_index_u32(69812u, 1u)], true)), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], false, false))))));
    global0 = array<bool, 1>();
    let var_1 = u_input.b.x;
    global0 = array<bool, 1>();
    var var_2 = vec2<bool>(any(select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], false, global0[_wgslsmith_index_u32(1u, 1u)]), !vec3<bool>(global0[_wgslsmith_index_u32(var_1, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], false))) && true, true);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mod_u32(~(~62798u), ~_wgslsmith_mult_u32(22966u, var_1)), var_1, ~(~0u) << (var_1 % 32u)), u_input.b);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = !(_wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(50033u, 19039u)), vec2<u32>(15261u, select(48818u, arg_0, global0[_wgslsmith_index_u32(7198u, 1u)]))) != func_2());
    var var_1 = vec2<u32>(54254u, _wgslsmith_sub_u32(76738u, _wgslsmith_clamp_u32(abs(~4294967295u), 0u, arg_0)));
    var var_2 = Struct_1(u_input.b.xyx, _wgslsmith_add_u32(~(~min(4294967295u, var_1.x)), ~(~arg_0)), !global0[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.b.yyz, ~(~(~var_1.x)));
    var var_3 = vec3<f32>(1f, 1f, 1f);
    let var_4 = -firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_mod_vec4_u32(firstTrailingBit(u_input.b), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(arg_0, 78828u, u_input.a, 0u))) % vec4<u32>(32u)));
    return vec3<u32>(var_1.x, func_2(), 36740u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_i32(~1i, i32(-1i) * -1i) >> (firstTrailingBit(~_wgslsmith_sub_u32(u_input.a, ~u_input.b.x)) % 32u);
    var var_1 = Struct_1(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_1.b, u_input.a), ~u_input.b.zxx)), u_input.a, all(vec4<bool>(true || arg_1.c, true, false, all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], arg_0.c, true)))) & !(true && select(arg_0.c, false, true)), max(~vec3<u32>(9221u, 55677u & arg_1.e, 39416u), arg_1.d), _wgslsmith_mod_u32(1u & ~_wgslsmith_mod_u32(1u, arg_0.d.x), u_input.a));
    global0 = array<bool, 1>();
    var var_2 = _wgslsmith_f_op_f32(func_3(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], !all(vec2<bool>(false, var_1.c)), var_1.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(var_0), -abs(13342i), -_wgslsmith_mult_i32(var_0, 2147483647i)), countOneBits(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, 2147483647i), vec3<i32>(var_0, 2147483647i, var_0)))), reverseBits(~vec3<i32>(var_0, -1388i, 70877i)))));
    global0 = array<bool, 1>();
    return select(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.d.x, var_1.d.x, var_1.b), u_input.b.wzw) >> (var_1.d % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(38014u, arg_0.a.x), _wgslsmith_mod_u32(1u, u_input.a), arg_1.a.x), abs(_wgslsmith_mod_vec3_u32(arg_0.a, vec3<u32>(u_input.a, 1u, 0u))))), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_0.c), vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.d.x, 1u)], var_1.c)), select(vec3<bool>(global0[_wgslsmith_index_u32(29938u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec3<bool>(false, arg_1.c, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, arg_1.c)), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.b, 1u)], false)), vec3<bool>(true, arg_0.c, var_0 < var_0)), !vec3<bool>(var_1.c || true, !arg_0.c, true), vec3<bool>(!(arg_1.a.x < var_1.d.x), true, false & arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 1>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-507f + -825f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f)), 1f);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -838f, -1362f))))))));
    var var_1 = 2284f;
    var var_2 = 34127u;
    let var_3 = Struct_1(~func_4(Struct_1(~vec3<u32>(0u, 45759u, 6892u), 59107u, global0[_wgslsmith_index_u32(~1u, 1u)], func_1(41003u), _wgslsmith_mod_u32(4294967295u, u_input.b.x)), Struct_1(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) & vec3<u32>(1u, u_input.b.x, 1u), _wgslsmith_div_u32(1901u, u_input.b.x), u_input.b.x < u_input.a, _wgslsmith_add_vec3_u32(u_input.b.xzy, vec3<u32>(u_input.b.x, 1u, u_input.a)), 1u)), reverseBits(abs(u_input.a ^ u_input.a)), all(vec3<bool>(!(false && global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), !(u_input.a != 0u), true)), vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.yy), abs(firstTrailingBit(vec2<u32>(u_input.b.x, 0u)))), u_input.a, 48504u), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec3<i32>(1i, 1i, 1i)), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)));
}

