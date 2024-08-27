struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec3<i32>(-28321i, -43172i, abs(arg_0.a.b.x));
    global0 = array<Struct_5, 29>();
    let var_1 = arg_1;
    global0 = array<Struct_5, 29>();
    var var_2 = Struct_1(arg_0.b.e.x, ~(~(0u ^ _wgslsmith_add_u32(23156u, arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1469f, arg_0.b.e.x, arg_3.x, arg_1.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a, -548f, arg_3.x, -1460f)))))));
    return ~(select(~var_1.b | max(var_2.b, var_1.b), u_input.c.x, arg_0.a.c.x) << (28301u % 32u));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = arg_0.xw;
    let var_1 = Struct_5(Struct_4(1i, -vec4<i32>(-36107i, u_input.a, i32(-1i) * -20570i, u_input.d.x), arg_0.xz), Struct_2(u_input.d, vec2<bool>(arg_0.x, u_input.d.x != _wgslsmith_mod_i32(-2147483647i, u_input.d.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d.x, u_input.e.x, 2147483647i) ^ vec4<i32>(u_input.a, 2147483647i, u_input.a, -2147483647i), vec4<i32>(18911i, u_input.d.x, u_input.a, u_input.d.x)), u_input.d.x << (0u % 32u)), !var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -889f, 988f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(round(-1131f)), _wgslsmith_f_op_f32(402f + 792f)))), 5692u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.e.x), _wgslsmith_f_op_f32(-var_1.b.e.x))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.b.e.xy)))))));
    let var_3 = global0[_wgslsmith_index_u32(max(var_1.c, func_3(global0[_wgslsmith_index_u32(var_1.c, 29u)], Struct_1(var_1.b.e.x, var_1.c, vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), -1348f, _wgslsmith_f_op_f32(-257f * var_1.b.e.x))), ~(~vec3<u32>(var_1.c, var_1.c, 25136u)) & u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(496f, -1138f, var_1.b.e.x, var_2.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1513f, var_2.x, -1845f, var_2.x)))))), 29u)];
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.e.x, _wgslsmith_f_op_f32(600f * -511f), -1107f, -370f))));
    return select(var_1.b.c >> ((var_1.c & var_1.c) % 32u), u_input.d.x, all(select(select(var_1.b.b, var_1.b.b, var_1.b.d), !vec2<bool>(true, var_1.b.b.x), arg_0.x))) <= 1i;
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = arg_2;
    var var_1 = vec4<bool>(arg_0.c.x, !func_2(vec4<bool>(false, true, !arg_0.c.x, true)), all(vec3<bool>(false, true, arg_0.c.x)), !any(vec2<bool>(arg_1 < 4294967295u, true)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -1562f))), true)), arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1144f, 851f))) + -1070f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 2649f)))))));
    let var_2 = Struct_3(arg_1 ^ arg_1, ((arg_3.x << ((u_input.b.x ^ arg_1) % 32u)) ^ u_input.d.x) ^ (-_wgslsmith_dot_vec3_i32(arg_3.yyw, vec3<i32>(arg_3.x, 7028i, u_input.e.x)) >> (_wgslsmith_mult_u32(~22445u, ~arg_1) % 32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, 1156f, _wgslsmith_f_op_f32(-1442f - -113f), _wgslsmith_f_op_f32(201f * -1068f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(876f, -728f, -740f, var_0.x))))))), vec2<i32>(1i, -(-7737i & firstLeadingBit(arg_0.b.x))));
    var_1 = vec4<bool>(false, false, false, arg_0.c.x);
    return 303f;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1247f);
    global0 = array<Struct_5, 29>();
    return Struct_2(firstTrailingBit(vec2<i32>(-(u_input.d.x & 45971i), 0i)), select(select(vec2<bool>(all(vec4<bool>(false, true, true, true)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(any(vec3<bool>(false, false, true)), false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<bool>(true, any(vec3<bool>(false, true, true))))), _wgslsmith_mult_i32(~min(-u_input.a, u_input.e.x), _wgslsmith_mod_i32(u_input.a, u_input.a)), u_input.e.x >= u_input.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_0.c.wyw, vec3<f32>(982f, arg_0.a, arg_0.a)))) + arg_0.c.zwz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-943f, u_input.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-798f - -855f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)), -1002f, -723f)));
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(func_1(Struct_4(firstLeadingBit(2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.d.x, -2147483647i, u_input.e.x), vec4<i32>(1i, -5548i, u_input.a, u_input.e.x)), vec2<bool>(true, false)), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.c, var_0.c))), vec4<i32>(~0i, ~u_input.d.x, ~u_input.d.x, 24392i))), _wgslsmith_mult_u32(~var_0.b, _wgslsmith_dot_vec2_u32(u_input.c.yz, ~u_input.c.zz)), var_0.c));
    var_0 = Struct_1(var_1.e.x, ~0u << (~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.yx, u_input.b), u_input.b) % 32u), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.e.x, 638f), _wgslsmith_div_f32(var_1.e.x, var_1.e.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1553f), var_1.e.x)), 1984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, var_0.a)))));
    let var_2 = var_1.c;
    let var_3 = func_4(Struct_1(-932f, countOneBits(abs(~u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, -2102f, var_0.c.x, var_0.c.x) - vec4<f32>(var_1.e.x, 196f, 1000f, var_1.e.x)), vec4<f32>(var_1.e.x, -1179f, -873f, var_0.a)) + _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(step(var_0.c, var_0.c)))))).e.x;
    var var_4 = Struct_4(~firstTrailingBit(-var_1.c | ~var_2), vec4<i32>(firstTrailingBit(-_wgslsmith_div_i32(1i, u_input.a)), 50842i, ~(i32(-1i) * -42981i), 1i), select(!vec2<bool>(false, var_1.e.x != var_3), vec2<bool>(true, true), !var_1.b));
    var var_5 = _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(-54064i) >> (var_0.b % 32u), (~2147483647i ^ select(var_4.b.x, var_2, false)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, u_input.d.x, var_2), firstTrailingBit(vec3<i32>(-1i, var_1.c, -11324i))), 1i), vec3<i32>(u_input.d.x, ~(i32(-1i) * -u_input.a), select(~select(1i, var_2, var_1.b.x), reverseBits(0i), select(var_4.c.x, false, true) | true)));
    var_5 = select(min(var_4.b.zyx, select(_wgslsmith_sub_vec3_i32(var_4.b.xzy, vec3<i32>(var_1.c, 1i, var_1.c)), -vec3<i32>(var_5.x, -35747i, 1i), false)), -var_4.b.ywx, !vec3<bool>(any(!vec4<bool>(var_4.c.x, var_4.c.x, false, var_4.c.x)), true, 34918u == u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1430f - var_0.a)), 149f, 402f), ~u_input.b);
}

