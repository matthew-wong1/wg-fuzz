struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(1u, 1u, 29316u), vec3<u32>(6655u, 1u, 1u), vec3<u32>(0u, 11117u, 8533u), vec3<u32>(0u, 23782u, 0u), vec3<u32>(1u, 0u, 114767u), vec3<u32>(1u, 0u, 1u), vec3<u32>(30856u, 1u, 1u), vec3<u32>(4294967295u, 43262u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(27826u, 1u, 0u), vec3<u32>(39804u, 89624u, 19757u), vec3<u32>(14032u, 4294967295u, 38476u), vec3<u32>(16879u, 1u, 1u), vec3<u32>(4294967295u, 61948u, 0u), vec3<u32>(59111u, 1u, 1u), vec3<u32>(36846u, 4294967295u, 1u), vec3<u32>(4865u, 0u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(7896u, 1u, 4294967295u), vec3<u32>(1u, 50358u, 15912u), vec3<u32>(1491u, 1u, 18915u), vec3<u32>(4294967295u, 16836u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 1u, 38884u), vec3<u32>(1u, 1u, 1u), vec3<u32>(38782u, 29707u, 28551u), vec3<u32>(40121u, 19916u, 60914u), vec3<u32>(44820u, 62023u, 4294967295u), vec3<u32>(44188u, 60410u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u));

var<private> global1: Struct_1 = Struct_1(-1000f, vec2<f32>(-1793f, -461f), false, vec4<u32>(1u, 76102u, 62652u, 20648u));

var<private> global2: Struct_1;

var<private> global3: array<i32, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> vec4<i32> {
    global3 = array<i32, 19>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(select(-503f, _wgslsmith_f_op_f32(-arg_0.x), true)), Struct_2(arg_1.b.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-367f, -1782f, global1.a, 801f)), arg_1.b.b)))), all(select(!vec4<bool>(true, arg_1.b.a.c, true, true), select(!vec4<bool>(global1.c, false, false, false), select(vec4<bool>(global1.c, arg_1.b.a.c, false, arg_1.c), vec4<bool>(false, global2.c, false, global2.c), vec4<bool>(false, arg_1.c, global1.c, true)), true), select(vec4<bool>(global2.c, true, global2.c, true), vec4<bool>(global2.c, global2.c, global1.c, false), !global2.c))));
    var_0 = arg_1;
    var var_1 = Struct_3(select(~_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(1679i, u_input.a.x, global3[_wgslsmith_index_u32(arg_1.b.a.d.x, 19u)])), countOneBits(vec3<i32>(8225i, global3[_wgslsmith_index_u32(0u, 19u)], -19567i)), all(vec3<bool>(global1.c, arg_1.c, global1.c))) | (max(u_input.a, vec3<i32>(64215i, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 19u)])) << (arg_1.b.a.d.xyw % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-arg_0), ~(~vec2<u32>(19592u, var_0.b.a.d.x)), select(global1.d.xzw, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.a.d.x, global2.d.x, var_0.b.a.d.x), var_0.b.a.d.wzx), ~arg_1.b.a.d.xzz), any(!vec2<bool>(var_0.c, global1.c))) << (global2.d.zxw % vec3<u32>(32u)));
    let var_2 = var_1.a;
    return ~(-_wgslsmith_mult_vec4_i32(firstTrailingBit(max(vec4<i32>(2147483647i, var_1.a.x, var_1.a.x, global3[_wgslsmith_index_u32(3622u, 19u)]), vec4<i32>(var_1.a.x, var_1.a.x, global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a.xy, vec2<i32>(var_2.x, global3[_wgslsmith_index_u32(global2.d.x, 19u)])), 1i << (var_1.c.x % 32u), abs(-5574i), firstLeadingBit(var_1.a.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    var var_0 = 3807u;
    var var_1 = func_3(vec4<f32>(_wgslsmith_f_op_f32(sign(298f)), -546f, _wgslsmith_f_op_f32(arg_1.a + -637f), -844f), arg_1);
    global1 = arg_1.b.a;
    var var_2 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(global1.d.x, 4036u), reverseBits(global1.d.zy)) & _wgslsmith_sub_vec2_u32(arg_0.d.wx, ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global2.d.x), global1.d.yy)));
    let var_3 = countOneBits(-((_wgslsmith_mult_i32(37995i, global3[_wgslsmith_index_u32(13045u, 19u)]) << (max(38031u, arg_0.d.x) % 32u)) << (4294967295u % 32u)));
    return 9618u;
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = Struct_1(-558f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(arg_0.b)))), 1i >= _wgslsmith_dot_vec2_i32(~u_input.a.yx, _wgslsmith_add_vec2_i32(-u_input.a.xz, _wgslsmith_add_vec2_i32(vec2<i32>(22209i, global3[_wgslsmith_index_u32(29496u, 19u)]), vec2<i32>(global3[_wgslsmith_index_u32(global1.d.x, 19u)], u_input.a.x)))), vec4<u32>(func_2(Struct_1(_wgslsmith_f_op_f32(-804f * global2.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, 1310f)), any(vec3<bool>(false, global2.c, arg_0.c)), vec4<u32>(28605u, 13672u, 4294967295u, arg_0.d.x)), Struct_4(_wgslsmith_f_op_f32(global1.a + arg_0.a), Struct_2(Struct_1(arg_0.a, arg_0.b, true, vec4<u32>(arg_0.d.x, 49428u, global1.d.x, 1u)), vec4<f32>(217f, global2.a, -151f, global2.a)), !global2.c)), arg_0.d.x, ~31537u, func_2(arg_0, Struct_4(_wgslsmith_f_op_f32(-global1.a), Struct_2(arg_0, vec4<f32>(global1.a, 1201f, global2.b.x, -777f)), global1.c))));
    global1 = arg_0;
    var var_1 = Struct_3(vec3<i32>(-33990i, select(i32(-1i) * -14709i, u_input.a.x, true), global3[_wgslsmith_index_u32(arg_0.d.x, 19u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1320f, 1628f, -1569f, global2.b.x))), vec4<f32>(-255f, 400f, global1.b.x, _wgslsmith_f_op_f32(var_0.a - arg_0.b.x)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(global2.d.x), 0u), reverseBits(vec2<u32>(0u, 4294967295u)) | global2.d.zx), global2.d.x), vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(global1.d, reverseBits(vec4<u32>(0u, arg_0.d.x, 4294967295u, 4131u)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.x, 40217u, 4294967295u, arg_0.d.x), vec4<u32>(arg_0.d.x, 10769u, var_0.d.x, 1u)) | 0u, 0u));
    let var_2 = vec2<i32>(~max(~(global3[_wgslsmith_index_u32(653u, 19u)] | u_input.a.x), 1i), i32(-1i) * -2789i);
    global0 = array<vec3<u32>, 31>();
    return Struct_4(-365f, Struct_2(Struct_1(-750f, _wgslsmith_f_op_vec2_f32(vec2<f32>(678f, var_1.b.x) + vec2<f32>(-540f, var_1.b.x)), global2.c, var_0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.b.x, var_0.b.x, 222f, global2.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, 861f, 1159f, -799f))), vec4<f32>(var_1.b.x, global1.a, var_1.b.x, -1000f)))), any(vec2<bool>(false, any(select(vec3<bool>(true, var_0.c, false), vec3<bool>(global1.c, true, true), vec3<bool>(false, false, false))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + -108f);
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1.x)))))), global2.b, select(u_input.a.x == _wgslsmith_div_i32(global3[_wgslsmith_index_u32(global1.d.x, 19u)], global3[_wgslsmith_index_u32(arg_0.b.a.d.x, 19u)]), true, global2.c), global1.d));
    let var_2 = func_1(func_1(func_1(var_1.b.a).b.a).b.a).b.a;
    global3 = array<i32, 19>();
    let var_3 = _wgslsmith_f_op_vec3_f32(min(arg_0.b.b.wzx, arg_0.b.b.zyy));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -301f, -2109f, global2.b.x)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-664f, 614f, global2.b.x, 276f) + vec4<f32>(global1.b.x, -651f, -897f, global1.b.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-274f, -896f, -539f, global1.b.x)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(global2.b.x, var_0.wz, global2.c, vec4<u32>(0u, 4294967295u, global2.d.x, global1.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-157f, global1.a)))), _wgslsmith_f_op_f32(func_4(func_1(Struct_1(-354f, global2.b, global2.c, global1.d)), vec2<f32>(350f, var_0.x))), func_1(func_1(Struct_1(561f, vec2<f32>(global2.a, 1465f), global2.c, global1.d)).b.a).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(289f, var_0.x, 776f, 1000f) - vec4<f32>(global2.a, 101f, 1443f, global1.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, -326f, var_0.x, -406f)))))));
    global2 = Struct_1(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-global2.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.x)) + var_0.x), -278f), global1.c, global1.d & _wgslsmith_sub_vec4_u32(vec4<u32>(~52592u, ~global2.d.x, global1.d.x, global2.d.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global2.d.x, global1.d.x, 4294967295u), global1.d), ~global2.d, vec4<u32>(global1.d.x, 1u, global2.d.x, global1.d.x))));
    var var_1 = func_1(Struct_1(global1.b.x, func_1(Struct_1(-290f, _wgslsmith_div_vec2_f32(vec2<f32>(1067f, -884f), vec2<f32>(455f, 982f)), all(vec4<bool>(global1.c, true, global2.c, false)), global1.d | global2.d)).b.b.wy, all(select(vec4<bool>(true, global2.c, global1.c, global1.c), !vec4<bool>(false, global2.c, global2.c, true), global1.c)), vec4<u32>(global1.d.x, global2.d.x | func_1(Struct_1(var_0.x, vec2<f32>(var_0.x, global2.b.x), global2.c, vec4<u32>(4294967295u, global1.d.x, global2.d.x, 0u))).b.a.d.x, _wgslsmith_dot_vec3_u32(~global2.d.wzw, ~global2.d.wxy), firstTrailingBit(1u))));
    var var_2 = Struct_3(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(410f, -315f, var_0.x, -836f), var_1.b.b))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.b.b))), var_1.b.b))), global1.d.xy, vec3<u32>(1u, _wgslsmith_mult_u32(abs(abs(36919u)), _wgslsmith_mult_u32(~global2.d.x, global1.d.x)), ~17631u));
    let var_3 = vec2<bool>(var_1.c, true);
    var var_4 = _wgslsmith_mult_i32(select(6937i, 1i, _wgslsmith_f_op_f32(-global1.b.x) >= _wgslsmith_f_op_f32(global2.a * -394f)), u_input.a.x) | ~(i32(-1i) * -2147483647i);
    global0 = array<vec3<u32>, 31>();
    var var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, var_2.c.x), global1.d.xxy), ~vec3<u32>(var_2.d.x, global2.d.x, global2.d.x)), ~var_1.b.a.d.wzw, global2.c)), _wgslsmith_div_vec4_f32(var_1.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, 1005f, 878f, 1100f), vec4<f32>(global1.a, -833f, global1.a, var_2.b.x)), var_1.b.b, vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(-var_1.b.b))));
}

