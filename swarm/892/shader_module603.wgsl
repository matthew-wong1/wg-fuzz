struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(342f, -1048f, -554f), vec3<f32>(-767f, 1605f, -819f), vec3<f32>(1352f, 542f, -901f), vec3<f32>(-1709f, 379f, 1000f), vec3<f32>(-661f, 624f, -1106f), vec3<f32>(1000f, -1130f, 2088f), vec3<f32>(-1173f, -736f, 1000f), vec3<f32>(725f, -1026f, 580f), vec3<f32>(-504f, -2359f, 685f), vec3<f32>(-577f, 1876f, -818f), vec3<f32>(-397f, -1667f, 466f), vec3<f32>(-652f, 792f, -1000f), vec3<f32>(-115f, -493f, 375f), vec3<f32>(1000f, 203f, -1092f), vec3<f32>(1189f, 476f, -1532f), vec3<f32>(934f, 1000f, 291f), vec3<f32>(1307f, -696f, 1338f), vec3<f32>(-1833f, -1905f, -138f), vec3<f32>(-343f, -1000f, -320f), vec3<f32>(1000f, 294f, 876f), vec3<f32>(-399f, 327f, 827f), vec3<f32>(133f, -453f, -147f), vec3<f32>(340f, 361f, 852f), vec3<f32>(-104f, 1699f, -1944f), vec3<f32>(831f, 1071f, 1020f));

var<private> global1: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(47023u, 1u, 1u), vec3<u32>(45163u, 4294967295u, 50067u), vec3<u32>(1u, 0u, 60078u), vec3<u32>(1u, 54441u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 40197u, 0u), vec3<u32>(30481u, 0u, 1u), vec3<u32>(16154u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(47630u, 1u, 4294967295u), vec3<u32>(0u, 76283u, 1u), vec3<u32>(18206u, 5868u, 25278u), vec3<u32>(1u, 26373u, 11675u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(34119u, 80263u, 135978u), vec3<u32>(16145u, 32126u, 1u));

var<private> global2: bool = false;

var<private> global3: Struct_2;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_4(global3.b.x);
    var var_1 = Struct_4(-1436f);
    global2 = all(global3.d);
    let var_2 = global3.d;
    let var_3 = 1i;
    return -322f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(!global3.d.x, all(vec4<bool>(global3.c.a, false, true, global3.c.a)), -495f < global3.b.x)))) - _wgslsmith_f_op_f32(-global3.b.x));
    global1 = array<vec3<u32>, 17>();
    var var_1 = 47359u;
    let var_2 = Struct_2(vec4<u32>(13524u, abs(_wgslsmith_add_u32(~u_input.c.x, 51416u)), countOneBits(~abs(global3.c.c)), _wgslsmith_mult_u32(global3.a.x, ~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 1u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - _wgslsmith_f_op_f32(select(var_0, var_0, true)))), 1954f, _wgslsmith_div_f32(global3.b.x, var_0)), global3.c, vec2<bool>(u_input.c.x == min(u_input.c.x, global3.c.c), global3.c.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-393f, var_2.b.x, -131f, -1566f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(947f, 271f, var_0, var_0)), global3.c.a)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.x, var_2.b.x, global3.b.x, 824f), vec4<f32>(var_2.b.x, -449f, 230f, -142f), vec4<bool>(var_2.c.b, global3.d.x, true, global3.d.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 719f, 1058f, var_0)))))))));
    return Struct_1(true, false, countOneBits(_wgslsmith_mod_u32(var_2.a.x, 4294967295u) ^ u_input.c.x) & firstTrailingBit(~(43647u >> (0u % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(max(271f, global3.b.x)), arg_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.b.x - global3.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.b.x, global3.b.x)))), 2164f)), _wgslsmith_f_op_f32(-1127f * 1306f));
    global3 = Struct_2(global3.a, global3.b, Struct_1(global3.c.b, all(!vec2<bool>(false, arg_0.a.b)) && all(select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_0.a.a, arg_0.a.a, false), vec3<bool>(arg_0.a.b, global3.c.a, arg_0.a.a))), func_2().c), vec2<bool>(true, any(!select(vec3<bool>(true, global3.c.a, global3.c.a), vec3<bool>(arg_1, false, global3.c.a), true))));
    var var_1 = global3.d;
    return Struct_2(vec4<u32>(4294967295u >> ((global3.c.c ^ _wgslsmith_div_u32(17438u, u_input.a.x)) % 32u), ~(~u_input.c.x), u_input.a.x, _wgslsmith_clamp_u32(u_input.c.x, arg_0.b >> ((arg_0.a.c << (arg_0.a.c % 32u)) % 32u), _wgslsmith_div_u32(1u, u_input.c.x))), _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(global3.c.c, 25u)])), func_2(), vec2<bool>(false, any(vec2<bool>(false, true))));
}

fn func_1() -> u32 {
    global3 = func_4(Struct_3(func_2(), max(global3.c.c, reverseBits(~1u))), global3.d.x);
    let var_0 = ~firstLeadingBit(u_input.d.x);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f)) - -439f))));
    global0 = array<vec3<f32>, 25>();
    global4 = min(_wgslsmith_clamp_i32(firstTrailingBit(-var_0), ~var_0, ~u_input.d.x) & -21789i, 0i >> (reverseBits(abs(u_input.a.x)) % 32u));
    return min(abs(~u_input.a.x), u_input.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    let var_0 = arg_1;
    let var_1 = select(_wgslsmith_sub_vec4_i32(-min(~vec4<i32>(u_input.d.x, u_input.b, -7260i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, u_input.b), vec4<i32>(7251i, u_input.b, u_input.b, u_input.d.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, u_input.d.x, -49231i), ~vec4<i32>(u_input.d.x, -38141i, -2147483647i, -43792i)) & ((vec4<i32>(u_input.d.x, u_input.d.x, 0i, 25015i) | vec4<i32>(u_input.b, 26978i, u_input.b, u_input.b)) & max(vec4<i32>(-1i, u_input.d.x, 53272i, -11639i), vec4<i32>(u_input.b, u_input.b, u_input.d.x, u_input.b)))), -abs(vec4<i32>(countOneBits(u_input.d.x), ~u_input.d.x, -1262i, 1i)), !(!(!(!vec4<bool>(arg_0.c.a, true, arg_0.c.b, false)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 4294967295u), u_input.a.x >> (4294967295u % 32u))), 25u)]))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1924f)))));
    var var_4 = _wgslsmith_sub_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -1i), u_input.d), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(var_1.yz), ~var_1.wx), abs(~vec2<i32>(43327i, var_1.x))), any(!vec3<bool>(false, arg_0.c.b, false)) && false), ~countOneBits(~(-vec2<i32>(0i, -1i))));
    return Struct_3(func_2(), arg_0.a.x & ~(55789u >> (0u % 32u)));
}

fn func_6(arg_0: Struct_3) -> bool {
    var var_0 = func_4(Struct_3(global3.c, min(func_1(), _wgslsmith_mult_u32(global3.c.c, 1u))), arg_0.a.b);
    var var_1 = vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f * global3.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f))) - -1502f), 659f, var_0.b.x);
    global2 = !var_0.d.x;
    var var_2 = 1i;
    global4 = ~(~(-52165i << (_wgslsmith_clamp_u32(~global3.a.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.c, global3.c.c, 31689u), var_0.a.wyw)) % 32u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(u_input.d.x | 5984i, 30619i, u_input.b);
    var var_1 = vec3<u32>(~14935u, global3.a.x, u_input.c.x);
    var var_2 = func_6(func_5(Struct_2(countOneBits(vec4<u32>(global3.a.x, 49954u, 84542u, u_input.a.x)), vec3<f32>(_wgslsmith_div_f32(global3.b.x, -1684f), _wgslsmith_f_op_f32(sign(global3.b.x)), global3.b.x), global3.c, select(vec2<bool>(global3.d.x, false), global3.d, vec2<bool>(global3.c.b, global3.d.x))), Struct_3(Struct_1(true, global3.c.b, abs(1u)), func_1())));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b.x)))), global3.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(22385u ^ global3.a.x, 25u)]) - vec3<f32>(_wgslsmith_f_op_f32(floor(158f)), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-global3.b.x))) + vec3<f32>(_wgslsmith_f_op_f32(-545f + _wgslsmith_div_f32(global3.b.x, global3.b.x)), _wgslsmith_f_op_f32(-1560f * _wgslsmith_f_op_f32(704f + 127f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.b.x, -1653f)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.xz, -789f, _wgslsmith_div_vec3_u32(u_input.c, ~vec3<u32>(1u, u_input.c.x ^ 4294967295u, global3.a.x)), -2157f);
}

