struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: Struct_2 = Struct_2(Struct_1(true, 1030f, 1u, vec3<i32>(-24059i, -1i, -41695i)), vec3<f32>(1448f, -106f, 2014f));

var<private> global2: vec3<i32> = vec3<i32>(1i, i32(-2147483648), 116093i);

var<private> global3: array<Struct_2, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: i32) -> vec3<i32> {
    global2 = max(vec3<i32>(-2147483647i, abs(_wgslsmith_div_i32(-2046i, 2147483647i)), reverseBits(_wgslsmith_clamp_i32(arg_3, -12030i, 0i))) << ((vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 4294967295u, ~u_input.b) >> (vec3<u32>(reverseBits(global1.a.c), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.c, 25u, global1.a.c, global1.a.c), vec4<u32>(4294967295u, 4294967295u, 14133u, u_input.a.x)), global1.a.c >> (13922u % 32u)) % vec3<u32>(32u))) % vec3<u32>(32u)), -arg_2);
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_1(global1.a.a, _wgslsmith_f_op_f32(637f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-139f - -362f), _wgslsmith_f_op_f32(step(1574f, 682f))), _wgslsmith_f_op_f32(867f - _wgslsmith_f_op_f32(f32(-1f) * -357f))))), 4294967295u, global1.a.d >> (~u_input.a.yyz % vec3<u32>(32u)));
    var var_1 = global1.a.a;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a.b)) + _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)))));
    return global1.a.d;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(global1.a.a, _wgslsmith_f_op_f32(round(-1784f)), firstLeadingBit(global1.a.c), min(func_3(!vec2<bool>(true, global1.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -301f, global1.a.b, -647f)), u_input.d >> (u_input.a.wyz % vec3<u32>(32u)), 1i) & vec3<i32>(~(-1i), -global2.x, 1i), u_input.d << (select(max(u_input.a.wyx, u_input.a.xwx), u_input.a.ywz, global1.a.a) % vec3<u32>(32u))));
    global2 = var_0.d;
    let var_1 = Struct_3(~countOneBits(_wgslsmith_div_vec3_i32(u_input.d, var_0.d)) >> (select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.c, 78544u, var_0.c, u_input.a.x), u_input.a), reverseBits(1u), global1.a.c), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, 10843u, var_0.c), u_input.a.xxz), true && var_0.a) % vec3<u32>(32u)), abs(abs(~(global2.yx >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))))));
    let var_2 = min(_wgslsmith_dot_vec2_u32(u_input.a.xx, _wgslsmith_mult_vec2_u32(u_input.a.zw, u_input.a.ww)), 43542u);
    var var_3 = var_1;
    return Struct_3(firstTrailingBit(~vec3<i32>(_wgslsmith_clamp_i32(-22640i, var_1.a.x, 21866i), ~0i, ~var_1.b.x)), -vec2<i32>(2147483647i, countOneBits(~23712i)));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    var var_0 = -1339f;
    global3 = array<Struct_2, 27>();
    var var_1 = u_input.a.x;
    let var_2 = global1.a.c;
    let var_3 = Struct_1(arg_0, 1072f, 54542u, select(vec3<i32>(global2.x, arg_1.a.x, -16771i), ~abs(global1.a.d), select(vec3<bool>(true, false, false), select(vec3<bool>(arg_0, false, global1.a.a), vec3<bool>(true, arg_0, global1.a.a), vec3<bool>(arg_0, arg_0, arg_0)), true)) << (vec3<u32>(global1.a.c, ~0u, abs(_wgslsmith_clamp_u32(4854u, 50146u, global1.a.c))) % vec3<u32>(32u)));
    return Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(floor(global1.b)));
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = min(~vec3<u32>(1u, abs(max(24159u, 4294967295u)), _wgslsmith_div_u32(~0u, abs(20540u))), u_input.a.yxx >> (vec3<u32>(1u, ~(u_input.a.x & 66093u), ~(~arg_0.a.c)) % vec3<u32>(32u)));
    let var_1 = ~abs(u_input.b);
    global0 = array<Struct_2, 7>();
    let var_2 = arg_0.a.d.x;
    let var_3 = ~select(arg_0.a.c, global1.a.c, true);
    return any(vec4<bool>(false, true, all(vec3<bool>(arg_0.a.a, arg_0.a.a, false)) || true, arg_0.a.a)) || true;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(func_5(func_4(false, func_2())) | ((all(vec4<bool>(false, global1.a.a, true, true)) && global1.a.a) | any(!vec4<bool>(global1.a.a, true, true, global1.a.a))), _wgslsmith_div_f32(-724f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(func_4(true, Struct_3(vec3<i32>(-1i, u_input.d.x, global1.a.d.x), global1.a.d.xy)).b.x, _wgslsmith_div_f32(418f, -1367f)))))), ~select(~u_input.b, u_input.b, global1.a.a) & 24322u, firstLeadingBit(-func_2().a));
    var var_1 = Struct_3(vec3<i32>(global1.a.d.x, ~(-u_input.c.x), global1.a.d.x), ~(select(var_0.d.xz, global2.zy, !vec2<bool>(false, var_0.a)) | -(global2.xx << (u_input.a.yw % vec2<u32>(32u)))));
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, select(firstLeadingBit(var_1.a.x), -32884i, any(vec2<bool>(true, var_0.a)))), _wgslsmith_mult_vec2_i32(~u_input.c.zz, global2.zz), _wgslsmith_clamp_vec2_i32(~u_input.c.zw, countOneBits(vec2<i32>(u_input.c.x, u_input.d.x)), vec2<i32>(global1.a.d.x & -1i, ~global2.x))));
    global2 = ~(~global1.a.d);
    var var_3 = -var_0.d.x;
    return Struct_1(all(vec2<bool>(all(!vec4<bool>(var_0.a, global1.a.a, true, var_0.a)), global1.a.a)), _wgslsmith_f_op_f32(-235f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.x))) - var_0.b)), ~4294967295u, ~_wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(var_2.x), max(-1i, -15172i), var_2.x >> (19106u % 32u)), vec3<i32>(var_1.a.x << (4294967295u % 32u), -global1.a.d.x, global2.x)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, arg_0.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-221f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(103f, -972f), 430f))), arg_2.b.x));
    global2 = select(firstTrailingBit(_wgslsmith_clamp_vec3_i32(arg_0.a.d, vec3<i32>(_wgslsmith_clamp_i32(2901i, arg_0.a.d.x, -32389i), arg_0.a.d.x, arg_2.a.d.x), -_wgslsmith_add_vec3_i32(arg_2.a.d, arg_2.a.d))), vec3<i32>(~(-func_4(true, Struct_3(arg_0.a.d, global1.a.d.yx)).a.d.x), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(global1.a.d.x, global2.x, arg_0.a.d.x)), vec3<i32>(global1.a.d.x, ~arg_0.a.d.x, firstTrailingBit(1737i))), -(~u_input.d.x)), arg_2.a.a);
    let var_1 = Struct_3(select(global1.a.d, abs(~vec3<i32>(global2.x, arg_2.a.d.x, -6539i)), vec3<bool>(!global1.a.a & !global1.a.a, func_4(false, Struct_3(vec3<i32>(-27334i, -21140i, 13457i), u_input.d.xy)).a.a, func_4(true, Struct_3(vec3<i32>(3407i, -1i, 0i), vec2<i32>(global2.x, 48182i))).a.a & arg_0.a.a)), firstTrailingBit(global2.yy));
    let var_2 = func_1(global1.a.b, vec3<f32>(577f, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-1048f * -448f))));
    var var_3 = var_2.b;
    return Struct_2(func_1(var_0, _wgslsmith_f_op_vec3_f32(exp2(arg_2.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + var_2.b) * 1f), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a.b, arg_0.b.x), global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.b, vec3<f32>(711f, global1.a.b, 727f)), _wgslsmith_div_vec3_f32(arg_0.b, vec3<f32>(var_0, arg_0.a.b, global1.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1283f, global1.b.x, _wgslsmith_f_op_f32(global1.a.b - 514f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1030f, -817f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, global1.a.b, _wgslsmith_f_op_f32(f32(-1f) * -198f), 2747f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-559f, global1.b.x, global1.b.x, 781f) * vec4<f32>(-2414f, -1799f, global1.b.x, global1.a.b))))));
    var var_1 = func_6(Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(797f, var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zzy - vec3<f32>(1337f, -351f, -1161f)) * _wgslsmith_f_op_vec3_f32(-global1.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global1.a.b, global1.b.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, 468f), var_0.yyy))))), abs(~vec4<u32>(global1.a.c, global1.a.c, 45250u, 88506u) << (~_wgslsmith_add_vec4_u32(vec4<u32>(33876u, 74424u, u_input.a.x, 1u), u_input.a) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(((~u_input.b ^ global1.a.c) & 24177u) ^ _wgslsmith_mod_u32(~global1.a.c, u_input.a.x), 7u)]);
    var_1 = global3[_wgslsmith_index_u32(~firstTrailingBit(var_1.a.c), 27u)];
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(-257f, var_1.b.x, var_1.a.a)), var_0.x, -695f, -1577f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.x, var_1.b.x), vec2<f32>(-1346f, 1051f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.x, -464f), vec2<f32>(global1.b.x, var_1.a.b)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.x, var_0.x), var_0.yw, true))) * global1.b.xx), 35663u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_6(Struct_2(var_1.a, global1.b), _wgslsmith_mod_vec4_u32(vec4<u32>(21677u, 0u, 1u, 0u), u_input.a), func_4(var_1.a.a, Struct_3(global1.a.d, global2.yz))).b)));
}

