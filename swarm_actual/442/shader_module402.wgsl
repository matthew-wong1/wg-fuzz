struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(4294967295u, 1u, 17471u, 1u), vec4<u32>(19888u, 58366u, 70880u, 4294967295u));

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 25>;

var<private> global4: vec4<f32> = vec4<f32>(1132f, 756f, -365f, -598f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> bool {
    let var_0 = global2.a;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))) + arg_1)));
    global0 = array<i32, 6>();
    var var_2 = true;
    global0 = array<i32, 6>();
    return abs(firstTrailingBit(reverseBits(firstLeadingBit(-2147483647i)))) < -1i;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = select(!vec4<bool>(false, !global2.a.e, true, func_3(-240f, 1089f) || false), !select(vec4<bool>(select(global2.a.e, true, arg_0), any(vec3<bool>(true, global2.a.d, arg_0)), true, global2.a.d), !vec4<bool>(true, false, arg_0, false), select(select(vec4<bool>(arg_0, true, false, global2.a.e), vec4<bool>(global2.a.e, true, true, arg_0), true), select(vec4<bool>(global2.a.d, arg_0, true, false), vec4<bool>(global2.a.d, false, global2.a.d, false), vec4<bool>(false, global2.a.e, true, true)), !vec4<bool>(false, true, global2.a.d, false))), vec4<bool>(true, false, all(vec2<bool>(!arg_0, true)), !(global0[_wgslsmith_index_u32(u_input.b, 6u)] > global0[_wgslsmith_index_u32(reverseBits(74731u), 6u)])));
    global0 = array<i32, 6>();
    let var_1 = global2.a;
    var var_2 = Struct_2(global2.a, vec3<i32>(-62026i, -20856i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global2.b, -vec3<i32>(u_input.a, 21512i, 0i)), vec3<i32>(global0[_wgslsmith_index_u32(global2.c, 6u)], i32(-1i) * -36114i, global0[_wgslsmith_index_u32(~86555u, 6u)]))), _wgslsmith_dot_vec4_u32(~(select(vec4<u32>(u_input.b, global2.c, 47832u, 4294967295u), global1[_wgslsmith_index_u32(u_input.b, 2u)], var_0) | firstLeadingBit(vec4<u32>(1u, global2.c, global2.c, global2.c))), global1[_wgslsmith_index_u32(min(global2.c, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b, 2u)], vec4<u32>(global2.c, 4294967295u, u_input.b, 0u)) >> (1u % 32u)), 2u)]));
    global3 = array<Struct_2, 25>();
    return -1574f;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    let var_0 = 24648u;
    global4 = vec4<f32>(-1773f, global2.a.a.x, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -149f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c.x)) + -232f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a.c.x - -578f), _wgslsmith_f_op_f32(f32(-1f) * -274f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(global2.a.c, vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, 242f, false)))), _wgslsmith_f_op_f32(exp2(global2.a.c.x)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global4.yz, vec2<f32>(arg_1, 695f)), vec2<f32>(-863f, 1000f), select(vec2<bool>(global2.a.e, global2.a.e), vec2<bool>(true, global2.a.e), vec2<bool>(false, global2.a.e)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_1))))), global2.a.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-836f, _wgslsmith_f_op_f32(floor(565f)), -1000f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(global4.zxw, vec3<f32>(arg_1, global2.a.c.x, global4.x))), vec3<f32>(1000f, global4.x, -1000f), !vec3<bool>(global2.a.d, true, global2.a.e))), select(!vec3<bool>(global2.a.d, false, true), !vec3<bool>(global2.a.d, false, false), select(vec3<bool>(true, global2.a.e, global2.a.e), vec3<bool>(global2.a.d, global2.a.d, global2.a.e), global2.a.d)))), any(vec4<bool>(true, global2.a.d || true, u_input.d != global2.b.x, any(vec4<bool>(global2.a.d, global2.a.e, global2.a.e, global2.a.d)))), global2.a.d), -reverseBits(~abs(vec3<i32>(1i, 0i, -125479i))), ~(var_0 >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(5784u, 2u)]), abs(73843u)) % 32u)));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a.c.zx), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.a.a.x, var_2.a.c.x, global4.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global2.a.c.x, -1000f)) + vec3<f32>(134f, global4.x, var_1.x))), true, select(any(vec3<bool>(var_2.a.e, var_2.a.e, var_2.a.d)), global2.a.e, var_2.a.e)), ~vec3<i32>(~(-13610i | var_2.b.x), 1i, _wgslsmith_mod_i32(-u_input.a, u_input.d)), ~(_wgslsmith_mult_u32(var_0, var_2.c) >> (_wgslsmith_sub_u32(var_0, 0u) % 32u)) ^ u_input.b);
    return 29221i;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = 19499u;
    var var_1 = func_4(global2.b.yx ^ vec2<i32>(global0[_wgslsmith_index_u32(~(~0u), 6u)], 71268i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-423f, _wgslsmith_f_op_f32(func_2(true)))), _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(false, false, false))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x + global2.a.c.x))))));
    let var_2 = !select(select(vec3<bool>(global2.a.c.x < 190f, false, global2.a.d), vec3<bool>(false, false, any(vec2<bool>(global2.a.e, global2.a.e))), false), vec3<bool>(true, !(!global2.a.d), func_3(arg_0.x, _wgslsmith_div_f32(global2.a.a.x, -1493f))), !(!global2.a.e));
    let var_3 = select(!select(!var_2.yz, vec2<bool>(true, true), select(var_2.zz, vec2<bool>(true, false), select(vec2<bool>(var_2.x, global2.a.e), vec2<bool>(var_2.x, global2.a.e), vec2<bool>(var_2.x, false)))), select(var_2.xx, select(select(vec2<bool>(global2.a.e, var_2.x), vec2<bool>(global2.a.e, true), select(vec2<bool>(global2.a.e, true), var_2.zx, global2.a.e)), vec2<bool>(true, false), select(var_2.zz, var_2.xz, var_2.yx)), any(vec4<bool>(true, false, true, -212f >= global2.a.c.x))), _wgslsmith_dot_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(26882u, 6u)], global2.a.b, 1i), vec3<i32>(-19613i, -23457i, global0[_wgslsmith_index_u32(global2.c, 6u)])), global2.b), vec3<i32>(0i, u_input.d, -1i)) > -24999i);
    global4 = vec4<f32>(_wgslsmith_f_op_f32(1524f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x)))))), 653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a.x - 144f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-836f, global4.x)), _wgslsmith_f_op_f32(global2.a.a.x * 707f)) + vec2<f32>(_wgslsmith_div_f32(239f, _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(-486f - _wgslsmith_f_op_f32(-global2.a.c.x)))), _wgslsmith_sub_i32(firstLeadingBit(global0[_wgslsmith_index_u32((1u & var_0) | select(4294967295u, u_input.b, false), 6u)]), global2.a.b), global2.a.c, global2.a.b != min(select(~2147483647i, -global0[_wgslsmith_index_u32(u_input.c.x, 6u)], !var_3.x), ~_wgslsmith_mod_i32(-9814i, -34404i)), all(!select(select(vec4<bool>(true, true, global2.a.e, true), vec4<bool>(var_3.x, global2.a.e, false, true), vec4<bool>(global2.a.d, true, var_3.x, global2.a.d)), select(vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(var_3.x, false, var_2.x, true), vec4<bool>(false, true, true, var_2.x)), var_3.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = true;
    var var_1 = ~(arg_1 | reverseBits(arg_1)) ^ (arg_1 ^ arg_1);
    var var_2 = _wgslsmith_f_op_f32(select(1000f, global4.x, false));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.x)), global4.x);
    let var_4 = vec2<u32>(global2.c, global2.c);
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(global2.a.c.yy - vec2<f32>(-472f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(func_5(func_1(vec3<f32>(-141f, -1000f, -722f)), -vec4<i32>(global2.a.b, global0[_wgslsmith_index_u32(global2.c, 6u)], -2147483647i, -38063i))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(_wgslsmith_f_op_vec3_f32(select(global4.wyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, global4.x, global4.x)), vec3<bool>(true, true, global2.a.d)))).a.x, -1665f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(464f * 1000f))))), -1245f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(global2.a.c.x)), -397f, global4.x, global4.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2814f, 1612f, 302f, global4.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1513f, 1413f, 421f, global4.x)))))), select(!(!vec4<bool>(global2.a.d, true, global2.a.e, true)), !select(vec4<bool>(global2.a.d, global2.a.d, true, true), vec4<bool>(true, global2.a.d, global2.a.e, false), true), select(vec4<bool>(global2.a.e, global2.a.e, true, global2.a.e), vec4<bool>(global2.a.e, true, global2.a.e, false), !global2.a.d)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1781f);
    global0 = array<i32, 6>();
    var var_3 = Struct_1(func_1(var_1.zzx).a, _wgslsmith_div_i32(max(global2.a.b << (~4294967295u % 32u), _wgslsmith_dot_vec2_i32(global2.b.zx, vec2<i32>(global0[_wgslsmith_index_u32(51995u, 6u)], 2147483647i))), u_input.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(-628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f + global4.x) * var_0.x), -1399f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(global4.xxy))))), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1198f - -1214f), global4.x, _wgslsmith_f_op_f32(f32(-1f) * -712f)))).e, global2.a.d);
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(func_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(min(var_0.x, global4.x)), global2.a.e)), -1000f, func_1(_wgslsmith_f_op_vec3_f32(floor(var_1.xxw))).c.x)).c));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.x, var_0.x, 443f, -1160f), vec4<f32>(1551f, global2.a.a.x, var_3.a.x, var_0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(646f, var_4.x, -359f, var_1.x) - vec4<f32>(var_3.c.x, 1000f, global4.x, -1644f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-719f, vec3<i32>(0i << (global2.c % 32u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b ^ u_input.c.x, 1u << (u_input.c.x % 32u)), 6u)] ^ func_4(global2.b.zy, var_0.x), countOneBits(-53703i)), ~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b, 2u)] << (vec4<u32>(23870u, u_input.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u))), var_4.x, vec4<u32>(~_wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.b, 27557u, global2.c))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global2.c, 1u, 46171u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global2.c, u_input.c.x, u_input.b), vec4<u32>(global2.c, 1260u, u_input.c.x, global2.c)))), 84813u, select(countOneBits(1u), 41575u, all(vec4<bool>(global2.a.d, true, global2.a.d, global2.a.d)))));
}

