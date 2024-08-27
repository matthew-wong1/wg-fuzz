struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(1u, 4294967295u, 19533u), vec3<u32>(1u, 71292u, 0u), vec3<u32>(0u, 0u, 34775u), vec3<u32>(0u, 1u, 2541u), vec3<u32>(0u, 0u, 1u), vec3<u32>(65366u, 51366u, 37248u), vec3<u32>(1u, 54890u, 100687u), vec3<u32>(0u, 1u, 1u), vec3<u32>(60733u, 51635u, 9827u));

var<private> global2: i32;

var<private> global3: vec2<i32>;

var<private> global4: array<f32, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32) -> Struct_1 {
    return Struct_1(~vec4<u32>(u_input.a, _wgslsmith_mod_u32(firstTrailingBit(31930u), ~0u), 1u, ~_wgslsmith_div_u32(37660u, 48020u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-936f, -548f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1276f, global4[_wgslsmith_index_u32(20385u, 16u)])))))), select(min(arg_2, u_input.a), 33824u, global4[_wgslsmith_index_u32(arg_1, 16u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 16u)] + -807f))), firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(countOneBits(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 25507i, 2147483647i), vec4<i32>(-17147i, 3277i, global0.x, global3.x))), -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -2147483647i), global0.ww))));
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    global0 = ~(-reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d.x, global0.x, arg_0.d.x, -29660i) | vec4<i32>(-6967i, -1i, global0.x, arg_0.d.x), vec4<i32>(-2147483647i, arg_0.d.x, 31111i, global0.x))));
    global4 = array<f32, 16>();
    global3 = arg_0.d;
    let var_0 = select(vec2<bool>(false, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(55985u, 16u)]) >= _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(arg_0.b.x * -1792f))), !select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true || (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 22840u) | vec2<u32>(u_input.a, 7384u), vec2<u32>(u_input.a, 0u) | vec2<u32>(arg_0.c, 31114u)) > countOneBits(~0u)));
    global0 = ~countOneBits(reverseBits(vec4<i32>(global0.x, arg_0.d.x, global0.x, global3.x)) & max(vec4<i32>(arg_0.d.x, global3.x, -18348i, -35071i), vec4<i32>(global0.x, arg_0.d.x, 2147483647i, u_input.b))) ^ select(vec4<i32>(arg_0.d.x, global0.x << (firstTrailingBit(0u) % 32u), 0i, ~(41344i & global3.x)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d.x, global3.x, global3.x, -52612i), vec4<i32>(7986i, -33792i, arg_0.d.x, global3.x)) & vec4<i32>(global3.x, -29840i, 1i, arg_0.d.x)), false);
    return Struct_2(arg_0.a.yx, Struct_1(_wgslsmith_mod_vec4_u32(reverseBits(arg_0.a), ~(~vec4<u32>(18350u, arg_0.c, u_input.a, arg_0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(sign(672f)), arg_0.b.x), arg_0.a.x, reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, -16327i, u_input.b), global0.xwx), abs(arg_0.d.x)))), func_2(~firstTrailingBit(121277u), ~(u_input.a ^ ~u_input.a), _wgslsmith_sub_u32(~4294967295u, u_input.a)));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    return func_2(~max(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 1u), arg_1)), _wgslsmith_dot_vec4_u32(~(~arg_2.b.a), arg_2.c.a), _wgslsmith_mult_u32(2275u, 72855u));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)))), vec4<bool>(_wgslsmith_div_i32(~1i, u_input.b) < (global0.x & _wgslsmith_mod_i32(15539i, 13124i)), false, all(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), any(vec2<bool>(true, true))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), u_input.a <= 1u), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)), true));
    var_0 = select(!select(select(vec4<bool>(true, false, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), false), u_input.b <= -1i), vec4<bool>(any(vec2<bool>(var_0.x, true)), u_input.a > u_input.a, var_0.x & true, var_0.x == var_0.x), select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), true)), select(!(!vec4<bool>(true, false, var_0.x, var_0.x)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(false, false, true, var_0.x)), select(vec4<bool>(any(vec4<bool>(true, true, var_0.x, var_0.x)), var_0.x, any(var_0.xwy), all(vec3<bool>(false, true, var_0.x))), vec4<bool>(true, false, var_0.x & true, var_0.x), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), var_0.x);
    var var_1 = abs(abs(49651i));
    global2 = global3.x;
    var var_2 = 0i;
    return func_4(-902f, (u_input.a ^ u_input.a) & u_input.a, func_3(func_2(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 75796u), u_input.a), u_input.a)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    global3 = vec2<i32>(~9903i, reverseBits(u_input.b));
    let var_0 = false;
    var var_1 = -vec3<i32>(32585i, global0.x, 31510i);
    let var_2 = arg_2;
    global0 = min(~(abs(vec4<i32>(arg_3, var_2.b.d.x, 1i, 1i)) | vec4<i32>(-35375i, u_input.b, u_input.b, -1i)), vec4<i32>(func_2(u_input.a | 6775u, arg_1.c.a.x, select(1u, var_2.a.x, false)).d.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-42651i, -1i), abs(u_input.b)), arg_1.c.d.x, 1i)) | reverseBits(_wgslsmith_mod_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(arg_1.c.d.x, 6960i, global0.x, 2147483647i))), ~(vec4<i32>(-2147483647i, arg_1.b.d.x, arg_2.c.d.x, 1i) & vec4<i32>(var_2.c.d.x, var_1.x, global3.x, var_1.x))));
    return func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1256f)), var_2.c.b.x), ~_wgslsmith_div_u32(countOneBits(arg_0.x) & 90734u, _wgslsmith_mult_u32(arg_2.b.a.x, 0u)), Struct_2(_wgslsmith_div_vec2_u32(func_2(arg_1.b.a.x, ~arg_2.c.c, 237u | u_input.a).a.zw, select(vec2<u32>(arg_0.x, 1u), ~vec2<u32>(58564u, arg_0.x), all(vec3<bool>(false, false, true)))), Struct_1(vec4<u32>(max(63449u, arg_1.b.c), arg_2.b.a.x >> (var_2.c.c % 32u), firstTrailingBit(4294967295u), 21119u), vec2<f32>(-606f, _wgslsmith_f_op_f32(-1384f * 1654f)), arg_1.b.c, vec2<i32>(func_3(Struct_1(arg_0, vec2<f32>(-1487f, -693f), 0u, vec2<i32>(arg_1.c.d.x, -22814i))).b.d.x, _wgslsmith_dot_vec2_i32(var_1.yz, var_2.c.d))), func_2(abs(0u) << (_wgslsmith_dot_vec2_u32(arg_0.wz, arg_2.a) % 32u), _wgslsmith_clamp_u32(1u, arg_2.c.a.x, ~1u), max(~1u, arg_0.x & 0u))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = u_input.a ^ u_input.a;
    global2 = reverseBits(0i | -reverseBits(arg_0.x));
    global4 = array<f32, 16>();
    global4 = array<f32, 16>();
    global1 = array<vec3<u32>, 9>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(vec4<i32>(0i, ~26535i, -1i, -16267i & global0.x) | vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-26853i, -27749i, -1i), global0.yzx), max(-2359i, -1i), ~21223i, _wgslsmith_clamp_i32(u_input.b, -2827i, global3.x)), countOneBits(vec4<i32>(u_input.b, global0.x, u_input.b, -1i)) | max(vec4<i32>(global3.x, global0.x, -1i, global3.x), ~vec4<i32>(u_input.b, global3.x, u_input.b, u_input.b)));
    let var_1 = func_6(global0.yyw, Struct_2(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), ~firstTrailingBit(vec2<u32>(14512u, 0u)), ~(vec2<u32>(u_input.a, 3176u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), func_5(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 9982u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 25476u, 5751u, u_input.a)), vec4<u32>(u_input.a, u_input.a, 14446u, u_input.a) << (vec4<u32>(4294967295u, 4294967295u, u_input.a, 7622u) % vec4<u32>(32u))), Struct_2(~vec2<u32>(u_input.a, u_input.a), func_1(), func_4(global4[_wgslsmith_index_u32(u_input.a, 16u)], 2470u, Struct_2(vec2<u32>(u_input.a, 0u), Struct_1(vec4<u32>(7860u, 1u, u_input.a, 4294967295u), vec2<f32>(109f, global4[_wgslsmith_index_u32(53354u, 16u)]), u_input.a, vec2<i32>(0i, 36114i)), Struct_1(vec4<u32>(49368u, u_input.a, u_input.a, 9160u), vec2<f32>(global4[_wgslsmith_index_u32(u_input.a, 16u)], 721f), 81586u, var_0.xz)))), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)), Struct_1(vec4<u32>(1u, u_input.a, 50396u, 1u), vec2<f32>(-174f, global4[_wgslsmith_index_u32(u_input.a, 16u)]), 1u, vec2<i32>(var_0.x, global3.x)), func_4(1964f, 11240u, Struct_2(vec2<u32>(u_input.a, u_input.a), Struct_1(vec4<u32>(36695u, u_input.a, 0u, 1u), vec2<f32>(751f, -421f), 1u, global0.wz), Struct_1(vec4<u32>(u_input.a, u_input.a, 50043u, 4880u), vec2<f32>(589f, global4[_wgslsmith_index_u32(59774u, 16u)]), u_input.a, vec2<i32>(-59060i, 33189i))))), ~1i), Struct_1(vec4<u32>(u_input.a, abs(u_input.a), 4294967295u & u_input.a, u_input.a), func_3(func_1()).c.b, _wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(max(vec2<i32>(var_0.x, global0.x), vec2<i32>(global3.x, 2147483647i)), -vec2<i32>(-41642i, 21692i)))), select(~(func_4(-988f, u_input.a, Struct_2(vec2<u32>(u_input.a, u_input.a), Struct_1(vec4<u32>(u_input.a, u_input.a, 1u, 31013u), vec2<f32>(-337f, 368f), u_input.a, var_0.wz), Struct_1(vec4<u32>(1u, 19671u, 0u, u_input.a), vec2<f32>(global4[_wgslsmith_index_u32(6305u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)]), u_input.a, global0.wz))).a.x & ~u_input.a), u_input.a, true));
    var var_2 = var_1;
    let var_3 = Struct_2(vec2<u32>(var_2.a.x, var_2.c), func_5(vec4<u32>(1u, 96504u, max(~u_input.a, var_1.c), var_2.c), func_3(func_3(var_1).b), Struct_2(var_2.a.xz, func_6(var_0.xyz, Struct_2(vec2<u32>(var_1.c, var_1.a.x), Struct_1(vec4<u32>(4294967295u, 62980u, u_input.a, u_input.a), var_1.b, 70541u, vec2<i32>(2147483647i, -2147483647i)), var_1), var_1.a.x), Struct_1(abs(var_1.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(387f, var_1.b.x))), var_2.a.x, min(vec2<i32>(var_1.d.x, var_0.x), vec2<i32>(global3.x, -50626i)))), 0i), func_6(firstLeadingBit(_wgslsmith_sub_vec3_i32(global0.zxw, vec3<i32>(var_2.d.x, var_1.d.x, 2147483647i))) >> (global1[_wgslsmith_index_u32(12434u, 9u)] % vec3<u32>(32u)), func_3(func_6(firstTrailingBit(global0.zxw), func_3(Struct_1(var_2.a, vec2<f32>(-424f, -175f), var_2.c, vec2<i32>(global0.x, var_1.d.x))), abs(u_input.a))), u_input.a));
    let var_4 = select(vec3<bool>(!all(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), select(select(vec3<bool>(all(vec3<bool>(false, false, false)), all(vec2<bool>(true, false)), true), vec3<bool>(true, false, var_1.d.x > 20598i), vec3<bool>(true, any(vec4<bool>(true, true, false, true)), false)), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), false))));
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(1980f)));
}

