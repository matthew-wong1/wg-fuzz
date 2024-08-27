struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: array<bool, 9> = array<bool, 9>(false, false, false, false, true, true, true, false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = arg_1.b.c;
    global3 = array<bool, 9>();
    var_0 = !select(vec3<bool>(false, true, true), arg_1.b.c, !select(vec3<bool>(arg_1.b.c.x, arg_1.b.c.x, false), select(arg_1.b.c, vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, arg_1.b.c.x, false)), vec3<bool>(global3[_wgslsmith_index_u32(arg_1.b.a.x, 9u)], true, false)));
    var_0 = vec3<bool>(global3[_wgslsmith_index_u32(97325u, 9u)], var_0.x, !var_0.x);
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b.a.x, arg_0, 4294967295u), _wgslsmith_clamp_vec3_u32(arg_1.b.a.wxx, vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(16467u, arg_0, 58582u))), arg_1.b.a.zwy), countOneBits(arg_0), 32255u << (arg_0 % 32u), 1u), _wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, arg_3.zwy), ~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 2147483647i, arg_1.b.d), arg_3.wyx))), select(select(!global1.xxy, vec3<bool>(true, false, -840f >= arg_2.x), select(!global1.wyz, arg_1.b.c, !vec3<bool>(global3[_wgslsmith_index_u32(arg_1.b.a.x, 9u)], true, true))), vec3<bool>(all(select(global1.xwx, global1.yzy, false)), var_0.x, false), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, -16093i, arg_1.a)), -vec4<i32>(arg_3.x, u_input.c.x, u_input.a.x, arg_3.x)) <= ~_wgslsmith_add_i32(0i, 12875i)), ~arg_3.x | countOneBits(_wgslsmith_dot_vec4_i32(arg_3, -arg_3)));
    return ~max(var_1.a.x, ~(~arg_0));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(753f));
    global0 = array<vec2<i32>, 1>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32((arg_0.x >> (arg_0.x % 32u)) << (min(_wgslsmith_sub_u32(1u, arg_0.x), ~142761u) % 32u), _wgslsmith_dot_vec3_u32(countOneBits(~arg_0), reverseBits(~arg_0))), firstLeadingBit(arg_0.x ^ arg_0.x));
    var_1 = ~min(4294967295u, arg_0.x);
    var_0 = _wgslsmith_f_op_f32(1178f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(433f - _wgslsmith_f_op_f32(f32(-1f) * -1482f)))) + _wgslsmith_f_op_f32(sign(1272f))));
    return Struct_1(_wgslsmith_sub_vec4_u32(min(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(0u, arg_0.x, 1u, 0u) & vec4<u32>(4294967295u, 47214u, arg_0.x, 4294967295u)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 88088u), arg_0.x << (0u % 32u), func_3(2276u, Struct_3(-1i, Struct_1(vec4<u32>(arg_0.x, arg_0.x, 5789u, 3888u), u_input.b, global1.zwz, u_input.b.x)), vec3<f32>(-1000f, 177f, -1121f), vec4<i32>(u_input.c.x, arg_3.x, u_input.d, -22176i)), 43648u)) | ~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, arg_0.x, 1u, 1u), vec4<u32>(arg_0.x, 1u, 4294967295u, 6265u), true), abs(vec4<u32>(arg_0.x, 43446u, arg_0.x, 1u)), vec4<u32>(arg_0.x, arg_0.x, 5428u, 4294967295u)), vec3<i32>(u_input.b.x, u_input.c.x, _wgslsmith_add_i32(u_input.c.x, 23991i)), select(vec3<bool>(!any(vec4<bool>(arg_2.x, true, arg_1.x, true)), select(false, arg_0.x >= arg_0.x, !global1.x), global1.x), select(!arg_2, arg_2, true), arg_2.x), u_input.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_3 {
    global3 = array<bool, 9>();
    var var_0 = Struct_3(abs(~_wgslsmith_sub_i32(arg_0.a.b.x, 2219i)), arg_0.b);
    global2 = array<vec2<u32>, 1>();
    global0 = array<vec2<i32>, 1>();
    global3 = array<bool, 9>();
    return Struct_3(func_2(vec3<u32>(firstTrailingBit(1u) ^ ~15535u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(var_0.b.a.x, 1u)], var_0.b.a.yw, arg_0.b.a.yz), firstTrailingBit(global2[_wgslsmith_index_u32(9487u, 1u)])), _wgslsmith_sub_u32(4294967295u, ~0u)), func_2(firstLeadingBit(reverseBits(arg_0.b.a.ywx)), global1.yy, vec3<bool>(var_0.b.c.x & var_0.b.c.x, false, true), ~vec3<i32>(arg_0.b.b.x, var_0.b.d, u_input.a.x)).c.yx, global1.xyx, arg_1.xzy).b.x, func_2(vec3<u32>(arg_0.a.a.x, var_0.b.a.x, arg_0.b.a.x), !vec2<bool>(var_0.b.c.x & arg_0.a.c.x, !arg_0.b.c.x), func_2(var_0.b.a.xwx, !func_2(arg_0.b.a.wxz, vec2<bool>(true, true), var_0.b.c, var_0.b.b).c.zx, select(vec3<bool>(global1.x, var_0.b.c.x, false), !arg_0.a.c, !vec3<bool>(false, false, global3[_wgslsmith_index_u32(0u, 9u)])), vec3<i32>(73575i, arg_0.b.b.x, u_input.b.x) << ((var_0.b.a.zyw & vec3<u32>(143633u, 4294967295u, var_0.b.a.x)) % vec3<u32>(32u))).c, arg_1.yyz));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_4(Struct_2(func_2(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), select(vec2<bool>(global3[_wgslsmith_index_u32(41255u, 9u)], true), global1.zz, true), global1.zzw, -u_input.b), func_2(vec3<u32>(~1u, _wgslsmith_clamp_u32(arg_0, arg_0, 1u), _wgslsmith_clamp_u32(arg_0, 12897u, arg_0)), select(select(global1.zw, vec2<bool>(true, false), true), vec2<bool>(global3[_wgslsmith_index_u32(arg_0, 9u)], global3[_wgslsmith_index_u32(63210u, 9u)]), global1.zx), vec3<bool>(any(global1.ywz), global3[_wgslsmith_index_u32(arg_0, 9u)] || false, global3[_wgslsmith_index_u32(~arg_0, 9u)]), vec3<i32>(-2147483647i, u_input.d, abs(-1i)))), countOneBits(~max(vec4<i32>(-29191i, 2147483647i, u_input.a.x, u_input.c.x), vec4<i32>(u_input.a.x, -1i, -2147483647i, 0i))));
    let var_1 = ~(~7483u);
    return _wgslsmith_f_op_f32(trunc(598f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 9>();
    global3 = array<bool, 9>();
    var var_0 = Struct_3(17389i, Struct_1(~vec4<u32>(~0u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(69943u, 0u, 4294967295u), vec3<u32>(30222u, 47695u, 27830u)), 1u), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 6585i, u_input.c.x), vec3<i32>(2147483647i, -2036i, u_input.b.x)), -vec3<i32>(-49653i, u_input.a.x, u_input.a.x)), select(vec3<i32>(0i, 1i, -19356i), u_input.a, global1.x)), !select(!global1.wxx, !global1.zzw, !global3[_wgslsmith_index_u32(4294967295u, 9u)]), u_input.a.x));
    let var_1 = ~countOneBits(~_wgslsmith_add_vec3_u32(var_0.b.a.yzx << (var_0.b.a.wxx % vec3<u32>(32u)), ~vec3<u32>(var_0.b.a.x, 69481u, var_0.b.a.x)));
    var var_2 = Struct_1(var_0.b.a, vec3<i32>(-15932i, u_input.a.x, -20006i), var_0.b.c, ~(~min(-1i, var_0.b.d)));
    var var_3 = max(vec2<u32>(1u, 1u) | var_0.b.a.yy, var_0.b.a.xx >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.a.x, 0u), var_0.b.a.zw), ~1u) % vec2<u32>(32u))) | ~(~vec2<u32>(0u, reverseBits(var_2.a.x)));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(func_1(0u >> (firstTrailingBit(min(var_0.b.a.x, 46087u)) % 32u)))));
    let var_5 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(1298f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2185f, -293f) * vec3<f32>(1049f, -1417f, 1000f)) - vec3<f32>(599f, 988f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(567f * -905f) + 1f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) * -334f)))), var_2.a.zyw, vec3<u32>(~41898u, _wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_2.a.x, var_0.b.a.x, 1u), vec4<u32>(1u, 72585u, var_2.a.x, 0u))), 5827u), 10588u));
}

