struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(92102u, 28220u, 1u, 39615u), vec4<u32>(4294967295u, 4294967295u, 33364u, 4294967295u), vec4<u32>(29202u, 2698u, 49722u, 1u), vec4<u32>(22831u, 51194u, 1u, 1u), vec4<u32>(14619u, 24723u, 65020u, 4294967295u), vec4<u32>(9915u, 36341u, 1u, 58773u), vec4<u32>(92444u, 0u, 0u, 4294967295u), vec4<u32>(0u, 29763u, 0u, 4294967295u), vec4<u32>(0u, 25176u, 84896u, 33470u), vec4<u32>(16772u, 4294967295u, 14616u, 115632u), vec4<u32>(0u, 37392u, 0u, 83728u), vec4<u32>(34431u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 51818u, 1u, 11203u), vec4<u32>(4294967295u, 0u, 6634u, 39801u), vec4<u32>(0u, 0u, 1u, 79866u), vec4<u32>(1916u, 35280u, 743u, 20106u), vec4<u32>(0u, 1u, 13503u, 1u), vec4<u32>(23824u, 1u, 0u, 2887u));

var<private> global2: array<u32, 7>;

var<private> global3: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(18452u, 40680u), vec2<u32>(4294967295u, 43485u), vec2<u32>(27526u, 110044u), vec2<u32>(2883u, 38533u), vec2<u32>(43017u, 0u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 13480u), vec2<u32>(0u, 67260u), vec2<u32>(15955u, 4294967295u), vec2<u32>(79530u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 41809u), vec2<u32>(0u, 15090u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    global0 = array<f32, 12>();
    let var_0 = _wgslsmith_dot_vec3_i32(max(u_input.a.yzw, u_input.a.zxz), ~(-vec3<i32>(-u_input.a.x, max(8845i, arg_1), i32(-1i) * -19479i)));
    var var_1 = arg_2;
    global2 = array<u32, 7>();
    var var_2 = Struct_2(~(-vec2<i32>(~var_0, ~0i)));
    return -1212f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_u32(1u, ~abs(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)], 22604u), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 16u)]), 18u)], ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1004u, 7u)], 7u)], global2[_wgslsmith_index_u32(51176u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], 1u))));
    var var_1 = ~u_input.a;
    let var_2 = vec2<i32>(firstLeadingBit(min(_wgslsmith_sub_i32(-arg_2.a.x, ~arg_1.a.x), max(var_1.x, 0i) >> (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(51151u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]), 7u)] % 32u))), -arg_2.a.x);
    var var_3 = Struct_1(select(vec2<i32>(-1i) * -var_2, ~(~(~vec2<i32>(var_1.x, var_2.x))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), arg_0.x, vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)] | 1u, 7u)], ~_wgslsmith_clamp_u32(39079u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(1u, 7u)]))));
    let var_4 = ~_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(4294967295u, 7u)] >> (~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(22255u, var_3.c.x, var_3.c.x), 7u)] % 32u));
    return var_3.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    var var_0 = Struct_1(-_wgslsmith_sub_vec2_i32(abs(u_input.a.wy), _wgslsmith_clamp_vec2_i32(vec2<i32>(-28504i, 0i), u_input.a.yz, u_input.a.zw)) << (func_4(arg_0, Struct_2(vec2<i32>(u_input.a.x, 0i)), Struct_2(vec2<i32>(u_input.a.x, arg_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.yx, -121f, global3[_wgslsmith_index_u32(75095u, 16u)]), 4615i, Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69339u, 7u)], 7u)], 7u)], 12u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(90307u, 7u)], 16u)])))))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 18u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 18u)] ^ vec4<u32>(1u, 3327u, global2[_wgslsmith_index_u32(34106u, 7u)], 0u)), 7u)], 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 12u)]))))))), abs(_wgslsmith_mod_vec2_u32(func_4(arg_0, Struct_2(u_input.a.wy), Struct_2(vec2<i32>(-12593i, 2147483647i)), -696f), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(36448u, 7u)]))));
    let var_1 = ~countOneBits(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-931f, -1129f, var_0.b, global0[_wgslsmith_index_u32(var_0.c.x, 12u)])))), Struct_2(select(var_0.a, vec2<i32>(0i, -59921i), vec2<bool>(true, false))), Struct_2(firstTrailingBit(vec2<i32>(4831i, arg_1))), _wgslsmith_f_op_f32(-607f * global0[_wgslsmith_index_u32(55767u, 12u)])).x);
    var var_2 = Struct_1(max(max(vec2<i32>(max(u_input.a.x, u_input.a.x), abs(39019i)), vec2<i32>(var_0.a.x, _wgslsmith_div_i32(var_0.a.x, u_input.a.x))), max(var_0.a, u_input.a.xw)), var_0.b, reverseBits(~(~reverseBits(vec2<u32>(4294967295u, var_0.c.x)))));
    let var_3 = Struct_1(vec2<i32>(-(select(30796i, 1i, true) | ~var_2.a.x), max(_wgslsmith_dot_vec3_i32(-vec3<i32>(-56913i, var_0.a.x, u_input.a.x), vec3<i32>(0i, 2147483647i, u_input.a.x)), abs(-28570i) << (~4294967295u % 32u))), arg_0.x, vec2<u32>(~(~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(14237u, var_1), 7u)]), global2[_wgslsmith_index_u32(~1u | _wgslsmith_sub_u32(abs(global2[_wgslsmith_index_u32(var_2.c.x, 7u)]), 4294967295u), 7u)]));
    global3 = array<vec2<u32>, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-866f, _wgslsmith_f_op_f32(-var_2.b))) * 403f);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(-vec2<i32>(u_input.a.x, -6853i), 822f, min(reverseBits(countOneBits(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5839u, 7u)], 7u)], 7u)], 16u)])) << (global3[_wgslsmith_index_u32(abs(1u), 16u)] % vec2<u32>(32u)), min(abs(vec2<u32>(4294967295u, 4294967295u)) ^ reverseBits(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82816u, 7u)], 7u)], 16u)]), vec2<u32>(1u, global2[_wgslsmith_index_u32(1u, 7u)]) & global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(8954u, 7u)], 16u)])));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 12u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c.x, 1u), 12u)])))), -1206f, _wgslsmith_f_op_f32(sign(1287f)));
    let var_2 = abs(u_input.a.zwz);
    var var_3 = 0i;
    global1 = array<vec4<u32>, 18>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 12u)]), -1268f)), _wgslsmith_f_op_f32(770f - _wgslsmith_f_op_f32(f32(-1f) * -854f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(733f, global0[_wgslsmith_index_u32(4294967295u, 12u)], 501f, var_0.b))), ~1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(8598u, 12u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48625u, 7u)], 7u)];
    global1 = array<vec4<u32>, 18>();
    let var_1 = -42617i;
    global3 = array<vec2<u32>, 16>();
    global3 = array<vec2<u32>, 16>();
    let var_2 = func_1();
    var var_3 = 0u;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 12u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 12u)] - -263f))) * -249f);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(vec3<u32>(43142u, 1u, global2[_wgslsmith_index_u32(1u, 7u)]) & vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], 1232u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]))), _wgslsmith_mult_vec3_u32(vec3<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46385u, 7u)], 7u)], 7u)], _wgslsmith_clamp_u32(27838u, 31934u, global2[_wgslsmith_index_u32(4294967295u, 7u)]), global2[_wgslsmith_index_u32(0u >> (global2[_wgslsmith_index_u32(19062u, 7u)] % 32u), 7u)]), select(vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 29795u), vec3<u32>(global2[_wgslsmith_index_u32(1553u, 7u)], 7429u, 39097u), true)), true), abs(vec2<i32>(-1i, -2147483647i)), _wgslsmith_f_op_f32(var_4 + global0[_wgslsmith_index_u32(15773u, 12u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1390f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39531u, 7u)], 7u)], 12u)], 551f, var_2.a.x), var_2.a)))), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(var_4, -1395f, -382f, var_2.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, -246f, var_2.a.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 12u)])))));
}

