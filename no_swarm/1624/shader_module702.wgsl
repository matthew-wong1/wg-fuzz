struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<f32, 30>;

var<private> global3: array<vec2<u32>, 16>;

var<private> global4: array<vec2<f32>, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec4<u32> {
    global1 = select(select(!arg_0.b, arg_0.b, true), arg_0.b, vec2<bool>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(abs(14739u), 30u)])) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 30u)]))), any(vec2<bool>(arg_2, arg_0.b.x))));
    global0 = array<Struct_1, 16>();
    global3 = array<vec2<u32>, 16>();
    let var_0 = arg_0.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(countOneBits(1u), 30u)])));
    return ~abs(vec4<u32>(arg_0.c, ~(arg_0.c | arg_1), 0u, ~(arg_0.c & 4294967295u)));
}

fn func_2(arg_0: vec4<bool>) -> vec2<bool> {
    global3 = array<vec2<u32>, 16>();
    let var_0 = ~countOneBits(~func_3(Struct_1(u_input.a, arg_0.yz, 1u, -192f), ~4294967295u, !arg_0.x));
    global2 = array<f32, 30>();
    let var_1 = Struct_1(u_input.a, arg_0.zz, ~(1u >> (var_0.x % 32u)), 728f);
    global4 = array<vec2<f32>, 2>();
    return arg_0.zw;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_mult_i32(u_input.a, 8047i), 1i, _wgslsmith_sub_i32(0i, 2147483647i))), vec3<i32>(select(18576i, 2147483647i, arg_1), _wgslsmith_div_i32(-49898i, u_input.a), u_input.a) << (arg_0.yzx % vec3<u32>(32u))), !func_2(!vec4<bool>(true, arg_1, arg_1, global1.x)), _wgslsmith_dot_vec3_u32(arg_0.zwz, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, ~arg_0.x, _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 4294967295u)), (vec3<u32>(23759u, arg_0.x, 26041u) >> (arg_0.xzx % vec3<u32>(32u))) | vec3<u32>(16949u, 51581u, 1u))), -697f);
    var var_1 = select(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 7756u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(global3[_wgslsmith_index_u32(var_0.c, 16u)]), ~vec2<u32>(arg_0.x, var_0.c)), arg_0.x)), 11414u, !(127f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-594f * 201f), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_0.c, 30u)], var_0.d, false)))));
    global2 = array<f32, 30>();
    var var_2 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(2147483647i), u_input.a, -19538i, ~u_input.a), vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.a, u_input.a, u_input.a), vec4<i32>(-18130i, u_input.a, u_input.a, -19090i)) >> ((arg_0.x & arg_0.x) % 32u), 57922i, -u_input.a >> (arg_0.x % 32u))), abs(vec4<i32>(u_input.a, u_input.a, 1i, 1i) << (~abs(vec4<u32>(var_0.c, 16375u, 9917u, 4294967295u)) % vec4<u32>(32u))), false);
    return vec3<bool>(all(vec4<bool>(true, any(select(vec3<bool>(arg_1, true, global1.x), vec3<bool>(global1.x, global1.x, true), arg_1)), all(select(vec4<bool>(true, false, arg_1, false), vec4<bool>(false, true, var_0.b.x, true), vec4<bool>(true, false, var_0.b.x, global1.x))), true)), !(!all(select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(global1.x, false, var_0.b.x), false))), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    let var_0 = ~arg_2.c;
    let var_1 = Struct_1(select(abs(arg_2.a), u_input.a, !global1.x), !vec2<bool>(min(1i, arg_2.a) > 1i, arg_0.x), 1u, _wgslsmith_f_op_f32(-1104f * _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(arg_3 * -1007f))));
    global4 = array<vec2<f32>, 2>();
    global2 = array<f32, 30>();
    let var_2 = var_1;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~0u), 16u)];
    var var_2 = _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(~(~vec2<i32>(-1i, -10816i)), vec2<i32>(~u_input.a, 1i)), -vec2<i32>(-u_input.a, 0i >> (var_1.c % 32u)));
    var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(~var_1.c) >> (24233u % 32u), 16u)];
    let var_3 = (~var_1.c | min(firstLeadingBit(~4294967295u), var_1.c)) >> (~(~4294967295u) % 32u);
    var var_4 = 12137u;
    let var_5 = global0[_wgslsmith_index_u32(abs(~1u | var_1.c), 16u)];
    var var_6 = Struct_1(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-27206i, -14402i, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(14843i, var_1.a, var_5.a, var_1.a), vec4<i32>(u_input.a, 0i, var_5.a, 3191i)) >> ((vec4<u32>(7781u, var_3, var_3, 1u) << (vec4<u32>(8244u, var_3, var_1.c, 47299u) % vec4<u32>(32u))) % vec4<u32>(32u))), func_4(select(!func_1(vec4<u32>(4294967295u, var_5.c, 6697u, var_5.c), false), vec3<bool>(true, global1.x, true), !(!vec3<bool>(true, true, var_1.b.x))), _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 30u)]))), Struct_1(_wgslsmith_mod_i32(~(-1i), var_1.a), var_1.b, var_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-264f, var_5.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~1u, 30u)]) * global2[_wgslsmith_index_u32(var_1.c, 30u)])), 142389u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(41152u, var_5.c), 30u)]))) - _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_5.c, 70716u), vec4<u32>(20755u, var_3, var_3, 30761u))), 30u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-315f * 227f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 30u)] + global2[_wgslsmith_index_u32(var_3, 30u)])))), -689f, var_6.b.x)), vec2<i32>(var_5.a, var_5.a), vec2<u32>(var_3, ~(_wgslsmith_add_u32(var_5.c, 4294967295u) ^ 22142u)), abs(~max(select(vec4<i32>(2147483647i, var_6.a, 0i, 11161i), vec4<i32>(-1i, var_6.a, var_1.a, u_input.a), var_1.b.x), vec4<i32>(u_input.a, -18322i, var_6.a, var_5.a))), vec2<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_6.a, -1i), vec2<i32>(var_5.a, var_6.a))) & firstLeadingBit(1i), _wgslsmith_add_i32(~var_5.a, _wgslsmith_mult_i32(-var_5.a, ~0i))));
}

