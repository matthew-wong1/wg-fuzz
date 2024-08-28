struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 6>;

var<private> global3: array<Struct_1, 1>;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec2<i32> {
    let var_0 = u_input.d.x;
    global0 = array<bool, 8>();
    var var_1 = global2[_wgslsmith_index_u32(~51579u, 6u)];
    var var_2 = global3[_wgslsmith_index_u32(51508u, 1u)];
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~min(~global1.a.x, var_2.d.x), ~606u), 1u)];
    return ~abs(vec2<i32>(global1.c, _wgslsmith_add_i32(u_input.a.x, -global1.c)));
}

fn func_2(arg_0: u32) -> f32 {
    global3 = array<Struct_1, 1>();
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -872f), 182f, all(vec3<bool>(false, global0[_wgslsmith_index_u32(3170u, 8u)], false)))), -339f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1099f * 497f) + _wgslsmith_f_op_f32(f32(-1f) * -2827f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1630f)), _wgslsmith_f_op_f32(-528f + -539f))), u_input.b >> (~_wgslsmith_mult_u32(global1.a.x ^ 0u, 1u) % 32u));
    var var_1 = false;
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.d.x, u_input.a.x, var_0.x, 16707i)) >> (~4294967295u % 32u)), max(firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, var_0.x)), -(26101i & global1.c)), -1i, 2770i >> (_wgslsmith_add_u32(min(0u, global1.a.x), min(12935u, u_input.b)) % 32u)), select(vec4<i32>(-global1.c, -var_0.x, u_input.d.x, max(u_input.d.x, 2599i)) << (vec4<u32>(16356u, firstLeadingBit(4294967295u), ~u_input.c.x, ~u_input.c.x) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.x, u_input.a.x, -39631i), u_input.a), global2[_wgslsmith_index_u32(select(1u, 4294967295u, select(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 8u)], true, false)), 6u)]));
    var var_3 = vec2<bool>(true, !global0[_wgslsmith_index_u32(reverseBits(u_input.c.x), 8u)] && all(!(!global2[_wgslsmith_index_u32(4294967295u, 6u)])));
    return 348f;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))) >= _wgslsmith_f_op_f32(select(741f, 760f, false));
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(func_2(~select(var_0.a.x, u_input.b, all(global2[_wgslsmith_index_u32(~4294967295u, 6u)]))));
    var var_2 = vec4<bool>(true, any(select(vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(arg_0.a.x), 8u)], true, any(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b, 8u)], global0[_wgslsmith_index_u32(global1.a.x, 8u)])), any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], false))), vec4<bool>(!global0[_wgslsmith_index_u32(arg_0.a.x, 8u)], u_input.a.x >= -2147483647i, !global0[_wgslsmith_index_u32(0u, 8u)], !global0[_wgslsmith_index_u32(global1.d.x, 8u)]), global2[_wgslsmith_index_u32(min(0u, 0u) >> (global1.d.x % 32u), 6u)])), global0[_wgslsmith_index_u32(firstLeadingBit(3184u), 8u)], !global0[_wgslsmith_index_u32(4058u, 8u)]);
    return ~max(var_0.b, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1.d.x, global1.a.x), 1u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(189f, -507f), vec2<f32>(-103f, -640f))) - vec2<f32>(866f, -1838f)));
    global2 = array<vec4<bool>, 6>();
    let var_1 = global3[_wgslsmith_index_u32(countOneBits(0u), 1u)];
    let var_2 = global3[_wgslsmith_index_u32(u_input.b, 1u)];
    let var_3 = Struct_1(~select(vec2<u32>(46837u, u_input.b), abs(var_2.d.xz) >> (abs(vec2<u32>(19323u, global1.d.x)) % vec2<u32>(32u)), vec2<bool>(false, false && global0[_wgslsmith_index_u32(29294u, 8u)])), _wgslsmith_mod_u32(~1u, global1.a.x), var_2.c, vec3<u32>(func_1(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, 1u, 1u, var_1.b), vec4<u32>(u_input.c.x, 36236u, 70974u, 4294967295u)), 1u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(445f, -528f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-497f, 662f), vec2<f32>(-103f, 223f))), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.d.x, 8u)])))), _wgslsmith_dot_vec3_u32(~vec3<u32>(29455u, 1u, global1.d.x) | ~var_1.d, global1.d & _wgslsmith_mult_vec3_u32(var_1.d, vec3<u32>(59696u, u_input.c.x, 0u))), _wgslsmith_mult_u32(~(var_1.b << (0u % 32u)), ~(~var_1.d.x))));
    var var_4 = select(vec2<bool>(false, !global0[_wgslsmith_index_u32(var_2.b, 8u)]), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), vec2<bool>(true, false)), select(vec2<bool>(false, global0[_wgslsmith_index_u32(46166u, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(27166u, 8u)], true), false), true), !select(false, false, false)), !(!select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 8u)], true), vec2<bool>(true, false)))), vec2<bool>(any(vec3<bool>(!global0[_wgslsmith_index_u32(var_3.a.x, 8u)], global0[_wgslsmith_index_u32(var_3.b, 8u)] && global0[_wgslsmith_index_u32(var_1.a.x, 8u)], true)), all(global2[_wgslsmith_index_u32(select(max(global1.d.x, 0u), 29224u, true), 6u)])));
    var var_5 = firstLeadingBit(~(~global1.b));
    var var_6 = -vec2<i32>(global1.c, ~(func_3(vec3<f32>(-772f, -1723f, -1375f), 35799u).x ^ ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-u_input.a.x), reverseBits(~(vec4<u32>(0u, 22775u, 6967u, u_input.c.x) ^ vec4<u32>(global1.d.x, var_3.d.x, var_2.a.x, u_input.b))));
}

