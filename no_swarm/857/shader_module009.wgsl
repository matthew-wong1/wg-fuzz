struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: f32 = 805f;

var<private> global2: vec4<i32>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(-1000f + -187f);
    var var_0 = select(vec2<u32>(~u_input.a.x, _wgslsmith_clamp_u32(97104u, 2167u, ~reverseBits(global3.a.x))), vec2<u32>(1u, 70871u), true);
    let var_1 = Struct_1((_wgslsmith_clamp_vec4_u32(vec4<u32>(38668u, 4294967295u, u_input.a.x, arg_0.x), ~arg_2, arg_2) ^ arg_2) >> (vec4<u32>(_wgslsmith_clamp_u32(var_0.x, 1u, firstTrailingBit(9941u)), firstLeadingBit(arg_2.x) << (_wgslsmith_mult_u32(arg_0.x, 25811u) % 32u), 47460u, (arg_2.x >> (0u % 32u)) & _wgslsmith_clamp_u32(6472u, arg_2.x, 43044u)) % vec4<u32>(32u)), var_0.x, !(!((34328i ^ u_input.b) >= (i32(-1i) * -19218i))));
    global1 = -1301f;
    var_0 = _wgslsmith_clamp_vec2_u32(var_1.a.xy, vec2<u32>(~var_1.a.x, ~(~4294967295u)), vec2<u32>(~(~55829u), ~arg_0.x)) << (abs(~(_wgslsmith_mod_vec2_u32(vec2<u32>(51257u, arg_2.x), global3.a.zz) ^ select(u_input.a, u_input.a, true))) % vec2<u32>(32u));
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(~var_1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.a.x), vec2<u32>(0u, var_0.x))), ~(2025u >> (arg_0.x % 32u))), abs(countOneBits(~vec2<u32>(33539u, 4294967295u))));
}

fn func_2() -> f32 {
    global0 = select(!(!(!(!vec3<bool>(global0.x, false, false)))), vec3<bool>(true, true, any(vec2<bool>(true, select(global0.x, true, true)))), vec3<bool>(true, all(vec4<bool>(-86976i >= global2.x, true, global0.x, !global0.x)), false));
    var var_0 = func_3(global3.a.zxz, global3.c, global3.a);
    return 1508f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: bool) -> Struct_1 {
    global1 = 407f;
    let var_0 = ~(~global3.a.xwy) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, arg_0.x, _wgslsmith_sub_u32(4294967295u, arg_2)) << (~min(global3.a.yxw, vec3<u32>(global3.a.x, 64952u, 1u)) % vec3<u32>(32u)), ~vec3<u32>(global3.b, 0u, u_input.a.x), ~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, arg_2, 1u), firstLeadingBit(global3.a.zyz))) % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_f32(func_2());
    let var_1 = true;
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~(arg_2 ^ 0u), max(_wgslsmith_dot_vec2_u32(global3.a.xy, vec2<u32>(arg_2, 1454u)), ~u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.xz, vec2<u32>(46561u, arg_0.x)), 4294967295u), u_input.a.x), abs(~_wgslsmith_mult_vec4_u32(global3.a, vec4<u32>(arg_2, var_0.x, global3.b, u_input.a.x))) >> (global3.a % vec4<u32>(32u)));
    return Struct_1(firstLeadingBit(~vec4<u32>(_wgslsmith_clamp_u32(global3.b, u_input.a.x, var_2), 7828u >> (var_2 % 32u), arg_0.x, 10996u)), abs(func_3(arg_0, arg_3, ~global3.a)) & _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global3.a, vec4<u32>(arg_0.x, 1u, 1u, global3.b)), arg_0.x), false);
}

fn func_4(arg_0: Struct_1) -> i32 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -336f);
    let var_0 = Struct_1(min(_wgslsmith_mult_vec4_u32(arg_0.a, abs(global3.a)), func_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(5743u, 6719u, 4294967295u), vec3<u32>(8948u, global3.a.x, 41956u)), vec4<bool>(false, arg_0.c, false, arg_0.c & global0.x), global3.a.x << (global3.a.x % 32u), true).a), _wgslsmith_sub_u32(global3.a.x ^ 16980u, countOneBits(arg_0.a.x << (~u_input.a.x % 32u))), false);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-486f - -871f) * _wgslsmith_f_op_f32(f32(-1f) * -783f)), _wgslsmith_f_op_f32(-237f + _wgslsmith_f_op_f32(floor(-210f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(sign(-1046f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-747f, 1740f) - -2725f))), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(f32(-1f) * -131f));
    global0 = !(!select(select(!vec3<bool>(global0.x, global3.c, true), select(vec3<bool>(arg_0.c, true, true), vec3<bool>(arg_0.c, true, global0.x), arg_0.c), select(vec3<bool>(true, global0.x, arg_0.c), vec3<bool>(true, true, var_0.c), false)), vec3<bool>(global0.x, true, any(vec3<bool>(true, false, true))), var_0.c));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-168f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(317f + var_1.x) - _wgslsmith_f_op_f32(trunc(-2558f))), _wgslsmith_f_op_f32(-var_1.x))));
    return _wgslsmith_add_i32(firstTrailingBit(i32(-1i) * -u_input.c.x), global2.x);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_f32(-2756f * _wgslsmith_f_op_f32(-1910f * _wgslsmith_f_op_f32(trunc(-809f))));
    let var_0 = u_input.c.x;
    global1 = -243f;
    var var_1 = func_1(max(arg_0.a.yyx, global3.a.zwz) | arg_0.a.wwz, !select(vec4<bool>(arg_2.x != arg_2.x, select(true, arg_3.c, false), any(vec4<bool>(global0.x, true, arg_0.c, false)), global3.c), !(!vec4<bool>(true, arg_0.c, true, true)), vec4<bool>(all(global0.yx), false, any(vec3<bool>(true, true, false)), arg_0.c)), 0u, all(!vec4<bool>(arg_3.c || true, global3.c, true, any(vec3<bool>(global3.c, global3.c, false)))));
    global2 = ~firstLeadingBit(u_input.c);
    return ~1u;
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(413f, -1179f, 744f))) - vec3<f32>(-716f, _wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = vec4<bool>(global0.x, global0.x, false, true);
    var var_2 = Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(~global3.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, global3.a.x), 69897u, _wgslsmith_add_u32(0u, 4294967295u)), min(countOneBits(_wgslsmith_add_vec4_u32(global3.a, arg_1)), select(firstTrailingBit(arg_1), _wgslsmith_add_vec4_u32(vec4<u32>(11145u, arg_1.x, u_input.a.x, 1u), arg_1), all(var_1.wzw)))), abs(_wgslsmith_div_u32(global3.a.x, 4294967295u)), global0.x);
    global2 = u_input.c;
    let var_3 = Struct_1(func_1(max(vec3<u32>(47687u, u_input.a.x, u_input.a.x), vec3<u32>(20890u, u_input.a.x, 0u) & vec3<u32>(arg_1.x, 72399u, u_input.a.x)) | ~(vec3<u32>(1u, 46823u, var_2.b) | vec3<u32>(17260u, 64994u, 27300u)), select(vec4<bool>(false, var_0.x <= var_0.x, var_0.x <= -386f, true), vec4<bool>(select(true, global3.c, var_2.c), var_1.x & global3.c, true, var_1.x), vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, global0.x, global0.x)), true, true, any(vec2<bool>(var_2.c, true)))), _wgslsmith_add_u32(arg_1.x, 72187u) & global3.a.x, var_1.x == global3.c).a, countOneBits(u_input.a.x), true);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~vec2<i32>(-66663i, 0i ^ _wgslsmith_add_i32(global2.x, 54436i)), vec4<u32>(global3.b, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(global3.a, global3.a), 64324u, _wgslsmith_add_u32(global3.a.x, u_input.a.x)), vec3<u32>(_wgslsmith_sub_u32(global3.a.x, global3.a.x), max(0u, u_input.a.x), abs(global3.b))), func_5(Struct_1(select(vec4<u32>(16633u, 36966u, 4294967295u, global3.a.x), vec4<u32>(global3.a.x, 81867u, u_input.a.x, global3.b), vec4<bool>(global0.x, global0.x, true, global0.x)), u_input.a.x, select(global3.c, false, global3.c)), func_4(func_1(vec3<u32>(4294967295u, 0u, 38465u), vec4<bool>(true, false, global0.x, global3.c), 1u, true)), abs(_wgslsmith_mod_vec2_u32(global3.a.xz, u_input.a)), func_1(global3.a.ywz, select(vec4<bool>(false, true, global3.c, false), vec4<bool>(false, global3.c, true, global0.x), vec4<bool>(false, true, global3.c, global0.x)), global3.a.x, true)), 33753u));
    let var_1 = _wgslsmith_mult_i32(-22648i, -11592i);
    var var_2 = var_0;
    var var_3 = !(!vec4<bool>(any(select(vec4<bool>(var_0.c, false, global0.x, false), vec4<bool>(false, var_2.c, true, true), var_0.c)), any(vec2<bool>(true, global0.x)), !any(vec3<bool>(true, var_2.c, false)), var_2.c));
    let var_4 = Struct_1(_wgslsmith_add_vec4_u32(var_0.a, ~_wgslsmith_clamp_vec4_u32(abs(global3.a), vec4<u32>(1u, u_input.a.x, 4294967295u, var_2.b), reverseBits(vec4<u32>(var_0.a.x, global3.a.x, var_0.b, global3.a.x)))), var_0.b, func_6(global2.zx, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.a.x, global3.b), global3.b), firstTrailingBit(_wgslsmith_mod_u32(var_0.b, u_input.a.x)), 9126u, func_6(abs(vec2<i32>(global2.x, var_1)), var_2.a).b)).c);
    let var_5 = global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.yzz);
}

