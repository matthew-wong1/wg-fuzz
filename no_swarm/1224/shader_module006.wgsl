struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<bool, 11>;

var<private> global3: array<Struct_2, 1>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = ~(-global0.c.x) & -arg_1.c.x;
    let var_1 = any(select(!(!select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(u_input.a, 11u)]), true)), !select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 11u)], true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(u_input.a, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(u_input.a, 11u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 11u)], false), vec2<bool>(true, global2[_wgslsmith_index_u32(45911u, 11u)]), true), vec2<bool>(false, false)), select(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true), select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], false), true), !vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 11u)])), select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(75892u, 11u)], global2[_wgslsmith_index_u32(1u, 11u)]), global2[_wgslsmith_index_u32(u_input.a, 11u)] || global2[_wgslsmith_index_u32(u_input.c, 11u)]), select(select(vec2<bool>(true, false), vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.c, 11u)]), !vec2<bool>(false, global2[_wgslsmith_index_u32(18064u, 11u)]), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(u_input.c, 11u)]))))));
    let var_2 = arg_1.a;
    global2 = array<bool, 11>();
    var_0 = _wgslsmith_div_i32(2147483647i, -firstLeadingBit(~countOneBits(0i)));
    return -1241f;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = vec3<f32>(233f, _wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - arg_2), 787f), _wgslsmith_f_op_f32(1999f - _wgslsmith_f_op_f32(func_3(vec2<f32>(arg_2, arg_2), global3[_wgslsmith_index_u32(97709u, 1u)]))))))));
    let var_1 = Struct_2(arg_1.zx, 25054i, countOneBits(arg_1));
    let var_2 = firstLeadingBit(max(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(1u), ~arg_0, countOneBits(20375u), 0u), min(vec4<u32>(arg_0, arg_0, 4294967295u, 53432u), vec4<u32>(33936u, 1u, arg_0, arg_0)) | ~vec4<u32>(32978u, arg_0, u_input.c, u_input.d)), ~(~vec4<u32>(4294967295u, arg_0, u_input.d, u_input.a) << (~vec4<u32>(u_input.d, arg_0, arg_0, 112991u) % vec4<u32>(32u)))));
    var var_3 = vec2<bool>(!(all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 11u)], false), vec2<bool>(true, true), false)) || ((global2[_wgslsmith_index_u32(var_2.x, 11u)] & global2[_wgslsmith_index_u32(var_2.x, 11u)]) || all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true, true, false)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~firstLeadingBit(52651u), max(var_2.x, ~4294967295u) ^ _wgslsmith_div_u32(0u, 397u)), 11u)]);
    let var_4 = Struct_1(-698f, min(firstLeadingBit(~(~var_2.zww)), _wgslsmith_mult_vec3_u32(abs(~var_2.yzy), var_2.zxy)), u_input.e);
    return u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global1 = arg_1.x;
    global1 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.b.x, arg_0.b.x, arg_2.b.x)), vec3<u32>(16328u, arg_0.b.x, 0u)))) <= 4294967295u;
    let var_0 = countOneBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(select(-1i, arg_2.c, arg_1.x), arg_0.c) >> ((func_2(arg_2.b.x, global0.c, arg_0.a, u_input.b) | 1u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, u_input.e) << (reverseBits(arg_2.b.xy) % vec2<u32>(32u)), countOneBits(vec2<i32>(arg_0.c, arg_2.c)))));
    let var_1 = ~_wgslsmith_dot_vec2_i32(~global0.c.xx, vec2<i32>(~arg_2.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_2.c) >> (vec2<u32>(u_input.c, arg_0.b.x) % vec2<u32>(32u)), vec2<i32>(u_input.e, 0i))));
    var var_2 = _wgslsmith_div_u32(select(abs(~arg_2.b.x), _wgslsmith_add_u32(u_input.a, arg_2.b.x) << (~4294967295u % 32u), global2[_wgslsmith_index_u32(57714u, 11u)]) & ~(~(~arg_0.b.x)), u_input.c);
    return -336f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(343f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(803f, vec3<u32>(u_input.c, u_input.c, u_input.a), 9404i), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 11u)], global2[_wgslsmith_index_u32(u_input.d, 11u)]), Struct_1(-221f, vec3<u32>(5670u, u_input.d, 0u), -2147483647i))), 2264f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-578f, 511f)))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global2 = array<bool, 11>();
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(~select(countOneBits(vec4<i32>(u_input.e, 16170i, global0.b, u_input.b)), vec4<i32>(global0.c.x, 42833i, global0.a.x, global0.c.x), select(vec4<bool>(true, true, false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(3266u, 11u)], true), global2[_wgslsmith_index_u32(34913u, 11u)])), firstLeadingBit(~select(vec4<i32>(28619i, 37347i, global0.c.x, global0.b), vec4<i32>(37336i, global0.b, 16603i, -2147483647i), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 11u)], true, global2[_wgslsmith_index_u32(45857u, 11u)], global2[_wgslsmith_index_u32(1u, 11u)])))), _wgslsmith_sub_i32(~_wgslsmith_sub_i32(36583i, global0.b >> (u_input.a % 32u)), ~max(countOneBits(1i), 0i)), _wgslsmith_mult_i32(-1i, -1i << (~u_input.a % 32u)), u_input.e);
    var var_3 = global0.c;
    var_3 = reverseBits(abs(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e, 33194i, -6698i), ~select(vec3<i32>(-91299i, global0.a.x, 0i), var_2.zyw, global2[_wgslsmith_index_u32(u_input.a, 11u)]), global0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(1u, u_input.d, u_input.d, 1u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(27263u, 9623u, 85680u, u_input.c), vec4<u32>(4294967295u, u_input.a, u_input.a, 0u)))));
}

