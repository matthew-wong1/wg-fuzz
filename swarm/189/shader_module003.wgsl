struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -38249i, -2612i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(u_input.c.x, global0.zy), Struct_1(_wgslsmith_div_u32(23242u, u_input.c.x), _wgslsmith_div_vec2_i32(global0.yy, ~vec2<i32>(global0.x, 0i))), Struct_1(~(~4294967295u), -global0.yz));
    let var_1 = 1783f;
    global0 = vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(u_input.b), _wgslsmith_mult_i32(u_input.b, -1i), firstLeadingBit(global0.x)), (vec3<i32>(-16807i, -58312i, -1i) & vec3<i32>(var_0.b.b.x, 35959i, 1i)) << (~vec3<u32>(38177u, u_input.a, 103890u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(31245i, global0.x, var_0.c.b.x, global0.x), vec4<i32>(-1679i, -4035i, var_0.a.b.x, global0.x)), vec4<i32>(-5217i, var_0.b.b.x, u_input.b, 8754i) ^ vec4<i32>(var_0.a.b.x, var_0.c.b.x, 0i, -30545i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, global0.x, global0.x)), vec3<i32>(u_input.b, 4978i, global0.x) ^ vec3<i32>(var_0.a.b.x, 14775i, var_0.a.b.x)), -firstLeadingBit(14016i))), 9903i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(-arg_0.x), var_1));
    let var_3 = var_0;
    return -825f;
}

fn func_2(arg_0: vec3<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(507f))) - -589f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-248f, -622f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(128f, -1077f, -261f, -1000f), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false))) + -172f)));
    global0 = vec3<i32>(max(global0.x, i32(-1i) * -2147483647i), max(~countOneBits(u_input.b), -global0.x), u_input.b);
    let var_1 = vec4<bool>(select(any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), reverseBits(reverseBits(global0.x)) == reverseBits(u_input.b)), all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), max(1u, u_input.c.x) == reverseBits(0u));
    let var_2 = vec4<f32>(996f, var_0.x, -431f, _wgslsmith_f_op_f32(abs(var_0.x)));
    global0 = countOneBits(-_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(0i, 1i, global0.x), -vec3<i32>(global0.x, global0.x, global0.x)), reverseBits(vec3<i32>(global0.x, global0.x, -1i))));
    return _wgslsmith_f_op_vec2_f32(step(var_2.xx, var_0.yx));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> u32 {
    global0 = firstTrailingBit(~(-(~vec3<i32>(331i, 2147483647i, -31947i) ^ arg_0.zwy)));
    global0 = arg_0.ywz;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(1u, ~_wgslsmith_sub_u32(u_input.c.x, 0u), ~1u))).x, 916f);
    global0 = reverseBits(vec3<i32>(-select(1i, global0.x, true), 1i, 1i)) & vec3<i32>(~abs(reverseBits(u_input.b)), -2147483647i ^ ((2147483647i ^ global0.x) ^ u_input.b), abs(countOneBits(global0.x)));
    global0 = vec3<i32>(-select(2147483647i, 19650i, any(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec2_i32(-vec2<i32>(-53963i, _wgslsmith_mod_i32(arg_0.x, global0.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(1i, 33885i)), vec2<i32>(-1i, 1i) >> (vec2<u32>(u_input.a, 28086u) % vec2<u32>(32u))) >> (~u_input.c.ww % vec2<u32>(32u))), 35681i);
    return 0u;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec3<u32>(arg_1.c.a, ~func_4(vec4<i32>(_wgslsmith_mult_i32(-35754i, arg_2.a.b.x), -2147483647i, 4374i, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -336f, true)), 2768f, _wgslsmith_f_op_f32(-421f * -1105f), _wgslsmith_f_op_f32(select(-1344f, -1440f, false))), _wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(arg_0, 1u, 4294967295u)))), u_input.a);
    let var_1 = 53722u;
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, arg_2.b.b.x, global0.x)), min(~vec3<i32>(global0.x, u_input.b, u_input.b), firstLeadingBit(vec3<i32>(global0.x, 55352i, -2147483647i)))), _wgslsmith_add_vec3_i32((vec3<i32>(25362i, u_input.b, -25088i) & vec3<i32>(1i, 27618i, -2147483647i)) & min(vec3<i32>(-1i, 60349i, 2147483647i), vec3<i32>(-26074i, arg_1.a.b.x, u_input.b)), ~(~vec3<i32>(arg_1.a.b.x, 5780i, -21163i)))) ^ ~_wgslsmith_div_vec3_i32(vec3<i32>(20266i, 49570i, 0i) << (u_input.c.xzy % vec3<u32>(32u)), -(~vec3<i32>(-1i, u_input.b, 0i)));
    let var_3 = vec3<bool>(firstTrailingBit(1u) >= _wgslsmith_div_u32(u_input.a, arg_0), ~arg_1.c.b.x == ~1i, all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), all(vec2<bool>(true, false)))));
    var_0 = reverseBits(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 15927u) ^ arg_0, arg_0), ~4294967295u, ~9598u));
    return Struct_1(var_1, abs(_wgslsmith_mod_vec2_i32(select(abs(arg_1.a.b), ~var_2.zz, true), vec2<i32>(1832i, 1i))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    global0 = ~(~(~min(-vec3<i32>(global0.x, u_input.b, -8894i), ~vec3<i32>(arg_1.b.x, -2147483647i, arg_1.b.x))));
    var var_0 = 39773i;
    let var_1 = Struct_2(func_1(~_wgslsmith_add_u32(abs(arg_0.a), 11140u), Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, arg_0.a), vec2<u32>(arg_0.a, 0u)), vec2<i32>(global0.x, -18309i)), func_1(52566u, Struct_2(Struct_1(u_input.a, arg_1.b), Struct_1(arg_2.a, arg_0.b), Struct_1(0u, global0.zx)), Struct_2(Struct_1(42855u, arg_0.b), Struct_1(35469u, vec2<i32>(arg_2.b.x, 2147483647i)), Struct_1(arg_1.a, vec2<i32>(arg_2.b.x, -31079i)))), func_1(arg_0.a, Struct_2(Struct_1(u_input.a, vec2<i32>(8988i, arg_2.b.x)), arg_0, arg_0), Struct_2(Struct_1(u_input.a, global0.xy), Struct_1(u_input.c.x, vec2<i32>(arg_1.b.x, global0.x)), Struct_1(4294967295u, vec2<i32>(global0.x, global0.x))))), Struct_2(func_1(0u, Struct_2(arg_1, arg_1, Struct_1(arg_1.a, vec2<i32>(global0.x, global0.x))), Struct_2(Struct_1(44304u, vec2<i32>(2147483647i, arg_0.b.x)), Struct_1(arg_1.a, arg_0.b), arg_2)), func_1(_wgslsmith_mult_u32(1u, 4294967295u), Struct_2(arg_1, Struct_1(6996u, vec2<i32>(global0.x, -4882i)), Struct_1(arg_1.a, vec2<i32>(u_input.b, arg_2.b.x))), Struct_2(arg_2, Struct_1(35202u, vec2<i32>(u_input.b, u_input.b)), Struct_1(arg_1.a, vec2<i32>(global0.x, -5021i)))), Struct_1(arg_2.a, arg_1.b))), Struct_1(~((arg_1.a ^ 4294967295u) << (~0u % 32u)), vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(global0.x, arg_1.b.x)), arg_1.b.x)), arg_2);
    let var_2 = vec2<bool>(false, false);
    var var_3 = var_1;
    return ~((_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -1i, var_3.c.b.x), -vec3<i32>(var_1.b.b.x, 0i, arg_1.b.x), -vec3<i32>(2147483647i, u_input.b, -1i)) << (_wgslsmith_add_vec3_u32(u_input.c.xxy & u_input.c.ywz, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.a, var_3.a.a, 1u), vec3<u32>(var_1.a.a, 1u, arg_0.a))) % vec3<u32>(32u))) ^ select(vec3<i32>(arg_2.b.x, i32(-1i) * -2147483647i, 0i), abs(vec3<i32>(arg_2.b.x, -283i, 1i)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(func_5(func_1(u_input.c.x, Struct_2(Struct_1(u_input.c.x, global0.zz), Struct_1(u_input.a, vec2<i32>(0i, global0.x)), Struct_1(0u, global0.yz)), Struct_2(Struct_1(0u, global0.xz), Struct_1(4294967295u, vec2<i32>(global0.x, u_input.b)), Struct_1(4294967295u, vec2<i32>(global0.x, 84055i)))), func_1(u_input.a, Struct_2(Struct_1(4294967295u, vec2<i32>(-2147483647i, global0.x)), Struct_1(4294967295u, global0.xx), Struct_1(57969u, vec2<i32>(1i, -1i))), Struct_2(Struct_1(1u, vec2<i32>(0i, 0i)), Struct_1(0u, vec2<i32>(u_input.b, global0.x)), Struct_1(u_input.a, global0.xz))), Struct_1(u_input.a, vec2<i32>(global0.x, global0.x))), vec3<i32>(global0.x >> (4294967295u % 32u), global0.x, _wgslsmith_add_i32(global0.x, 18517i)), ~(~vec3<i32>(2999i, u_input.b, -11188i))), vec3<i32>(~(~select(u_input.b, -36081i, true)), 1i, abs(abs(u_input.b) | _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -15867i), vec2<i32>(-31340i, global0.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1883f, 576f, 628f, -224f))))))))));
    var var_2 = vec2<bool>(true, true);
    var var_3 = func_1(1u, Struct_2(Struct_1(func_4(abs(vec4<i32>(0i, -2147483647i, u_input.b, u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1000f, -1115f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(523f, -1000f)))), global0.yx), func_1(41935u, Struct_2(func_1(0u, Struct_2(Struct_1(30405u, global0.xy), Struct_1(0u, global0.yx), Struct_1(52101u, vec2<i32>(u_input.b, global0.x))), Struct_2(Struct_1(0u, vec2<i32>(global0.x, 0i)), Struct_1(1u, global0.yy), Struct_1(u_input.c.x, global0.yx))), Struct_1(u_input.c.x, global0.xz), Struct_1(u_input.a, global0.xz)), Struct_2(func_1(u_input.a, Struct_2(Struct_1(1u, global0.zx), Struct_1(16928u, vec2<i32>(54484i, global0.x)), Struct_1(u_input.a, global0.zy)), Struct_2(Struct_1(4294967295u, vec2<i32>(u_input.b, 0i)), Struct_1(434u, vec2<i32>(global0.x, -2147483647i)), Struct_1(69810u, global0.xx))), Struct_1(1u, global0.zz), func_1(69538u, Struct_2(Struct_1(40623u, vec2<i32>(-2147483647i, u_input.b)), Struct_1(57537u, vec2<i32>(u_input.b, u_input.b)), Struct_1(0u, global0.zz)), Struct_2(Struct_1(0u, vec2<i32>(-63573i, u_input.b)), Struct_1(u_input.a, global0.yx), Struct_1(u_input.c.x, vec2<i32>(global0.x, -1i)))))), Struct_1(15065u, global0.zy)), Struct_2(func_1(max(firstLeadingBit(65090u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c.x), u_input.c.xyy)), Struct_2(Struct_1(4294967295u, vec2<i32>(global0.x, global0.x)), Struct_1(0u, vec2<i32>(global0.x, 30785i)), func_1(79227u, Struct_2(Struct_1(u_input.c.x, vec2<i32>(u_input.b, u_input.b)), Struct_1(u_input.c.x, vec2<i32>(2147483647i, -15716i)), Struct_1(u_input.c.x, vec2<i32>(global0.x, u_input.b))), Struct_2(Struct_1(30164u, global0.yx), Struct_1(4294967295u, vec2<i32>(global0.x, global0.x)), Struct_1(60604u, global0.zz)))), Struct_2(Struct_1(32266u, global0.zy), func_1(u_input.c.x, Struct_2(Struct_1(u_input.c.x, global0.zy), Struct_1(u_input.a, vec2<i32>(u_input.b, 6277i)), Struct_1(u_input.c.x, global0.yz)), Struct_2(Struct_1(u_input.c.x, vec2<i32>(23503i, u_input.b)), Struct_1(u_input.c.x, vec2<i32>(0i, 2147483647i)), Struct_1(30949u, global0.zz))), func_1(70619u, Struct_2(Struct_1(1u, vec2<i32>(u_input.b, 2147483647i)), Struct_1(u_input.a, global0.zx), Struct_1(38638u, vec2<i32>(-16164i, 2147483647i))), Struct_2(Struct_1(u_input.c.x, global0.xx), Struct_1(u_input.a, vec2<i32>(u_input.b, -1i)), Struct_1(u_input.a, global0.zx))))), func_1(1u, Struct_2(func_1(0u, Struct_2(Struct_1(u_input.a, vec2<i32>(2147483647i, 1i)), Struct_1(73047u, global0.yx), Struct_1(1u, vec2<i32>(-1i, 45210i))), Struct_2(Struct_1(1u, global0.zy), Struct_1(0u, vec2<i32>(u_input.b, u_input.b)), Struct_1(u_input.c.x, vec2<i32>(-1i, -1i)))), Struct_1(102712u, vec2<i32>(-1i, 0i)), func_1(u_input.c.x, Struct_2(Struct_1(u_input.a, global0.yz), Struct_1(4294967295u, global0.yz), Struct_1(78792u, global0.xz)), Struct_2(Struct_1(1u, vec2<i32>(42340i, -2147483647i)), Struct_1(30854u, vec2<i32>(u_input.b, 12636i)), Struct_1(u_input.c.x, vec2<i32>(global0.x, global0.x))))), Struct_2(Struct_1(0u, global0.xz), func_1(u_input.c.x, Struct_2(Struct_1(u_input.a, global0.yy), Struct_1(115306u, global0.xx), Struct_1(u_input.c.x, global0.yx)), Struct_2(Struct_1(38213u, global0.zz), Struct_1(1u, vec2<i32>(u_input.b, global0.x)), Struct_1(57636u, vec2<i32>(u_input.b, 13528i)))), func_1(8851u, Struct_2(Struct_1(6677u, global0.yz), Struct_1(25652u, global0.zx), Struct_1(u_input.a, global0.yx)), Struct_2(Struct_1(u_input.c.x, vec2<i32>(-1i, global0.x)), Struct_1(u_input.a, global0.yy), Struct_1(1u, vec2<i32>(global0.x, 1i)))))), Struct_1(24521u, -_wgslsmith_sub_vec2_i32(vec2<i32>(-75894i, -78370i), vec2<i32>(global0.x, -36181i)))));
    var_2 = vec2<bool>(select(true, true, !(!var_2.x)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-294f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-752f - 1956f), _wgslsmith_f_op_f32(select(var_1.x, 260f, true)), false)))), ~(~u_input.a) ^ ~(func_1(0u, Struct_2(Struct_1(u_input.c.x, var_3.b), Struct_1(var_3.a, vec2<i32>(44253i, 26521i)), Struct_1(var_3.a, vec2<i32>(var_3.b.x, u_input.b))), Struct_2(Struct_1(u_input.a, var_3.b), Struct_1(38031u, vec2<i32>(-1i, -1i)), Struct_1(1u, global0.yz))).a >> (~u_input.c.x % 32u)));
}

