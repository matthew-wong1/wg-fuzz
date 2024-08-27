struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -26475i;

var<private> global1: vec4<u32>;

var<private> global2: vec4<bool>;

var<private> global3: array<vec3<f32>, 16>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<f32> {
    global1 = select(firstTrailingBit(~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.a, global1.x, global1.x, global1.x), ~vec4<u32>(u_input.e, global1.x, 12659u, 0u))), abs(_wgslsmith_sub_vec4_u32(~max(vec4<u32>(4294967295u, u_input.e, u_input.c, 1u), vec4<u32>(global1.x, 1u, arg_1.e.a.x, 16350u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(7199u, 76902u, 780u, 64560u), vec4<u32>(arg_1.a, global1.x, 34325u, global1.x)))), global2.x);
    global0 = u_input.b.x ^ _wgslsmith_mod_i32(u_input.a.x, abs(21542i));
    let var_0 = vec3<f32>(arg_1.c, 584f, _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c, 718f, arg_1.e.c)))))));
    global3 = array<vec3<f32>, 16>();
    let var_1 = arg_1.e;
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(step(-940f, -1139f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 697f) - -1036f)))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1851f, -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1848f + -117f), 758f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-761f)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), 1f, var_0.x);
    var var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(238f * _wgslsmith_f_op_f32(-var_0.x)), 963f))), -537f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(1u, 16u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1254f, var_1.x) + vec3<f32>(var_1.x, var_1.x, -645f))), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(abs(u_input.c), 16u)]), global2.yyz))) - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3[_wgslsmith_index_u32(countOneBits(global1.x), 16u)])) - _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~6287u, 16u)])), Struct_2((u_input.c >> (global1.x % 32u)) >> (1u % 32u), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_0.x, Struct_1(global1.yz, true, true, global1.x, ~arg_0)))));
    global0 = arg_0.x;
    return Struct_1(vec2<u32>(~global1.x, 22224u), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, 1i, arg_0.x)), arg_0) < -17509i, true, u_input.e, -max(vec4<i32>(_wgslsmith_sub_i32(36570i, 11172i), 2147483647i, 49583i, u_input.b.x), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, arg_0.x), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.x, 0i), vec3<i32>(-27043i, arg_0.x, 41620i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -2484i), vec4<i32>(0i, u_input.b.x, arg_0.x, 44550i)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.c;
    let var_1 = ~0i;
    var var_2 = Struct_5(Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 19940u, arg_0.e.a.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(840u, global1.x, 0u, arg_0.e.a.x), vec4<u32>(1u, arg_0.e.d, 71859u, 0u), vec4<u32>(u_input.c, 4294967295u, global1.x, u_input.e)) % vec4<u32>(32u)), vec4<u32>(func_2(vec4<i32>(-2147483647i, -1i, arg_0.d, -42882i)).a.x, ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 1u, 4294967295u, 27866u), vec4<u32>(u_input.c, u_input.e, 30792u, arg_0.a)), u_input.e))), arg_0.e);
    var var_3 = Struct_3(56505u);
    var_3 = var_2.a;
    return Struct_2(global1.x, any(!vec4<bool>(true, false, var_2.b.c, global2.x)) | true, -1000f, 5786i, func_2(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_2.b.e, var_2.b.e), var_2.b.e << (vec4<u32>(81216u, 7810u, global1.x, global1.x) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.d), -u_input.d, -48669i, var_1))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_mod_u32(u_input.e, ~1u));
    var_0 = Struct_3(~reverseBits(countOneBits(firstLeadingBit(4831u))));
    var var_1 = func_4(Struct_2(reverseBits(~1u), !any(select(global2.zxx, global2.zwx, vec3<bool>(global2.x, arg_3.x, true))), _wgslsmith_f_op_f32(-arg_2.x), min(~u_input.d, u_input.a.x), func_2(vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x), 1i, 16845i, _wgslsmith_mod_i32(u_input.a.x, u_input.d)))));
    var_1 = Struct_2(4209u, true, _wgslsmith_f_op_f32(517f * _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-675f)), _wgslsmith_f_op_f32(arg_0.x - -777f)))))), -(~u_input.b.x) << (103912u % 32u), var_1.e);
    let var_2 = Struct_3(1u);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), var_1.c, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, arg_2.x, -808f, -759f) * vec4<f32>(arg_2.x, 1722f, arg_0.x, var_1.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1416f, var_1.c, 2014f, arg_0.x)))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f + -473f)), 117f, -1167f), arg_3.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(arg_0.zw)))), arg_0.xw, select(!global2.xy, vec2<bool>(global2.x, global2.x), global2.yx)))));
    var_0 = _wgslsmith_f_op_vec2_f32(min(arg_0.yy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(arg_1.b))))))));
    global0 = _wgslsmith_div_i32(-25742i, -28807i);
    let var_1 = i32(-1i) * -45842i;
    let var_2 = Struct_5(Struct_3(func_2(select(~vec4<i32>(var_1, -86939i, u_input.d, u_input.b.x), func_2(vec4<i32>(var_1, 18957i, var_1, 1i)).e, all(vec3<bool>(false, arg_1.a, global2.x)))).d), func_4(func_4(func_4(func_4(Struct_2(18106u, true, var_0.x, var_1, Struct_1(vec2<u32>(global1.x, global1.x), global2.x, false, u_input.e, vec4<i32>(-59997i, 0i, -14215i, 0i))))))).e);
    return !all(global2.zxx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(219f + _wgslsmith_f_op_f32(-1626f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1724f))))), -864f);
    global3 = array<vec3<f32>, 16>();
    let var_1 = Struct_2((0u << (~u_input.c % 32u)) ^ _wgslsmith_mod_u32(u_input.e, 11413u), (true | global2.x) && func_5(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.x) - vec2<f32>(var_0.x, -1096f)), any(vec4<bool>(global2.x, true, global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(min(var_0.zy, var_0.yz)), vec4<bool>(global2.x, true, global2.x, false))), Struct_4(true, func_4(Struct_2(global1.x, false, -1772f, 2147483647i, Struct_1(global1.xw, global2.x, global2.x, global1.x, vec4<i32>(-10468i, 56383i, 36249i, 1i)))).c)), var_0.x, -(u_input.a.x ^ (i32(-1i) * -u_input.b.x)), Struct_1(~firstTrailingBit(firstLeadingBit(vec2<u32>(global1.x, u_input.c))), global2.x, false, ~max(~1u, ~u_input.c), countOneBits(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -3919i, 49910i)))));
    global2 = vec4<bool>(0i >= _wgslsmith_sub_i32(~u_input.b.x ^ _wgslsmith_mult_i32(50251i, 21549i), _wgslsmith_div_i32(u_input.b.x, -1i) ^ ~var_1.d), func_4(func_4(var_1)).b, true, true);
    let var_2 = Struct_3(min(u_input.c, _wgslsmith_dot_vec2_u32(select(var_1.e.a, ~var_1.e.a, vec2<bool>(var_1.b, true)), vec2<u32>(4294967295u, global1.x))));
    global3 = array<vec3<f32>, 16>();
    var var_3 = var_1.e;
    let var_4 = var_3.e.x;
    global3 = array<vec3<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_3.e.x);
}

