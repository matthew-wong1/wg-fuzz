struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(2147483647i, 10513i, 0i, -22621i, -1i, -14784i, -1i, 7214i, 1i, 47269i, -36475i, 0i, 1i, 1i, 1i, 2147483647i, 1i, 36806i, 1i, -4036i, -11429i, 27080i, 2147483647i, -14614i, 1i, -57883i);

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<u32>(68343u, 32961u, 0u), vec4<i32>(-32190i, 1197i, i32(-2147483648), 36068i), -980f), Struct_1(vec3<u32>(1u, 64803u, 1u), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 6406i), 1071f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 16634u), vec4<i32>(2147483647i, 1i, 56479i, i32(-2147483648)), -887f), Struct_1(vec3<u32>(502u, 0u, 4294967295u), vec4<i32>(68951i, 2147483647i, i32(-2147483648), 4874i), -678f), Struct_1(vec3<u32>(0u, 0u, 113087u), vec4<i32>(1i, 0i, -30307i, 10915i), -1959f), Struct_1(vec3<u32>(14866u, 0u, 1u), vec4<i32>(2147483647i, 1i, 0i, 18384i), 1068f), Struct_1(vec3<u32>(10259u, 1646u, 0u), vec4<i32>(0i, 1i, -32593i, 27869i), 1032f), Struct_1(vec3<u32>(53153u, 84333u, 37146u), vec4<i32>(-20383i, 16578i, -1i, -1i), -1211f), Struct_1(vec3<u32>(0u, 23565u, 16887u), vec4<i32>(i32(-2147483648), 17508i, 74716i, -46912i), -1822f), Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec4<i32>(0i, 2147483647i, -33969i, -45450i), 596f), Struct_1(vec3<u32>(22867u, 0u, 0u), vec4<i32>(1i, -12243i, 1i, 0i), -311f), Struct_1(vec3<u32>(1u, 50993u, 37034u), vec4<i32>(i32(-2147483648), 32894i, 1i, 1i), -1266f), Struct_1(vec3<u32>(18549u, 0u, 1307u), vec4<i32>(2147483647i, 44319i, 2147483647i, 0i), -2117f), Struct_1(vec3<u32>(30024u, 0u, 0u), vec4<i32>(-28527i, i32(-2147483648), 0i, -1i), 263f), Struct_1(vec3<u32>(0u, 0u, 60191u), vec4<i32>(0i, 2147483647i, 59742i, 57308i), -552f), Struct_1(vec3<u32>(4294967295u, 30764u, 1u), vec4<i32>(0i, 0i, 7846i, -15050i), 1714f), Struct_1(vec3<u32>(4294967295u, 0u, 12794u), vec4<i32>(2147483647i, -1i, 0i, -6680i), -259f), Struct_1(vec3<u32>(45775u, 18u, 4294967295u), vec4<i32>(2147483647i, 12731i, -1i, 0i), 360f), Struct_1(vec3<u32>(1u, 59229u, 67336u), vec4<i32>(2147483647i, -32116i, -11867i, -37022i), -826f), Struct_1(vec3<u32>(26224u, 4294967295u, 63484u), vec4<i32>(105574i, -64992i, 1357i, 6270i), -1358f), Struct_1(vec3<u32>(0u, 1u, 0u), vec4<i32>(0i, 2147483647i, 87095i, 1i), 1418f), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec4<i32>(1i, -14039i, -36462i, -20030i), 484f));

var<private> global3: Struct_1;

var<private> global4: array<Struct_3, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<bool> {
    var var_0 = any(select(vec2<bool>(true, _wgslsmith_f_op_f32(trunc(-1338f)) <= global3.c), select(vec2<bool>(true, true), vec2<bool>(false, global1.b.b.x != 1i), true), any(vec4<bool>(false, true, all(vec2<bool>(true, false)), 1i <= u_input.d))));
    global0 = array<i32, 26>();
    var var_1 = Struct_2(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, ~global3.a.x <= ~u_input.c, any(vec2<bool>(true, true)) | true), select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, false)), 2147483647i < global0[_wgslsmith_index_u32(global1.b.a.x, 26u)], true, true))), ~select(u_input.b.xy, ~select(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 34242u), true), (global1.b.a.x > 4302u) & false), all(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), all(vec3<bool>(true, false, true)))), global1.b.b.x);
    global2 = array<Struct_1, 22>();
    let var_2 = abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.b.a.x, var_1.b.x, u_input.c, 40323u)), ~countOneBits(max(vec4<u32>(9109u, global3.a.x, 0u, global3.a.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.c)))));
    return vec4<bool>(all(select(!vec2<bool>(false, var_1.a.x), vec2<bool>(true, any(vec3<bool>(var_1.a.x, false, true))), var_1.a.xx)), ~(-_wgslsmith_add_i32(u_input.d, global1.b.b.x)) > -(select(0i, -49177i, false) >> (8560u % 32u)), !var_1.c, -988f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.a.c, global1.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -715f))))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(!(!select(vec4<bool>(false, true, true, false), func_3(), vec4<bool>(false, false, false, false))), countOneBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, global1.a.a.x) & _wgslsmith_mult_vec2_u32(vec2<u32>(global3.a.x, 0u), global3.a.xz), global3.a.yz)), true, _wgslsmith_dot_vec3_i32(min(reverseBits(select(global3.b.zww, vec3<i32>(2147483647i, -1i, -66122i), vec3<bool>(false, false, false))), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(global3.b.zzx, global1.a.b.zzy), ~2147483647i)), global3.b.yyy >> (global3.a % vec3<u32>(32u))));
    var var_1 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(~(~abs(vec4<u32>(global1.b.a.x, var_0.b.x, arg_0, 1u)))), vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), arg_0, _wgslsmith_dot_vec2_u32(abs(u_input.b.xz), ~_wgslsmith_add_vec2_u32(global1.b.a.zz, vec2<u32>(4294967295u, u_input.a))), _wgslsmith_clamp_u32(4294967295u, reverseBits(~41835u), global3.a.x)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 87744u, 18561u, global1.a.a.x) ^ vec4<u32>(u_input.c, global3.a.x, 3555u, 0u), countOneBits(vec4<u32>(u_input.c, 1u, 0u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, var_0.b.x, var_0.b.x, 74581u), vec4<u32>(global3.a.x, 17590u, var_0.b.x, global3.a.x)))));
    global1 = global4[_wgslsmith_index_u32(arg_0, 14u)];
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(global1.b.a.x, 22u)], global2[_wgslsmith_index_u32(min(global1.a.a.x, firstTrailingBit(1u)), 22u)]);
    var var_3 = reverseBits(1u);
    return var_2.a;
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = select(!vec3<bool>(global3.a.x > u_input.b.x, true, any(vec2<bool>(true, true))), select(select(func_3().xwy, vec3<bool>(select(true, true, true), 0u != u_input.b.x, func_3().x), ~9750u == (global1.a.a.x << (0u % 32u))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), (_wgslsmith_sub_i32(-2147483647i, -1269i) == select(0i, -27419i, true)) && true), !vec3<bool>(true, false, any(vec4<bool>(false, true, true, true)) == (11308i <= global3.b.x)));
    global3 = Struct_1(global3.a, vec4<i32>(abs(_wgslsmith_mult_i32(-31066i, ~51027i)), global1.a.b.x, -select(_wgslsmith_sub_i32(arg_0.b.x, u_input.d), global3.b.x, true), -_wgslsmith_clamp_i32(-global3.b.x, global1.a.b.x, u_input.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-710f, 1198f)), _wgslsmith_f_op_f32(select(-1126f, arg_0.c, false)))), global1.a.c, 100057u != global1.a.a.x)))));
    global0 = array<i32, 26>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1686f + global1.b.c), _wgslsmith_f_op_f32(f32(-1f) * -1833f), true)))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(210f, _wgslsmith_f_op_f32(abs(global3.c)))), _wgslsmith_f_op_f32(round(var_1))));
    return 2147483647i;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> i32 {
    let var_0 = arg_0.x;
    global1 = global4[_wgslsmith_index_u32(global3.a.x, 14u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 943f, global3.c, arg_0.x), vec4<f32>(-1925f, var_0, -1619f, -878f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.c, global3.c, 497f, -1263f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-537f, arg_0.x, -153f, global3.c)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, 818f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, 1000f, 670f, 358f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, global3.c, global1.b.c, arg_0.x) - vec4<f32>(arg_0.x, arg_3, -930f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 138f, arg_0.x, 1171f) + vec4<f32>(213f, 137f, global1.b.c, 702f)))))));
    var var_2 = true;
    let var_3 = global3.c;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(34076i, -49057i, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(39524u, _wgslsmith_mod_u32(u_input.a, global3.a.x)), 26u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global3.b.ww >> (vec2<u32>(4294967295u, 21622u) % vec2<u32>(32u)), select(global3.b.wy, global3.b.wx, vec2<bool>(false, false))), _wgslsmith_mult_i32(~(-13296i), global0[_wgslsmith_index_u32(37852u, 26u)]), func_4(func_2(global3.a.x))), vec3<i32>(~(-arg_1), global3.b.x, global0[_wgslsmith_index_u32(~global1.a.a.x, 26u)] >> (arg_2.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    global1 = Struct_3(global1.b, Struct_1(_wgslsmith_div_vec3_u32(global1.b.a, u_input.b), vec4<i32>(~(~global1.b.b.x), firstTrailingBit(~global3.b.x), -4895i, func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(308f, global1.a.c, global1.a.c))), i32(-1i) * -1i, vec3<u32>(var_0.a.x, 27310u, 4294967295u), global3.c)), var_0.c));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.c))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c)) - _wgslsmith_f_op_f32(abs(1466f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-938f - global1.a.c)), -417f));
    global4 = array<Struct_3, 14>();
    var var_3 = Struct_2(vec4<bool>(all(select(vec2<bool>(true, true), func_3().yw, select(false, true, true))), any(vec3<bool>(any(vec3<bool>(false, false, false)), true, true)), true, true), global3.a.zx, true, global3.b.x);
    var var_4 = vec3<i32>(_wgslsmith_dot_vec3_i32(global1.b.b.wzz, _wgslsmith_mult_vec3_i32(-var_0.b.zzz, -global3.b.www)), func_4(global1.b), _wgslsmith_sub_i32(-8720i, countOneBits(u_input.d) & 28555i) ^ max(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(435u, 26u)], var_3.d) >> (45743u % 32u), ~18419i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.d, -1i), vec4<u32>(~(~global3.a.x), func_2(4294967295u).a.x, var_3.b.x, u_input.c), firstLeadingBit(global1.b.b.wzx), _wgslsmith_dot_vec3_i32(select(var_0.b.yxx, ~vec3<i32>(var_3.d, 4569i, -46335i), select(var_3.a.xyx, vec3<bool>(false, true, var_3.a.x), vec3<bool>(var_3.c, var_3.a.x, false))), global1.b.b.zwz) & global1.b.b.x, min(vec4<u32>(var_3.b.x, global3.a.x, var_0.a.x, firstTrailingBit(var_3.b.x)), vec4<u32>(_wgslsmith_clamp_u32(~var_3.b.x, 55837u, ~global3.a.x), ~(~global3.a.x), ~75440u, 37864u)));
}

