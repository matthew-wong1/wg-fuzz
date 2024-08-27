struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<vec2<i32>, 6>;

var<private> global2: array<vec3<i32>, 14>;

var<private> global3: array<vec3<i32>, 10>;

var<private> global4: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-338f, -1434f), vec2<f32>(-257f, 931f), vec2<f32>(419f, 206f), vec2<f32>(-323f, 238f), vec2<f32>(1213f, 597f), vec2<f32>(-724f, -721f), vec2<f32>(485f, 529f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    var var_0 = ~(~(vec4<u32>(0u, 1u, ~10111u, firstLeadingBit(arg_0.x)) | ~(~vec4<u32>(3265u, arg_0.x, 36281u, 1u))));
    var var_1 = var_0.x;
    var var_2 = Struct_5(-116f);
    var var_3 = var_0.yxw ^ vec3<u32>(1u, 3262u, 4294967295u);
    global3 = array<vec3<i32>, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(_wgslsmith_div_u32(arg_1, arg_1)), 38289u), reverseBits(_wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_2.x, 0u)), select(arg_2.zy, arg_2.xx | vec2<u32>(4294967295u, arg_2.x), 55715u != arg_2.x))));
    let var_1 = Struct_3(_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(arg_2.xx, vec2<u32>(arg_1, 16956u)), (~vec2<u32>(1u, 874u) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) >> ((arg_2.zy | arg_2.zx) % vec2<u32>(32u))), Struct_1(abs(u_input.b.xz), min(~abs(arg_2), firstLeadingBit(vec3<u32>(30623u, 4294967295u, 1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), arg_0), reverseBits(select(arg_2.xy, countOneBits(arg_2.zy), any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(25745u, 8u)])))), arg_0));
    global4 = array<vec2<f32>, 7>();
    global2 = array<vec3<i32>, 14>();
    global4 = array<vec2<f32>, 7>();
    return -363f;
}

fn func_1() -> vec3<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(119f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, 639f, -1534f, -304f)), -u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(496f, -650f, -1237f, 481f) - vec4<f32>(-495f, 1043f, -642f, -403f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2176f, -598f)), _wgslsmith_f_op_f32(ceil(438f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1223f - 1046f), 1f, false == global0[_wgslsmith_index_u32(58886u, 8u)])), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(340f - 1000f), _wgslsmith_clamp_u32(1u, 27385u, 4294967295u), ~vec3<u32>(0u, 7736u, 0u), global0[_wgslsmith_index_u32(~38692u, 8u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1173f, 280f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<u32>(1u, 1u), vec4<f32>(1f, 1f, 1f, 1f), u_input.b.x, vec4<f32>(-662f, _wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(-1240f + 1501f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_1 = Struct_2(Struct_1(u_input.a, ~(~(~vec3<u32>(119324u, 10701u, 35596u))), var_0.x, firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(1u, 22376u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(var_0.x - var_0.x)) - 729f)), _wgslsmith_div_u32(~46914u >> (firstLeadingBit(abs(1u)) % 32u), _wgslsmith_mod_u32(1u, ~4547u)), -vec3<i32>(57913i, ~u_input.c ^ _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, 7547i), ~14040i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), abs(vec3<i32>(~(-28227i), -2147483647i, u_input.b.x) << (select(vec3<u32>(18732u, 0u, 1u), vec3<u32>(1u, 1u, 1u), true) % vec3<u32>(32u))));
    let var_2 = var_1.b;
    global4 = array<vec2<f32>, 7>();
    global1 = array<vec2<i32>, 6>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e, var_0.x, _wgslsmith_f_op_f32(func_2(vec2<u32>(0u, 42594u) ^ var_1.a.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-681f, -1819f, var_0.x, var_0.x))), max(~var_1.c.x, reverseBits(22057i)), vec4<f32>(var_1.a.e, var_1.d.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(606f, 597f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1601f, -535f, 221f), vec3<f32>(241f, 851f, 1546f))) * vec3<f32>(1218f, -768f, _wgslsmith_f_op_f32(-795f * -225f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(773f, 1143f, 106f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1117f, 507f, 210f))) + _wgslsmith_f_op_vec3_f32(func_1())))));
    var var_1 = ~abs(_wgslsmith_clamp_vec2_u32(abs(select(vec2<u32>(1u, 1u), vec2<u32>(73352u, 17110u), global0[_wgslsmith_index_u32(4294967295u, 8u)])), vec2<u32>(1u, 1u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 11788u), vec2<u32>(4294967295u, 51409u), vec2<u32>(1u, 659u)), vec2<u32>(1u, 1u))));
    var var_2 = Struct_4(Struct_3(_wgslsmith_sub_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_1.x, 9652u)), _wgslsmith_mult_vec2_u32(vec2<u32>(90319u, var_1.x), vec2<u32>(var_1.x, var_1.x))), ~abs(vec2<u32>(1u, var_1.x))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.a.x, u_input.b.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x)), select(4294967295u, 0u, global0[_wgslsmith_index_u32(var_1.x, 8u)]), var_1.x), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), ~vec2<u32>(var_1.x, var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1494f)))), 1337f, vec3<f32>(-1102f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + 958f)), _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(-29036i), _wgslsmith_mult_i32(u_input.c, 4742i)), abs(abs(u_input.a.x))) | _wgslsmith_dot_vec4_i32(u_input.b, max(firstLeadingBit(u_input.b), select(u_input.b, u_input.b, true))));
    global4 = array<vec2<f32>, 7>();
    let var_3 = select(0i, -53939i, !(!(!(!global0[_wgslsmith_index_u32(16378u, 8u)]))));
    global3 = array<vec3<i32>, 10>();
    var var_4 = ~(~_wgslsmith_mult_vec4_u32(~(vec4<u32>(13646u, 17704u, var_1.x, 4294967295u) ^ vec4<u32>(var_2.a.a.x, var_2.a.a.x, 0u, 0u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(66954u, 4294967295u, var_2.a.a.x, 1u)), vec4<u32>(var_2.a.a.x, 0u, var_1.x, 49380u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.b.d.x, var_4.zyw, ~(~vec4<u32>(min(var_1.x, 4294967295u), ~var_2.a.b.b.x, var_1.x, ~95541u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(~12970u, 7174u, var_1.x << (34387u % 32u)), firstTrailingBit(vec3<u32>(15345u, 1u, 48902u)))));
}

