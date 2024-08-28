struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-1367f, 287f), vec2<f32>(1839f, -275f), vec2<f32>(-1877f, -1174f), vec2<f32>(-429f, -194f), vec2<f32>(747f, -1000f), vec2<f32>(-1773f, 185f), vec2<f32>(386f, -353f), vec2<f32>(-580f, 1232f), vec2<f32>(-1107f, 215f), vec2<f32>(-908f, 312f), vec2<f32>(1000f, -1506f), vec2<f32>(2709f, 742f), vec2<f32>(-999f, -556f), vec2<f32>(-1000f, 1000f), vec2<f32>(902f, 693f), vec2<f32>(-1000f, 1823f), vec2<f32>(295f, 206f), vec2<f32>(431f, 1000f), vec2<f32>(-219f, 1834f), vec2<f32>(-760f, 675f), vec2<f32>(-958f, 219f), vec2<f32>(302f, 1000f), vec2<f32>(547f, 1512f), vec2<f32>(746f, -691f), vec2<f32>(-1290f, -1000f), vec2<f32>(185f, 1209f));

var<private> global1: Struct_3 = Struct_3(vec4<i32>(-5604i, 72494i, 1i, -1i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), vec3<u32>(1u, 4294967295u, 88424u), vec3<bool>(true, false, false)));

var<private> global2: array<vec4<i32>, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = vec4<bool>(true, global1.b.a.a.x, false, all(!global1.b.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-375f - -695f))), -902f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1187f, _wgslsmith_f_op_f32(sign(-825f)), global1.b.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(478f, 1815f) - _wgslsmith_f_op_f32(-678f * 1541f))))));
    global1 = Struct_3(-_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(global1.a.x, global1.a.x, 1i, u_input.b), global2[_wgslsmith_index_u32(arg_0, 9u)]), ~u_input.c), (u_input.c >> (vec4<u32>(1u, 72564u, 68047u, 55847u) % vec4<u32>(32u))) ^ vec4<i32>(-1i, 2147483647i, 2147483647i, u_input.c.x)), global1.b);
    var var_2 = Struct_4(Struct_3(global1.a, Struct_2(global1.b.a, countOneBits(vec3<u32>(u_input.a.x, 11363u, 1u) << (vec3<u32>(u_input.a.x, 1u, 35093u) % vec3<u32>(32u))), select(var_0.wxw, global1.b.c, true))), vec4<u32>(global1.b.b.x, 0u, ~min(_wgslsmith_dot_vec3_u32(global1.b.b, vec3<u32>(arg_0, 4294967295u, global1.b.b.x)), firstTrailingBit(0u)), 0u));
    var var_3 = u_input.c;
    return ~u_input.c;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(u_input.c, global1.b);
    var var_1 = Struct_4(Struct_3(func_3(reverseBits(_wgslsmith_add_u32(u_input.a.x, u_input.a.x))), var_0.b), vec4<u32>(u_input.a.x, var_0.b.b.x, ~global1.b.b.x, 37684u));
    let var_2 = var_1.a;
    var var_3 = ~0i;
    let var_4 = Struct_4(Struct_3(global1.a, var_1.a.b), ~_wgslsmith_add_vec4_u32(firstLeadingBit(var_1.b), var_1.b) & _wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.b.x, u_input.a.x, 1u, var_0.b.b.x) | ~var_1.b, vec4<u32>(1u, ~u_input.a.x, 0u, global1.b.b.x | u_input.a.x)));
    return var_4.a;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = 2050f;
    let var_1 = func_2();
    var var_2 = ~(~(~firstLeadingBit(~1u)));
    global1 = func_2();
    let var_3 = func_2();
    return -2018f;
}

fn func_4(arg_0: f32) -> Struct_3 {
    let var_0 = global1.b.c.zx;
    global1 = func_2();
    let var_1 = -494f;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, var_1, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1221f, var_1, -1464f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_0, 1086f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, var_1) * vec3<f32>(arg_0, var_1, -1158f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(min(189f, -316f)), _wgslsmith_f_op_f32(arg_0 + var_1)))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 840f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-556f, 2606f)) + _wgslsmith_div_f32(var_1, -643f))))));
    let var_3 = vec2<f32>(var_2.x, 520f);
    return Struct_3(vec4<i32>(~2147483647i, firstTrailingBit(-1i), ~countOneBits(min(-18366i, 1i)), -global1.a.x), Struct_2(Struct_1(global1.b.c, global1.b.a.b), _wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(vec3<u32>(u_input.a.x, 17084u, 4294967295u))), ~abs(vec3<u32>(u_input.a.x, 70864u, 8285u)), vec3<u32>(_wgslsmith_dot_vec3_u32(global1.b.b, vec3<u32>(global1.b.b.x, global1.b.b.x, 4294967295u)), u_input.a.x, min(u_input.a.x, global1.b.b.x))), global1.b.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, global1.b.b.x, abs(_wgslsmith_dot_vec2_u32(u_input.a, global1.b.b.zz)) ^ _wgslsmith_add_u32(u_input.a.x, 4294967295u)));
    global2 = array<vec4<i32>, 9>();
    let var_1 = Struct_4(func_4(_wgslsmith_f_op_f32(func_1(vec2<i32>(min(-2147483647i, 60876i), -2147483647i)))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(31204u, 37068u, 1u, 4294967295u), vec4<u32>(121069u, _wgslsmith_sub_u32(global1.b.b.x, var_0), _wgslsmith_dot_vec3_u32(global1.b.b, global1.b.b), func_2().b.b.x)));
    global1 = Struct_3(_wgslsmith_mod_vec4_i32(select(~(-global2[_wgslsmith_index_u32(var_1.a.b.b.x, 9u)]), vec4<i32>(global1.a.x, _wgslsmith_dot_vec3_i32(global1.a.xyx, vec3<i32>(3037i, var_1.a.a.x, -21970i)), -17226i, 34634i), !global1.b.a.b), global1.a), var_1.a.b);
    global1 = var_1.a;
    let var_2 = select(select(!var_1.a.b.a.b, select(vec4<bool>(u_input.a.x > 1u, false, true, false), !select(var_1.a.b.a.b, var_1.a.b.a.b, var_1.a.b.a.b), var_1.a.b.a.b), !((4294967295u ^ global1.b.b.x) < 41903u)), vec4<bool>(false, true, any(func_2().b.a.b.xz), var_1.a.b.a.b.x), func_4(-505f).b.a.b);
    var var_3 = Struct_3(-min(_wgslsmith_add_vec4_i32(firstLeadingBit(global2[_wgslsmith_index_u32(13321u, 9u)]), ~u_input.c), ~(~var_1.a.a)), Struct_2(var_1.a.b.a, func_4(1617f).b.b ^ ~_wgslsmith_clamp_vec3_u32(var_1.b.xxx, global1.b.b, vec3<u32>(19987u, var_0, 0u)), vec3<bool>(global1.b.a.b.x, global1.b.b.x >= _wgslsmith_add_u32(0u, 4294967295u), true)));
    var var_4 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~select(-_wgslsmith_div_i32(22749i, var_1.a.a.x), func_2().a.x, true), ~global2[_wgslsmith_index_u32(79799u, 9u)]);
}

