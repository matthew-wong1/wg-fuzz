struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 27594u, 1u, 38025u, 0u, 65060u, 66550u, 15455u, 0u, 1u, 4294967295u, 70135u, 17726u, 3706u, 27393u, 1u, 4294967295u, 4294967295u, 0u, 0u, 4294967295u, 8549u, 4294967295u, 54844u, 474u, 57149u, 38389u, 45701u, 28559u, 1u);

var<private> global1: Struct_1 = Struct_1(false, vec4<i32>(72378i, i32(-2147483648), -18637i, 0i));

var<private> global2: array<u32, 24> = array<u32, 24>(1u, 18847u, 12285u, 59617u, 1u, 4294967295u, 1u, 90512u, 0u, 4100u, 40623u, 1u, 139964u, 6965u, 4294967295u, 9648u, 55078u, 73484u, 1u, 7462u, 55256u, 13889u, 93240u, 89515u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = global1.a;
    global0 = array<u32, 30>();
    let var_1 = global0[_wgslsmith_index_u32(0u, 30u)];
    var var_2 = arg_0.wy;
    global0 = array<u32, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), 705f, (global1.a & global1.a) | global1.a)), _wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2() -> Struct_4 {
    let var_0 = reverseBits(6919i);
    var var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(global1.b.x, ~_wgslsmith_sub_i32(-21104i, var_0), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global1.b.x), global1.b.xy) << (firstTrailingBit(79000u) % 32u), ~0i | global1.b.x), vec4<i32>(-10353i, var_0, var_0, -54857i));
    let var_2 = Struct_1(false, global1.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(414f, -476f, -2245f, -1239f))))) <= 1f;
    var_1 = reverseBits(~var_2.b);
    return Struct_4(vec4<i32>(1i, -54704i, 0i, global1.b.x), vec3<u32>(min(global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 30u)] >> (1564u % 32u), abs(0u)), max(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 30u)], 0u), 53358u), abs(17194u)));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-446f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-243f * -614f), _wgslsmith_f_op_f32(f32(-1f) * -322f))))), Struct_1(true, var_0.a), Struct_1(global1.a, vec4<i32>(18073i, var_0.a.x, ~var_0.a.x | 2147483647i, _wgslsmith_clamp_i32(u_input.a, -1696i, _wgslsmith_dot_vec3_i32(var_0.a.yzz, vec3<i32>(var_0.a.x, -1i, 26686i))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(633f))))), _wgslsmith_f_op_f32(abs(1027f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-431f, 1667f, -208f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1279f, 1000f, 965f) + vec3<f32>(-1000f, -450f, 2001f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2313f, 723f, 712f)))))));
    var var_2 = Struct_3(var_1.b);
    global1 = var_1.b;
    return select(_wgslsmith_dot_vec2_i32(var_2.a.b.yy, vec2<i32>(~0i, 2147483647i)), ~(-var_1.b.b.x), true);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_1 {
    return Struct_1(all(!vec2<bool>(false, global1.a | true)), select(_wgslsmith_mod_vec4_i32(global1.b, vec4<i32>(u_input.a, abs(u_input.b), 3442i, _wgslsmith_dot_vec4_i32(arg_1, arg_1))), arg_1, global1.a | any(!vec3<bool>(global1.a, global1.a, true))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = arg_3;
    var_0 = arg_3;
    var var_1 = vec4<bool>(any(!select(vec2<bool>(false, false), !vec2<bool>(global1.a, true), select(vec2<bool>(global1.a, arg_3.b.a), vec2<bool>(arg_3.b.a, true), arg_2.a))), global1.a, arg_3.b.a, func_4(_wgslsmith_dot_vec2_u32(func_2().b.xx, _wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63253u, 24u)], 24u)], 40307u), vec2<u32>(global2[_wgslsmith_index_u32(66111u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)]))), _wgslsmith_add_vec4_i32(var_0.c.b, global1.b), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(19462u, 1u), vec2<u32>(68158u, 40427u), vec2<u32>(1580u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75334u, 30u)], 30u)]))).b.x < arg_3.b.b.x);
    global2 = array<u32, 24>();
    var var_2 = _wgslsmith_mult_i32(firstLeadingBit(arg_3.c.b.x) << (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~57364u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(69189u, 24u)], 0u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 30u)])), 24u)], 24u)]), 24u)], 1u) % 32u), var_0.c.b.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 122640u), func_2().b.xx), select(vec2<u32>(0u, 6295u), select(vec2<u32>(34683u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82823u, 24u)], 30u)]), vec2<u32>(60657u, 52280u), vec2<bool>(global1.a, var_0.c.a)), select(vec2<bool>(arg_3.c.a, var_0.b.a), var_1.zx, vec2<bool>(arg_2.a, true)))) % 32u));
    return vec3<u32>(reverseBits(~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~0u), 30u)], 24u)]), global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~1u, 30u)], 24u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9389u, 24u)], 24u)], ~global2[_wgslsmith_index_u32(0u, 24u)]), firstTrailingBit(~vec2<u32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 30u)], 38716u))) >> (_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 24u)], 30u)], 24u)], 30u)], ~global0[_wgslsmith_index_u32(select(1u, global2[_wgslsmith_index_u32(1u, 24u)], false), 30u)]) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-696f * 551f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-144f - -753f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1456f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_4(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58755u, 30u)], 24u)], global2[_wgslsmith_index_u32(53566u, 24u)], 0u), vec3<u32>(4294967295u, 0u, 4294967295u)), 30u)], vec4<i32>(-2147483647i >> (global2[_wgslsmith_index_u32(0u, 24u)] % 32u), func_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(114514u, 30u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(275u, 30u)])), u_input.b, global1.b.x), select(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 24u)]), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 22363u)), vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-373f * -733f) + _wgslsmith_f_op_f32(580f + 1063f)), func_4(1353u, ~global1.b, reverseBits(vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]))), Struct_1(global1.a, ~global1.b), vec3<f32>(362f, -1838f, -1254f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2080f, -112f, -271f))))) & ~vec3<u32>(select(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 30u)]), 0u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19548u, 30u)], 30u)], 30u)], 30u)] % 32u), global1.b.x < u_input.a), 12181u, global0[_wgslsmith_index_u32(4294967295u, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(22765u, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(min(max(vec4<u32>(var_0.x, 59347u, 4294967295u, var_0.x), vec4<u32>(var_0.x, 4294967295u, var_0.x, global2[_wgslsmith_index_u32(0u, 24u)])), ~vec4<u32>(var_0.x, var_0.x, var_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4080u, 24u)], 24u)], 24u)], 24u)])), firstTrailingBit(vec4<u32>(40731u, global2[_wgslsmith_index_u32(16629u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]))), firstTrailingBit(~vec4<u32>(var_0.x, var_0.x, 4294967295u, global0[_wgslsmith_index_u32(27598u, 30u)]) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(12579u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], 52576u), vec4<u32>(38718u, var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 30u)], 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30916u, 24u)], 30u)])) % vec4<u32>(32u))), max(~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 30u)], 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11857u, 24u)], 30u)], 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], 0u)), ~select(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4357u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(40217u, 24u)]), vec4<u32>(27471u, 21210u, 17806u, 1u), vec4<bool>(true, false, true, global1.a)))), min(~(-2147483647i), u_input.a), 1f);
}

