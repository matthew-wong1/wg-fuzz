struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(20370u, 37878u, 12172u), 523f);

var<private> global2: vec2<i32>;

var<private> global3: array<i32, 25>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    return global1.b;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = ~u_input.a;
    let var_1 = 0i;
    return vec3<u32>(select(~(~u_input.a.x), ~(global1.a.x & var_0.x), global0.x), firstTrailingBit(select(abs(arg_1.a.x), ~1u, false)), ~(~(~1u))) << (global1.a % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec4<i32>(global3[_wgslsmith_index_u32(~reverseBits(4294967295u), 25u)], ~(-_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(2147483647i, -46343i)) << (arg_1.a.x % 32u)), -_wgslsmith_mult_i32(-51631i, -global2.x << (~arg_2.x % 32u)), _wgslsmith_mod_i32(u_input.c.x, -global3[_wgslsmith_index_u32(0u, 25u)]));
    let var_1 = arg_3.b;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1456f);
    let var_3 = any(vec4<bool>(true, true, !any(vec2<bool>(global0.x, global0.x)), true));
    var var_4 = arg_1;
    return global3[_wgslsmith_index_u32(~0u | ~_wgslsmith_div_u32(abs(_wgslsmith_mult_u32(32687u, global1.a.x)), ~(~var_4.a.x)), 25u)];
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    global4 = ~func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, -29651i, -12569i), (u_input.c.zwz ^ u_input.c.yzy) ^ vec3<i32>(global2.x, 44889i, 2360i)), Struct_1(func_3(1f, Struct_1(vec3<u32>(1u, arg_3, arg_3), -1226f)), _wgslsmith_div_f32(-434f, global1.b)), max(global1.a, global1.a), Struct_1(u_input.a, global1.b));
    global0 = select(select(!(!vec4<bool>(true, global0.x, arg_0.x, true)), !select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(false, false, true, arg_0.x), !arg_0.x), true), vec4<bool>(true, -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.b, global3[_wgslsmith_index_u32(7094u, 25u)], global2.x), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], u_input.b, global3[_wgslsmith_index_u32(20823u, 25u)], 17529i)) != global3[_wgslsmith_index_u32(firstTrailingBit(14784u), 25u)], select(all(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), arg_0.x, true), all(vec3<bool>(any(vec3<bool>(true, arg_0.x, global0.x)), false, arg_0.x))), !(arg_0.x != global0.x));
    var var_0 = Struct_1(~vec3<u32>(11812u, arg_3, arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + arg_2.x));
    global1 = Struct_1(global1.a, -559f);
    return Struct_1(var_0.a, -429f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(!(!global0.yww), u_input.d.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, 1949f, _wgslsmith_f_op_f32(f32(-1f) * -924f), -2646f), vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.b)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(241f, global1.b), _wgslsmith_f_op_f32(step(-1097f, global1.b))))), u_input.d.x);
    global0 = !vec4<bool>(global0.x, false, !global0.x, firstTrailingBit(global3[_wgslsmith_index_u32(countOneBits(u_input.a.x), 25u)]) > global2.x);
    var var_1 = u_input.a.x;
    global3 = array<i32, 25>();
    let var_2 = true;
    global3 = array<i32, 25>();
    let var_3 = func_2(global0.wyw, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, var_0.a.zx), 37625u), u_input.d.xx), countOneBits(global1.a.zx), abs(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 8327u), u_input.a.yz, u_input.d.wy), vec2<u32>(0u, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, 1037f, 1683f, 881f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, 499f, global1.b) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, -227f, var_0.b, var_0.b))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1602f, 1595f, 1509f, -1000f)))), vec4<bool>(!all(vec3<bool>(true, var_2, global0.x)), !(!var_2), var_2, false))), 46188u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(max(~max(u_input.c.zyz, vec3<i32>(-1i, 2147483647i, global3[_wgslsmith_index_u32(var_3.a.x, 25u)])), u_input.c.zyw), vec3<i32>(-global3[_wgslsmith_index_u32(0u, 25u)], u_input.c.x, ~0i)), _wgslsmith_f_op_f32(sign(-2633f)), min(-u_input.c.x, 1i), max(~(~(~vec4<u32>(1u, global1.a.x, 106388u, global1.a.x))), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 0u, var_3.a.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(global1.a.x, 4294967295u), 0u), 40796u, ~var_3.a.x)));
}

