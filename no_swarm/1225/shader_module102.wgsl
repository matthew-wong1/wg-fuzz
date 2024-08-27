struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: u32 = 67952u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = -33648i;
    let var_2 = -659f;
    let var_3 = all(vec4<bool>(all(vec3<bool>(true, any(vec3<bool>(arg_1.x, true, arg_1.x)), any(arg_1.zy))), all(!(!vec3<bool>(true, arg_1.x, arg_1.x))), true, any(select(!arg_1, !arg_1, arg_1))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-929f, 682f, -269f, -1169f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, 622f, var_2))))));
    return Struct_1(!arg_1, u_input.c, arg_1, u_input.a.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec3<i32> {
    global0 = vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_div_f32(752f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(ceil(global0.x)));
    let var_0 = global0.x;
    let var_1 = vec2<bool>(!((true == arg_0.d) != (_wgslsmith_f_op_f32(round(global0.x)) >= _wgslsmith_f_op_f32(sign(-116f)))), all(select(select(!vec4<bool>(true, true, true, arg_0.b.a.x), vec4<bool>(true, arg_0.b.a.x, arg_0.b.c.x, arg_0.b.a.x), global0.x >= arg_0.a.x), vec4<bool>(any(arg_0.b.a.zz), arg_0.b.a.x, true && arg_0.b.c.x, arg_0.b.a.x | true), arg_0.d)));
    let var_2 = ((_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 20083u, 8329u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 100492u)), vec4<u32>(u_input.a.x, arg_0.b.d, arg_0.b.d, arg_1.x)) ^ _wgslsmith_div_u32(22000u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 51591u, 56958u, arg_1.x), vec4<u32>(0u, arg_0.b.d, 26143u, arg_1.x)))) ^ ~arg_0.b.d) << (4294967295u % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2544f, 1f, -445f, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.a.x, 357f, 862f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-733f, arg_0.a.x, -1790f, arg_0.a.x), vec4<f32>(1155f, arg_0.a.x, 1319f, 1357f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, global0.x, arg_0.a.x, 319f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 115f, -862f, -1029f) + vec4<f32>(1000f, -257f, 810f, global0.x)), vec4<f32>(-1163f, 499f, global0.x, arg_0.a.x), vec4<bool>(var_1.x, arg_0.d, var_1.x, var_1.x)))))));
    return -vec3<i32>(_wgslsmith_clamp_i32(~(-u_input.c), -arg_0.c.x, -u_input.c), u_input.c, firstLeadingBit((u_input.c << (u_input.d % 32u)) >> (_wgslsmith_clamp_u32(1u, 7096u, 1u) % 32u)));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    return _wgslsmith_mod_u32(abs(abs(23880u)), _wgslsmith_clamp_u32(~u_input.a.x >> (_wgslsmith_mod_u32(u_input.d, ~u_input.d) % 32u), abs(60290u), ~u_input.a.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> i32 {
    var var_0 = Struct_4(arg_1.a, arg_1, Struct_1(vec3<bool>(any(arg_1.c.zx), false, any(select(vec2<bool>(arg_1.a.x, arg_1.c.x), vec2<bool>(arg_1.a.x, true), vec2<bool>(arg_1.a.x, true)))), ~(39274i << (firstTrailingBit(arg_0.x) % 32u)), func_1(arg_3, !func_1(2147483647i, arg_1.c).c).a, func_4(~(~arg_3), all(!arg_1.a.yz), func_3(Struct_2(global0.xy, arg_1, vec3<i32>(arg_1.b, arg_3, 2147483647i), arg_1.a.x), vec3<u32>(arg_0.x, 4294967295u, 0u)) << (abs(arg_2.zyx) % vec3<u32>(32u)))), Struct_3(~vec2<u32>(76718u, ~u_input.a.x), Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-973f, global0.x)))), arg_1, func_3(Struct_2(global0.xz, arg_1, vec3<i32>(2147483647i, u_input.b.x, arg_1.b), arg_1.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.d, 0u, arg_1.d), vec3<u32>(arg_2.x, 1u, 50285u))), any(select(vec4<bool>(true, true, arg_1.a.x, false), vec4<bool>(false, false, true, true), vec4<bool>(arg_1.a.x, arg_1.c.x, true, arg_1.c.x)))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, 0i), ~arg_1.b), 30430i, -2147483647i, -arg_3 >> (reverseBits(12084u) % 32u)), Struct_2(global0.yy, Struct_1(func_1(u_input.b.x, vec3<bool>(true, arg_1.a.x, arg_1.a.x)).a, max(arg_1.b, -2147483647i), !vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.a.x), arg_2.x ^ 1u), (vec3<i32>(-2147483647i, arg_3, arg_1.b) & vec3<i32>(54446i, -1i, 1i)) >> (_wgslsmith_add_vec3_u32(arg_2.wwz, vec3<u32>(arg_2.x, u_input.a.x, 69742u)) % vec3<u32>(32u)), true)), select(select(!select(vec4<bool>(arg_1.a.x, arg_1.c.x, false, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.c.x, arg_1.c.x), arg_1.c.x), !select(vec4<bool>(arg_1.c.x, true, false, arg_1.c.x), vec4<bool>(arg_1.a.x, arg_1.c.x, arg_1.c.x, true), vec4<bool>(arg_1.c.x, true, arg_1.c.x, true)), !select(vec4<bool>(false, arg_1.c.x, arg_1.a.x, arg_1.c.x), vec4<bool>(false, arg_1.a.x, false, true), arg_1.c.x)), !select(select(vec4<bool>(arg_1.c.x, arg_1.a.x, true, false), vec4<bool>(true, arg_1.a.x, true, false), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false)), select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, true), vec4<bool>(arg_1.a.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), true), global0.x >= 441f), true));
    var var_1 = var_0.d.b.c;
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-58062i, var_0.c.b, u_input.c, var_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, var_0.c.b, u_input.b.x), vec4<i32>(2147483647i, var_0.c.b, -52271i, var_1.x), vec4<i32>(arg_3, arg_1.b, -3853i, -3133i))), -1i & arg_3), u_input.b.x | 32886i), 2147483647i, arg_1.b);
    var var_3 = Struct_4(arg_1.a, Struct_1(arg_1.c, arg_3 | _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, -2147483647i, var_1.x), -var_0.d.b.c), var_0.c.c, _wgslsmith_clamp_u32(55822u, 1u, 33015u)), func_1(1i, select(var_0.c.a, !select(vec3<bool>(arg_1.a.x, var_0.d.d.d, false), arg_1.c, true), select(select(vec3<bool>(false, arg_1.c.x, var_0.d.b.d), vec3<bool>(false, arg_1.c.x, true), arg_1.c.x), vec3<bool>(false, true, true), select(arg_1.a, vec3<bool>(false, var_0.b.c.x, var_0.b.a.x), true)))), Struct_3(_wgslsmith_clamp_vec2_u32(~(~arg_0), max(firstTrailingBit(arg_0), min(vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(2438u, u_input.d))), arg_2.xw), var_0.d.d, var_0.d.c, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.d.a.x, var_0.d.b.a.x)), Struct_1(!vec3<bool>(false, var_0.a.x, arg_1.a.x), u_input.c & -11637i, arg_1.a, var_0.c.d), vec3<i32>(-30446i, -2147483647i, -24439i), arg_1.a.x)), select(!var_0.e, !vec4<bool>(var_0.e.x || false, !var_0.c.a.x, func_1(var_0.c.b, var_0.c.a).a.x, !var_0.a.x), false));
    let var_4 = _wgslsmith_f_op_f32(trunc(199f));
    return _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, var_1.x, var_1.x, -2147483647i), var_3.d.c), vec4<i32>((var_0.c.b >> (var_3.d.b.b.d % 32u)) ^ var_2.x, 2147483647i, ~1i, 1i), !arg_1.a.x), reverseBits(vec4<i32>(25791i, var_2.x, -18225i, -56139i) ^ var_3.d.c) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.d, 0u, u_input.a.x, 0u), arg_2) ^ select(arg_2 >> (arg_2 % vec4<u32>(32u)), ~arg_2, !var_3.e)) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    var var_0 = vec2<u32>(54383u, 968u);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1917f * _wgslsmith_f_op_f32(round(global0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -394f)), arg_0, ~vec3<i32>(u_input.c, -1i >> (var_0.x % 32u), arg_0.b), false);
    let var_2 = Struct_4(select(var_1.b.c, !vec3<bool>(arg_0.c.x, select(var_1.d, true, var_1.b.a.x), arg_0.a.x | false), func_1(u_input.c, vec3<bool>(true, true, true)).c.x || true), Struct_1(vec3<bool>(var_1.d, !var_1.d, arg_0.a.x), 31714i, select(func_1(~arg_0.b, !var_1.b.c).c, arg_0.a, func_1(func_1(arg_1, arg_0.a).b, var_1.b.c).a), ~(~19062u) | _wgslsmith_dot_vec4_u32(~vec4<u32>(47951u, 4294967295u, u_input.d, 4294967295u), max(vec4<u32>(4294967295u, var_1.b.d, 1u, 0u), vec4<u32>(arg_0.d, 1u, 1u, var_0.x)))), Struct_1(!vec3<bool>(all(vec4<bool>(arg_0.a.x, var_1.b.c.x, false, var_1.b.c.x)), true, true), u_input.c | firstTrailingBit(countOneBits(-32555i)), arg_0.a, ~arg_0.d), Struct_3(~u_input.a, Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global0.ww, vec2<f32>(-1077f, var_1.a.x)), _wgslsmith_f_op_vec2_f32(exp2(global0.xy)))), Struct_1(vec3<bool>(true, true, true), var_1.b.b, func_1(1i, vec3<bool>(true, var_1.d, false)).a, ~4294967295u), var_1.c, !any(vec4<bool>(var_1.d, true, arg_0.c.x, false))), _wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(2147483647i, u_input.b.x, var_1.b.b, 1i)), abs(~vec4<i32>(47901i, -29934i, -1i, u_input.b.x)), vec4<i32>(_wgslsmith_clamp_i32(-43182i, -42703i, 7038i), _wgslsmith_sub_i32(0i, 12926i), 26567i, -arg_0.b)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.a.x, -1000f, false)), _wgslsmith_f_op_f32(max(var_1.a.x, global0.x))), Struct_1(var_1.b.c, 0i, var_1.b.a, 25473u), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-6557i, u_input.b.x, 2147483647i), var_1.c, var_1.c)), func_1(_wgslsmith_div_i32(2147483647i, -2147483647i), vec3<bool>(true, true, false)).a.x)), !select(select(!vec4<bool>(false, false, var_1.b.c.x, arg_0.c.x), vec4<bool>(false, true, arg_0.c.x, true), vec4<bool>(false, arg_0.c.x, var_1.d, false)), !select(vec4<bool>(arg_0.a.x, arg_0.c.x, true, false), vec4<bool>(arg_0.a.x, false, var_1.d, false), vec4<bool>(true, var_1.d, false, false)), vec4<bool>(var_1.d, var_1.d, func_1(var_1.b.b, vec3<bool>(true, false, true)).a.x, all(vec4<bool>(arg_0.c.x, false, false, true)))));
    global1 = var_1.b.d;
    var var_3 = var_2.d.c;
    return _wgslsmith_clamp_vec2_u32(~vec2<u32>(~0u, select(~0u, ~arg_0.d, true)), var_2.d.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(~(~func_5(func_1(28745i, vec3<bool>(true, true, false)), func_2(u_input.a, Struct_1(vec3<bool>(false, false, true), -2147483647i, vec3<bool>(true, true, false), u_input.a.x), vec4<u32>(1u, 4294967295u, u_input.a.x, 102383u), u_input.c))), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(32661u | ~u_input.a.x, _wgslsmith_add_u32(u_input.d, ~u_input.d))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, _wgslsmith_div_f32(-182f, _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f + 1942f)), -1278f, _wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1212f))))), vec4<f32>(global0.x, global0.x, -715f, _wgslsmith_f_op_f32(round(global0.x))), func_1(firstLeadingBit(11408i), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true)).c.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1027f, _wgslsmith_f_op_f32(315f - _wgslsmith_f_op_f32(447f * 1322f)), 289f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x - global0.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1519f, -672f, global0.x, global0.x) + vec4<f32>(837f, global0.x, global0.x, -545f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, 1214f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -969f, 1347f, global0.x) * vec4<f32>(907f, -950f, global0.x, 520f)))))));
    let var_1 = 14800i < u_input.b.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.wz + global0.wy), _wgslsmith_f_op_vec2_f32(-global0.ww))) * vec2<f32>(_wgslsmith_f_op_f32(floor(826f)), _wgslsmith_f_op_f32(max(1592f, -550f))))), func_1(~49i, vec3<bool>(var_1, true, true)), vec3<i32>(_wgslsmith_mod_i32(~u_input.c, -1i), u_input.c, 6366i), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_5(var_2.b, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, -1i), u_input.b.x)).x));
}

