struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(786f, 1620f, -259f, 238f), vec4<f32>(-689f, -2319f, 657f, 132f), vec4<f32>(2028f, -1000f, -2781f, 1592f), vec4<f32>(2312f, 1122f, -598f, 650f), vec4<f32>(-653f, 2461f, -935f, 329f), vec4<f32>(-771f, 293f, -554f, 443f), vec4<f32>(1040f, -1696f, -451f, -1026f), vec4<f32>(-588f, -128f, -1552f, 1000f), vec4<f32>(157f, -1343f, 397f, -1005f), vec4<f32>(482f, 352f, -1000f, -486f), vec4<f32>(104f, 366f, -722f, -1271f), vec4<f32>(-552f, 420f, 153f, -1011f), vec4<f32>(-616f, 629f, 898f, -657f), vec4<f32>(829f, -2433f, 154f, 293f), vec4<f32>(-511f, -617f, -379f, 358f), vec4<f32>(-734f, 1749f, -1205f, -824f), vec4<f32>(1246f, 1323f, 198f, -943f));

var<private> global2: Struct_2;

var<private> global3: array<vec4<u32>, 4>;

var<private> global4: i32 = 38568i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<i32>) -> vec2<f32> {
    global0 = array<Struct_1, 5>();
    let var_0 = arg_0.d;
    let var_1 = abs(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(6649u, ~arg_0.d.c.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.x, arg_0.d.c.x), arg_0.d.c))));
    global0 = array<Struct_1, 5>();
    let var_2 = !(!vec4<bool>(_wgslsmith_f_op_f32(-arg_1.x) == 2839f, true, all(vec3<bool>(true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    return _wgslsmith_f_op_vec2_f32(-var_0.d);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.d.x * -306f)))) * arg_2.x));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_1, 3784i, -2147483647i), _wgslsmith_mod_i32(abs(1i & global2.a), min(-80198i, 1i)), global2.a >> (max(u_input.b, 4294967295u) % 32u), ~(-65i & global2.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, min(u_input.a.x, 1i), -21261i, ~global2.a) >> (abs(global3[_wgslsmith_index_u32(7371u, 4u)] ^ vec4<u32>(0u, u_input.b, global2.b.c.x, u_input.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, -28052i, u_input.a.x, u_input.a.x), ~vec4<i32>(arg_1, arg_1, -1340i, u_input.a.x)) ^ ~reverseBits(vec4<i32>(global2.a, 12100i, u_input.a.x, -79330i))));
    let var_2 = ~(~(vec3<u32>(arg_0.x, max(u_input.b, global2.b.b), 30584u) & firstLeadingBit(arg_0)));
    var var_3 = vec3<bool>(!((firstLeadingBit(48212u) < _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.a, var_2.x, global2.e.b, 1u), global3[_wgslsmith_index_u32(1u, 4u)])) && true), any(vec3<bool>(true, true, !(var_2.x != 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f * 931f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(546f)) - _wgslsmith_f_op_f32(-arg_2.x)));
    var_3 = select(vec3<bool>(var_3.x, true, !var_3.x), vec3<bool>(select(var_3.x, global2.a <= reverseBits(-26191i), any(vec3<bool>(var_3.x, true, var_3.x)) == true), !(!(var_3.x || true)), true), false);
    return Struct_2(abs((arg_1 >> (1u % 32u)) << (1u % 32u)), global0[_wgslsmith_index_u32(u_input.b, 5u)], _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.c.x * global2.d.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.d.x, global2.b.d.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_2))))), global0[_wgslsmith_index_u32(arg_0.x, 5u)], Struct_1(var_2.x, 1u, global2.e.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(587f, arg_2.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    var var_0 = true;
    var var_1 = Struct_1(~u_input.b, ~arg_1.d.b, arg_1.e.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.d.x, arg_1.e.d.x)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2077f, arg_1.d.d.x), vec2<f32>(global2.c.x, global2.d.d.x), vec2<bool>(true, arg_2))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.c))), _wgslsmith_f_op_vec2_f32(floor(func_3(vec3<u32>(0u, 18337u, global2.e.b), arg_1.a, arg_1.c).c)))));
    global3 = array<vec4<u32>, 4>();
    return var_1.c.x;
}

fn func_1() -> u32 {
    global4 = ~global2.a;
    global1 = array<vec4<f32>, 17>();
    let var_0 = global2.e;
    global3 = array<vec4<u32>, 4>();
    return func_4(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, ~u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, global2.a), firstTrailingBit(u_input.a.x)) & u_input.a.x, 2156i), func_3(max((vec3<u32>(u_input.b, 85517u, u_input.b) << (vec3<u32>(u_input.b, 31935u, global2.d.b) % vec3<u32>(32u))) >> ((vec3<u32>(var_0.c.x, global2.b.c.x, 49260u) | vec3<u32>(0u, var_0.c.x, 1u)) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(519u, u_input.b, 36227u), vec3<u32>(global2.b.a, global2.d.b, u_input.b))), -1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(25736i, global2.d, global2.c, global2.e, Struct_1(u_input.b, u_input.b, vec2<u32>(var_0.c.x, 71548u), vec2<f32>(global2.e.d.x, 218f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.e.d.x, -211f, 142f) * vec3<f32>(global2.e.d.x, 1157f, -384f)), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.a, 1i), vec2<i32>(u_input.a.x, global2.a)))) * vec2<f32>(_wgslsmith_f_op_f32(-global2.d.d.x), -1754f))), true & !select(false, u_input.b <= 11761u, true), vec2<u32>(firstLeadingBit(global2.d.a), ~(~max(var_0.a, 64213u))));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_div_i32(countOneBits(~u_input.a.x), firstLeadingBit(global2.a & global2.a)), arg_1), Struct_1(4294967295u, firstLeadingBit(max(36954u, _wgslsmith_div_u32(u_input.b, u_input.b))), global2.d.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.d))))), arg_0.d, Struct_1(_wgslsmith_mod_u32(~(arg_0.a & 55191u), func_4(u_input.a, func_3(vec3<u32>(global2.e.c.x, 44251u, arg_0.a), arg_1, vec2<f32>(global2.e.d.x, global2.d.d.x)), true, vec2<u32>(arg_0.c.x, 66405u))), u_input.b, global2.e.c, _wgslsmith_f_op_vec2_f32(select(arg_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, arg_0.d.x)) * _wgslsmith_f_op_vec2_f32(floor(arg_0.d))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(firstTrailingBit(min(u_input.b, 302u))), global2.d.a ^ _wgslsmith_mod_u32(1u, ~u_input.b)), 5u)]);
    var var_1 = func_3(vec3<u32>(arg_0.b, 37702u, var_0.d.b), 55058i, arg_0.d).b;
    let var_2 = ~_wgslsmith_add_vec3_i32((_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(26261i, global2.a, 2147483647i), vec3<i32>(u_input.a.x, var_0.a, -1i)) | ~vec3<i32>(arg_1, 2147483647i, -3712i)) & vec3<i32>(select(0i, -59179i, true), 2147483647i, u_input.a.x), -_wgslsmith_div_vec3_i32(vec3<i32>(global2.a, global2.a, var_0.a), u_input.a));
    var_1 = global0[_wgslsmith_index_u32(var_1.a, 5u)];
    global3 = array<vec4<u32>, 4>();
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 17>();
    let var_0 = Struct_2(-(abs(452i) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(14415u, 4294967295u, global2.d.c.x), vec3<u32>(global2.d.b, global2.e.a, 1u) & vec3<u32>(0u, global2.e.c.x, global2.d.a)) % 32u)), func_5(Struct_1(firstLeadingBit(4281u) << (abs(global2.b.c.x) % 32u), ~func_1(), _wgslsmith_div_vec2_u32(global2.b.c << (global2.e.c % vec2<u32>(32u)), firstLeadingBit(global2.d.c)), global2.d.d), global2.a << ((u_input.b ^ ~4294967295u) % 32u)), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(_wgslsmith_mult_i32(u_input.a.x, select(global2.a, u_input.a.x, false)), Struct_1(u_input.b << (global2.b.a % 32u), func_1(), vec2<u32>(0u, 0u), _wgslsmith_f_op_vec2_f32(-global2.d.d)), func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.b.c.x, u_input.b, 4294967295u), vec3<u32>(0u, u_input.b, u_input.b)), i32(-1i) * -14467i, _wgslsmith_div_vec2_f32(global2.d.d, vec2<f32>(-152f, global2.b.d.x))).e.d, func_5(func_3(vec3<u32>(global2.d.c.x, u_input.b, 0u), global2.a, global2.e.d).b, 2147483647i), func_5(func_5(global2.e, 57891i), i32(-1i) * -35030i)), vec3<f32>(-2210f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b.d.x - global2.e.d.x))), func_5(global0[_wgslsmith_index_u32(1u, 5u)], 1i | u_input.a.x).d.x), -firstTrailingBit(u_input.a.xx))), global2.d, func_5(func_5(global2.e, global2.a), u_input.a.x));
    global0 = array<Struct_1, 5>();
    let var_1 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~var_0.d.c.x, func_4(~(~u_input.a), var_0, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), ~(~vec2<u32>(7452u, 3741u)))), firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(53731i, _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zz)), 78997i, (-2147483647i ^ u_input.a.x) ^ abs(global2.a), ~_wgslsmith_div_i32(u_input.a.x, 10906i))));
}

