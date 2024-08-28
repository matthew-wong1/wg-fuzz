struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.a), firstTrailingBit(722i), arg_0.c, ~arg_0.d);
    var var_1 = arg_0.c;
    var var_2 = Struct_1(var_1.a);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f + var_2.a))), true)), ~arg_0.b, arg_0.c, max(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.d.x, 1u), max(0u, 1u)), select(37556u, 4294967295u, true) & _wgslsmith_add_u32(0u, 742u), ~1u), vec3<u32>(var_0.d.x, arg_0.d.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(8191u, 0u), vec2<u32>(var_0.d.x, arg_0.d.x)), ~15960u))));
    var var_4 = vec3<i32>(1i, _wgslsmith_sub_i32(-50491i, i32(-1i) * -27773i), max(1i, var_0.b) >> (firstLeadingBit(_wgslsmith_add_u32(var_3.d.x, var_0.d.x) & ~var_3.d.x) % 32u));
    return arg_0.c.a;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = ~(~(vec3<u32>(u_input.a, ~30209u, u_input.a) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 31187u, u_input.c), vec3<u32>(28517u, 1u, 77258u)), reverseBits(vec3<u32>(u_input.a, u_input.c, 1u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(151f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1115f * 271f) + -903f) - _wgslsmith_f_op_f32(-2450f - _wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(-494f, -325f), -3925i, Struct_1(-605f), vec3<u32>(19095u, u_input.a, 29972u))))))));
    var_1 = _wgslsmith_f_op_f32(-1451f * 1032f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-547f, -238f) + 381f))), _wgslsmith_f_op_f32(f32(-1f) * -709f)) + _wgslsmith_f_op_f32(f32(-1f) * -162f));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1207f, -1879f))))), 25360i, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f + 1000f) * _wgslsmith_f_op_f32(floor(-765f))), _wgslsmith_f_op_f32(2268f + _wgslsmith_f_op_f32(f32(-1f) * -754f))))), var_0);
    return Struct_3(!select(vec4<bool>(arg_0, !arg_0, select(true, false, false), any(vec3<bool>(arg_0, arg_0, false))), !select(vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_0, false, true, arg_0), true), select(select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, arg_0, arg_0, true)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), -abs(vec2<i32>(countOneBits(u_input.b), u_input.b)), select(!vec2<bool>(arg_0, any(vec3<bool>(true, arg_0, false))), select(vec2<bool>(-221f > var_2.a.x, !arg_0), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, true)), select(!vec2<bool>(false, arg_0), vec2<bool>(false, false), all(vec4<bool>(false, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.x))) != var_2.a.x), Struct_1(-454f), vec3<u32>(var_0.x, u_input.c, min(min(_wgslsmith_mod_u32(var_0.x, 16108u), var_2.d.x), 0u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = true;
    let var_1 = func_2(360f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, 166f))))).c.x;
    var_0 = true;
    let var_2 = 718f;
    var_0 = true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2, 280f)), -1450f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.d.a)), 357f))));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = any(!select(select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.b.c.x), vec4<bool>(arg_0.a.x, true, false, false), !arg_0.a.x), vec4<bool>(false, true, !arg_0.b.c.x, !arg_0.a.x), select(!vec4<bool>(false, arg_0.a.x, arg_0.b.a.x, false), select(arg_0.b.a, arg_0.b.a, arg_0.b.a.x), all(arg_0.b.c))));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -454f, arg_0.b.d.a, -851f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.d.a, 1085f, 178f, arg_0.b.d.a) - vec4<f32>(arg_0.b.d.a, 1279f, -2704f, arg_0.b.d.a))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) + -586f)), _wgslsmith_f_op_f32(exp2(var_1.d.a)), _wgslsmith_f_op_f32(var_1.d.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.d.a - 333f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.d.a, 105f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(func_4(abs(vec2<u32>(u_input.c, 1u) & vec2<u32>(94890u, u_input.a)), Struct_4(select(arg_0.a, var_1.c, select(vec2<bool>(arg_0.a.x, true), vec2<bool>(var_1.c.x, var_0), select(var_1.a.xy, var_1.c, var_0))), func_2(any(select(vec4<bool>(true, false, false, arg_0.b.c.x), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.b.c.x, var_0, var_0, true))))), var_2.ww, Struct_2(var_2.xx, reverseBits(_wgslsmith_sub_i32(u_input.b, 78191i)) ^ var_1.b.x, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(2207f)), _wgslsmith_div_f32(var_2.x, 1535f), true))), firstLeadingBit(abs(var_1.e)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1881f + var_2.x)), _wgslsmith_f_op_f32(-arg_0.b.d.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(250f, var_2.x, -1339f, 2007f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1840f, arg_0.b.d.a, -1000f, 1533f))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(var_2.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x * 660f), -1615f) * _wgslsmith_f_op_vec2_f32(trunc(var_2.xx))), true)), 0i, func_2(!var_0).d, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.e.x | 4294967295u), var_1.e.zz & arg_0.b.e.yx), ~_wgslsmith_mod_u32(4294967295u, firstTrailingBit(4294967295u)), _wgslsmith_mod_u32(var_1.e.x, abs(min(1u, 49159u)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_4(!func_2(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)))).c, func_2(~(~1u) == (u_input.a | arg_1.d.x)));
    var var_1 = ~(~_wgslsmith_add_vec2_u32(~arg_1.d.zy, vec2<u32>(abs(var_0.b.e.x), max(4294967295u, var_0.b.e.x))));
    var var_2 = ~vec3<u32>(27277u, ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.e.x, 38785u), arg_2.yx)), 62375u);
    var var_3 = func_1(Struct_4(func_2(max(arg_1.d.x, 29517u) < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50724u, 55514u, 11181u), vec4<u32>(16470u, 0u, arg_2.x, u_input.c))).c, Struct_3(!var_0.b.a, vec2<i32>(func_1(Struct_4(vec2<bool>(true, var_0.a.x), var_0.b), 1i, 4294967295u, -26402i).b, -4748i), func_2(var_0.a.x).a.yw, arg_1.c, _wgslsmith_mult_vec3_u32(arg_2, arg_2 | arg_2))), -arg_1.b, arg_1.d.x, 2147483647i).c;
    var var_4 = vec2<i32>(max(-1i, var_0.b.b.x), -u_input.b);
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c;
    var_0 = 66661u;
    var_0 = 27766u << (firstLeadingBit(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, 0u)), firstLeadingBit(countOneBits(vec2<u32>(u_input.c, 0u))))) % 32u);
    let var_1 = !func_5(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, 1i) | vec4<i32>(-29244i, u_input.b, 4530i, u_input.b), ~vec4<i32>(u_input.b, 4848i, 59668i, u_input.b)), func_1(Struct_4(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_3(vec4<bool>(false, true, false, true), vec2<i32>(11553i, 0i), vec2<bool>(false, false), Struct_1(-184f), vec3<u32>(4294967295u, 1u, u_input.a))), _wgslsmith_mult_i32(u_input.b, countOneBits(16950i)), _wgslsmith_mult_u32(countOneBits(4294967295u), 1u), u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 60371u)) % 32u)), ~_wgslsmith_sub_vec3_u32(func_2(false).e, ~vec3<u32>(u_input.a, 6442u, 11555u)));
    var var_2 = Struct_3(select(!vec4<bool>(u_input.a < u_input.c, var_1, any(vec3<bool>(var_1, true, var_1)), u_input.c > u_input.a), vec4<bool>(any(vec4<bool>(var_1, true, var_1, var_1)), !(!var_1), var_1, all(vec2<bool>(true, true))), !func_2(any(vec2<bool>(var_1, false))).a), -(~vec2<i32>(23053i >> (1u % 32u), 0i)), !func_2(true).c, Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1173f - _wgslsmith_f_op_f32(floor(1235f))))), vec3<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 63044u), vec2<u32>(u_input.a, 2373u)), _wgslsmith_sub_u32(u_input.a, u_input.c)), 53669u) << (vec3<u32>(abs(~1u), 0u, 20269u) % vec3<u32>(32u)));
    var_0 = u_input.a;
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.e.x, 4294967295u, 4294967295u, u_input.c), vec4<u32>(114262u, 15780u, var_2.e.x, 0u)), vec4<u32>(u_input.c >> (4294967295u % 32u), _wgslsmith_mod_u32(var_2.e.x, var_2.e.x), ~0u, select(4294967295u, u_input.c, true)))), 2147483647i, -624f);
}

