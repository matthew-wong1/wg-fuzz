struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    global0 = array<Struct_2, 21>();
    var var_0 = countOneBits(countOneBits(firstTrailingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, u_input.a, arg_2.b.x, -53009i), firstTrailingBit(vec4<i32>(-18570i, arg_2.b.x, u_input.b, -62156i))))));
    var var_1 = arg_2.c.e;
    let var_2 = !select(!arg_1, select(arg_1, select(arg_1, arg_1, all(vec4<bool>(false, arg_2.c.e, false, arg_1.x))), vec3<bool>(arg_2.d.e || false, true, arg_1.x && false)), arg_1.x);
    var var_3 = ~firstLeadingBit(51178u);
    return ~((firstTrailingBit(countOneBits(arg_2.d.b)) << (4294967295u % 32u)) << (0u % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<u32> {
    global0 = array<Struct_2, 21>();
    let var_0 = arg_0;
    let var_1 = max(-arg_1.x, var_0.a);
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    return vec3<u32>(83271u, countOneBits(min(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 42270u, arg_0.b, var_0.b), vec4<u32>(var_0.b, var_0.b, arg_0.b, 16147u)), ~u_input.c), func_3(arg_0.c, !vec3<bool>(true, var_0.e, true), global0[_wgslsmith_index_u32(abs(29006u), 21u)]))), firstTrailingBit(firstLeadingBit(42426u)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2156f, arg_3) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(abs(arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1241f) - -412f))));
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(!arg_1, select(true, (arg_2.x >= u_input.c) | true, any(select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1))))), true);
    var var_3 = Struct_1(-(~u_input.d), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-622f, _wgslsmith_f_op_f32(max(var_1.x, -725f)), var_2.x))), -615f, var_2.x);
    var var_4 = vec2<bool>(all(select(!(!vec4<bool>(var_2.x, var_2.x, false, true)), vec4<bool>(any(vec3<bool>(false, arg_1, var_3.e)), true, false, !arg_1), true)), all(vec3<bool>(true, var_3.e, arg_1)));
    return Struct_1(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_3.a, -4333i) & -u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-74964i, u_input.a), vec2<i32>(1i, u_input.d))), var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_3, 1846f)))), _wgslsmith_f_op_f32(-1f))), !(var_3.b == _wgslsmith_sub_u32(759u, var_3.b)) & var_3.e);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_0 = arg_1.a;
    var var_1 = vec2<f32>(arg_0.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(328f, arg_1.d.c)), _wgslsmith_f_op_f32(abs(1f)), arg_1.c.e)) * arg_1.d.c));
    let var_2 = Struct_1(14713i, 1u, _wgslsmith_f_op_f32(min(arg_0.c.d, _wgslsmith_f_op_f32(sign(-1535f)))), _wgslsmith_f_op_f32(max(arg_0.d.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1912f, arg_1.d.d) + 1589f))))), u_input.b != (2147483647i ^ -max(arg_1.b.x, arg_0.c.a)));
    return u_input.c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = firstLeadingBit(func_5(Struct_2(-(vec2<i32>(328i, u_input.d) | vec2<i32>(13834i, -2147483647i)), vec3<i32>(-28198i, ~u_input.b, -23733i), func_4(1f, true, func_2(Struct_1(12486i, u_input.c, arg_0, arg_0, false), vec3<i32>(0i, u_input.d, u_input.b)), _wgslsmith_div_f32(arg_0, 229f)), Struct_1(3096i, _wgslsmith_div_u32(u_input.c, 60682u), _wgslsmith_f_op_f32(f32(-1f) * -379f), func_4(1904f, true, vec3<u32>(u_input.c, 4294967295u, u_input.c), arg_0).d, true)), Struct_2(~(~vec2<i32>(u_input.d, u_input.b)), ~vec3<i32>(u_input.a, u_input.b, u_input.a), func_4(_wgslsmith_f_op_f32(round(arg_0)), any(vec2<bool>(false, false)), vec3<u32>(u_input.c, u_input.c, u_input.c) >> (vec3<u32>(u_input.c, 0u, u_input.c) % vec3<u32>(32u)), -159f), func_4(_wgslsmith_f_op_f32(-arg_0), false, firstLeadingBit(vec3<u32>(u_input.c, 37191u, 1u)), arg_0)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, 90609u), _wgslsmith_sub_u32(4294967295u, u_input.c)), vec3<u32>(u_input.c, 31575u, ~u_input.c)), func_4(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c)) >= u_input.c, min(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 1u), vec3<u32>(16434u, u_input.c, u_input.c), vec3<u32>(29701u, 0u, 0u)), vec3<u32>(u_input.c, u_input.c, 0u)), _wgslsmith_f_op_f32(-519f - arg_0))));
    let var_1 = !(var_0 <= ~0u);
    var var_2 = u_input.a;
    var var_3 = global0[_wgslsmith_index_u32(var_0, 21u)];
    var_2 = var_3.d.a;
    return Struct_2(-vec2<i32>(-361i, _wgslsmith_sub_i32(abs(u_input.b), -u_input.b)), var_3.b, var_3.c, Struct_1(u_input.d, u_input.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-var_3.c.d)), func_4(arg_0, -u_input.b < u_input.d, countOneBits(~vec3<u32>(2801u, 32292u, 4294967295u)), func_4(-707f, var_3.c.e, ~vec3<u32>(var_3.c.b, var_0, 16886u), -679f).c).e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-798f);
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2143f * var_0.c.d))), 1000f)), -472f)));
    var_0 = func_1(_wgslsmith_f_op_f32(ceil(func_4(-554f, var_0.d.e, select(vec3<u32>(u_input.c, var_0.d.b, var_0.d.b) << (vec3<u32>(u_input.c, 1u, var_0.d.b) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, u_input.c, 4294967295u), select(vec3<bool>(true, false, var_0.d.e), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), var_0.c.d).d)));
    var var_2 = ~vec3<u32>(_wgslsmith_sub_u32(106249u, u_input.c), ~_wgslsmith_add_u32(u_input.c, min(u_input.c, var_0.c.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, 4294967295u, 48009u, _wgslsmith_clamp_u32(1u, u_input.c, var_0.c.b)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.b, var_0.c.b), vec2<u32>(var_0.d.b, u_input.c)), var_0.c.b, var_0.d.b)));
    var var_3 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) * -926f)))).b.x;
    var_2 = vec3<u32>(var_2.x, var_0.d.b, ~u_input.c) | ~(~(~reverseBits(vec3<u32>(12152u, u_input.c, 51247u))));
    let var_4 = func_4(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-716f + var_1.x))))), false, vec3<u32>(var_0.d.b, ~_wgslsmith_div_u32(44264u, _wgslsmith_mod_u32(12615u, var_0.c.b)), _wgslsmith_mult_u32(u_input.c ^ 1u, ~(var_0.c.b >> (23152u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x >> (4294967295u % 32u), _wgslsmith_clamp_i32(u_input.d, u_input.b, _wgslsmith_sub_i32(u_input.d & min(var_0.d.a, u_input.b), -(i32(-1i) * -11184i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, 1558f, -963f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-987f, var_0.d.d, -165f, 1231f), vec4<f32>(348f, var_0.c.d, -1823f, var_0.c.d)))))), abs(_wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.b, var_0.c.a), firstLeadingBit(abs(var_0.c.a)))));
}

