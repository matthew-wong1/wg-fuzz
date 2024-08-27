struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<f32, 23>;

var<private> global2: vec2<i32> = vec2<i32>(-18410i, 0i);

var<private> global3: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(10237i, 2147483647i, 1i, -54845i));

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_1(arg_2, -616f);
    var var_1 = firstLeadingBit(global2.x);
    global2 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(global2.x, 0i)), vec2<i32>(2147483647i, -2147483647i)), countOneBits(vec2<i32>(1i, global2.x))), -abs(vec2<i32>(global2.x, global2.x))) << (vec2<u32>(~4043u, ~u_input.b.x) % vec2<u32>(32u));
    let var_2 = global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.yx, firstTrailingBit(vec2<u32>(u_input.c.x, ~4294967295u)))), 8u)];
    global1 = array<f32, 23>();
    return var_2.a.wyw;
}

fn func_2() -> f32 {
    var var_0 = !vec3<bool>(any(vec3<bool>(true, true, false)) && false, all(func_3(min(48301u, 0u), Struct_1(vec4<bool>(true, true, false, false), 1000f), vec4<bool>(true, true, true, true))), (global0[_wgslsmith_index_u32(select(0u, u_input.c.x, true), 18u)] < _wgslsmith_f_op_f32(trunc(-134f))) & false);
    let var_1 = Struct_1(!(!vec4<bool>(any(vec2<bool>(true, var_0.x)), !var_0.x, var_0.x, var_0.x)), global0[_wgslsmith_index_u32(abs(u_input.b.x), 18u)]);
    global0 = array<f32, 18>();
    global3 = array<vec4<i32>, 1>();
    let var_2 = Struct_1(!var_1.a, global1[_wgslsmith_index_u32(4260u, 23u)]);
    return -267f;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), global0[_wgslsmith_index_u32(u_input.b.x, 18u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-133f + global0[_wgslsmith_index_u32(u_input.c.x, 18u)]))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], -123f))));
    let var_1 = select(true, true, true);
    let var_2 = _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(~(~u_input.c.x), 1u)], ~global3[_wgslsmith_index_u32(56792u, 1u)]) << (1u % 32u);
    global4 = array<Struct_1, 8>();
    var var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(global3[_wgslsmith_index_u32(1u << (1u % 32u), 1u)], firstLeadingBit(firstTrailingBit(global3[_wgslsmith_index_u32(~4294967295u, 1u)])), firstTrailingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, global2.x, 14212i), vec4<i32>(-2147483647i, 0i, 1i, var_2)))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, var_2, select(abs(global2.x), abs(u_input.a), any(vec2<bool>(true, var_1))), var_2), abs(global3[_wgslsmith_index_u32(~4294967295u, 1u)])));
    return global4[_wgslsmith_index_u32(u_input.b.x, 8u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~vec2<u32>(4294967295u, (u_input.b.x ^ abs(u_input.b.x)) >> (u_input.c.x % 32u));
    let var_1 = 20205i;
    global4 = array<Struct_1, 8>();
    global3 = array<vec4<i32>, 1>();
    global2 = abs(-(abs(vec2<i32>(-25143i, 2147483647i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0) % vec2<u32>(32u))) ^ vec2<i32>(i32(-1i) * -arg_0, -50544i));
    return global4[_wgslsmith_index_u32(12910u, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.c, firstLeadingBit(~vec4<u32>(u_input.b.x, 104480u, 84645u, u_input.b.x))), 8u)];
    let var_1 = func_4(10255i, func_1(), Struct_1(select(!select(vec4<bool>(false, false, true, true), var_0.a, var_0.a.x), select(vec4<bool>(var_0.a.x, true, false, true), var_0.a, false), !vec4<bool>(var_0.a.x, true, false, var_0.a.x)), _wgslsmith_f_op_f32(func_2())));
    let var_2 = ~(firstTrailingBit(min(72818u, ~15697u)) ^ u_input.b.x);
    let var_3 = u_input.c.xwz;
    global2 = vec2<i32>(firstTrailingBit(u_input.d), u_input.a);
    var var_4 = select(all(vec2<bool>(!(!var_1.a.x), _wgslsmith_add_i32(-2147483647i, u_input.d) > ~global2.x)), !any(!func_4(1i, Struct_1(var_1.a, global0[_wgslsmith_index_u32(var_2, 18u)]), Struct_1(var_1.a, var_1.b)).a), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.b), var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(select(78910u, 0u, false), 23u)])), _wgslsmith_f_op_f32(round(-419f)))), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(trunc(299f))))), var_3.xy);
}

