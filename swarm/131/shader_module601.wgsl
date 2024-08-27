struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_5(Struct_3(Struct_2(0u, vec4<bool>(true, true, true, select(false, false, true)), false), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), all(vec4<bool>(false, false, false, false))), 60938u, Struct_1(~(~u_input.a.x), arg_0.zz, vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, true), ~countOneBits(vec2<u32>(58923u, u_input.a.x)), arg_0.x), Struct_1(~u_input.a.x, -vec2<i32>(arg_0.x, 0i), vec4<bool>(true, true, true, true), _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(4294967295u, u_input.a.x)), ~(-40195i))), Struct_4(Struct_2(1u, vec4<bool>(true, true, true, true), false), min(select(u_input.a >> (vec2<u32>(39126u, u_input.a.x) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 4294967295u) & vec2<u32>(u_input.a.x, 7156u), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a.x, 25759u), u_input.a, true), vec2<u32>(0u, 0u))), ~_wgslsmith_sub_vec2_u32(u_input.a, ~u_input.a), Struct_2(23884u, vec4<bool>(all(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, true, false)), true), true), Struct_3(Struct_2(0u, select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), true), vec2<bool>(any(vec4<bool>(true, false, true, false)), true), 44770u, Struct_1(39852u, -arg_0.yy, vec4<bool>(true, true, true, true), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u)), _wgslsmith_sub_i32(-2147483647i, arg_0.x)), Struct_1(max(u_input.a.x, u_input.a.x), _wgslsmith_mult_vec2_i32(arg_0.yy, arg_0.xz), vec4<bool>(true, false, false, false), abs(u_input.a), arg_0.x))));
    var_0 = Struct_5(var_0.a, var_0.b);
    var_0 = Struct_5(Struct_3(Struct_2(0u, !select(var_0.b.e.d.c, var_0.b.e.a.b, var_0.a.e.c.x), false), var_0.b.d.b.xz, 19653u, var_0.a.d, var_0.a.d), var_0.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-886f)));
    let var_2 = ~vec2<u32>(max(var_0.b.e.d.a >> (var_0.a.a.a % 32u), abs(4294967295u) | (u_input.a.x | var_0.b.a.a)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, var_0.b.a.a, var_0.b.c.x), vec4<u32>(6838u, u_input.a.x, var_0.a.c, 0u)), u_input.a.x));
    return _wgslsmith_mult_i32(-32400i, _wgslsmith_div_i32(var_0.b.e.e.e & -13150i, -406i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_5) -> Struct_1 {
    var var_0 = vec4<i32>(arg_0.x, -1i ^ -arg_1.a.d.e, func_3(vec3<i32>(arg_0.x, 1i & arg_1.a.d.b.x, ~arg_0.x) | firstTrailingBit(abs(vec3<i32>(arg_0.x, 66632i, 1i)))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, -1i, arg_0.x) ^ vec3<i32>(1i, 1i, 1i), select(vec3<i32>(arg_1.a.d.e, arg_0.x, 0i) ^ vec3<i32>(1i, 30679i, arg_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, 1i), vec3<i32>(57989i, arg_1.b.e.e.e, arg_0.x)), true), arg_1.a.d.c.x || false), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_1.a.d.b.x, arg_1.b.e.e.b.x), arg_0.x >> (36467u % 32u), i32(-1i) * -27518i), vec3<i32>(-2147483647i, ~(-1i), -2147483647i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-403f)) - _wgslsmith_f_op_f32(1000f * -1154f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(842f)) - -253f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(912f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(1569f + 312f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_2 = all(select(!select(vec2<bool>(arg_1.a.e.c.x, false), select(arg_1.b.a.b.zx, vec2<bool>(false, true), arg_1.a.d.c.x), true), select(vec2<bool>(!arg_1.b.d.c, true), arg_1.b.d.b.xx, any(!vec3<bool>(arg_1.b.a.b.x, arg_1.a.e.c.x, true))), any(vec2<bool>(!arg_1.b.d.b.x, any(arg_1.b.d.b.yz)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(418f, -1139f, var_1.x))) * vec3<f32>(1000f, _wgslsmith_f_op_f32(min(-1080f, var_1.x)), var_1.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -533f), var_1.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(811f, var_1.x, var_1.x))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1597f), 532f, -461f)), select(select(vec3<bool>(false, any(arg_1.b.a.b), u_input.a.x < u_input.a.x), !select(arg_1.b.d.b.yzw, arg_1.a.a.b.xwx, arg_1.a.a.b.x), arg_1.a.d.c.x | (1u != u_input.a.x)), !vec3<bool>(true, false, arg_1.a.b.x), !select(!vec3<bool>(var_2, arg_1.b.a.c, false), !vec3<bool>(var_2, true, true), vec3<bool>(true, var_2, false)))));
    let var_4 = Struct_3(arg_1.a.a, select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(var_2, var_2, true, arg_1.a.d.c.x))), !select(!vec2<bool>(false, var_2), vec2<bool>(true, var_2), select(vec2<bool>(true, var_2), vec2<bool>(arg_1.b.d.b.x, var_2), var_2)), !select(vec2<bool>(var_2, false), !arg_1.b.d.b.xw, !arg_1.b.d.b.ww)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a.d.a, u_input.a.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a)) << (arg_1.a.a.a % 32u), arg_1.a.e, arg_1.a.d);
    return arg_1.a.e;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(func_3(vec3<i32>(_wgslsmith_sub_i32(abs(43100i), _wgslsmith_mult_i32(0i, arg_0.d.e)), _wgslsmith_div_i32(~arg_0.e.b.x, arg_0.e.b.x << (1u % 32u)), 4245i >> (0u % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(35543u, 1u, 40786u), vec3<u32>(1u, u_input.a.x, arg_3)) % 32u), select(0i, countOneBits(arg_0.d.e), all(arg_0.a.b.zzw)), 1i), ~(~vec3<i32>(63173i, arg_0.d.e, arg_0.e.b.x))));
    var_0 = ~arg_0.d.b.x;
    let var_1 = arg_0.e.e ^ 29070i;
    var var_2 = vec3<u32>(~countOneBits(1u), 70822u, arg_3);
    var_0 = 28556i;
    return Struct_2(var_2.x, select(!(!vec4<bool>(arg_1.x, arg_0.e.c.x, false, arg_1.x)), select(!select(vec4<bool>(false, true, false, arg_0.e.c.x), arg_0.d.c, arg_0.e.c), vec4<bool>(49656u == u_input.a.x, arg_0.e.c.x, arg_1.x, 74688u > u_input.a.x), !arg_0.b.x), arg_0.d.c), firstTrailingBit(func_2(-vec2<i32>(11029i, -2147483647i), Struct_5(arg_0, Struct_4(Struct_2(var_2.x, arg_0.e.c, arg_0.b.x), vec2<u32>(38888u, arg_3), var_2.zz, Struct_2(16553u, vec4<bool>(arg_0.e.c.x, arg_0.e.c.x, arg_1.x, arg_0.a.b.x), arg_1.x), arg_0))).d.x) > arg_3);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-367f, -1095f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1797f) - 978f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1936f * -1373f) - _wgslsmith_f_op_f32(-757f - 165f))))))));
    let var_1 = ~func_2(-vec2<i32>(~0i, _wgslsmith_sub_i32(15052i, 36644i)), Struct_5(Struct_3(arg_1, func_2(vec2<i32>(-2996i, 2772i), Struct_5(Struct_3(Struct_2(4294967295u, arg_1.b, false), vec2<bool>(true, true), arg_2.x, Struct_1(1u, vec2<i32>(70666i, 61050i), arg_1.b, u_input.a, 0i), Struct_1(38651u, vec2<i32>(2147483647i, 7797i), arg_1.b, vec2<u32>(u_input.a.x, u_input.a.x), -2147483647i)), Struct_4(Struct_2(arg_2.x, arg_1.b, arg_1.b.x), vec2<u32>(u_input.a.x, 1u), vec2<u32>(1u, arg_1.a), Struct_2(0u, vec4<bool>(false, false, false, false), arg_1.b.x), Struct_3(Struct_2(4294967295u, vec4<bool>(true, arg_1.c, false, arg_1.c), arg_1.b.x), vec2<bool>(false, true), 0u, Struct_1(4294967295u, vec2<i32>(-2147483647i, -1i), arg_1.b, arg_2.zz, 3341i), Struct_1(4294967295u, vec2<i32>(0i, -7345i), arg_1.b, arg_0.yy, 5953i))))).c.wx, u_input.a.x, func_2(vec2<i32>(-59408i, -32145i), Struct_5(Struct_3(Struct_2(4294967295u, arg_1.b, true), arg_1.b.wz, 47006u, Struct_1(arg_0.x, vec2<i32>(2147483647i, 1i), vec4<bool>(false, true, arg_1.c, arg_1.b.x), arg_0.xz, 1i), Struct_1(4294967295u, vec2<i32>(-2147483647i, 41837i), arg_1.b, vec2<u32>(26592u, arg_0.x), -21454i)), Struct_4(Struct_2(arg_2.x, vec4<bool>(false, arg_1.c, arg_1.b.x, true), true), vec2<u32>(arg_0.x, arg_2.x), u_input.a, arg_1, Struct_3(arg_1, vec2<bool>(arg_1.c, false), u_input.a.x, Struct_1(82305u, vec2<i32>(-2147483647i, -2147483647i), arg_1.b, vec2<u32>(22738u, arg_2.x), -1i), Struct_1(arg_0.x, vec2<i32>(-2147483647i, -38029i), vec4<bool>(true, false, arg_1.b.x, true), vec2<u32>(arg_2.x, u_input.a.x), 1i))))), Struct_1(10873u, vec2<i32>(27951i, 98i), vec4<bool>(arg_1.c, arg_1.b.x, false, false), arg_2.yy, -1i)), Struct_4(arg_1, arg_0.xx, vec2<u32>(arg_2.x, arg_1.a), arg_1, Struct_3(Struct_2(arg_0.x, arg_1.b, false), arg_1.b.yy, arg_0.x, Struct_1(58744u, vec2<i32>(-2147483647i, -60942i), arg_1.b, vec2<u32>(0u, u_input.a.x), 0i), Struct_1(1u, vec2<i32>(35796i, 14237i), arg_1.b, vec2<u32>(71217u, arg_1.a), 1i))))).b;
    let var_2 = Struct_2(arg_1.a, func_2(-vec2<i32>(2147483647i, -var_1.x), Struct_5(Struct_3(func_4(Struct_3(arg_1, vec2<bool>(false, false), arg_1.a, Struct_1(58111u, vec2<i32>(var_1.x, -26299i), arg_1.b, vec2<u32>(arg_2.x, 4294967295u), -2147483647i), Struct_1(1u, vec2<i32>(1i, var_1.x), arg_1.b, arg_0.xz, var_1.x)), vec2<bool>(true, false), vec4<f32>(var_0, -1193f, var_0, 1735f), arg_1.a), vec2<bool>(true, true), _wgslsmith_mod_u32(arg_2.x, arg_0.x), Struct_1(u_input.a.x, vec2<i32>(var_1.x, var_1.x), arg_1.b, arg_0.xy, -2147483647i), func_2(vec2<i32>(var_1.x, var_1.x), Struct_5(Struct_3(arg_1, vec2<bool>(true, false), arg_0.x, Struct_1(4294967295u, var_1, vec4<bool>(true, arg_1.c, false, arg_1.c), vec2<u32>(68940u, u_input.a.x), var_1.x), Struct_1(arg_1.a, vec2<i32>(46680i, var_1.x), vec4<bool>(true, true, arg_1.b.x, true), vec2<u32>(37186u, arg_0.x), var_1.x)), Struct_4(arg_1, arg_0.yz, u_input.a, Struct_2(74973u, vec4<bool>(arg_1.c, true, false, false), arg_1.c), Struct_3(arg_1, arg_1.b.xz, u_input.a.x, Struct_1(arg_1.a, vec2<i32>(-25284i, var_1.x), vec4<bool>(arg_1.b.x, true, true, arg_1.c), arg_0.zz, var_1.x), Struct_1(71415u, vec2<i32>(-7210i, 1i), vec4<bool>(arg_1.c, true, true, arg_1.b.x), vec2<u32>(0u, 4294967295u), -42546i)))))), Struct_4(Struct_2(arg_1.a, vec4<bool>(arg_1.b.x, arg_1.b.x, true, false), false), vec2<u32>(arg_2.x, u_input.a.x) << (vec2<u32>(arg_1.a, 27640u) % vec2<u32>(32u)), ~vec2<u32>(arg_1.a, u_input.a.x), arg_1, Struct_3(arg_1, arg_1.b.zw, 36147u, Struct_1(3044u, vec2<i32>(0i, 0i), arg_1.b, vec2<u32>(arg_1.a, 4294967295u), -49618i), Struct_1(1u, var_1, arg_1.b, vec2<u32>(arg_1.a, arg_2.x), 0i))))).c, any(func_4(Struct_3(arg_1, vec2<bool>(arg_1.b.x, arg_1.b.x), abs(4294967295u), func_2(vec2<i32>(var_1.x, -2147483647i), Struct_5(Struct_3(Struct_2(33283u, arg_1.b, arg_1.c), vec2<bool>(arg_1.b.x, false), arg_1.a, Struct_1(0u, var_1, arg_1.b, vec2<u32>(arg_1.a, 0u), var_1.x), Struct_1(0u, vec2<i32>(var_1.x, -77408i), arg_1.b, u_input.a, var_1.x)), Struct_4(arg_1, arg_2.zz, u_input.a, Struct_2(arg_0.x, arg_1.b, arg_1.b.x), Struct_3(arg_1, vec2<bool>(arg_1.b.x, false), u_input.a.x, Struct_1(1u, vec2<i32>(var_1.x, var_1.x), arg_1.b, arg_0.xz, 8789i), Struct_1(arg_2.x, vec2<i32>(var_1.x, var_1.x), arg_1.b, arg_2.xy, var_1.x))))), func_2(var_1, Struct_5(Struct_3(Struct_2(arg_2.x, arg_1.b, arg_1.c), arg_1.b.zx, arg_2.x, Struct_1(arg_1.a, var_1, arg_1.b, vec2<u32>(arg_2.x, 0u), 2147483647i), Struct_1(0u, vec2<i32>(-6173i, var_1.x), vec4<bool>(true, true, true, arg_1.b.x), vec2<u32>(arg_1.a, 114969u), -25410i)), Struct_4(arg_1, u_input.a, arg_2.zy, Struct_2(arg_0.x, arg_1.b, arg_1.b.x), Struct_3(arg_1, arg_1.b.yy, u_input.a.x, Struct_1(arg_1.a, vec2<i32>(var_1.x, -1i), arg_1.b, arg_2.xy, -1i), Struct_1(arg_2.x, var_1, arg_1.b, arg_2.xz, 95847i)))))), vec2<bool>(any(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-376f, var_0, var_0, -576f) + vec4<f32>(-140f, 1165f, -203f, 298f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1131f, -1000f, var_0, var_0), vec4<f32>(var_0, -107f, 1434f, var_0))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.x, 1u, u_input.a.x), ~27193u)).b.yxz));
    var var_3 = Struct_5(Struct_3(arg_1, vec2<bool>(true, any(!var_2.b.yw)), 1u, Struct_1(arg_0.x, vec2<i32>(-6636i, 10066i >> (arg_1.a % 32u)), func_2(abs(var_1), Struct_5(Struct_3(arg_1, vec2<bool>(arg_1.b.x, arg_1.c), u_input.a.x, Struct_1(arg_0.x, vec2<i32>(var_1.x, -2147483647i), var_2.b, vec2<u32>(u_input.a.x, 4294967295u), 1i), Struct_1(var_2.a, vec2<i32>(-3501i, var_1.x), vec4<bool>(var_2.b.x, var_2.c, arg_1.c, false), vec2<u32>(arg_0.x, 38417u), var_1.x)), Struct_4(var_2, vec2<u32>(0u, var_2.a), u_input.a, var_2, Struct_3(arg_1, vec2<bool>(var_2.c, false), 0u, Struct_1(arg_1.a, vec2<i32>(2147483647i, -11512i), vec4<bool>(false, var_2.c, false, arg_1.b.x), arg_0.xz, -1i), Struct_1(u_input.a.x, vec2<i32>(var_1.x, 3793i), arg_1.b, arg_2.xx, var_1.x))))).c, min(_wgslsmith_div_vec2_u32(u_input.a, arg_0.zz), vec2<u32>(arg_2.x, u_input.a.x)), var_1.x), Struct_1(min(1u, 1u), var_1, var_2.b, ~vec2<u32>(arg_2.x, var_2.a), reverseBits(-1i))), Struct_4(Struct_2(_wgslsmith_mult_u32(~var_2.a, u_input.a.x), arg_1.b, var_2.b.x), select(~vec2<u32>(u_input.a.x, 16646u), ~(vec2<u32>(85216u, u_input.a.x) | arg_0.zz), ~var_1.x == var_1.x), (vec2<u32>(0u, var_2.a) | vec2<u32>(41872u, 5016u)) >> (~(~vec2<u32>(12512u, var_2.a)) % vec2<u32>(32u)), func_4(Struct_3(Struct_2(arg_2.x, arg_1.b, var_2.b.x), arg_1.b.yy, arg_2.x, Struct_1(arg_1.a, vec2<i32>(var_1.x, var_1.x), vec4<bool>(arg_1.c, var_2.b.x, false, arg_1.c), vec2<u32>(41185u, 64524u), var_1.x), func_2(vec2<i32>(-2147483647i, -24647i), Struct_5(Struct_3(arg_1, vec2<bool>(arg_1.c, var_2.b.x), arg_0.x, Struct_1(1u, vec2<i32>(-1i, 24702i), arg_1.b, u_input.a, 15284i), Struct_1(arg_2.x, var_1, vec4<bool>(var_2.b.x, false, false, false), arg_2.zz, var_1.x)), Struct_4(Struct_2(var_2.a, vec4<bool>(false, true, false, var_2.c), arg_1.c), arg_2.yz, arg_0.yz, Struct_2(var_2.a, vec4<bool>(arg_1.c, var_2.b.x, var_2.c, var_2.b.x), var_2.c), Struct_3(Struct_2(var_2.a, vec4<bool>(arg_1.c, true, false, false), true), vec2<bool>(var_2.b.x, arg_1.b.x), 4294967295u, Struct_1(arg_1.a, var_1, vec4<bool>(arg_1.c, arg_1.b.x, arg_1.c, false), u_input.a, 0i), Struct_1(arg_1.a, var_1, vec4<bool>(false, arg_1.c, false, false), vec2<u32>(u_input.a.x, arg_1.a), 0i)))))), var_2.b.zw, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1537f, 342f, var_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1804f, -1578f, var_0))), ~(4294967295u | arg_0.x)), Struct_3(Struct_2(4294967295u, func_4(Struct_3(Struct_2(arg_2.x, vec4<bool>(false, var_2.b.x, false, false), var_2.b.x), arg_1.b.xz, 4294967295u, Struct_1(arg_1.a, var_1, vec4<bool>(arg_1.c, var_2.b.x, true, var_2.b.x), vec2<u32>(0u, 4294967295u), -1610i), Struct_1(4294967295u, var_1, var_2.b, arg_0.yx, var_1.x)), vec2<bool>(var_2.b.x, var_2.c), vec4<f32>(var_0, 450f, 519f, var_0), arg_2.x).b, true), !(!vec2<bool>(true, var_2.b.x)), arg_2.x, func_2(-vec2<i32>(5904i, -8140i), Struct_5(Struct_3(Struct_2(var_2.a, vec4<bool>(var_2.c, var_2.c, var_2.b.x, var_2.b.x), false), var_2.b.wz, 0u, Struct_1(var_2.a, var_1, vec4<bool>(false, false, true, arg_1.c), vec2<u32>(19177u, arg_1.a), 2147483647i), Struct_1(arg_1.a, vec2<i32>(646i, var_1.x), arg_1.b, arg_0.xz, 2147483647i)), Struct_4(arg_1, vec2<u32>(arg_1.a, u_input.a.x), arg_2.zx, arg_1, Struct_3(Struct_2(0u, vec4<bool>(false, var_2.c, false, false), var_2.b.x), vec2<bool>(arg_1.b.x, true), 31578u, Struct_1(arg_0.x, vec2<i32>(-62756i, -1i), var_2.b, arg_0.zy, var_1.x), Struct_1(0u, var_1, var_2.b, arg_2.xz, 25228i))))), func_2(_wgslsmith_add_vec2_i32(var_1, var_1), Struct_5(Struct_3(Struct_2(1u, arg_1.b, false), var_2.b.yy, arg_1.a, Struct_1(u_input.a.x, vec2<i32>(var_1.x, var_1.x), var_2.b, vec2<u32>(arg_1.a, 4294967295u), var_1.x), Struct_1(1u, var_1, vec4<bool>(false, false, true, false), u_input.a, var_1.x)), Struct_4(Struct_2(var_2.a, vec4<bool>(arg_1.b.x, arg_1.b.x, var_2.c, arg_1.b.x), true), vec2<u32>(4294967295u, arg_2.x), vec2<u32>(arg_0.x, 4294967295u), Struct_2(26140u, var_2.b, var_2.c), Struct_3(Struct_2(arg_2.x, var_2.b, arg_1.c), vec2<bool>(arg_1.b.x, var_2.b.x), 229u, Struct_1(arg_2.x, var_1, vec4<bool>(var_2.c, true, false, true), vec2<u32>(74763u, var_2.a), var_1.x), Struct_1(var_2.a, vec2<i32>(var_1.x, var_1.x), arg_1.b, u_input.a, var_1.x))))))));
    let var_4 = !var_3.a.a.b.wxz;
    return Struct_2(~var_2.a, !(!func_2(-var_3.b.e.e.b, Struct_5(var_3.a, var_3.b)).c), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, arg_2.x, 40168u), vec4<u32>(43461u, 24851u, 32053u, arg_2.x)) <= 1u);
}

fn func_1() -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(690f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1740f + 442f), 902f, true))))), 1358f, _wgslsmith_f_op_f32(f32(-1f) * -113f));
    let var_1 = Struct_3(func_5(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(0u, u_input.a.x, u_input.a.x)) & min(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 9414u, u_input.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u) & vec3<u32>(10322u, 0u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 51166u), vec3<u32>(100429u, 1u, u_input.a.x)))), func_4(Struct_3(Struct_2(u_input.a.x, vec4<bool>(false, false, false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), ~u_input.a.x, func_2(vec2<i32>(18924i, -1i), Struct_5(Struct_3(Struct_2(53838u, vec4<bool>(true, true, false, true), true), vec2<bool>(true, true), u_input.a.x, Struct_1(u_input.a.x, vec2<i32>(-29257i, 2147483647i), vec4<bool>(true, true, false, false), vec2<u32>(13831u, 43612u), -1i), Struct_1(u_input.a.x, vec2<i32>(-1i, -22196i), vec4<bool>(false, false, false, true), u_input.a, 71222i)), Struct_4(Struct_2(u_input.a.x, vec4<bool>(false, false, false, false), true), vec2<u32>(u_input.a.x, 21280u), u_input.a, Struct_2(u_input.a.x, vec4<bool>(false, true, false, true), true), Struct_3(Struct_2(62300u, vec4<bool>(true, false, false, true), true), vec2<bool>(true, true), u_input.a.x, Struct_1(u_input.a.x, vec2<i32>(0i, 18198i), vec4<bool>(false, true, false, true), vec2<u32>(u_input.a.x, u_input.a.x), -2147483647i), Struct_1(u_input.a.x, vec2<i32>(49872i, 0i), vec4<bool>(true, false, false, false), vec2<u32>(u_input.a.x, 0u), -48205i))))), Struct_1(u_input.a.x, vec2<i32>(-9096i, 20496i), vec4<bool>(false, false, true, false), vec2<u32>(u_input.a.x, u_input.a.x), -2147483647i)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 1490f, var_0.x, 812f))), _wgslsmith_div_vec4_f32(vec4<f32>(894f, var_0.x, 726f, 330f), vec4<f32>(1791f, var_0.x, var_0.x, var_0.x)))), (u_input.a.x | 12679u) ^ u_input.a.x), vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(1u, ~25823u, u_input.a.x), ~u_input.a.x)), vec2<bool>(true, true), firstLeadingBit(17626u), func_2(_wgslsmith_clamp_vec2_i32(-vec2<i32>(52008i, 21397i), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-3259i, -1i)), ~vec2<i32>(4874i, 0i), vec2<i32>(1i, -17398i)), -max(vec2<i32>(2276i, 23619i), vec2<i32>(2147483647i, -1i))), Struct_5(Struct_3(Struct_2(u_input.a.x, vec4<bool>(false, true, true, false), false), vec2<bool>(false, true), 1u, func_2(vec2<i32>(-1i, -23857i), Struct_5(Struct_3(Struct_2(u_input.a.x, vec4<bool>(true, true, true, true), false), vec2<bool>(true, false), u_input.a.x, Struct_1(u_input.a.x, vec2<i32>(-2147483647i, -21294i), vec4<bool>(true, true, false, true), vec2<u32>(1u, u_input.a.x), 3386i), Struct_1(1u, vec2<i32>(0i, 2147483647i), vec4<bool>(false, true, true, false), vec2<u32>(u_input.a.x, u_input.a.x), 38793i)), Struct_4(Struct_2(u_input.a.x, vec4<bool>(true, true, false, false), true), u_input.a, vec2<u32>(24358u, 4294967295u), Struct_2(u_input.a.x, vec4<bool>(false, true, true, false), true), Struct_3(Struct_2(18319u, vec4<bool>(true, true, true, true), true), vec2<bool>(true, false), 0u, Struct_1(4294967295u, vec2<i32>(-2147483647i, 41950i), vec4<bool>(true, true, false, true), u_input.a, -2147483647i), Struct_1(u_input.a.x, vec2<i32>(-55799i, -2147483647i), vec4<bool>(false, false, true, true), u_input.a, -19048i))))), func_2(vec2<i32>(-2147483647i, 2147483647i), Struct_5(Struct_3(Struct_2(u_input.a.x, vec4<bool>(false, false, false, true), false), vec2<bool>(false, true), u_input.a.x, Struct_1(6815u, vec2<i32>(-22778i, -4592i), vec4<bool>(true, true, false, false), vec2<u32>(1u, u_input.a.x), -1i), Struct_1(1u, vec2<i32>(-1i, 0i), vec4<bool>(true, false, false, true), u_input.a, -2147483647i)), Struct_4(Struct_2(18741u, vec4<bool>(false, false, true, true), false), vec2<u32>(u_input.a.x, 0u), vec2<u32>(1u, u_input.a.x), Struct_2(0u, vec4<bool>(false, false, true, false), true), Struct_3(Struct_2(50518u, vec4<bool>(false, false, false, true), true), vec2<bool>(false, false), 1u, Struct_1(u_input.a.x, vec2<i32>(-2147483647i, 0i), vec4<bool>(true, true, false, true), vec2<u32>(1u, 52164u), 2147483647i), Struct_1(u_input.a.x, vec2<i32>(35202i, 77850i), vec4<bool>(false, true, true, true), vec2<u32>(u_input.a.x, u_input.a.x), 0i)))))), Struct_4(func_5(vec3<u32>(u_input.a.x, 68626u, u_input.a.x), Struct_2(u_input.a.x, vec4<bool>(false, false, true, false), false), vec3<u32>(16340u, u_input.a.x, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a), abs(vec2<u32>(u_input.a.x, 1u)), func_4(Struct_3(Struct_2(20942u, vec4<bool>(true, false, true, true), false), vec2<bool>(false, true), 4294967295u, Struct_1(u_input.a.x, vec2<i32>(28810i, 16264i), vec4<bool>(false, false, false, true), u_input.a, -7034i), Struct_1(u_input.a.x, vec2<i32>(0i, 0i), vec4<bool>(false, false, true, true), vec2<u32>(41855u, u_input.a.x), -38007i)), vec2<bool>(false, false), vec4<f32>(var_0.x, -972f, var_0.x, var_0.x), 0u), Struct_3(Struct_2(u_input.a.x, vec4<bool>(false, true, false, false), false), vec2<bool>(false, true), u_input.a.x, Struct_1(u_input.a.x, vec2<i32>(2147483647i, -3993i), vec4<bool>(true, true, false, true), vec2<u32>(33881u, u_input.a.x), -29249i), Struct_1(1u, vec2<i32>(-1i, 356i), vec4<bool>(true, false, false, false), u_input.a, 52532i))))), Struct_1(~4294967295u, ~abs(~vec2<i32>(0i, -38709i)), !func_5(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(u_input.a.x, vec4<bool>(true, false, true, true), true), ~vec3<u32>(u_input.a.x, 90198u, u_input.a.x)).b, vec2<u32>(func_2(vec2<i32>(1i, 1i), Struct_5(Struct_3(Struct_2(0u, vec4<bool>(true, true, true, false), true), vec2<bool>(true, true), 50161u, Struct_1(u_input.a.x, vec2<i32>(-7703i, -16169i), vec4<bool>(true, true, false, true), u_input.a, -30041i), Struct_1(4056u, vec2<i32>(0i, 7775i), vec4<bool>(true, true, true, true), u_input.a, 0i)), Struct_4(Struct_2(24925u, vec4<bool>(true, false, false, true), true), u_input.a, vec2<u32>(u_input.a.x, 18743u), Struct_2(u_input.a.x, vec4<bool>(false, true, false, false), true), Struct_3(Struct_2(6341u, vec4<bool>(true, true, true, false), false), vec2<bool>(false, true), u_input.a.x, Struct_1(40055u, vec2<i32>(-1i, 1i), vec4<bool>(true, false, false, false), u_input.a, -1i), Struct_1(u_input.a.x, vec2<i32>(-1i, -1i), vec4<bool>(true, false, false, true), u_input.a, -10756i))))).d.x, reverseBits(u_input.a.x)), 1i));
    let var_2 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(select(-3504i, i32(-1i) * -26849i, func_2(var_1.d.b, Struct_5(Struct_3(var_1.a, var_1.e.c.zy, 69521u, var_1.e, Struct_1(u_input.a.x, var_1.d.b, var_1.d.c, var_1.e.d, var_1.d.b.x)), Struct_4(var_1.a, u_input.a, var_1.e.d, Struct_2(1u, var_1.e.c, var_1.a.c), Struct_3(var_1.a, var_1.e.c.yw, 3224u, var_1.d, Struct_1(var_1.e.d.x, var_1.d.b, var_1.a.b, u_input.a, var_1.e.e))))).c.x), -2147483647i, _wgslsmith_clamp_i32(-1i, ~2147483647i, 42274i), (i32(-1i) * -32772i) & _wgslsmith_mod_i32(-28015i, var_1.d.b.x)), _wgslsmith_add_vec4_i32(countOneBits(reverseBits(vec4<i32>(29132i, 2147483647i, 27308i, var_1.d.b.x))), vec4<i32>(-7146i, var_1.d.e, var_1.d.e, -1i) | select(vec4<i32>(var_1.e.e, 1326i, var_1.e.e, var_1.d.e), vec4<i32>(var_1.e.b.x, -36465i, var_1.d.b.x, -2147483647i), var_1.a.b)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, var_1.d.e, 2147483647i), vec4<i32>(603i, var_1.e.b.x, -3859i, var_1.d.e), vec4<i32>(var_1.d.b.x, var_1.e.e, 2147483647i, -7465i)) << (vec4<u32>(u_input.a.x, ~69679u, select(1u, var_1.c, true), 1u) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_sub_i32(-17417i, -2147483647i) | ~((var_2.x | var_1.d.b.x) << (27806u % 32u));
    var_3 = firstLeadingBit(89287i);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(var_1.d.b, var_2.xx, var_1.e.b)), var_1.e.b), -var_2.yw) ^ 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(any(vec4<bool>(true, true, false, false)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false))));
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(87439i, func_1(), -47158i, -2147483647i);
    var var_2 = !var_0 && func_2(firstLeadingBit(var_1.xz), Struct_5(Struct_3(func_5(vec3<u32>(0u, 0u, 44414u), Struct_2(4294967295u, vec4<bool>(false, var_0, var_0, var_0), true), vec3<u32>(1u, u_input.a.x, u_input.a.x)), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, true)), ~u_input.a.x, func_2(var_1.ww, Struct_5(Struct_3(Struct_2(0u, vec4<bool>(false, true, var_0, true), false), vec2<bool>(var_0, var_0), u_input.a.x, Struct_1(u_input.a.x, var_1.yz, vec4<bool>(false, var_0, false, false), u_input.a, var_1.x), Struct_1(u_input.a.x, var_1.zz, vec4<bool>(var_0, true, var_0, var_0), vec2<u32>(0u, u_input.a.x), var_1.x)), Struct_4(Struct_2(0u, vec4<bool>(false, true, var_0, true), var_0), u_input.a, vec2<u32>(28752u, u_input.a.x), Struct_2(15264u, vec4<bool>(var_0, true, false, false), var_0), Struct_3(Struct_2(0u, vec4<bool>(var_0, true, true, var_0), true), vec2<bool>(true, true), 4294967295u, Struct_1(u_input.a.x, var_1.wy, vec4<bool>(true, true, false, true), u_input.a, var_1.x), Struct_1(57974u, var_1.xz, vec4<bool>(true, false, var_0, var_0), vec2<u32>(0u, u_input.a.x), var_1.x))))), func_2(var_1.zz, Struct_5(Struct_3(Struct_2(1u, vec4<bool>(var_0, var_0, true, var_0), false), vec2<bool>(var_0, var_0), u_input.a.x, Struct_1(0u, vec2<i32>(var_1.x, var_1.x), vec4<bool>(var_0, true, true, false), u_input.a, var_1.x), Struct_1(44205u, vec2<i32>(var_1.x, -2147483647i), vec4<bool>(true, true, var_0, var_0), u_input.a, var_1.x)), Struct_4(Struct_2(1u, vec4<bool>(true, false, var_0, false), var_0), vec2<u32>(u_input.a.x, 0u), vec2<u32>(43572u, 0u), Struct_2(18796u, vec4<bool>(false, false, true, true), var_0), Struct_3(Struct_2(4294967295u, vec4<bool>(true, var_0, var_0, var_0), true), vec2<bool>(var_0, true), u_input.a.x, Struct_1(u_input.a.x, var_1.zx, vec4<bool>(var_0, true, var_0, var_0), vec2<u32>(26646u, 4294967295u), 2147483647i), Struct_1(4294967295u, vec2<i32>(var_1.x, 1i), vec4<bool>(false, true, false, true), u_input.a, var_1.x)))))), Struct_4(func_5(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(u_input.a.x, vec4<bool>(var_0, false, false, var_0), false), vec3<u32>(46452u, 70157u, u_input.a.x)), vec2<u32>(u_input.a.x, 0u), u_input.a & vec2<u32>(4294967295u, u_input.a.x), Struct_2(4294967295u, vec4<bool>(true, var_0, true, true), true), Struct_3(Struct_2(u_input.a.x, vec4<bool>(var_0, var_0, var_0, var_0), true), vec2<bool>(false, var_0), u_input.a.x, Struct_1(u_input.a.x, var_1.wy, vec4<bool>(false, true, var_0, true), u_input.a, -2147483647i), Struct_1(43641u, vec2<i32>(-17986i, var_1.x), vec4<bool>(false, false, var_0, var_0), vec2<u32>(1u, u_input.a.x), -8984i))))).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_clamp_vec2_i32(~(-min(var_1.yw, var_1.yx)), firstTrailingBit(-vec2<i32>(-32385i, var_1.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, ~0i), var_1.yw, var_1.wz)), var_1, u_input.a.x);
}

