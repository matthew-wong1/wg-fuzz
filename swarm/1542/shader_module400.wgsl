struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: vec4<f32>;

var<private> global2: array<bool, 18>;

var<private> global3: array<Struct_2, 31>;

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, 1i)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(global0[_wgslsmith_index_u32(6514u, 17u)], global0[_wgslsmith_index_u32(5791u, 17u)])) << (_wgslsmith_dot_vec4_u32(vec4<u32>(29628u, 4294967295u, 86159u, 23276u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u)) % 32u), 1i)), 1i);
    let var_1 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(~84694u, 4120u), abs(select(vec2<u32>(4294967295u, 50547u), vec2<u32>(68692u, 23450u), vec2<bool>(true, false)) | ~vec2<u32>(1u, 62736u))));
    let var_2 = 37896u;
    global2 = array<bool, 18>();
    global3 = array<Struct_2, 31>();
    return ~0u;
}

fn func_4(arg_0: i32, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_2(~select(~reverseBits(vec2<u32>(45231u, 19287u)), ~select(vec2<u32>(12102u, 1u), vec2<u32>(1u, 4353u), vec2<bool>(global2[_wgslsmith_index_u32(34447u, 18u)], false)), vec2<bool>(false, all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], true, global2[_wgslsmith_index_u32(73269u, 18u)])))));
    var var_1 = vec2<i32>(1i, -31976i) << (var_0.a % vec2<u32>(32u));
    global1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(trunc(-145f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-996f, global1.x))), global4.d.x)), -1353f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-119f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b), -172f))));
    let var_2 = vec3<u32>(var_0.a.x, _wgslsmith_mod_u32(reverseBits(4294967295u), ~0u), ~(~var_0.a.x));
    global4 = Struct_1(global4.a, _wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global4.c * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.a, -544f, global1.x, 531f), global4.c, vec4<bool>(global2[_wgslsmith_index_u32(41220u, 18u)], false, arg_1, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -765f), global1.x, _wgslsmith_f_op_f32(ceil(global4.d.x)), _wgslsmith_f_op_f32(max(global1.x, 403f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global4.a, 943f, 351f) - vec4<f32>(-174f, -300f, global1.x, -722f)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-1274f + global4.a), _wgslsmith_f_op_f32(f32(-1f) * -1243f), global1.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-833f, 270f, global2[_wgslsmith_index_u32(var_0.a.x, 18u)])))), 1f));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.wy) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global4.c.xx, _wgslsmith_f_op_vec2_f32(-global1.wx)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(global4.d))))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    let var_0 = u_input.a.zz;
    global3 = array<Struct_2, 31>();
    global3 = array<Struct_2, 31>();
    let var_1 = abs(~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(11768i, var_0.x, u_input.b, u_input.a.x), vec4<i32>(-1i, var_0.x, u_input.b, 1i)), select(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(11582u, 17u)], 0i, -1i), vec4<i32>(u_input.b, -40347i, -2147483647i, u_input.a.x), vec4<bool>(global2[_wgslsmith_index_u32(6550u, 18u)], global2[_wgslsmith_index_u32(arg_1, 18u)], true, global2[_wgslsmith_index_u32(arg_2, 18u)]))), vec4<i32>(~u_input.a.x, firstLeadingBit(u_input.a.x), ~(-11415i), -1i)));
    var var_2 = vec2<u32>(0u, 38581u);
    return -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(var_1, var_1), var_1), 1i);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, global4.b, -2821f) * global4.c))))));
    global0 = array<i32, 17>();
    var var_0 = func_5(Struct_1(_wgslsmith_div_f32(global1.x, -431f), global1.x, global4.c, _wgslsmith_f_op_vec2_f32(global4.c.ww + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4.c.x, global4.d.x))) + _wgslsmith_f_op_vec2_f32(abs(global4.c.wx))))), select(_wgslsmith_sub_u32(4294967295u, ~4294967295u), arg_1 & ~(arg_1 ^ arg_1), !all(arg_3.zxw) | !(!arg_3.x)), _wgslsmith_sub_u32(arg_1, arg_0), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(1i, global2[_wgslsmith_index_u32(func_3(vec4<f32>(global4.c.x, 848f, 154f, -917f), Struct_1(global4.c.x, global4.a, vec4<f32>(global1.x, global1.x, -1361f, global1.x), vec2<f32>(global1.x, global1.x)), Struct_1(global4.c.x, global1.x, global4.c, vec2<f32>(862f, global1.x))), 18u)]))))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(var_2)), -452f, _wgslsmith_f_op_f32(abs(global4.b))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(global4.d.x + _wgslsmith_f_op_vec4_f32(func_2(~124354u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 42202u, 0u), vec4<u32>(29739u, 1u, 20696u, 1u)), 1u), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, 29564i, u_input.a.x, u_input.a.x), ~vec4<i32>(-61225i, u_input.a.x, 1i, u_input.a.x)), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(24596u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]))).x), _wgslsmith_f_op_f32(f32(-1f) * -770f), arg_0.c, _wgslsmith_f_op_vec4_f32(func_2(~(~(~41070u)), 74878u, min(abs(vec4<i32>(8255i, global0[_wgslsmith_index_u32(56380u, 17u)], 7984i, -16662i) >> (vec4<u32>(62513u, 54351u, 1u, 4559u) % vec4<u32>(32u))), -vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(358u, 17u)], global0[_wgslsmith_index_u32(47597u, 17u)])), !vec4<bool>(!global2[_wgslsmith_index_u32(0u, 18u)], true, global2[_wgslsmith_index_u32(1u, 18u)], all(vec2<bool>(true, true))))).xx);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    global3 = array<Struct_2, 31>();
    global4 = func_6(Struct_1(_wgslsmith_f_op_f32(-1776f - 355f), -349f, _wgslsmith_f_op_vec4_f32(func_2(844u, ~_wgslsmith_sub_u32(19982u, arg_2.a.x), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b, -11488i, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(7252u, 17u)], u_input.a.x, u_input.a.x, -1i))), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec2_f32(-global4.c.zy)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(469f, _wgslsmith_f_op_f32(trunc(803f))))));
    global0 = array<i32, 17>();
    global4 = func_6(Struct_1(1664f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.d.x, global1.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global4.c))), global4.d), global4.c.yx);
    let var_0 = Struct_2(arg_2.a);
    return func_6(func_6(func_6(Struct_1(global1.x, -1000f, vec4<f32>(global4.b, global4.b, global4.c.x, -2012f), vec2<f32>(-849f, -308f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(1u, var_0.a.x, vec4<i32>(1i, u_input.b, global0[_wgslsmith_index_u32(arg_2.a.x, 17u)], 1i), vec4<bool>(global2[_wgslsmith_index_u32(0u, 18u)], false, true, arg_0.x))).zw)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-326f, global4.c.x) * global1.zw), global4.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -751f) - _wgslsmith_div_vec2_f32(vec2<f32>(-813f, _wgslsmith_div_f32(-1000f, 1787f)), vec2<f32>(_wgslsmith_f_op_f32(step(global4.a, global4.d.x)), -1000f)))).a;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = select(reverseBits(~(~(~vec2<i32>(-15569i, -1i)))), abs(vec2<i32>(func_5(arg_1, 1u, ~17992u, _wgslsmith_f_op_vec2_f32(sign(global1.yw))), ~(2147483647i << (0u % 32u)))), (28702u < _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 167u, 4294967295u)), vec3<u32>(1u, 1u, 1u))) && true);
    var var_1 = vec2<bool>(true, true);
    global4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.d.x))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 65256u)), ~23166u, abs(vec4<i32>(global0[_wgslsmith_index_u32(0u, 17u)], -18639i, 2147483647i, -91958i)), !vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(1327u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]))).x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1900f - 1132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(2147483647i, _wgslsmith_div_f32(arg_0.c.x, 845f) <= arg_0.b)).x), _wgslsmith_f_op_vec4_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_1.b)) + global4.d)))));
    let var_2 = Struct_1(arg_1.b, -895f, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(f32(-1f) * -1594f)))), _wgslsmith_f_op_f32(-arg_0.c.x), 1f, arg_1.b), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.b), arg_1.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(~var_0.x, global2[_wgslsmith_index_u32(func_3(arg_1.c, arg_1, arg_1), 18u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1159f, arg_0.a) * _wgslsmith_f_op_vec2_f32(-global1.zz)))));
    var var_3 = func_6(Struct_1(-1000f, 482f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(2627f, arg_1.a, var_1.x)), 723f) * vec2<f32>(_wgslsmith_div_f32(440f, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -476f)))), global4.d);
    return _wgslsmith_mult_u32(~firstLeadingBit(56897u), select(_wgslsmith_mult_u32(61863u, 46827u), 9584u, !var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1568f * _wgslsmith_f_op_f32(global1.x * 752f))) - global1.x), -3762f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.a + 2035f)))), global4.d.x, global4.c.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.d.x, global4.d.x) + vec2<f32>(-333f, 1615f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))))));
    let var_1 = !(!vec3<bool>(select(all(vec3<bool>(global2[_wgslsmith_index_u32(51972u, 18u)], true, global2[_wgslsmith_index_u32(1u, 18u)])), true, true), true, !(global2[_wgslsmith_index_u32(74434u, 18u)] & global2[_wgslsmith_index_u32(4294967295u, 18u)])));
    let var_2 = vec3<u32>(4294967295u, ~select(max(_wgslsmith_div_u32(4294967295u, 45597u), ~1u), 94230u, true), max(_wgslsmith_div_u32(3401u >> (1u % 32u), ~1u), func_7(Struct_1(-229f, _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_2(vec2<u32>(4294967295u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(589f, -625f, global4.c.x, var_0.b), vec4<f32>(1000f, 589f, var_0.a, var_0.d.x))), var_0.d), Struct_1(-413f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_vec4_f32(var_0.c * global4.c), _wgslsmith_f_op_vec2_f32(-global4.c.xw)))));
    var var_3 = vec4<bool>(global2[_wgslsmith_index_u32(var_2.x << (75669u % 32u), 18u)], !(_wgslsmith_clamp_i32(1i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, var_2.x), 17u)], u_input.b) < u_input.b), false, false);
    let var_4 = select(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 51341u, var_2.x, var_2.x), vec4<u32>(var_2.x, 1u, var_2.x, var_2.x))), ~firstLeadingBit(vec4<u32>(1u, 74915u, var_2.x, 1u))) << (~(~(~1u)) % 32u), 4294967295u, var_3.x);
    var var_5 = vec3<i32>(~792i, global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~var_2.x, 1u) & 1u), 17u)], _wgslsmith_div_i32(~func_5(func_6(Struct_1(1031f, var_0.a, global4.c, vec2<f32>(global1.x, global4.a)), var_0.d), var_4, _wgslsmith_sub_u32(var_4, var_2.x), global1.yw), 1i));
    let var_6 = _wgslsmith_dot_vec2_i32(-u_input.a.yy, vec2<i32>(-global0[_wgslsmith_index_u32(~var_2.x, 17u)], var_5.x));
    var var_7 = var_3.x || true;
    var_3 = !select(!vec4<bool>(true, var_1.x, var_3.x, var_3.x), !vec4<bool>(var_1.x, true, global0[_wgslsmith_index_u32(4294967295u, 17u)] != 1i, var_3.x), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, var_1.x, true), false), select(vec4<bool>(var_1.x, var_3.x, true, true), vec4<bool>(global2[_wgslsmith_index_u32(var_4, 18u)], false, true, var_1.x), var_1.x), !vec4<bool>(global2[_wgslsmith_index_u32(52211u, 18u)], true, true, false)), !(!vec4<bool>(var_1.x, true, true, var_1.x)), select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(var_1.x, true, global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]), var_3.x), vec4<bool>(global2[_wgslsmith_index_u32(var_4, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], false, global2[_wgslsmith_index_u32(var_2.x, 18u)]), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(var_5.yy, u_input.a.zy, ~var_5.zx), var_4, _wgslsmith_f_op_vec2_f32(floor(global4.d)));
}

