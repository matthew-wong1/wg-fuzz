struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 36275u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> u32 {
    global0 = 1u;
    var var_0 = vec3<bool>(any(vec2<bool>(true, true)), true, !select(any(vec3<bool>(false, true, true)), true, true) & !(!(9517i <= arg_0)));
    var_0 = !select(select(select(vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), false), var_0.x), !(!vec3<bool>(true, var_0.x, false)), vec3<bool>(any(vec3<bool>(false, true, true)), var_0.x, true)), select(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, false, false), true), !vec3<bool>(var_0.x, true, false), !(!vec3<bool>(var_0.x, false, false))), !vec3<bool>(all(vec2<bool>(var_0.x, var_0.x)), true, true));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(1422i, -97261i), -25348i >> (1u % 32u)), vec3<i32>(arg_2, firstLeadingBit(u_input.a), countOneBits(~arg_0)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), firstTrailingBit(vec2<i32>(arg_2, u_input.a))) << (select(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(22508u, 1u)), all(vec4<bool>(true, var_0.x, false, true))) % vec2<u32>(32u))), ~(-26017i));
    let var_2 = vec3<bool>(var_0.x, all(select(vec3<bool>(true, true, true), !vec3<bool>(false, false, var_0.x), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true), vec3<bool>(false, var_0.x, false), !var_0.x))), !any(vec3<bool>(var_0.x | false, true, true)));
    return _wgslsmith_sub_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(8202u, 0u), ~62417u) << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29822u, 44369u, 4294967295u), vec4<u32>(68285u, 1u, 67177u, 1u)) ^ reverseBits(8628u), ~22650u) % 32u), abs(max(5603u, _wgslsmith_sub_u32(~0u, reverseBits(18950u)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<u32>) -> bool {
    global0 = _wgslsmith_div_u32(arg_2, arg_2);
    let var_0 = !arg_1.x;
    let var_1 = !vec3<bool>(arg_1.x, !any(arg_1), any(select(select(vec4<bool>(var_0, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, true), true), select(arg_1, arg_1, false), false)));
    return false;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mod_i32(-2147483647i, u_input.a) >= -7544i;
    var_0 = true;
    var_0 = func_4(Struct_2(Struct_1(1i, _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a) << (vec3<u32>(16612u, 11866u, 39329u) % vec3<u32>(32u))), ~(vec2<i32>(u_input.a, 1i) ^ vec2<i32>(2147483647i, 9686i))), (u_input.a | u_input.a) | (u_input.a | (i32(-1i) * -12572i))), vec4<bool>(true, true, true, true), 0u, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(0u, 1u)), vec2<u32>(_wgslsmith_mult_u32(36384u, 24641u), func_3(u_input.a, -872f, u_input.a))), ~(~abs(vec2<u32>(4294967295u, 69098u)))));
    var var_1 = max(u_input.a, u_input.a);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-158f, -1330f) * 562f) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1447f, -341f), -114f))));
    return ~4294967295u;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = 4294967295u;
    let var_0 = Struct_1(-32155i, vec3<i32>(-1i) * -vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(42216i, u_input.a, u_input.a, 36830i), vec4<i32>(-2147483647i, u_input.a, 0i, -2147483647i)), u_input.a), vec2<i32>(u_input.a, -select(u_input.a, u_input.a, true)));
    global0 = _wgslsmith_mult_u32(~func_2(), _wgslsmith_mod_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(30775u, 60939u, 4294967295u, 34224u), firstTrailingBit(vec4<u32>(1u, 0u, 4294967295u, 0u))), _wgslsmith_mult_u32(1u, ~0u)), 92020u));
    var var_1 = ((_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, var_0.a, var_0.c.x), var_0.c.x) <= firstLeadingBit(abs(18000i))) && true) & arg_0.x;
    var_1 = true;
    return var_0;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(func_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true), vec3<bool>(true, select(false, false, true), true))), 5453i);
    var var_1 = Struct_1(-arg_2.c.x, vec3<i32>(0i, ~_wgslsmith_mod_i32(countOneBits(23168i), ~var_0.a.b.x), 1i), func_1(vec3<bool>(true, true, true)).c ^ reverseBits(-arg_2.c));
    global0 = 4294967295u;
    let var_2 = arg_1;
    global0 = ~1u;
    return Struct_1(firstTrailingBit(var_2.a.c.x), firstLeadingBit(select(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a.b.xz, arg_2.c), u_input.a, 2147483647i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.b.x, arg_0.x), arg_1.a.b.yx), firstLeadingBit(arg_1.b), 61925i), vec3<bool>(true, true, true))), _wgslsmith_div_vec2_i32(var_0.a.c, vec2<i32>(1i, u_input.a) | reverseBits(arg_2.b.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<i32>(_wgslsmith_sub_i32(~(-71102i) ^ u_input.a, u_input.a), -77720i, ~(~2147483647i), _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i)), Struct_2(func_1(vec3<bool>(true, true, true)), u_input.a), Struct_1(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, -2147483647i)), ~vec2<i32>(-63105i, -22118i)), (vec3<i32>(-1i) * -vec3<i32>(-50430i, 0i, u_input.a)) ^ abs(~vec3<i32>(u_input.a, 16161i, u_input.a)), max(vec2<i32>(i32(-1i) * -70935i, abs(46378i)), vec2<i32>(~u_input.a, 2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_f_op_f32(f32(-1f) * -1502f), _wgslsmith_f_op_f32(f32(-1f) * -926f))))));
    let var_1 = vec3<bool>(true, true, !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1410f, 1522f)), 1039f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(665f * -593f) - _wgslsmith_f_op_f32(max(1000f, 1001f)))));
    let var_2 = vec2<i32>(u_input.a, -u_input.a) & var_0.b.zx;
    let var_3 = !(!(!vec4<bool>(false, select(true, true, var_1.x), var_1.x, var_1.x)));
    let var_4 = 0i;
    var_0 = func_5(vec4<i32>(min(~var_0.a | var_0.a, min(reverseBits(-21972i), -1i)), func_5(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, u_input.a, 17757i, u_input.a), vec4<i32>(var_0.a, -12342i, 21364i, 2147483647i)), Struct_2(func_1(vec3<bool>(false, var_3.x, var_1.x)), -14194i), Struct_1(0i, vec3<i32>(1i, var_4, var_2.x) & vec3<i32>(-2147483647i, 1i, var_2.x), func_1(vec3<bool>(false, var_3.x, var_1.x)).b.zy), vec3<f32>(_wgslsmith_div_f32(-1080f, -1135f), _wgslsmith_div_f32(-762f, -688f), _wgslsmith_f_op_f32(round(-730f)))).c.x, var_0.a, _wgslsmith_div_i32(i32(-1i) * -var_4, countOneBits(abs(var_0.a)))), Struct_2(func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -12746i, -1037i), max(vec4<i32>(18789i, -7740i, -16296i, var_0.c.x), vec4<i32>(u_input.a, var_4, 48599i, u_input.a))), Struct_2(Struct_1(var_2.x, vec3<i32>(-14075i, var_4, u_input.a), vec2<i32>(u_input.a, -60751i)), -1i), func_1(var_3.yzw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(714f, -932f, -592f))))), _wgslsmith_div_i32(var_2.x, max(~u_input.a, var_4))), func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, ~var_2.x, var_2.x, ~var_4), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 26496i, var_2.x, u_input.a) << (vec4<u32>(38586u, 17606u, 28476u, 24557u) % vec4<u32>(32u)), vec4<i32>(var_2.x, -59877i, var_2.x, -2147483647i))), Struct_2(func_5(vec4<i32>(var_0.c.x, var_0.c.x, -59961i, var_2.x), Struct_2(Struct_1(u_input.a, var_0.b, vec2<i32>(var_4, 23087i)), -2147483647i), func_1(vec3<bool>(true, var_3.x, var_3.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-537f, -269f, -274f), vec3<f32>(-1305f, 367f, -623f)))), -(~u_input.a)), Struct_1(var_4, var_0.b, vec2<i32>(var_0.c.x, 2147483647i) >> (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), vec3<f32>(911f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(select(643f, -185f, true)), !var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1442f), _wgslsmith_f_op_f32(f32(-1f) * -1319f), 1956f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, -1372f, 868f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1529f, -727f, -476f) - vec3<f32>(2451f, 1010f, 190f))))));
    var var_5 = Struct_2(Struct_1(max(0i, min(-8534i, ~var_4)), ~func_5(vec4<i32>(var_2.x, -16472i, 14009i, var_4), Struct_2(Struct_1(9655i, var_0.b, var_0.b.zz), var_2.x), func_1(var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2126f, 452f, -777f))).b, vec2<i32>(select(var_0.c.x, var_0.a, var_1.x), var_0.b.x | u_input.a) ^ _wgslsmith_mult_vec2_i32(select(vec2<i32>(-28811i, var_4), var_2, var_3.x), _wgslsmith_add_vec2_i32(var_2, vec2<i32>(-12193i, var_4)))), ~_wgslsmith_div_i32(-11877i, _wgslsmith_sub_i32(0i, 1i)));
    var_5 = Struct_2(Struct_1(u_input.a, var_5.a.b, vec2<i32>(select(-19820i >> (1u % 32u), var_0.a, all(var_3)), abs(min(var_0.b.x, var_4)))), 0i);
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-var_2.x)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~99935u, 1u) >> (~4294967295u % 32u), 1u), ~(func_3(u_input.a, _wgslsmith_f_op_f32(min(716f, -475f)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_4, var_2.x), vec2<i32>(var_5.b, 0i))) << (~firstLeadingBit(4437u) % 32u)));
}

