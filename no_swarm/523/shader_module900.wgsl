struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -22728i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_5(max(u_input.a.xx & ~(u_input.a.xx | u_input.a.xz), ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xx), u_input.a.zx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2101f, -443f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 119f), vec2<f32>(arg_0, 567f), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1405f) + vec2<f32>(arg_0, -232f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 750f) * vec2<f32>(arg_0, 601f))))), Struct_2(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(trunc(-1160f))), 32449i & (-u_input.c.x & global0.x), abs(max(_wgslsmith_div_vec2_i32(u_input.c, u_input.c), abs(vec2<i32>(global0.x, global0.x)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 53672u), u_input.a.xz << (u_input.a.yz % vec2<u32>(32u))) & ~max(u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(13578u, 13043u, 14248u, u_input.a.x)), min(~vec4<u32>(112074u, 75882u, u_input.a.x, u_input.a.x) ^ vec4<u32>(8899u, 4294967295u, 4294967295u, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, 43899u, u_input.b, u_input.b)))));
    let var_1 = true;
    var_0 = Struct_5(_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(~1u, ~0u)) & countOneBits(u_input.a.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), var_0.c, firstTrailingBit(select(vec4<u32>(var_0.c.d, ~u_input.a.x, 1u, var_0.d.x), vec4<u32>(~u_input.b, var_0.d.x, u_input.b, 20577u), !select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, var_1, true, true), var_1))));
    global0 = _wgslsmith_add_vec2_i32(var_0.c.c, ~vec2<i32>(global0.x, var_0.c.b));
    global0 = select(vec2<i32>(var_0.c.c.x, i32(-1i) * -10416i), firstTrailingBit(~var_0.c.c), any(vec2<bool>(true, true)) & var_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(exp2(var_0.b.x))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(85301u, 0u), vec2<u32>(65413u, u_input.b)) < u_input.a.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-643f, _wgslsmith_div_f32(636f, 351f)), vec2<f32>(-989f, _wgslsmith_f_op_f32(func_3(-1372f)))))), any(vec2<bool>(!any(vec3<bool>(true, false, true)), true)), Struct_3(Struct_1(true), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)))), Struct_2(1044f, ~global0.x, ~max(vec2<i32>(2147483647i, global0.x), vec2<i32>(u_input.e, u_input.d)) | max(vec2<i32>(u_input.d, u_input.c.x), u_input.c), u_input.a.x));
    var var_1 = ~(1u & _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.b), u_input.a), var_0.e.d >> (u_input.a.x % 32u)), _wgslsmith_dot_vec2_u32(u_input.a.yy, ~vec2<u32>(u_input.a.x, 39014u))));
    let var_2 = vec4<f32>(var_0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.e.a))), _wgslsmith_f_op_f32(abs(-443f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1254f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.e.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_0.b.x))), _wgslsmith_f_op_f32(-694f * _wgslsmith_f_op_f32(floor(-449f))));
    let var_3 = !all(select(select(vec3<bool>(true, var_0.d.a.a, false), select(vec3<bool>(var_0.c, true, var_0.d.a.a), vec3<bool>(var_0.a.a, var_0.d.b, false), vec3<bool>(false, false, false)), select(vec3<bool>(var_0.d.b, true, var_0.d.a.a), vec3<bool>(true, var_0.c, var_0.d.a.a), vec3<bool>(false, var_0.a.a, true))), vec3<bool>(!var_0.c, var_0.c, true), true && any(vec4<bool>(true, false, false, false))));
    let var_4 = ~var_0.e.d << (_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(u_input.b, 1u)) % 32u);
    return var_0.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1638f * -674f), _wgslsmith_f_op_f32(f32(-1f) * -1458f), -504f, _wgslsmith_f_op_f32(f32(-1f) * -1229f)))))));
    let var_2 = ~vec2<i32>(arg_1, u_input.d);
    let var_3 = func_2();
    var var_4 = select(vec3<bool>(all(vec4<bool>(false, false & arg_2, var_3.a.a, !arg_2)), true, arg_2), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2, var_3.b, var_3.b), vec3<bool>(arg_2, true, var_3.b), all(vec4<bool>(true, var_3.b, var_3.b, arg_2))), true), vec3<bool>(false && func_2().a.a, true, any(!(!vec4<bool>(arg_2, var_3.a.a, var_3.a.a, true)))));
    return 69673u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), func_1(vec3<i32>(global0.x, u_input.c.x, -1i), global0.x, false) > 34113u), select(select(vec3<bool>(true, true, true), vec3<bool>(func_2().b, true, u_input.a.x == 1u), vec3<bool>(true, true, true)), vec3<bool>(select(select(true, false, false), true, all(vec4<bool>(true, true, true, true))), any(vec2<bool>(false, true)), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), true)), select(vec3<bool>(any(vec4<bool>(true, false, true, true)), _wgslsmith_mod_u32(18637u, u_input.a.x) != _wgslsmith_mult_u32(4294967295u, 0u), all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), all(vec4<bool>(true, true, true, false))), false));
    global0 = u_input.c;
    global0 = min(firstTrailingBit(u_input.c), max(vec2<i32>(-min(0i, -2147483647i), 1i), -reverseBits(~vec2<i32>(u_input.d, 1i))));
    let var_1 = Struct_3(Struct_1(var_0.x), var_0.x);
    global0 = vec2<i32>(global0.x, -u_input.c.x & global0.x);
    var var_2 = Struct_4(Struct_1(true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-490f * -1000f), _wgslsmith_f_op_f32(1656f * -431f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-642f, -1748f))), vec2<bool>(all(vec4<bool>(var_1.a.a, false, true, var_0.x)), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-182f, -549f) * vec2<f32>(-1000f, 500f)))), var_0.x, Struct_3(func_2().a, !var_0.x && false), Struct_2(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -916f))), -30768i, reverseBits(_wgslsmith_mult_vec2_i32(countOneBits(u_input.c), firstLeadingBit(vec2<i32>(u_input.d, 1i)))), _wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(~u_input.a.xy, abs(vec2<u32>(11089u, u_input.b))))));
    var var_3 = Struct_5(min(~(~vec2<u32>(1u, u_input.a.x)), firstTrailingBit(select(vec2<u32>(u_input.b, var_2.e.d), u_input.a.zz, var_2.d.b) ^ _wgslsmith_add_vec2_u32(vec2<u32>(12453u, var_2.e.d), u_input.a.yx))), vec2<f32>(1458f, -749f), var_2.e, ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(25797u, 1u) >> (u_input.a.zy % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.a.xy, u_input.a.xx)), 23334u & min(var_2.e.d, 52772u), 45168u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-864f, var_3.c.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.b.x))), 893f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.c.a, var_2.e.a, var_2.b.x), vec3<f32>(var_2.b.x, var_2.b.x, var_3.c.a)))), select(var_0, vec3<bool>(true, true, true), vec3<bool>(var_2.a.a, !var_0.x, !var_2.a.a)))), _wgslsmith_f_op_f32(abs(-526f)), ~(~(~vec2<u32>(u_input.a.x, 70929u))), ~(~(-_wgslsmith_sub_i32(2992i, var_2.e.b))), var_2.b.x);
}

