struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 1>;

var<private> global4: Struct_2 = Struct_2(70234u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    global1 = Struct_2(~(~abs(_wgslsmith_mult_u32(global0.a, 8696u))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-365f, -1174f, global2.x, global2.x))) + vec4<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(f32(-1f) * -588f), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1887f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -471f, global2.x, global2.x) * vec4<f32>(-954f, global2.x, global2.x, -870f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, global2.x, 1188f, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-851f, global2.x, global2.x, global2.x), vec4<f32>(-311f, global2.x, -642f, -797f))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-503f)), _wgslsmith_f_op_f32(-1f), 326f, _wgslsmith_f_op_f32(-global2.x)));
    let var_0 = _wgslsmith_div_f32(-890f, global2.x);
    global3 = array<bool, 1>();
    var var_1 = 251f;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) - global2.x))))));
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_1(vec2<u32>(firstLeadingBit(global4.a), _wgslsmith_div_u32(global4.a, 1u)), firstLeadingBit(firstLeadingBit(abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, -1i))))));
    var var_1 = vec3<i32>(u_input.b.x, -38218i, ~(~_wgslsmith_dot_vec3_i32(u_input.a & u_input.a, vec3<i32>(var_0.a.b.x, -12674i, var_0.a.b.x))));
    let var_2 = ~firstTrailingBit(vec4<u32>(reverseBits(global4.a), _wgslsmith_div_u32(global4.a, u_input.d), _wgslsmith_div_u32(global0.a, var_0.a.a.x), ~0u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(5201u, 45366u)), ~var_0.a.a), global0.a, 118986u, global4.a), ~(~(~vec4<u32>(51481u, global0.a, var_0.a.a.x, var_0.a.a.x))));
    let var_3 = _wgslsmith_sub_i32(var_1.x, firstTrailingBit(((-1i >> (0u % 32u)) & u_input.b.x) ^ -var_0.a.b.x));
    var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_1.x, _wgslsmith_mod_i32(reverseBits(46623i), min(var_3 ^ 1i, _wgslsmith_add_i32(u_input.b.x, -2147483647i)))), firstTrailingBit(u_input.a), vec3<i32>(var_3, i32(-1i) * -1i, _wgslsmith_mult_i32(38337i, var_3)));
    return global2.x <= global2.x;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global4 = Struct_2(reverseBits(4294967295u));
    global1 = Struct_2(u_input.d);
    let var_0 = global2.yz;
    var var_1 = Struct_2(28848u);
    var var_2 = arg_3;
    return Struct_1(~vec2<u32>(u_input.d, 1u), max(arg_3.a.b >> (firstLeadingBit(select(vec4<u32>(global1.a, global0.a, global4.a, 36219u), vec4<u32>(global1.a, var_2.a.a.x, 0u, global0.a), false)) % vec4<u32>(32u)), reverseBits(var_2.a.b)));
}

fn func_1() -> u32 {
    global4 = Struct_2(reverseBits(_wgslsmith_add_u32((u_input.d << (global4.a % 32u)) << (max(58201u, 30513u) % 32u), _wgslsmith_mod_u32(global4.a, global0.a))));
    global1 = Struct_2((abs(_wgslsmith_mult_u32(5785u, global0.a)) ^ ~(~global0.a)) << (reverseBits(~_wgslsmith_mult_u32(1u, u_input.d)) % 32u));
    let var_0 = Struct_3(func_4(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<u32>(0u, 1u), vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, 1i)), vec4<i32>(-1i, 12225i, 0i, 1i))), _wgslsmith_div_f32(712f, global2.x), _wgslsmith_f_op_f32(ceil(global2.x)))), true, func_3(), Struct_3(Struct_1(vec2<u32>(global4.a, 1u) | vec2<u32>(global1.a, 35509u), firstLeadingBit(vec4<i32>(-2147483647i, u_input.c, 1i, u_input.b.x))))));
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1258f * global2.x) * -361f) + global2.x), -737f, -1000f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-822f, global2.x, 311f, 1261f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1241f, -310f, 1604f, global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, global2.x, 1170f))) + _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 1159f, 567f, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, global2.x, global2.x, -1000f))))));
    global4 = Struct_2(global1.a);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -9195i;
    var var_1 = min(_wgslsmith_clamp_i32(-8202i, _wgslsmith_div_i32(2147483647i, -17606i), _wgslsmith_mod_i32(_wgslsmith_add_i32(41708i, u_input.a.x), 9219i) >> (max(_wgslsmith_add_u32(21735u, global4.a), func_1()) % 32u)), -firstTrailingBit(abs(-933i)));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1476f * -165f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1789f) * global2.x)) + 357f), _wgslsmith_f_op_f32(round(global2.x)), all(select(vec3<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(9159u, global1.a), 1u)], global3[_wgslsmith_index_u32(~37508u, 1u)]), vec3<bool>(false, all(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(global0.a, 1u)])), global3[_wgslsmith_index_u32(global4.a, 1u)] & global3[_wgslsmith_index_u32(global4.a, 1u)]), global3[_wgslsmith_index_u32(global4.a ^ max(global1.a, global1.a), 1u)]))));
    global3 = array<bool, 1>();
    var var_3 = !select(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(30236u, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(1u, 1u)]), !vec4<bool>(global3[_wgslsmith_index_u32(1u, 1u)], true, true, global3[_wgslsmith_index_u32(1u, 1u)]), !global3[_wgslsmith_index_u32(74354u, 1u)]), vec4<bool>(0i < (var_0 | 20538i), !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(17009u, u_input.d), 1u)], !(!global3[_wgslsmith_index_u32(4294967295u, 1u)]), any(select(vec2<bool>(false, false), vec2<bool>(false, global3[_wgslsmith_index_u32(global1.a, 1u)]), false))), false);
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, ~global1.a, _wgslsmith_sub_vec4_i32(abs(select(select(vec4<i32>(-52045i, u_input.c, 0i, var_0), vec4<i32>(u_input.a.x, 2147483647i, u_input.c, var_0), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(32785u, 1u)])), -vec4<i32>(2147483647i, var_0, 1i, 2147483647i), vec4<bool>(var_3.x, var_3.x, var_3.x, global3[_wgslsmith_index_u32(global1.a, 1u)]))), select(vec4<i32>(14552i << (u_input.d % 32u), var_0, -1i << (global0.a % 32u), u_input.c), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(9707i, u_input.b.x, u_input.a.x, -59114i), vec4<i32>(var_0, 9354i, var_0, -9425i))), !global3[_wgslsmith_index_u32(u_input.d, 1u)])), ~u_input.d, 8478u);
}

