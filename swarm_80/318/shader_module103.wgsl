struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(1u, 14819u, 4294967295u, 20935u), vec4<u32>(0u, 1788u, 118999u, 64643u), vec4<u32>(0u, 45670u, 1u, 30766u), vec4<u32>(1775u, 1u, 1u, 4294967295u), vec4<u32>(1u, 10179u, 33417u, 0u), vec4<u32>(44350u, 21099u, 4294967295u, 18448u), vec4<u32>(1u, 1u, 4294967295u, 10621u), vec4<u32>(4294967295u, 4294967295u, 4654u, 0u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(63966u, 24994u, 63680u, 12588u), vec4<u32>(4294967295u, 1u, 35983u, 17921u), vec4<u32>(1u, 17785u, 4294967295u, 1u));

var<private> global1: Struct_2;

var<private> global2: array<bool, 15>;

var<private> global3: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<bool> {
    global0 = array<vec4<u32>, 12>();
    global2 = array<bool, 15>();
    let var_0 = -1i;
    global3 = _wgslsmith_f_op_f32(-global1.b);
    var var_1 = !any(select(vec2<bool>(!global2[_wgslsmith_index_u32(5622u, 15u)], true), global1.c.a, select(select(vec2<bool>(true, false), vec2<bool>(true, true), global1.c.a), global1.c.a, true)));
    return vec2<bool>(any(vec4<bool>(!any(global1.c.a), all(!vec4<bool>(global2[_wgslsmith_index_u32(global1.a.x, 15u)], global1.c.a.x, global2[_wgslsmith_index_u32(0u, 15u)], false)), global2[_wgslsmith_index_u32(u_input.b.x, 15u)], !any(vec3<bool>(false, true, true)))), !(((arg_1 << (4294967295u % 32u)) <= _wgslsmith_sub_i32(0i, -2147483647i)) | (!global1.d | false)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_clamp_i32(global1.c.c.x << (0u % 32u), -1i, -3540i);
    var var_1 = u_input.b;
    var var_2 = Struct_1(func_3(_wgslsmith_sub_u32(arg_3.x, ~arg_3.x) >= (firstLeadingBit(35422u) ^ _wgslsmith_mult_u32(var_1.x, arg_3.x)), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.c.b, arg_0.c.c.x), vec3<i32>(arg_0.c.b, global1.c.b, arg_0.c.c.x)))), ~arg_0.c.b, vec4<i32>(~(~abs(global1.c.b)), arg_0.c.c.x, ~arg_0.c.b, arg_1));
    var var_3 = 0u;
    var var_4 = 1913u;
    return global1.a.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = ~func_4(Struct_2(~global0[_wgslsmith_index_u32(1u, 12u)], -2201f, Struct_1(func_3(global1.d, -1i), _wgslsmith_mult_i32(global1.c.c.x, -45069i), ~global1.c.c), (global1.b > -756f) & true), ~18083i, global1.d, vec3<u32>(u_input.b.x, _wgslsmith_div_u32(74382u, global1.a.x), ~4294967295u) & vec3<u32>(4294967295u, global1.a.x, ~2087u));
    var var_1 = global1.c;
    var var_2 = Struct_1(!select(!select(global1.c.a, var_1.a, vec2<bool>(true, global2[_wgslsmith_index_u32(global1.a.x, 15u)])), !vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 15u)]), func_3(false, ~6078i).x), -4343i, select(_wgslsmith_mult_vec4_i32(var_1.c, var_1.c), vec4<i32>(~var_1.b, _wgslsmith_mult_i32(2147483647i ^ global1.c.b, 1i), ~global1.c.c.x ^ max(global1.c.b, 22103i), min(_wgslsmith_mult_i32(global1.c.c.x, global1.c.c.x), 74462i)), !vec4<bool>(global2[_wgslsmith_index_u32(86048u << (1u % 32u), 15u)], global1.b <= -563f, !var_1.a.x, global1.c.a.x | true)));
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~abs(u_input.b.x), global1.a.x), 15274u), firstTrailingBit(~vec2<u32>(u_input.a, abs(1u))));
    var var_4 = Struct_1(vec2<bool>(false, any(select(select(vec3<bool>(global1.d, var_2.a.x, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(6141u, 15u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], false)), vec3<bool>(true, true, global1.d), !vec3<bool>(global2[_wgslsmith_index_u32(global1.a.x, 15u)], var_1.a.x, var_2.a.x)))), var_1.c.x & countOneBits(reverseBits(41035i)), var_2.c);
    return _wgslsmith_div_vec4_i32(var_2.c, _wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, 38955i, -38165i, var_2.c.x), var_1.c));
}

fn func_1() -> vec4<bool> {
    global0 = array<vec4<u32>, 12>();
    var var_0 = global1.c.c;
    var_0 = _wgslsmith_mult_vec4_i32(func_2(), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(global1.c.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(-8198i, -2147483647i, 47855i, 0i), vec4<i32>(0i, var_0.x, -12503i, var_0.x), vec4<i32>(-1i, -24121i, 1i, -2147483647i))), countOneBits(~global1.c.c)), -global1.c.c));
    global3 = global1.b;
    let var_1 = _wgslsmith_f_op_f32(floor(436f));
    return !select(vec4<bool>(_wgslsmith_f_op_f32(sign(global1.b)) <= _wgslsmith_f_op_f32(var_1 - var_1), !global2[_wgslsmith_index_u32(u_input.b.x, 15u)], all(global1.c.a), !(!global1.d)), vec4<bool>(global2[_wgslsmith_index_u32(global1.a.x, 15u)] & (global2[_wgslsmith_index_u32(global1.a.x, 15u)] & false), (global1.d | global1.d) && global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)] && global2[_wgslsmith_index_u32(global1.a.x, 15u)], all(select(vec3<bool>(global1.c.a.x, global2[_wgslsmith_index_u32(u_input.a, 15u)], true), vec3<bool>(true, global1.c.a.x, global2[_wgslsmith_index_u32(u_input.a, 15u)]), global1.d))), !vec4<bool>(func_3(global1.d, global1.c.c.x).x, any(vec4<bool>(true, global1.c.a.x, global2[_wgslsmith_index_u32(19596u, 15u)], false)), true, global1.c.c.x > 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c;
    let var_1 = 582f;
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = select(select(select(!vec4<bool>(global1.d, global2[_wgslsmith_index_u32(0u, 15u)], true, global1.c.a.x), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 15u)], var_0.a.x, var_0.a.x)), all(vec2<bool>(true, var_0.a.x))), !select(!vec4<bool>(var_0.a.x, global1.d, false, global2[_wgslsmith_index_u32(global1.a.x, 15u)]), select(vec4<bool>(false, var_0.a.x, global1.c.a.x, var_0.a.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], false, global1.d, global1.d), global2[_wgslsmith_index_u32(0u, 15u)]), all(vec2<bool>(global1.d, var_0.a.x))), select(!(!vec4<bool>(var_0.a.x, var_0.a.x, false, true)), vec4<bool>(true | global1.c.a.x, any(vec4<bool>(false, false, true, true)), true, !global1.c.a.x), false)), !func_1(), all(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), u_input.b), 15u)] != global1.c.a.x, global2[_wgslsmith_index_u32(~(~1u), 15u)])));
    global2 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(global0[_wgslsmith_index_u32(28495u, 12u)] ^ ~select(global0[_wgslsmith_index_u32(68259u, 12u)], vec4<u32>(28827u, u_input.b.x, 20982u, 1u), vec4<bool>(false, false, true, var_3.x))), vec3<f32>(global1.b, _wgslsmith_f_op_f32(ceil(-1901f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b)))))), -5908i, vec2<f32>(var_1, _wgslsmith_f_op_f32(507f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(485f, var_1)), _wgslsmith_f_op_f32(var_1 * -1000f), global2[_wgslsmith_index_u32(global1.a.x, 15u)] & true)))), abs(vec3<i32>(-70208i, -(var_0.b | var_0.b), i32(-1i) * -global1.c.b)));
}

