struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: u32, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(arg_0.c.a.a, arg_0.d.b.a & vec4<u32>(~arg_2, _wgslsmith_dot_vec2_u32(arg_0.d.a.a.xz, vec2<u32>(39518u, arg_2)), select(43186u, arg_0.c.b.a.x, true), countOneBits(arg_1.x))), select(reverseBits(_wgslsmith_div_vec4_i32(firstTrailingBit(arg_0.c.b.b), arg_0.c.a.b)), arg_0.c.b.b, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, arg_1.x <= 93639u), false)));
    let var_1 = arg_0;
    var var_2 = 4294967295u;
    var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(abs(arg_1.x ^ 37304u)), _wgslsmith_mult_u32(~41046u, var_0.a.x)), arg_0.c.a.a.zz);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    return vec4<bool>(!((true && all(vec3<bool>(false, false, false))) || false), false, select(countOneBits(0u) > arg_1.x, any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false))), true), false);
}

fn func_4(arg_0: vec4<bool>) -> vec2<bool> {
    let var_0 = -(min(_wgslsmith_sub_i32(-1i, u_input.b), u_input.b) << (1u % 32u)) > u_input.a.x;
    let var_1 = -_wgslsmith_dot_vec4_i32(-vec4<i32>(min(u_input.b, u_input.b), countOneBits(0i), -20798i, u_input.a.x << (30779u % 32u)), _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b, -2147483647i, 9183i), vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b)), reverseBits(vec4<i32>(1i, 1i, 1i, 1i))));
    let var_2 = 979f;
    let var_3 = arg_0.wzw;
    let var_4 = Struct_4(~110233u, _wgslsmith_f_op_f32(var_2 - -254f), Struct_2(Struct_1(vec4<u32>(reverseBits(38449u), ~46533u, 4294967295u, 0u), abs(vec4<i32>(-1i, var_1, var_1, var_1) & vec4<i32>(51122i, -8583i, 0i, 1i))), Struct_1(vec4<u32>(1u, 15592u, ~4294967295u, ~54355u), select(vec4<i32>(u_input.a.x, var_1, var_1, -2147483647i) << (vec4<u32>(80841u, 24335u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 1i, var_1, u_input.b), vec4<i32>(-2147483647i, -2147483647i, var_1, -1i)), arg_0.x))), Struct_2(Struct_1(~(~vec4<u32>(17588u, 0u, 3480u, 0u)), min(vec4<i32>(u_input.a.x, 2147483647i, var_1, u_input.b), max(vec4<i32>(u_input.a.x, var_1, -14677i, u_input.b), vec4<i32>(-30956i, 1i, var_1, 22006i)))), Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 55844u), vec4<u32>(31244u, 1u, 36753u, 15569u), vec4<u32>(0u, 0u, 2899u, 4294967295u)), ~vec4<i32>(var_1, var_1, 1i, 1i) >> (~vec4<u32>(17868u, 23366u, 0u, 0u) % vec4<u32>(32u)))));
    return select(!(!vec2<bool>(!var_0, false || var_3.x)), !select(func_3(Struct_4(var_4.a, var_2, Struct_2(var_4.d.a, var_4.d.b), var_4.d), ~var_4.c.b.a.zwz, 1u, _wgslsmith_f_op_f32(-var_2)).wz, vec2<bool>(all(vec2<bool>(arg_0.x, false)), var_0), var_3.x), arg_0.x);
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> f32 {
    var var_0 = select(vec2<bool>(true, !(!(arg_1.b <= arg_1.b))), vec2<bool>(all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false)), false), vec2<bool>(true, true));
    var var_1 = select(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), false), var_0.x), func_4(func_3(arg_1, vec3<u32>(arg_1.a, arg_0, arg_0), 2491u, arg_1.b)), true), select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, arg_0 < arg_0), !(!vec2<bool>(var_0.x, var_0.x))), vec2<bool>(true, false)), vec2<bool>(false, func_3(Struct_4(~arg_0, _wgslsmith_f_op_f32(select(arg_1.b, arg_1.b, true)), Struct_2(Struct_1(vec4<u32>(arg_1.c.b.a.x, 50331u, arg_1.c.a.a.x, 0u), vec4<i32>(u_input.b, -7575i, arg_1.c.a.b.x, 1i)), arg_1.c.b), arg_1.d), arg_1.c.a.a.yzz, ~4294967295u, -776f).x), vec2<bool>(var_0.x, var_0.x));
    let var_2 = var_1.x || true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)));
}

fn func_1() -> vec4<u32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(23958u, 0u), vec2<u32>(0u, 102164u)), 1u, _wgslsmith_mod_u32(1u, 4294967295u << (0u % 32u)), ~47415u), (-select(vec4<i32>(2147483647i, u_input.a.x, -6262i, 2147483647i), vec4<i32>(u_input.a.x, var_0.x, var_0.x, 1i), true) >> (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) ^ firstLeadingBit(~vec4<i32>(var_0.x, var_0.x, var_0.x, -19168i)));
    var var_2 = var_1.a;
    var var_3 = Struct_4(~var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u, Struct_4(1u, 1024f, Struct_2(Struct_1(var_1.a, vec4<i32>(-16899i, 576i, 2147483647i, u_input.b)), Struct_1(vec4<u32>(var_2.x, var_1.a.x, 1u, var_2.x), vec4<i32>(-54895i, -4102i, var_0.x, -42273i))), Struct_2(Struct_1(var_1.a, vec4<i32>(var_0.x, u_input.a.x, u_input.b, var_0.x)), Struct_1(vec4<u32>(91976u, var_1.a.x, var_2.x, 4294967295u), var_1.b)))))), _wgslsmith_f_op_f32(sign(1f))))), Struct_2(var_1, Struct_1(countOneBits(max(vec4<u32>(4294967295u, 4294967295u, 0u, 5646u), var_1.a)), vec4<i32>(-1i, 6331i, countOneBits(u_input.a.x), _wgslsmith_sub_i32(var_0.x, u_input.a.x)))), Struct_2(Struct_1(var_1.a, ~min(var_1.b, var_1.b)), var_1));
    var_3 = Struct_4(_wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 1u), 45193u), max(1u, var_1.a.x)), _wgslsmith_f_op_f32(exp2(var_3.b)), Struct_2(Struct_1(~vec4<u32>(var_1.a.x, 4294967295u, var_2.x, 1u), var_1.b), var_3.d.b), var_3.d);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(func_1(), vec4<u32>(1u, 1u, firstTrailingBit(1u), max(4294967295u, 2495u))), vec4<i32>(-47115i, u_input.a.x, 1i, -2147483647i));
    let var_2 = _wgslsmith_clamp_i32(var_1.b.x, -55801i, ~var_1.b.x);
    let var_3 = Struct_2(Struct_1(var_1.a, ~reverseBits(select(var_1.b, vec4<i32>(var_2, var_2, 1i, -14589i), vec4<bool>(true, false, var_0, false)))), Struct_1(var_1.a, abs(abs(var_1.b << (var_1.a % vec4<u32>(32u))))));
    let var_4 = 0u;
    let var_5 = ~var_3.b.a.yxy | (max(~var_3.b.a.wyy, _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a.a.x, var_4, 1u), var_1.a.xyy) >> (~var_3.a.a.wzw % vec3<u32>(32u))) ^ vec3<u32>(~(~0u), var_1.a.x, _wgslsmith_add_u32(~4294967295u, var_1.a.x)));
    var var_6 = vec3<u32>(_wgslsmith_div_u32(min(~74850u, ~var_4), 5567u), ~_wgslsmith_clamp_u32(83053u, select(96191u, abs(21721u), true), ~var_5.x), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-919f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(1000f, -636f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -212f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1282f, -2672f, 844f), vec3<f32>(1f, 1f, 1f)))))), func_1().x);
}

