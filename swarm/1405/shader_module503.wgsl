struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1760f, -559f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 660f))) - arg_0));
    return Struct_5(!vec3<bool>(!(u_input.a.x == u_input.a.x), all(vec4<bool>(false, false, true, true)), true), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(-1077f, _wgslsmith_f_op_f32(arg_0.x - -772f)), -638f))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5, arg_3: Struct_5) -> Struct_5 {
    var var_0 = Struct_5(vec3<bool>(true, false, arg_3.a.x), _wgslsmith_f_op_vec3_f32(-arg_2.b));
    var_0 = arg_2;
    var_0 = func_2(arg_2.b);
    let var_1 = arg_0.b;
    var_0 = Struct_5(vec3<bool>(true, arg_3.a.x, !var_0.a.x), vec3<f32>(-1000f, -880f, 1296f));
    return Struct_5(arg_3.a, vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1109f, arg_3.b.x) - arg_3.b.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1263f)), 2921f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1309f)))));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: vec3<bool>) -> vec3<f32> {
    var var_0 = arg_1.b.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x), _wgslsmith_f_op_f32(-970f + -559f))))))), _wgslsmith_f_op_f32(abs(arg_1.b.x)));
    var var_2 = _wgslsmith_f_op_f32(1010f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 663f))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + var_1) - var_1);
    var var_3 = all(vec3<bool>(true, true, true));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(860f, -776f, arg_1.b.x));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_3(arg_0.a.x, vec3<i32>(_wgslsmith_add_i32(-u_input.c, -1i), 42511i, ~_wgslsmith_mod_i32(2147483647i, u_input.c)) >> (u_input.a.yww % vec3<u32>(32u)), firstTrailingBit(~7852i));
    var_0 = Struct_3(arg_1, ((~vec3<i32>(1i, u_input.c, 47016i) << (u_input.a.yzx % vec3<u32>(32u))) << (u_input.a.wzw % vec3<u32>(32u))) >> (reverseBits(vec3<u32>(select(11184u, u_input.d.x, arg_2.x), 0u, abs(u_input.b))) % vec3<u32>(32u)), -49376i);
    var_0 = Struct_3(-1i < var_0.b.x, min(vec3<i32>(1i, 1i, -2147483647i) >> (u_input.a.yzx % vec3<u32>(32u)), var_0.b), -(var_0.c ^ (var_0.c | max(0i, 1i))));
    let var_1 = func_2(func_1(Struct_3(-1i != u_input.c, _wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, var_0.c, 9742i), abs(vec3<i32>(u_input.c, u_input.c, 2147483647i)), var_0.b ^ vec3<i32>(u_input.c, var_0.c, u_input.c)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, 1i, -23228i), _wgslsmith_mod_i32(var_0.b.x, 0i), ~(-1i))), -1537f, arg_0, func_2(_wgslsmith_f_op_vec3_f32(min(arg_3.zxy, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) * arg_0.b))))).b);
    var var_2 = Struct_4(!vec4<bool>(false, all(vec4<bool>(true, false, var_1.a.x, arg_1)), u_input.d.x >= 28281u, func_2(arg_0.b).a.x), Struct_1(select(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.b, u_input.d.x), u_input.a)), vec4<u32>(69715u, min(u_input.d.x, 21833u), ~21121u, u_input.a.x), vec4<bool>(func_2(vec3<f32>(-395f, 210f, 498f)).a.x, true, arg_1, 152f <= arg_3.x))), Struct_2(arg_0.b, Struct_1(vec4<u32>(firstTrailingBit(183u), ~0u, max(u_input.a.x, u_input.b), ~u_input.d.x)), var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x), var_0.b.x | reverseBits(1237i));
    return Struct_3(any(vec3<bool>(select(any(var_2.a), !arg_1, !var_2.a.x), true, false)), var_0.b >> (~vec3<u32>(~0u, _wgslsmith_sub_u32(4294967295u, u_input.d.x), ~u_input.b) % vec3<u32>(32u)), firstLeadingBit(0i));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_5 {
    var var_0 = vec2<bool>(true, true);
    var_0 = select(!func_2(func_1(Struct_3(false, arg_2.b, arg_2.b.x), 386f, func_1(Struct_3(false, vec3<i32>(arg_0, -48988i, -26686i), arg_0), -1568f, Struct_5(vec3<bool>(false, arg_2.a, arg_1.x), vec3<f32>(-907f, 989f, -913f)), Struct_5(vec3<bool>(arg_2.a, arg_2.a, var_0.x), vec3<f32>(621f, -387f, 304f))), func_1(Struct_3(true, vec3<i32>(44603i, arg_2.c, -40160i), 6915i), 2363f, Struct_5(vec3<bool>(arg_1.x, arg_1.x, false), vec3<f32>(-298f, 523f, 1000f)), Struct_5(vec3<bool>(arg_1.x, true, true), vec3<f32>(-680f, 468f, 424f)))).b).a.zx, vec2<bool>(any(!arg_1.zx) == !(arg_0 == arg_0), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-979f, -854f, -407f), vec3<f32>(385f, -938f, 1051f))).a.x), true);
    var_0 = vec2<bool>(false, false);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))))), Struct_1(vec4<u32>(u_input.d.x, 1u ^ _wgslsmith_dot_vec3_u32(u_input.a.wzx, vec3<u32>(1u, 0u, u_input.a.x)), ~firstLeadingBit(23051u), select(reverseBits(28627u), 19001u, true))), 474f);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.a.yy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-222f, var_1.c)) * _wgslsmith_f_op_vec2_f32(round(var_1.a.zx))), all(select(arg_1.yx, arg_1.yy, vec2<bool>(arg_1.x, arg_2.a)))))) * vec2<f32>(-385f, 715f));
    return func_2(vec3<f32>(var_2.x, 892f, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(3966i, 1i);
    var var_1 = func_5(select(_wgslsmith_mod_i32(~(-24438i), -4559i), ~(~(-1i) & _wgslsmith_clamp_i32(var_0.x, -10527i, var_0.x)), select(true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), true)), !vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), true, true, false), func_4(Struct_5(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(func_3(firstLeadingBit(u_input.b), func_1(Struct_3(true, vec3<i32>(2147483647i, var_0.x, var_0.x), -1i), 815f, Struct_5(vec3<bool>(false, false, false), vec3<f32>(1000f, 1188f, 900f)), Struct_5(vec3<bool>(false, true, true), vec3<f32>(1370f, 233f, 816f))), vec3<bool>(true, true, true)))), true, vec2<bool>(all(vec2<bool>(true, true)), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), 899f, -178f, _wgslsmith_div_f32(-536f, 681f)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, 773f, -535f, -830f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1155f, 397f, 1156f), vec4<f32>(-1730f, -352f, 330f, 734f)))))));
    var_1 = func_1(Struct_3(func_1(func_4(func_1(Struct_3(true, vec3<i32>(1i, var_0.x, -23450i), u_input.c), var_1.b.x, Struct_5(vec3<bool>(false, true, var_1.a.x), var_1.b), Struct_5(var_1.a, vec3<f32>(-314f, -2031f, var_1.b.x))), true, func_1(Struct_3(false, vec3<i32>(u_input.c, u_input.c, 0i), 1i), 734f, Struct_5(vec3<bool>(true, var_1.a.x, true), vec3<f32>(1394f, var_1.b.x, var_1.b.x)), Struct_5(var_1.a, var_1.b)).a.xz, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 1648f, var_1.b.x, var_1.b.x) + vec4<f32>(244f, -618f, var_1.b.x, -1420f))), 1626f, func_2(vec3<f32>(var_1.b.x, 510f, -1119f)), Struct_5(vec3<bool>(false, var_1.a.x, false), var_1.b)).a.x, firstTrailingBit(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_0.x, u_input.c, -1i)), vec3<i32>(var_0.x, 6153i, 1i))), var_0.x), 2251f, func_1(Struct_3(~0u < _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(31922u, u_input.d.x, 88296u, u_input.d.x)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(-19311i, u_input.c, u_input.c)), -vec3<i32>(u_input.c, var_0.x, var_0.x)), select(~u_input.c, firstLeadingBit(-43957i), all(vec2<bool>(var_1.a.x, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -352f), 555f)), Struct_5(vec3<bool>(u_input.a.x == u_input.d.x, all(vec4<bool>(false, false, var_1.a.x, false)), true), _wgslsmith_f_op_vec3_f32(-var_1.b)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-592f, 159f, var_1.b.x)))), func_2(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(920f + -809f))), var_1.b.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1066f, 1085f, -1032f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, 335f, var_1.b.x, -872f))))))));
    var_1 = func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_2.yxw, var_2.zyx), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -623f, _wgslsmith_f_op_f32(var_2.x * var_1.b.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1682f, var_1.b.x, var_2.x) - vec3<f32>(var_1.b.x, 1178f, var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -24205i, var_1.b.x, func_1(Struct_3(true, _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(14805i, var_0.x, 0i)), u_input.c), var_1.b.x, func_5(_wgslsmith_mult_i32(var_0.x, ~(-14354i)), !vec4<bool>(false, var_1.a.x, var_1.a.x, true), Struct_3(var_1.a.x, select(vec3<i32>(var_0.x, -3825i, var_0.x), vec3<i32>(u_input.c, u_input.c, -1i), true), _wgslsmith_dot_vec2_i32(var_0, var_0))), func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.x, var_2.x)))))).b.yx);
}

