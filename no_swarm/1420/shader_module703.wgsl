struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec3<i32>, 4>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1000f, -257f), 1972f, vec2<bool>(false, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: f32) -> i32 {
    global1 = array<vec3<i32>, 4>();
    let var_0 = firstTrailingBit(vec2<i32>(arg_2, abs(-2147483647i)));
    var var_1 = arg_1;
    var var_2 = reverseBits(select(_wgslsmith_clamp_vec2_i32(-(~var_0), firstLeadingBit(_wgslsmith_mod_vec2_i32(arg_0.ww, var_0)), _wgslsmith_mult_vec2_i32(-vec2<i32>(arg_2, arg_0.x), vec2<i32>(arg_2, arg_2))), _wgslsmith_mult_vec2_i32(-firstLeadingBit(arg_0.zx), arg_0.yx), global2.d.xx));
    var var_3 = Struct_1(vec2<f32>(-457f, global2.b), 774f, select(!(!select(vec2<bool>(global2.d.x, global2.d.x), vec2<bool>(true, global2.c.x), global2.d.wx)), vec2<bool>(!any(global2.d), any(vec3<bool>(false, false, true))), !global2.c), vec4<bool>(!(_wgslsmith_div_u32(u_input.b.x, arg_1) == 4294967295u), global2.d.x & global2.d.x, all(!global2.d.xyy), true));
    return 3148i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(global2.a)), -190f, select(select(!select(vec2<bool>(global2.d.x, true), vec2<bool>(true, global2.d.x), true), !select(global2.c, global2.c, global2.d.wy), (true && global2.c.x) & all(vec4<bool>(global2.c.x, true, global2.d.x, true))), vec2<bool>(false, any(global2.d)), false), select(vec4<bool>(true, !all(global2.c), all(select(global2.d.wz, global2.d.xz, global2.d.x)), all(select(global2.d, global2.d, global2.d))), select(select(vec4<bool>(global2.d.x, true, false, global2.c.x), global2.d, global2.d), !global2.d, !select(vec4<bool>(global2.c.x, false, true, global2.d.x), global2.d, global2.d)), select(!global2.d, global2.d, global2.d)));
    let var_1 = -(-func_3(min(vec4<i32>(-2147483647i, -1i, 0i, -39193i), vec4<i32>(-68811i, 1i, -1i, 8775i)), ~arg_0, _wgslsmith_div_i32(-1i, -1i), _wgslsmith_div_f32(var_0.b, 1260f)) | ~1i);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global2.b, global2.b)), -2134f)), _wgslsmith_f_op_f32(-525f * global2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))), var_0.b))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.d.x), vec2<bool>(true, true), !var_0.d.x), !select(vec2<bool>(true, true), var_0.c, vec2<bool>(global2.d.x, true))), vec2<bool>((var_0.a.x != global2.b) & all(global2.d), true), any(!var_0.d.zyz)), select(select(global2.d, !select(var_0.d, vec4<bool>(false, var_0.c.x, true, false), var_0.d), var_0.d), select(!select(vec4<bool>(false, var_0.c.x, false, false), vec4<bool>(true, true, var_0.d.x, false), global2.c.x), vec4<bool>(global2.c.x, -160f > var_0.b, !var_0.c.x, all(vec4<bool>(true, true, var_0.c.x, global2.c.x))), vec4<bool>(true || global2.d.x, any(vec4<bool>(global2.d.x, var_0.d.x, false, false)), any(var_0.d.zy), true)), var_0.d));
    let var_3 = var_2.c.x;
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(round(-572f))) + vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.b)), var_2.a.x))), -312f, !vec2<bool>(!any(vec4<bool>(var_2.d.x, global2.c.x, false, true)), var_2.d.x), vec4<bool>(~1u != ~_wgslsmith_div_u32(arg_0, u_input.a), true, all(var_2.d.xx), 4294967295u == _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(u_input.a), _wgslsmith_add_u32(7413u, 20165u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2036f, _wgslsmith_f_op_f32(min(global2.a.x, var_2.a.x))))))), 1299f, var_4.d.xy, vec4<bool>(var_2.c.x, var_2.d.x, !(!any(var_4.d.wwx)), !((18688u ^ u_input.b.x) >= u_input.b.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = select(abs(~firstTrailingBit(~u_input.b.x)), _wgslsmith_div_u32(103388u, ~max(19543u, u_input.b.x)), any(select(!(!vec2<bool>(true, arg_2.c.x)), arg_2.d.xw, global2.d.x)));
    var_0 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b.x, ~u_input.b.x, firstTrailingBit(7655u), 0u), ~(~vec4<u32>(u_input.a, u_input.b.x, 28448u, u_input.a))), select(abs(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(19501u, 4294967295u, 8140u, 77372u), vec4<u32>(u_input.a, 33594u, 9840u, u_input.a), vec4<u32>(68602u, u_input.a, 8272u, u_input.b.x)))), ~(~max(vec4<u32>(u_input.a, 61749u, u_input.b.x, u_input.a), vec4<u32>(8365u, u_input.b.x, u_input.a, u_input.a))), global2.d.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.x + global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -525f), all(vec3<bool>(false, false, arg_2.c.x)))) * arg_0.x), all(!(!vec4<bool>(true, false, true, global2.c.x))))), _wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = 1373f;
    let var_3 = u_input.b.x;
    return all(vec3<bool>(!(u_input.a >= _wgslsmith_sub_u32(4294967295u, 0u)), true, !arg_2.d.x));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: bool) -> vec3<bool> {
    global1 = array<vec3<i32>, 4>();
    global1 = array<vec3<i32>, 4>();
    global0 = firstTrailingBit(firstLeadingBit(2147483647i));
    let var_0 = select(global2.d.yxx, vec3<bool>(any(select(global2.d, select(global2.d, global2.d, global2.d), vec4<bool>(global2.c.x, true, arg_2, arg_2))), arg_2, true), !select(!global2.d.ywy, !global2.d.zzz, !func_2(u_input.b.x).d.x));
    global2 = Struct_1(global2.a, global2.b, global2.c, !vec4<bool>(var_0.x, any(global2.c), ~15669u > arg_0, true));
    return !vec3<bool>(true, true, !global2.d.x);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    global0 = _wgslsmith_mod_i32(1528i >> (_wgslsmith_dot_vec4_u32(arg_1, select(vec4<u32>(11519u, 44699u, arg_1.x, u_input.b.x), ~arg_1, !vec4<bool>(global2.d.x, arg_0.x, false, false))) % 32u), 0i);
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-996f, 638f), global2.a, true)) * _wgslsmith_f_op_vec2_f32(-global2.a)), global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, global2.b))))), vec2<bool>(!(-1085f >= _wgslsmith_f_op_f32(step(1349f, 1276f))), all(select(global2.d.xzx, !arg_0, global2.d.x))), vec4<bool>(global2.c.x, true, arg_0.x, all(global2.d)));
    var var_1 = ~arg_3 ^ 4294967295u;
    var var_2 = func_2(4294967295u);
    global2 = Struct_1(vec2<f32>(func_2(u_input.b.x).b, global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + 451f))) - var_2.b), vec2<bool>(true, arg_0.x), vec4<bool>(global2.d.x, true, var_2.c.x, (~arg_2.x | _wgslsmith_mult_u32(arg_1.x, 0u)) != arg_3));
    return var_0;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_6(select(func_5(4294967295u, 20263i, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, -1368f, global2.a.x)), firstTrailingBit(11619i), func_2(u_input.b.x))), !vec3<bool>(!global2.d.x, true, true), func_5(0u, -11363i, any(vec3<bool>(arg_0, false, false)))), ~vec4<u32>(~4294967295u, ~4294967295u, ~(~0u), _wgslsmith_mod_u32(16076u, ~u_input.b.x)), vec3<u32>(_wgslsmith_mult_u32(countOneBits(4294967295u), ~_wgslsmith_add_u32(u_input.a, u_input.a)), ~(~_wgslsmith_mod_u32(u_input.a, 5855u)), 4294967295u), ~1u);
    var_0 = func_6(vec3<bool>(any(!(!vec3<bool>(arg_0, false, var_0.c.x))), var_0.c.x, var_0.c.x), ~vec4<u32>(~countOneBits(4294967295u), 0u, ~u_input.a, 15526u), firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 0u, 27100u), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), max(vec3<u32>(9206u, u_input.b.x, 85212u), vec3<u32>(1u, 4294967295u, 4294967295u))))), ~_wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(45946u, u_input.a, 36440u, 0u))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 55665u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.b.x)), ~vec4<u32>(0u, u_input.a, u_input.b.x, u_input.b.x))));
    let var_1 = -countOneBits(~firstLeadingBit(-64791i >> (u_input.b.x % 32u)));
    let var_2 = func_6(func_5(countOneBits(u_input.b.x), ~firstLeadingBit(0i), arg_0), vec4<u32>(u_input.b.x, 76415u & u_input.b.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 31122u), reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b)), 1u), ~(~(~(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x) | vec3<u32>(0u, 0u, u_input.a)))), u_input.a);
    global1 = array<vec3<i32>, 4>();
    return select(~u_input.a, u_input.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 4>();
    let var_0 = ~(((~vec3<u32>(24367u, u_input.a, u_input.b.x) & countOneBits(vec3<u32>(30437u, 8u, u_input.a))) << (~(~vec3<u32>(u_input.a, 1u, u_input.b.x)) % vec3<u32>(32u))) & (countOneBits(vec3<u32>(u_input.b.x, u_input.a, 4294967295u)) | vec3<u32>(~u_input.a, u_input.b.x, select(u_input.a, u_input.a, true))));
    var var_1 = vec4<u32>(5478u, ~(var_0.x >> (0u % 32u)) << (reverseBits(_wgslsmith_div_u32(var_0.x, 7402u)) % 32u), u_input.b.x, ~u_input.b.x) | ~vec4<u32>(_wgslsmith_dot_vec3_u32(var_0, var_0 << (vec3<u32>(23973u, 4294967295u, u_input.a) % vec3<u32>(32u))), 0u, var_0.x, min(~0u, func_1(true)));
    global2 = func_2(~(~reverseBits(1u)));
    let var_2 = func_2(var_0.x);
    var_1 = vec4<u32>(~(~0u), u_input.a, _wgslsmith_mod_u32(var_1.x, u_input.b.x), ~(var_0.x ^ (_wgslsmith_mult_u32(9917u, 1u) & ~var_0.x)));
    global2 = Struct_1(var_2.a, _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + var_2.a.x))), var_2.d.xy, vec4<bool>(true, false, 942f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_2.b)), _wgslsmith_div_f32(var_2.a.x, -478f))), func_6(!func_2(u_input.a).d.xwz, abs(vec4<u32>(41409u, 10401u, var_1.x, var_0.x)), max(vec3<u32>(u_input.b.x, var_0.x, var_1.x), ~vec3<u32>(u_input.b.x, var_0.x, 1u)), _wgslsmith_mod_u32(var_1.x, ~var_0.x)).d.x));
    var var_3 = func_6(vec3<bool>(global2.c.x, global2.d.x, true), ~(~abs(max(vec4<u32>(var_1.x, 0u, var_1.x, 69194u), vec4<u32>(1u, 44431u, var_1.x, var_1.x)))), select(min(~var_1.wxx ^ vec3<u32>(670u, 47120u, 28850u), var_1.xyx), var_0, !func_2(~u_input.a).d.zzx), firstTrailingBit(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_3.b * -1000f), -276f, -1096f, -1196f))))));
}

