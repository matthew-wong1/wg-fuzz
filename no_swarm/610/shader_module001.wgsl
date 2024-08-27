struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    let var_1 = Struct_1(~_wgslsmith_mod_u32(countOneBits(4294967295u), ~1u), vec3<i32>(~(~arg_1 << (min(1u, u_input.a.x) % 32u)), arg_1, 9999i));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(474f, 271f)))) * _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1565f, -210f)) - _wgslsmith_f_op_f32(round(474f))), false & all(vec3<bool>(false, arg_0, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2008f, _wgslsmith_f_op_f32(ceil(-490f)))), 715f, all(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0))))) * 924f)));
}

fn func_4(arg_0: bool, arg_1: f32) -> vec2<bool> {
    global0 = abs(~(~(~vec3<u32>(4294967295u, u_input.a.x, global0.x)) & ~firstLeadingBit(vec3<u32>(0u, global0.x, 15388u))));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1802f, _wgslsmith_f_op_f32(388f + -874f), arg_1) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(963f)), arg_1, 1366f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -209f)));
    var var_2 = Struct_2(vec2<bool>(arg_0, arg_0), ~select(u_input.a, _wgslsmith_clamp_vec2_u32(global0.yx, _wgslsmith_mod_vec2_u32(u_input.a, global0.zz), select(vec2<u32>(u_input.b.x, 1u), global0.xx, vec2<bool>(false, true))), false), _wgslsmith_clamp_u32(~u_input.b.x, abs(66953u) | _wgslsmith_clamp_u32(95326u, global0.x, u_input.b.x | 4294967295u), abs(firstLeadingBit(9886u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 174f, -1080f, -850f) - vec4<f32>(594f, var_0.x, var_0.x, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -688f, -640f, arg_1))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, arg_1, var_0.x))));
    return vec2<bool>(var_2.a.x, var_2.a.x);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = -1590f;
    let var_1 = Struct_2(func_4(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, ~260i, arg_2)) * -235f)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(14569u, 1u) | global0.yx, vec2<u32>(4294967295u, arg_2.a)), u_input.b), _wgslsmith_mult_u32(0u, 0u));
    let var_2 = _wgslsmith_f_op_f32(func_3(false, arg_2.b.x, Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(~77000u), select(max(u_input.a.x, arg_3.a), firstLeadingBit(9002u), var_1.a.x), 10716u), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_0, 0i, arg_2.b.x), ~(vec3<i32>(72862i, 1i, arg_2.b.x) & arg_2.b)))));
    let var_3 = arg_2.a;
    var var_4 = var_1;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c, global0.x, 1u), vec3<u32>(11444u, 52433u, 29603u)), ~vec3<u32>(92369u, 1u, arg_2.a)) << (firstTrailingBit(firstLeadingBit(vec3<u32>(84806u, 1u, var_3))) % vec3<u32>(32u)), ~vec3<u32>(0u, 60149u, arg_2.a)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 1u, var_4.b.x), ~_wgslsmith_add_vec3_u32(vec3<u32>(93122u, var_4.b.x, u_input.b.x), vec3<u32>(arg_3.a, 68219u, global0.x))));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_i32(firstTrailingBit(~select(62381i, arg_2 >> (global0.x % 32u), any(vec3<bool>(false, false, false)))), max(~24627i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 19997i, u_input.c, arg_2) >> (vec4<u32>(1u, u_input.b.x, 4294967295u, global0.x) % vec4<u32>(32u)), ~vec4<i32>(-483i, arg_2, -16183i, arg_2)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(arg_2, u_input.c)), _wgslsmith_mult_i32(-57949i, arg_2), -45307i), arg_2)));
    let var_1 = Struct_3(Struct_1(min(0u, ~(~arg_0)), vec3<i32>(-1i, var_0, ~1040i)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true), !vec3<bool>(u_input.c < 0i, any(vec4<bool>(false, true, true, false)), true), vec3<bool>(all(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, false, true)) && true, false)));
    let var_2 = Struct_2(!func_4(all(!vec3<bool>(false, true, var_1.b.x)), _wgslsmith_f_op_f32(floor(-462f))), _wgslsmith_mod_vec2_u32(vec2<u32>(abs(~0u), firstTrailingBit(0u)), ~global0.yy), arg_0);
    global0 = ~vec3<u32>(abs(arg_0), 5925u, _wgslsmith_dot_vec2_u32(vec2<u32>(17912u, _wgslsmith_div_u32(102946u, var_1.a.a)), vec2<u32>(~global0.x, arg_0)));
    global0 = reverseBits(~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, arg_0), vec4<u32>(var_2.b.x, 4294967295u, 0u, 51274u)), ~0u, 14735u << (var_1.a.a % 32u)) << (~(vec3<u32>(7792u, var_2.b.x, 0u) >> (vec3<u32>(5897u, 46494u, 26067u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return Struct_3(Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(global0.x, 0u), _wgslsmith_clamp_u32(u_input.b.x, 7344u, var_2.c)) & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(61129u, global0.x, 52104u, var_2.c), vec4<u32>(1u, var_1.a.a, var_2.c, 4294967295u))), ~((var_1.a.b | vec3<i32>(arg_2, 98530i, arg_2)) | vec3<i32>(arg_2, var_0, u_input.c))), select(!var_1.b, var_1.b, !select(!var_1.b, vec3<bool>(var_2.a.x, false, var_1.b.x), all(var_2.a))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<bool>(true, true, select(all(vec3<bool>(true, false, true)), true, all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true))), true);
    var var_1 = func_5((~_wgslsmith_div_u32(1u, global0.x) << (_wgslsmith_clamp_u32(func_2(40497i, u_input.c, Struct_1(global0.x, vec3<i32>(1i, u_input.c, -50207i)), Struct_1(global0.x, vec3<i32>(38463i, -1i, 0i))), 1u, 0u) % 32u)) >> (u_input.b.x % 32u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(516f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(113f, 639f)), -490f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(871f, 606f), vec2<f32>(-496f, -1037f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1884f, -1167f)))))), var_0.x)), -u_input.c, vec4<f32>(1f, 1f, 1f, 1f));
    var_1 = func_5(55223u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-215f + -1047f), -1121f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(939f, -377f))) * vec2<f32>(-1094f, -374f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1687f, -125f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(667f, -176f) - vec2<f32>(-118f, 253f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-371f, -574f)))))), 48953i, _wgslsmith_f_op_vec4_f32(vec4<f32>(193f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2378f, 466f)), 184f, _wgslsmith_f_op_f32(trunc(-2385f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1276f, 2357f, 378f, -207f) * vec4<f32>(341f, 1496f, 107f, 234f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(153f, -1236f, 1026f, 629f), vec4<f32>(-1922f, -125f, -205f, -1935f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-567f, -576f, 2292f, -240f)))))));
    global0 = vec3<u32>(func_2(reverseBits(~var_1.a.b.x), -(var_1.a.b.x | -2147483647i), Struct_1(global0.x, max(vec3<i32>(u_input.c, 2147483647i, var_1.a.b.x), var_1.a.b)), var_1.a), 25290u, max(abs(~u_input.b.x), firstLeadingBit(0u))) >> (min(~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 83300u, 88904u), vec3<u32>(global0.x, global0.x, global0.x)) << (~vec3<u32>(u_input.b.x, 0u, u_input.a.x) % vec3<u32>(32u))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(150u, u_input.b.x, var_1.a.a), vec3<u32>(0u, u_input.b.x, u_input.b.x)))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(any(!var_0.wxy), -select(u_input.c, var_1.a.b.x, true), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a, 4294967295u, 11910u, global0.x), vec4<u32>(4294967295u, var_1.a.a, var_1.a.a, u_input.b.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, var_1.a.b.x, var_1.a.b.x), vec3<i32>(var_1.a.b.x, u_input.c, 2147483647i), vec3<i32>(var_1.a.b.x, -2147483647i, u_input.c))))) * 848f) > -178f;
    return func_5(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1856f, 803f))))) + vec2<f32>(_wgslsmith_f_op_f32(abs(-2201f)), _wgslsmith_f_op_f32(func_3(var_1.b.x, _wgslsmith_clamp_i32(u_input.c, -2147483647i, u_input.c), Struct_1(global0.x, vec3<i32>(u_input.c, var_1.a.b.x, 0i)))))), ~(-abs(var_1.a.b.x) & func_5(~var_1.a.a, vec2<f32>(-682f, 1814f), -1i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1441f, 1185f, 853f, 780f)))).a.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-639f, -1073f)), _wgslsmith_f_op_f32(1292f - -464f)), _wgslsmith_f_op_f32(abs(323f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -690f) - -405f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f + -681f) * _wgslsmith_f_op_f32(f32(-1f) * -755f))))).a;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(select(!vec2<bool>(func_4(false, -1204f).x, true), func_5(countOneBits(0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-302f, 1517f) * vec2<f32>(-680f, 1313f))), -(~arg_0.b.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_f_op_f32(round(-1308f)), _wgslsmith_f_op_f32(round(1808f)), _wgslsmith_f_op_f32(min(-653f, 548f)))).b.yy, true), u_input.b | (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, arg_0.a), select(global0.xx, vec2<u32>(arg_0.a, u_input.a.x), vec2<bool>(true, false))) ^ ~(~global0.zz)), func_2(-16399i, min(arg_0.b.x, -u_input.c), arg_0, arg_0));
    global0 = vec3<u32>(_wgslsmith_sub_u32(~firstTrailingBit(4294967295u) >> (_wgslsmith_clamp_u32(u_input.a.x, global0.x, u_input.a.x) % 32u), ~global0.x), global0.x, abs(func_1().a));
    global0 = ~_wgslsmith_mult_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.b.x, var_0.c), vec3<u32>(4573u, 22348u, 41289u)), ~vec3<u32>(19862u, 0u, 32077u)), ~(~vec3<u32>(0u, 4294967295u, var_0.c))) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(1u, arg_0.a, 1u) & vec3<u32>(global0.x, 1u, 20044u)), ~(vec3<u32>(arg_0.a, u_input.b.x, 0u) ^ vec3<u32>(54162u, 25290u, global0.x))), vec3<u32>(4294967295u, firstTrailingBit(~arg_0.a), ~1785u), countOneBits(~vec3<u32>(1u, var_0.c, global0.x) ^ ~vec3<u32>(4294967295u, 25049u, 0u)));
    let var_1 = Struct_3(Struct_1(~1u, ~firstLeadingBit(vec3<i32>(u_input.c, 15300i, -23794i)) & _wgslsmith_div_vec3_i32(countOneBits(arg_0.b), arg_0.b)), vec3<bool>(true, var_0.a.x, false));
    global0 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 55622u, 68764u), vec3<u32>(var_1.a.a, 20494u, 1u)) << (~vec3<u32>(4294967295u, 58666u, 6018u) % vec3<u32>(32u))) & vec3<u32>(abs(~global0.x), ~max(arg_0.a, var_1.a.a) ^ 1u, _wgslsmith_sub_u32(~select(1u, 5464u, var_1.b.x), ~var_0.b.x));
    return func_5(~(~(~global0.x) & countOneBits(_wgslsmith_add_u32(0u, arg_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(874f, -290f)))))), var_1.a.b.x | 18055i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(func_3(true, -11613i, arg_0)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1420f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1111f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(var_0.a.x, -2147483647i, var_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) + -796f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1());
    let var_1 = func_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.x, 0u, 27567u, 14400u) | vec4<u32>(u_input.a.x, 4294967295u, 11668u, 0u)), ~vec4<u32>(50937u, u_input.b.x, u_input.b.x, u_input.a.x) >> (~vec4<u32>(global0.x, global0.x, var_0.a.a, 4294967295u) % vec4<u32>(32u))), var_0.a.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-528f, 1000f) * vec2<f32>(-120f, 1077f))))), ~u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-204f, 918f, -359f, -334f), vec4<f32>(-315f, 119f, 1000f, 214f)))))).a;
    global0 = ~vec3<u32>(~22397u, 1u, 40856u) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_1.a, abs(_wgslsmith_mod_u32(0u, 33969u))), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.a.a, 34819u), global0.x, 49465u));
    var var_2 = 1309f;
    var var_3 = ~min(~(~var_0.a.a), ~_wgslsmith_div_u32(~0u, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(-404f, -1740f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1161f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -451f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1176f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(315f, -1229f, -1374f, 1311f), vec4<f32>(177f, 923f, -1403f, 914f)))))))), 5726u, firstLeadingBit(37687i), vec4<u32>(var_1.a, var_0.a.a, 43021u, ~firstLeadingBit(~1u)), 71761u);
}

