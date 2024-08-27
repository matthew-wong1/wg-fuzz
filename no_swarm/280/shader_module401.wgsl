struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), -36641i), vec2<i32>(0i, 1484i), vec2<i32>(0i, 1i), vec2<i32>(-33837i, i32(-2147483648)), vec2<i32>(-27286i, 14523i), vec2<i32>(-55771i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-11807i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, -15823i), vec2<i32>(26694i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(3148i, -324i), vec2<i32>(47673i, 2147483647i), vec2<i32>(2147483647i, -69206i), vec2<i32>(2632i, -10135i), vec2<i32>(i32(-2147483648), 8471i), vec2<i32>(20593i, -14515i), vec2<i32>(-22635i, 1i), vec2<i32>(-16584i, i32(-2147483648)), vec2<i32>(-1i, -1i));

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = 0u;
    var var_1 = vec4<bool>(any(vec3<bool>(all(vec3<bool>(true, false, false)) == true, false, false)), true, any(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true))), true);
    global0 = array<vec2<i32>, 22>();
    global0 = array<vec2<i32>, 22>();
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1278f) - _wgslsmith_div_f32(1477f, 560f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.x, -149f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(680f)))))), reverseBits(-(~vec4<i32>(arg_0.b.x, arg_2.x, arg_0.b.x, 1i) | u_input.b)), vec4<u32>(~_wgslsmith_dot_vec2_u32(abs(u_input.a.wy), vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.wx % vec2<u32>(32u))), 83901u >> (1u % 32u), reverseBits(4294967295u), 36064u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-887f)));
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<vec2<i32>, 22>();
    var var_0 = u_input.b.xz;
    var var_1 = ~(-_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, var_0.x) | vec2<i32>(-2147483647i, var_0.x), vec2<i32>(abs(var_0.x), 2147483647i)));
    global0 = array<vec2<i32>, 22>();
    global0 = array<vec2<i32>, 22>();
    return firstLeadingBit(-1i) != var_0.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(!select(vec3<bool>(true, true, true), vec3<bool>(func_3(1u), false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), 47367u));
    var var_1 = _wgslsmith_f_op_f32(arg_2 * arg_2);
    var var_2 = global1[_wgslsmith_index_u32(u_input.c << ((_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.c, u_input.a.x, 4294967295u, arg_0.x) >> ((u_input.a & u_input.a) % vec4<u32>(32u))) & ~(~(~79017u))) % 32u), 16u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(arg_2, -412f)), firstLeadingBit(firstTrailingBit(u_input.b)), u_input.a);
    var var_4 = Struct_1(1303f, -(~abs(select(u_input.b, var_2.b, false))), vec4<u32>(arg_0.x, max(30996u, 48541u), var_3.c.x & ~_wgslsmith_mod_u32(arg_0.x, 47359u), 4294967295u | _wgslsmith_mult_u32(arg_0.x, var_3.c.x | 7877u)));
    return _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, max(~var_2.c.x, arg_0.x))), select(~arg_0, ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 21685u), ~vec2<u32>(6581u, arg_0.x)), -1004f < arg_2));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(856f, arg_1.a, 381f)))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(max(-435f, arg_1.a)))) + var_0.x), select(vec4<i32>(min(2477i, -29897i), u_input.b.x, reverseBits(-2147483647i), arg_1.b.x), vec4<i32>(u_input.b.x, arg_1.b.x, 47267i, _wgslsmith_mod_i32(-1i, u_input.b.x)), true) << (firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_1.c.x, 4294967295u, arg_1.c.x), arg_1.c)) % vec4<u32>(32u)), ~(~(~(arg_1.c ^ vec4<u32>(arg_0, 73021u, u_input.c, arg_0)))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(min(0u, select(arg_1.c.x, 0u, func_3(u_input.c))), 17537u, 0u, firstTrailingBit(~14601u) ^ 1u), vec4<u32>(_wgslsmith_div_u32(~(1u << (arg_0 % 32u)), u_input.a.x), 1u, ~(arg_1.c.x ^ 18218u) & arg_1.c.x, 0u));
    return global1[_wgslsmith_index_u32(var_2, 16u)];
}

fn func_6(arg_0: Struct_1) -> vec4<f32> {
    global0 = array<vec2<i32>, 22>();
    let var_0 = func_5(arg_0.c.x, Struct_1(-231f, u_input.b, vec4<u32>((u_input.a.x >> (u_input.a.x % 32u)) ^ 1u, u_input.c, 1442u, ~abs(u_input.a.x))), 397u);
    var var_1 = global1[_wgslsmith_index_u32(~139339u, 16u)];
    let var_2 = countOneBits(var_1.c.wzz);
    let var_3 = func_5(arg_0.c.x, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) - _wgslsmith_f_op_f32(-var_1.a)), 380f)), ~var_0.b, vec4<u32>(_wgslsmith_add_u32(u_input.c, var_2.x), 28507u, var_0.c.x, 0u)), u_input.a.x);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1866f * -1402f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a - arg_0.a))) * _wgslsmith_f_op_f32(f32(-1f) * -587f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-691f * _wgslsmith_f_op_f32(round(171f))) + -1391f)), 1262f, _wgslsmith_f_op_f32(var_0.a + -1556f));
}

fn func_7(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-341f - _wgslsmith_f_op_f32(trunc(1245f)))) <= -894f, _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_f32(step(-1390f, -1285f)), vec4<i32>(2147483647i, 0i, arg_2.b.x, -36406i), arg_2.c), vec3<f32>(877f, 430f, -312f), select(reverseBits(vec4<i32>(arg_2.b.x, -2147483647i, u_input.b.x, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, arg_2.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, arg_0, true, false), arg_0)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<bool>(false, arg_0, arg_0), 0u)) + -564f)), all(vec4<bool>(any(vec2<bool>(arg_0, false)), any(vec4<bool>(false, false, true, arg_0)), func_3(~4294967295u), any(vec3<bool>(false, arg_0, arg_0)))));
    global1 = array<Struct_1, 16>();
    var var_1 = arg_2.c;
    var var_2 = vec4<bool>(all(vec4<bool>(arg_0 && var_0, arg_1.x == -1136f, var_0, select(!var_0, arg_0 & true, arg_0 || var_0))), arg_0 | select(all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, false))), arg_0, all(!vec3<bool>(false, true, arg_0))), true, arg_0 | any(select(!vec3<bool>(arg_0, false, false), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, var_0, var_0), vec3<bool>(arg_0, true, true)), select(vec3<bool>(true, var_0, false), vec3<bool>(arg_0, var_0, arg_0), arg_0))));
    var var_3 = arg_1.zy;
    return func_5(u_input.a.x, func_5(0u, arg_2, 0u), _wgslsmith_mult_u32(72524u << (abs(~var_1.x) % 32u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(3861u, 16u)];
    global0 = array<vec2<i32>, 22>();
    var var_1 = func_7(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~(u_input.c << (76610u % 32u)), 16u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(262f, var_0.a, var_0.a), vec3<f32>(-172f, -1208f, var_0.a), vec3<bool>(false, false, false))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a))), select(vec4<i32>(-39680i, -1i, -42158i, u_input.b.x), abs(vec4<i32>(2147483647i, var_0.b.x, var_0.b.x, 1i)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true))))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(step(var_0.a, var_0.a)))), _wgslsmith_f_op_vec4_f32(func_6(func_5(var_0.c.x & func_2(u_input.a.yz, var_0.b.yyy, var_0.a), Struct_1(_wgslsmith_f_op_f32(round(var_0.a)), u_input.b, u_input.a), 1u))), func_5(_wgslsmith_clamp_u32(u_input.c << (firstLeadingBit(6101u) % 32u), u_input.a.x, u_input.c << (_wgslsmith_mod_u32(u_input.c, 4294967295u) % 32u)), global1[_wgslsmith_index_u32(10653u, 16u)], ~_wgslsmith_clamp_u32(~0u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u), 1u)));
    var var_2 = true;
    let var_3 = var_0.c.zw;
    var var_4 = vec3<f32>(-194f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_1.a), _wgslsmith_f_op_f32(step(-683f, var_0.a))))) - _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-var_0.a))), var_1.a);
    var var_5 = func_2(var_0.c.ww, var_0.b.xwz, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1443f + _wgslsmith_f_op_f32(var_1.a - var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * -344f)), -783f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1218f + 473f) - _wgslsmith_f_op_f32(min(var_1.a, 1289f))), _wgslsmith_f_op_f32(-1462f - _wgslsmith_f_op_f32(-440f - -1000f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(var_4.x - var_1.a), -439f, 672f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1000f, var_0.a, -318f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_1.a, 321f, 416f), vec4<f32>(var_4.x, var_1.a, -1012f, 793f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -501f, var_4.x, var_1.a))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1234f, var_1.a, 213f))))))));
}

