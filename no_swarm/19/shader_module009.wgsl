struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, true, true, true), 473f, vec4<u32>(4283u, 1u, 4294967295u, 63381u)), Struct_1(vec4<bool>(false, true, true, true), 155f, vec4<u32>(1u, 4294967295u, 0u, 63335u)));

var<private> global2: u32 = 1u;

var<private> global3: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(40604u, 2u)];
    let var_1 = Struct_1(vec4<bool>(var_0.a.x, true, any(vec4<bool>(false, false, !var_0.a.x, !var_0.a.x)), true), 641f, abs(var_0.c));
    var_0 = Struct_1(select(select(select(select(vec4<bool>(var_1.a.x, false, var_0.a.x, true), vec4<bool>(var_1.a.x, var_0.a.x, false, true), true), !vec4<bool>(false, false, false, var_1.a.x), true), var_0.a, any(var_1.a)), select(vec4<bool>(var_1.a.x || true, true, var_0.a.x, all(vec2<bool>(var_0.a.x, var_1.a.x))), select(select(var_0.a, vec4<bool>(var_0.a.x, var_1.a.x, false, true), false), var_0.a, !var_1.a), any(var_1.a.yw) || var_1.a.x), var_0.a.x), var_1.b, ~var_1.c);
    global3 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~4294967295u, 19u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -663f))), true));
    return true;
}

fn func_2() -> u32 {
    var var_0 = !vec3<bool>(func_3(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(5990u, 19u)]), -1120f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), 5495i, u_input.b, -42491i), true, true);
    global2 = reverseBits(firstTrailingBit(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 26387u, u_input.b, 1u)), 4294967295u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-498f, _wgslsmith_f_op_f32(round(-617f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b, 19u)], -229f)))) + vec3<f32>(-928f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) + -796f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(79762u, 19u)] * 670f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(996f, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(17651u, 19u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(909f, -2309f, global0[_wgslsmith_index_u32(73627u, 19u)]), vec3<f32>(327f, 1449f, global0[_wgslsmith_index_u32(u_input.b, 19u)]), var_0.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1655f, -433f, global0[_wgslsmith_index_u32(31024u, 19u)]), vec3<f32>(865f, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(56701u, 19u)]))))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-281f, global0[_wgslsmith_index_u32(23813u, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(7994u, 19u)]) - vec3<f32>(594f, global0[_wgslsmith_index_u32(u_input.b, 19u)], 1402f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b, 19u)])), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b, 19u)], -524f)), 1043f))));
    global1 = array<Struct_1, 2>();
    global0 = array<f32, 19>();
    return _wgslsmith_div_u32(firstTrailingBit(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(48459u, 82579u, u_input.b), vec3<u32>(39065u, u_input.b, u_input.b)))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_clamp_u32(0u, ~1u, ~4294967295u), min(countOneBits(0u), min(u_input.b, 0u))), u_input.b));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = ~(abs(firstTrailingBit(abs(vec2<u32>(u_input.b, u_input.b)))) & ~vec2<u32>(max(58399u, u_input.b), u_input.b | 41713u));
    global2 = arg_0 >> (func_2() % 32u);
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, _wgslsmith_add_u32(arg_0, 31847u)) | arg_0, 19u)] * global0[_wgslsmith_index_u32(reverseBits(min(arg_0, 0u)) & (countOneBits(arg_0) ^ (var_0.x << (35616u % 32u))), 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(890f, global0[_wgslsmith_index_u32(var_0.x, 19u)], true))))))));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.a.x, 1i), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, 54054i), vec4<i32>(1i, -2147483647i, u_input.c, u_input.a.x), vec4<bool>(true, true, true, true))), u_input.a.x, u_input.a.x) < _wgslsmith_div_i32(~19873i, _wgslsmith_sub_i32(1i, ~18559i));
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1380f, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b) << (~1u % 32u), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 19u)] - _wgslsmith_f_op_f32(969f * -384f))), 509f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], -459f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<f32>(-1064f, -1126f))), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))) + vec2<f32>(global0[_wgslsmith_index_u32(func_1(11232u), 19u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(96818u, 19u)])))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(23526u >> (u_input.b % 32u), 19u)] + -1000f), ~reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 29398u), vec2<u32>(u_input.b, 69547u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, u_input.b)))));
}

