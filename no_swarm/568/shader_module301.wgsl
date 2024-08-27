struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
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

var<private> global0: array<vec2<u32>, 11>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 4294967295u, 45739u);

var<private> global2: Struct_2 = Struct_2(vec3<i32>(-8617i, i32(-2147483648), 0i), 4294967295u, vec2<bool>(false, true), Struct_1(vec4<u32>(61807u, 4294967295u, 4294967295u, 67054u), vec2<bool>(false, false), vec4<bool>(true, false, true, true), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), -4470i)), vec2<u32>(8467u, 3548u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(-global2.a, 0u, arg_3.c.wy, arg_3, vec2<u32>(~max(u_input.b.x, ~u_input.b.x), max(reverseBits(global2.d.a.x << (global2.b % 32u)), arg_0)));
    global0 = array<vec2<u32>, 11>();
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.e.x, u_input.a, var_0.a.x), -firstLeadingBit(global2.a), var_0.a), abs(~var_0.b) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(25898u, _wgslsmith_add_u32(1u, global1.x)), abs(arg_3.a.x)) % 32u), arg_3.b, var_0.d, abs(abs(reverseBits(~global1.zz))));
    return vec2<bool>(select(true, select(select(var_0.d.e.x, var_1.a.x, false) > abs(-1i), any(!vec2<bool>(var_0.c.x, true)), false), arg_3.c.x), !var_1.d.b.x);
}

fn func_2() -> f32 {
    global0 = array<vec2<u32>, 11>();
    var var_0 = 43192u;
    var var_1 = Struct_2(~global2.a, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u >> (1u % 32u), ~u_input.c.x), select(vec3<u32>(1u, 104106u, 0u), vec3<u32>(1u, 22879u, global2.d.a.x), vec3<bool>(true, true, true)))), !select(vec2<bool>(all(vec3<bool>(true, global2.c.x, true)), global2.c.x), select(!global2.d.b, global2.c, vec2<bool>(global2.d.b.x, false)), func_3(_wgslsmith_dot_vec4_u32(global2.d.a, vec4<u32>(113210u, global1.x, global1.x, global2.e.x)), _wgslsmith_mult_i32(global2.a.x, u_input.a), _wgslsmith_mult_u32(24825u, 28926u), Struct_1(vec4<u32>(53668u, global1.x, 1u, 0u), vec2<bool>(global2.c.x, global2.c.x), vec4<bool>(global2.d.b.x, global2.c.x, true, true), vec2<i32>(944i, -37423i), vec2<i32>(global2.d.d.x, -2147483647i)))), global2.d, vec2<u32>(1u, 1u));
    var_1 = Struct_2(global2.a, 1u, !(!(!var_1.c)), Struct_1(min(_wgslsmith_clamp_vec4_u32(min(global2.d.a, global2.d.a), global2.d.a, max(vec4<u32>(10450u, 50498u, 1u, global1.x), global2.d.a)), u_input.c), global2.d.b, vec4<bool>(global2.c.x, var_1.d.b.x, true, global2.c.x), global2.a.yz, ~(~(-global2.a.yx))), var_1.d.a.xx);
    global1 = _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(24774u, global2.e.x, var_1.b)), vec3<u32>(4822u, 4294967295u, 1u)), vec3<u32>(~max(5025u, 56186u), ~(var_1.d.a.x ^ _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), select(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(65000u, var_1.e.x), u_input.b.x & global2.d.a.x, global1.x), global2.e.x, !(global1.x >= var_1.d.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1080f, 324f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-941f)) * _wgslsmith_div_f32(1000f, 1404f)))) - -1125f);
}

fn func_1() -> f32 {
    global0 = array<vec2<u32>, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1222f) * -2665f))));
    let var_1 = Struct_2(-global2.a, _wgslsmith_sub_u32(global2.d.a.x, max(_wgslsmith_dot_vec4_u32(global2.d.a | global2.d.a, vec4<u32>(u_input.c.x, u_input.b.x, 17942u, 1u)), global2.d.a.x)), vec2<bool>(global2.c.x, select(select(true, !global2.d.c.x, all(global2.d.c)), global2.d.c.x, false && any(global2.d.c.xyx))), global2.d, ~abs(max(abs(global0[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, global1.x), u_input.c.ww))));
    global1 = ~global2.d.a.wxw;
    global0 = array<vec2<u32>, 11>();
    return _wgslsmith_f_op_f32(480f * 2322f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.d;
    var var_1 = firstTrailingBit(11011i);
    let var_2 = Struct_2(global2.a, u_input.c.x, vec2<bool>(any(vec3<bool>(any(vec4<bool>(global2.c.x, arg_1.d.c.x, false, false)), arg_1.d.b.x, arg_1.d.b.x)), !all(!vec2<bool>(true, arg_1.d.c.x))), Struct_1(~arg_1.d.a, var_0.c.wy, vec4<bool>(any(var_0.b), any(select(vec3<bool>(true, false, var_0.c.x), arg_1.d.c.xzz, vec3<bool>(false, global2.c.x, false))), true, global2.d.c.x), select(abs(vec2<i32>(global2.d.d.x, arg_1.a.x)), vec2<i32>(46019i, 2147483647i), var_0.c.wx) ^ arg_1.a.yz, arg_1.a.yy), global2.d.a.wy);
    global2 = arg_1;
    var var_3 = arg_1.d;
    return Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(27535u, 75125u, var_0.a.x, var_0.a.x)), abs(var_2.d.a)), var_2.d.a), !select(!vec2<bool>(true, var_2.d.c.x), !select(arg_1.d.b, vec2<bool>(false, true), true), vec2<bool>(var_3.b.x, var_3.d.x != 1438i)), select(var_3.c, vec4<bool>(select(var_2.c.x, !var_3.b.x, true), true, func_3(global2.b, -1i, 28974u, Struct_1(var_2.d.a, vec2<bool>(false, var_3.c.x), vec4<bool>(true, var_3.c.x, var_2.d.c.x, global2.d.c.x), vec2<i32>(60685i, -2147483647i), vec2<i32>(0i, -70417i))).x, true), var_3.b.x), vec2<i32>(_wgslsmith_div_i32(-(arg_1.a.x >> (0u % 32u)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-10590i, global2.a.x), abs(var_2.d.e))), var_0.d.x), -(~global2.a.yy) << (~vec2<u32>(~1u, ~1u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.d;
    let var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-1155f * -349f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_div_f32(-530f, 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1552f - 749f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(654f - 1241f))))), Struct_2(select(-global2.a, global2.a, select(!var_0.c.yxx, var_0.c.yxw, select(var_0.c.yyw, vec3<bool>(false, true, true), vec3<bool>(false, var_0.c.x, true)))), abs(4294967295u), var_0.b, global2.d, _wgslsmith_div_vec2_u32(u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x >> (0u % 32u), global1.x, 4294967295u), 11u)])));
    global2 = Struct_2(-_wgslsmith_clamp_vec3_i32(global2.a, abs(global2.a), ~global2.a >> (firstLeadingBit(u_input.c.wyy) % vec3<u32>(32u))), var_0.a.x, global2.d.c.ww, Struct_1(max(vec4<u32>(0u, u_input.b.x, global1.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(18292u, 79444u, 0u, global2.d.a.x), var_1.a)) | ~(~vec4<u32>(var_1.a.x, 24003u, var_0.a.x, var_0.a.x)), vec2<bool>(var_1.b.x, global2.d.c.x), vec4<bool>((global2.e.x | global2.e.x) >= global1.x, false, all(!var_1.c.wxw), func_4(vec3<f32>(1000f, 700f, 1387f), Struct_2(vec3<i32>(23722i, var_0.d.x, -45091i), 37305u, vec2<bool>(true, var_0.c.x), global2.d, vec2<u32>(55126u, 14056u))).c.x), ~(-(vec2<i32>(1i, -6097i) & var_0.e)), global2.d.d >> (_wgslsmith_add_vec2_u32(global1.xy, global2.e) % vec2<u32>(32u))), vec2<u32>(0u, global2.d.a.x | 43988u));
    let var_2 = Struct_2(vec3<i32>(countOneBits(var_1.e.x), var_1.e.x, 65413i), _wgslsmith_clamp_u32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(333f, 489f, -113f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1394f, 1000f, 909f) + vec3<f32>(365f, 892f, -1000f))), Struct_2(vec3<i32>(global2.d.d.x, global2.a.x, u_input.a), ~4294967295u, func_4(vec3<f32>(-2159f, 587f, -1296f), Struct_2(global2.a, 8389u, global2.c, Struct_1(var_1.a, global2.c, global2.d.c, var_0.d, var_1.e), global0[_wgslsmith_index_u32(var_1.a.x, 11u)])).b, func_4(vec3<f32>(-530f, -679f, 786f), Struct_2(vec3<i32>(var_1.d.x, var_1.d.x, 4785i), 4294967295u, vec2<bool>(var_0.c.x, global2.d.c.x), var_1, vec2<u32>(global2.e.x, global2.b))), var_0.a.zy)).a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_0.a.x, 1u, var_1.a.x), vec4<u32>(u_input.c.x, var_1.a.x, 0u, u_input.c.x))), 1u, u_input.b.x), ~_wgslsmith_mult_u32(~var_1.a.x, 4294967295u ^ global2.b)), vec2<bool>(any(func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1207f, 860f, -241f), vec3<f32>(-582f, 1000f, 653f))), Struct_2(global2.a, global1.x, var_1.b, global2.d, global2.e)).b), var_0.b.x), Struct_1(firstTrailingBit(firstLeadingBit(var_0.a)), vec2<bool>(func_4(vec3<f32>(1106f, 255f, 2967f), Struct_2(vec3<i32>(global2.d.e.x, var_0.e.x, u_input.a), var_1.a.x, var_1.b, var_1, vec2<u32>(global2.b, global1.x))).c.x, any(vec4<bool>(var_0.c.x, false, true, var_0.c.x))), var_1.c, _wgslsmith_add_vec2_i32(vec2<i32>(1i, abs(var_1.e.x)), vec2<i32>(_wgslsmith_add_i32(u_input.a, 16265i), global2.a.x & u_input.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global2.a.zz, var_0.e), max(var_1.e, global2.a.zx)), _wgslsmith_mult_i32(-100320i, firstLeadingBit(1i)))), firstLeadingBit(u_input.b));
    global2 = Struct_2(var_2.a, firstLeadingBit(countOneBits(27536u)), !var_2.c, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1211f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1030f, -1000f, -175f)))), var_2), abs(var_1.a.zz));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1025f)) + _wgslsmith_f_op_f32(402f * -335f)))));
}

