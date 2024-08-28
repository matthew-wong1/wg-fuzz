struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(vec2<i32>(u_input.b, -u_input.a));
    let var_1 = -1i;
    let var_2 = var_0;
    var var_3 = ~(~u_input.c.x);
    var var_4 = abs(~_wgslsmith_mult_u32(firstTrailingBit(54249u) >> (1u % 32u), u_input.c.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(abs(-212f)))), _wgslsmith_f_op_f32(f32(-1f) * -832f))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    global0 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(508f, 355f, _wgslsmith_f_op_f32(-1000f + -1848f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-741f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), -646f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2479f, 669f, var_0.x) * var_0))))))));
    return Struct_1((arg_0.a ^ (vec2<i32>(-2675i, arg_0.a.x) | ~arg_0.a)) >> (arg_1 % vec2<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    global0 = array<bool, 31>();
    var var_0 = func_2(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 0i) & min(vec2<i32>(u_input.a, u_input.b), vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(2147483647i, u_input.b), vec2<i32>(1i, u_input.b))), ~u_input.c.xy, !vec3<bool>(true, !arg_2.x, any(arg_2) && true), false);
    var_0 = Struct_1(var_0.a);
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    return firstLeadingBit(30149u);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = func_2(func_2(arg_2, vec2<u32>(countOneBits(0u), _wgslsmith_mult_u32(arg_1, ~1u)), !select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, false, false), true), !vec3<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(23402u, 31u)]), u_input.c.x <= 0u), true), abs(~u_input.c.zy), !(!select(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], true, true), vec3<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(65119u, 31u)]))), false);
    let var_1 = func_2(Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(43819i, 32221i) & -vec2<i32>(var_0.a.x, 1i), ~min(var_0.a, arg_2.a))), vec2<u32>(~(~arg_1), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4100u, 0u, u_input.c.x), u_input.c.x, 22898u), firstTrailingBit(func_1(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], -1000f, arg_0)))), !vec3<bool>(global0[_wgslsmith_index_u32(~arg_1 | ~4294967295u, 31u)], all(vec3<bool>(false, arg_0.x, arg_0.x)), true), arg_0.x);
    global0 = array<bool, 31>();
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(4294967295u, arg_1, 49088u, 45728u)), ~vec4<u32>(u_input.c.x, 18408u, u_input.c.x, u_input.c.x)), 22712u, 36945u) & (vec3<u32>(~u_input.c.x | select(arg_1, 4294967295u, false), ~(arg_1 | 35054u), ~(u_input.c.x << (arg_1 % 32u))) & _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 47448u, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, 21451u), u_input.c), firstTrailingBit(u_input.c)), u_input.c));
    var_0 = Struct_1(_wgslsmith_div_vec2_i32(var_1.a, _wgslsmith_sub_vec2_i32(vec2<i32>(15003i, -arg_2.a.x), vec2<i32>(~(-1i), _wgslsmith_mult_i32(1i, -24068i)))));
    return _wgslsmith_mult_u32(arg_1, ~max(u_input.c.x, _wgslsmith_add_u32(abs(1u), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -104f;
    let var_1 = -(vec4<i32>(1i, firstTrailingBit(~u_input.b), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1884i, -46560i)), vec2<i32>(-7986i, u_input.b)), -5888i) & -vec4<i32>(abs(35819i), ~(-32271i), -95724i, -u_input.a));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 31u)];
    let var_3 = select(u_input.c, u_input.c, true || global0[_wgslsmith_index_u32(75842u, 31u)]);
    let var_4 = vec3<u32>(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 15950u, firstLeadingBit(4294967295u), 32897u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, var_3.x, u_input.c.x, 28127u), vec4<u32>(1u, 4294967295u, 4782u, u_input.c.x)) >> ((vec4<u32>(90258u, 4294967295u, 2899u, var_3.x) ^ vec4<u32>(11149u, 4294967295u, 4294967295u, u_input.c.x)) % vec4<u32>(32u))), ~func_4(vec2<bool>(true, true), func_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1276f), vec2<bool>(true, true)), func_2(func_2(Struct_1(vec2<i32>(u_input.b, u_input.a)), u_input.c.xz, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], false), global0[_wgslsmith_index_u32(9489u, 31u)]), var_3.zy | vec2<u32>(4682u, var_3.x), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), true)));
    var var_5 = ~(u_input.c ^ ~var_3);
    let var_6 = select(vec2<bool>(!any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_4.x, 31u)], true, global0[_wgslsmith_index_u32(var_4.x, 31u)], false), vec4<bool>(global0[_wgslsmith_index_u32(26507u, 31u)], false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(var_5.x, 31u)], global0[_wgslsmith_index_u32(var_5.x, 31u)], global0[_wgslsmith_index_u32(9333u, 31u)], false))), !(global0[_wgslsmith_index_u32(var_5.x, 31u)] && true) && (_wgslsmith_f_op_f32(abs(var_0)) < -596f)), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(var_5.x, 31u)]), vec2<bool>(false, !global0[_wgslsmith_index_u32(84417u, 31u)]), -26i < u_input.a), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_5.x, 31u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], false), false), !vec2<bool>(true, global0[_wgslsmith_index_u32(84605u, 31u)]), true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x >> (28663u % 32u), 31u)] != !global0[_wgslsmith_index_u32(var_3.x, 31u)], true)), !global0[_wgslsmith_index_u32(~0u, 31u)]);
    let var_7 = vec3<u32>(select(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, var_4.x, 6849u, 39528u), vec4<u32>(71687u, var_3.x, var_4.x, 1u), vec4<bool>(true, true, var_6.x, false)), ~max(vec4<u32>(var_5.x, var_4.x, u_input.c.x, 1u), vec4<u32>(u_input.c.x, var_5.x, 4294967295u, 4294967295u))), ~4294967295u, !(global0[_wgslsmith_index_u32(u_input.c.x, 31u)] == false)), 1u, 23044u);
    let var_8 = u_input.b ^ max(14629i, (-var_1.x | u_input.b) << (u_input.c.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.x, 3022i, var_1.x, 18746i) ^ ~vec4<i32>(u_input.b, 0i, var_8, -10897i), -select(var_1, vec4<i32>(var_1.x, u_input.a, var_1.x, var_8), vec4<bool>(global0[_wgslsmith_index_u32(26753u, 31u)], false, true, false)), vec4<bool>(!var_6.x, var_6.x && false, true, true)), vec4<i32>(_wgslsmith_mult_i32(-var_8, 53372i), -1i, u_input.a, firstTrailingBit(var_8 ^ -11298i))), var_8);
}

