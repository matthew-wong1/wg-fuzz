struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, true, true, false, false, true, false, true, false, true, true, true, true, true);

var<private> global1: vec3<u32> = vec3<u32>(23688u, 1u, 22759u);

var<private> global2: array<Struct_2, 13>;

var<private> global3: array<Struct_1, 19>;

var<private> global4: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-5704i, i32(-2147483648), -20822i), vec3<i32>(-22691i, -22188i, -1i), vec3<i32>(-13575i, -1i, -48253i), vec3<i32>(48890i, 44386i, 2147483647i), vec3<i32>(8827i, 26940i, 10172i), vec3<i32>(-37046i, -10447i, 2147483647i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<i32> {
    global0 = array<bool, 15>();
    var var_0 = global1.x >> (~(~_wgslsmith_mult_u32(u_input.b.x, firstLeadingBit(0u))) % 32u);
    global4 = array<vec3<i32>, 6>();
    global2 = array<Struct_2, 13>();
    let var_1 = Struct_1(true, vec2<i32>(arg_0.x, 34527i), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) * _wgslsmith_div_f32(-1209f, 1219f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -372f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(643f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-944f, 812f, 347f, -1018f) * vec4<f32>(3284f, -1047f, 236f, 171f))))))), vec2<f32>(-416f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 280f), _wgslsmith_div_f32(-963f, -1204f)))));
    return select(arg_0, vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(-9056i, arg_0.x, -24848i)) >> (abs(select(global1.yz, u_input.b, vec2<bool>(false, false))) % vec2<u32>(32u)), select(global0[_wgslsmith_index_u32(~(~global1.x), 15u)], any(!vec2<bool>(true, var_1.a)), !var_1.a)) | vec2<i32>(0i, _wgslsmith_mult_i32(~_wgslsmith_mult_i32(1i, 59410i), i32(-1i) * -27175i));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_1(true, arg_1.yz | -(func_3(vec2<i32>(u_input.a.x, 1i)) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1137f * -1662f), -599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1187f, -1000f, true))), 1f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-992f * 1150f), _wgslsmith_f_op_f32(-1000f - 793f)), 313f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-232f, _wgslsmith_f_op_f32(abs(var_0.c.x)), -285f, -240f), var_0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.c)))));
    let var_2 = Struct_2(Struct_1(!(!all(vec3<bool>(false, var_0.a, true))), select(firstTrailingBit(vec2<i32>(var_0.b.x, 2147483647i)), (arg_1.xz & var_0.b) ^ (vec2<i32>(0i, var_0.b.x) << (u_input.b % vec2<u32>(32u))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(61567u, global1.x), 15u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d + vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.d, var_1.xx), _wgslsmith_f_op_vec2_f32(var_1.zw * var_1.yw), vec2<bool>(false, false)))))), Struct_1(var_0.a, vec2<i32>(_wgslsmith_mod_i32(var_0.b.x, -2147483647i), firstLeadingBit(arg_0)) ^ arg_1.xw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1571f, -1035f, -270f, -1289f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 1000f) * var_1.yz)))), abs(64438u), vec4<bool>(!var_0.a, false, true, (47222u <= _wgslsmith_div_u32(u_input.b.x, 43213u)) | global0[_wgslsmith_index_u32(global1.x, 15u)]), true);
    var var_3 = select(var_2.d.yy, select(!var_2.d.zy, !var_2.d.wz, all(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_2.c, 15u)], false, var_0.a, false), var_2.d, var_2.d))), var_2.d.zw);
    let var_4 = 1u;
    return var_2;
}

fn func_1() -> Struct_2 {
    global4 = array<vec3<i32>, 6>();
    global4 = array<vec3<i32>, 6>();
    global2 = array<Struct_2, 13>();
    var var_0 = global3[_wgslsmith_index_u32(global1.x, 19u)];
    global3 = array<Struct_1, 19>();
    return func_2(-_wgslsmith_mod_i32(1i, u_input.a.x), vec4<i32>(-1i) * -u_input.a, var_0.b.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = abs(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, arg_1.c));
    let var_1 = func_1().a;
    let var_2 = global2[_wgslsmith_index_u32(~abs(~u_input.b.x), 13u)];
    let var_3 = ~(vec3<i32>(abs(-2147483647i), 1i ^ arg_1.b.b.x, -(i32(-1i) * -34128i)) << (vec3<u32>(select(reverseBits(82830u), u_input.b.x, all(arg_1.d.ww)), _wgslsmith_add_u32(44045u ^ global1.x, _wgslsmith_mod_u32(var_2.c, 11185u)), _wgslsmith_clamp_u32(0u, func_1().c, 0u)) % vec3<u32>(32u)));
    let var_4 = arg_1.d.xyy;
    return _wgslsmith_dot_vec4_u32(~max(var_0, var_0), ~var_0) << (4294967295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], true), vec4<bool>(true, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(98490u, 15u)], false, true)), !vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 15u)], global0[_wgslsmith_index_u32(62231u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(13993u, 15u)]))), (~global1.x >> (global1.x % 32u)) > ~global1.x, global0[_wgslsmith_index_u32(func_4(select(true, !global0[_wgslsmith_index_u32(8040u, 15u)], any(vec2<bool>(true, global0[_wgslsmith_index_u32(35463u, 15u)]))), func_1()), 15u)], global0[_wgslsmith_index_u32(1u, 15u)]);
    global0 = array<bool, 15>();
    var var_1 = _wgslsmith_mult_vec2_i32(func_2(u_input.a.x, vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), min(19565i, -1i), -2147483647i, -1i) << (~vec4<u32>(global1.x, 4294967295u, global1.x, 1u) % vec4<u32>(32u)), _wgslsmith_mod_i32(u_input.a.x, select(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x < 1i))).b.b, vec2<i32>(~(-firstLeadingBit(-31343i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -23190i, 1i), vec3<i32>(u_input.a.x | u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)))));
    var var_2 = global3[_wgslsmith_index_u32(~global1.x, 19u)];
    var var_3 = 42889u;
    let x = u_input.a;
    s_output = StorageBuffer(1i, 1076f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.d * _wgslsmith_f_op_vec2_f32(-var_2.d)))));
}

