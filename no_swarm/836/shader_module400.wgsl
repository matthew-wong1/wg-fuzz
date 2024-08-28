struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<u32>(reverseBits(~firstLeadingBit(~arg_1.a)), 63065u >> (arg_1.a % 32u));
    return arg_0.a >> (4294967295u % 32u);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = vec2<i32>(-79822i, 1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-767f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1996f + -353f))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(431f + -978f), false)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -531f) - 397f))));
    var_1 = -1150f;
    var_1 = -1744f;
    var var_2 = 55482i;
    return select(countOneBits(~(~(~vec3<u32>(323u, 17976u, 1u)))), abs(vec3<u32>(u_input.a.x, func_3(Struct_1(u_input.a.x, var_0.x, vec4<i32>(arg_2.x, 75484i, arg_2.x, 1i), vec2<f32>(676f, 346f)), Struct_1(4294967295u, 2147483647i, vec4<i32>(arg_2.x, 0i, var_0.x, -5178i), vec2<f32>(-752f, 301f)), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(true, false, arg_0, false), false), Struct_1(u_input.a.x, -1i, vec4<i32>(-11427i, var_0.x, arg_1, -1i), vec2<f32>(959f, 1090f))), func_3(Struct_1(u_input.a.x, var_0.x, vec4<i32>(arg_1, -2147483647i, -2147483647i, var_0.x), vec2<f32>(1780f, 1417f)), Struct_1(u_input.a.x, 1i, vec4<i32>(2147483647i, 0i, arg_1, arg_1), vec2<f32>(1043f, -1260f)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_0)), Struct_1(39136u, var_0.x, vec4<i32>(45994i, 3082i, -1i, var_0.x), vec2<f32>(365f, -587f))))), !(-11656i > _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 22599i, 2289i), -vec3<i32>(var_0.x, -2147483647i, -49987i))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(arg_1.a, select(abs(arg_1.b) << (arg_1.a % 32u), -arg_2.c.x, false), arg_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_2.d * arg_2.d))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(func_2(true, -1i, ~countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1886i), vec2<i32>(12551i, -1i)))), Struct_1(5411u, 0i, ~(vec4<i32>(1i, 1i, 1i, 1i) >> ((vec4<u32>(4294967295u, 25313u, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 0u, u_input.a.x, 15442u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-325f, -1566f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-285f, 1155f))))))), Struct_1(_wgslsmith_mod_u32(0u, 1u) ^ u_input.a.x, -1i, vec4<i32>(-2147483647i, i32(-1i) * -1i, 10089i, i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, -684f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, 1f) * var_0.d.x));
    var var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, ~vec2<u32>(50989u, 17923u)), ~51463u, ~0u << (~4294967295u % 32u), u_input.a.x), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_0.a, var_0.a, 50346u), vec4<u32>(var_0.a, var_0.a, 1u, 4294967295u), vec4<u32>(4294967295u, var_0.a, 10396u, 86588u)), min(vec4<u32>(var_0.a, 43174u, 1u, var_0.a), vec4<u32>(var_0.a, var_0.a, u_input.a.x, 39938u)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false)));
    var_2 = 22742u;
    var_2 = ~(~u_input.a.x);
    return vec3<bool>(false, all(vec2<bool>(true, true)), false);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-365f, _wgslsmith_f_op_f32(abs(744f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.d.x)), _wgslsmith_f_op_f32(ceil(arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d.x, -626f, false))))))), arg_0.d.x, ((arg_0.a > firstLeadingBit(986u)) || arg_1.x) & arg_1.x));
    var var_1 = arg_0.d.x;
    let var_2 = _wgslsmith_f_op_f32(select(1155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d.x - -361f))))) * _wgslsmith_f_op_f32(sign(arg_0.d.x))), ~_wgslsmith_sub_u32(arg_0.a << (arg_0.a % 32u), u_input.a.x) != arg_0.a));
    let var_3 = arg_0;
    return 1190f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_sub_i32(~1i, 1i) << (u_input.a.x % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_5(Struct_1(u_input.a.x, 44211i, vec4<i32>(0i, 2632i, -1482i, 1i), vec2<f32>(-1173f, 712f)), func_1())), _wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(351f * -151f))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(742f - -812f), -1939f, _wgslsmith_f_op_f32(floor(774f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-449f, 516f, -288f) * vec3<f32>(-1543f, 239f, -970f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1929f, 658f, -1848f), vec3<f32>(-580f, 616f, 989f))))))));
    var_0 = ~32820i;
    let var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(1178u, ~(~u_input.a.x), _wgslsmith_clamp_u32(14955u & u_input.a.x, max(u_input.a.x, 44530u), min(u_input.a.x, 4294967295u))), firstTrailingBit(~vec3<u32>(_wgslsmith_mult_u32(39198u, 20785u), ~4294967295u, 34761u)));
    var var_3 = abs(vec4<i32>(1i, -58346i, _wgslsmith_sub_i32(1i, max(27016i, 65609i)), func_4(~var_2, Struct_1(var_2.x, -1i, vec4<i32>(0i, 23079i, 1i, 0i), var_1.xz), Struct_1(var_2.x, 0i, vec4<i32>(-1i, 1i, 2147483647i, 0i), vec2<f32>(-1000f, var_1.x))).b)) & vec4<i32>(-_wgslsmith_mod_i32(1i, i32(-1i) * -1i), abs(_wgslsmith_mult_i32(-5054i, ~0i)), 0i, -53884i);
    var var_4 = func_4(var_2, func_4(~var_2, func_4(vec3<u32>(var_2.x ^ 0u, ~var_2.x, ~1u), Struct_1(~0u, -2147483647i, max(vec4<i32>(var_3.x, var_3.x, 6835i, -45493i), vec4<i32>(-471i, var_3.x, var_3.x, 2147483647i)), var_1.xz), func_4(_wgslsmith_clamp_vec3_u32(var_2, var_2, var_2), Struct_1(var_2.x, var_3.x, vec4<i32>(var_3.x, -52987i, 2147483647i, var_3.x), var_1.zx), func_4(var_2, Struct_1(u_input.a.x, 28710i, vec4<i32>(var_3.x, -2147483647i, var_3.x, 33555i), vec2<f32>(var_1.x, var_1.x)), Struct_1(65919u, var_3.x, vec4<i32>(var_3.x, 0i, var_3.x, var_3.x), vec2<f32>(var_1.x, -662f))))), func_4(_wgslsmith_clamp_vec3_u32(max(var_2, vec3<u32>(u_input.a.x, u_input.a.x, 23831u)), ~vec3<u32>(94878u, 72136u, 58591u), ~vec3<u32>(var_2.x, u_input.a.x, 11877u)), Struct_1(~var_2.x, var_3.x, vec4<i32>(-1i, 1i, 2147483647i, var_3.x), vec2<f32>(116f, 370f)), func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), var_2), func_4(var_2, Struct_1(1u, -3917i, vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x), var_1.zz), Struct_1(0u, 0i, vec4<i32>(-26324i, -2147483647i, 2147483647i, 22890i), vec2<f32>(var_1.x, var_1.x))), func_4(vec3<u32>(u_input.a.x, 15972u, u_input.a.x), Struct_1(var_2.x, var_3.x, vec4<i32>(-40966i, 0i, var_3.x, 2147483647i), var_1.yx), Struct_1(20996u, 6621i, vec4<i32>(5347i, var_3.x, 0i, var_3.x), var_1.zy))))), Struct_1(4294967295u, 0i, _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, 13067i, abs(var_3.x), var_3.x), vec4<i32>(10194i, _wgslsmith_sub_i32(var_3.x, 0i), var_3.x >> (u_input.a.x % 32u), i32(-1i) * -1i)), _wgslsmith_div_vec2_f32(func_4(var_2, Struct_1(4294967295u, -2091i, vec4<i32>(var_3.x, var_3.x, -30014i, 9332i), var_1.xx), func_4(var_2, Struct_1(0u, -15201i, vec4<i32>(-54788i, -2940i, var_3.x, -4098i), vec2<f32>(-425f, -289f)), Struct_1(1u, 6866i, vec4<i32>(-18015i, 0i, var_3.x, var_3.x), vec2<f32>(var_1.x, -248f)))).d, var_1.zy))).d.x;
    var var_5 = !select(vec2<bool>(true, !select(false, true, false)), select(vec2<bool>(true, true), !func_1().zx, select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec3<bool>(false, false, false)))), func_1().zx);
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(205f)) * _wgslsmith_div_f32(-566f, _wgslsmith_f_op_f32(ceil(132f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-669f)), _wgslsmith_f_op_f32(1773f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(29864u, 16839u));
}

