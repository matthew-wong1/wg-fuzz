struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-34961i, 20598i, 2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = select(select(abs(min(reverseBits(vec2<u32>(u_input.a, 37643u)), abs(vec2<u32>(8222u, 79214u)))), ~(~(~vec2<u32>(u_input.a, u_input.a))), !((u_input.b.x | 23822i) != 33725i)), ~(~max(~vec2<u32>(45398u, 25516u), vec2<u32>(1u, 4294967295u))), vec2<bool>(true, true));
    var_0 = vec2<u32>(~(~73829u), 0u);
    var var_1 = Struct_2(abs(u_input.a << (0u % 32u)), Struct_1(any(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec3<i32>(u_input.b.x, global0.x, -1i), u_input.b.xww));
    let var_2 = _wgslsmith_dot_vec4_i32(~u_input.b, countOneBits(~(-u_input.b)) >> (~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 20801u, 755u), vec4<u32>(67443u, 15123u, 1u, 4294967295u))) % vec4<u32>(32u)));
    var_0 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_0.x, var_1.a), vec4<u32>(var_0.x, u_input.a, var_0.x, 8617u)), reverseBits(~var_0.x)), ~(~(var_0.x & var_1.a))) >> (vec2<u32>(1u, firstLeadingBit(var_0.x)) % vec2<u32>(32u));
    return -489f;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = firstLeadingBit(vec4<u32>(~(u_input.a >> (u_input.a % 32u)), _wgslsmith_div_u32(u_input.a, 4294967295u) ^ 4294967295u, u_input.a << (1u % 32u), u_input.a) >> (vec4<u32>(u_input.a, ~_wgslsmith_div_u32(4294967295u, u_input.a), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4239u, 0u, u_input.a), vec3<u32>(u_input.a, 17331u, 30755u))) % vec4<u32>(32u)));
    let var_1 = Struct_1(false, reverseBits(vec3<i32>(u_input.b.x, -select(-13859i, 24245i, false), _wgslsmith_mult_i32(u_input.b.x, -2147483647i) | ~(-2147483647i))), u_input.b.www);
    var var_2 = (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(808f)) * _wgslsmith_div_f32(-900f, 251f)))) < _wgslsmith_f_op_f32(func_3())) | var_1.a;
    global0 = vec3<i32>(~(-1i), -8216i, -18391i);
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2462f * -1000f)))))))));
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> bool {
    let var_0 = Struct_2(1u, Struct_1(func_2(u_input.b.xw), _wgslsmith_sub_vec3_i32(select(u_input.b.yyw << (vec3<u32>(u_input.a, 83832u, 4294967295u) % vec3<u32>(32u)), u_input.b.zwx, select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), _wgslsmith_add_vec3_i32(vec3<i32>(-17749i, u_input.b.x, 1i), u_input.b.zxx)), vec3<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -11134i, 8654i, u_input.b.x), -vec4<i32>(global0.x, -2147483647i, global0.x, u_input.b.x)), -41152i)));
    return any(select(vec2<bool>(any(vec2<bool>(true, var_0.b.a)), select(true, true, true) & (var_0.b.a || true)), vec2<bool>(true, true), any(select(!vec4<bool>(var_0.b.a, true, var_0.b.a, var_0.b.a), select(vec4<bool>(false, var_0.b.a, var_0.b.a, var_0.b.a), vec4<bool>(true, var_0.b.a, true, var_0.b.a), vec4<bool>(var_0.b.a, var_0.b.a, false, true)), all(vec4<bool>(false, false, var_0.b.a, true))))));
}

fn func_4(arg_0: bool) -> Struct_1 {
    global0 = _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 2147483647i, -1i), u_input.b.xxw), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(20765i, -313i, u_input.b.x), u_input.b.xxz)), firstTrailingBit(-u_input.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, abs(-39023i), _wgslsmith_add_i32(5629i, -2307i)) >> (vec3<u32>(23074u, _wgslsmith_add_u32(u_input.a, u_input.a), 1u) % vec3<u32>(32u)), -min(u_input.b.ywz ^ vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.zxz)));
    let var_0 = _wgslsmith_mult_vec4_u32(reverseBits(countOneBits(vec4<u32>(0u, 15283u, 52661u, 4294967295u) ^ vec4<u32>(u_input.a, u_input.a, 25603u, u_input.a))) >> (firstLeadingBit(vec4<u32>(u_input.a, 7972u, 4294967295u, 88978u)) % vec4<u32>(32u)), select(countOneBits(~vec4<u32>(u_input.a, 4961u, 13870u, 4294967295u) << (firstTrailingBit(vec4<u32>(0u, 0u, 0u, u_input.a)) % vec4<u32>(32u))), ~vec4<u32>(35937u, 4294967295u, u_input.a, 18997u) | vec4<u32>(14762u, 4294967295u >> (0u % 32u), 0u, 4294967295u), !select(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, true, true, arg_0)), vec4<bool>(false, true, true, false), arg_0)));
    global0 = -(-_wgslsmith_sub_vec3_i32(~u_input.b.xwy, min(vec3<i32>(-9293i, 0i, 1i), vec3<i32>(81353i, 29949i, global0.x))) << (_wgslsmith_div_vec3_u32(var_0.www >> (~vec3<u32>(0u, u_input.a, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 18531u, 4294967295u) << (_wgslsmith_mod_vec3_u32(var_0.ywy, var_0.yzw) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(false, -(vec3<i32>(firstTrailingBit(global0.x), ~global0.x, -1i) & vec3<i32>(_wgslsmith_mult_i32(31030i, u_input.b.x), countOneBits(-19768i), -2147483647i)), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, global0.x, 16694i), u_input.b), 43826i, global0.x));
    let var_2 = Struct_2(~max(19121u, u_input.a ^ ~4294967295u), Struct_1(var_1.a, vec3<i32>(2147483647i ^ _wgslsmith_add_i32(u_input.b.x, -3927i), i32(-1i) * -var_1.c.x, _wgslsmith_mult_i32(u_input.b.x, var_1.c.x) & (i32(-1i) * -13537i)), vec3<i32>(var_1.b.x, -(~(-2147483647i)), _wgslsmith_add_i32(0i & global0.x, _wgslsmith_mod_i32(2147483647i, global0.x)))));
    return Struct_1(func_2(~(-vec2<i32>(var_2.b.c.x, u_input.b.x))), -var_2.b.c, vec3<i32>(~(~u_input.b.x | u_input.b.x), _wgslsmith_mult_i32(var_2.b.b.x, -2147483647i & u_input.b.x), firstLeadingBit(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-539f, -1326f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1774f, -1622f)))), ~firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, u_input.a, 0u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1333f + -453f), -992f, -2534f, _wgslsmith_f_op_f32(1000f * 559f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-806f, 2037f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(2013f * 161f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(510f))))));
    let var_2 = -(~abs(var_0.c.x));
    global0 = _wgslsmith_clamp_vec3_i32(var_0.b, var_0.b, vec3<i32>(_wgslsmith_div_i32(~(u_input.b.x & var_0.c.x), var_0.b.x & -56682i), 87344i, 1i));
    var_0 = func_4(all(!(!(!vec3<bool>(var_0.a, var_0.a, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(63306u, vec3<u32>(4294967295u >> (u_input.a % 32u), 57903u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 15888u, u_input.a, 84758u), vec4<u32>(u_input.a, u_input.a, 57577u, 4294967295u) >> (vec4<u32>(u_input.a, 1u, 1u, 4294967295u) % vec4<u32>(32u))), ~(~1u))), 70291u, -min(~(-13827i), ~(-19145i)));
}

