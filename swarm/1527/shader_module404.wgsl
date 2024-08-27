struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: array<vec3<u32>, 13>;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-12707i, 0i, 0i), vec3<i32>(0i, 0i, 44731i), vec3<i32>(-1i, 0i, 5366i), vec3<i32>(-36216i, 18285i, -473i), vec3<i32>(i32(-2147483648), 2147483647i, 21545i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(55021i, 0i, 0i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-25489i, -1i, 1i), vec3<i32>(i32(-2147483648), -36095i, 28359i), vec3<i32>(42163i, 27023i, -1i), vec3<i32>(-7470i, 33931i, 2147483647i), vec3<i32>(2147483647i, 1i, 70892i), vec3<i32>(-20467i, -20702i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 22711i), vec3<i32>(0i, 60563i, -3088i), vec3<i32>(2147483647i, -31052i, 37487i), vec3<i32>(10655i, -1i, -6528i), vec3<i32>(-36916i, 1i, -34410i), vec3<i32>(-52384i, 35104i, 0i), vec3<i32>(0i, -9751i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 37201i, 0i));

var<private> global3: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(961f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f * _wgslsmith_f_op_f32(abs(-1575f)))) + 333f)));
    let var_1 = select(select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))))), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), u_input.a.x == 47891u), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true)), true), !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))));
    global1 = array<vec3<u32>, 13>();
    let var_2 = !(!select(var_1.ww, vec2<bool>(var_0 >= var_0, true), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x))));
    global2 = array<vec3<i32>, 22>();
    return _wgslsmith_f_op_f32(abs(1393f));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(1088f, -846f), _wgslsmith_f_op_f32(-263f - 1715f), _wgslsmith_f_op_f32(432f + -334f), _wgslsmith_f_op_f32(429f - 1090f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-970f, -2843f, 867f, 1584f), vec4<f32>(-263f, 737f, -209f, 422f)))))), 4294967295u, select(vec3<u32>(55810u, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(32092u, 13u)], global1[_wgslsmith_index_u32(54941u, 13u)], vec3<u32>(1u, u_input.a.x, u_input.a.x)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)) << (((global1[_wgslsmith_index_u32(0u, 13u)] ^ vec3<u32>(u_input.a.x, u_input.a.x, 0u)) & vec3<u32>(u_input.a.x, 45440u, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1446f)), _wgslsmith_f_op_f32(1000f * -1247f), true)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-447f, 111f, -1108f, -520f)))), ~u_input.a.x, ~(~abs(global1[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1344f - -372f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.b, u_input.b, -51237i))), 954f)), _wgslsmith_f_op_f32(func_3(-u_input.d.wyz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(144f, 1743f, true))), -1622f), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(20319u, u_input.a.x, u_input.a.x, u_input.a.x)), 48142u), _wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(33402u, 13u)], ~vec3<u32>(34781u, u_input.a.x, u_input.a.x)) & abs(vec3<u32>(0u, 40822u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-350f + -2110f), _wgslsmith_f_op_f32(-592f + 822f))))));
    return vec2<bool>(!(select(u_input.d.x, ~u_input.b, true) != ~(-14909i)), (any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))) | true) & (!(u_input.a.x != 8086u) || true));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_4, 29>();
    var var_0 = Struct_5(select((vec3<i32>(u_input.b, arg_1, 0i) & arg_3) ^ arg_3, vec3<i32>(arg_3.x, 7130i, _wgslsmith_mult_i32(-37525i, u_input.d.x)), all(vec3<bool>(true, false, true)) && true) << (countOneBits(global1[_wgslsmith_index_u32(u_input.a.x << ((u_input.a.x | u_input.a.x) % 32u), 13u)]) % vec3<u32>(32u)), Struct_2(!select(!vec4<bool>(arg_0.x, true, arg_0.x, false), !vec4<bool>(false, false, arg_0.x, false), !vec4<bool>(arg_0.x, false, true, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(489f))), arg_2.x)), Struct_1(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(arg_2.x, arg_2.x), -885f), u_input.a.x, global1[_wgslsmith_index_u32(48733u, 13u)], arg_2.x), 0u <= u_input.a.x), select(vec3<bool>(u_input.a.x <= u_input.a.x, true, arg_0.x), select(!(!vec3<bool>(arg_0.x, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, false, false), arg_0.x), arg_0.x), !(!vec3<bool>(false, arg_0.x, true))), vec3<bool>(any(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.x)), any(vec3<bool>(arg_0.x, arg_0.x, false)), all(!vec3<bool>(arg_0.x, arg_0.x, true)))), abs(u_input.a.x));
    var var_1 = true != var_0.c.x;
    let var_2 = any(!(!var_0.b.a));
    let var_3 = -2147483647i;
    return var_0.b.c;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5, arg_2: i32) -> vec3<bool> {
    var var_0 = func_4(select(func_2(), arg_1.c.yz, true), max(-_wgslsmith_dot_vec4_i32(u_input.d, ~u_input.d), select(min(_wgslsmith_sub_i32(arg_2, 16472i), countOneBits(arg_2)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(24065i, -23555i), vec2<i32>(arg_2, 2147483647i)), arg_1.b.d)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.d, arg_0.c.d, 831f, arg_0.b.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b, arg_1.b.b, arg_0.b.d, -975f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c.a.x, -1193f, -1283f, arg_1.b.b)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, 806f, arg_1.b.b, arg_0.a.a.x)), _wgslsmith_f_op_vec4_f32(round(arg_1.b.c.a)), arg_1.b.d)), vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.b.d, arg_0.a.d)), _wgslsmith_f_op_f32(arg_1.b.b - -103f), _wgslsmith_div_f32(arg_0.c.d, arg_1.b.c.d), 362f))), any(select(vec3<bool>(arg_1.b.d, false, false), vec3<bool>(false, arg_1.c.x, false), arg_1.c.x & true)))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-66485i, -2147483647i, -1757i)), firstLeadingBit(vec3<i32>(-37518i, -1i, u_input.b))), 1i | _wgslsmith_add_i32(-1i, u_input.b)), 0i, -7745i));
    let var_1 = Struct_5(-vec3<i32>(-1i, u_input.b, -2147483647i), Struct_2(arg_1.b.a, var_0.a.x, func_4(!vec2<bool>(true, arg_1.b.a.x), _wgslsmith_div_i32(u_input.d.x, -18480i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b.c.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, -504f, 109f, arg_0.a.d))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2298i, 30271i, 1i), u_input.d.zwy, vec3<i32>(-22308i, u_input.d.x, -1i)) | arg_1.a), all(vec2<bool>(arg_1.b.d, all(arg_1.b.a.xzx)))), arg_1.c, 5490u);
    global3 = abs(~(~(u_input.a.x ^ arg_1.d) & _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 7046u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.a.b, arg_1.b.c.c.x), vec3<u32>(var_1.b.c.c.x, arg_0.b.c.x, var_1.d)), ~4294967295u)));
    global0 = array<Struct_4, 29>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(479f, -1088f, var_1.b.b, 1000f) - func_4(vec2<bool>(var_1.c.x, arg_1.b.a.x), var_1.a.x, var_0.a, global2[_wgslsmith_index_u32(0u, 22u)]).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.a.x, 629f, 523f)) + _wgslsmith_f_op_vec4_f32(-arg_0.a.a)))) * arg_1.b.c.a), 0u, select(countOneBits(vec3<u32>(u_input.a.x, ~0u, 0u ^ var_1.b.c.c.x)), (~vec3<u32>(1u, 58413u, arg_1.d) << ((vec3<u32>(var_0.c.x, 4294967295u, 90708u) >> (vec3<u32>(var_0.b, var_1.b.c.b, 65961u) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<u32>(1u, abs(var_1.d), arg_1.d), var_1.b.a.zyy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.b, 1296f) * -719f)))));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(!func_1(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_5(vec3<i32>(u_input.c, -6847i, -30478i), Struct_2(vec4<bool>(false, false, true, false), -585f, Struct_1(vec4<f32>(-1060f, 318f, 1186f, 448f), u_input.a.x, vec3<u32>(90814u, 28987u, u_input.a.x), -562f), true), vec3<bool>(false, true, false), 39001u), 23994i)) != (-firstLeadingBit(4882i) > firstLeadingBit(firstTrailingBit(1i)));
    var var_1 = vec4<bool>(true, var_0, true, abs(~func_4(vec2<bool>(var_0, var_0), u_input.c, vec4<f32>(-1061f, -845f, -299f, 1000f), vec3<i32>(2147483647i, 0i, 62557i)).c.x) != ~4294967295u);
    global3 = ~(_wgslsmith_sub_u32(0u, func_4(var_1.yw, 0i, vec4<f32>(-308f, -688f, 1412f, -839f), vec3<i32>(u_input.d.x, 1i, u_input.b)).c.x) | ((44348u ^ min(u_input.a.x, 4294967295u)) | 62966u));
    global1 = array<vec3<u32>, 13>();
    let var_2 = -1212f;
    let var_3 = !select(vec2<bool>(_wgslsmith_f_op_f32(step(var_2, var_2)) != _wgslsmith_f_op_f32(func_3(vec3<i32>(-927i, -2147483647i, u_input.b))), !(!var_1.x)), select(!var_1.yw, var_1.ww, func_2().x), var_1.yw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(abs(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-59088i, -6499i, -24931i, 56509i), u_input.d))), u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, 21693i), countOneBits(u_input.c)), u_input.b), u_input.d.yyx), reverseBits(vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(abs(0u), 1u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), ~2458u, firstTrailingBit(min(47242u, 86879u)))));
}

