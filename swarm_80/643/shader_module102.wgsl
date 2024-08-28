struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(40014i, 0i, 21447i), vec3<i32>(-10631i, -42939i, -3020i), vec3<i32>(2147483647i, 66065i, -6912i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(12678i, i32(-2147483648), 0i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-12406i, -38061i, 1i), vec3<i32>(0i, i32(-2147483648), -30935i), vec3<i32>(i32(-2147483648), 2147483647i, 39219i), vec3<i32>(-17486i, 0i, -50616i), vec3<i32>(-48104i, -22157i, 10058i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-43030i, 20285i, -3272i), vec3<i32>(25885i, 2147483647i, -34688i));

var<private> global1: vec4<f32> = vec4<f32>(251f, -1081f, -1211f, -1121f);

var<private> global2: bool;

var<private> global3: array<bool, 10> = array<bool, 10>(true, false, true, true, true, true, false, false, true, false);

var<private> global4: array<i32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = vec4<f32>(-903f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(1370f * global1.x)) - global1.x))));
    var var_0 = Struct_1(vec3<u32>(firstLeadingBit(u_input.e), _wgslsmith_add_u32(~_wgslsmith_sub_u32(arg_0.a.x, 54559u), ~4294967295u), 15274u));
    let var_1 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1266f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), global1.x, false)), 1833f, -991f));
    var var_2 = abs(-vec2<i32>(global4[_wgslsmith_index_u32(7478u, 30u)], -(i32(-1i) * -14646i)));
    return ~(~56226u);
}

fn func_2(arg_0: vec2<i32>) -> vec2<i32> {
    let var_0 = Struct_1(reverseBits(select(abs(vec3<u32>(110532u, u_input.b, u_input.e)), ~vec3<u32>(u_input.e, 69675u, u_input.c), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.e, 10u)], global3[_wgslsmith_index_u32(17227u, 10u)], true))) ^ select(vec3<u32>(~83762u, 1u >> (u_input.e % 32u), u_input.c), vec3<u32>(~16203u, u_input.b, 88614u >> (u_input.a % 32u)), vec3<bool>(true, false, true)));
    let var_1 = var_0;
    global2 = !global3[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 4068u), vec3<u32>(4294967295u, var_1.a.x, 0u)))), 10u)];
    global3 = array<bool, 10>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, 175f), vec2<f32>(-305f, 2806f))), vec2<f32>(global1.x, -1000f)))) + _wgslsmith_f_op_vec2_f32(ceil(global1.xy))));
    return arg_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = vec3<u32>((_wgslsmith_mod_u32(u_input.e, firstLeadingBit(u_input.a)) ^ (u_input.b >> (_wgslsmith_sub_u32(16695u, u_input.a) % 32u))) ^ u_input.b, reverseBits(u_input.a), ~38232u);
    var var_1 = Struct_1(vec3<u32>(u_input.c | firstTrailingBit(23994u), ~24764u, ~firstLeadingBit(1u)) & max(~(~vec3<u32>(4294967295u, u_input.c, var_0.x)), var_0));
    global3 = array<bool, 10>();
    let var_2 = Struct_1(reverseBits(var_1.a) ^ ~var_0);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_0.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, arg_0.x, 1081f, arg_0.x), vec4<f32>(830f, global1.x, 1331f, global1.x), global3[_wgslsmith_index_u32(0u, 10u)]))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1173f, 310f, global1.x) + vec4<f32>(arg_0.x, arg_0.x, -624f, 910f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, arg_0.x, -1872f))))));
    return var_2;
}

fn func_1() -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 30u)], u_input.d, -68854i, u_input.d), vec4<i32>(global4[_wgslsmith_index_u32(41899u, 30u)], -11766i, -34563i, global4[_wgslsmith_index_u32(u_input.a, 30u)])) >> ((vec4<u32>(u_input.a, 81404u, 72809u, 1u) << (vec4<u32>(4294967295u, u_input.e, u_input.b, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), (vec4<i32>(57260i, global4[_wgslsmith_index_u32(0u, 30u)], u_input.d, 2147483647i) & vec4<i32>(u_input.d, -2147483647i, global4[_wgslsmith_index_u32(4294967295u, 30u)], -33580i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(77160u, u_input.c, 1u, u_input.e), vec4<u32>(1u, 0u, 0u, 1u)) % vec4<u32>(32u))) | _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(reverseBits(66197u), 30u)] ^ max(-61117i, 2147483647i), 56253i), u_input.d);
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(select(global1.wyy, _wgslsmith_f_op_vec3_f32(-global1.xwx), true)), func_2(var_0));
    global4 = array<i32, 30>();
    var var_2 = func_4(global1.xwy, select(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -102i, ~2147483647i), var_0 ^ abs(vec2<i32>(2147483647i, 0i))), firstLeadingBit(_wgslsmith_mult_vec2_i32(reverseBits(var_0), firstTrailingBit(var_0))), !select(vec2<bool>(false, global3[_wgslsmith_index_u32(var_1.a.x, 10u)]), vec2<bool>(true, true), global3[_wgslsmith_index_u32(~4294967295u, 10u)])));
    var_1 = func_4(vec3<f32>(-850f, -1014f, -1075f), vec2<i32>(~min(var_0.x, u_input.d) | u_input.d, -19517i));
    return ~min(26095i, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~(-(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -6810i, -5754i, 1i), vec4<i32>(u_input.d, 0i, -2147483647i, -2147483647i)))), ~(~vec4<i32>(global4[_wgslsmith_index_u32(17014u, 30u)], 4749i, global4[_wgslsmith_index_u32(85330u, 30u)], u_input.d) & vec4<i32>(0i, u_input.d, func_1(), select(36658i, 35384i, global3[_wgslsmith_index_u32(1u, 10u)]))));
    var var_1 = 1u;
    var var_2 = Struct_1(~firstTrailingBit(~vec3<u32>(u_input.c, u_input.e, u_input.e) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.a, 21792u), vec3<u32>(4294967295u, u_input.b, 4294967295u)) % vec3<u32>(32u))));
    var var_3 = !global3[_wgslsmith_index_u32(1u, 10u)];
    global4 = array<i32, 30>();
    let var_4 = var_2.a;
    var_1 = ~min(140042u, var_2.a.x);
    let var_5 = !(!select(!(!vec2<bool>(global3[_wgslsmith_index_u32(var_2.a.x, 10u)], false)), vec2<bool>(global1.x >= global1.x, false), select(select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], false), vec2<bool>(true, false), global3[_wgslsmith_index_u32(var_2.a.x, 10u)]), vec2<bool>(false, true), global3[_wgslsmith_index_u32(func_3(Struct_1(vec3<u32>(1u, var_2.a.x, var_2.a.x))), 10u)])));
    let var_6 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) * _wgslsmith_f_op_f32(-335f - 950f)), all(var_5))), -300f, global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.zyw * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.yyy) - vec3<f32>(215f, global1.x, 1378f))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -281f, -771f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, -173f)))), global1.zyz)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, -(~(-6080i)), -(u_input.d << (0u % 32u))), _wgslsmith_div_vec4_i32(min(min(vec4<i32>(18564i, -5288i, global4[_wgslsmith_index_u32(21599u, 30u)], var_0.x), vec4<i32>(u_input.d, u_input.d, -93927i, global4[_wgslsmith_index_u32(u_input.b, 30u)])), -vec4<i32>(u_input.d, 3921i, u_input.d, u_input.d)), _wgslsmith_div_vec4_i32(max(vec4<i32>(-1i, 30741i, u_input.d, -1i), vec4<i32>(u_input.d, global4[_wgslsmith_index_u32(var_2.a.x, 30u)], 0i, u_input.d)), vec4<i32>(u_input.d, -2147483647i, -4176i, var_0.x)))), var_2.a, vec2<u32>(var_2.a.x, ~_wgslsmith_div_u32(u_input.a, u_input.b)));
}

