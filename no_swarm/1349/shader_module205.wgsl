struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<f32, 30>;

var<private> global2: i32 = -1i;

var<private> global3: array<vec4<u32>, 17>;

var<private> global4: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = arg_1;
    global3 = array<vec4<u32>, 17>();
    global4 = _wgslsmith_f_op_f32(-339f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_3.x)), arg_1.b))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.b);
    global0 = array<bool, 2>();
    return 424f;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    global4 = 610f;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), 1538f, _wgslsmith_f_op_f32(func_3(vec3<i32>(5468i, arg_0.a.x, arg_0.a.x), arg_0, vec4<i32>(arg_0.a.x, -890i, arg_0.a.x, 1i), vec2<f32>(-2211f, 1416f))), _wgslsmith_f_op_f32(round(-715f))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), -550f, _wgslsmith_f_op_f32(f32(-1f) * -1364f), arg_0.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1268f, -300f, arg_0.b, global1[_wgslsmith_index_u32(1u, 30u)]) * vec4<f32>(406f, global1[_wgslsmith_index_u32(arg_0.c.x, 30u)], 909f, -1552f))))));
    global2 = -2147483647i;
    let var_1 = global1[_wgslsmith_index_u32(arg_0.c.x, 30u)];
    let var_2 = arg_0;
    return vec2<i32>(-_wgslsmith_add_i32(27483i, i32(-1i) * -9884i), ~select(var_2.a.x, ~_wgslsmith_div_i32(arg_0.a.x, var_2.a.x), true));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(arg_0.a, func_2(Struct_1(arg_0.a, -1438f, vec2<u32>(56077u, 1u) << (vec2<u32>(1u, var_0.c.x) % vec2<u32>(32u))), all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], arg_1, false), vec3<bool>(true, global0[_wgslsmith_index_u32(40593u, 2u)], true), vec3<bool>(arg_1, true, true))))), _wgslsmith_f_op_f32(trunc(var_0.b)), firstTrailingBit(vec2<u32>(~arg_0.c.x >> (u_input.a.x % 32u), 71326u)));
    let var_2 = max(_wgslsmith_add_vec4_u32(vec4<u32>(~(~1u), 68657u, _wgslsmith_div_u32(124759u, 1u), _wgslsmith_mod_u32(var_0.c.x, _wgslsmith_div_u32(90495u, 5682u))), _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(~(~var_0.c.x), 17u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, var_0.c.x), 17u)] ^ ~vec4<u32>(0u, 4294967295u, 19951u, 4294967295u))), max(firstLeadingBit(select(vec4<u32>(64001u, arg_0.c.x, 4294967295u, arg_0.c.x), vec4<u32>(0u, 84843u, 1u, 0u), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], false, arg_1, arg_1)) >> (~global3[_wgslsmith_index_u32(1u, 17u)] % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(arg_0.c.x, 4294967295u, 4294967295u, 13699u), ~vec4<u32>(var_0.c.x, 4294967295u, 4294967295u, var_0.c.x), arg_1), reverseBits(countOneBits(vec4<u32>(var_1.c.x, 4294967295u, 38222u, 4294967295u))), ~reverseBits(global3[_wgslsmith_index_u32(5418u, 17u)]))));
    global1 = array<f32, 30>();
    let var_3 = _wgslsmith_sub_u32(var_2.x, 1u);
    return ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(func_2(Struct_1(vec2<i32>(var_1.a.x, -2147483647i), -1082f, vec2<u32>(0u, 0u)), true).x, -(-2444i | var_1.a.x)), countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(-34670i, var_0.a.x), firstTrailingBit(arg_0.a.x))));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(abs(-vec2<i32>(-28089i, 0i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(1u, 30u)], max(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 15062u), max(u_input.a.zy, vec2<u32>(u_input.a.x, u_input.a.x))), ~vec2<u32>(u_input.a.x, u_input.a.x) ^ vec2<u32>(~83636u, u_input.a.x)));
    let var_1 = var_0;
    var var_2 = Struct_1(-abs(var_0.a), global1[_wgslsmith_index_u32(var_1.c.x, 30u)], reverseBits(vec2<u32>(1u, 1u)) ^ var_0.c);
    global3 = array<vec4<u32>, 17>();
    global0 = array<bool, 2>();
    return Struct_1(var_2.a, -1037f, vec2<u32>(_wgslsmith_add_u32(~69078u, _wgslsmith_add_u32(31334u, _wgslsmith_clamp_u32(1u, 7479u, u_input.a.x))), _wgslsmith_div_u32(12269u, _wgslsmith_div_u32(var_1.c.x, 63155u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-964f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1704f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)] - global1[_wgslsmith_index_u32(u_input.a.x, 30u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), _wgslsmith_f_op_f32(-554f + global1[_wgslsmith_index_u32(0u, 30u)])))))))));
    var var_1 = 4294967295u;
    var var_2 = func_4(~vec2<i32>(_wgslsmith_add_i32(func_1(Struct_1(vec2<i32>(2147483647i, 1i), -1385f, vec2<u32>(4294967295u, u_input.a.x)), global0[_wgslsmith_index_u32(47920u, 2u)], -1044f), ~2147483647i), _wgslsmith_div_i32(0i, firstTrailingBit(-33942i))));
    var var_3 = ~_wgslsmith_add_vec3_i32(~vec3<i32>(-13721i, var_2.a.x, var_2.a.x) & ~(~vec3<i32>(var_2.a.x, 0i, 0i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(var_2.a.x, -1i, var_2.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(29055i, var_2.a.x, var_2.a.x), vec3<i32>(var_2.a.x, -78245i, var_2.a.x))) & vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(10434i, -3996i, var_2.a.x, var_2.a.x), vec4<i32>(var_2.a.x, var_2.a.x, -2147483647i, var_2.a.x)), 0i));
    let var_4 = func_4(-(vec2<i32>(_wgslsmith_add_i32(-1i, -21834i), _wgslsmith_add_i32(var_2.a.x, var_2.a.x)) & ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, var_2.a.x), vec2<i32>(36909i, 79968i))));
    let var_5 = all(!(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_4.c.x, 2u)], true, false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 2u)]), true))));
    var var_6 = !(!global0[_wgslsmith_index_u32(39728u, 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_3.x, firstTrailingBit(_wgslsmith_sub_i32(0i, var_4.a.x) ^ func_1(Struct_1(vec2<i32>(-1i, 45840i), -1000f, u_input.a.xx), global0[_wgslsmith_index_u32(0u, 2u)], -1296f))), vec3<f32>(global1[_wgslsmith_index_u32(1u ^ _wgslsmith_add_u32(abs(0u), ~u_input.a.x), 30u)], _wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b - -685f), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_4.c.x, u_input.a.x), 30u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(880f, 1f, var_5 && all(vec2<bool>(true, var_5)))) - var_4.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(func_3(vec3<i32>(2147483647i, 62147i, 1i), var_4, vec4<i32>(var_4.a.x, 2147483647i, var_3.x, var_4.a.x), vec2<f32>(global1[_wgslsmith_index_u32(0u, 30u)], 906f))), global1[_wgslsmith_index_u32(~u_input.a.x, 30u)], -758f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(199f, 151f, -547f, -323f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, -784f, global1[_wgslsmith_index_u32(24018u, 30u)], -133f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, var_0, global1[_wgslsmith_index_u32(52954u, 30u)], var_2.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, -790f, global1[_wgslsmith_index_u32(var_4.c.x, 30u)], -316f)))))));
}

