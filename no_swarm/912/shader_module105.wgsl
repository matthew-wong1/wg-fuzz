struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_2,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    var var_0 = Struct_5(abs(u_input.d), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, -1550f, 1391f) + vec3<f32>(294f, -1000f, 158f)) - vec3<f32>(-337f, 159f, -431f))))), Struct_2(Struct_1(~reverseBits(u_input.d), true, 266u, false, select(vec4<bool>(true, global0.x, global0.x, true), select(vec4<bool>(global0.x, false, true, true), vec4<bool>(true, global0.x, true, global0.x), true), vec4<bool>(true, false, global0.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-630f, 978f, 1000f, 428f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-377f, -339f, -2032f, -147f), vec4<f32>(-842f, 331f, -1000f, -782f), global0.x)))), Struct_1(~36656u, true, ~u_input.d, !(0u == u_input.d), select(select(vec4<bool>(global0.x, true, true, false), vec4<bool>(true, false, global0.x, true), vec4<bool>(global0.x, false, global0.x, true)), select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, global0.x, true, global0.x), true), true))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-651f, -820f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(ceil(217f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-870f, -2089f, 122f)))))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 1u), ~u_input.d), abs(u_input.d >> (u_input.d % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, 19349u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 22150u), vec3<u32>(u_input.d, u_input.d, 50515u), vec3<u32>(u_input.d, u_input.d, 4294967295u))), ~(0u & u_input.d)) >> (~(~(~vec4<u32>(38456u, u_input.d, 1u, u_input.d))) % vec4<u32>(32u)));
    global0 = var_0.c.c.e.zyw;
    let var_1 = ~(-u_input.a);
    let var_2 = var_0.b.a;
    var_0 = Struct_5(u_input.d, Struct_4(_wgslsmith_f_op_f32(-1009f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.a), var_0.b.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.d.x, var_0.c.b.x, true)), _wgslsmith_div_f32(-443f, -1000f), 124f) * vec3<f32>(-1733f, 261f, var_0.b.b.x))), Struct_2(Struct_1(23952u, var_0.c.a.b, firstLeadingBit(~45916u), all(select(global0.zy, vec2<bool>(false, global0.x), var_0.c.a.e.yz)), vec4<bool>(global0.x, !global0.x, any(var_0.c.a.e.zyx), true)), var_0.c.b, var_0.c.c), vec3<f32>(_wgslsmith_f_op_f32(abs(-442f)), _wgslsmith_f_op_f32(round(191f)), _wgslsmith_f_op_f32(-242f - 1000f)), ~var_0.e ^ ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(var_0.e, vec4<u32>(var_0.a, var_0.c.a.a, u_input.d, 0u)), select(var_0.e, vec4<u32>(u_input.d, 70773u, 7326u, 4294967295u), vec4<bool>(false, true, true, global0.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.c.b.x, -524f)), 870f) * _wgslsmith_f_op_f32(trunc(-1364f))), _wgslsmith_f_op_f32(floor(var_0.d.x))) - _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f - var_0.d.x) * _wgslsmith_f_op_f32(383f * var_0.d.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = ~2147483647i;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-967f + -293f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-610f, -971f, arg_0.x))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(max(-804f, -570f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(243f, -317f) + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -726f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.b.x)), _wgslsmith_f_op_f32(floor(1065f))))))));
    var var_3 = Struct_2(Struct_1(~21419u | u_input.d, !(_wgslsmith_f_op_f32(min(-523f, 1012f)) <= _wgslsmith_f_op_f32(select(180f, var_1.a, true))), _wgslsmith_mult_u32(36438u, u_input.d) << ((1u & u_input.d) % 32u), _wgslsmith_f_op_f32(func_3()) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000f)))), select(select(vec4<bool>(arg_1.x, arg_1.x, true, global0.x), vec4<bool>(arg_1.x, global0.x, global0.x, global0.x), true), select(!vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, arg_1.x, false, arg_1.x), select(vec4<bool>(global0.x, arg_1.x, true, global0.x), vec4<bool>(true, true, arg_1.x, true), vec4<bool>(false, global0.x, arg_1.x, true))), select(!vec4<bool>(true, true, global0.x, arg_1.x), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(false, arg_1.x, global0.x, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, var_1.a, arg_0.x, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, 595f, -824f, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1553f, -133f, -896f, var_1.a)))))), Struct_1(~reverseBits(1u), any(global0.xz), abs(~_wgslsmith_div_u32(1u, u_input.d)), any(select(!vec4<bool>(true, arg_1.x, global0.x, false), !vec4<bool>(false, arg_1.x, false, true), true)), select(vec4<bool>(u_input.d < 4294967295u, !global0.x, !global0.x, !arg_1.x), vec4<bool>(any(vec3<bool>(false, arg_1.x, arg_1.x)), true, true, !arg_1.x), vec4<bool>(true, true, true, true))));
    var var_4 = (~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d, 4294967295u, 16574u, var_3.c.c), vec4<u32>(1u, 0u, 57366u, var_3.a.a), vec4<bool>(var_3.c.d, global0.x, false, global0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.c.a, var_3.a.c, 0u, 67332u), vec4<u32>(2401u, 1u, var_3.c.c, var_3.c.c))) ^ ~abs(vec4<u32>(var_3.c.a, 33087u, var_3.c.c, 0u) >> (vec4<u32>(4936u, var_3.c.a, var_3.a.c, var_3.c.c) % vec4<u32>(32u)))) >> (~(_wgslsmith_mod_vec4_u32(~vec4<u32>(61069u, u_input.d, u_input.d, 112982u), ~vec4<u32>(u_input.d, var_3.a.c, 0u, 27874u)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_3.c.c, 63394u, u_input.d), vec4<u32>(var_3.a.c, 4294967295u, u_input.d, 59709u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = arg_1.c;
    var var_1 = ~(~func_4(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-2891f + 1845f), _wgslsmith_f_op_f32(-arg_1.b.x)), select(select(var_0.e.wyz, vec3<bool>(arg_1.c.b, false, global0.x), arg_1.c.d), arg_0.e.wwx, vec3<bool>(false, arg_1.c.e.x, arg_1.c.d))));
    var var_2 = Struct_5(abs(3665u), Struct_4(-190f, arg_1.b.xyz), arg_1, arg_1.b.zzx, _wgslsmith_clamp_vec4_u32(select(vec4<u32>(min(arg_1.a.c, arg_1.a.c), arg_1.c.c, ~28394u, arg_1.c.a), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.d, 38003u, 13082u)), ~vec4<u32>(u_input.d, arg_0.c, arg_0.a, arg_1.c.c), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, u_input.d, 4052u, arg_0.c), vec4<u32>(u_input.d, 4294967295u, arg_0.c, 0u))), var_0.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(var_0.a, 53881u, arg_0.a, 77343u), vec4<u32>(30256u, 36994u, var_0.c, 4294967295u)), ~vec4<u32>(u_input.d, 4294967295u, arg_0.a, var_0.c)), max(vec4<u32>(arg_1.a.a, arg_0.c, arg_1.c.a, var_0.a), vec4<u32>(arg_0.a, arg_1.c.a, 66026u, var_0.a)), ~(~vec4<u32>(u_input.d, 31u, 4294967295u, u_input.d))), ~abs(vec4<u32>(u_input.d, 55105u, u_input.d, var_0.a)) & _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.a, 0u), vec4<u32>(1u, arg_0.a, arg_1.c.a, 0u), vec4<u32>(arg_0.a, var_0.c, 4294967295u, 12266u)), min(vec4<u32>(arg_0.a, 6730u, arg_0.a, 43850u), vec4<u32>(u_input.d, arg_1.c.a, u_input.d, 7176u)))));
    var_2 = Struct_5(17065u, var_2.b, arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b.wxx + vec3<f32>(334f, 2150f, 577f)) * vec3<f32>(arg_1.b.x, arg_1.b.x, var_2.b.a)))), var_2.e >> (vec4<u32>(~1u, arg_0.a, _wgslsmith_clamp_u32(var_2.c.c.c, ~2140u, 1u), arg_0.a) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_clamp_i32(-1i, arg_2.x, countOneBits(~max(arg_2.x >> (48977u % 32u), abs(-14976i))));
    return var_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(ceil(-551f)), vec3<f32>(arg_1.b.x, 447f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(231f * -1066f), _wgslsmith_div_f32(arg_1.b.x, 1167f)))));
    let var_1 = arg_1.b;
    var var_2 = Struct_4(-1124f, _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-695f, 1499f, var_1.x)))))));
    var var_3 = !global0.x;
    var var_4 = Struct_3(arg_1.b);
    return global0.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> bool {
    let var_0 = vec3<bool>(func_5(!vec4<bool>(false, global0.x, false, true), Struct_2(func_2(Struct_1(u_input.d, true, u_input.d, false, vec4<bool>(global0.x, global0.x, global0.x, global0.x)), Struct_2(Struct_1(4294967295u, true, 5283u, true, vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<f32>(arg_0.x, 1000f, 1156f, 1445f), Struct_1(70913u, global0.x, u_input.d, true, vec4<bool>(global0.x, global0.x, global0.x, global0.x))), arg_2.zz), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1094f, arg_0.x, 410f, arg_0.x))), Struct_1(35916u, global0.x, u_input.d, false, vec4<bool>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.x, u_input.a, arg_1.x, u_input.a), -vec4<i32>(u_input.c.x, -13298i, 8230i, arg_2.x)), Struct_1(func_4(arg_0, vec3<bool>(global0.x, false, global0.x)), all(vec2<bool>(true, false)), reverseBits(0u), !global0.x, select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), false))) || true, select(func_5(select(vec4<bool>(true, false, true, global0.x), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, global0.x)), Struct_2(Struct_1(38747u, global0.x, 53821u, true, vec4<bool>(global0.x, false, false, global0.x)), vec4<f32>(arg_0.x, -589f, arg_0.x, -886f), Struct_1(u_input.d, true, 21439u, global0.x, vec4<bool>(global0.x, true, global0.x, global0.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2069i, arg_2.x, 2147483647i, 21047i), vec4<i32>(0i, arg_1.x, 21964i, -2147483647i)), Struct_1(u_input.d, global0.x, 6703u, global0.x, vec4<bool>(global0.x, true, true, global0.x))), true, arg_0.x >= -914f) && global0.x, global0.x);
    let var_1 = global0.xx;
    let var_2 = arg_1.yxx;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_4 = Struct_5(45180u, Struct_4(-1568f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-363f, var_3.a.x, 396f)))))), Struct_2(Struct_1(26338u, (var_0.x | true) || global0.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d, 0u), 1u), ~u_input.d < func_4(var_3.a.yyz, var_0), func_2(func_2(Struct_1(6666u, var_0.x, 0u, false, vec4<bool>(true, false, var_1.x, var_0.x)), Struct_2(Struct_1(31732u, var_0.x, 4294967295u, var_1.x, vec4<bool>(false, var_0.x, true, false)), vec4<f32>(1042f, var_3.a.x, arg_0.x, 265f), Struct_1(28815u, global0.x, 6988u, false, vec4<bool>(false, false, global0.x, var_1.x))), vec2<i32>(arg_2.x, -2147483647i)), Struct_2(Struct_1(u_input.d, global0.x, u_input.d, var_1.x, vec4<bool>(var_1.x, false, false, false)), vec4<f32>(var_3.a.x, -451f, 869f, 2756f), Struct_1(31674u, true, u_input.d, var_0.x, vec4<bool>(global0.x, var_1.x, true, var_1.x))), ~vec2<i32>(arg_2.x, 1i)).e), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_3.a.x, 1564f)))), _wgslsmith_f_op_f32(2707f - _wgslsmith_f_op_f32(round(948f))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -1000f), _wgslsmith_div_f32(-1571f, arg_0.x)), 542f), Struct_1(14761u << (countOneBits(56465u) % 32u), func_5(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, var_0.x, var_1.x, var_0.x), vec4<bool>(global0.x, var_0.x, global0.x, var_1.x)), Struct_2(Struct_1(4294967295u, var_0.x, 1u, global0.x, vec4<bool>(var_1.x, false, global0.x, false)), var_3.a, Struct_1(87837u, false, 34015u, var_0.x, vec4<bool>(global0.x, var_0.x, false, true))), arg_2 >> (vec4<u32>(u_input.d, 16591u, u_input.d, u_input.d) % vec4<u32>(32u)), func_2(Struct_1(45757u, global0.x, u_input.d, global0.x, vec4<bool>(false, false, true, false)), Struct_2(Struct_1(u_input.d, false, 1u, false, vec4<bool>(var_1.x, false, false, var_0.x)), vec4<f32>(arg_0.x, 256f, arg_0.x, arg_0.x), Struct_1(72430u, true, u_input.d, true, vec4<bool>(true, false, false, var_1.x))), arg_2.zy)), u_input.d, false, vec4<bool>(true, true, true, true))), var_3.a.zzz, vec4<u32>(~24670u, _wgslsmith_mult_u32(~u_input.d, 89599u), 4294967295u, ~_wgslsmith_clamp_u32(~0u, 4294967295u, 4439u)));
    return u_input.d == _wgslsmith_dot_vec3_u32(var_4.e.wyw, ~min(countOneBits(var_4.e.xzy), var_4.e.xyy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(true, true, true), select(vec3<bool>(func_1(vec3<f32>(1067f, 1000f, 395f), u_input.b, u_input.b) == (global0.x && true), !(-2147483647i >= u_input.e), global0.x), !func_2(func_2(Struct_1(u_input.d, global0.x, 32981u, true, vec4<bool>(true, global0.x, true, true)), Struct_2(Struct_1(1u, global0.x, 1u, global0.x, vec4<bool>(global0.x, global0.x, true, true)), vec4<f32>(-1359f, -557f, 185f, -476f), Struct_1(11972u, true, u_input.d, false, vec4<bool>(global0.x, false, true, global0.x))), u_input.c.yz), Struct_2(Struct_1(u_input.d, global0.x, u_input.d, global0.x, vec4<bool>(global0.x, global0.x, global0.x, global0.x)), vec4<f32>(-456f, 255f, -584f, 215f), Struct_1(4294967295u, global0.x, 73978u, global0.x, vec4<bool>(true, false, global0.x, global0.x))), u_input.b.wz).e.zww, vec3<bool>(true != !global0.x, false, !any(vec4<bool>(global0.x, global0.x, global0.x, false)))), vec3<bool>(any(!vec3<bool>(global0.x, global0.x, true)) & (-218f >= _wgslsmith_f_op_f32(step(2647f, 1202f))), global0.x, true));
    global0 = select(vec3<bool>(global0.x, true, !global0.x), func_2(func_2(func_2(Struct_1(2594u, false, u_input.d, false, vec4<bool>(global0.x, global0.x, true, false)), Struct_2(Struct_1(44311u, false, 4294967295u, true, vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<f32>(-1264f, 990f, 492f, -356f), Struct_1(84566u, false, u_input.d, true, vec4<bool>(global0.x, global0.x, true, global0.x))), ~u_input.c.wz), Struct_2(Struct_1(1738u, global0.x, 8715u, false, vec4<bool>(true, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(280f, -1970f, -1519f, -1512f) * vec4<f32>(897f, -190f, -426f, -1175f)), Struct_1(4294967295u, false, 37639u, false, vec4<bool>(false, false, false, false))), -vec2<i32>(u_input.e, 1i) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), Struct_2(Struct_1(4294967295u, true, max(u_input.d, u_input.d), global0.x, !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(311f, 1003f, -594f, 377f), vec4<f32>(924f, 1017f, 549f, -677f), vec4<bool>(global0.x, false, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2041f, 1313f, -461f, -371f)))), func_2(func_2(Struct_1(1u, true, u_input.d, global0.x, vec4<bool>(global0.x, global0.x, global0.x, global0.x)), Struct_2(Struct_1(u_input.d, true, u_input.d, false, vec4<bool>(true, true, true, global0.x)), vec4<f32>(1529f, 1454f, 134f, -419f), Struct_1(21432u, true, u_input.d, global0.x, vec4<bool>(global0.x, global0.x, false, global0.x))), u_input.b.yw), Struct_2(Struct_1(u_input.d, true, u_input.d, true, vec4<bool>(true, true, true, global0.x)), vec4<f32>(351f, 156f, 1000f, -1000f), Struct_1(2712u, false, 0u, false, vec4<bool>(false, global0.x, true, true))), max(vec2<i32>(1i, u_input.e), u_input.b.zx))), u_input.c.zy).e.zzy, vec3<bool>(!global0.x, !((global0.x | global0.x) && !global0.x), true));
    global0 = vec3<bool>(!(!global0.x), 2147483647i < u_input.e, global0.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(917f, -854f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-756f, -1844f) - vec2<f32>(113f, 2254f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-981f, -472f), vec2<f32>(222f, -1221f)))))));
    var var_1 = !(!vec3<bool>(!any(vec4<bool>(false, global0.x, false, false)), u_input.c.x != 0i, global0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, 463f, _wgslsmith_f_op_f32(-var_0.x)))));
    var_2 = vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), 505f), -1554f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(224f * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -652f))))));
    var_1 = vec3<bool>(!any(!(!vec4<bool>(false, var_1.x, false, false))), true, var_1.x);
    var var_3 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, ~u_input.d, _wgslsmith_mult_u32(u_input.d, 14454u)), vec3<u32>(4294967295u, ~51754u, 45337u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_3.x, 1u), 0u);
}

