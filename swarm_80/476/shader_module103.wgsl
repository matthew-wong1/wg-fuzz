struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_1(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -35678i, -12049i, 2147483647i), select(vec4<i32>(9157i, 22312i, -2147483647i, arg_0), vec4<i32>(arg_0, -17479i, arg_0, arg_0), true))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(24452u, 1u)), _wgslsmith_mult_u32(min(1u, 29116u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 59363u, 23582u), vec3<u32>(4294967295u, 4294967295u, 1u))), countOneBits(abs(18064u)), abs(1u)) % vec4<u32>(32u)), !select(all(vec2<bool>(true, true)), true, true), -1316f, countOneBits(firstTrailingBit(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(14073u, 1u)))));
    var_0 = Struct_1(abs(var_0.a) >> (reverseBits(vec4<u32>(~1u, reverseBits(var_0.d), 4294967295u, abs(var_0.d))) % vec4<u32>(32u)), all(select(!(!vec4<bool>(var_0.b, false, var_0.b, false)), vec4<bool>(var_0.b, true, true, var_0.b), select(vec4<bool>(false, true, var_0.b, false), select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), var_0.b), true))), -1000f, var_0.d);
    var_0 = Struct_1(var_0.a, all(vec4<bool>(var_0.b, any(select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(false, false, true, false), var_0.b)), var_0.b, var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1292f * -875f)))) * 1077f), 50934u);
    var_0 = Struct_1(vec4<i32>(arg_0, 1i, firstTrailingBit(firstTrailingBit(24199i)), ~(-2147483647i)) >> (max(vec4<u32>(firstTrailingBit(var_0.d), _wgslsmith_add_u32(var_0.d, var_0.d), ~4573u, abs(1u)), countOneBits(countOneBits(vec4<u32>(var_0.d, 8956u, 61564u, var_0.d)))) % vec4<u32>(32u)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), !(!var_0.b)))), select(33332u, var_0.d, any(!select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b)))));
    var_0 = Struct_1(vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -(~(-12737i)), -51109i, firstTrailingBit(countOneBits(-2147483647i))), !var_0.b, var_0.c, var_0.d);
    return vec4<bool>(true || all(!(!vec3<bool>(var_0.b, var_0.b, var_0.b))), _wgslsmith_dot_vec4_i32(var_0.a, ~var_0.a) > var_0.a.x, 43235u >= max(abs(24322u), var_0.d), u_input.a.x >= firstTrailingBit(min(abs(-1i), 2147483647i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = 10302i;
    var var_1 = Struct_4(Struct_3(true, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), select(!any(vec2<bool>(false, false)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)), !any(vec3<bool>(true, true, true))), select(func_3(u_input.a.x), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false)), vec4<bool>(true, true, false, all(vec3<bool>(true, true, false))))));
    var var_2 = !var_1.a.d.x;
    let var_3 = Struct_2(abs(vec3<u32>(arg_1, arg_1, 10321u) << (min(vec3<u32>(arg_1, 3505u, arg_1), vec3<u32>(1u, 264u, 14131u)) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(abs(arg_1), 0u, ~1u), abs(~vec3<u32>(0u, arg_1, 0u))) % vec3<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(40184u, 33283u) << (~arg_1 % 32u), ~(~1958u)) != (max(~arg_1, reverseBits(arg_1)) & _wgslsmith_div_u32(_wgslsmith_sub_u32(15873u, arg_1), 20369u)), ~vec3<u32>(28232u, ~1u, arg_1), all(func_3(u_input.a.x).yx), Struct_1(firstLeadingBit(vec4<i32>(-23430i, u_input.a.x, var_0, var_0)) | ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -31576i, var_0, 1i), vec4<i32>(var_0, u_input.a.x, var_0, 38900i)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), ~(~0u >> ((4294967295u | arg_1) % 32u))));
    let var_4 = var_1.a.c;
    return Struct_3(!(!any(vec3<bool>(true, true, var_1.a.c))), vec3<bool>(func_3(firstLeadingBit(-var_0)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.e.c))) < 290f, true), all(var_1.a.d), vec4<bool>(_wgslsmith_f_op_f32(-var_3.e.c) != _wgslsmith_f_op_f32(max(838f, -731f)), true, var_3.d, all(var_1.a.d.zwx)));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_3 {
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1323f, arg_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 875f, arg_0))))), 0u);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = -12925i;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-579f, -672f, -814f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.c, arg_0.x, arg_2.e.c))) - vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(480f + arg_2.e.c), _wgslsmith_div_f32(-1731f, arg_2.e.c)))), 9777u);
    let var_2 = Struct_4(var_1);
    var var_3 = var_2.a.b.x;
    var_3 = arg_2.e.b;
    return max(_wgslsmith_sub_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.e.d, arg_2.c.x, arg_2.c.x), arg_2.a), firstLeadingBit(arg_2.a)), select(~arg_2.a, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a.x, 0u, arg_2.e.d), vec3<u32>(arg_2.a.x, 0u, 34747u)), true)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 1u, arg_2.c.x), arg_2.a.x << (16213u % 32u), _wgslsmith_dot_vec3_u32(arg_2.c, arg_2.a)), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(9534u, arg_2.c.x, 0u), arg_2.c)), vec3<u32>(0u, _wgslsmith_clamp_u32(arg_2.c.x, arg_2.c.x, arg_2.a.x), arg_2.c.x & 39915u)) % vec3<u32>(32u)), vec3<u32>(arg_2.c.x, reverseBits(arg_2.c.x), 37704u));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_4 {
    var var_0 = min(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.a.x, -2147483647i, 0i, arg_0.e.a.x), arg_0.e.a), arg_0.e.a.x) << (_wgslsmith_sub_u32(arg_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(44512u, arg_0.a.x, arg_0.a.x), abs(vec3<u32>(4294967295u, arg_0.c.x, 5165u)))) % 32u), abs(~(-_wgslsmith_dot_vec4_i32(arg_0.e.a, vec4<i32>(u_input.a.x, -46165i, u_input.a.x, -1i)))));
    var var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(-183f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_0.e.c), -491f), _wgslsmith_f_op_f32(f32(-1f) * -397f)), ~(~arg_0.e.d));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.e.c, arg_1, arg_1, arg_0.e.c), vec4<f32>(-160f, arg_0.e.c, arg_1, -1073f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, -1778f, arg_0.e.c, arg_0.e.c))))))), vec4<f32>(_wgslsmith_f_op_f32(-1809f + arg_0.e.c), -551f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.c) * _wgslsmith_f_op_f32(f32(-1f) * -635f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-411f, 1026f)))), u_input.a);
    var_0 = firstTrailingBit(reverseBits(1i));
    var var_3 = !select(all(func_2(var_2.a.wxy, arg_0.e.d).d), true, true);
    return Struct_4(func_2(vec3<f32>(797f, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f + -1384f))), ~arg_0.e.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(min(vec4<i32>(-u_input.a.x, 8665i << (0u % 32u), u_input.a.x & u_input.a.x, _wgslsmith_mult_i32(1i, u_input.a.x)), vec4<i32>(-1i, 0i, -1i, -1080i))), !(select(1u, ~4294967295u, all(vec2<bool>(true, false))) != abs(_wgslsmith_mod_u32(2807u, 4294967295u))), -1478f, ~39036u);
    var var_1 = func_5(Struct_2(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, var_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 861f) - vec2<f32>(var_0.c, -346f))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -789f), select(false, var_0.b, var_0.b)), Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d, 2304u, var_0.d), vec3<u32>(4294967295u, 0u, 0u)), var_0.b, ~vec3<u32>(40197u, 1u, var_0.d), 1i == var_0.a.x, Struct_1(vec4<i32>(1i, u_input.a.x, u_input.a.x, -6019i), true, -2237f, 1u))), select(true, var_0.b | !var_0.b, true), ~(select(vec3<u32>(6819u, var_0.d, var_0.d), vec3<u32>(1u, 1u, var_0.d), var_0.b) ^ (vec3<u32>(1u, 18057u, 4294967295u) & vec3<u32>(39103u, var_0.d, var_0.d))), _wgslsmith_f_op_f32(-1793f * _wgslsmith_f_op_f32(min(var_0.c, -1116f))) > _wgslsmith_f_op_f32(-233f - _wgslsmith_f_op_f32(exp2(var_0.c))), Struct_1(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(var_0.a, var_0.a), min(u_input.a.x, 0i), u_input.a.x), !var_0.b, 1113f, ~_wgslsmith_mult_u32(var_0.d, 16666u))), _wgslsmith_f_op_f32(max(-1734f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c + var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(step(-703f, 1042f)))))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1577f + 1380f)), _wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(var_0.c, -782f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, -258f))))), -min(~vec2<i32>(-21336i, -27814i) >> (~vec2<u32>(var_0.d, 4294967295u) % vec2<u32>(32u)), max(vec2<i32>(var_0.a.x, u_input.a.x) >> (vec2<u32>(170u, 44783u) % vec2<u32>(32u)), select(var_0.a.zz, vec2<i32>(-1i, var_0.a.x), var_1.a.b.xx))));
    let var_3 = abs(_wgslsmith_add_u32(19338u, ~var_0.d));
    let var_4 = Struct_2(~vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(0u), max(var_3, var_0.d)), 5967u, ~(var_3 << (0u % 32u))), var_0.a.x == _wgslsmith_dot_vec3_i32(-var_0.a.yyy, var_0.a.yww), max(~abs(~vec3<u32>(1u, 38211u, 65348u)), vec3<u32>(abs(~var_0.d), ~(~var_0.d), abs(abs(29700u)))), var_1.a.a, Struct_1(var_0.a, var_1.a.a, var_0.c, ~(~1u) << (0u % 32u)));
    var var_5 = ~vec4<u32>(~var_4.c.x, func_4(vec2<f32>(var_2.b.x, 1085f), Struct_3(var_4.e.b, var_1.a.d.yzw, true, vec4<bool>(true, true, var_1.a.c, false)), var_4).x ^ min(_wgslsmith_dot_vec2_u32(var_4.a.xy, vec2<u32>(var_0.d, 49092u)), 36941u), _wgslsmith_mod_u32((var_0.d | var_3) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 19151u, var_4.e.d, 51331u), vec4<u32>(var_3, var_4.e.d, var_0.d, 11376u)), 1u), 4294967295u);
    let var_6 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.e.c, var_4.e.c, -1379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - -383f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_4.e.c, -395f) + vec4<f32>(var_4.e.c, 1690f, 706f, var_0.c)))), var_2.b)), _wgslsmith_add_vec2_i32(select(vec2<i32>(-2147483647i, var_2.c.x), min(vec2<i32>(2147483647i, -11431i), var_2.c | vec2<i32>(u_input.a.x, 31303i)), false), vec2<i32>(-36557i, firstLeadingBit(countOneBits(u_input.a.x)))));
    let var_7 = var_1.a.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, var_6.c.x);
}

