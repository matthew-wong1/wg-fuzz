struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec4<u32> = vec4<u32>(4043u, 0u, 1u, 0u);

var<private> global2: array<vec3<i32>, 19>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_2(Struct_1(global1.x, any(select(!vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, false)), true)), true, _wgslsmith_div_f32(arg_2.x, arg_2.x), 0i), arg_1.yz, Struct_1(1u, false, true && !any(vec3<bool>(global0.x, global0.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x))), ~(u_input.b >> (~arg_0.x % 32u))), global0.x || true, vec2<bool>(global0.x, (any(vec2<bool>(global0.x, true)) & all(global0.zz)) && true));
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = vec3<f32>(var_0.c.d, var_0.a.d, _wgslsmith_f_op_f32(floor(131f)));
    global0 = select(!select(vec3<bool>(var_0.e.x, var_2.c.b, true), select(vec3<bool>(var_2.e.x, var_2.d, false), vec3<bool>(true, true, var_0.d), vec3<bool>(var_1.d, global0.x, var_0.d)), any(vec2<bool>(var_1.e.x, var_1.e.x))), !select(select(select(vec3<bool>(true, var_0.c.c, false), vec3<bool>(false, true, false), var_0.a.b), select(vec3<bool>(var_0.c.c, true, var_2.a.b), vec3<bool>(global0.x, var_0.a.c, var_2.c.b), global0.x), global0.x), vec3<bool>(!var_0.e.x, all(vec2<bool>(true, true)), var_1.c.c), var_1.c.b), vec3<bool>(true, true, true));
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~(~var_2.a.a), ~(~0u)), var_1.c.a & 164731u), min(var_1.c.a, abs(10181u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec4<u32> {
    var var_0 = ~vec4<u32>(select(49004u, ~_wgslsmith_clamp_u32(4294967295u, global1.x, u_input.d.x), true), _wgslsmith_dot_vec3_u32(u_input.c, ~(vec3<u32>(global1.x, 47823u, u_input.d.x) & u_input.c)), _wgslsmith_clamp_u32(firstTrailingBit(func_3(global1.xzy, arg_0.zxw, vec2<f32>(-417f, 371f))), 1727u, func_3(~u_input.c, global2[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(139f, 914f))))), 1u);
    var var_1 = all(select(select(select(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, false, global0.x), vec3<bool>(true, true, true)), select(vec3<bool>(true, arg_1.x, false), vec3<bool>(arg_1.x, global0.x, false), true), true), !vec3<bool>(arg_1.x, global0.x, false), false), !(!select(vec3<bool>(arg_1.x, false, true), vec3<bool>(true, false, arg_1.x), global0.x)), vec3<bool>(true, !any(vec3<bool>(arg_1.x, global0.x, global0.x)), !global0.x & (u_input.b > arg_0.x))));
    var var_2 = Struct_1(48801u, true, !(false || !arg_1.x), -151f, u_input.a << (~(~abs(global1.x)) % 32u));
    let var_3 = Struct_1(1u, (var_2.a != global1.x) & (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2.d)), _wgslsmith_f_op_f32(min(var_2.d, var_2.d)))) > -2057f), any(vec4<bool>(any(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, false, false, true), vec4<bool>(var_2.b, true, var_2.b, true))), all(vec2<bool>(false, global0.x)), !(var_2.b || var_2.b), _wgslsmith_f_op_f32(var_2.d - 1395f) != var_2.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(947f, _wgslsmith_f_op_f32(round(-384f)), var_2.d <= 915f)) - var_2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2876f, -669f) - _wgslsmith_f_op_f32(-var_2.d)) + 185f))), u_input.a);
    global0 = vec3<bool>(_wgslsmith_mod_i32(var_2.e << (_wgslsmith_dot_vec4_u32(vec4<u32>(54740u, global1.x, 1u, global1.x), vec4<u32>(18161u, 39634u, 1u, var_2.a)) % 32u), 1i) < (1i & ~u_input.a), arg_1.x, true);
    return max(vec4<u32>(_wgslsmith_clamp_u32(1u, countOneBits(1717u) << (_wgslsmith_sub_u32(1u, var_2.a) % 32u), countOneBits(9661u)), 10898u, _wgslsmith_mod_u32(var_3.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.wzy, vec3<u32>(9895u, 14682u, 64772u)), ~u_input.c.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 98766u, 0u, 0u), vec4<u32>(24084u, 264u, u_input.c.x, var_3.a)) >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.wzy), global1.xxy) % 32u)), ~firstLeadingBit(vec4<u32>(~global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 1u), vec3<u32>(23665u, 66858u, 26094u)), ~1u, ~0u)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: u32) -> vec4<u32> {
    var var_0 = ~func_2(vec4<i32>(arg_1.x, arg_1.x & 10947i, ~arg_1.x, 29421i), select(vec2<bool>(true, 55734u >= global1.x), global0.xy, global0.x));
    var var_1 = select(vec3<bool>(true || (-1i != abs(u_input.a)), true, !(!(global0.x & false))), select(vec3<bool>(global0.x, all(vec3<bool>(global0.x, false, true)) && any(vec3<bool>(global0.x, false, false)), all(select(vec2<bool>(false, global0.x), global0.xy, false))), vec3<bool>(any(vec3<bool>(global0.x, global0.x, global0.x)), !(-137f != arg_0), false), !global0.x & (global0.x && !global0.x)), !vec3<bool>(!global0.x, true, any(!vec4<bool>(false, global0.x, global0.x, global0.x))));
    global1 = abs(vec4<u32>(~(~1u), 853u >> (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2), vec2<u32>(arg_2, u_input.d.x))) % 32u), var_0.x, _wgslsmith_mod_u32(var_0.x, u_input.c.x)));
    var var_2 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(max(36561u, global1.x)), min(22131u, arg_2)), ~var_0.x, 1u), !var_1.x, var_1.x, 1487f, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, ~2147483647i, reverseBits(u_input.a) & u_input.b), _wgslsmith_add_i32(arg_1.x, -12169i)));
    var var_3 = Struct_2(Struct_1(abs(arg_2) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(86173u, u_input.d.x, 4294967295u, 0u)), vec4<u32>(0u, 1u, var_2.a, var_2.a) | vec4<u32>(26032u, 4294967295u, 0u, global1.x)) % 32u), select(var_2.b, all(vec3<bool>(var_2.b, true, false)), true), all(var_1.zz), var_2.d, -2147483647i), -(~select(vec2<i32>(var_2.e, arg_1.x), vec2<i32>(-17071i, u_input.b), select(var_1.zx, global0.zz, vec2<bool>(true, var_1.x)))), Struct_1(~(~1u), !var_1.x, select(all(!vec3<bool>(false, var_2.b, false)), (var_1.x || true) || true, any(!vec3<bool>(global0.x, false, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_0) + var_2.d)), -13860i), all(vec2<bool>(u_input.d.x <= u_input.c.x, 9876u == global1.x)), select(select(var_1.xx, select(vec2<bool>(true, global0.x), select(vec2<bool>(var_2.c, var_1.x), vec2<bool>(false, global0.x), var_2.b), select(global0.zx, global0.xy, var_2.c)), vec2<bool>(global0.x, true)), select(select(!var_1.xz, vec2<bool>(true, true), true & global0.x), global0.xz, !(!var_2.b)), vec2<bool>(!any(vec3<bool>(var_1.x, true, true)), !(-357f >= arg_0))));
    return func_2(-vec4<i32>(arg_1.x, 2147483647i, 1i, -2147483647i), var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec4_u32(select(~reverseBits(func_1(-790f, vec4<i32>(0i, 2147483647i, 2147483647i, -8450i), 42578u)), ~vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.d.x, 26192u), _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(100091u, u_input.d.x)), u_input.d.x, 4294967295u), select(!vec4<bool>(global0.x, global0.x, false, false), select(!vec4<bool>(global0.x, false, true, false), !vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x)), !vec4<bool>(global0.x, global0.x, true, global0.x))), (vec4<u32>(1u, 33518u >> (u_input.c.x % 32u), u_input.c.x, u_input.c.x) ^ vec4<u32>(global1.x, u_input.c.x, 0u, func_1(104f, vec4<i32>(71516i, u_input.a, u_input.b, 23250i), 0u).x)) & abs(~vec4<u32>(u_input.d.x, 459u, 40672u, global1.x) & select(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, global1.x), vec4<u32>(0u, u_input.c.x, global1.x, 3676u), vec4<bool>(false, false, global0.x, true))));
    var var_0 = select(vec3<bool>(true, all(vec2<bool>(global0.x, any(vec4<bool>(global0.x, true, global0.x, global0.x)))), all(vec2<bool>(global0.x, false))), vec3<bool>(true, !(!any(global0.yz)), select(!global0.x, global0.x, true) & true), !(!vec3<bool>(false, true, all(global0.yx))));
    global2 = array<vec3<i32>, 19>();
    var var_1 = Struct_1(~(~33741u), all(!(!(!vec4<bool>(true, var_0.x, false, var_0.x)))), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1798f)) - 621f))), u_input.a & _wgslsmith_mult_i32(1i, u_input.b));
    var var_2 = reverseBits(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(~func_1(var_1.d, vec4<i32>(0i, 13169i, 13413i, 1i), 1u).x, ~(1488u >> (var_1.a % 32u)))));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 1i), abs(var_1.e));
    let var_4 = Struct_1(~_wgslsmith_mult_u32(global1.x, ~4294967295u), var_1.b, ((~global1.x >= global1.x) & true) & var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1256f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_1.d)))), -u_input.a);
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.d, -466f, var_4.c)), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(max(var_1.d, var_1.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(386f, var_4.d, var_4.d) - vec3<f32>(210f, var_1.d, -890f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, -698f, 1000f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-539f, var_4.d, -917f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(reverseBits(vec4<i32>(22638i, -2147483647i, 60736i, -2147483647i)) << (firstTrailingBit(vec4<u32>(3697u, 1u, u_input.d.x, 0u)) % vec4<u32>(32u)))), abs(var_4.e));
}

