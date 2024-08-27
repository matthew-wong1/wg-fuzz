struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 11>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>((17020u << ((4294967295u & global0.a.c) % 32u)) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 30099u), vec2<u32>(arg_0.a.c, global0.c.c)) | (arg_0.a.c << (84967u % 32u))), _wgslsmith_add_u32(arg_1.c.c, abs(10428u)), max(25181u, arg_1.a.c | ~1u)), countOneBits(_wgslsmith_sub_vec3_u32(reverseBits(abs(vec3<u32>(17845u, 44099u, global0.a.c))), ~max(vec3<u32>(54747u, 4294967295u, 4294967295u), vec3<u32>(13639u, 0u, 0u)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.a.a, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(30512u, 11u)]))), global1[_wgslsmith_index_u32(arg_0.c.c, 11u)], select(30534u >= countOneBits(var_0.x), all(vec3<bool>(true, false, true)), false))) - -1055f);
    var var_2 = min(vec2<u32>(1u, 4294967295u), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.c, 40587u, 23578u, 1u), vec4<u32>(34719u, 1u, 1u, 4294967295u)), 1u));
    global1 = array<f32, 11>();
    global1 = array<f32, 11>();
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0.c.b.x, global0.b.x, arg_1.c.d), -21003i) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.c, 0u), vec2<u32>(0u, arg_0.a.c)), _wgslsmith_div_u32(global0.a.c, var_0.x)) % 32u), countOneBits(_wgslsmith_clamp_i32(1813i, 0i & u_input.a.x, global0.b.x))), select(u_input.a.yx, _wgslsmith_clamp_vec2_i32(~global0.b.zz, min(vec2<i32>(23478i, -46928i), vec2<i32>(u_input.a.x, global0.a.d)), countOneBits(vec2<i32>(-1i, 3900i))), true) >> (~(~abs(vec2<u32>(58u, 2251u))) % vec2<u32>(32u)));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1272f - 877f), global1[_wgslsmith_index_u32(~0u, 11u)])), vec4<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(27757i, 0i, global0.a.b.x), vec3<i32>(0i, global0.b.x, 21517i)) | func_3(Struct_2(global0.c, global0.a.b, Struct_1(400f, vec4<i32>(0i, global0.b.x, u_input.b, global0.a.b.x), global0.a.c, u_input.b, global1[_wgslsmith_index_u32(5025u, 11u)])), Struct_2(global0.c, global0.c.b, global0.a))), _wgslsmith_add_i32(u_input.a.x, u_input.a.x << (~4294967295u % 32u)), abs(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -33356i, -2147483647i), u_input.a))), max(_wgslsmith_sub_i32(global0.b.x, global0.b.x), ~1i)), abs(~(~global0.a.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x ^ (global0.b.x >> (global0.a.c % 32u)), _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(u_input.b, -10512i)), ~(-1i)), -vec3<i32>(u_input.b, countOneBits(37005i), -14784i ^ u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.a.e)), _wgslsmith_f_op_f32(-global0.c.e)), -1542f) + 780f));
    var var_1 = _wgslsmith_mult_i32(~(var_0.b.x ^ abs(-5406i)), var_0.b.x);
    var var_2 = -6701i;
    var var_3 = Struct_3(select(vec3<bool>(23663i > u_input.a.x, true, !(global0.a.c > 28351u)), select(vec3<bool>(true, true, false), vec3<bool>(true, all(vec2<bool>(false, false)), true), countOneBits(var_0.b.x) > abs(u_input.a.x)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), max(global0.a.d, 2147483647i) >= ~2147483647i)), -1041f, global0.b.xz);
    return i32(-1i) * -26388i;
}

fn func_4(arg_0: vec2<i32>) -> bool {
    let var_0 = -21085i;
    global1 = array<f32, 11>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(476f, 1316f, _wgslsmith_f_op_f32(f32(-1f) * -502f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global0.a.c, 11u)])), _wgslsmith_f_op_f32(sign(-686f)), global0.c.a) + vec3<f32>(_wgslsmith_f_op_f32(select(470f, 383f, false)), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global0.c.c, 11u)])), _wgslsmith_f_op_f32(step(1166f, -970f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(58959u, 11u)], global0.a.e, global1[_wgslsmith_index_u32(1u, 11u)]) - vec3<f32>(global1[_wgslsmith_index_u32(0u, 11u)], -945f, 747f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1686f, -1000f, global1[_wgslsmith_index_u32(global0.a.c, 11u)]))))), !(!vec3<bool>(any(vec3<bool>(true, true, true)), true, false))));
    global1 = array<f32, 11>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~global0.c.c, 11u)])) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + global0.c.a)))), vec4<i32>(7541i, ~_wgslsmith_dot_vec3_i32(global0.b.yxx, vec3<i32>(arg_0.x, u_input.a.x, var_0)), arg_0.x, _wgslsmith_sub_i32(arg_0.x << (31890u % 32u), global0.b.x)), _wgslsmith_sub_u32(~_wgslsmith_div_u32(global0.c.c, 63685u), abs(global0.c.c)), func_2(), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, global1[_wgslsmith_index_u32(global0.c.c, 11u)]))))), vec4<i32>(-1i, -39000i, 2147483647i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, global0.a.b.x, arg_0.x, 32695i)), global0.c.b & global0.c.b)), Struct_1(117f, -global0.b, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.c, global0.a.c, 0u, 4294967295u), ~vec4<u32>(65677u, 65789u, global0.c.c, global0.c.c)), ~(-min(1i, u_input.b)), global1[_wgslsmith_index_u32(reverseBits(0u), 11u)]));
    return true;
}

fn func_1() -> vec4<u32> {
    var var_0 = func_4(_wgslsmith_div_vec2_i32(vec2<i32>(func_2(), -u_input.b << (_wgslsmith_add_u32(global0.a.c, 0u) % 32u)), global0.b.xz));
    let var_1 = ~abs(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.c.c, global0.c.c), vec2<u32>(1u, global0.c.c))));
    var var_2 = Struct_3(vec3<bool>(!(~global0.c.c <= ~global0.c.c), true && select(all(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true))), !select(false, true, true)), global0.a.e, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-(u_input.a.zz ^ u_input.a.yx), vec2<i32>(u_input.b | -44964i, func_3(Struct_2(global0.c, global0.a.b, Struct_1(global1[_wgslsmith_index_u32(global0.a.c, 11u)], vec4<i32>(-7021i, global0.c.d, -85354i, u_input.b), global0.c.c, -43823i, -275f)), Struct_2(global0.c, vec4<i32>(u_input.a.x, 61902i, u_input.a.x, u_input.b), Struct_1(-659f, vec4<i32>(u_input.a.x, 20163i, global0.c.d, u_input.b), 0u, 16894i, global0.a.a))))), ~min(~u_input.a.yy, _wgslsmith_clamp_vec2_i32(vec2<i32>(-17805i, 17065i), u_input.a.yx, vec2<i32>(u_input.b, -7319i)))));
    global0 = Struct_2(global0.c, vec4<i32>(_wgslsmith_clamp_i32(global0.b.x, countOneBits(var_2.c.x), _wgslsmith_dot_vec2_i32(abs(global0.c.b.zw), global0.b.yx)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.d, -2147483647i, 6744i), ~vec3<i32>(global0.b.x, 0i, global0.a.d)), countOneBits(~u_input.b), _wgslsmith_mod_i32(global0.c.b.x, global0.a.d)), global0.c);
    var var_3 = countOneBits(_wgslsmith_clamp_vec3_u32(~reverseBits(~vec3<u32>(48201u, global0.a.c, 1u)), countOneBits(~vec3<u32>(global0.a.c, global0.c.c, 1u) << (~vec3<u32>(global0.a.c, 34100u, global0.c.c) % vec3<u32>(32u))), vec3<u32>(var_1.x, global0.a.c, _wgslsmith_sub_u32(var_1.x, ~10337u))));
    return ~(~firstTrailingBit(vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x)) & vec4<u32>(~(~66530u), max(abs(global0.a.c), _wgslsmith_dot_vec2_u32(var_3.yz, var_3.xy)), ~var_1.x, _wgslsmith_div_u32(~global0.c.c, ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 11>();
    var var_0 = func_1();
    let var_1 = _wgslsmith_mod_i32(2147483647i, (~_wgslsmith_sub_i32(1i, global0.a.b.x) << (var_0.x % 32u)) | countOneBits(-abs(u_input.b)));
    var_0 = vec4<u32>(~0u, _wgslsmith_clamp_u32(global0.a.c, global0.c.c, 52778u), global0.a.c, ~select(~reverseBits(29835u), 4294967295u, !all(vec2<bool>(true, true))));
    let var_2 = var_0.yzw;
    var var_3 = _wgslsmith_sub_u32(4294967295u, var_0.x);
    let var_4 = Struct_3(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(1765i, 30261i)) > firstTrailingBit(global0.c.d)), false), -326f, (u_input.a.yz ^ -(global0.a.b.wx << (vec2<u32>(44225u, 78331u) % vec2<u32>(32u)))) >> (reverseBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(var_2.x, var_2.x))) % vec2<u32>(32u)));
    var var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.e, global0.a.a, var_4.b), vec3<f32>(-1001f, var_4.b, global1[_wgslsmith_index_u32(var_0.x, 11u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.b, global1[_wgslsmith_index_u32(30680u, 11u)], 1405f), vec3<f32>(-419f, -334f, var_4.b))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1333f, -819f, var_4.b))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1703f, global0.c.a, global1[_wgslsmith_index_u32(var_2.x, 11u)]), vec3<f32>(global1[_wgslsmith_index_u32(1u, 11u)], 484f, 315f), vec3<bool>(true, var_4.a.x, var_4.a.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-866f, var_4.b, -992f) * vec3<f32>(1000f, -1153f, global0.c.e)))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1147f, 695f, global1[_wgslsmith_index_u32(var_0.x, 11u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mult_vec3_i32(u_input.a, countOneBits(u_input.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(~var_0.x, firstLeadingBit(36874u), (var_2.x >> (var_2.x % 32u)) | abs(6444u), 12877u), _wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, var_2.x, global0.a.c, 96387u)), vec4<u32>(_wgslsmith_add_u32(global0.c.c, 80738u), ~var_0.x, firstTrailingBit(var_0.x), ~var_2.x))), abs(abs(2015u)) ^ var_0.x, ~_wgslsmith_add_vec3_u32(vec3<u32>(57422u, _wgslsmith_mult_u32(var_0.x, 1u), var_0.x), ~(~var_0.xzz)));
}

