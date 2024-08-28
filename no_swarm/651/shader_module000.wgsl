struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-1i, 12367i), vec2<i32>(19662i, 44339i), vec2<i32>(i32(-2147483648), 1368i), vec2<i32>(i32(-2147483648), -3161i), vec2<i32>(1i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(-26293i, 2147483647i), vec2<i32>(0i, 92766i), vec2<i32>(8306i, i32(-2147483648)), vec2<i32>(-10267i, -8950i), vec2<i32>(-29056i, -1i), vec2<i32>(-35088i, -15134i), vec2<i32>(35684i, -3081i), vec2<i32>(-48267i, -42756i), vec2<i32>(0i, 0i), vec2<i32>(53103i, 2147483647i), vec2<i32>(13195i, -22785i), vec2<i32>(5981i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1342i, 37515i), vec2<i32>(-72522i, -19484i), vec2<i32>(-61330i, -1i));

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = Struct_3(reverseBits(min(~vec3<i32>(54240i, arg_0.c.d, 1i), min(vec3<i32>(-23757i, arg_0.d.d, 64824i), vec3<i32>(1i, arg_0.d.d, -55446i) >> (vec3<u32>(u_input.a, arg_0.c.a.x, 68148u) % vec3<u32>(32u))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b.x, -2385f)) * arg_0.d.b)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.b.b.x, arg_0.c.b.x), vec2<f32>(-1000f, 247f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-328f, 2662f)) * _wgslsmith_f_op_f32(-arg_0.b.b.x)))), vec3<bool>(arg_0.c.c, arg_0.d.e.x, false == !any(arg_0.d.e)));
    var var_1 = _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(34456u, ~arg_0.d.a.x, min(u_input.a ^ 1u, firstLeadingBit(0u)))), vec3<u32>(~u_input.a, arg_0.a.x, 35303u));
    var_1 = select(select(firstTrailingBit(arg_0.b.a.zyz) & ~arg_0.d.a.xyw, select(arg_0.d.a.zxw, vec3<u32>(arg_0.d.a.x, 0u, 1u), var_0.d), arg_0.d.e.x), arg_0.b.a.www, !var_0.d.x) >> (vec3<u32>(u_input.a, ~u_input.a, 4294967295u) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-535f, var_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.b.x))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -506f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1423f * _wgslsmith_f_op_f32(abs(arg_0.c.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1022f - -763f), _wgslsmith_f_op_f32(sign(arg_0.c.b.x)), all(vec2<bool>(true, false)))))));
    let var_3 = _wgslsmith_f_op_f32(-866f + -1000f);
    return arg_0.d.a.wx;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_2(~func_3(Struct_2(vec2<u32>(arg_0, u_input.a), Struct_1(vec4<u32>(arg_0, 4294967295u, u_input.a, 26166u), arg_2.yz, true, 0i, vec3<bool>(true, false, false)), Struct_1(vec4<u32>(u_input.a, 0u, arg_0, 0u), arg_2.zz, true, -324i, vec3<bool>(true, false, true)), Struct_1(vec4<u32>(u_input.a, arg_0, 0u, 45047u), arg_2.zz, true, 8842i, vec3<bool>(false, false, false)))), Struct_1(vec4<u32>(~1u, ~firstTrailingBit(arg_0), 12266u, ~u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + 382f)), 1482f), all(vec2<bool>(true, true)), _wgslsmith_dot_vec3_i32(-max(vec3<i32>(1i, -63290i, -12735i), vec3<i32>(1i, 26557i, 2147483647i)), -firstLeadingBit(vec3<i32>(-1i, 0i, 1i))), vec3<bool>(true, all(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, false, true)))), Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, 1u), vec3<u32>(0u, u_input.a, 9878u)), 4294967295u, ~u_input.a, 11094u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1688f, arg_2.x, false)), _wgslsmith_f_op_f32(select(-1000f, arg_2.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.xy))), true, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(~u_input.a, 22u)], select(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)]), vec2<i32>(2147483647i, 0i), vec2<bool>(true, true))), select(vec3<bool>(false, arg_0 != arg_0, any(vec4<bool>(false, true, true, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), false)), Struct_1(min(min(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 107764u), vec4<u32>(1u, u_input.a, 17917u, 76602u)), vec4<u32>(~arg_0, 1u, 22012u, 9942u)), _wgslsmith_div_vec2_f32(arg_2.xz, _wgslsmith_f_op_vec2_f32(max(arg_2.zz, vec2<f32>(arg_1, 1026f)))), !any(vec3<bool>(true, false, false)), i32(-1i) * -2147483647i, vec3<bool>(true, select(true, false, true), true)));
    var var_1 = var_0.d.d;
    let var_2 = Struct_3(firstLeadingBit(~(-vec3<i32>(20146i, var_0.d.d, var_0.d.d))) << (vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u), ~arg_0) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.xx) * vec2<f32>(arg_2.x, -991f)), arg_2.x, !vec3<bool>(var_0.c.c, var_0.c.c, var_0.b.c));
    var var_3 = Struct_5(115f, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.a, 4291u, 87455u), var_0.d.a.zzx), var_0.c.a.xwx) << (abs(max(var_0.b.a.yzy, vec3<u32>(33875u, var_0.b.a.x, u_input.a))) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(var_0.c.a.wyx, ~var_0.d.a.wzw, firstTrailingBit(vec3<u32>(arg_0, 29798u, 1u)))));
    let var_4 = var_0.d.b.x;
    return var_2;
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = func_2(~firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2798f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wxy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.wyw)))));
    let var_1 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(370f, var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -274f)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(20190u, 35030u, 37203u), max(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    global0 = array<vec2<i32>, 22>();
    let var_2 = var_0.d.x;
    let var_3 = vec3<i32>(func_2(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) + var_0.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(arg_0.zwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, -1000f, -598f))))))).a.x, 1i, ~_wgslsmith_div_i32(9171i, var_0.a.x));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(reverseBits(firstLeadingBit(1u)));
    let var_1 = vec3<u32>(var_0, func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(1043f)), 1061f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1546f + -252f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -219f))))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a), u_input.a ^ var_0, 7519u), u_input.a) << (u_input.a % 32u));
    var var_2 = Struct_1(vec4<u32>(var_1.x, ~reverseBits(u_input.a), _wgslsmith_clamp_u32(~7165u, ~var_0, _wgslsmith_mult_u32(reverseBits(33271u), ~4294967295u)), ~(~(~37381u))), vec2<f32>(_wgslsmith_f_op_f32(-func_2(0u, _wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_div_vec3_f32(vec3<f32>(1728f, -449f, -943f), vec3<f32>(-730f, 1441f, -1290f))).b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1306f, -529f)))), any(vec4<bool>(false, true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), any(vec2<bool>(true, true)))), ~1i, vec3<bool>(false, any(vec3<bool>(false, true, false)) | false, true));
    let var_3 = Struct_1(~firstLeadingBit(select(~vec4<u32>(18507u, u_input.a, var_2.a.x, 45842u), abs(var_2.a), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1153f, var_2.b.x), var_2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_2.b.x))), vec2<f32>(_wgslsmith_f_op_f32(1228f - var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x))) * _wgslsmith_f_op_vec2_f32(var_2.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, 353f) - var_2.b)))), var_2.c, -31050i, !select(vec3<bool>(func_2(4294967295u, 492f, vec3<f32>(902f, 563f, var_2.b.x)).d.x, false, var_1.x > 1u), !(!vec3<bool>(var_2.c, false, var_2.c)), var_2.a.x > 1u));
    global1 = -(~_wgslsmith_sub_i32(var_3.d, ~var_3.d));
    global1 = -59708i;
    var_2 = Struct_1(~(~var_3.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-932f, var_3.b.x) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.b.x, var_2.b.x), var_2.b))))), all(!select(!vec4<bool>(var_2.e.x, false, var_3.e.x, var_3.c), !vec4<bool>(var_3.c, false, false, false), true)), min(var_2.d, 8444i), !(!(!(!vec3<bool>(false, false, var_3.e.x)))));
    var var_4 = 46179u & abs(~_wgslsmith_mod_u32(4294967295u, var_1.x | var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, ~vec2<i32>((i32(-1i) * -1863i) ^ ~var_2.d, var_2.d));
}

