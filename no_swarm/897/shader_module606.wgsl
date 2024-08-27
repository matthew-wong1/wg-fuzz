struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32> = vec3<i32>(-8534i, i32(-2147483648), 686i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    global1 = u_input.b.wxx;
    var var_0 = Struct_1(select(vec4<bool>(false, true, false, true), !select(vec4<bool>(arg_1.x, true, false, false), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, false, arg_1.x, false)), false), vec4<bool>(true, true, true, !any(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))), 1u <= (~global0.x | reverseBits(global0.x)));
    let var_1 = ~vec4<u32>(global0.x, abs(~countOneBits(0u)), ~(~global0.x), 77597u);
    let var_2 = var_1.x >> ((2366u >> (~(select(51858u, 4294967295u, var_0.a.x) >> (global0.x % 32u)) % 32u)) % 32u);
    return _wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(i32(-1i) * -56706i, _wgslsmith_dot_vec3_i32(u_input.b.wzw, vec3<i32>(-2147483647i, u_input.b.x, 1i))) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0.zzw, vec3<u32>(1u, var_2, global0.x)), ~global0.yyz) % 32u)), i32(-1i) * -51289i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    let var_0 = arg_3;
    var var_1 = false;
    let var_2 = any(select(select(vec3<bool>(true, true, 4294967295u > arg_2.a), vec3<bool>(var_0.b.x && false, true, true), any(var_0.c)), var_0.c.zzw, true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f));
    global0 = vec4<u32>(83824u, firstTrailingBit(_wgslsmith_sub_u32(39856u, _wgslsmith_dot_vec2_u32(firstLeadingBit(global0.yw), global0.xx))), max(0u, arg_2.a), _wgslsmith_div_u32(arg_2.a, 1u));
    return ~(~countOneBits(firstTrailingBit(arg_2.a))) != ~arg_2.a;
}

fn func_2(arg_0: vec3<i32>) -> Struct_5 {
    var var_0 = func_4(Struct_1(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, true))), false), Struct_3(-15170i, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec4<bool>(false, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), select(true, any(vec2<bool>(false, true)), any(vec2<bool>(false, true))), func_3(u_input.a, vec3<bool>(true, true, true)) > arg_0.x)), Struct_2(global0.x), Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0, _wgslsmith_sub_vec3_i32(u_input.b.wwz, vec3<i32>(45275i, u_input.a, -25558i))), reverseBits(arg_0)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(true, all(vec3<bool>(true, true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec4<bool>(18636i == -u_input.b.x, false, true, any(vec2<bool>(true, true)) && true)));
    global1 = vec3<i32>(~_wgslsmith_mod_i32(-18316i ^ max(2147483647i, arg_0.x), arg_0.x), global1.x, 85473i);
    var var_1 = _wgslsmith_clamp_i32(-32266i, _wgslsmith_add_i32(min(min(-2147483647i, global1.x), -37376i) >> (~(~24825u) % 32u), -1i), 1i);
    var var_2 = _wgslsmith_f_op_f32(-249f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(round(242f)))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(977f, -1000f, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(floor(-1716f)), true)))));
    var var_3 = (_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b.x, -35616i, ~(-2147483647i), ~1i), vec4<i32>(u_input.a, firstLeadingBit(arg_0.x), 2147483647i, -1i)) | vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-16846i, u_input.b.x, global1.x, -2762i), u_input.b)), -(~6516i), _wgslsmith_mult_i32(u_input.a, 0i), 1i)) & ~(vec4<i32>(-8644i, arg_0.x | 1i, global1.x << (4294967295u % 32u), _wgslsmith_div_i32(global1.x, 1i)) << ((vec4<u32>(0u, 0u, global0.x, global0.x) ^ max(vec4<u32>(35179u, 61608u, global0.x, global0.x), vec4<u32>(global0.x, 77492u, global0.x, global0.x))) % vec4<u32>(32u)));
    return Struct_5(Struct_3(_wgslsmith_add_i32(global1.x, global1.x), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, false)), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-806f, 1993f)))), _wgslsmith_f_op_f32(floor(475f)), -667f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1764f, -624f, 1000f), vec3<f32>(-1030f, 840f, 1012f)) - vec3<f32>(1000f, -488f, 214f))))));
    return 0u;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_3 {
    global0 = vec4<u32>(func_5(func_2(_wgslsmith_clamp_vec3_i32(u_input.b.xww, vec3<i32>(2306i, arg_0, arg_0), u_input.b.zyz))), ~(~abs(4294967295u)), 1u, arg_1.x) ^ select(abs(firstLeadingBit(~vec4<u32>(global0.x, 0u, global0.x, global0.x))), ~(countOneBits(vec4<u32>(0u, 1u, 15976u, global0.x)) & max(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x), vec4<u32>(0u, 0u, arg_1.x, 27498u))), any(!vec3<bool>(true, false, arg_2.x)) | arg_2.x);
    var var_0 = true;
    global0 = vec4<u32>(~abs(77340u) ^ _wgslsmith_add_u32(arg_1.x << (global0.x % 32u), 1u >> (0u % 32u)), 79606u, 1u, ~(~arg_1.x ^ global0.x)) ^ select(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, global0.x, 0u, 1u), vec4<u32>(1346u, arg_1.x, global0.x, 4294967295u), vec4<u32>(0u, arg_1.x, 8395u, 4294967295u)), ~countOneBits(vec4<u32>(arg_1.x, global0.x, 1u, 1u))), select(countOneBits(abs(vec4<u32>(arg_1.x, 4294967295u, 0u, 0u))), ~(vec4<u32>(global0.x, arg_1.x, 31710u, 53452u) | vec4<u32>(arg_1.x, 0u, global0.x, global0.x)), true), func_2(u_input.b.zyx).a.c.x);
    var var_1 = func_2(abs((vec3<i32>(global1.x, 71098i, arg_0) << (_wgslsmith_mult_vec3_u32(vec3<u32>(85140u, arg_1.x, 1u), global0.xzy) % vec3<u32>(32u))) | u_input.b.xxy));
    let var_2 = Struct_4(global1.xy);
    return func_2(u_input.b.yxy ^ ~(vec3<i32>(-1i) * -vec3<i32>(-1i, 0i, 43861i))).a;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_5 {
    global1 = vec3<i32>(firstLeadingBit(select(~func_1(-2147483647i, vec3<u32>(1u, 4294967295u, arg_3.x), arg_1.a.xz).a, -29583i, func_2(vec3<i32>(global1.x, 29817i, arg_2.a)).a.c.x)), -2147483647i, 2147483647i);
    var var_0 = _wgslsmith_mod_vec3_u32((global0.yzw | vec3<u32>(1u, 398u, ~52287u)) >> ((global0.wwx << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(2152u, arg_3.x, global0.x), vec3<u32>(arg_3.x, 4294967295u, 4294967295u), vec3<u32>(18129u, 14714u, global0.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(80524u, ~1u >> (global0.x % 32u), ~0u));
    var var_1 = Struct_4(reverseBits(_wgslsmith_clamp_vec2_i32(max(u_input.b.xx, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_2.a), u_input.b.zx)), global1.zy, vec2<i32>(u_input.b.x, -21108i))));
    var var_2 = vec4<u32>(4294967295u, 1u, 44354u, var_0.x);
    let var_3 = vec3<i32>(arg_2.a, ~(-arg_2.a << (arg_3.x % 32u)), -17938i);
    return func_2(u_input.b.xyw >> (~select(max(vec3<u32>(var_2.x, 1u, 54705u), vec3<u32>(global0.x, 8691u, var_0.x)), arg_3, !vec3<bool>(true, true, arg_0.c.x)) % vec3<u32>(32u)));
}

fn func_7(arg_0: Struct_5, arg_1: Struct_4) -> bool {
    var var_0 = ~countOneBits(max(vec4<u32>(0u, 59645u, global0.x, global0.x), vec4<u32>(global0.x, 41024u, 1u, global0.x)) & vec4<u32>(15941u, global0.x, _wgslsmith_sub_u32(4294967295u, global0.x), abs(1u)));
    var var_1 = 395f;
    global1 = firstLeadingBit(u_input.b.ywx);
    var var_2 = false;
    var var_3 = ~abs(~reverseBits(~var_0.x));
    return arg_0.a.b.x;
}

fn func_8(arg_0: i32, arg_1: bool, arg_2: i32) -> vec3<i32> {
    var var_0 = ~71517i;
    global0 = select(vec4<u32>(max(37069u, 25117u), countOneBits(77377u), 0u, _wgslsmith_dot_vec3_u32(global0.zzw, vec3<u32>(global0.x, global0.x, 77067u))) & select(~vec4<u32>(49076u, 3228u, 64434u, 0u), ~vec4<u32>(global0.x, global0.x, 4294967295u, 1953u), !vec4<bool>(arg_1, false, false, arg_1)), firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, global0.x) << (vec4<u32>(global0.x, 59363u, global0.x, 71097u) % vec4<u32>(32u))) & vec4<u32>(~0u, global0.x, ~global0.x, 1u), vec4<bool>(func_2(u_input.b.wyz).a.c.x, true, func_2(_wgslsmith_add_vec3_i32(u_input.b.xxz, u_input.b.zxz)).a.b.x, all(vec2<bool>(arg_1, false)))) >> (~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, 4294967295u, 1u, global0.x), ~vec4<u32>(102781u, global0.x, 4678u, 4294967295u) ^ ~vec4<u32>(global0.x, 1u, global0.x, 2020u), vec4<u32>(global0.x, 31044u, _wgslsmith_div_u32(global0.x, global0.x), 1u)) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-2409f)), 1000f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1890f, 1210f) + vec2<f32>(430f, -1324f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-881f, 236f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-362f, -226f), vec2<f32>(308f, -268f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(372f, 1081f)))))), !func_6(Struct_3(global1.x, vec2<bool>(true, false), vec4<bool>(arg_1, false, arg_1, arg_1)), Struct_1(vec4<bool>(true, arg_1, true, true), true), func_2(vec3<i32>(-8326i, -2147483647i, -51375i)).a, vec3<u32>(global0.x, 39592u, global0.x)).a.c.zw)));
    global1 = vec3<i32>(-7961i, 62365i, 13818i);
    let var_2 = arg_2;
    return _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, func_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(20213i, arg_2), 24395i), _wgslsmith_mult_vec3_u32(~global0.zyw, vec3<u32>(27075u, 4294967295u, global0.x)), !func_6(Struct_3(var_2, vec2<bool>(true, arg_1), vec4<bool>(arg_1, false, false, true)), Struct_1(vec4<bool>(arg_1, false, arg_1, arg_1), true), Struct_3(-2147483647i, vec2<bool>(true, true), vec4<bool>(arg_1, arg_1, false, false)), global0.yzx).a.b).a, arg_2 | arg_0), ~vec3<i32>(global1.x, -11917i, 43501i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, arg_2), vec3<i32>(var_2, ~1i, -17828i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_8(_wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_add_i32(-2147483647i, global1.x), u_input.b.x, i32(-1i) * -4665i), true & func_7(func_6(func_1(u_input.b.x, vec3<u32>(1u, 13299u, 5707u), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, false), true), func_2(vec3<i32>(0i, 75101i, global1.x)).a, max(global0.zwx, global0.xwy)), Struct_4(-vec2<i32>(global1.x, global1.x))), _wgslsmith_dot_vec2_i32(global1.xz ^ -(global1.xx << (vec2<u32>(global0.x, 0u) % vec2<u32>(32u))), (_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(4842i, u_input.b.x)) << (_wgslsmith_sub_vec2_u32(global0.xy, global0.zz) % vec2<u32>(32u))) << ((reverseBits(global0.zw) >> ((vec2<u32>(global0.x, 7804u) & vec2<u32>(global0.x, 9256u)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-721f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1110f * -3431f))), _wgslsmith_f_op_f32(select(174f, -1418f, global0.x <= global0.x))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-344f + -219f) + _wgslsmith_f_op_f32(f32(-1f) * -1229f))), _wgslsmith_f_op_f32(f32(-1f) * -2169f))));
    global0 = ~vec4<u32>(global0.x, 0u, ~(~global0.x) | global0.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u | global0.x, select(1u, global0.x, true)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), global0.wy)));
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.x, 1u, 36951u)), ~vec3<u32>(global0.x, global0.x, 58474u)), ~1u), _wgslsmith_div_u32(0u, global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 58783u), global0.xy), 54708u), ~global0.ww), countOneBits(7680u)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(18085u, 36331u, 114210u, global0.x), vec4<u32>(global0.x, global0.x, 15232u, 8351u), vec4<u32>(global0.x, global0.x, 31316u, global0.x)), ~vec4<u32>(global0.x, global0.x, global0.x, 0u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 1u, 1u)), abs(vec4<u32>(25285u, 4294967295u, global0.x, 4294967295u)))));
    global0 = vec4<u32>(~(_wgslsmith_mult_u32(global0.x, global0.x) >> (4294967295u % 32u)), 57773u, global0.x, global0.x) << (vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mult_u32(global0.x, 1u)), countOneBits(firstLeadingBit(11980u))), ~_wgslsmith_clamp_u32(global0.x, global0.x, global0.x), 4294967295u, firstTrailingBit(global0.x)) % vec4<u32>(32u));
    let var_1 = !(global1.x > select(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 10037i, u_input.b.x), vec3<i32>(0i, -31676i, u_input.b.x)), global0.yxy, vec2<bool>(true, true)).a, ~(-21539i), !(global0.x <= 4294967295u)));
    global0 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, _wgslsmith_sub_u32(67468u, global0.x), global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 43829u), vec4<u32>(4026u, global0.x, 76160u, global0.x) ^ vec4<u32>(1u, global0.x, global0.x, 4294967295u))));
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 63813u, 45474u, firstTrailingBit(firstLeadingBit(global0.x))), vec4<u32>(global0.x, max(62488u, 4294967295u), 4294967295u, 1u & ~global0.x));
    let var_2 = func_1(-func_6(func_2(firstTrailingBit(u_input.b.yww)).a, Struct_1(func_1(global1.x, vec3<u32>(4294967295u, global0.x, 4294967295u), vec2<bool>(true, var_1)).c, var_1), func_6(Struct_3(u_input.b.x, vec2<bool>(true, true), vec4<bool>(true, var_1, var_1, true)), Struct_1(vec4<bool>(var_1, var_1, var_1, false), var_1), Struct_3(-1i, vec2<bool>(var_1, true), vec4<bool>(var_1, true, false, var_1)), vec3<u32>(4294967295u, 6306u, 4294967295u)).a, vec3<u32>(global0.x & global0.x, ~global0.x, 1u)).a.a, vec3<u32>(global0.x, global0.x, _wgslsmith_dot_vec3_u32(global0.xzy, vec3<u32>(4294967295u & global0.x, countOneBits(0u), _wgslsmith_sub_u32(10676u, global0.x)))), !(!func_1(_wgslsmith_dot_vec3_i32(u_input.b.yyx, vec3<i32>(2147483647i, u_input.a, u_input.b.x)), ~vec3<u32>(global0.x, 69931u, global0.x), select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), vec2<bool>(true, true))).c.xw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0, 1605f), _wgslsmith_f_op_f32(trunc(-1000f)), var_0)) + vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -486f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f * _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(var_0))))));
}

