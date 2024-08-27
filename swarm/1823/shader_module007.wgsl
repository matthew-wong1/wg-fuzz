struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(-2467f, false, 0u);

var<private> global2: array<f32, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> f32 {
    global0 = false | global1.b;
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = vec3<bool>(global1.b && (_wgslsmith_mod_i32(43970i, _wgslsmith_add_i32(u_input.d.x, u_input.b)) > (firstTrailingBit(17096i) & 1i)), !arg_1, select(u_input.e.x != min(min(u_input.a, 0u), global1.c), !(!arg_1), all(!select(vec2<bool>(global1.b, true), vec2<bool>(false, true), vec2<bool>(arg_1, global1.b)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-600f - global1.a)))))), var_1.x, ~abs(1u));
    let var_3 = Struct_1(1f, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2356f)) < _wgslsmith_f_op_f32(-arg_0.x)), 51856u);
    return _wgslsmith_f_op_f32(abs(1302f));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(825f)) - _wgslsmith_f_op_f32(func_3(arg_0, false))) * global1.a), all(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true)))), ~35136u);
    global0 = all(vec4<bool>(true, select(all(select(vec4<bool>(true, false, var_0.b, true), vec4<bool>(true, var_0.b, true, true), true)), !any(vec2<bool>(var_0.b, global1.b)), true | var_0.b), !(_wgslsmith_f_op_f32(trunc(global1.a)) == _wgslsmith_f_op_f32(f32(-1f) * -249f)), global1.b));
    let var_1 = var_0;
    var var_2 = vec3<bool>(false, var_1.b, var_1.c > ~(~var_0.c));
    global1 = var_0;
    return 17024u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = global1.a;
    let var_1 = firstLeadingBit((abs(u_input.b) & 0i) ^ reverseBits(u_input.c));
    global2 = array<f32, 12>();
    let var_2 = ~4294967295u;
    let var_3 = global1.b;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2626f * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(269f, _wgslsmith_f_op_f32(global1.a + 2169f)))), !arg_1.x, reverseBits(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global1.c, 12u)], arg_0.a, -2067f) + vec3<f32>(arg_0.a, -687f, -711f)), abs(arg_0.c))) | arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1709f * global1.a), global1.a))), false, ~1u ^ u_input.a);
    global2 = array<f32, 12>();
    let var_0 = u_input.e >> ((u_input.e << (u_input.e % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1398f * global1.a) + global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 8963u), vec3<u32>(4294967295u, global1.c, 1u))), 12u)]), _wgslsmith_clamp_i32(select(u_input.d.x, u_input.c, global1.b), u_input.b, _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.b)) <= u_input.b, ~47188u), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-382f * global2[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(34251u, 12u)], global1.a))) == 241f, u_input.c == reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), vec2<i32>(-71752i, 18700i))), !any(vec2<bool>(global1.b, false))));
    let var_1 = !vec4<bool>(any(select(vec4<bool>(global1.b, false, global1.b, global1.b), !vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec4<bool>(global1.b, true, false, false))), any(!vec3<bool>(global1.b, false, global1.b)), global1.b, select(global1.c < select(global1.c, 127599u, false), all(vec4<bool>(true, false, global1.b, global1.b)) || !global1.b, true));
    let var_2 = 1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a, global1.a), _wgslsmith_f_op_f32(abs(1125f)))) + _wgslsmith_f_op_f32(f32(-1f) * -433f));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(48249u, global1.c, 9333u, 44374u))), vec4<u32>(min(~64005u, global1.c), global1.c, select(u_input.e.x, 81612u, true), global1.c)), 12u)], _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x << (global1.c % 32u), select(_wgslsmith_sub_u32(11091u, global1.c), func_2(vec3<f32>(global2[_wgslsmith_index_u32(global1.c, 12u)], global2[_wgslsmith_index_u32(global1.c, 12u)], global1.a), u_input.e.x), all(vec3<bool>(var_1.x, true, true))), _wgslsmith_dot_vec2_u32(var_0, var_0) ^ func_1(Struct_1(-134f, false, global1.c), vec3<bool>(var_2, var_1.x, var_2)).c), vec3<u32>(var_0.x, firstLeadingBit(global1.c), 4294967295u)), _wgslsmith_sub_u32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1871f, global2[_wgslsmith_index_u32(var_0.x, 12u)], global2[_wgslsmith_index_u32(1u, 12u)])), 1u) << (abs(0u) % 32u), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1425f, global1.a, global2[_wgslsmith_index_u32(global1.c, 12u)]))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1308f, global2[_wgslsmith_index_u32(var_0.x, 12u)], 1279f), vec3<f32>(-421f, 728f, 779f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a, global1.a, global2[_wgslsmith_index_u32(global1.c, 12u)])))))), vec4<u32>(max(firstTrailingBit(1u), var_0.x), ~global1.c, var_0.x << (u_input.e.x % 32u), ~func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(193f, global2[_wgslsmith_index_u32(51884u, 12u)], -419f), vec3<f32>(global2[_wgslsmith_index_u32(102894u, 12u)], 1570f, global2[_wgslsmith_index_u32(59704u, 12u)]), var_2)), _wgslsmith_sub_u32(u_input.e.x, global1.c))));
}

