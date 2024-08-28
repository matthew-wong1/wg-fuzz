struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false), -160f);

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = i32(-1i) * -u_input.a.x;
    var var_1 = global1.a;
    var var_2 = Struct_2(global1.a);
    var_1 = Struct_1(vec3<bool>(global1.a.a.x, !all(var_2.a.a.xx) & any(!global1.a.a.yy), true), var_2.a.b);
    global0 = var_2.a;
    return select(!select(global0.a, !vec3<bool>(true, global0.a.x, global0.a.x), global1.a.a), var_1.a, var_1.a);
}

fn func_2() -> bool {
    global0 = global1.a;
    let var_0 = Struct_1(func_3(), _wgslsmith_f_op_f32(min(global1.a.b, _wgslsmith_f_op_f32(-global1.a.b))));
    let var_1 = Struct_2(global1.a);
    let var_2 = vec4<i32>(~(-1i), u_input.a.x, ~u_input.a.x, _wgslsmith_div_i32(~global2.x, ~(-1i)));
    var var_3 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, var_2.x, 1i, firstTrailingBit(2147483647i))), vec4<i32>(-firstTrailingBit(u_input.a.x), 1i, -27338i, -75131i)) << (~_wgslsmith_dot_vec3_u32(select(~vec3<u32>(25292u, 66480u, 38947u), ~vec3<u32>(26415u, 46695u, 45849u), global0.a), countOneBits(~vec3<u32>(87150u, 0u, 50423u))) % 32u);
    return all(select(!(!(!vec3<bool>(true, global0.a.x, global1.a.a.x))), !global0.a, !global1.a.a.x));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = select(select(vec4<bool>(global0.a.x, all(global0.a), false | global0.a.x, true), vec4<bool>(global1.a.a.x, false, !global0.a.x == func_2(), true), !(!vec4<bool>(global0.a.x, global1.a.a.x, global0.a.x, global0.a.x))), vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1)))) < _wgslsmith_f_op_f32(global0.b + _wgslsmith_div_f32(-1342f, arg_1)), global0.a.x, global1.a.a.x, global2.x <= min(select(1i, global2.x, global1.a.a.x), -10477i | global2.x)), all(vec4<bool>(true, global0.a.x, any(vec3<bool>(global0.a.x, true, false)), true)));
    let var_1 = -1i;
    global0 = global1.a;
    global0 = global1.a;
    let var_2 = select(global0.a.zz, var_0.zx, global0.a.x);
    return Struct_2(global1.a);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = ~countOneBits(1u >> (_wgslsmith_mult_u32(1u, ~4294967295u) % 32u));
    global0 = Struct_1(global1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -326f));
    global2 = max(-(~vec3<i32>(1i, u_input.a.x, 43375i)), _wgslsmith_sub_vec3_i32(-(vec3<i32>(41582i, 2147483647i, 0i) ^ vec3<i32>(-47209i, arg_1, u_input.a.x)), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-13776i, global2.x, 1i), vec3<i32>(-1774i, u_input.a.x, 1211i))))) ^ _wgslsmith_div_vec3_i32(firstTrailingBit(countOneBits(vec3<i32>(arg_1, global2.x, 18768i))), -(-vec3<i32>(u_input.a.x, global2.x, -1i) ^ vec3<i32>(-2147483647i, u_input.a.x, arg_1)));
    var_0 = 1u >> (0u % 32u);
    let var_1 = 1994f;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec2<i32>(1i, _wgslsmith_mod_i32(~(~(-29993i)), 15127i)) >> (firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    global2 = ~((vec3<i32>(69519i, 0i, u_input.a.x) & select(vec3<i32>(-12728i, u_input.a.x, u_input.a.x), vec3<i32>(-1i, var_0.x, global2.x), false)) << (~(~vec3<u32>(7009u, 57998u, 1222u)) % vec3<u32>(32u))) ^ vec3<i32>(firstTrailingBit(1i), var_0.x, u_input.a.x & _wgslsmith_mod_i32(reverseBits(var_0.x), -53892i));
    var var_1 = _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(0u, ~35414u), ~0u & _wgslsmith_dot_vec4_u32(vec4<u32>(39672u, 9858u, 69157u, 116094u), vec4<u32>(70367u, 0u, 4294967295u, 4294967295u)), 1u), ~vec3<u32>(38901u, _wgslsmith_mult_u32(72623u, ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 13605u, 80339u, 36512u))));
    let var_2 = global1.a;
    global2 = firstLeadingBit(vec3<i32>(firstTrailingBit(-5987i), firstLeadingBit(u_input.a.x), u_input.a.x));
    return func_4(Struct_2(arg_3), -26414i, Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1006f)) - _wgslsmith_f_op_f32(-arg_3.b))));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927f + 623f))))));
    var var_1 = global1.a;
    var var_2 = 2147483647i;
    let var_3 = Struct_2(Struct_1(select(!(!vec3<bool>(false, arg_0.a.a.x, false)), var_1.a, vec3<bool>(arg_0.a.a.x, func_4(arg_0, u_input.a.x, global1.a).a.a.x, var_1.a.x & false)), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(round(-1434f)))));
    var var_4 = global2.x ^ -global2.x;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~37862u, ~29392u);
    global1 = Struct_2(func_6(func_5(func_4(func_1(u_input.a.x, 2173f), firstTrailingBit(u_input.a.x), func_1(-49965i, 763f).a), global1.a, -297f, global1.a), vec3<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 36254u), vec3<u32>(var_0.x, 48391u, 4294967295u)), 1u), var_0.x, 5723u)));
    let var_1 = Struct_2(Struct_1(global1.a.a, global1.a.b));
    let var_2 = ~_wgslsmith_div_vec3_u32(~select(~vec3<u32>(var_0.x, var_0.x, var_0.x), firstTrailingBit(vec3<u32>(var_0.x, var_0.x, var_0.x)), true), select(countOneBits(vec3<u32>(4294967295u, var_0.x, var_0.x)), vec3<u32>(var_0.x, var_0.x, var_0.x) | vec3<u32>(42139u, var_0.x, var_0.x), global1.a.a) << (firstLeadingBit(vec3<u32>(1u, 52364u, var_0.x)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer((firstLeadingBit(~vec4<i32>(u_input.a.x, global2.x, global2.x, u_input.a.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(-11605i, global2.x, global2.x, -1i) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global2.x), vec4<i32>(-14287i, global2.x, -14146i, global2.x))) | vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(48624i, 55816i, -36715i), vec3<i32>(-2147483647i, 0i, -57018i), var_1.a.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -24063i, 0i), vec3<i32>(global2.x, 22324i, global2.x))), u_input.a.x << ((var_0.x ^ 38726u) % 32u), global2.x, -21819i), -4669i, _wgslsmith_add_vec3_u32(var_2 << (countOneBits(~vec3<u32>(16510u, 4294967295u, 55466u)) % vec3<u32>(32u)), var_2 | _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, var_2.x, 32037u), abs(var_2))), var_2.x);
}

