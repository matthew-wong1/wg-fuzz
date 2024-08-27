struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: f32 = 758f;

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(46892u, 18957u, 30309u), vec3<u32>(75825u, 82365u, 0u), vec3<u32>(62512u, 0u, 4294967295u), vec3<u32>(26780u, 64141u, 1u), vec3<u32>(1u, 16094u, 82506u), vec3<u32>(83788u, 1u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 1u, 75164u), vec3<u32>(98449u, 1u, 100807u), vec3<u32>(1u, 0u, 0u), vec3<u32>(765u, 4294967295u, 72792u), vec3<u32>(22566u, 23213u, 1u), vec3<u32>(0u, 24883u, 57655u), vec3<u32>(1u, 0u, 1u), vec3<u32>(73521u, 4294967295u, 0u), vec3<u32>(0u, 3354u, 4294967295u), vec3<u32>(90254u, 12158u, 4294967295u), vec3<u32>(26333u, 0u, 0u), vec3<u32>(4294967295u, 0u, 54964u), vec3<u32>(2080u, 0u, 22554u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(32337u, 33008u, 45056u), vec3<u32>(33364u, 1u, 4294967295u), vec3<u32>(1u, 87268u, 10362u), vec3<u32>(4294967295u, 4294967295u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>) -> i32 {
    global1 = array<vec3<u32>, 25>();
    let var_0 = Struct_3(1i, !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)))));
    let var_1 = !(!vec4<bool>(true && (var_0.a > -2147483647i), arg_1.x < _wgslsmith_f_op_f32(f32(-1f) * -338f), var_0.b.x, (var_0.a < 0i) || true));
    let var_2 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(~(~var_0.a) & abs(_wgslsmith_mult_i32(-17092i, var_0.a)), ~_wgslsmith_sub_i32(5457i, var_0.a)));
    global1 = array<vec3<u32>, 25>();
    return _wgslsmith_mult_i32(1i, max(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(2147483647i, var_0.a)), ~0i), var_0.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = arg_1.xz;
    let var_1 = ~reverseBits(~countOneBits(0u));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xz) + arg_1.zz) * arg_1.zy);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1390f, 1720f, var_0.x, arg_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1881f, arg_1.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, -740f, arg_1.x, var_0.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -2082f) - vec4<f32>(1503f, -1453f, -1031f, 1792f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -753f, arg_1.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, -1000f, -995f)), vec4<f32>(var_0.x, arg_1.x, 890f, 238f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -130f, arg_1.x, -260f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, var_0.x, var_0.x, -204f)))))), vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-510f, arg_1.x))) == arg_1.x, all(vec3<bool>(arg_3 && arg_3, any(vec2<bool>(arg_3, arg_3)), all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - arg_1.x) + _wgslsmith_f_op_f32(var_0.x - -1648f)) >= var_0.x, true)));
    let var_3 = Struct_1(i32(-1i) * -_wgslsmith_sub_i32(-49254i, _wgslsmith_sub_i32(-23871i, arg_2)), (0i ^ select(9833i, func_3(vec2<u32>(u_input.a, 76484u), var_2.zxw), false)) & -(~51401i), false & arg_3);
    return Struct_2(Struct_1(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(2084i, var_3.a), _wgslsmith_mod_i32(arg_2, arg_0.x)), -arg_2, (select(-1i, -23007i, arg_3) == abs(arg_2)) && var_3.c), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), -774f))), select(!select(select(vec3<bool>(arg_3, var_3.c, var_3.c), vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, arg_3, false)), select(vec3<bool>(var_3.c, true, arg_3), vec3<bool>(arg_3, false, false), vec3<bool>(var_3.c, arg_3, false)), select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, var_3.c, arg_3), vec3<bool>(false, var_3.c, true))), vec3<bool>(var_3.c, !var_3.c, var_3.c), !(!vec3<bool>(var_3.c, true, false))), vec3<bool>(arg_3, var_3.c, false));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_4(!(max(arg_2.x & arg_2.x, max(4294967295u, 41204u)) != (~arg_2.x & ~arg_2.x)), arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b + 1f))), arg_0);
    var var_1 = arg_2.x;
    let var_2 = arg_0.d.x;
    let var_3 = max(arg_2.x, _wgslsmith_dot_vec4_u32(arg_2, arg_2));
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1, 773f)))), _wgslsmith_div_f32(-323f, arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -164f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1474f, arg_1), vec2<f32>(656f, arg_1)), vec2<f32>(-1119f, 211f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 895f), vec2<f32>(arg_1, arg_1))))))));
    global1 = array<vec3<u32>, 25>();
    let var_1 = min(vec2<u32>(firstTrailingBit(u_input.a), ~41067u), ~vec2<u32>(~u_input.a, ~u_input.a)) << (min(vec2<u32>(~max(u_input.a, 0u), _wgslsmith_dot_vec3_u32(countOneBits(global1[_wgslsmith_index_u32(u_input.a, 25u)]), min(global1[_wgslsmith_index_u32(u_input.a, 25u)], vec3<u32>(4294967295u, u_input.a, 21491u)))), ~(vec2<u32>(40766u, u_input.a) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_f32(floor(arg_1));
    let var_2 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + -749f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, -362f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-466f, arg_1, arg_1) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -349f, 936f)))))), min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, 10958i, arg_0.a), vec3<i32>(-41632i, arg_0.a, arg_0.a)), 13815i) != arg_0.b));
}

fn func_6(arg_0: u32, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(-46168i, 1i);
    var var_1 = func_2((vec2<i32>(1i, 8475i) >> (((vec2<u32>(u_input.a, arg_0) | vec2<u32>(55375u, 54002u)) >> (reverseBits(vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u))) | firstLeadingBit(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0, 31847i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -782i), vec2<i32>(arg_3, 1i)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -648f) * _wgslsmith_f_op_f32(1720f - 2021f))), arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -486f) + _wgslsmith_f_op_f32(min(944f, arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -17516i, arg_2);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(385f, arg_1.x)), 588f)))));
    let var_2 = arg_1.x < arg_1.x;
    var var_3 = Struct_3(arg_3, select(!(!select(vec4<bool>(var_1.d.x, arg_2, false, arg_2), vec4<bool>(false, var_1.c.x, false, var_2), vec4<bool>(false, true, true, var_2))), vec4<bool>(func_4(func_2(vec2<i32>(-2147483647i, 1i), arg_1, -22319i, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(vec4<u32>(u_input.a, arg_0, u_input.a, u_input.a))).c, select(true, func_2(vec2<i32>(var_1.a.a, var_0), arg_1, 2147483647i, true).a.c, arg_2), func_4(Struct_2(var_1.a, arg_1.x, var_1.c, var_1.d), -934f, vec4<u32>(1u, u_input.a, 13010u, arg_0)).c, true), !((arg_3 ^ var_0) > max(arg_3, arg_3))));
    return Struct_2(var_1.a, -1000f, select(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, -3927i), vec2<i32>(var_0, var_1.a.a)) & _wgslsmith_mult_vec2_i32(vec2<i32>(-6090i, var_1.a.b), vec2<i32>(2147483647i, var_3.a)), arg_1, 13941i, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.a, 25u)], vec3<u32>(11107u, u_input.a, 3798u)) != 24375u).c, vec3<bool>(arg_2, var_1.a.c, var_3.b.x), !var_1.c.x), vec3<bool>(!var_1.c.x, var_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_7(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_0.b));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1025f, arg_0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b + arg_0.b))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.b) * arg_0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b + -351f), _wgslsmith_f_op_f32(-830f * _wgslsmith_f_op_f32(arg_0.b * arg_0.b)), arg_0.b != _wgslsmith_div_f32(arg_0.b, arg_0.b))) + arg_0.b));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, arg_0.a.b, 2147483647i, -2147483647i), vec4<i32>(arg_0.a.b, -2147483647i, arg_0.a.a, arg_3.b))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, 88869i, arg_3.b, 2147483647i), vec4<i32>(arg_3.a, arg_3.b, arg_3.b, -14084i)) ^ -1i, 1i)), ~arg_0.a.b, true);
    var var_2 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.c, false, arg_3.c), any(vec4<bool>(true, var_1.c, arg_2, arg_3.c))), vec4<bool>(any(arg_0.d), var_1.c, false, all(vec4<bool>(false, arg_2, true, arg_2))), func_2(vec2<i32>(var_1.b, -1i) << (arg_1.xz % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -480f, -1030f), vec3<f32>(-1035f, 1531f, 1096f), false)), -2147483647i, false && arg_0.a.c).d.x), vec4<bool>(arg_2, arg_0.a.c, func_6(64489u, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 2505f, arg_0.b) + vec3<f32>(arg_0.b, arg_0.b, arg_0.b)), func_2(vec2<i32>(-3933i, arg_3.a), vec3<f32>(arg_0.b, 526f, arg_0.b), var_1.b, false).c.x, ~19763i).c.x, arg_0.a.c), vec4<bool>(!(!arg_2), true, !arg_0.d.x, false)));
    return Struct_4(true, Struct_2(func_2(-(~vec2<i32>(-2147483647i, arg_3.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b, arg_0.b, arg_0.b))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b, arg_0.b, -1841f)))), arg_0.a.a, any(vec4<bool>(true, arg_3.c, var_1.c, var_1.c)) && true).a, _wgslsmith_f_op_f32(-func_6(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_1.x, u_input.a, arg_1.x, arg_1.x)), vec3<f32>(arg_0.b, arg_0.b, -628f), !arg_0.a.c, _wgslsmith_add_i32(8231i, arg_3.b)).b), arg_0.d, vec3<bool>(arg_0.c.x, !(!var_1.c), any(arg_0.d))), arg_0.b, func_6(arg_1.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b + 678f), _wgslsmith_f_op_f32(1442f * arg_0.b), _wgslsmith_div_f32(arg_0.b, arg_0.b)))), !arg_0.c.x, -arg_3.b));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = func_7(func_6(43068u, _wgslsmith_f_op_vec3_f32(func_5(func_4(func_2(vec2<i32>(-43149i, -2147483647i), vec3<f32>(-138f, -270f, -318f), arg_0.a, true), func_2(vec2<i32>(arg_0.a, arg_0.a), vec3<f32>(170f, -519f, -224f), -2147483647i, arg_0.b.x).b, vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(func_2(vec2<i32>(-19584i, -33882i), vec3<f32>(555f, 1000f, 1829f), 1i, false).b + -627f))), any(!vec3<bool>(false, arg_0.b.x, arg_0.b.x)) & func_2(countOneBits(vec2<i32>(44707i, -21685i)), _wgslsmith_div_vec3_f32(vec3<f32>(282f, -1654f, 384f), vec3<f32>(-670f, -1000f, -1351f)), -17615i, !arg_0.b.x).a.c, 16617i), firstTrailingBit(vec4<u32>(~max(114658u, u_input.a), u_input.a, reverseBits(firstLeadingBit(31761u)), 10978u)), true, func_6(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(1544u, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(363f, 1180f, -2183f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, 447f, 1000f)))), !arg_0.b.x == !(arg_0.a >= -1i), 0i).a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -278f));
    global1 = array<vec3<u32>, 25>();
    var var_1 = 0i;
    var var_2 = u_input.a;
    return -712f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(754f + 1000f) - 420f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-266f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_3(11510i, vec4<bool>(true, false, true, false)))), -772f)))));
    var var_1 = func_2(~(-(vec2<i32>(1i, 1i) & (vec2<i32>(2147483647i, -18751i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1406f)), -913f, -251f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(275f - -1088f), _wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(abs(116f))))), 0i, true);
    var var_2 = Struct_3(~0i, select(select(!vec4<bool>(false, true, var_1.d.x, true), select(select(vec4<bool>(var_1.d.x, true, var_1.a.c, true), vec4<bool>(false, true, var_1.a.c, false), vec4<bool>(false, true, true, var_1.a.c)), vec4<bool>(true, var_1.c.x, var_1.d.x, var_1.c.x), !vec4<bool>(true, var_1.a.c, var_1.a.c, false)), vec4<bool>(func_2(vec2<i32>(var_1.a.b, 3506i), vec3<f32>(1000f, var_1.b, var_1.b), -3840i, var_1.c.x).d.x, true, true, false)), !(!(!vec4<bool>(var_1.c.x, var_1.c.x, true, true))), !select(vec4<bool>(var_1.d.x, true, false, false), !vec4<bool>(true, true, true, var_1.a.c), false)));
    var var_3 = _wgslsmith_f_op_f32(-689f * 457f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f));
    let var_4 = ~(~(~countOneBits(vec4<u32>(u_input.a, 1u, 3453u, 4294967295u) ^ vec4<u32>(4294967295u, u_input.a, 6390u, 30773u))));
    global1 = array<vec3<u32>, 25>();
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(-vec4<i32>(var_1.a.a, var_5.a, 1i, var_2.a)), -_wgslsmith_div_i32(1i, var_2.a | (var_2.a << (19615u % 32u))));
}

