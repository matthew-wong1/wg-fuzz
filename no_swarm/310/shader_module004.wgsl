struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: Struct_2;

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 45409u, 4294967295u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = u_input.b;
    var var_1 = ~var_0.x;
    var var_2 = Struct_2(Struct_1(abs(min(vec3<u32>(arg_0.a.x, 43260u, u_input.a), firstTrailingBit(vec3<u32>(global2.x, 14197u, 4294967295u))))), global1.b);
    let var_3 = var_2.a;
    var var_4 = select(true, 10525i >= u_input.c, ~_wgslsmith_sub_i32(var_0.x, -54208i) <= 36091i);
    return global2.zww;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: bool, arg_3: bool) -> vec4<bool> {
    let var_0 = Struct_1(~abs((global2.xwz | vec3<u32>(u_input.a, 41927u, 7450u)) << (vec3<u32>(global2.x, 42894u, global1.b.a.x) % vec3<u32>(32u))));
    global1 = Struct_2(global1.a, Struct_1(global2.ywx));
    global1 = Struct_2(global1.a, Struct_1(~func_3(Struct_1(var_0.a))));
    let var_1 = ~(~firstLeadingBit(vec4<u32>(0u, var_0.a.x, global1.b.a.x, arg_0.x)) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, global1.a.a.x, u_input.d), vec4<u32>(arg_0.x, 13902u, arg_0.x, 0u)) << (select(vec4<u32>(71260u, 0u, 61619u, var_0.a.x), vec4<u32>(4294967295u, 4428u, var_0.a.x, 29934u), vec4<bool>(arg_3, arg_2, arg_1, arg_2)) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(global2.x, _wgslsmith_mod_u32(var_0.a.x, ~(4294967295u >> (global1.a.a.x % 32u))), _wgslsmith_dot_vec2_u32(global1.a.a.zz, reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, global1.a.a.x), global2.zx))), 42990u) % vec4<u32>(32u));
    let var_2 = var_1;
    return vec4<bool>(true, arg_2, any(!vec2<bool>(all(vec3<bool>(false, arg_3, arg_1)), true)), (-(~1i) | u_input.b.x) <= ~u_input.c);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = -159f;
    global0 = array<vec3<bool>, 6>();
    let var_1 = Struct_1(global2.wyx);
    let var_2 = countOneBits(arg_2.b.a.x);
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_2 {
    global1 = arg_1;
    global2 = max(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 35543u, arg_1.b.a.x, 0u), vec4<u32>(71902u, arg_3.x, 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global1.b.a.x, global2.x), ~vec4<u32>(77919u, 0u, 4294967295u, arg_3.x))), reverseBits(~(vec4<u32>(arg_3.x, global1.b.a.x, 5990u, arg_0) | vec4<u32>(77125u, 1u, arg_1.a.a.x, arg_3.x)))), select(vec4<u32>(~arg_1.b.a.x, ~23252u, _wgslsmith_mod_u32(~arg_1.a.a.x, 1u), _wgslsmith_mod_u32(1u, func_4(arg_2.x, vec3<f32>(386f, 297f, 1380f), arg_1).a.a.x)), vec4<u32>(reverseBits(~global1.b.a.x), ~_wgslsmith_dot_vec3_u32(arg_1.b.a, global1.a.a), ~_wgslsmith_mod_u32(arg_0, 0u), global2.x), any(select(select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(false, false, false, true), select(vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, true, false, arg_2.x))))));
    global0 = array<vec3<bool>, 6>();
    global2 = ~(vec4<u32>(abs(_wgslsmith_clamp_u32(global2.x, arg_0, arg_3.x)), abs(u_input.a) ^ 0u, 4294967295u, ~countOneBits(4294967295u)) << (~abs(~vec4<u32>(0u, 14393u, 14064u, global1.b.a.x)) % vec4<u32>(32u)));
    var var_0 = arg_1;
    return arg_1;
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = func_5(global1.b.a.x, func_4(!any(func_2(global1.a.a.zy, false, true, false)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(172f, _wgslsmith_div_f32(1137f, -1993f), -212f))), Struct_2(arg_0, Struct_1(vec3<u32>(0u, arg_0.a.x, global1.b.a.x)))), vec2<bool>(false, !select(false, true, true)), _wgslsmith_mult_vec2_u32(func_3(Struct_1(select(vec3<u32>(global2.x, 4294967295u, 43145u), arg_0.a, global0[_wgslsmith_index_u32(1u, 6u)]))).xz, vec2<u32>(_wgslsmith_mod_u32(arg_0.a.x, u_input.a), u_input.a) ^ global2.zw));
    let var_0 = ~(~3607u);
    let var_1 = vec2<bool>(func_2(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(73122u, u_input.d)) ^ (global2.xw ^ arg_0.a.xy), global2.zw), _wgslsmith_sub_u32(_wgslsmith_mod_u32(50155u, 14338u), ~arg_0.a.x) >= ~u_input.a, true, all(vec4<bool>(false, true, false, true))).x, all(select(global0[_wgslsmith_index_u32(u_input.d, 6u)], func_2(global2.yy << (global1.a.a.yz % vec2<u32>(32u)), true, true, false).wyx, false)));
    var var_2 = _wgslsmith_add_vec2_u32(global1.b.a.yy, vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 42141u, global2.x), vec4<u32>(31173u, var_0, 0u, global1.a.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, var_0), vec4<u32>(4294967295u, 4846u, var_0, 19305u))), arg_0.a.x));
    return (global2.x >> (u_input.a % 32u)) < global1.b.a.x;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(func_4(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, 358f), 1876f, _wgslsmith_f_op_f32(select(-204f, -581f, arg_2.x)))), Struct_2(Struct_1(vec3<u32>(1u, 16702u, 42423u)), func_4(arg_2.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-579f, 489f, 495f)), func_4(false, vec3<f32>(399f, 1725f, 690f), Struct_2(Struct_1(arg_3.wxy), Struct_1(arg_1.a)))).a)).a, Struct_1(~(~vec3<u32>(7759u, arg_0.a.x, u_input.a))));
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(962f, -164f, 705f, -928f), vec4<f32>(1000f, 1048f, 742f, -459f))))), func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.x, arg_3.x), vec2<u32>(global2.x, arg_1.a.x), arg_3.xx), arg_2.x, !arg_2.x, !arg_2.x).x)))));
    let var_2 = arg_1;
    return Struct_2(Struct_1(~arg_1.a), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~abs(vec4<u32>(reverseBits(global2.x), 10317u, u_input.d << (global1.a.a.x % 32u), 4294967295u) >> (~abs(vec4<u32>(0u, u_input.a, global2.x, 1u)) % vec4<u32>(32u)));
    let var_0 = func_6(Struct_1(_wgslsmith_mod_vec3_u32(select(firstTrailingBit(vec3<u32>(13242u, 142132u, 24065u)), vec3<u32>(0u, global1.a.a.x, global2.x), true), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, global2.x), global1.a.a) | global2.zyz)), global1.b, !vec4<bool>(true, true, any(vec3<bool>(true, true, true)), func_1(global1.b)), (~vec4<u32>(global2.x, global2.x, global2.x, 1u) & ~select(vec4<u32>(68325u, 1u, u_input.a, u_input.a), vec4<u32>(58556u, 36451u, u_input.a, 4294967295u), vec4<bool>(false, false, true, true))) & vec4<u32>(37714u, reverseBits(1u), countOneBits(global1.b.a.x), 88311u));
    var var_1 = 1000f;
    let var_2 = func_5(u_input.a, Struct_2(func_6(Struct_1(vec3<u32>(global2.x, 4294967295u, global2.x) ^ vec3<u32>(4294967295u, u_input.a, global2.x)), global1.b, !func_2(var_0.a.a.xx, false, false, false), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.a.x, u_input.d, global1.a.a.x, 0u), vec4<u32>(global2.x, global1.a.a.x, global1.b.a.x, var_0.b.a.x), vec4<u32>(1u, 22241u, u_input.d, global1.a.a.x)) << (vec4<u32>(global2.x, 1u, global1.b.a.x, 4294967295u) % vec4<u32>(32u))).a, var_0.a), select(!func_2(global1.b.a.xz, select(true, true, true), false, all(vec3<bool>(false, true, false))).zw, vec2<bool>(any(vec2<bool>(true, false)), true), true), select(global1.b.a.yz >> (var_0.b.a.xz % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_sub_u32(var_0.b.a.x, 0u), ~global2.x), vec2<bool>(true, true))).a;
    var var_3 = Struct_1(~vec3<u32>(countOneBits(abs(global2.x)), var_2.a.x ^ ~u_input.a, _wgslsmith_clamp_u32(var_2.a.x, 58209u, reverseBits(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(17517u, ~var_2.a.x, ~63147u), ~select(4114u, 2734u, false), _wgslsmith_div_u32(min(var_3.a.x, var_0.a.a.x), var_0.a.a.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(func_5(87262u, Struct_2(Struct_1(vec3<u32>(u_input.d, 56641u, u_input.a)), Struct_1(vec3<u32>(var_2.a.x, var_2.a.x, global2.x))), vec2<bool>(true, true), vec2<u32>(u_input.d, var_3.a.x)).a.a.x, var_0.b.a.x, _wgslsmith_div_u32(1u, u_input.d)), var_2.a) % vec3<u32>(32u)), max(~abs(vec3<i32>(u_input.c, u_input.b.x, 38090i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, -44956i, -2147483647i), select(max(vec3<i32>(u_input.c, -2147483647i, u_input.c), u_input.b), u_input.b, select(global0[_wgslsmith_index_u32(u_input.a, 6u)], vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(global1.a.a.x, 6u)])))), firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(u_input.c, 24288i) << (_wgslsmith_mod_u32(var_0.b.a.x, 20350u) % 32u), 34773i, ~u_input.b.x)));
}

