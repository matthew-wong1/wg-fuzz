struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec4<f32>(-714f, -627f, 989f, 742f), -78705i), Struct_3(vec4<f32>(-1227f, -136f, 265f, -216f), -1i), Struct_3(vec4<f32>(-1055f, -1000f, -185f, -1186f), 41699i), Struct_3(vec4<f32>(-1259f, -488f, 1204f, -577f), 1i), Struct_3(vec4<f32>(-521f, 1000f, 135f, 905f), 21391i), Struct_3(vec4<f32>(-1552f, 613f, -343f, -213f), -28477i), Struct_3(vec4<f32>(-436f, -261f, -903f, -1275f), 12301i), Struct_3(vec4<f32>(-656f, -1000f, 286f, 1184f), -1i), Struct_3(vec4<f32>(1287f, -715f, -1305f, -862f), 0i), Struct_3(vec4<f32>(112f, -910f, -779f, -946f), -78053i), Struct_3(vec4<f32>(-174f, 135f, -836f, 1000f), 3637i), Struct_3(vec4<f32>(-2162f, 367f, 2302f, 590f), -1i), Struct_3(vec4<f32>(-1076f, -273f, -851f, -1675f), -32370i), Struct_3(vec4<f32>(-1999f, -1000f, 391f, 1517f), 1i), Struct_3(vec4<f32>(-352f, 542f, 1456f, 1232f), 1i), Struct_3(vec4<f32>(-896f, -2194f, 1000f, 341f), 65289i), Struct_3(vec4<f32>(-359f, 1000f, -478f, -282f), -18549i), Struct_3(vec4<f32>(-892f, 1849f, -2621f, 1625f), -55655i), Struct_3(vec4<f32>(-244f, 177f, -1179f, -2788f), 2147483647i), Struct_3(vec4<f32>(-307f, 604f, 555f, 648f), i32(-2147483648)), Struct_3(vec4<f32>(-410f, -1647f, 634f, -268f), 2147483647i), Struct_3(vec4<f32>(376f, -978f, 1618f, 1209f), 69004i), Struct_3(vec4<f32>(875f, 860f, 150f, 1368f), -23248i), Struct_3(vec4<f32>(-573f, -1000f, -436f, -899f), 10350i), Struct_3(vec4<f32>(-593f, 386f, -879f, -309f), 42229i), Struct_3(vec4<f32>(-692f, 1567f, -204f, 1348f), i32(-2147483648)), Struct_3(vec4<f32>(448f, 286f, -450f, 207f), 1i), Struct_3(vec4<f32>(-1395f, 1000f, -880f, -835f), -21638i), Struct_3(vec4<f32>(-2016f, -1000f, -341f, -755f), i32(-2147483648)), Struct_3(vec4<f32>(951f, -492f, 1944f, -155f), i32(-2147483648)), Struct_3(vec4<f32>(779f, -630f, -291f, 705f), -14273i));

var<private> global1: array<i32, 9> = array<i32, 9>(-23068i, 29522i, 30283i, 0i, -1i, 0i, 1011i, -21772i, -76897i);

var<private> global2: array<Struct_4, 4>;

var<private> global3: u32;

var<private> global4: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = ~(select(abs(vec2<u32>(64398u, u_input.d)) ^ u_input.b.yz, u_input.b.yx, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)) | vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, 7223u, u_input.b.x)), ~vec3<u32>(4294967295u, u_input.d, 40590u)), ~_wgslsmith_mod_u32(u_input.e.x, 16887u)));
    global2 = array<Struct_4, 4>();
    var_0 = vec2<u32>(_wgslsmith_div_u32(~(~u_input.d), (~u_input.d << (4294967295u % 32u)) | ~u_input.e.x), ~23625u);
    var var_1 = Struct_2(Struct_1(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), _wgslsmith_mod_vec2_i32(u_input.c.yy, (u_input.a.wz ^ vec2<i32>(global1[_wgslsmith_index_u32(81617u, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)])) ^ u_input.c.zw)), all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), true)), global4.a.yy, 1387f);
    var var_2 = vec3<u32>(59113u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yy & u_input.b.zy, firstLeadingBit(u_input.e.xx)), ~u_input.e.zy), _wgslsmith_sub_u32(u_input.e.x, select(9873u, 0u, false) | (1u >> (var_0.x % 32u)))) >> (vec3<u32>(0u, ~3880u, 1u) % vec3<u32>(32u));
    return _wgslsmith_dot_vec4_u32((_wgslsmith_mod_vec4_u32(u_input.e << (vec4<u32>(1u, 4294967295u, 0u, var_0.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, var_2.x, 73126u, 71762u)) << (abs(~vec4<u32>(var_2.x, var_0.x, 0u, 4294967295u)) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u) | vec4<u32>(24538u, 4294967295u, 4294967295u, 0u), u_input.e), abs(abs(vec4<u32>(var_0.x, ~43186u, ~var_0.x, 30952u))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> i32 {
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    global4 = global0[_wgslsmith_index_u32(~min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 4294967295u), u_input.e) & func_3(global1[_wgslsmith_index_u32(arg_1.x, 9u)]), 1u), ~_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.e.xx) >> (35269u % 32u)), 31u)];
    let var_0 = arg_1.zzz & vec3<u32>(_wgslsmith_mult_u32(min(arg_0, 4294967295u) ^ ~26995u, (4294967295u >> (arg_1.x % 32u)) << (arg_1.x % 32u)), (u_input.d >> (~12266u % 32u)) >> (~abs(4294967295u) % 32u), 0u);
    return 2147483647i;
}

fn func_1(arg_0: i32, arg_1: u32) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1263f, _wgslsmith_f_op_f32(f32(-1f) * -440f)))) * global4.a.x), global4.a.x, global4.a.x);
    global2 = array<Struct_4, 4>();
    var var_1 = countOneBits(-2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(global4.a.xyz));
    var var_3 = 21685i ^ arg_0;
    return ~func_2(abs(u_input.b.x), vec4<u32>(1u, 4294967295u, _wgslsmith_mod_u32(u_input.d, u_input.d), abs(arg_1)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global4.a.x)), _wgslsmith_f_op_f32(global4.a.x - global4.a.x))), _wgslsmith_div_f32(global4.a.x, global4.a.x) > _wgslsmith_f_op_f32(round(-1237f))) & _wgslsmith_sub_i32(-8166i, max(_wgslsmith_add_i32(-u_input.a.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(16248u, 9u)], 1i)), ~(~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~reverseBits(-1i), _wgslsmith_dot_vec2_i32(u_input.c.yw, reverseBits(~u_input.a.xw)), -56160i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u), vec4<u32>(u_input.e.x, u_input.b.x, 495u, 0u) >> (u_input.e % vec4<u32>(32u))) % 32u)) & _wgslsmith_mult_vec3_i32(~vec3<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c.x), vec3<i32>(abs(_wgslsmith_sub_i32(u_input.c.x, 1i)), -664i, ~(~global4.b)));
    let var_1 = false;
    var var_2 = u_input.a.x;
    var_0 = _wgslsmith_div_vec3_i32(u_input.c.zwz & vec3<i32>(abs(-var_0.x), global4.b >> (_wgslsmith_sub_u32(0u, 0u) % 32u), func_1(15691i, u_input.e.x)), u_input.a.yxy);
    var var_3 = ~global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.e.x | u_input.b.x) >> (68725u % 32u), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(1i, var_0.x) ^ abs(0i), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.d, 27380u, ~42445u), _wgslsmith_dot_vec3_u32(u_input.e.zyw << (u_input.b % vec3<u32>(32u)), u_input.e.zzw) << (0u % 32u), u_input.e.x), ~1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(619f, global4.a.x))), _wgslsmith_f_op_f32(555f + _wgslsmith_f_op_f32(step(-449f, global4.a.x))), _wgslsmith_f_op_f32(744f + global4.a.x))), vec2<i32>(26298i, min(var_0.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, reverseBits(4056u)), 9u)])));
}

