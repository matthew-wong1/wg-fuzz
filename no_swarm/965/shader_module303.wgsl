struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-7307i, -49128i);

var<private> global1: vec2<i32> = vec2<i32>(24017i, -64469i);

var<private> global2: array<f32, 19> = array<f32, 19>(-447f, 1244f, 1195f, 1822f, 1884f, -600f, 1313f, 1032f, 436f, 549f, 1628f, -185f, -248f, 1092f, -1000f, 168f, 1809f, -1136f, 579f);

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, -5811i);

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(u_input.b.x), 19u)] + 717f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(784f))), -222f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(53123u, 19u)] * 167f))) < global2[_wgslsmith_index_u32(42873u | (1u | u_input.e.x), 19u)])) + _wgslsmith_f_op_f32(1311f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(123f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 19u)] + 1461f) * 1204f))));
    var var_1 = global1.x;
    var var_2 = Struct_2(182f, vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(61807u, u_input.e.x, arg_0, u_input.c.x), u_input.e)) | abs(~4294967295u), 49128u));
    global1 = -countOneBits(-global3.xy);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_2.a, -1089f, true)), -665f, -1000f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(12090u, 19u)] * _wgslsmith_f_op_f32(-390f - var_2.a)))) + -983f);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(19600u ^ _wgslsmith_mod_u32(4294967295u, u_input.e.x), 19u)])) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(17627u, 19u)]), _wgslsmith_f_op_f32(-1169f - global2[_wgslsmith_index_u32(u_input.b.x, 19u)])))), vec2<u32>(min(_wgslsmith_mod_u32(u_input.e.x, 0u) & _wgslsmith_mod_u32(u_input.c.x, 1u), ~countOneBits(0u)), u_input.e.x));
    global4 = array<Struct_1, 25>();
    global2 = array<f32, 19>();
    let var_1 = vec3<bool>(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.a)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(831f))))) <= 306f);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(step(-303f, _wgslsmith_f_op_f32(1000f - var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.a)), 801f, any(vec4<bool>(true, arg_0.c.x, var_1.x, true)) == true))), _wgslsmith_f_op_f32(f32(-1f) * -1879f), 683f);
    return select(vec2<bool>(!arg_0.a.x, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 19u)] * var_2.x)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 19u)] + var_0.a), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 19u)], 675f)))), var_1.yx, arg_0.c);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(vec2<bool>(arg_0, arg_0 && arg_0), _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, global1.x, global3.x), vec3<i32>(-14230i, 2147483647i, u_input.d.x)), vec3<i32>(global0.x, arg_1.x, -2147483647i) & vec3<i32>(global0.x, global3.x, global3.x)), -(~vec3<i32>(global1.x, -29210i, 41669i) ^ ~vec3<i32>(-61965i, 72364i, -13834i))), !func_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), select(vec3<i32>(-13486i, arg_1.x, -15324i), vec3<i32>(global0.x, global0.x, -562i), arg_0), !vec2<bool>(true, arg_0))));
    var var_1 = arg_3;
    global0 = arg_1;
    var var_2 = ~_wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global1.x, global1.x, global0.x), vec4<i32>(arg_1.x, global3.x, global3.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.a, 2147483647i, global0.x), vec4<i32>(var_0.b.x, 8621i, 38883i, 30383i)), vec4<i32>(1i, ~(-2147483647i), max(arg_1.x, arg_1.x), firstTrailingBit(global3.x))) ^ _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global3.x, global1.x, 21973i), vec4<i32>(u_input.a, 2147483647i, global0.x, 2147483647i)), select(vec4<i32>(global1.x, 2147483647i, 37994i, global0.x), vec4<i32>(1i, arg_1.x, 1i, global0.x), true))), ~abs(vec4<i32>(27926i, -16588i, global3.x, global1.x)));
    global1 = select(vec2<i32>(_wgslsmith_div_i32(max(0i, 1i), _wgslsmith_add_i32(-2147483647i, ~(-78i))), _wgslsmith_div_i32(var_0.b.x | 2147483647i, 1i)), ~(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_1.b.x, 19u)], arg_2) * arg_2) - _wgslsmith_f_op_f32(f32(-1f) * -447f)) <= _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~select(1u, var_1.b.x, true), 19u)])));
    return _wgslsmith_dot_vec3_i32(var_0.b, ~(-(~var_0.b >> (~vec3<u32>(1437u, var_1.b.x, 4294967295u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 25>();
    let var_0 = global2[_wgslsmith_index_u32(~abs(4294967295u), 19u)];
    global3 = vec3<i32>(~(-81548i), -1i & (~global1.x << (71121u % 32u)), _wgslsmith_sub_i32(max(firstTrailingBit(countOneBits(-1i)), 41263i), global1.x));
    let var_1 = !vec3<bool>(true, any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), true);
    let var_2 = !vec4<bool>(false, true, true, all(!(!var_1)));
    global0 = vec2<i32>(-9695i, func_1(all(select(select(var_2, vec4<bool>(false, true, var_1.x, false), var_2.x), vec4<bool>(true, var_2.x, false, var_2.x), global2[_wgslsmith_index_u32(4294967295u, 19u)] <= global2[_wgslsmith_index_u32(4294967295u, 19u)])), vec2<i32>(u_input.d.x, 1i), -261f, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.c.x, 16907u)), u_input.c.xx))));
    global1 = vec2<i32>(firstLeadingBit(reverseBits(25102i)), 15147i << (u_input.e.x % 32u));
    global2 = array<f32, 19>();
    global1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(u_input.a), -1i), u_input.c.yzx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 19u)], _wgslsmith_f_op_f32(f32(-1f) * -525f), -u_input.d.x > 2147483647i))), ~select(28836i, _wgslsmith_div_i32(reverseBits(-22898i), -16947i), all(!vec4<bool>(var_2.x, true, var_1.x, var_1.x))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 2147483647i, 30748i, global1.x), vec4<i32>(global0.x, global0.x, 2147483647i, 1i)), abs(0i), global3.x & -2147483647i)), -vec4<i32>(abs(-1i), ~u_input.d.x, 47100i, _wgslsmith_sub_i32(0i, u_input.a))));
}

