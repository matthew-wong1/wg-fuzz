struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = arg_1.a;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(round(arg_1.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(arg_1.a - -1000f))))));
    var var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.b, 66086i), select(0i, u_input.b, arg_1.b.x), arg_1.c), abs(~vec3<i32>(arg_1.c, 37687i, -8072i))) << (vec3<u32>(_wgslsmith_mult_u32(~arg_0, _wgslsmith_div_u32(min(0u, 4173u), select(arg_0, 24520u, arg_1.b.x))), 17602u, max(28862u, arg_2.x) & ~abs(arg_0)) % vec3<u32>(32u));
    var_1 = vec3<i32>(firstLeadingBit(0i), ~2147483647i, 2147483647i);
    var_1 = ~(-_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_1.x, -20815i), vec3<i32>(32165i, 37432i, 13655i)), vec3<i32>(arg_1.c, -1i, arg_1.c) & vec3<i32>(-2147483647i, var_1.x, var_1.x))) << (~arg_2.wwx % vec3<u32>(32u));
    return select(vec2<bool>(true, arg_1.b.x), arg_1.b.zy, any(vec3<bool>(all(vec3<bool>(true, true, arg_1.b.x)), arg_1.b.x, select(true, true, arg_1.b.x))) == any(vec4<bool>(false, any(arg_1.b), arg_1.b.x, select(arg_1.b.x, false, false))));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_2(abs(~(1u << (u_input.a % 32u))) >= 63596u, all(vec2<bool>(true, true)), select(vec2<bool>(~(-41906i) > ~u_input.b, true), select(!func_3(u_input.a, Struct_1(-948f, vec4<bool>(false, false, true, false), 2147483647i), vec4<u32>(31863u, u_input.a, u_input.a, 1u)), vec2<bool>(true, true), vec2<bool>(true, true)), false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(353f - -427f))), _wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-385f, 719f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-266f, -680f, -104f), vec3<f32>(-1000f, 457f, -1778f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(177f, 160f, 232f) + vec3<f32>(-179f, 310f, -1020f)), vec3<bool>(true, false, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(405f, -1000f, -1311f))))), -_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(u_input.b, 2147483647i)));
    let var_1 = var_0.a;
    var var_2 = vec4<bool>(!(!var_1), false & !var_1, var_0.c.x, true);
    var var_3 = var_0;
    var var_4 = any(var_2.zyx);
    return Struct_5(Struct_2(any(select(!var_2.xwz, select(var_2.wxx, var_2.ywx, var_2.wyz), var_2.zyx)), _wgslsmith_f_op_f32(1084f - var_3.d.x) == var_3.d.x, select(vec2<bool>(all(vec3<bool>(true, var_1, true)), true), select(!vec2<bool>(true, var_1), !var_0.c, false), !(-1400f <= var_3.d.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(-244f)), var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x * var_3.d.x)))), vec2<i32>(_wgslsmith_add_i32(2507i, var_3.e.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(49035u, 18895u, 13168u, u_input.a)) % 32u), -58278i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d.x, var_0.d.x)) - _wgslsmith_f_op_f32(-var_0.d.x)) + 444f), var_3.d.x), Struct_3(Struct_1(var_3.d.x, vec4<bool>(true, any(vec3<bool>(var_0.b, var_2.x, false)), any(var_0.c), var_3.c.x), ~(~var_3.e.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> vec3<i32> {
    let var_0 = func_2().a;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, var_0.d.x, arg_1.b.x, 1327f)))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(var_1 - var_1);
    var var_3 = Struct_4(arg_1.c.a, func_2().c.a.b.zwz, Struct_3(func_2().c.a));
    return ~select(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.c.a.c, -2147483647i, 2147483647i), vec3<i32>(var_0.e.x, u_input.b, arg_1.a.e.x), vec3<i32>(var_3.a.c, 0i, var_0.e.x))), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 7510i, var_0.e.x), -vec3<i32>(19703i, var_0.e.x, var_0.e.x))), any(!select(var_3.a.b, var_3.c.a.b, true)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = -func_4(false & arg_0.x, func_2());
    let var_1 = arg_2.x;
    var var_2 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(29581u | u_input.a, ~1u, _wgslsmith_sub_u32(57049u, u_input.a), ~4294967295u)), vec4<u32>(select(u_input.a, select(min(26843u, u_input.a), u_input.a, all(arg_0.yxw)), true), 0u, min(u_input.a << (u_input.a % 32u), u_input.a) >> (15125u % 32u), ~(u_input.a ^ (23704u & u_input.a))));
    let var_3 = -347f;
    var_2 = countOneBits(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a, 10583u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 63070u, 0u))) << (~(~select(u_input.a, 4294967295u, true)) % 32u);
    return Struct_2(select(all(select(!vec4<bool>(true, arg_0.x, false, true), arg_0, func_3(792u, Struct_1(var_3, arg_0, var_0.x), vec4<u32>(0u, 4294967295u, u_input.a, 4294967295u)).x)), false, func_3(select(u_input.a ^ 13599u, _wgslsmith_add_u32(u_input.a, u_input.a), true), func_2().c.a, ~vec4<u32>(u_input.a, 16887u, 1u, u_input.a)).x), all(arg_0) || false, func_3(4294967295u, func_2().c.a, _wgslsmith_mult_vec4_u32(vec4<u32>(0u >> (u_input.a % 32u), u_input.a, 0u, u_input.a), ~vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a))), _wgslsmith_f_op_vec3_f32(-arg_1.zzw), vec2<i32>(~(-(~4060i)), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, -30014i), -1i)));
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-348f - arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.a.d.x), func_1(vec4<bool>(true, arg_2.c.a.b.x, false, false), vec4<f32>(arg_2.b.x, -707f, arg_2.c.a.a, arg_2.b.x), vec4<f32>(-466f, arg_2.c.a.a, arg_2.a.d.x, arg_2.b.x)).d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.a.a, arg_2.b.x, arg_2.c.a.a, -221f)), false)) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-944f, 302f)), func_1(vec4<bool>(arg_2.a.b, true, false, true), vec4<f32>(713f, 446f, 1000f, -863f), vec4<f32>(arg_2.b.x, 238f, arg_2.b.x, arg_2.c.a.a)).d.x, _wgslsmith_f_op_f32(arg_2.c.a.a * arg_2.a.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_2.a.d.x, 1600f, arg_2.a.d.x) + vec4<f32>(arg_2.a.d.x, -285f, arg_2.a.d.x, arg_2.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.a.a, arg_2.b.x, 912f, -737f)))))));
    var var_1 = func_1(!arg_2.c.a.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(983f, var_0.x, var_0.x, var_0.x)))) + vec4<f32>(-985f, _wgslsmith_f_op_f32(min(-1000f, 1000f)), _wgslsmith_div_f32(354f, 1310f), arg_2.a.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + arg_2.b.x)), -1252f, 555f, -1624f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, arg_2.b.x, -447f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, 750f, -219f, -1257f))))), !arg_2.c.a.b.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(-680f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-336f)) + _wgslsmith_f_op_f32(-var_1.d.x))) + func_2().a.d.x), var_0.x, _wgslsmith_f_op_f32(-1704f - -231f));
    let var_3 = arg_2.a;
    var_1 = Struct_2(func_1(!arg_2.c.a.b, _wgslsmith_f_op_vec4_f32(-var_2), var_2).c.x, var_1.a, !select(!var_3.c, func_3(46662u, func_2().c.a, vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), any(select(arg_2.c.a.b.xzy, vec3<bool>(false, var_1.c.x, true), false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1327f, 511f, var_0.x), vec3<f32>(arg_2.c.a.a, arg_2.b.x, var_0.x), arg_2.c.a.b.zwz))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.x, var_1.d.x, -545f) + vec3<f32>(627f, var_3.d.x, var_0.x)))))), vec2<i32>(2147483647i, -arg_0));
    return u_input.a;
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> Struct_4 {
    let var_0 = Struct_4(arg_1.c.a, arg_1.b, Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f)), !vec4<bool>(false, true, arg_1.a.b.x, false), func_4(false, Struct_5(arg_2, arg_2.d.zz, arg_1.c)).x ^ 29802i)));
    var var_1 = var_0;
    var var_2 = var_0.a.c;
    let var_3 = var_0.b.x;
    var var_4 = abs(0i);
    return Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-263f * var_0.a.a))), _wgslsmith_f_op_f32(-873f * _wgslsmith_f_op_f32(f32(-1f) * -855f))), !(!func_2().c.a.b), var_0.a.c), select(vec3<bool>(all(select(var_1.a.b, arg_1.a.b, vec4<bool>(false, true, false, false))), true, true), select(var_0.b, func_2().c.a.b.wwx, vec3<bool>(var_1.c.a.b.x & false, var_0.b.x, var_0.a.b.x | false)), var_0.b), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(abs(~(~(-3711i))), select(vec2<i32>(2147483647i, -22383i | u_input.b), -(vec2<i32>(u_input.b, u_input.b) | vec2<i32>(u_input.b, -1i)), vec2<bool>(true, true)), Struct_5(func_1(vec4<bool>(false, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(834f, 910f, 460f, -1000f)), vec4<f32>(269f, 194f, -742f, 1000f)), vec2<f32>(_wgslsmith_f_op_f32(round(582f)), _wgslsmith_f_op_f32(-1000f * -1119f)), func_2().c)), Struct_4(func_2().c.a, vec3<bool>(true, true, true), Struct_3(Struct_1(func_1(vec4<bool>(true, true, false, false), vec4<f32>(482f, 1071f, -561f, 483f), vec4<f32>(167f, 248f, 123f, 1612f)).d.x, vec4<bool>(true, false, true, true), u_input.b))), func_1(vec4<bool>(true, true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), true | any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-571f, 364f, 1756f, -1282f), vec4<f32>(940f, -250f, -968f, -453f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(411f, -1614f, -142f, 890f) * vec4<f32>(1733f, 393f, 385f, 968f)) - vec4<f32>(-1002f, 408f, -2494f, 450f))), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_add_u32(abs(1u), 77653u));
    let var_1 = var_0.a.a;
    var var_2 = Struct_5(func_2().a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - var_0.a.a)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1)), var_0.c);
    let var_3 = vec2<u32>(_wgslsmith_clamp_u32(~(~(~u_input.a)), ~u_input.a, _wgslsmith_clamp_u32(5294u, 21402u, u_input.a)), u_input.a);
    let var_4 = ~(~countOneBits(u_input.a));
    var var_5 = var_3.x ^ (25680u ^ func_5(-var_0.a.c, -(vec2<i32>(u_input.b, var_2.c.a.c) >> (vec2<u32>(37020u, 4294967295u) % vec2<u32>(32u))), Struct_5(var_2.a, _wgslsmith_f_op_vec2_f32(var_2.b + var_2.b), Struct_3(var_2.c.a))));
    var var_6 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b, -1i, 0i), firstTrailingBit(vec3<i32>(i32(-1i) * -var_2.c.a.c, u_input.b, 1i)), vec3<i32>(u_input.b, 1i, u_input.b));
    var var_7 = vec4<f32>(-440f, _wgslsmith_f_op_f32(max(-1113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1572f * 858f) + -910f))), 339f, 2022f);
    var var_8 = vec2<f32>(var_0.a.a, -556f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a.c, var_2.c.a.c, -1i, func_4(var_2.a.b, Struct_5(Struct_2(false, true, var_0.b.zz, vec3<f32>(1805f, var_2.b.x, -116f), vec2<i32>(u_input.b, 23568i)), var_2.b, Struct_3(var_0.c.a))).x), -(~vec4<i32>(var_6.x, 2147483647i, -1i, 0i))), ((_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_4, var_3.x), vec3<u32>(var_3.x, 44682u, var_3.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(47564u, 61882u, 0u), vec3<u32>(42877u, 73387u, var_4))) << (~abs(vec3<u32>(u_input.a, var_3.x, 0u)) % vec3<u32>(32u))) ^ min(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_3.x, 82656u, var_3.x), vec3<u32>(4294967295u, 0u, var_3.x)), vec3<u32>(~var_3.x, u_input.a, var_4)), 27472i, vec4<f32>(func_2().c.a.a, var_1, -953f, 400f), ~_wgslsmith_sub_u32(61489u, func_5(_wgslsmith_mod_i32(var_6.x, 12132i), func_1(var_0.a.b, vec4<f32>(541f, 503f, var_8.x, var_8.x), vec4<f32>(var_0.c.a.a, 978f, 1109f, 154f)).e, Struct_5(Struct_2(false, true, var_2.a.c, vec3<f32>(197f, var_7.x, var_8.x), var_2.a.e), vec2<f32>(var_0.c.a.a, var_0.a.a), Struct_3(Struct_1(405f, vec4<bool>(var_2.a.c.x, false, true, false), var_0.a.c))))));
}

