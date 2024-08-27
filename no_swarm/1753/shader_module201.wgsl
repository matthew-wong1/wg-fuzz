struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global2: array<Struct_2, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    var var_0 = 2147483647i;
    var var_1 = global2[_wgslsmith_index_u32(~0u, 3u)];
    var var_2 = global2[_wgslsmith_index_u32(((~_wgslsmith_div_u32(var_1.c.x, var_1.c.x) & _wgslsmith_mod_u32(var_1.c.x, var_1.c.x >> (var_1.c.x % 32u))) >> (~var_1.c.x % 32u)) << (_wgslsmith_add_u32(2646u, abs(select(_wgslsmith_div_u32(0u, var_1.c.x), var_1.c.x, all(var_1.a.d)))) % 32u), 3u)];
    global2 = array<Struct_2, 3>();
    var var_3 = 1i >> (var_2.c.x % 32u);
    return reverseBits(firstTrailingBit(_wgslsmith_add_u32(abs(0u >> (0u % 32u)), ~var_1.c.x)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = vec4<bool>(true, all(global1[_wgslsmith_index_u32(func_3(), 26u)]), false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    let var_1 = u_input.b;
    var var_2 = vec4<u32>(73564u, ~1u, abs(0u), 31879u);
    var_0 = select(select(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false))), !select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, true, true, var_0.x), true), vec4<bool>(!(!var_0.x), select(false, false, var_0.x) & select(var_0.x, var_0.x, var_0.x), any(vec2<bool>(true, var_0.x)), false)), select(vec4<bool>(var_0.x != var_0.x, var_0.x, any(vec2<bool>(var_0.x, true)) | var_0.x, select(!var_0.x, true, all(var_0.ww))), vec4<bool>(u_input.b != var_1, any(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x))), true, var_0.x), true), var_0.x);
    var var_3 = ~(var_2.xxx >> (~(~(~var_2.wwz)) % vec3<u32>(32u)));
    return Struct_1(-1000f, vec3<bool>(var_0.x, var_0.x, select(false, true, true)), select(!(!select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, true, false, true))), !select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, false, false), true), !(!vec4<bool>(var_0.x, true, false, var_0.x))), var_0.x), !(!vec4<bool>(select(var_0.x, true, var_0.x), true, var_0.x, var_0.x)), var_0.zx);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_1.x, vec3<bool>(true, true, true), arg_2.a.c, !arg_2.a.c, arg_2.a.e), -705f, select(abs(_wgslsmith_add_vec2_u32(~arg_2.c, abs(vec2<u32>(arg_2.c.x, 0u)))), ~firstTrailingBit(vec2<u32>(arg_2.c.x, 4294967295u)) << (_wgslsmith_add_vec2_u32(arg_2.c, vec2<u32>(123043u, arg_3.x)) % vec2<u32>(32u)), arg_2.a.b.zz));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.a.a, -439f, -519f, 1703f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(156f, arg_2.b, -1289f, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1737f, arg_1.x, 1619f))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, var_0.a.a, 245f), vec4<f32>(arg_2.b, -581f, arg_2.a.a, arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(757f, var_0.a.a, var_0.b, -868f))))))));
    return Struct_1(_wgslsmith_div_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, arg_1.x))).a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-241f * _wgslsmith_f_op_f32(-1234f + var_0.b))))), !arg_2.a.d.yzz, var_0.a.c, arg_2.a.d, select(!var_0.a.b.zy, var_0.a.e, all(var_0.a.e)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))));
    var var_1 = global2[_wgslsmith_index_u32(1u, 3u)];
    global2 = array<Struct_2, 3>();
    global2 = array<Struct_2, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 1316f, var_0))), vec3<f32>(arg_0.a, var_0, var_1.a.a))) + vec3<f32>(-356f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(min(var_0, arg_0.a))))));
    return Struct_1(708f, !vec3<bool>(var_2.x < _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, var_1.a.b.x)), arg_0.b.x, !(var_1.a.b.x & var_1.a.c.x)), var_1.a.c, vec4<bool>(true, var_2.x <= func_2(1069f).a, any(global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(26642u, 23748u, arg_2.x)), 26u)]), var_1.a.c.x), select(vec2<bool>(!(!arg_0.e.x), abs(2226u) < (arg_2.x & 10927u)), vec2<bool>(func_4(true, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, 1000f, var_1.b), vec3<f32>(-1222f, 1491f, arg_0.a))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, 4294967295u, 0u), vec3<u32>(18951u, var_1.c.x, 28883u)), 3u)], vec2<u32>(68878u, var_1.c.x) ^ arg_2).b.x, !func_2(732f).d.x), vec2<bool>(var_1.a.c.x, true)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(!(_wgslsmith_add_i32(1i, u_input.a.x) < 3026i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1192f), _wgslsmith_f_op_f32(542f - -521f), _wgslsmith_f_op_f32(abs(-106f))))), Struct_2(func_2(_wgslsmith_div_f32(-1393f, -523f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-397f * -512f), _wgslsmith_f_op_f32(137f + 280f), select(true, false, false))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 51711u)), vec2<u32>(78666u, 96880u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 46723u), vec2<u32>(max(45561u, 27448u), 81004u))), ~_wgslsmith_sub_i32(~2147483647i, _wgslsmith_mod_i32(~36586i, _wgslsmith_div_i32(u_input.b, u_input.b))), vec2<u32>(4294967295u, _wgslsmith_mult_u32(40284u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 0u)))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.a))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2056f)))))), !(!var_0.c.xwx), var_0.c, var_0.c, func_2(-212f).e);
    global1 = array<vec3<bool>, 26>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1125f));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x))), vec3<bool>(func_5(func_2(_wgslsmith_f_op_f32(-var_3.x)), u_input.a.x ^ abs(52015i), vec2<u32>(abs(4294967295u), 1u)).b.x, true, true), select(var_0.c, var_2.d, any(vec3<bool>(all(vec3<bool>(false, var_0.b.x, false)), any(vec3<bool>(true, var_0.e.x, false)), func_4(false, vec3<f32>(var_0.a, 890f, var_0.a), global2[_wgslsmith_index_u32(50667u, 3u)], vec2<u32>(4294967295u, 62005u)).d.x))), vec4<bool>(false, !(_wgslsmith_f_op_f32(step(-452f, var_2.a)) < var_3.x), var_2.b.x, (false & !var_2.c.x) && true), !func_5(var_0, i32(-1i) * -u_input.b, vec2<u32>(1u, 1u)).c.yw);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-261f, arg_2.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-192f, arg_1.a))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, -1227f), vec2<f32>(arg_0.b, arg_1.a))))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_5(arg_0.a, 1107i, vec2<u32>(arg_0.c.x, arg_0.c.x)).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * func_5(arg_1, -2147483647i, vec2<u32>(arg_0.c.x, arg_0.c.x)).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1364f, _wgslsmith_div_f32(711f, arg_1.a))))), false));
    var var_1 = Struct_2(func_5(func_4(!(!arg_0.a.d.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1303f, -1009f, 343f), vec3<f32>(372f, -1504f, arg_0.a.a))), Struct_2(Struct_1(-1286f, vec3<bool>(arg_2.c.x, true, false), vec4<bool>(true, arg_1.c.x, true, true), arg_1.c, arg_1.c.zw), _wgslsmith_f_op_f32(arg_0.b + arg_0.b), arg_0.c), select(~arg_0.c, max(arg_0.c, arg_0.c), 4294967295u == arg_0.c.x)), -_wgslsmith_clamp_i32(abs(arg_3), reverseBits(arg_3), arg_3 >> (arg_0.c.x % 32u)), ~max(_wgslsmith_mod_vec2_u32(arg_0.c, arg_0.c), countOneBits(arg_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -1505f), ~(~arg_0.c));
    var_1 = Struct_2(func_5(Struct_1(_wgslsmith_f_op_f32(trunc(arg_2.a)), func_1().c.wzx, vec4<bool>(arg_2.b.x, func_5(global0[_wgslsmith_index_u32(0u, 23u)], arg_3, vec2<u32>(var_1.c.x, arg_0.c.x)).d.x, true, arg_0.a.e.x & var_1.a.c.x), arg_2.d, !vec2<bool>(arg_2.e.x, true)), 1i, min(min(~vec2<u32>(arg_0.c.x, var_1.c.x), countOneBits(var_1.c)), vec2<u32>(5731u, ~1u))), 1000f, ~vec2<u32>(1u, ~firstLeadingBit(36931u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_2.a) - 1089f)))));
    let var_3 = true;
    return abs(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.c.x, 4294967295u, 25305u, 0u), ~vec4<u32>(arg_0.c.x, 4294967295u, var_1.c.x, 28168u) | countOneBits(vec4<u32>(0u, arg_0.c.x, 10251u, arg_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~16431u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 46378u), vec2<u32>(74969u, 4294967295u)), max(vec2<u32>(1u, 42142u), vec2<u32>(46282u, 35306u))), ~47697u, 1u), _wgslsmith_div_vec4_u32(func_6(Struct_2(Struct_1(532f, global1[_wgslsmith_index_u32(8381u, 26u)], vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec2<bool>(true, true)), -507f, vec2<u32>(17620u, 4294967295u)), func_1(), Struct_1(-612f, global1[_wgslsmith_index_u32(15312u, 26u)], vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec2<bool>(false, false)), u_input.a.x & u_input.a.x), abs(vec4<u32>(35429u, 0u, 0u, 1u)))), ~func_6(Struct_2(Struct_1(-480f, vec3<bool>(false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec2<bool>(false, true)), _wgslsmith_f_op_f32(752f + -241f), ~vec2<u32>(4294967295u, 23u)), global0[_wgslsmith_index_u32(~0u << (func_3() % 32u), 23u)], func_1(), -25592i));
    var var_1 = !(!func_2(-112f).d);
    var var_2 = global2[_wgslsmith_index_u32(9176u, 3u)];
    let var_3 = global2[_wgslsmith_index_u32(1u, 3u)];
    var var_4 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(40696u, var_0.x, 1u, 4294967295u), vec4<u32>(18844u, var_2.c.x, 4294967295u, 1981u)) | 35403u), func_6(Struct_2(Struct_1(2029f, vec3<bool>(false, var_3.a.d.x, var_3.a.c.x), vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_2.a.c.x, var_1.x, false, false), var_3.a.b.yz), var_3.b, _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_3.c.x, 4294967295u))), var_3.a, var_2.a, ~(-5138i)).x)), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(40368i, 27661u, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -u_input.b), u_input.a & (vec2<i32>(-4242i, -23861i) << (var_0.zx % vec2<u32>(32u)))), vec2<i32>(abs(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-48755i, -14078i))), -3071i)));
}

