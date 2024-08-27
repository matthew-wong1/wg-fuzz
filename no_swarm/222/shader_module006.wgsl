struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(i32(-2147483648), 1i, 63262i, i32(-2147483648), -25141i, 5552i, -1i, 1i, 0i, 1i, 22334i, 0i, 49237i, 12293i, -1i, 45100i, 12955i, -1i, -37735i, i32(-2147483648), i32(-2147483648), 2147483647i, -18431i, 2147483647i, 20559i, 1986i, 0i, i32(-2147483648), i32(-2147483648), i32(-2147483648));

var<private> global1: Struct_5 = Struct_5(vec4<bool>(true, true, true, true), 602f, -363f, -571f, Struct_4(vec4<bool>(false, false, false, true)));

var<private> global2: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(1i, -1i), vec2<i32>(5163i, 0i), vec2<i32>(i32(-2147483648), -18612i), vec2<i32>(-11306i, -1i));

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(2167f), 15711u), Struct_2(Struct_1(1153f), 0u), Struct_2(Struct_1(196f), 2899u), Struct_2(Struct_1(1071f), 0u), Struct_2(Struct_1(-107f), 16420u), Struct_2(Struct_1(-728f), 11422u), Struct_2(Struct_1(1268f), 1u), Struct_2(Struct_1(-1644f), 0u), Struct_2(Struct_1(1106f), 0u), Struct_2(Struct_1(-734f), 78023u), Struct_2(Struct_1(1040f), 46545u), Struct_2(Struct_1(-308f), 54760u), Struct_2(Struct_1(-326f), 1u), Struct_2(Struct_1(-1091f), 0u), Struct_2(Struct_1(-1265f), 51941u), Struct_2(Struct_1(-138f), 1u), Struct_2(Struct_1(897f), 7371u), Struct_2(Struct_1(1267f), 1u), Struct_2(Struct_1(-146f), 41820u), Struct_2(Struct_1(866f), 0u), Struct_2(Struct_1(-457f), 1u), Struct_2(Struct_1(-1122f), 0u), Struct_2(Struct_1(-494f), 32783u), Struct_2(Struct_1(-867f), 45493u), Struct_2(Struct_1(-411f), 25590u), Struct_2(Struct_1(-311f), 0u), Struct_2(Struct_1(1000f), 12437u), Struct_2(Struct_1(676f), 23294u), Struct_2(Struct_1(-1045f), 71001u), Struct_2(Struct_1(-854f), 3022u), Struct_2(Struct_1(-680f), 4294967295u));

var<private> global4: array<u32, 32> = array<u32, 32>(109400u, 1u, 59866u, 1u, 4294967295u, 4294967295u, 4294967295u, 78722u, 0u, 26573u, 35185u, 1u, 21645u, 1u, 4294967295u, 4294967295u, 0u, 0u, 1u, 82217u, 67338u, 3143u, 1u, 71656u, 1u, 4294967295u, 4294967295u, 1u, 0u, 24677u, 1u, 34855u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5, arg_3: u32) -> vec4<u32> {
    let var_0 = 59548i << (_wgslsmith_sub_u32(114085u, _wgslsmith_div_u32(global4[_wgslsmith_index_u32(~arg_3, 32u)], max(~4294967295u, 68270u))) % 32u);
    var var_1 = arg_0;
    global2 = array<vec2<i32>, 4>();
    let var_2 = arg_2;
    let var_3 = vec2<i32>(-1i, select(_wgslsmith_sub_i32(arg_1 ^ 58863i, i32(-1i) * -1i), ~countOneBits(-61025i), false)) << ((vec2<u32>(~1u, min(~0u, firstTrailingBit(1u))) >> (select(u_input.b.wz, ~(~vec2<u32>(arg_3, 1u)), global1.a.ww) % vec2<u32>(32u))) % vec2<u32>(32u));
    return _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 18240u), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(80288u, 42318u, u_input.a, arg_3)), arg_2.e.a.x), ~vec4<u32>(32097u, arg_3, arg_3, 1u)), abs(~u_input.b)) ^ ~vec4<u32>(1u, select(u_input.a, 0u & u_input.c, true), ~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], _wgslsmith_mult_u32(~arg_3, 1u));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global1 = Struct_5(global1.a, _wgslsmith_f_op_f32(max(-1082f, arg_0)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 807f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -526f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(-arg_0)))), 221f)), global1.e);
    global4 = array<u32, 32>();
    global1 = Struct_5(select(global1.a, vec4<bool>(global1.a.x, false, false, all(global1.a.zww)), all(vec3<bool>(true, any(global1.a), !global1.e.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-global1.b)))) * 1394f), 870f, -1320f, global1.e);
    global2 = array<vec2<i32>, 4>();
    var var_0 = vec4<u32>(~(max(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(u_input.b.xzw, vec3<u32>(232u, u_input.c, global4[_wgslsmith_index_u32(0u, 32u)]))) << (global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(~u_input.b.x, 32u)], 32u)] % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~53257u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzw, u_input.b.wwx), 0u), u_input.b.x, 3524u << (_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(11909u, 32u)], 4294967295u), vec2<u32>(u_input.b.x, 149919u)) % 32u)), min(~u_input.b, func_3(Struct_1(358f), u_input.d.x ^ u_input.d.x, Struct_5(global1.e.a, arg_0, global1.b, global1.c, global1.e), global4[_wgslsmith_index_u32(~u_input.c, 32u)]))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 32u)], u_input.b.x);
    return abs(_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(-2147483647i), 38695i, u_input.d.x, ~(-1i) ^ (u_input.d.x | global0[_wgslsmith_index_u32(22019u, 30u)])), ~vec4<i32>(4987i, u_input.d.x, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], u_input.d.x) >> (min(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 24564u, 23513u), vec4<u32>(u_input.a, 1290u, global4[_wgslsmith_index_u32(19802u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18079u, 32u)], 32u)])), vec4<u32>(1u, global4[_wgslsmith_index_u32(50134u, 32u)], 1u, global4[_wgslsmith_index_u32(u_input.b.x, 32u)]) ^ vec4<u32>(14574u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], u_input.b.x)) % vec4<u32>(32u))));
}

fn func_1() -> vec4<i32> {
    global2 = array<vec2<i32>, 4>();
    var var_0 = vec4<u32>(select(~62343u, reverseBits(~(~1u)), global1.e.a.x), _wgslsmith_mult_u32(firstLeadingBit(16859u), u_input.a), _wgslsmith_dot_vec2_u32(u_input.b.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 32u)] >> (4294967295u % 32u), ~u_input.b.x), u_input.b.xz)), 16229u);
    var var_1 = 0u;
    let var_2 = !(!vec2<bool>(true, false && (global1.e.a.x && global1.a.x)));
    global0 = array<i32, 30>();
    return ~_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, u_input.d.x, _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d))), max(vec4<i32>(-u_input.d.x, abs(2147483647i), _wgslsmith_sub_i32(-1i, 0i), ~u_input.d.x), func_2(_wgslsmith_f_op_f32(min(108f, global1.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 4>();
    let var_0 = u_input.b;
    let var_1 = firstTrailingBit(func_1());
    global1 = Struct_5(vec4<bool>(true | (_wgslsmith_f_op_f32(sign(global1.d)) < global1.b), false, global1.a.x, global1.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(379f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global1.b)), _wgslsmith_f_op_f32(-575f - global1.d), true)))), -320f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(-global1.c)), -2328f, global1.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1268f, -405f))), global1.e);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1694f * _wgslsmith_f_op_f32(round(global1.b))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a - var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f))))));
    let var_4 = u_input.d;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(29633u, var_0);
}

