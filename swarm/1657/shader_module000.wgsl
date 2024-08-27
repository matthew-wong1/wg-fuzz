struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> i32 {
    var var_0 = vec4<bool>(true, _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -49639i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -55929i))) < u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(arg_2.x)))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), arg_2.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1753f) + arg_2.x));
    var_0 = select(!select(!(!vec4<bool>(var_0.x, false, false, var_0.x)), vec4<bool>(-6945i <= u_input.a, !var_0.x, !var_0.x, !var_0.x), var_0.x), !(!vec4<bool>(all(vec4<bool>(false, true, var_0.x, var_0.x)), var_0.x, !var_0.x, u_input.a < u_input.a)), !select(select(!vec4<bool>(var_0.x, var_0.x, false, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x), select(false, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, true, var_0.x, true), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, false)), !select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x))));
    let var_1 = Struct_1(arg_2.x);
    return _wgslsmith_sub_i32(countOneBits(u_input.a), _wgslsmith_sub_i32(countOneBits(u_input.a), i32(-1i) * -56988i));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = max(_wgslsmith_div_i32(max(func_3(vec4<f32>(-839f, -186f, -1221f, -1000f), vec4<u32>(43674u, arg_1, 14594u, 1u), vec3<f32>(699f, -319f, -238f)), u_input.a), 1i), 38749i) >> (0u % 32u);
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f))), ~u_input.b);
    return Struct_2(var_1.a, abs(u_input.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 14>();
    let var_0 = func_2(u_input.a < abs(-97972i), arg_1.b.x);
    global0 = array<Struct_2, 14>();
    var var_1 = arg_2.a;
    var_1 = _wgslsmith_f_op_f32(abs(var_0.a.a));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) + _wgslsmith_f_op_f32(-1316f - var_0.a.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.a) <= _wgslsmith_f_op_f32(-arg_1.a);
    let var_1 = func_2(any(vec3<bool>(true, _wgslsmith_clamp_u32(35176u, u_input.c.x, 29689u) > ~u_input.b.x, select(false, false, true) || any(vec2<bool>(false, true)))), (u_input.c.x | 11087u) | 61631u).a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2366f), arg_1.a)))) + _wgslsmith_div_f32(712f, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(f32(-1f) * -146f))));
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), arg_0.a, true)), _wgslsmith_div_f32(-1180f, _wgslsmith_f_op_f32(-arg_0.a)), true))), -482f));
    let var_3 = func_2(true, func_2(all(vec2<bool>(all(vec4<bool>(false, false, true, true)), true)), u_input.c.x ^ u_input.c.x).b.x);
    return func_2(false, 15615u).a;
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = all(vec3<bool>(false, true, _wgslsmith_f_op_f32(-262f + _wgslsmith_f_op_f32(step(arg_1.a.a, 1801f))) >= 1309f));
    var var_1 = func_2(all(!select(!vec4<bool>(arg_0, arg_0, false, true), !vec4<bool>(false, true, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, arg_0))), 3343u);
    let var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a)), 2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(-14821i, u_input.a, u_input.a))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 24011i), vec2<i32>(-28248i, u_input.a)), -3679i), u_input.a, ~_wgslsmith_add_i32(u_input.a, u_input.a)));
    var var_3 = arg_1.b.x;
    var var_4 = u_input.c.x ^ 4294967295u;
    return 1147f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 14>();
    var var_0 = !vec2<bool>(true, u_input.b.x <= 0u);
    var var_1 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-277f, _wgslsmith_f_op_f32(abs(677f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1819f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -626f))))), _wgslsmith_f_op_f32(func_5(reverseBits(_wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i)) <= _wgslsmith_add_i32(_wgslsmith_add_i32(14797i, 1i), 0i), Struct_2(func_4(func_1(vec4<bool>(false, var_0.x, var_0.x, false), Struct_2(Struct_1(-1234f), vec4<u32>(u_input.c.x, u_input.b.x, 0u, u_input.b.x)), Struct_1(-780f)), Struct_1(949f), -vec4<i32>(u_input.a, -2147483647i, -25461i, u_input.a)), u_input.b))));
    var_0 = !select(vec2<bool>(false && (false || var_0.x), var_0.x), !(!(!vec2<bool>(false, var_0.x))), select(vec2<bool>(any(vec4<bool>(var_0.x, true, true, var_0.x)), false), select(vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, false), vec2<bool>(true, true)), !(var_0.x | false)));
    var var_2 = func_4(func_2(!var_0.x, 15567u).a, Struct_1(func_4(func_4(Struct_1(var_1.x), func_1(vec4<bool>(var_0.x, var_0.x, var_0.x, true), Struct_2(Struct_1(var_1.x), u_input.b), Struct_1(var_1.x)), firstLeadingBit(vec4<i32>(0i, 1i, u_input.a, u_input.a))), func_1(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), global0[_wgslsmith_index_u32(u_input.b.x, 14u)], func_4(Struct_1(var_1.x), Struct_1(var_1.x), vec4<i32>(-1196i, 28718i, u_input.a, u_input.a))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, 13566i, u_input.a))).a), ~vec4<i32>(firstTrailingBit(~(-18305i)), -1i >> (select(4294967295u, 53372u, var_0.x) % 32u), _wgslsmith_mod_i32(u_input.a, -2147483647i ^ u_input.a), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, -15844i, 1i)))));
    global0 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_0.x, ~_wgslsmith_mod_u32(u_input.c.x, u_input.b.x)).b.wy << ((_wgslsmith_clamp_vec2_u32(u_input.b.wy, u_input.b.yw, _wgslsmith_mult_vec2_u32(vec2<u32>(23354u, u_input.b.x), u_input.b.wz)) << (vec2<u32>(reverseBits(4294967295u), 19176u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~_wgslsmith_clamp_i32(-65320i, _wgslsmith_mult_i32(u_input.a, i32(-1i) * -3931i), _wgslsmith_add_i32(func_3(vec4<f32>(var_2.a, var_2.a, var_1.x, -360f), vec4<u32>(78080u, u_input.c.x, u_input.c.x, u_input.c.x), vec3<f32>(653f, 1253f, -186f)), -14513i ^ u_input.a)), reverseBits(-(u_input.a << (_wgslsmith_div_u32(0u, 52753u) % 32u))));
}

