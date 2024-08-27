struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(51013u, 1u, 59658u, 4294967295u, 1u, 0u, 0u, 47640u, 22779u, 4294967295u, 195u, 0u, 0u, 39832u, 33759u, 93578u, 33317u, 0u, 40248u, 0u, 40093u, 24829u, 72372u, 22824u);

var<private> global1: f32;

var<private> global2: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = arg_3.b;
    global2 = arg_3.b.b.x;
    let var_1 = arg_3.a;
    let var_2 = arg_3.b;
    global0 = array<u32, 24>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1, arg_1) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1536f) * arg_1)))))) * arg_1);
}

fn func_3(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = vec3<i32>(-1i, countOneBits(46780i), 1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, 549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -2762f) + _wgslsmith_div_f32(-973f, 1532f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(sign(-805f)), 4294967295u <= global0[_wgslsmith_index_u32(30174u, 24u)])))), _wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec4<bool>(all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !((u_input.a.x == 29704u) == true), any(vec3<bool>(true, true, false)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)) | (true != all(vec3<bool>(false, false, true)))));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(1u, 24u)], vec3<bool>(!var_2.a, select(any(!var_2.c), true, !any(vec2<bool>(var_2.c.x, true))), any(var_2.c.zzy)), select(-(~vec4<i32>(-2147483647i, var_0.x, -2147483647i, 1i)), vec4<i32>(var_0.x, select(var_0.x, -var_0.x, all(vec2<bool>(true, true))), var_0.x, _wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec3_i32(var_0, var_0))), select(vec4<bool>(true, false, true, 67567u >= global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), select(vec4<bool>(false, false, var_2.a, true), select(var_2.c, var_2.c, true), select(vec4<bool>(true, var_2.a, true, true), var_2.c, var_2.c)), var_2.c)), var_2.b == 620f);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(618f * 312f) - _wgslsmith_f_op_f32(trunc(arg_0.x))) < var_2.b, _wgslsmith_f_op_f32(abs(arg_0.x)), !vec4<bool>(false, false, all(vec4<bool>(true, false, var_2.c.x, var_3.d)), var_2.a)));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global1 = -1742f;
    global0 = array<u32, 24>();
    var var_0 = vec2<bool>(any(select(select(select(arg_0.a.a.c.wy, vec2<bool>(arg_0.a.a.a, true), arg_0.a.a.c.wy), arg_0.b.b.xz, select(vec2<bool>(true, false), vec2<bool>(arg_0.b.b.x, false), vec2<bool>(true, true))), select(func_3(vec2<f32>(-561f, arg_0.a.a.b)).a.c.zx, arg_0.a.a.c.zw, !arg_0.b.b.zz), select(true, arg_0.a.a.c.x, true) != true)), true);
    let var_1 = ~(~(countOneBits(select(vec3<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 4294967295u, 4294967295u), vec3<u32>(4294967295u, arg_0.b.a, 4294967295u), var_0.x)) >> (max(max(vec3<u32>(1u, 21924u, 0u), vec3<u32>(4294967295u, 1u, u_input.a.x)), ~vec3<u32>(u_input.a.x, 0u, 0u)) % vec3<u32>(32u))));
    let var_2 = Struct_5(arg_0.a.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.b), -632f, _wgslsmith_f_op_f32(select(-706f, _wgslsmith_f_op_f32(arg_0.a.a.b - _wgslsmith_f_op_f32(ceil(-1328f))), _wgslsmith_div_i32(2147483647i, arg_0.b.c.x) < 2147483647i)), arg_0.a.a.b), ~(~_wgslsmith_add_vec2_u32(var_1.yz, u_input.a)), -min(~(~vec2<i32>(arg_0.b.c.x, 11413i)), (vec2<i32>(arg_0.b.c.x, arg_0.b.c.x) & vec2<i32>(arg_0.b.c.x, 2147483647i)) >> (u_input.a % vec2<u32>(32u))));
    return func_3(_wgslsmith_f_op_vec2_f32(var_2.b.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.b, 513f) * vec2<f32>(var_2.a.b, -248f))))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(830f, _wgslsmith_f_op_f32(max(-851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -757f)))))));
    let var_0 = Struct_4(func_4(Struct_4(func_3(_wgslsmith_f_op_vec2_f32(func_2(133f, vec2<f32>(884f, 355f), true, Struct_4(Struct_2(Struct_1(true, -1321f, vec4<bool>(false, false, true, false))), Struct_3(20832u, vec3<bool>(false, false, false), vec4<i32>(1i, 67716i, 22569i, -2147483647i), false))))), Struct_3(~40618u, vec3<bool>(false, false, false), min(vec4<i32>(-1i, 25496i, 0i, 2147483647i), vec4<i32>(1i, -21459i, 2147483647i, 2147483647i)), false))), Struct_3(~u_input.a.x, vec3<bool>(true, true, true), countOneBits(max(vec4<i32>(20808i, 0i, -3016i, -36503i), vec4<i32>(20919i, 2147483647i, -17964i, 16463i)) >> (vec4<u32>(64897u, global0[_wgslsmith_index_u32(26873u, 24u)], 153486u, 1u) % vec4<u32>(32u))), func_4(Struct_4(func_4(Struct_4(Struct_2(Struct_1(false, -1769f, vec4<bool>(false, true, false, false))), Struct_3(arg_0, vec3<bool>(false, false, false), vec4<i32>(-1564i, -2147483647i, -22384i, -2147483647i), false))), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], vec3<bool>(false, false, false), vec4<i32>(6793i, -2147483647i, 1i, 1i), false))).a.c.x));
    let var_1 = Struct_4(var_0.a, Struct_3(abs(reverseBits(_wgslsmith_mod_u32(arg_0, 23806u))), !var_0.a.a.c.zzy, vec4<i32>(-max(var_0.b.c.x, -1i), select(-var_0.b.c.x, 23122i, !var_0.b.d), 22326i, var_0.b.c.x), any(var_0.a.a.c.zx) | true));
    let var_2 = var_0.b;
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_1.a.a.b, true))) * _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.b) * _wgslsmith_f_op_f32(max(var_1.a.a.b, var_1.a.a.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(951f, -247f) - vec2<f32>(var_0.a.a.b, 2414f))), (u_input.b ^ 21703u) == ~var_2.a, Struct_4(var_1.a, Struct_3(69493u, vec3<bool>(false, true, var_0.b.b.x), var_0.b.c, var_0.a.a.a)))).x), var_0.a.a.b));
    return Struct_4(Struct_2(Struct_1(true, -1456f, select(!var_0.a.a.c, select(var_1.a.a.c, var_1.a.a.c, true), var_1.a.a.c))), Struct_3(~(~abs(global0[_wgslsmith_index_u32(1u, 24u)])), func_4(var_1).a.c.zzx, firstTrailingBit(var_1.b.c << (abs(vec4<u32>(4294967295u, 0u, var_1.b.a, var_1.b.a)) % vec4<u32>(32u))), false));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> bool {
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -217f;
    let var_0 = u_input.b;
    let var_1 = select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, func_5(func_1(_wgslsmith_add_u32(u_input.a.x, global0[_wgslsmith_index_u32(0u, 24u)])), 1i, select(vec3<i32>(-2147483647i, -44706i, -41169i), vec3<i32>(2147483647i, -2147483647i, 2147483647i), vec3<bool>(false, false, true)) << ((vec3<u32>(92701u, 4294967295u, 4294967295u) ^ vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17674u, 24u)], 24u)])) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(0u, 24u)]))), true), vec4<bool>(-1853f != _wgslsmith_f_op_f32(ceil(-1000f)), (i32(-1i) * -6486i) <= func_1(~global0[_wgslsmith_index_u32(1u, 24u)]).b.c.x, true, true), !vec4<bool>(true & (var_0 != var_0), func_5(Struct_4(Struct_2(Struct_1(false, -1227f, vec4<bool>(true, true, true, false))), Struct_3(57584u, vec3<bool>(false, true, false), vec4<i32>(1375i, -1i, -20437i, -108662i), true)), abs(1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-7733i, 10139i, -1i), vec3<i32>(21344i, -1i, -6657i)), vec3<u32>(49854u, global0[_wgslsmith_index_u32(var_0, 24u)], 1u)), true, true));
    var var_2 = ~_wgslsmith_clamp_i32(~8822i, _wgslsmith_sub_i32(-(i32(-1i) * -3313i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-21612i, -1i, -1i), vec3<i32>(33949i, -17347i, -1i))), 2147483647i);
    let var_3 = var_1.x;
    var_2 = firstTrailingBit(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, -32300i)), abs(~vec2<i32>(1i, -2147483647i)), -vec2<i32>(1i, 1i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(70871u, 1u), u_input.a) % vec2<u32>(32u)))));
}

