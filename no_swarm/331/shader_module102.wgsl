struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(0u, 0u, 12682u, 0u, 1u, 23711u, 27883u, 55024u, 1u, 0u, 1u, 68033u, 37910u, 1u, 9747u, 0u, 67084u, 4294967295u);

var<private> global1: vec2<u32> = vec2<u32>(7783u, 1u);

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = vec3<u32>((~reverseBits(arg_1.a.b) & _wgslsmith_add_u32(u_input.b.x >> (arg_1.a.b % 32u), abs(145937u))) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a.e.x, 8095u, 0u), ~vec3<u32>(4294967295u, 79718u, 92980u)) % 32u), firstTrailingBit(u_input.b.x), countOneBits(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(60969u, 0u, u_input.b.x, 56813u), vec4<u32>(global1.x, 40388u, 1u, 41985u)), ~1u, abs(u_input.b.x)), 18u)]));
    global0 = array<u32, 18>();
    let var_1 = arg_1.a.c;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_1.a.d + _wgslsmith_f_op_f32(-arg_1.a.a)), ~arg_1.a.b, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.a.d, arg_1.a.d)))))), var_0.xz);
    let var_3 = arg_0 && arg_0;
    return countOneBits(_wgslsmith_mod_vec2_u32(countOneBits(~arg_1.a.e), select(min(arg_1.a.e, u_input.b | vec2<u32>(1u, 4294967295u)), u_input.b, select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), false), select(vec2<bool>(var_3, true), vec2<bool>(true, arg_0), arg_0), -1000f > arg_1.a.a))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    global1 = u_input.b | ~(~u_input.b);
    global2 = u_input.b.x;
    let var_0 = Struct_2(Struct_1(2300f, 0u, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - arg_3), abs(_wgslsmith_sub_vec2_u32(~u_input.b, ~u_input.b))), u_input.a.yyz);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-556f * _wgslsmith_div_f32(-617f, var_0.a.a)))), _wgslsmith_div_u32(_wgslsmith_add_u32(62233u, ~u_input.b.x), reverseBits(4294967295u)), vec4<i32>(-u_input.c.x ^ (u_input.c.x & -28376i), 2147483647i, -4068i & ~u_input.a.x, 27175i & arg_0.x), _wgslsmith_f_op_f32(step(446f, _wgslsmith_div_f32(-224f, _wgslsmith_f_op_f32(max(952f, var_0.a.d))))), func_3(true, Struct_2(var_0.a, u_input.a.zyy))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 0i, i32(-1i) * -var_0.b.x), vec3<i32>(19846i, u_input.a.x, firstLeadingBit(11283i))));
    global0 = array<u32, 18>();
    return global0[_wgslsmith_index_u32(~1u, 18u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_0 = Struct_1(arg_0.d, ~reverseBits(func_2(vec2<i32>(0i, 11706i), vec3<bool>(true, true, true), -arg_0.c.zx, _wgslsmith_f_op_f32(-arg_0.d))), select(select(-vec4<i32>(arg_1, arg_0.c.x, 1i, arg_0.c.x), _wgslsmith_sub_vec4_i32(arg_0.c, ~vec4<i32>(arg_0.c.x, u_input.a.x, arg_0.c.x, arg_1)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), u_input.c ^ vec4<i32>(_wgslsmith_sub_i32(-2147483647i, arg_0.c.x), -2908i << (global1.x % 32u), firstTrailingBit(arg_1), arg_0.c.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-436f)))))), arg_0.e);
    global2 = ~reverseBits(abs(10687u));
    let var_1 = true;
    return Struct_2(var_0, select(u_input.c.wxw ^ ~var_0.c.xzw, ~vec3<i32>(var_0.c.x, 1i, abs(15744i)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(389f, _wgslsmith_f_op_f32(sign(-108f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(202f)))))), u_input.b.x, -(~vec4<i32>(u_input.a.x, u_input.c.x, 8264i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-898f, -966f))))), ~u_input.b >> ((u_input.b >> (vec2<u32>(u_input.b.x, global1.x) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_mod_i32(_wgslsmith_div_i32(-11838i, -30945i), _wgslsmith_sub_i32(u_input.a.x, 29606i)));
    global1 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 48189u), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(13519u, 0u))), u_input.b & firstLeadingBit(vec2<u32>(global1.x, 0u)), countOneBits(_wgslsmith_clamp_vec2_u32(u_input.b, var_1.a.e, u_input.b))) >> (~var_1.a.e % vec2<u32>(32u)));
    let var_2 = firstTrailingBit(~(~(~(vec4<u32>(4294967295u, global1.x, global0[_wgslsmith_index_u32(4294967295u, 18u)], global1.x) >> (vec4<u32>(0u, 84649u, var_1.a.b, 38612u) % vec4<u32>(32u))))));
    var var_3 = vec3<bool>(false, select(var_0.x && true, false, all(vec4<bool>(!var_0.x, var_2.x == var_1.a.e.x, any(vec3<bool>(false, var_0.x, true)), var_1.b.x < -25580i))), !(_wgslsmith_add_i32(abs(var_1.b.x), ~u_input.a.x) != _wgslsmith_div_i32(81427i, var_1.a.c.x)));
    var var_4 = Struct_2(func_1(var_1.a, abs(var_1.a.c.x)).a, reverseBits(firstTrailingBit(var_1.a.c.wxx)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(1784f, var_4.a.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-788f, var_4.a.d)))))), reverseBits(var_1.a.c.yz << (abs(var_2.zy) % vec2<u32>(32u))));
}

