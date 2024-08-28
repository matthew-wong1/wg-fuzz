struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = u_input.d;
    var var_1 = global0.x;
    var_0 = arg_0.a.zy;
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.xwx, reverseBits(vec3<i32>(u_input.d.x, -1i, var_0.x) >> (vec3<u32>(u_input.a.x, 32230u, u_input.b.x) % vec3<u32>(32u)))), min(-abs(-35982i), -(2147483647i ^ u_input.c))), _wgslsmith_mod_vec2_i32(select(abs(vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, 11179i), !arg_1) ^ u_input.d, vec2<i32>(-2147483647i, 3050i)));
    let var_2 = ~(~(~vec3<u32>(_wgslsmith_mult_u32(1u, u_input.b.x), _wgslsmith_clamp_u32(21493u, u_input.b.x, 1u), 4294967295u)));
    return _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    global0 = vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -1044f), _wgslsmith_f_op_f32(func_3(Struct_1(-vec4<i32>(2147483647i, u_input.c, u_input.d.x, -1i), arg_0.x, 1152f, u_input.c, vec3<f32>(global0.x, arg_1, global0.x)), _wgslsmith_mult_i32(u_input.d.x, u_input.d.x) != ~(-2147483647i)))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1))));
    var var_0 = select(all(vec2<bool>(true || (arg_0.x == arg_0.x), true)), any(arg_0), true);
    var_0 = !arg_0.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-arg_1), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(786f, -317f, true))))));
    return Struct_1(-abs(vec4<i32>(-1i, u_input.d.x, 26869i, u_input.d.x)) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), ~vec4<u32>(25236u, 1129u, u_input.b.x, 14781u)) >> (reverseBits(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.b.x, 0u, 6965u))) % vec4<u32>(32u))) % vec4<u32>(32u)), any(vec2<bool>(any(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x)), all(select(arg_0.yy, vec2<bool>(false, arg_0.x), arg_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(var_1.x + arg_1)))))), u_input.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1))) + _wgslsmith_f_op_vec3_f32(max(var_1, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1, -360f), _wgslsmith_f_op_f32(global0.x - 602f), -917f)), u_input.d.x < _wgslsmith_div_i32(u_input.c, -u_input.c))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_3.a.e.xy;
    var var_1 = reverseBits(~(~vec2<u32>(0u, 12962u) ^ u_input.b));
    let var_2 = select(all(vec2<bool>(true, arg_3.a.b)), arg_3.b, false);
    let var_3 = Struct_1(vec4<i32>(arg_3.c, func_2(select(vec3<bool>(var_2, arg_3.b, arg_0.b), vec3<bool>(false, arg_0.b, false), !vec3<bool>(var_2, true, var_2)), 170f).a.x, -6594i, firstLeadingBit(~reverseBits(0i))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - 503f), _wgslsmith_f_op_f32(-global0.x), !arg_3.b)))), arg_1.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0.e))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -420f, -1196f) + vec3<f32>(-597f, -974f, -240f)) * _wgslsmith_div_vec3_f32(arg_0.e, arg_0.e)), vec3<f32>(595f, var_0.x, arg_3.a.e.x), select(all(vec4<bool>(false, var_2, false, true)), arg_0.b, arg_0.b))))));
    var_1 = ~(~(~vec2<u32>(countOneBits(0u), 1u)));
    return select(!select(!vec4<bool>(var_2, var_3.b, var_3.b, arg_0.b), !select(vec4<bool>(arg_0.b, true, var_3.b, true), vec4<bool>(true, arg_3.b, arg_3.a.b, arg_0.b), vec4<bool>(false, arg_0.b, true, true)), !var_3.b), !select(!(!vec4<bool>(false, arg_0.b, var_3.b, false)), !vec4<bool>(var_2, arg_3.b, arg_0.b, var_3.b), func_2(select(vec3<bool>(true, false, false), vec3<bool>(true, false, arg_0.b), false), _wgslsmith_f_op_f32(-arg_3.a.c)).b), any(select(!vec4<bool>(arg_0.b, var_2, arg_0.b, true), select(!vec4<bool>(arg_0.b, var_3.b, true, false), select(vec4<bool>(arg_0.b, var_3.b, true, true), vec4<bool>(true, var_2, true, arg_0.b), vec4<bool>(false, arg_0.b, true, var_3.b)), vec4<bool>(false, var_3.b, arg_0.b, arg_0.b)), !select(vec4<bool>(arg_0.b, arg_3.a.b, var_3.b, false), vec4<bool>(var_3.b, var_3.b, var_2, var_2), vec4<bool>(var_3.b, false, true, var_2)))));
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, global0.x > 1272f, true), abs(83044i) <= u_input.d.x), global0.x), firstTrailingBit(vec2<i32>(-select(u_input.c, 5520i, false), -1i)), vec3<i32>(_wgslsmith_div_i32(-32760i, u_input.d.x), _wgslsmith_sub_i32(u_input.d.x, -29479i), 14972i), Struct_2(func_2(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), 1214f), func_2(vec3<bool>(true, u_input.b.x <= u_input.b.x, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(645f, global0.x)), _wgslsmith_f_op_f32(round(global0.x))))).b, u_input.d.x, -8327i));
    var var_1 = 699f;
    var_0 = select(vec4<bool>(u_input.d.x < (u_input.c >> (42902u % 32u)), all(select(vec2<bool>(false, false), var_0.wy, vec2<bool>(true, var_0.x))), false, !all(vec3<bool>(var_0.x, var_0.x, true))), !(!func_4(Struct_1(vec4<i32>(u_input.d.x, -36379i, 39585i, u_input.d.x), false, 606f, -2147483647i, vec3<f32>(-780f, global0.x, -362f)), select(u_input.d, u_input.d, var_0.x), vec3<i32>(u_input.c, u_input.c, 29563i) ^ vec3<i32>(-14402i, u_input.d.x, u_input.d.x), Struct_2(Struct_1(vec4<i32>(u_input.c, 0i, u_input.c, 29490i), var_0.x, 115f, u_input.c, vec3<f32>(868f, global0.x, -815f)), var_0.x, u_input.c, 2147483647i))), !(!(!vec4<bool>(var_0.x, var_0.x, false, true))));
    let var_2 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), i32(-1i) * -1i, u_input.c, 1i)), false, global0.x, _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, 0i, u_input.d.x, u_input.d.x), vec4<i32>(86206i, u_input.d.x, u_input.d.x, 50741i)), vec4<i32>(-13253i, 1i, -2147483647i, u_input.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, -189f, 1105f))) + vec3<f32>(1f, 1f, 1f))), func_2(select(select(!vec3<bool>(var_0.x, var_0.x, false), var_0.zzy, var_0.xyz), func_4(func_2(var_0.zzw, global0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), u_input.d), abs(vec3<i32>(u_input.c, u_input.d.x, u_input.d.x)), Struct_2(Struct_1(vec4<i32>(u_input.c, u_input.d.x, 24031i, 0i), false, -1125f, u_input.c, vec3<f32>(global0.x, -410f, global0.x)), var_0.x, u_input.d.x, -11664i)).zxz, select(!var_0.x, var_0.x, func_2(var_0.yyw, 1149f).b)), 2147f).b, func_2(vec3<bool>(false, -19695i != _wgslsmith_div_i32(-1i, u_input.c), var_0.x), global0.x).d, _wgslsmith_mult_i32(~u_input.d.x, u_input.d.x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.a.e.yy, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1042f)), -254f))), var_0.yx)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(31585u | _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(u_input.b.x)), u_input.b.x), 10013u, ~func_1() >> (_wgslsmith_sub_u32(countOneBits(select(1u, 29996u, true)), ~_wgslsmith_mult_u32(25762u, 0u)) % 32u));
    let var_1 = -u_input.d.x ^ reverseBits(-_wgslsmith_sub_i32(2147483647i, u_input.d.x));
    var_0 = ~(~(~select(max(u_input.a, u_input.a), ~vec3<u32>(1u, 0u, var_0.x), true)));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -800f))), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(exp2(global0.x))))) * vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-1358f, global0.x), _wgslsmith_f_op_f32(803f * global0.x)))), global0.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -666f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-167f)), _wgslsmith_div_f32(1044f, 1377f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -814f), global0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(574f, global0.x) - vec2<f32>(-972f, _wgslsmith_f_op_f32(1390f * -949f)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1295f * _wgslsmith_f_op_f32(global0.x + var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, func_2(vec3<bool>(false, true, false), var_2.x).e.x))));
    var var_3 = Struct_3(Struct_2(func_2(vec3<bool>(true, true, true), var_2.x), true, firstTrailingBit(-15412i) ^ _wgslsmith_div_i32(929i, _wgslsmith_add_i32(-27568i, u_input.c)), max(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1, -1i), abs(vec3<i32>(u_input.d.x, 1552i, var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(-(~vec2<i32>(-1i, -1i))) & func_2(select(func_4(Struct_1(var_3.a.a.a, var_3.a.a.b, -1553f, -2403i, var_3.a.a.e), vec2<i32>(var_1, u_input.c), vec3<i32>(var_1, var_1, var_3.a.c), Struct_2(Struct_1(var_3.a.a.a, false, -1315f, -13666i, var_3.a.a.e), var_3.a.a.b, -4054i, var_3.a.a.d)).zzw, vec3<bool>(false, var_3.a.b, true), true), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.a.a.c, var_3.a.a.c)))).a.ww, ~(~_wgslsmith_div_u32(u_input.b.x, 1u)), -_wgslsmith_div_i32(0i, 2147483647i));
}

