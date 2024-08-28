struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 782f;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(53819u, 1u, 53056u), 716f, 2147483647i, 2147483647i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(global1.a, 865f, 32235i, ~25990i);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(32938u, ~1u), firstTrailingBit(firstTrailingBit(97837u & arg_0.a.x))), arg_0.a.x);
    let var_2 = ~arg_0.a.x != abs(~1u);
    let var_3 = -297f;
    var_0 = Struct_1(~arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(244f, 799f))), var_0.c, _wgslsmith_sub_i32(-2147483647i, u_input.b));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.b)), -897f)), arg_2.b);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(global1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(10605u, global1.a.x, global1.a.x), global1.b, 31066i, -28767i), firstLeadingBit(vec2<u32>(1u, global1.a.x)), Struct_1(vec3<u32>(4294967295u, global1.a.x, global1.a.x), -663f, global1.d, -2147483647i))), 2110f, true)), 2301i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, u_input.a, 0i), -vec3<i32>(38121i, global1.d, global1.d)), -(~2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(global1.b, -1000f), _wgslsmith_f_op_f32(-global1.b), global1.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(116f, 391f, global1.b)))))))), true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(110314u, global1.a.x, global1.a.x)), ~var_0.a.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(180f))))), reverseBits(-1i << (global1.a.x % 32u)), firstLeadingBit(1099i << (global1.a.x % 32u))), _wgslsmith_f_op_vec3_f32(-var_0.b), !var_0.c);
    let var_2 = Struct_1(~(~max(vec3<u32>(0u, 16956u, var_0.a.a.x) >> (vec3<u32>(87290u, var_0.a.a.x, 0u) % vec3<u32>(32u)), global1.a >> (var_0.a.a % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-var_0.b.x), 1i, reverseBits(abs(-(~(-1i)))));
    let var_3 = ~vec3<u32>(max(~30025u, var_0.a.a.x), _wgslsmith_mult_u32(select(var_0.a.a.x, ~var_0.a.a.x, all(vec3<bool>(true, true, false))), var_2.a.x), _wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.a.x, ~var_2.a.x), reverseBits(17936u), ~42415u));
    global1 = var_1.a;
    return var_2.b;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(-global1.b)) + _wgslsmith_f_op_f32(func_2())), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * global1.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, -556f, -279f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, global1.b) * vec3<f32>(global1.b, global1.b, global1.b))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, _wgslsmith_f_op_f32(-global1.b), global1.b))));
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -1151f), u_input.b, min(global1.d, -24576i));
    let var_1 = global1.d;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1385f * -956f), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_div_f32(-1377f, var_0.x), _wgslsmith_f_op_f32(-var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(296f - -248f), _wgslsmith_f_op_f32(abs(2365f))))));
    return 1u;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_sub_vec3_u32(~abs(vec3<u32>(arg_2.a.x, arg_2.a.x, global1.a.x)), ~vec3<u32>(1u, 0u, arg_2.a.x) | _wgslsmith_clamp_vec3_u32(global1.a, vec3<u32>(arg_2.a.x, 1u, arg_2.a.x), arg_2.a)), global1.b, -select(u_input.b, 2147483647i, arg_0 & arg_0) & _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-arg_3.zz, vec2<i32>(-1i, global1.c) >> (global1.a.xz % vec2<u32>(32u))), u_input.a), _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(-25536i, global1.c, 32938i, -34408i) | vec4<i32>(arg_2.c, -2147483647i, arg_2.d, 1i))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c, -42959i, u_input.a, 2147483647i), vec4<i32>(arg_3.x, arg_3.x, 2147483647i, arg_3.x)) & max(vec4<i32>(1i, arg_2.c, u_input.a, arg_2.d), vec4<i32>(-8308i, 0i, arg_2.d, arg_3.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.d, 18977i, global1.d, -9590i), vec4<i32>(-1i, global1.c, -2147483647i, arg_3.x)))));
    global1 = Struct_1(vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, 1u, arg_1.x), arg_2.a)), _wgslsmith_sub_u32(min(arg_2.a.x, var_0.a.x), ~(~var_0.a.x)), min(~(~46599u), 60054u)), 485f, 1i, _wgslsmith_add_i32(0i, arg_2.d));
    global1 = Struct_1(min(~arg_1.zyz, vec3<u32>(_wgslsmith_mod_u32(var_0.a.x, 1u), 0u, arg_1.x) | arg_2.a), -1431f, _wgslsmith_sub_i32(firstLeadingBit(arg_3.x), global1.c), -global1.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, var_0.b, -2208f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -2080f, 1599f, arg_2.b)), any(vec3<bool>(false, arg_0, arg_0)))))))));
    let var_2 = arg_3;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(!(reverseBits(19170u) <= ~global1.a.x), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 54660u), vec4<u32>(1u, 3279u, 4294967295u, 1u)) << (vec4<u32>(global1.a.x, 3858u, global1.a.x, global1.a.x) % vec4<u32>(32u)), select(firstLeadingBit(vec4<u32>(11447u, 113123u, global1.a.x, global1.a.x)), vec4<u32>(global1.a.x, global1.a.x, 4294967295u, 39263u), true)), vec4<u32>(1u, func_1(), min(_wgslsmith_add_u32(0u, global1.a.x), _wgslsmith_mult_u32(0u, global1.a.x)), ~global1.a.x)), Struct_1(global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - global1.b) - global1.b))), -35860i, i32(-1i) * -max(0i, global1.c)), -countOneBits(select(vec3<i32>(global1.c, -68818i, u_input.b), vec3<i32>(u_input.a, u_input.a, u_input.a), false)) >> (~select(~vec3<u32>(35883u, 38225u, global1.a.x), ~vec3<u32>(global1.a.x, 76091u, 1u), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))) % vec3<u32>(32u)));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1504f * global1.b) - _wgslsmith_f_op_f32(f32(-1f) * -339f)), _wgslsmith_f_op_f32(func_2()), 2551f) * vec3<f32>(func_4(false, ~(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 0u) & vec4<u32>(global1.a.x, global1.a.x, 59714u, global1.a.x)), func_4(true, vec4<u32>(global1.a.x, 4294967295u, 18288u, 4294967295u) << (vec4<u32>(global1.a.x, 4294967295u, 18076u, 0u) % vec4<u32>(32u)), func_4(true, vec4<u32>(global1.a.x, global1.a.x, 0u, global1.a.x), Struct_1(vec3<u32>(12270u, global1.a.x, global1.a.x), 393f, 0i, 60749i), vec3<i32>(u_input.b, u_input.a, 1i)), vec3<i32>(u_input.a, 2147483647i, u_input.a) >> (global1.a % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 3832i, -71801i)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(0u, 28684u, 71915u), 1637f, 22459i, 2147483647i), vec2<u32>(83165u, global1.a.x), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), global1.b, u_input.a, global1.d))) + -405f), global1.b));
    let var_1 = ~global1.a.x & _wgslsmith_mult_u32(firstLeadingBit(56529u), 33029u);
    var var_2 = global1.a.x;
    var var_3 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, 4294967295u <= global1.a.x), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), true), vec3<bool>(!(global1.a.x != _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 1u, global1.a.x), vec3<u32>(global1.a.x, global1.a.x, global1.a.x))), true, false), !select(vec3<bool>(true, false, select(true, true, false)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false), vec3<bool>(true, true, global1.d >= 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1585f, global1.b, var_3.x)) - _wgslsmith_f_op_f32(min(var_0.x, -2034f))) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-405f + var_0.x))) + 1024f)));
}

