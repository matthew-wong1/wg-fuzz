struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 12>;

var<private> global3: Struct_3;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<f32> {
    global2 = array<vec3<f32>, 12>();
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 4294967295u), vec4<u32>(u_input.a, 36942u, arg_1.c, u_input.a)), countOneBits(vec4<u32>(0u, 66828u, u_input.a, arg_1.c))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) * _wgslsmith_f_op_vec2_f32(select(arg_1.b.a, vec2<f32>(_wgslsmith_f_op_f32(231f * arg_1.b.a.x), arg_1.b.a.x), !(!vec2<bool>(arg_2.c, true))))), _wgslsmith_add_vec2_i32(arg_1.a.zx, vec2<i32>(-2147483647i, -arg_1.b.d)), false, 1i);
    let var_2 = firstLeadingBit(vec4<u32>(~_wgslsmith_add_u32(reverseBits(1u), _wgslsmith_dot_vec3_u32(var_0.wyy, vec3<u32>(6756u, var_0.x, var_0.x))), firstTrailingBit(8503u >> (_wgslsmith_div_u32(var_0.x, arg_1.c) % 32u)), u_input.a, 2262u));
    global1 = true | (_wgslsmith_f_op_f32(sign(arg_2.a.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(arg_1.b.a.x + var_1.a.x))));
    return vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), -899f))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32) -> vec2<f32> {
    global0 = Struct_3(_wgslsmith_mod_i32(global0.a, global0.a));
    global2 = array<vec3<f32>, 12>();
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(14409u, 1u, u_input.a, _wgslsmith_clamp_u32(1u, 6767u, ~u_input.a)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), select(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), firstTrailingBit(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), all(vec3<bool>(true, false, true))))), _wgslsmith_sub_vec4_u32(select(abs(~vec4<u32>(1u, u_input.a, 0u, u_input.a)), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, false), true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 37912u, 4885u) << (select(vec4<u32>(u_input.a, 33622u, u_input.a, 15788u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 34803u), vec4<u32>(u_input.a, u_input.a, u_input.a, 111207u)), vec4<u32>(u_input.a, ~1u, ~u_input.a, ~1u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(18723u, u_input.a, ~3909u, _wgslsmith_add_u32(u_input.a, u_input.a)), abs(firstTrailingBit(abs(vec4<u32>(u_input.a, 56423u, 4294967295u, 1u))))));
    global1 = !(global3.a > 2147483647i);
    let var_1 = -400f;
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(855f, var_1), vec2<f32>(-831f, var_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 530f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(712f, 105f), arg_1.zx), _wgslsmith_f_op_vec2_f32(arg_1.zz * vec2<f32>(var_1, arg_2)))))))));
}

fn func_1() -> f32 {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-886f, _wgslsmith_f_op_f32(f32(-1f) * -272f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(true, Struct_2(vec3<i32>(-1i, var_0, var_0), Struct_1(vec2<f32>(-875f, 179f), vec2<i32>(global3.a, var_0), true, -1i), 4294967295u), Struct_1(vec2<f32>(1000f, 175f), vec2<i32>(global3.a, global4.a), false, global0.a)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(358f, -703f), vec2<f32>(1262f, 689f)) * _wgslsmith_f_op_vec2_f32(func_3(Struct_3(14729i), vec4<f32>(243f, -466f, -621f, -169f), -315f))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), true)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) * 101f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_2(true, Struct_2(vec3<i32>(global4.a, 19379i, global0.a), Struct_1(vec2<f32>(var_1.x, -213f), vec2<i32>(global3.a, global4.a), false, -41210i), 17015u), Struct_1(vec2<f32>(1782f, 286f), vec2<i32>(var_0, var_0), false, global4.a))).x, 499f, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -816f, 1120f, var_1.x) + vec4<f32>(1157f, -904f, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(953f, var_1.x, -612f, var_1.x), vec4<f32>(var_1.x, -786f, 314f, var_1.x), false)) - vec4<f32>(var_1.x, 784f, 2428f, var_1.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 416f, 234f, -388f))))))));
    var var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32((firstTrailingBit(vec2<i32>(var_0, var_0)) << (~vec2<u32>(u_input.a, 33261u) % vec2<u32>(32u))) & abs(~vec2<i32>(global0.a, -2471i)), abs(firstLeadingBit(vec2<i32>(1i, 45892i)) >> (firstTrailingBit(vec2<u32>(24861u, 51071u)) % vec2<u32>(32u)))), ~firstLeadingBit(firstLeadingBit(-vec2<i32>(-1i, global0.a))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(~(~global0.a));
    let var_0 = _wgslsmith_f_op_f32(select(-1275f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1633f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_vec2_f32(func_2(true, Struct_2(vec3<i32>(-1674i, 2147483647i, global3.a), Struct_1(vec2<f32>(436f, -606f), vec2<i32>(50898i, 1i), true, 73646i), 15194u), Struct_1(vec2<f32>(-1008f, 1446f), vec2<i32>(global4.a, 1i), false, global4.a))).x))), true));
    var var_1 = Struct_3(1i);
    let var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, global0.a, global4.a), vec4<i32>(2147483647i, 0i, 54441i, global4.a)), vec4<i32>(-21091i, -2147483647i, -238i, global4.a))), vec4<i32>(-101658i, firstTrailingBit(~2147483647i), global3.a, abs(-var_1.a))), abs(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-61867i, global4.a, -1i), vec3<i32>(-2147483647i, -2147483647i, global0.a) >> (vec3<u32>(0u, 1u, u_input.a) % vec3<u32>(32u))), global4.a)), var_1.a);
    global2 = array<vec3<f32>, 12>();
    global3 = Struct_3(global4.a);
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(true & all(vec2<bool>(true, false)), Struct_2(firstLeadingBit(vec3<i32>(global4.a, global0.a, 2147483647i)), Struct_1(vec2<f32>(823f, 408f), vec2<i32>(34103i, 1925i), false, 12264i), u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, -291f))), var_2.yy, all(vec2<bool>(true, true)), 1i))).x, 451f), vec2<i32>(_wgslsmith_sub_i32(-2147483647i, var_1.a), global4.a), _wgslsmith_div_i32(1i << (1u % 32u), i32(-1i) * -3377i) != ~min(var_1.a, var_2.x), 3147i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -2352f) - var_3.a.x), var_3.a.x, var_0));
}

