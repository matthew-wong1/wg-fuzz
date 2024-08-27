struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = 1u;
    var var_1 = select(~_wgslsmith_mult_vec3_u32(select(select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(var_0, var_0, u_input.a.x), arg_0), vec3<u32>(u_input.a.x, 4294967295u, var_0), true), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0, var_0, 4294967295u), vec3<u32>(u_input.a.x, 42911u, 4294967295u))), vec3<u32>(_wgslsmith_div_u32(~4294967295u, ~var_0), u_input.a.x, max(11683u, ~u_input.a.x)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(46375u, var_0, 93969u) | ~vec3<u32>(53857u, var_0, u_input.a.x), ~vec3<u32>(u_input.a.x, var_0, 4294967295u) >> (~vec3<u32>(7953u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), arg_3.a);
    var var_2 = arg_3;
    global2 = array<vec3<bool>, 1>();
    var var_3 = min(abs(select(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) ^ vec4<u32>(4294967295u, var_0, var_0, 23552u), vec4<u32>(var_0, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(22047u, var_0, u_input.a.x, 0u) % vec4<u32>(32u)), false)), vec4<u32>(var_1.x, firstTrailingBit(var_0), _wgslsmith_mod_u32(var_0, firstTrailingBit(u_input.a.x)), 0u)) & _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_1.x, 90472u, var_0), vec4<u32>(var_1.x, 25564u, 117911u, 1u) << (vec4<u32>(u_input.a.x, var_1.x, 23115u, 1u) % vec4<u32>(32u))), vec4<u32>(33541u, 4294967295u, ~u_input.a.x, ~363u ^ ~var_1.x));
    return select(!select(!vec4<bool>(true, true, arg_3.a, arg_3.a), vec4<bool>(var_3.x != 0u, false, true, !arg_3.a), select(select(vec4<bool>(true, var_2.a, var_2.a, arg_0), vec4<bool>(true, false, arg_0, true), vec4<bool>(var_2.a, true, true, arg_3.a)), vec4<bool>(true, var_2.a, true, arg_0), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), all(vec4<bool>(var_2.a, var_2.a, arg_3.a, arg_0))), false);
}

fn func_2() -> vec4<f32> {
    let var_0 = ~u_input.a.x;
    let var_1 = reverseBits(0u);
    var var_2 = Struct_1(true);
    let var_3 = global3[_wgslsmith_index_u32(var_0, 3u)];
    let var_4 = var_3.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 32u)])), 1018f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1384f, -225f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2123f)) - _wgslsmith_f_op_f32(global1.x + -1616f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(global1.x, -181f), 1004f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], _wgslsmith_f_op_f32(561f + _wgslsmith_f_op_f32(max(global1.x, -159f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, global1.x, global0[_wgslsmith_index_u32(31906u, 32u)], 290f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, global0[_wgslsmith_index_u32(0u, 32u)], 286f, -714f) + vec4<f32>(global1.x, -871f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -639f))))), !func_3(var_2.a, global3[_wgslsmith_index_u32(~86932u, 3u)], global3[_wgslsmith_index_u32(var_1, 3u)], Struct_1(var_2.a)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> vec4<f32> {
    global3 = array<Struct_2, 3>();
    let var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_2, 4294967295u) | _wgslsmith_sub_u32(arg_2, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_2, u_input.a.x), ~u_input.a.x)), 3u)];
    global0 = array<f32, 32>();
    global2 = array<vec3<bool>, 1>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2()))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-733f, global1.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], global1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(-(~vec4<i32>(-72266i, 2147483647i, 0i, 1i)), true, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 81704u), ~vec3<u32>(1u, 808u, 1u)))))) - vec4<f32>(-709f, _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(f32(-1f) * -516f), global1.x));
    let var_0 = Struct_1(all(global2[_wgslsmith_index_u32(u_input.a.x, 1u)]) || (_wgslsmith_mult_i32(min(-17117i, 0i), -1i) >= _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(27103i, -39858i)))));
    var var_1 = ~(vec4<i32>(firstLeadingBit(-7276i), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-23867i, 2147483647i, 0i, -1i), vec4<i32>(28329i, -1i, -1i, 49992i))), (2147483647i << (u_input.a.x % 32u)) ^ 9095i, ~(~(-9842i))) & vec4<i32>(1i, 1i, 1i, 1i));
    var_1 = vec4<i32>(_wgslsmith_sub_i32(2147483647i, select(~(~(-16024i)), _wgslsmith_clamp_i32(var_1.x, var_1.x, _wgslsmith_mult_i32(var_1.x, var_1.x)), true)), -(~(~_wgslsmith_mult_i32(var_1.x, -46628i))), abs(_wgslsmith_clamp_i32(var_1.x, -1i, ~(var_1.x >> (0u % 32u)))), firstLeadingBit(~reverseBits(26156i)));
    let var_2 = _wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, 83014u), ~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, 1u))), countOneBits(u_input.a.x));
    global3 = array<Struct_2, 3>();
    let var_3 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, var_1.x), var_1.yz), vec2<i32>(2147483647i, 1i) | var_1.zx));
    var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(0i, -1i, var_1.x, var_1.x)), vec4<i32>(-2147483647i, 47165i, var_1.x, var_3)), vec4<i32>(var_1.x, 2147483647i, var_3, -16913i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(102977u, u_input.a.x, var_2, 0u), vec4<u32>(u_input.a.x, 1u, 28024u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(abs(0i)), reverseBits(firstTrailingBit(var_1.x)), var_1.x, ~var_3), vec4<i32>(abs(var_1.x), firstLeadingBit(var_3), -1i, var_3)));
    global2 = array<vec3<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec4<i32>(var_1.x, var_1.x, 0i, var_1.x) << (min(vec4<u32>(0u, 25065u, u_input.a.x, var_2), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 42921u)) % vec4<u32>(32u)), vec4<i32>(8177i, 0i, -2147483647i, var_3) | vec4<i32>(2147483647i, var_1.x, -2147483647i, -19082i), true) << (~countOneBits(vec4<u32>(u_input.a.x, 80109u, var_2, 65211u)) % vec4<u32>(32u)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, -1i, 1i), vec4<i32>(-2147483647i, var_3, var_1.x, var_3)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, 0u, var_2, 105698u), vec4<u32>(u_input.a.x, 1u, 29001u, u_input.a.x)) % vec4<u32>(32u))) >> ((~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u) >> ((vec4<u32>(1u, u_input.a.x, 14211u, var_2) & ~vec4<u32>(33825u, var_2, 70863u, var_2)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

