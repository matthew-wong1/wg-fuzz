struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<bool, 12>;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(-810f, 1000f), true);

var<private> global3: vec4<u32>;

var<private> global4: array<vec3<u32>, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    return min(select(select(~(~(-1i)), ~(i32(-1i) * -7634i), !(!global2.b)), arg_0, global2.b), arg_2);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec2<i32> {
    global1 = array<bool, 12>();
    var var_0 = abs(~max(arg_1.x, arg_1.x));
    let var_1 = global1[_wgslsmith_index_u32(arg_1.x, 12u)];
    let var_2 = !select(!(!vec2<bool>(global1[_wgslsmith_index_u32(37776u, 12u)], arg_0.b)), vec2<bool>(!(global1[_wgslsmith_index_u32(26293u, 12u)] & global2.b), !(u_input.a <= -60043i)), select(vec2<bool>(select(global2.b, global2.b, global2.b), global1[_wgslsmith_index_u32(15031u, 12u)]), vec2<bool>(true && global2.b, all(vec2<bool>(false, global2.b))), select(vec2<bool>(global2.b, false), vec2<bool>(true, false), arg_2.x < arg_2.x)));
    let var_3 = !(!(reverseBits(26143u) < _wgslsmith_mod_u32(arg_1.x, global3.x)) || var_2.x);
    return select(vec2<i32>(~arg_2.x, 1i), -(vec2<i32>(-1i) * -arg_2), vec2<bool>(global1[_wgslsmith_index_u32(36670u, 12u)], ~(-arg_2.x) == u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>) -> i32 {
    global4 = array<vec3<u32>, 26>();
    global3 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(min(~arg_0, u_input.b), ~arg_0, select(firstLeadingBit(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 54789u) << (vec4<u32>(24898u, 0u, 4294967295u, global3.x) % vec4<u32>(32u))), select(~arg_0, max(vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.b.x), u_input.b), true), select(!vec4<bool>(false, global2.b, global2.b, global1[_wgslsmith_index_u32(global3.x, 12u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4818u, 12u)], false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], true)), vec4<bool>(true, true, global2.b, global2.b)))), u_input.b);
    global1 = array<bool, 12>();
    global3 = firstTrailingBit(u_input.b);
    global1 = array<bool, 12>();
    return _wgslsmith_sub_i32(abs(2147483647i), -countOneBits(i32(-1i) * -49382i) | _wgslsmith_add_i32(func_3(Struct_2(global2.a, global1[_wgslsmith_index_u32(global3.x, 12u)]), u_input.b.yx, arg_1, vec4<f32>(global0[_wgslsmith_index_u32(101738u, 2u)], global2.a.x, global2.a.x, global2.a.x)).x >> (u_input.c % 32u), u_input.a));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mod_i32(-(u_input.a | -u_input.a), func_2(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), ~vec3<i32>(u_input.a, 0i, u_input.a)), vec2<u32>(min(global3.x, 7960u), 1u), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, u_input.a) ^ vec2<i32>(11389i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(u_input.a, 50893i))), _wgslsmith_clamp_vec2_u32(~u_input.b.wy, min(vec2<u32>(4294967295u, 0u), global3.yx >> (global3.zx % vec2<u32>(32u))), firstTrailingBit(firstLeadingBit(vec2<u32>(global3.x, u_input.b.x))))));
    let var_1 = _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, -u_input.a), func_4(~u_input.b, func_3(Struct_2(vec2<f32>(arg_0.a.x, 271f), arg_1.b), vec2<u32>(1u, 0u), vec2<i32>(u_input.a, u_input.a), vec4<f32>(-182f, global2.a.x, arg_1.a.x, arg_0.a.x))) >> (4261u % 32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(arg_1.a, arg_0.a, arg_0.b && arg_0.b)), false);
    let var_3 = arg_0;
    var_2 = Struct_2(global2.a, global2.b && ((_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) <= 36213u) || false));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_add_vec3_u32(vec3<u32>(4585u, u_input.c, _wgslsmith_mod_u32(8844u, abs(u_input.c))), abs(global4[_wgslsmith_index_u32(24027u, 26u)])), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, ~_wgslsmith_mod_u32(21179u, 24261u), 52275u), ~vec3<u32>(func_1(Struct_2(vec2<f32>(global2.a.x, global2.a.x), global2.b), Struct_2(vec2<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global2.a.x), false)), 1u, countOneBits(global3.x))));
    var var_1 = i32(-1i) * -_wgslsmith_add_i32(u_input.a, u_input.a);
    var var_2 = false & global1[_wgslsmith_index_u32(global3.x, 12u)];
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, 2246f), global2.a) + global2.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(46429u, 2u)], global2.a.x), global2.a)))), u_input.a == u_input.a);
    var var_4 = var_0.yz;
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a.x))))), var_3.a.x, var_3.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1226f))))), _wgslsmith_f_op_f32(sign(-1926f)), var_3.a.x == _wgslsmith_f_op_f32(f32(-1f) * -939f))));
    let var_6 = ~u_input.b;
    global0 = array<f32, 2>();
    var var_7 = firstTrailingBit(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(~vec2<i32>(-8905i, -2147483647i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_u32(~1u, 1u, _wgslsmith_add_u32(u_input.b.x, var_0.x)), _wgslsmith_mod_u32(min(var_0.x, ~(~var_0.x)), 3819u), vec3<u32>(countOneBits(4294967295u), 1u, 0u), vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_f32(select(-502f, _wgslsmith_f_op_f32(var_3.a.x + 1000f), any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(global3.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 12u)], global2.b, false), global1[_wgslsmith_index_u32(1u, 12u)]))))));
}

