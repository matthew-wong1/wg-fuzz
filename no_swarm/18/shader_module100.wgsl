struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: vec2<i32> = vec2<i32>(-22098i, i32(-2147483648));

var<private> global3: vec2<f32>;

var<private> global4: array<f32, 16> = array<f32, 16>(-596f, -130f, -729f, -823f, 1010f, 676f, -159f, -882f, 1039f, -818f, 1128f, -185f, 356f, -1657f, 204f, -1000f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(~17079u < reverseBits(arg_2.b), arg_2.c), u_input.d, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -1i, arg_0), ~arg_1), ~(~(-1i))), _wgslsmith_sub_u32(~(~arg_2.b), arg_2.b)), false);
    global1 = array<vec2<bool>, 8>();
    let var_1 = Struct_3(var_0.b);
    let var_2 = u_input.b;
    global0 = array<i32, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 2790f))) + _wgslsmith_f_op_f32(980f + global4[_wgslsmith_index_u32(u_input.c, 16u)])))) + _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~reverseBits(var_2.x), abs(20990u)), 16u)], global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(1u), 13424u, _wgslsmith_mult_u32(0u, 4294967295u)) & min(~var_0.a.d, 16137u), 16u)], var_0.a.a.x)));
}

fn func_4(arg_0: Struct_4) -> vec4<i32> {
    var var_0 = true | any(select(vec3<bool>(1i == global2.x, arg_0.b >= 0u, true), vec3<bool>(true, select(false, true, arg_0.c), arg_0.c && false), !select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a.a, false, true), arg_0.c)));
    return countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 18u)], -388i, ~reverseBits(-global2.x), -abs(57673i) ^ u_input.d.x));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(u_input.a ^ (u_input.a >> (24532u % 32u)), 8u)], func_4(Struct_4(Struct_3(true), ~0u, false, _wgslsmith_f_op_f32(func_3(-2147483647i << (u_input.c % 32u), firstLeadingBit(u_input.d.yxx), Struct_4(Struct_3(false), u_input.c, false, -1167f))))), func_4(Struct_4(Struct_3(false), abs(countOneBits(u_input.b.x)), true, _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(ceil(global3.x)))))).zz, 21228u);
    var var_1 = var_0;
    var var_2 = 4294967295u >> (1u % 32u);
    global2 = var_1.c;
    let var_3 = Struct_3(false);
    return var_1.d;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(~arg_3.x, 16u)];
    var var_1 = vec4<u32>(65935u, func_2(), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~u_input.a, ~arg_3.x), ~max(62022u, 33138u), arg_3.x) | ~0u, arg_1.a.d);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(-1i, global2.x), -u_input.d.wxw, Struct_4(Struct_3(arg_1.b != arg_2.x), var_1.x, all(!vec4<bool>(false, false, arg_2.x, arg_2.x)), global3.x))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.x, reverseBits(u_input.a)), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -529f))) - -430f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(261f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(func_3(-1i, vec3<i32>(global0[_wgslsmith_index_u32(17637u, 18u)], u_input.d.x, global0[_wgslsmith_index_u32(var_1.x, 18u)]), Struct_4(Struct_3(arg_0.x), var_1.x, arg_2.x, -417f))))))));
    var var_3 = _wgslsmith_div_i32(~(~(-845i)), 1i) << (arg_1.a.d % 32u);
    global2 = -arg_1.a.b.xy;
    return arg_1.a;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = 18743i;
    let var_1 = ~(~arg_0.a.d);
    var var_2 = vec2<u32>(~var_1, arg_0.a.d | ~var_1);
    var var_3 = Struct_2(func_1(!vec4<bool>(true, arg_0.b, any(vec4<bool>(true, arg_0.a.a.x, arg_0.b, arg_0.b)), false), arg_0, func_1(vec4<bool>(arg_0.a.a.x, false, false, arg_0.b == true), arg_0, vec2<bool>(arg_0.b, any(vec2<bool>(false, true))), select(vec4<u32>(9251u, u_input.b.x, 56350u, 30585u), vec4<u32>(0u, 52898u, 47861u, var_2.x), arg_0.b) | vec4<u32>(1579u, u_input.a, 26256u, u_input.a)).a, vec4<u32>(~var_2.x << (_wgslsmith_sub_u32(var_2.x, var_1) % 32u), u_input.a, 59418u, countOneBits(var_2.x))), true);
    global0 = array<i32, 18>();
    return Struct_3(false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 8>();
    global3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(~u_input.c, 16u)])), global3.x))), -976f);
    var var_0 = select(13673u, 1u, any(vec3<bool>(false, true, true)) || !(!any(vec3<bool>(false, false, true))));
    let var_1 = ~reverseBits(~u_input.b);
    let var_2 = u_input.b;
    global4 = array<f32, 16>();
    let var_3 = func_5(Struct_2(func_1(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(global2.x, -2147483647i, global2.x, u_input.d.x), u_input.d.yw, 1u), any(vec4<bool>(true, true, false, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), true), ~vec4<u32>(u_input.b.x, var_2.x, 0u, 0u)), true));
    global3 = vec2<f32>(-124f, _wgslsmith_f_op_f32(f32(-1f) * -1617f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(~min(0i, global2.x))), global4[_wgslsmith_index_u32(func_2(), 16u)], _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(u_input.a, u_input.a, 619u) << (~vec3<u32>(var_2.x, var_1.x, 0u) % vec3<u32>(32u))), min(max(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 2224u, 66362u), vec3<u32>(var_2.x, u_input.a, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 64917u), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))), firstTrailingBit(vec3<u32>(var_1.x, var_1.x, u_input.b.x)) & countOneBits(vec3<u32>(u_input.c, 8684u, var_2.x))), ~(~min(vec3<u32>(0u, 4294967295u, var_1.x), vec3<u32>(18932u, 45932u, var_2.x)))));
}

