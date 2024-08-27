struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec3_i32(u_input.a.yxz, vec3<i32>(_wgslsmith_sub_i32(-2147483647i & u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.d.zx)) >> (u_input.e.x % 32u), u_input.d.x, ~_wgslsmith_mult_i32(2147483647i, u_input.d.x ^ -2860i)));
    var var_1 = select(u_input.a, _wgslsmith_sub_vec4_i32(u_input.d, abs(_wgslsmith_add_vec4_i32(vec4<i32>(31524i, 0i, u_input.d.x, -7185i), ~u_input.d))), (!(u_input.c > u_input.c) != select(any(vec3<bool>(false, false, false)), true, any(vec4<bool>(false, false, true, false)))) == !all(vec3<bool>(false, false, false)));
    var var_2 = Struct_2(select(u_input.e.zy, vec2<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.b, 32146u), vec4<u32>(u_input.e.x, 0u, u_input.c, u_input.b))), u_input.e.x), vec2<bool>(true, (1u >> (u_input.c % 32u)) >= 1u)), vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<i32>(-1i) * -(~(~u_input.a.xx)), Struct_1(max(u_input.e, vec3<u32>(~u_input.c, select(81036u, 54842u, true), 37162u & u_input.c)), select(any(vec2<bool>(false, false)), true, all(vec3<bool>(false, false, true))), select(~vec2<u32>(46010u, u_input.e.x), vec2<u32>(u_input.c, ~0u), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)), reverseBits(~(u_input.e.x & 4294967295u)), u_input.d));
    var_1 = u_input.d;
    var_2 = Struct_2(~vec2<u32>(select(abs(u_input.e.x), var_2.a.x | u_input.c, true), 893u), vec2<bool>(var_2.b.x, var_2.b.x), var_2.d.e.yw, var_2.d);
    return var_2.b.x | !(!(_wgslsmith_f_op_f32(step(904f, 187f)) == -688f));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = arg_1.x;
    var_0 = -(~1i);
    var_0 = 18832i;
    let var_1 = arg_0.x;
    var_0 = -abs(i32(-1i) * -2147483647i);
    return !vec2<bool>(true && arg_0.x, arg_0.x & func_3());
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: u32) -> Struct_3 {
    let var_0 = -1i;
    let var_1 = 0i;
    var var_2 = 385f;
    var var_3 = select(select(select(vec4<bool>(arg_0.x, arg_0.x, !arg_0.x, arg_1.x >= arg_1.x), select(vec4<bool>(true, arg_0.x, true, true), vec4<bool>(true, false, true, false), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), arg_0.x), vec4<bool>(!arg_0.x, arg_0.x, any(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x), true)), !arg_0.x && select(true, false, arg_0.x)), vec4<bool>(false && (arg_0.x && false), _wgslsmith_mod_u32(u_input.b, arg_3) != 73820u, false, func_2(!vec3<bool>(arg_0.x, true, true), vec2<i32>(-17358i, 19696i) | u_input.d.zz).x)), !select(!vec4<bool>(true, arg_0.x, true, true), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), !(!vec4<bool>(true, arg_0.x, false, arg_0.x))), func_3());
    var_3 = select(vec4<bool>(arg_0.x, !func_3(), func_3(), var_3.x), select(vec4<bool>(true, all(vec4<bool>(false, arg_0.x, true, arg_0.x)) == arg_0.x, false, _wgslsmith_f_op_f32(max(-801f, -615f)) >= _wgslsmith_f_op_f32(select(-1144f, 827f, false))), vec4<bool>(var_3.x, !any(vec3<bool>(var_3.x, var_3.x, true)), var_3.x, !(643f <= arg_1.x)), true), arg_0.x);
    return Struct_3(11609i, -1i | var_1, !(!arg_0), Struct_2(u_input.e.yz, !(!(!arg_0)), vec2<i32>(u_input.d.x ^ 1i, var_1), Struct_1(_wgslsmith_mult_vec3_u32(u_input.e, u_input.e) | u_input.e, true, vec2<u32>(233u, u_input.b) & vec2<u32>(arg_3, 1u), arg_3, vec4<i32>(var_0, _wgslsmith_sub_i32(-1i, var_1), var_0 << (u_input.c % 32u), -1i))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(32994u, u_input.e.x), countOneBits(arg_1.d.a.x), _wgslsmith_dot_vec3_u32(u_input.e | ~vec3<u32>(4294967295u, arg_0.d, 66790u), u_input.e)), ~vec3<u32>(u_input.e.x, _wgslsmith_add_u32(arg_1.d.a.x ^ arg_0.d, 55487u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.e.x, 1u), _wgslsmith_add_u32(0u, 70504u))));
    var_0 = arg_0.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1412f + 382f)))), 1036f));
    var_0 = countOneBits(vec3<u32>(_wgslsmith_div_u32(~(43635u >> (var_0.x % 32u)), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(~39815u, arg_0.d), vec2<u32>(abs(1u), ~50629u)), firstTrailingBit(1u) >> (4294967295u % 32u)));
    var var_2 = select(vec3<bool>(false, any(vec4<bool>(true, false, any(vec3<bool>(arg_1.d.b.x, false, true)), true)), min(~arg_1.d.d.e.x, arg_1.d.d.e.x) <= _wgslsmith_mult_i32(-29632i, -u_input.a.x)), select(!select(select(vec3<bool>(false, arg_1.d.d.b, false), vec3<bool>(arg_1.c.x, arg_1.c.x, false), vec3<bool>(arg_1.d.d.b, arg_1.c.x, arg_1.c.x)), select(vec3<bool>(false, true, false), vec3<bool>(arg_1.c.x, arg_1.c.x, true), vec3<bool>(arg_0.b, true, true)), true), !vec3<bool>(false, false, 20647u < var_0.x), !(!vec3<bool>(true, arg_0.b, true))), !any(!(!vec3<bool>(arg_0.b, false, true))));
    return Struct_1(arg_1.d.d.a, func_4(vec2<bool>(true, all(select(arg_1.d.b, vec2<bool>(false, arg_0.b), arg_1.c))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), -122f), -firstLeadingBit(arg_0.e.x), u_input.b).c.x, _wgslsmith_sub_vec2_u32(reverseBits(u_input.e.yy), ~u_input.e.zx), 1u, vec4<i32>(arg_1.d.c.x, arg_1.d.c.x, u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-16330i ^ arg_0.e.x, arg_1.d.c.x), u_input.d.x)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = func_5(Struct_1(u_input.e, any(vec2<bool>(true, true)), vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.e.zx, vec2<u32>(u_input.c, 1u))), ~reverseBits(46007u)), ~4294967295u, abs(min(u_input.d, max(vec4<i32>(u_input.d.x, -2147483647i, 1i, u_input.a.x), vec4<i32>(9074i, -1i, u_input.d.x, -1i))))), func_4(func_2(vec3<bool>(true, u_input.d.x <= u_input.a.x, true), -u_input.a.zx ^ (u_input.a.zw ^ vec2<i32>(-31098i, -1i))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(847f - -439f)), arg_0.x, 1000f), u_input.d.x, 2924u));
    var_0 = func_4(func_2(vec3<bool>(_wgslsmith_f_op_f32(step(2647f, 1000f)) >= _wgslsmith_f_op_f32(arg_0.x + arg_0.x), (var_0.a.x | 58856u) == ~37695u, var_0.b), vec2<i32>(7973i, -191i)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 414f, 145f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 782f) * 191f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - 1008f))), -1857f))), 13783i, select(~14130u, var_0.c.x, false)).d.d;
    var var_1 = vec3<bool>(true, any(vec4<bool>(_wgslsmith_div_f32(-1819f, 1000f) != arg_0.x, var_0.b, true, true)), !((var_0.c.x <= 1u) != false));
    var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(func_5(func_4(var_1.zz, vec3<f32>(-316f, -1000f, -217f), -20883i, u_input.c).d.d, func_4(vec2<bool>(false, var_1.x), vec3<f32>(-110f, arg_0.x, -1357f), u_input.d.x, 4294967295u)).c.x, u_input.b), 47595u, func_4(select(func_2(vec3<bool>(false, false, var_1.x), u_input.d.wz), !var_1.yz, select(vec2<bool>(true, var_0.b), vec2<bool>(false, var_1.x), true)), vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 1619f)), 2147483647i, min(79725u, 0u)).d.d.c.x), var_0.b && (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1172f))) > _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - -986f), any(vec3<bool>(var_0.b, true, var_1.x))))), ~select(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(18100u, 16721u), u_input.e.zz), _wgslsmith_div_vec2_u32(u_input.e.zx, u_input.e.xz)), select(~vec2<u32>(1u, 1u), vec2<u32>(66588u, u_input.c) | vec2<u32>(u_input.c, 17970u), func_4(var_1.zy, vec3<f32>(arg_0.x, -1318f, arg_0.x), -1i, u_input.c).c), var_1.yz), reverseBits(_wgslsmith_sub_u32(~u_input.e.x, firstLeadingBit(reverseBits(6971u)))), -(reverseBits(var_0.e) ^ var_0.e));
    var_0 = func_5(func_5(Struct_1(vec3<u32>(4294967295u, u_input.e.x, 61540u) | countOneBits(u_input.e), var_1.x, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.b, u_input.b), vec4<u32>(76152u, u_input.e.x, 4294967295u, 1u)), u_input.e.x), ~var_0.d, firstLeadingBit(~u_input.d)), func_4(!func_2(vec3<bool>(var_0.b, false, var_1.x), vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1747f, 1399f))), _wgslsmith_mult_i32(u_input.d.x << (u_input.e.x % 32u), var_0.e.x), ~_wgslsmith_dot_vec3_u32(var_0.a, u_input.e))), Struct_3(-u_input.a.x, _wgslsmith_add_i32(u_input.d.x, 2147483647i), var_1.yx, Struct_2(_wgslsmith_mod_vec2_u32(u_input.e.xz, u_input.e.xx) << (vec2<u32>(var_0.d, var_0.a.x) % vec2<u32>(32u)), vec2<bool>(func_2(vec3<bool>(var_0.b, var_0.b, false), vec2<i32>(var_0.e.x, -1i)).x, var_1.x), vec2<i32>(countOneBits(0i), countOneBits(var_0.e.x)), func_4(vec2<bool>(var_1.x, true), vec3<f32>(-1310f, 1656f, 592f), -26038i ^ u_input.d.x, var_0.c.x).d.d)));
    return func_4(vec2<bool>(!any(select(vec4<bool>(var_1.x, true, false, var_0.b), vec4<bool>(var_0.b, false, var_1.x, var_0.b), vec4<bool>(var_1.x, var_0.b, var_1.x, true))), any(func_4(vec2<bool>(var_1.x, true), vec3<f32>(arg_0.x, arg_0.x, -2988f), 1685i, 0u).c) && any(vec4<bool>(var_0.b, var_0.b, var_0.b, var_1.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 126f, arg_0.x))) * vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(2819f - -451f))))), _wgslsmith_mult_i32(-2147483647i, 1i), ~var_0.c.x);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = any(select(!select(vec4<bool>(arg_0.c.x, false, arg_1.c.x, false), vec4<bool>(arg_1.c.x, true, false, arg_0.c.x), false), vec4<bool>(true, true, arg_1.d.b.x, !arg_1.c.x), select(!vec4<bool>(false, false, arg_1.d.b.x, false), vec4<bool>(true, true, true, false), !vec4<bool>(false, arg_0.c.x, false, true)))) || arg_0.c.x;
    var var_1 = firstTrailingBit(firstLeadingBit(func_4(select(arg_0.d.b, !arg_0.d.b, func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(626f, 860f, -149f)))), firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, 50113i)), arg_1.d.a.x).d.d.a.yz));
    let var_2 = arg_1.d.d;
    let var_3 = _wgslsmith_mod_u32(0u, 1u);
    var_1 = var_2.a.yy;
    return func_4(!arg_1.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1272f), 1339f, -813f), func_4(arg_0.d.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1175f, -2079f, -1130f) + vec3<f32>(-403f, -303f, 908f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1372f, -504f, -2242f) - vec3<f32>(1000f, 248f, -622f))) + vec3<f32>(-557f, _wgslsmith_f_op_f32(step(966f, -127f)), _wgslsmith_f_op_f32(f32(-1f) * -1663f))), arg_0.a, 4294967295u).a, arg_0.d.a.x).d.d;
}

fn func_7(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    let var_0 = vec4<u32>(func_5(Struct_1(~_wgslsmith_mult_vec3_u32(arg_0.a, vec3<u32>(1u, 31788u, arg_0.c.x)), (3679u << (u_input.e.x % 32u)) >= reverseBits(0u), u_input.e.yx, firstTrailingBit(u_input.e.x), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -47670i, arg_0.e.x, -5510i), arg_0.e), vec4<i32>(1i, -45356i, 5784i, u_input.a.x) & vec4<i32>(-13450i, u_input.d.x, -41332i, -2147483647i))), func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(601f, 127f, -131f))), 5948i, func_6(Struct_3(arg_0.e.x, 1i, vec2<bool>(true, true), Struct_2(u_input.e.xx, vec2<bool>(arg_0.b, arg_0.b), u_input.a.wz, Struct_1(u_input.e, false, arg_0.c, arg_0.a.x, vec4<i32>(arg_0.e.x, u_input.d.x, arg_0.e.x, 42151i)))), Struct_3(1i, u_input.a.x, vec2<bool>(false, true), Struct_2(arg_0.c, vec2<bool>(arg_1, true), vec2<i32>(-2147483647i, u_input.a.x), Struct_1(arg_0.a, arg_0.b, u_input.e.xz, 29313u, vec4<i32>(arg_0.e.x, 2147483647i, -47147i, arg_0.e.x)))), func_4(vec2<bool>(false, arg_0.b), vec3<f32>(2508f, 652f, -194f), 19832i, 54343u).a).a.x)).c.x, 1u, _wgslsmith_mod_u32(select(func_5(Struct_1(arg_0.a, arg_1, u_input.e.zx, 1u, u_input.a), Struct_3(1i, arg_0.e.x, vec2<bool>(arg_0.b, true), Struct_2(u_input.e.zy, vec2<bool>(false, true), vec2<i32>(arg_0.e.x, 0i), Struct_1(arg_0.a, arg_1, arg_0.a.yy, 100895u, arg_0.e)))).c.x, reverseBits(u_input.e.x), func_2(vec3<bool>(arg_0.b, arg_1, arg_1), -vec2<i32>(6261i, arg_0.e.x)).x), ~u_input.c), _wgslsmith_dot_vec3_u32(countOneBits(~min(arg_0.a, u_input.e)), u_input.e));
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1680f, 1658f), vec2<f32>(-1071f, 628f)))))))).d;
    var var_2 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1103f, -317f), vec2<f32>(-2357f, -760f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -635f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_2 = func_4(!var_1.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1519f, 465f, -392f), vec3<f32>(1367f, -728f, -409f))), vec3<f32>(561f, 236f, -902f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -717f, _wgslsmith_f_op_f32(1398f + -242f))))), -1i, var_1.a.x);
    let var_3 = vec2<i32>(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 820f))))))).a, ~_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_1.c.x, arg_0.e.x, 3580i), u_input.a), func_1(vec2<f32>(647f, -766f)).b)));
    return vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1547f)))), 390f, var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(664f, -995f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1027f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(987f, 526f, true))))) * -668f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_7(func_6(func_1(vec2<f32>(-944f, 733f)), func_4(vec2<bool>(false, true), vec3<f32>(-1000f, -930f, 1095f), 45908i, 0u), _wgslsmith_mult_i32(u_input.d.x, 2147483647i)), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(660f, -1822f, 2567f) + vec3<f32>(786f, -478f, 1271f)), vec3<f32>(947f, -845f, -1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1634f - 639f), _wgslsmith_f_op_f32(-812f - -1344f), -1688f))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(func_6(Struct_3(u_input.d.x, 3970i, vec2<bool>(true, true), Struct_2(vec2<u32>(u_input.e.x, u_input.e.x), vec2<bool>(false, false), u_input.a.xz, Struct_1(u_input.e, true, vec2<u32>(u_input.c, u_input.b), 1u, u_input.a))), func_4(vec2<bool>(true, true), vec3<f32>(823f, var_0.x, -516f), 5195i, u_input.e.x), -u_input.d.x), true))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1515f, 1538f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-1443f, -670f), _wgslsmith_f_op_f32(-140f * var_0.x), _wgslsmith_f_op_f32(-1000f + -227f)))), u_input.e.x < u_input.e.x)));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e, max(u_input.e, firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), u_input.e)))), _wgslsmith_add_u32(func_5(Struct_1(vec3<u32>(4294967295u, 1u, u_input.b), all(vec2<bool>(false, true)), u_input.e.yy, ~u_input.b, vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, 0i)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-296f, 557f) * vec2<f32>(var_0.x, var_0.x)))).c.x, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.yy)))).d.a.x));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_7(Struct_1(u_input.e, false, vec2<u32>(var_1, 51677u), 43348u, u_input.d), func_6(Struct_3(u_input.d.x, 24662i, vec2<bool>(true, false), Struct_2(vec2<u32>(u_input.c, u_input.e.x), vec2<bool>(false, false), u_input.a.ww, Struct_1(u_input.e, true, u_input.e.xz, var_1, vec4<i32>(u_input.a.x, -1i, u_input.d.x, u_input.a.x)))), Struct_3(0i, u_input.d.x, vec2<bool>(true, false), Struct_2(u_input.e.xx, vec2<bool>(true, true), u_input.d.yy, Struct_1(u_input.e, false, u_input.e.zy, u_input.b, vec4<i32>(u_input.a.x, -10351i, u_input.a.x, u_input.a.x)))), -u_input.a.x).b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, 809f, 470f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -306f, var_0.x))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-2338f - _wgslsmith_f_op_f32(var_0.x + 863f)), 340f)));
    let var_2 = Struct_1(func_5(func_6(Struct_3(~u_input.a.x, u_input.a.x & -83465i, vec2<bool>(true, true), Struct_2(vec2<u32>(var_1, 23720u), vec2<bool>(true, true), u_input.d.wz, Struct_1(vec3<u32>(u_input.c, u_input.b, var_1), false, vec2<u32>(u_input.c, 1u), u_input.e.x, vec4<i32>(-6045i, 2147483647i, u_input.a.x, 0i)))), func_1(_wgslsmith_f_op_vec2_f32(-var_0.zx)), _wgslsmith_div_i32(u_input.d.x, _wgslsmith_add_i32(0i, u_input.a.x))), Struct_3(-38971i, -52747i, vec2<bool>(true, true), Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(26736u, u_input.c), u_input.e.zz), vec2<bool>(false, false), -u_input.d.ww, Struct_1(vec3<u32>(25624u, 0u, 0u), true, u_input.e.yy, 49767u, vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.a.x))))).a, false, ~(func_5(func_1(var_0.zx).d.d, func_1(vec2<f32>(421f, var_0.x))).a.xy << (max(abs(u_input.e.xy), u_input.e.zx) % vec2<u32>(32u))), 53712u, ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a >> (vec4<u32>(65u, 4294967295u, var_1, u_input.e.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.d.x, -77734i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(9564i, 2147483647i, -2147483647i, 35655i), u_input.a), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a) ^ ~u_input.a));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1637f - -1127f))), 683f, 606f))));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(-(vec2<i32>(-16372i, 0i) << (vec2<u32>(var_2.a.x, var_1) % vec2<u32>(32u))), select(_wgslsmith_clamp_vec2_i32(u_input.d.zx, vec2<i32>(u_input.d.x, 1i), vec2<i32>(-27614i, var_2.e.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.zy), func_2(vec3<bool>(false, true, true), vec2<i32>(-34791i, -1i)))), abs(var_1), _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(~var_2.c.x), select(~var_1, var_1, var_2.b), (15797u << (var_1 % 32u)) >> (u_input.b % 32u)), ~abs(_wgslsmith_add_vec3_u32(u_input.e, var_2.a))));
}

