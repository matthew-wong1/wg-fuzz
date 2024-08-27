struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: Struct_1;

var<private> global3: array<u32, 6> = array<u32, 6>(1u, 0u, 39609u, 4294967295u, 33000u, 47514u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(413f, min(vec2<u32>(arg_0.a.x, _wgslsmith_div_u32(0u, u_input.d.x)), ~vec2<u32>(0u, 1u)) & _wgslsmith_div_vec2_u32(vec2<u32>(~global2.c.x, reverseBits(41333u)), _wgslsmith_mult_vec2_u32(u_input.d.yy >> (vec2<u32>(global2.c.x, 18952u) % vec2<u32>(32u)), arg_0.b.c >> (vec2<u32>(0u, global3[_wgslsmith_index_u32(global2.c.x, 6u)]) % vec2<u32>(32u)))), u_input.d.yz);
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    var var_1 = arg_0.c.x;
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.c, abs(var_0.c)), 1u);
    return Struct_2(global2.c, Struct_1(-151f, ~vec2<u32>(0u, arg_0.a.x) << (max(firstLeadingBit(vec2<u32>(22922u, 1u)), vec2<u32>(var_0.c.x, 9393u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(arg_0.a, firstLeadingBit(vec2<u32>(13403u, global3[_wgslsmith_index_u32(u_input.b, 6u)]) & var_0.b), vec2<u32>(var_0.b.x ^ 65206u, ~var_2.x))), arg_0.c, 19285i);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = global2.a;
    var var_1 = arg_1.a.x;
    global0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.a + arg_1.b.a), arg_1.b.a))))), _wgslsmith_f_op_f32(-global2.a), false));
    var var_2 = !select(vec3<bool>(any(vec4<bool>(false, false, arg_1.c.x, arg_1.c.x)), _wgslsmith_f_op_f32(-1255f * arg_1.b.a) < _wgslsmith_f_op_f32(-1179f - 971f), all(!vec4<bool>(true, arg_1.c.x, true, true))), select(select(!vec3<bool>(arg_1.c.x, false, true), vec3<bool>(false, arg_1.c.x, false), select(vec3<bool>(false, false, true), vec3<bool>(false, arg_1.c.x, arg_1.c.x), arg_1.c.x)), select(!vec3<bool>(false, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_1.c.x, true, false), !vec3<bool>(arg_1.c.x, false, true)), false), arg_1.c.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.a, func_2(func_2(global1[_wgslsmith_index_u32(arg_1.b.b.x, 13u)])).b.a)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, global0.x) & global2.c, func_2(arg_0))), _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(sign(1000f)), true)))), _wgslsmith_mod_vec2_u32(min(~(~vec2<u32>(7408u, global0.x)), firstTrailingBit(arg_1.c)), abs(vec2<u32>(arg_0.b.c.x, _wgslsmith_mod_u32(global2.b.x, 62952u)))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, 42393u)), vec2<u32>(u_input.d.x, _wgslsmith_clamp_u32(arg_0.b.b.x, global0.x, arg_1.b.x))), global2.b));
    global1 = array<Struct_2, 13>();
    var var_1 = func_2(func_2(func_2(Struct_2(global2.c, Struct_1(global2.a, u_input.d.yx, var_0.b), select(arg_0.c, arg_0.c, arg_0.c), 2147483647i)))).b;
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_0.a.x, firstTrailingBit(arg_1.c.x)), ~19000u << (global0.x % 32u))), global0.x);
    var var_3 = func_2(arg_0);
    return ~_wgslsmith_add_vec2_u32(var_0.b, abs(firstTrailingBit(arg_0.a)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = ~select(~arg_1.a, func_1(Struct_2(arg_1.a, Struct_1(global2.a, vec2<u32>(15878u, global2.b.x), global2.c), select(arg_3.c, arg_3.c, false), -2147483647i), arg_3.b, arg_1.b.a), arg_3.c);
    let var_1 = select(!vec3<bool>(true, any(select(vec4<bool>(false, true, arg_3.c.x, true), vec4<bool>(false, arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.c.x)), true), !(!(!(!vec3<bool>(arg_1.c.x, false, arg_1.c.x)))), vec3<bool>(any(select(!vec4<bool>(arg_1.c.x, arg_3.c.x, arg_3.c.x, true), select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_3.c.x, false), vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_1.c.x), vec4<bool>(arg_3.c.x, arg_1.c.x, false, false)), !vec4<bool>(arg_1.c.x, false, true, arg_3.c.x))), true, !(arg_0.x == arg_1.b.a)));
    let var_2 = global2.a == global2.a;
    var var_3 = !(func_1(func_2(global1[_wgslsmith_index_u32(global0.x, 13u)]), Struct_1(211f, reverseBits(vec2<u32>(arg_3.a.x, 0u)), global2.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a)))).x < arg_2);
    var var_4 = 1613f;
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(select(global2.a, 1009f, true)), global2.a) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.a, 130f, -1754f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.a, global2.a, global2.a))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a, global2.a, global2.a), vec3<f32>(global2.a, -341f, 1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.a, 1463f, 434f), vec3<f32>(global2.a, global2.a, -698f))) * vec3<f32>(-1361f, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.a)))), Struct_2(~(global2.b << (global2.c % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(17343u, 4294967295u), global2.b & vec2<u32>(81264u, u_input.b)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global2.a, -964f)))), max(vec2<u32>(global2.c.x, global0.x), func_1(global1[_wgslsmith_index_u32(17526u, 13u)], Struct_1(global2.a, global2.c, vec2<u32>(1u, 0u)), 1294f)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(47652u, 6u)]), vec2<u32>(0u, 8448u))), vec2<bool>(true, true), 19964i), 4294967295u << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 6u)], u_input.c, global2.b.x), reverseBits(vec3<u32>(37050u, global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(global0.x, 6u)]))), global2.c.x) % 32u), global1[_wgslsmith_index_u32(1u, 13u)]);
    let var_1 = func_2(func_2(global1[_wgslsmith_index_u32(4294967295u, 13u)])).b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-max(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, -2147483647i, 29811i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a, 45528i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -5869i, 0i, 1i), vec4<i32>(u_input.a, u_input.a, -11260i, 51491i)))), -((vec4<i32>(-3269i, u_input.a, 19209i, -8841i) ^ vec4<i32>(-13757i, u_input.a, u_input.a, u_input.a)) | vec4<i32>(u_input.a, u_input.a, u_input.a, -16203i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2.a, global2.a)), -945f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(264f, 407f))))), u_input.a);
}

