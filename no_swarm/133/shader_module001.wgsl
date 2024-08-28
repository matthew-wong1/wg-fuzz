struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 36476u;

var<private> global1: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_4(Struct_2(~(~(-32071i)) | firstTrailingBit(~u_input.b.x), -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.b.x != (u_input.b.x | ~36651i)));
    var var_1 = _wgslsmith_div_f32(1196f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1179f))) + 1f))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f))) - _wgslsmith_f_op_f32(sign(2452f))), -1000f);
    let var_3 = _wgslsmith_mult_i32(-(-(u_input.a.x ^ 2147483647i) >> (~u_input.c % 32u)), var_0.a.a);
    var_1 = -1375f;
    return select(!vec2<bool>((var_0.a.c & false) || !var_0.a.c, true), vec2<bool>(true, ~_wgslsmith_dot_vec3_u32(vec3<u32>(9284u, u_input.c, 62710u), vec3<u32>(0u, u_input.c, u_input.c)) >= (u_input.c << (_wgslsmith_clamp_u32(u_input.c, u_input.c, 23362u) % 32u))), var_0.a.c);
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = func_3();
    let var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.a.x)) >> (~vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)), reverseBits(-u_input.b)), -24323i, false), _wgslsmith_div_vec3_i32(min(vec3<i32>(abs(-9943i), _wgslsmith_sub_i32(1i, 20688i), u_input.b.x | u_input.a.x), -_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, -45931i))), abs(u_input.a)), Struct_1(0u | _wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(59006u, u_input.c)), 48186u, -vec3<i32>(select(-1i, 0i, false), -2147483647i, u_input.b.x | -52183i), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) * _wgslsmith_f_op_f32(388f + -271f)))));
    global0 = ~25010u;
    let var_2 = Struct_4(Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.c.c.x, -2147483647i, 22795i), vec4<i32>(1i, var_1.b.x, -38446i, -10779i)) & var_1.b.x, select(-u_input.a.x ^ firstTrailingBit(u_input.b.x), u_input.b.x, arg_0.x), any(vec2<bool>(true, true))));
    global1 = -19574i >> (var_1.c.b % 32u);
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_u32(22515u, 4294967295u, arg_0.c.b);
    global1 = min(u_input.b.x, -47328i);
    let var_1 = vec3<u32>(12486u & abs(_wgslsmith_clamp_u32(~1u, 1u, var_0)), _wgslsmith_sub_u32(~reverseBits(99376u), firstTrailingBit(~_wgslsmith_sub_u32(4294967295u, u_input.c))), _wgslsmith_mod_u32(abs(1u), 34404u));
    return func_2(vec4<bool>(!(~0u > ~var_0), arg_0.a.c, arg_0.a.c, true)).a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = Struct_1(~u_input.c, ~5836u, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.b, arg_1.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_3.a.a, arg_3.a.a, 23617i), vec4<i32>(-32027i, arg_0.a, arg_2.a, arg_2.a))) & func_4(Struct_3(Struct_2(arg_1.c.x, 6817i, true), u_input.a, Struct_1(1u, 1u, vec3<i32>(0i, arg_0.b, arg_1.c.x), false, arg_1.e)), 0u, arg_1.e).b, -_wgslsmith_div_i32(firstLeadingBit(-2147483647i), i32(-1i) * -7483i), arg_1.c.x), all(vec2<bool>(func_3().x, arg_3.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.e))));
    var var_1 = -min(vec4<i32>(_wgslsmith_clamp_i32(var_0.c.x | 1i, -18133i << (u_input.c % 32u), arg_3.a.a), abs(~(-1i)), u_input.b.x, _wgslsmith_clamp_i32(-1i, ~40675i, 5605i)), vec4<i32>(1i, arg_1.c.x >> (~arg_1.a % 32u), _wgslsmith_div_i32(u_input.b.x, arg_0.a), -u_input.a.x & -2147483647i));
    let var_2 = func_2(vec4<bool>(arg_3.a.c & ((true && var_0.d) || true), firstTrailingBit(11935u) > _wgslsmith_mult_u32(1u | var_0.a, firstLeadingBit(68603u)), true, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.c, arg_1.a, var_0.a), ~vec4<u32>(31951u, 53243u, u_input.c, arg_1.a)) == ~(0u << (0u % 32u)))).c;
    global1 = countOneBits(23762i);
    var var_3 = Struct_1(max(firstTrailingBit(79149u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(47328u, arg_1.a, var_2.a, 14770u), vec4<u32>(arg_1.b, var_2.b, 1u, 4294967295u)), vec4<u32>(0u, 38160u, var_2.b, 0u)), ~firstTrailingBit(vec4<u32>(arg_1.b, 70866u, var_0.b, arg_1.b)))), max(~_wgslsmith_add_u32(4294967295u, arg_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 4294967295u) << (vec2<u32>(37732u, 26779u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(2966u, 24129u), vec2<u32>(var_2.a, arg_1.a))) << (arg_1.a % 32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(arg_1.c, vec3<i32>(27936i, var_2.c.x, arg_3.a.a)), var_0.c), vec3<i32>(-arg_0.b, -27570i, ~(~12356i))), arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f))) - _wgslsmith_f_op_f32(902f * _wgslsmith_f_op_f32(1616f * _wgslsmith_f_op_f32(arg_1.e - -211f)))));
    return StorageBuffer(u_input.a, -1i, vec2<f32>(-1032f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e))))), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(u_input.c, 23350u), ~4294967295u, arg_1.a)), firstLeadingBit(vec3<u32>(var_3.a, var_0.b, var_2.b))), _wgslsmith_add_i32(~(~u_input.b.x) & min(i32(-1i) * -75242i, _wgslsmith_add_i32(arg_1.c.x, 33637i)), arg_1.c.x));
}

fn func_1() -> StorageBuffer {
    global1 = reverseBits(u_input.b.x);
    return func_5(func_4(func_2(vec4<bool>(true, true, true, true)), max(firstTrailingBit(1u), 4294967295u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1044f)), 124f, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(152f)), -926f))))), func_2(vec4<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false)), all(vec2<bool>(true, true)), func_3().x, true)).c, Struct_2(u_input.a.x, max(u_input.a.x, -(u_input.b.x & 2147483647i)), true), Struct_4(Struct_2(_wgslsmith_div_i32(abs(1i), -37290i), _wgslsmith_div_i32(min(u_input.b.x, -2147483647i), u_input.a.x >> (u_input.c % 32u)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-3921i);
    let x = u_input.a;
    s_output = func_1();
}

