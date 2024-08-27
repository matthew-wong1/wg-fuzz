struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, false, true, true, false, true, true, true, true, false, false, false);

var<private> global1: array<f32, 23>;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(19046i), Struct_2(27121i), Struct_2(25478i), Struct_2(-1i), Struct_2(22407i), Struct_2(46262i), Struct_2(6437i), Struct_2(1i), Struct_2(0i), Struct_2(35002i), Struct_2(16733i), Struct_2(0i), Struct_2(74397i), Struct_2(-28300i), Struct_2(1i), Struct_2(0i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(15786i), Struct_2(497i), Struct_2(-253i), Struct_2(-61495i));

var<private> global3: Struct_2 = Struct_2(2147483647i);

var<private> global4: array<Struct_3, 14>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    var var_0 = 81137u ^ _wgslsmith_dot_vec2_u32(u_input.b.xy, (vec2<u32>(u_input.b.x, 109572u) >> (vec2<u32>(u_input.b.x, 11332u) % vec2<u32>(32u))) & ~vec2<u32>(u_input.b.x, u_input.b.x));
    let var_1 = -(1i >> (~(select(0u, 5965u, true) >> (1u % 32u)) % 32u));
    let var_2 = 429f;
    global3 = global2[_wgslsmith_index_u32(abs(u_input.b.x) ^ (0u & ~u_input.b.x), 22u)];
    global0 = array<bool, 13>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1461f, var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(59889u, 23u)] * 415f) + _wgslsmith_f_op_f32(f32(-1f) * -404f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2499f)))) - _wgslsmith_div_f32(arg_3, arg_3)) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])), -1000f), _wgslsmith_f_op_f32(-var_2))));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(any(vec3<bool>(true, arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), -select(vec4<i32>(0i, 0i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, -24031i, -1i), arg_0), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)] < global1[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), 450f))) + 965f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 23u)])))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_f32(f32(-1f) * -182f), any(vec4<bool>(true, any(vec3<bool>(false, true, true)), all(vec2<bool>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 13u)])), !arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(51457u, 23u)] * -1807f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f * 1462f))), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.b.x, 23u)]))), -1177f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.b.x), 23u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(673f, global1[_wgslsmith_index_u32(31603u, 23u)]), -1372f, false)))))));
    var var_2 = 24634i;
    var var_3 = !(!select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 23u)] <= 844f, arg_0, true, arg_0), select(vec4<bool>(arg_0, true, false, global0[_wgslsmith_index_u32(17959u, 13u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(46278u, 13u)]), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), false), !arg_0), arg_0));
    var var_4 = global1[_wgslsmith_index_u32(select(arg_1.x, 98560u, arg_0) ^ reverseBits(u_input.b.x), 23u)];
    return Struct_1(~max(max(~arg_1.x, ~u_input.b.x), arg_1.x), select(vec2<bool>(true, -u_input.a < ~(-10567i)), var_3.wz, all(select(var_3.zx, select(vec2<bool>(arg_0, true), vec2<bool>(global0[_wgslsmith_index_u32(47455u, 13u)], true), true), vec2<bool>(var_3.x, false)))), max(-global3.a, -global3.a), arg_1.x, vec3<u32>(~u_input.b.x, u_input.b.x, 4294967295u));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = false;
    global2 = array<Struct_2, 22>();
    let var_1 = firstLeadingBit(vec2<u32>(reverseBits(arg_0.a), firstLeadingBit(~1u >> (u_input.b.x % 32u))));
    let var_2 = func_2(all(vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 23u)] == global1[_wgslsmith_index_u32(arg_0.d, 23u)], global0[_wgslsmith_index_u32(1u | u_input.b.x, 13u)], 47303u <= u_input.b.x)) | !any(!arg_0.b), reverseBits(vec2<u32>(~u_input.b.x & (arg_0.a << (arg_0.a % 32u)), arg_0.d)));
    let var_3 = vec2<i32>(_wgslsmith_add_i32(-(-1i << (0u % 32u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.c, -2147483647i), vec2<i32>(~0i, arg_0.c))), ~(~global3.a));
    return ~45353i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(vec3<i32>(-1i, global3.a, -27217i) << (u_input.b.zyz % vec3<u32>(32u)), ~(vec3<i32>(51185i, u_input.a, -2147483647i) << (u_input.b.zyy % vec3<u32>(32u))), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 13u)], u_input.b.x <= 4294967295u, false))), 1u, _wgslsmith_add_vec4_i32(countOneBits(-vec4<i32>(u_input.a, global3.a, 19431i, global3.a) >> (vec4<u32>(35811u, 10776u, 1u, 0u) % vec4<u32>(32u))), vec4<i32>(-5957i, func_1(Struct_1(0u, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], true), u_input.a, 38627u, vec3<u32>(93822u, u_input.b.x, 13341u))) >> (4294967295u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 5311i), select(vec3<i32>(37200i, u_input.a, -31590i), vec3<i32>(-11443i, global3.a, -1i), vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 13u)]))), -18135i)));
}

