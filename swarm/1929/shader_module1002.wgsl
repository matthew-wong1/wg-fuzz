struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_1(u_input.a < ~max(1u, ~27816u), u_input.e.x);
    var var_1 = !(!(!arg_1));
    let var_2 = vec2<i32>(_wgslsmith_div_i32(var_0.b, 0i), -countOneBits(-_wgslsmith_add_i32(var_0.b, u_input.e.x)));
    let var_3 = Struct_3(1i);
    var var_4 = Struct_3(-firstTrailingBit(_wgslsmith_clamp_i32(~u_input.e.x, var_0.b, var_2.x)));
    return countOneBits(~(~1u << (((22998u | u_input.a) << (firstTrailingBit(43334u) % 32u)) % 32u)));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = 4294967295u < (14003u | arg_1.x);
    global0 = vec3<u32>(_wgslsmith_div_u32(~arg_0.b.c.x, max(_wgslsmith_mult_u32(arg_1.x, arg_1.x >> (0u % 32u)), max(4294967295u, 44010u))), func_3(select(!vec3<bool>(arg_0.b.a.a, var_0, false), vec3<bool>(!var_0, all(vec4<bool>(false, true, false, false)), true), false), vec3<bool>(all(!vec3<bool>(true, arg_0.c, false)), all(select(vec2<bool>(false, arg_0.b.a.a), vec2<bool>(arg_0.b.a.a, var_0), arg_0.b.a.a)), var_0), !vec2<bool>(true, var_0)), _wgslsmith_sub_u32(arg_0.b.c.x, 4294967295u));
    global0 = select(reverseBits(u_input.b), vec3<u32>(u_input.a, ~(~69354u), ~(~global0.x) | reverseBits(abs(u_input.b.x))), select(!vec3<bool>(u_input.d.x >= arg_0.b.b.x, any(vec4<bool>(false, true, var_0, true)), var_0), vec3<bool>(arg_2 > _wgslsmith_f_op_f32(f32(-1f) * -208f), !arg_0.b.a.a, !var_0), !vec3<bool>(arg_0.b.a.a, !arg_0.c, true)));
    var var_1 = arg_0.b.a;
    let var_2 = arg_0.b.a;
    return ~_wgslsmith_clamp_u32(0u, u_input.a, u_input.c);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = arg_2.x;
    global0 = vec3<u32>(_wgslsmith_mult_u32(countOneBits(0u), ~9851u), firstTrailingBit(_wgslsmith_add_u32(arg_0, func_2(Struct_5(1295f, Struct_2(Struct_1(var_0, u_input.e.x), u_input.d.zx, vec2<u32>(arg_0, 4294967295u)), true), ~vec2<u32>(38201u, 17417u), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 98009i, u_input.e.x, -739i), vec4<i32>(-18607i, u_input.d.x, u_input.d.x, u_input.e.x))))), arg_0);
    global0 = vec3<u32>(arg_0, min(0u, 1u ^ firstLeadingBit(global0.x)), ~arg_0) | vec3<u32>(81010u, global0.x, countOneBits((103166u ^ global0.x) ^ 11595u));
    var var_1 = vec4<bool>(false, any(!select(!vec4<bool>(arg_2.x, true, var_0, var_0), vec4<bool>(true, var_0, false, true), true)), any(select(!select(vec2<bool>(false, var_0), arg_2.xy, true), select(select(arg_2.yy, vec2<bool>(arg_2.x, var_0), arg_2.x), arg_2.xx, select(arg_2.zy, vec2<bool>(var_0, var_0), var_0)), arg_2.zy)), any(!(!select(arg_2.xz, arg_2.yz, vec2<bool>(true, var_0)))));
    global0 = ~u_input.b;
    return Struct_4(select(!vec2<bool>(var_1.x, any(arg_2)), var_1.yz, any(vec3<bool>(!var_1.x, arg_2.x & var_0, true))), Struct_1(false, u_input.d.x), Struct_1(any(!select(vec4<bool>(var_1.x, var_0, false, var_1.x), vec4<bool>(false, var_1.x, arg_2.x, arg_2.x), var_0)), ~_wgslsmith_dot_vec3_i32(select(u_input.e, u_input.d, arg_2), ~u_input.d)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    global0 = countOneBits(u_input.b);
    global0 = ~u_input.b;
    var var_0 = select(!(!select(!vec4<bool>(true, arg_0.a.x, true, true), vec4<bool>(arg_0.a.x, false, arg_1.x, arg_3.b.a), arg_0.a.x)), !vec4<bool>((-7663i << (arg_2 % 32u)) > (arg_3.c.b ^ 0i), true, true, (arg_3.c.b ^ -1i) > -58771i), arg_0.c.a);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1211f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) - 1f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1581f)), _wgslsmith_f_op_f32(f32(-1f) * -1244f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(541f, 1866f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(727f)) * _wgslsmith_div_f32(2006f, -867f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(trunc(-1272f)))))), -459f)));
    let var_2 = Struct_3(u_input.d.x);
    return Struct_2(func_1(~(~arg_2), 557f, vec3<bool>(all(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, true), vec4<bool>(false, true, var_0.x, arg_3.c.a))), true, arg_1.x)).b, ~reverseBits(vec2<i32>(-1i, ~arg_3.c.b)), u_input.b.yz >> (~(~u_input.b.xx) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~u_input.b));
    var var_0 = func_4(func_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.x, global0.x), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1765f))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(false, false, false), true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false)), select(4294967295u > u_input.b.x, 4290u <= global0.x, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), false), min(u_input.b.x, abs(16799u)), Struct_4(vec2<bool>(true, true), func_1(22561u, -145f, select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))).c, func_1(~u_input.a & u_input.c, _wgslsmith_f_op_f32(sign(1f)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))).b));
    var_0 = func_4(Struct_4(func_1(func_4(Struct_4(vec2<bool>(var_0.a.a, false), var_0.a, Struct_1(true, -9599i)), select(vec3<bool>(false, var_0.a.a, true), vec3<bool>(true, var_0.a.a, false), true), ~1u, func_1(1u, -1459f, vec3<bool>(var_0.a.a, true, var_0.a.a))).c.x, _wgslsmith_div_f32(-247f, _wgslsmith_f_op_f32(-258f - 1098f)), !(!vec3<bool>(true, var_0.a.a, true))).a, Struct_1(!(!var_0.a.a), firstTrailingBit(_wgslsmith_mult_i32(var_0.a.b, 78501i))), var_0.a), !vec3<bool>(all(vec2<bool>(var_0.a.a, var_0.a.a)), any(select(vec2<bool>(false, true), vec2<bool>(var_0.a.a, true), var_0.a.a)), var_0.a.a), ~_wgslsmith_clamp_u32(3382u, 1u, 5109u), func_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-403f)))) + 1031f), vec3<bool>(true, func_3(vec3<bool>(true, true, true), vec3<bool>(var_0.a.a, false, var_0.a.a), vec2<bool>(true, var_0.a.a)) != func_4(Struct_4(vec2<bool>(var_0.a.a, true), var_0.a, Struct_1(true, var_0.a.b)), vec3<bool>(var_0.a.a, var_0.a.a, false), var_0.c.x, Struct_4(vec2<bool>(var_0.a.a, var_0.a.a), var_0.a, var_0.a)).c.x, false)));
    let var_1 = -select(vec3<i32>(-17825i, _wgslsmith_mod_i32(u_input.e.x, -1i), ~(~var_0.a.b)), u_input.e, vec3<bool>((70553i | u_input.e.x) >= -1i, true, var_0.a.a));
    var var_2 = select(var_0.a.a, !var_0.a.a, var_0.a.a);
    let var_3 = -1i;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2333f, -142f, _wgslsmith_f_op_f32(935f * -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(step(1248f, -1230f)), -988f, _wgslsmith_f_op_f32(-1425f + 1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(reverseBits(countOneBits(vec4<i32>(var_0.b.x, var_1.x, -1i, 46738i))) & vec4<i32>(~(-11940i), ~(-1i), -2147483647i, 1i)), ~firstTrailingBit(u_input.d.x), ~firstLeadingBit(~(~vec4<u32>(var_0.c.x, global0.x, 4294967295u, u_input.a))));
}

