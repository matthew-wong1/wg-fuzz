struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
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

var<private> global0: vec4<u32>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 2147483647i, -1i, 29393i);

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-2077f, -1805f, 355f), vec3<i32>(-47318i, 19209i, 2147483647i), true, vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(false, true, 39199u == ~_wgslsmith_add_u32(~1u, _wgslsmith_mult_u32(global0.x, global0.x)));
    global3 = arg_2;
    var var_1 = ~vec4<u32>(global0.x, 63496u, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.zwz, u_input.a << (vec3<u32>(1u, 0u, global0.x) % vec3<u32>(32u))), ~(~u_input.d)));
    return arg_1;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, 35106i, -10169i), vec4<i32>(0i, 1i, global1.x, -9891i)), _wgslsmith_sub_i32(global1.x, min(arg_0, -2147483647i)), i32(-1i) * -u_input.b), _wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(arg_1.b, vec3<i32>(u_input.b, u_input.b, arg_0)), arg_1.b), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -5881i, arg_1.b.x, _wgslsmith_add_i32(u_input.b, arg_1.b.x)), global1.wyz));
    var var_1 = ~_wgslsmith_mod_u32(61593u, ~(u_input.a.x << (_wgslsmith_dot_vec3_u32(global0.yyz, global0.wzw) % 32u)));
    var var_2 = all(!(!select(select(vec4<bool>(global3.c, false, global3.e.x, global3.c), vec4<bool>(false, arg_1.c, false, arg_1.d.x), vec4<bool>(true, true, false, arg_1.d.x)), select(vec4<bool>(arg_1.d.x, true, false, global3.c), vec4<bool>(false, false, arg_1.e.x, false), vec4<bool>(global3.d.x, false, true, global3.e.x)), !vec4<bool>(true, global3.e.x, global3.d.x, false))));
    global3 = arg_1;
    global2 = ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(34811u, global0.x, 39615u), _wgslsmith_mod_u32(667u, 4294967295u)), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.c, u_input.d), _wgslsmith_div_u32(u_input.a.x, u_input.a.x) ^ ~global0.x));
    return global3.d.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(vec4<bool>(false, true, (_wgslsmith_div_u32(1u, 10004u) > global0.x) | all(vec4<bool>(arg_1.d.x, arg_1.c, true, false)), arg_1.e.x));
    let var_1 = vec3<u32>(4294967295u, firstLeadingBit(0u), 1u);
    global0 = select(_wgslsmith_sub_vec4_u32(~min(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.x, var_1.x, global0.x), vec4<u32>(var_1.x, var_1.x, u_input.a.x, u_input.d)), abs(vec4<u32>(u_input.c, global0.x, 4679u, 27262u))), vec4<u32>(var_1.x, var_1.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(9760u, 1u), 72431u << (0u % 32u), countOneBits(4294967295u)), ~_wgslsmith_add_u32(global0.x, 0u))), abs(~max(vec4<u32>(4294967295u, 21254u, 41136u, 0u), vec4<u32>(53463u, 4294967295u, u_input.c, 1u)) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(18365u, 4294967295u, u_input.d, 35739u), vec4<u32>(50868u, var_1.x, 10884u, 4294967295u), vec4<u32>(15562u, 0u, u_input.d, var_1.x)) | vec4<u32>(4294967295u, 4294967295u, var_1.x, 24694u)) % vec4<u32>(32u))), global0.x < _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, 54814u), vec4<u32>(u_input.c, global0.x, global0.x, 4294967295u) & vec4<u32>(global0.x, 39444u, u_input.a.x, 1u)), _wgslsmith_clamp_u32(countOneBits(global0.x), 8529u, _wgslsmith_div_u32(var_1.x, global0.x))));
    var var_2 = -vec3<i32>(-2147483647i, global1.x, -2147483647i);
    let var_3 = global0.xzw;
    return Struct_1(vec3<f32>(-1187f, global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -665f)), abs(countOneBits(max(-vec3<i32>(-2147483647i, 3046i, arg_1.b.x), ~vec3<i32>(global3.b.x, -1i, global1.x)))), func_3(-44295i >> (~var_1.x % 32u), arg_1), global3.d, !vec2<bool>(!arg_0, all(!vec3<bool>(var_0, var_0, var_0))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1744f, arg_2, -1000f))) + arg_0.a));
    var var_1 = ~(-(~vec4<i32>(-27391i, 30199i, 12870i, -24261i) >> (firstLeadingBit(vec4<u32>(14999u, 17651u, 4294967295u, 1u)) % vec4<u32>(32u))) << (vec4<u32>(u_input.d << (~0u % 32u), ~u_input.d, global0.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(32351u, 1u, 1u), u_input.a))) % vec4<u32>(32u)));
    var var_2 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global0.x, 48035u, global0.x)), ~(~vec3<u32>(1u, 107662u, u_input.c))), ~(~(~global0.x)));
    var var_3 = Struct_1(vec3<f32>(-763f, var_0.x, _wgslsmith_f_op_f32(ceil(1f))), arg_0.b, true, vec2<bool>(!(-28258i < u_input.b), true), arg_0.e);
    let var_4 = arg_0;
    return func_2(-775f, arg_0, func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.a.x, var_3.a.x))), arg_0.a.x)), func_4(false, Struct_1(_wgslsmith_f_op_vec3_f32(var_3.a + arg_0.a), reverseBits(global1.xyw), any(vec4<bool>(true, arg_0.e.x, arg_0.e.x, var_4.d.x)), func_4(global3.c, Struct_1(vec3<f32>(1460f, -225f, arg_2), vec3<i32>(var_1.x, 1i, 1i), true, arg_0.e, vec2<bool>(arg_0.e.x, arg_0.e.x))).d, select(vec2<bool>(true, var_3.d.x), var_3.d, global3.e))), arg_0));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(func_4(func_3(u_input.b, func_2(global3.a.x, Struct_1(global3.a, global3.b, global3.c, vec2<bool>(global3.d.x, global3.d.x), global3.d), Struct_1(global3.a, global1.zwy, false, vec2<bool>(false, global3.d.x), global3.d))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(198f, global3.a.x, false)) - _wgslsmith_f_op_f32(f32(-1f) * -762f)), func_2(global3.a.x, func_2(global3.a.x, Struct_1(global3.a, global1.xxy, global3.c, global3.e, global3.e), Struct_1(vec3<f32>(214f, global3.a.x, 602f), vec3<i32>(1i, global3.b.x, 5196i), false, vec2<bool>(global3.e.x, global3.e.x), global3.d)), Struct_1(vec3<f32>(-565f, -1000f, global3.a.x), global1.xzx, false, vec2<bool>(false, true), vec2<bool>(global3.c, false))), Struct_1(vec3<f32>(-154f, global3.a.x, global3.a.x), global3.b, !global3.e.x, func_2(-1246f, Struct_1(vec3<f32>(global3.a.x, global3.a.x, -162f), global3.b, global3.d.x, global3.e, vec2<bool>(global3.d.x, global3.c)), Struct_1(global3.a, global1.wzx, global3.d.x, global3.e, vec2<bool>(true, true))).e, select(vec2<bool>(global3.d.x, false), vec2<bool>(global3.d.x, global3.d.x), global3.e)))), 784i, -956f);
    global0 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(~1u, u_input.d, ~global0.x, u_input.a.x), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(u_input.d, 70734u, global0.x, 34913u)), vec4<u32>(72154u, 4294967295u, u_input.d, 14591u) ^ vec4<u32>(u_input.c, global0.x, u_input.c, 0u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1772f), _wgslsmith_f_op_f32(-global3.a.x));
    let var_2 = ~_wgslsmith_add_u32(u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), global0.xz), global0.xx)));
    global1 = min(min(firstTrailingBit(-vec4<i32>(-1i, global3.b.x, global3.b.x, var_0.b.x) >> (vec4<u32>(u_input.a.x, 1u, u_input.d, global0.x) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, global3.b.x, -2031i, var_0.b.x), -vec4<i32>(4124i, -1i, global1.x, u_input.b)))), (_wgslsmith_add_vec4_i32(~vec4<i32>(-20356i, u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(900i, global1.x, 38390i, global3.b.x), vec4<i32>(u_input.b, -21310i, -7097i, -26255i))) ^ (countOneBits(vec4<i32>(var_0.b.x, u_input.b, -1i, 9856i)) | vec4<i32>(47761i, u_input.b, 1i, global3.b.x))) | ~firstLeadingBit(~vec4<i32>(0i, var_0.b.x, var_0.b.x, 2147483647i)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(42708i), -18070i, -1i), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -1i, -30203i), vec3<i32>(-2147483647i, global1.x, -1i)), firstLeadingBit(vec3<i32>(u_input.b, var_0.b.x, global1.x))))), all(var_0.d), !global3.e, vec2<bool>(func_4(false, func_5(Struct_1(var_0.a, vec3<i32>(u_input.b, -2147483647i, global3.b.x), var_0.e.x, var_0.e, global3.e), global3.b.x, global3.a.x)).c || false, all(select(select(vec3<bool>(var_0.d.x, global3.d.x, var_0.e.x), vec3<bool>(false, global3.c, true), vec3<bool>(var_0.c, true, false)), !vec3<bool>(false, global3.c, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = _wgslsmith_mult_u32(u_input.a.x, ~u_input.d);
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.a), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_0.a.x - 1313f)), func_2(202f, func_2(var_0.a.x, var_0, Struct_1(var_0.a, global1.xxw, var_0.d.x, var_0.e, global3.e)), var_0).a.x, _wgslsmith_f_op_f32(-1845f + _wgslsmith_f_op_f32(-var_0.a.x))))), -func_4(true, var_0).b, false, global3.d, vec2<bool>(var_0.e.x, func_2(_wgslsmith_f_op_f32(-var_0.a.x), func_2(1254f, Struct_1(global3.a, global3.b, false, vec2<bool>(false, var_0.e.x), var_0.e), Struct_1(vec3<f32>(-1000f, 1000f, var_0.a.x), vec3<i32>(0i, global3.b.x, u_input.b), var_0.e.x, vec2<bool>(global3.e.x, global3.e.x), vec2<bool>(var_0.c, true))), Struct_1(vec3<f32>(579f, -1308f, 645f), global1.zxz, var_0.d.x, var_0.d, vec2<bool>(false, global3.e.x))).a.x >= _wgslsmith_f_op_f32(sign(1f))));
    global2 = ~countOneBits(~4294967295u);
    global1 = ~(~vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(var_0.b.x), global3.b.x), u_input.b, func_4(func_4(true, Struct_1(var_0.a, vec3<i32>(global1.x, -2147483647i, 1i), global3.d.x, var_0.e, global3.e)).d.x, var_0).b.x, 37936i));
    global2 = ((_wgslsmith_mult_u32(max(4294967295u, u_input.d), countOneBits(u_input.a.x)) ^ u_input.d) & countOneBits(firstTrailingBit(max(4294967295u, 4294967295u)))) | global0.x;
    var var_1 = var_0.a.zx;
    global2 = u_input.d << (firstLeadingBit(0u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, global3.a.x, -1783f, _wgslsmith_f_op_f32(round(142f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, var_1.x, 595f, -353f) * vec4<f32>(426f, var_0.a.x, global3.a.x, var_0.a.x)))))))), global0.yz, 1272f, ~global0.x, i32(-1i) * -1i);
}

