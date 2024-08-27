struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    var var_1 = Struct_3(_wgslsmith_clamp_vec3_u32(select(u_input.a.wzy, select(u_input.a.yxw, ~vec3<u32>(43431u, 0u, 69597u), !vec3<bool>(arg_0.x, arg_0.x, false)), true), vec3<u32>(_wgslsmith_clamp_u32(select(74286u, 15553u, arg_0.x), 23470u, u_input.a.x), 0u, 0u), vec3<u32>(min(1u, u_input.a.x), 1u, ~(~0u))));
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_1.a.x, min(_wgslsmith_clamp_u32(u_input.a.x, 38612u, u_input.a.x), ~var_1.a.x), 66082u), _wgslsmith_dot_vec3_u32(countOneBits(select(vec3<u32>(0u, 10680u, 5650u), u_input.a.zwy, true)), vec3<u32>(u_input.a.x << (12396u % 32u), var_1.a.x, abs(u_input.a.x))), reverseBits(1u) << (u_input.a.x % 32u)), abs(~firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 44077u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f + _wgslsmith_f_op_f32(step(-133f, 368f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-604f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-666f, 517f), _wgslsmith_f_op_f32(round(-187f))))));
    return _wgslsmith_add_vec4_i32(~countOneBits(select(vec4<i32>(-12213i, -2147483647i, 0i, 19657i), vec4<i32>(108442i, -48781i, 2147483647i, 67166i), arg_0.x) << (~vec4<u32>(0u, 0u, 0u, 30483u) % vec4<u32>(32u))), vec4<i32>(~(~40865i), -2147483647i, ~_wgslsmith_sub_i32(-11709i, -1i), 1i));
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_mod_i32(reverseBits(35951i), _wgslsmith_dot_vec4_i32(min(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-10524i, -2147483647i, 11199i, 0i), vec4<i32>(2147483647i, 10472i, -34684i, 1i)), ~vec4<i32>(1i, -3572i, 53650i, 20299i)), ~func_3(vec2<bool>(false, false))), ~abs(~vec4<i32>(30346i, 24936i, 3850i, -1i))));
    var_0 = -max(2147483647i, firstLeadingBit(min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -12111i, -2147483647i), vec3<i32>(2147483647i, -19054i, 1i)))));
    let var_1 = u_input.a;
    var_0 = firstTrailingBit(-(~_wgslsmith_clamp_i32(_wgslsmith_add_i32(18052i, -18905i), i32(-1i) * -44980i, 23645i)));
    let var_2 = reverseBits(~var_1.yz << (~vec2<u32>(min(0u, 1u), var_1.x) % vec2<u32>(32u)));
    return reverseBits(~max(~vec2<i32>(1i, 1i), vec2<i32>(~(-18090i), 2147483647i)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec2_i32(firstLeadingBit(func_2()), func_3(arg_0.yw).zy) | vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec3<i32>(-2147483647i, 0i, 2147483647i)), select(vec3<i32>(1461i, 2147483647i, 91i), vec3<i32>(-2147483647i, -27383i, 0i), vec3<bool>(false, true, arg_0.x)))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(19989i, -2147483647i), vec2<i32>(-9704i, -55465i) >> (u_input.a.zz % vec2<u32>(32u))), abs(~47867i)));
    var var_1 = ~u_input.a.x ^ _wgslsmith_mult_u32(71u ^ u_input.a.x, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.xw), 0u));
    var var_2 = u_input.a.x;
    let var_3 = ~(~_wgslsmith_mod_vec3_i32(select(-vec3<i32>(-39155i, 0i, var_0.x), countOneBits(vec3<i32>(2147483647i, var_0.x, 0i)), true), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(50328i, var_0.x, -1i, -1i), vec4<i32>(2147483647i, 0i, var_0.x, 51797i)), -4453i, abs(0i))));
    let var_4 = Struct_3(~vec3<u32>(abs(43512u), ~(~u_input.a.x), u_input.a.x));
    return Struct_2(all(vec2<bool>(false, true && !arg_0.x)), Struct_1(arg_0, true, ~var_4.a.zy, var_4.a.x | ~1u, !(true && all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)))), ~var_4.a.x, Struct_1(vec4<bool>(true, any(select(arg_0.yzx, vec3<bool>(true, arg_0.x, arg_0.x), arg_0.xwz)), arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a.x, 4294967295u), vec2<u32>(var_4.a.x, var_4.a.x)) <= 37395u), !(_wgslsmith_f_op_f32(ceil(-1545f)) == _wgslsmith_f_op_f32(trunc(549f))), vec2<u32>(reverseBits(84364u), var_4.a.x), 0u, any(!(!arg_0.wyz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<bool>(true, false, (all(vec2<bool>(true, false)) || true) || any(vec4<bool>(false, false, true, false)), !all(vec2<bool>(true, true))));
    var_0 = func_1(var_0.b.a);
    let var_1 = select(select(select(!func_1(var_0.d.a).d.a, !vec4<bool>(var_0.d.a.x, var_0.d.a.x, true, true), var_0.d.a), var_0.b.a, vec4<bool>(any(var_0.b.a), func_1(vec4<bool>(var_0.a, false, var_0.a, var_0.d.e)).d.a.x, var_0.d.e, var_0.a)), vec4<bool>(true, any(vec3<bool>(true, false, var_0.d.e)), true, !var_0.a), !func_1(select(vec4<bool>(false, var_0.d.b, false, var_0.a), !vec4<bool>(false, var_0.a, var_0.d.e, var_0.d.a.x), !var_0.b.a)).d.a);
    var_0 = Struct_2(true, func_1(var_0.d.a).b, u_input.a.x, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -566f))), 452f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-263f)))))), 18798u, ~func_3(vec2<bool>(!var_0.d.e, true)).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(996f, -684f, 1f, _wgslsmith_div_f32(-990f, _wgslsmith_f_op_f32(-307f - 505f)))));
}

