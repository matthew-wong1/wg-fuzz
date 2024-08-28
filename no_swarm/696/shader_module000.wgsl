struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 21>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    let var_0 = abs(~select(vec2<i32>(-global3.d.x, -2147483647i), arg_0.b.zx, !arg_1.zx));
    let var_1 = 2147483647i >= ~_wgslsmith_mod_i32(arg_0.d.x, abs(arg_0.b.x ^ -44256i));
    global3 = global2[_wgslsmith_index_u32(~countOneBits(arg_0.e), 21u)];
    global1 = !vec2<bool>(arg_0.a.x, all(vec3<bool>(true & arg_0.a.x, any(vec3<bool>(arg_0.a.x, false, false)), all(vec3<bool>(false, arg_0.a.x, global0[_wgslsmith_index_u32(global3.e, 5u)])))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, -1785f, 311f), vec3<f32>(global3.c.x, arg_0.c.x, global3.c.x)))), vec3<f32>(global3.c.x, arg_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1071f - global3.c.x), _wgslsmith_div_f32(684f, -420f), !arg_1.x))))));
    return !(~(~u_input.a) <= u_input.a);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(false, func_3(Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(arg_1.e, 5u)], global3.a.x, false), _wgslsmith_sub_vec3_i32(vec3<i32>(global3.d.x, -48438i, -56229i), global3.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1227f, arg_0, 805f, -1000f)), _wgslsmith_add_vec4_i32(arg_1.d, arg_1.d), ~arg_1.e), arg_1.a), false), arg_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1962f, -1581f, -223f, arg_0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3.c * arg_1.c), arg_1.c, !vec4<bool>(global3.a.x, global1.x, false, global3.a.x)))))), arg_1.d, 4294967295u);
    return arg_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = arg_1;
    global2 = array<Struct_1, 21>();
    var var_1 = u_input.b;
    let var_2 = var_0;
    global3 = Struct_1(var_2.a, _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.d.x, global3.b.x | 2147483647i, ~var_2.d.x)), vec3<i32>(52384i, var_2.d.x & (1i >> (var_0.e % 32u)), -74778i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global3.c)), vec4<f32>(-497f, var_0.c.x, arg_0.x, 1000f)), false)), vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), -1293f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c.x, arg_1.c.x))))), arg_1.d, 16331u);
    return _wgslsmith_div_u32(var_2.e, ~global3.e);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.c), _wgslsmith_f_op_vec4_f32(global3.c + global3.c), global1.x || !global1.x)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1717f * arg_0.x)), Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(~u_input.a, 5u)], true), _wgslsmith_div_vec3_i32(vec3<i32>(-1605i, u_input.b, 0i), global3.d.zxx), vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(global3.c.x - arg_0.x), -1000f, arg_0.x), global3.d, _wgslsmith_div_u32(global3.e, ~4294967295u)), ~(~(~0u))), ~(vec3<u32>(~4294967295u, 76614u, ~global3.e) ^ vec3<u32>(4294967295u, select(u_input.a, global3.e, global1.x), u_input.a << (u_input.a % 32u))), vec4<bool>(true, !any(select(vec2<bool>(global3.a.x, global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec2<bool>(global3.a.x, false), global3.a.yz)), global0[_wgslsmith_index_u32(max(u_input.a, abs(u_input.a)), 5u)] || any(vec3<bool>(true, false, global1.x)), global1.x)), 21u)];
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    global1 = var_0.a.xy;
    var var_1 = Struct_1(vec3<bool>(true, global3.a.x, global3.a.x), abs(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, u_input.b, var_0.b.x), vec3<i32>(29327i, -2147483647i, u_input.b)), vec3<i32>(0i, global3.d.x, global3.b.x) & vec3<i32>(global3.b.x, -19852i, global3.b.x))), var_0.c, vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.d.yz >> ((vec2<u32>(63767u, 4294967295u) | vec2<u32>(12194u, u_input.a)) % vec2<u32>(32u)), var_0.b.xz), var_0.d.x, global3.b.x, abs(_wgslsmith_mult_i32(1i, ~(-2147483647i)))), countOneBits(u_input.a));
    return -22313i << (_wgslsmith_mod_u32(var_1.e, 0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    let var_0 = Struct_1(!global3.a, global3.b, vec4<f32>(993f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.c.x, global3.c.x))) * 1f), global3.c.x), vec4<i32>(func_1(vec2<f32>(_wgslsmith_f_op_f32(global3.c.x + -274f), _wgslsmith_f_op_f32(global3.c.x - -596f))), ~_wgslsmith_add_i32(abs(u_input.b), func_2(global3.c.x, Struct_1(global3.a, vec3<i32>(29124i, u_input.b, global3.b.x), vec4<f32>(global3.c.x, -433f, global3.c.x, -896f), global3.d, 67716u), global3.e).b.x), 2147483647i, -(i32(-1i) * -1i)), ~_wgslsmith_dot_vec2_u32(countOneBits(min(vec2<u32>(global3.e, u_input.a), vec2<u32>(u_input.a, global3.e))), countOneBits(~vec2<u32>(4294967295u, global3.e))));
    var var_1 = select(global3.b.x, abs(_wgslsmith_mod_i32(35014i << (global3.e % 32u), global3.d.x)), all(select(vec4<bool>(false, !global1.x, false, true), vec4<bool>(-27170i == u_input.b, all(var_0.a), func_2(var_0.c.x, var_0, 42783u).a.x, false), select(!vec4<bool>(var_0.a.x, false, true, true), vec4<bool>(global1.x, false, true, global0[_wgslsmith_index_u32(global3.e, 5u)]), global3.a.x != true))));
    global2 = array<Struct_1, 21>();
    global0 = array<bool, 5>();
    var var_2 = i32(-1i) * -13935i;
    let var_3 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.x)))), Struct_1(!vec3<bool>(true, true, global1.x), func_2(_wgslsmith_f_op_f32(-1000f - global3.c.x), Struct_1(vec3<bool>(var_0.a.x, global1.x, true), global3.b, vec4<f32>(global3.c.x, var_0.c.x, var_0.c.x, 666f), var_0.d, u_input.a), ~global3.e).d.wxx, vec4<f32>(-374f, global3.c.x, var_0.c.x, _wgslsmith_f_op_f32(floor(var_0.c.x))), ~var_0.d, 1u), var_0.e).a, -vec3<i32>(i32(-1i) * -7664i, ~(-1i), func_2(-1357f, var_0, 65186u).d.x ^ u_input.b), global3.c, -var_0.d, global3.e);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~vec4<u32>(var_3.e, u_input.a, global3.e, u_input.a)), abs(_wgslsmith_mult_u32(39081u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, 4294967295u, var_3.e, global3.e), vec4<u32>(global3.e, 106731u, 0u, u_input.a))) >> (_wgslsmith_clamp_u32(var_0.e, 45216u >> (1u % 32u), 1u) % 32u)));
}

