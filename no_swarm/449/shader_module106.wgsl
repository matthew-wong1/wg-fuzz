struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global1: array<i32, 3>;

var<private> global2: u32;

var<private> global3: array<f32, 5> = array<f32, 5>(-1357f, 230f, -305f, -1384f, -866f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    return all(global0[_wgslsmith_index_u32(1u, 19u)]);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(179f);
    let var_1 = Struct_1(314f);
    var var_2 = var_1;
    global0 = array<vec3<bool>, 19>();
    let var_3 = vec2<bool>(!func_3(false, Struct_1(1394f), Struct_1(var_2.a), any(vec4<bool>(true, false, true, true))), all(vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
    return _wgslsmith_f_op_f32(-var_0.a);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    global3 = array<f32, 5>();
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(max(reverseBits(vec4<u32>(1u, 4294967295u, 60958u, arg_2.x)), ~vec4<u32>(arg_2.x, arg_0.a.x, 0u, 1u)), min(countOneBits(vec4<u32>(arg_2.x, arg_0.a.x, 30525u, arg_2.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, arg_0.a.x, arg_2.x, arg_0.a.x), vec4<u32>(23659u, 443u, 1465u, arg_0.a.x)))));
    var var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = Struct_3(~(max(~var_2.a, _wgslsmith_div_vec3_u32(vec3<u32>(0u, 23745u, 70806u), var_1.a)) ^ vec3<u32>(var_1.a.x, var_1.a.x, 57159u ^ var_2.a.x)));
    return _wgslsmith_div_u32(1u, ~(~(~0u)));
}

fn func_1() -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(~4294967295u, 3u)];
    var var_1 = reverseBits(max(~(~(-vec2<i32>(u_input.a, 7403i))), _wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 3u)] >> (35625u % 32u), _wgslsmith_sub_i32(-2147483647i, global1[_wgslsmith_index_u32(141957u, 3u)])), countOneBits(min(vec2<i32>(27180i, 52408i), vec2<i32>(-1i, 2147483647i))))));
    var var_2 = Struct_2(global3[_wgslsmith_index_u32(4294967295u, 5u)], vec3<u32>(countOneBits(11078u), _wgslsmith_add_u32(func_4(Struct_3(vec3<u32>(4294967295u, 46973u, 42917u)), global3[_wgslsmith_index_u32(~0u, 5u)], ~vec3<u32>(1u, 2958u, 50571u), _wgslsmith_f_op_f32(func_2(Struct_2(global3[_wgslsmith_index_u32(0u, 5u)], vec3<u32>(70482u, 1u, 4294967295u), Struct_1(1158f), vec3<u32>(0u, 4294967295u, 55686u), 1u), vec2<i32>(var_1.x, -28770i)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 85923u), vec3<u32>(10399u, 4294967295u, 57125u))), ~1u & firstTrailingBit(0u)), Struct_1(global3[_wgslsmith_index_u32(0u, 5u)]), vec3<u32>(45212u, 44815u, _wgslsmith_sub_u32(func_4(Struct_3(vec3<u32>(167u, 1u, 24152u)), global3[_wgslsmith_index_u32(1u, 5u)], vec3<u32>(4294967295u, 64482u, 0u), global3[_wgslsmith_index_u32(4294967295u, 5u)]) | 65007u, 0u)), 5132u);
    var var_3 = var_2.c;
    var_1 = -(_wgslsmith_add_vec2_i32(vec2<i32>(-362i, var_1.x) & ~vec2<i32>(33188i, global1[_wgslsmith_index_u32(var_2.e, 3u)]), vec2<i32>(-u_input.a, -20633i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.x, 31942i), vec3<i32>(u_input.a, var_1.x, u_input.a)), ~u_input.a), ~abs(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_2.e, 3u)]))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2310f, 1265f), _wgslsmith_f_op_f32(-669f * -815f), _wgslsmith_f_op_f32(ceil(var_2.c.a)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.a, var_3.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 227f, var_2.a) - vec3<f32>(1071f, -1684f, var_2.c.a)))))), vec3<f32>(817f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(var_2.e, 5u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) - 1126f), _wgslsmith_f_op_f32(f32(-1f) * -169f), true))), select(vec3<bool>(true | any(vec2<bool>(false, true)), all(vec4<bool>(false, false, true, true)), true), vec3<bool>(all(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(13462u, var_2.b.x), 19u)]), true, all(vec2<bool>(false, false))), true)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<f32>) -> vec2<f32> {
    var var_0 = vec4<i32>(~(-_wgslsmith_clamp_i32(-12037i, -2147483647i, arg_0.x)), global1[_wgslsmith_index_u32(10310u, 3u)], abs(-36106i), u_input.a) >> (firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(61141u, arg_1.a.x, arg_1.a.x, arg_1.a.x) << (vec4<u32>(1u, 4294967295u, arg_1.a.x, arg_1.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(9209u, 0u, 4294967295u, 0u), vec4<u32>(arg_1.a.x, 1u, arg_1.a.x, 1u))) ^ (vec4<u32>(arg_1.a.x, 2840u, arg_1.a.x, arg_1.a.x) & (vec4<u32>(0u, arg_1.a.x, 34371u, 4294967295u) | vec4<u32>(arg_1.a.x, 23287u, 19675u, 0u)))) % vec4<u32>(32u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(-998f, -701f)), ~vec3<u32>(firstTrailingBit(~arg_1.a.x), 4294967295u, ~_wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x)), Struct_1(_wgslsmith_f_op_f32(round(arg_3.x))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.x, 19990u, 15043u), vec3<u32>(23405u, 0u, arg_1.a.x)), select(arg_1.a.x, 52351u, true));
    var var_2 = Struct_1(global3[_wgslsmith_index_u32(1u, 5u)]);
    let var_3 = select(-(_wgslsmith_mod_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(var_1.d.x, 3u)], 2147483647i, var_0.x, -67314i), _wgslsmith_div_vec4_i32(vec4<i32>(-55924i, var_0.x, 39435i, -1i), vec4<i32>(u_input.a, var_0.x, global1[_wgslsmith_index_u32(var_1.e, 3u)], -15069i))) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.x, 30049u, 4294967295u, arg_1.a.x), vec4<u32>(0u, 0u, 83241u, arg_1.a.x)) & min(vec4<u32>(4294967295u, var_1.e, 25519u, var_1.e), vec4<u32>(arg_1.a.x, 1u, var_1.e, arg_1.a.x))) % vec4<u32>(32u))), -vec4<i32>(-1i, arg_0.x, 1i, arg_0.x), -434f == arg_3.x);
    var var_4 = var_1.c;
    return arg_3.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(any(vec2<bool>(true, true)) && all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(-12252i, -56330i), vec2<i32>(-1i, global1[_wgslsmith_index_u32(1u, 3u)]), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 3u)])) << (~vec2<u32>(8053u, 4294967295u) % vec2<u32>(32u)), Struct_3(min(vec3<u32>(65196u, 50921u, 76893u), vec3<u32>(1u, 0u, 4294967295u))), _wgslsmith_f_op_f32(-275f + global3[_wgslsmith_index_u32(~4203u, 5u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(21779u, 5u)], -1321f)), _wgslsmith_f_op_vec3_f32(func_1()))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(10658u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)]))) + vec2<f32>(global3[_wgslsmith_index_u32(58110u, 5u)], -153f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1804f, -148f), vec2<f32>(-1184f, -1882f)))))), var_0)));
    var var_2 = var_1.x;
    global2 = _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 1u), select(~(~0u), ~1u, any(vec4<bool>(true, false, false, true)))));
    var var_3 = vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(33044u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 65356u))), countOneBits(46932u), ~1u, abs(select(_wgslsmith_div_u32(4294967295u, 18433u), ~4294967295u, var_0))) | vec4<u32>(1u, 1u, 1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~114982u, ~(reverseBits(var_3.x) >> (95110u % 32u)), var_3.x, ~abs(~var_3.x)), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_3.x, 5u)])), global3[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(var_3.x, 20613u))), 5u)], ~(_wgslsmith_sub_u32(4294967295u, var_3.x) ^ select(var_3.x, var_3.x, var_1.x <= var_1.x)), firstLeadingBit(global1[_wgslsmith_index_u32(~var_3.x, 3u)]));
}

