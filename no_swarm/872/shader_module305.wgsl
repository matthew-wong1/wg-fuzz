struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-8768i, 24790i, -2489i, 2147483647i, -13708i, -1i, 27373i, 30124i, -1i, i32(-2147483648));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(17423u, 84312u), vec2<i32>(-1i, -1918i), vec4<u32>(4294967295u, 29669u, 58130u, 0u));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(80893u, 4294967295u), vec2<i32>(-15720i, -1i), vec4<u32>(1u, 0u, 1u, 1u));

var<private> global3: array<f32, 14>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = -vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(abs(arg_2.b.x)), -29850i), ~global1.b.x & reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, 68470i, global2.b.x, 1i), vec4<i32>(var_0.b.x, global2.b.x, global0[_wgslsmith_index_u32(21885u, 10u)], arg_2.b.x))), global1.b.x);
    global0 = array<i32, 10>();
    var var_2 = arg_2;
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, ~global2.c.x), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.c.x, 33687u)), global2.c.xw)), 52555u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = global1.a.x;
    global3 = array<f32, 14>();
    global2 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(~1u >> (func_3(global3[_wgslsmith_index_u32(global2.a.x, 14u)], 18159u, Struct_1(global1.a, vec2<i32>(global2.b.x, global1.b.x), vec4<u32>(4294967295u, global1.a.x, u_input.a, global1.c.x))) % 32u), abs(_wgslsmith_div_u32(0u, 1u))), 106873u), select(countOneBits(_wgslsmith_div_vec2_i32(select(global2.b, vec2<i32>(0i, 2147483647i), vec2<bool>(true, true)), _wgslsmith_div_vec2_i32(global1.b, global1.b))), _wgslsmith_div_vec2_i32(select(global2.b, vec2<i32>(2147483647i, global1.b.x), true), select(global1.b, -vec2<i32>(global2.b.x, -1i), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec2<bool>(true, false)), global1.c);
    let var_1 = firstTrailingBit(firstLeadingBit(global2.b.x)) | firstLeadingBit(~(-20960i));
    let var_2 = Struct_1(~vec2<u32>(firstTrailingBit(~global2.a.x), ~select(global2.c.x, 43386u, false)), _wgslsmith_sub_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, global2.b.x), vec2<i32>(41316i, var_1)) & -global2.b), global2.b), global1.c);
    return Struct_1(~(~vec2<u32>(41712u, 77634u)), max(-_wgslsmith_add_vec2_i32(countOneBits(global2.b), select(vec2<i32>(-2147483647i, 14229i), vec2<i32>(global0[_wgslsmith_index_u32(79593u, 10u)], var_2.b.x), false)), -vec2<i32>(i32(-1i) * -1i, var_1)), _wgslsmith_mod_vec4_u32(~select(vec4<u32>(34452u, 32510u, 1u, u_input.a), vec4<u32>(global1.c.x, var_2.c.x, 67571u, var_2.c.x) ^ vec4<u32>(40282u, u_input.a, global2.a.x, global1.c.x), true), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.c >> (var_2.c % vec4<u32>(32u)), ~var_2.c), global2.c >> ((global1.c << (global1.c % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(~global2.c))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    global1 = Struct_1(vec2<u32>(4294967295u | ~arg_1.x, 22929u), ~global2.b, arg_1);
    global1 = func_2(global3[_wgslsmith_index_u32(firstTrailingBit(52960u), 14u)]);
    var var_0 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.x, global2.a.x), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    global3 = array<f32, 14>();
    let var_1 = _wgslsmith_div_vec2_u32(min(global2.c.xy, vec2<u32>(var_0.a.x, select(var_0.c.x, var_0.c.x, true) << ((u_input.a | 6199u) % 32u))), vec2<u32>(~77989u, 1u));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(2977u, 14u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-1928f, global1.c);
    global0 = array<i32, 10>();
    var var_1 = func_2(695f);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_f_op_f32(-1533f - global3[_wgslsmith_index_u32(17842u, 14u)]))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, global3[_wgslsmith_index_u32(4294967295u, 14u)]))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3[_wgslsmith_index_u32(var_1.c.x, 14u)], -1035f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(361f, -1714f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(39584u, 14u)]), vec2<f32>(global3[_wgslsmith_index_u32(var_1.c.x, 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)])), vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 14u)], global3[_wgslsmith_index_u32(59631u, 14u)])))), any(vec2<bool>(true, any(vec4<bool>(false, false, true, false))))))));
    var var_3 = select(vec3<bool>(true, true, !any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), true);
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~46116u, 1i, _wgslsmith_add_vec2_i32(vec2<i32>(var_4.b.x, reverseBits(-2147483647i)), var_0.b | select(~vec2<i32>(35235i, 0i), vec2<i32>(var_1.b.x, 40188i), true)), _wgslsmith_mult_vec3_u32(~vec3<u32>(firstTrailingBit(global1.a.x), _wgslsmith_sub_u32(21704u, global1.c.x), 0u), ~(~vec3<u32>(var_0.c.x, 0u, u_input.a))));
}

