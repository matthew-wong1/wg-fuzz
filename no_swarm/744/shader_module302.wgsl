struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(-1000f)), Struct_2(Struct_1(919f)), Struct_2(Struct_1(-1818f)), Struct_2(Struct_1(-1240f)), Struct_2(Struct_1(-2388f)), Struct_2(Struct_1(477f)), Struct_2(Struct_1(1016f)), Struct_2(Struct_1(1746f)), Struct_2(Struct_1(-1208f)), Struct_2(Struct_1(-1643f)));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1574f), Struct_1(1020f), Struct_1(1084f), Struct_1(537f), Struct_1(-1000f), Struct_1(-1844f), Struct_1(-238f), Struct_1(520f), Struct_1(-391f), Struct_1(931f), Struct_1(1000f), Struct_1(715f), Struct_1(-1689f), Struct_1(-183f), Struct_1(-1137f), Struct_1(-631f), Struct_1(-838f), Struct_1(-316f), Struct_1(1072f), Struct_1(-289f), Struct_1(-267f), Struct_1(809f), Struct_1(-812f), Struct_1(701f), Struct_1(-694f), Struct_1(462f), Struct_1(1488f), Struct_1(289f));

var<private> global2: Struct_3;

var<private> global3: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(1219f, 178f, -1445f, 752f), vec4<f32>(-2011f, -961f, 669f, 1421f));

var<private> global4: array<bool, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 10u)];
    var var_1 = vec2<f32>(1834f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(343f * _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.a)))));
    global1 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a.a, -252f, true)), _wgslsmith_f_op_f32(505f * 701f), _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, -1063f, var_0.a.a)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a, 1057f, 727f), vec3<f32>(var_0.a.a, arg_3.a.a, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_0.a.a, -998f), vec3<f32>(arg_2.a, 196f, -921f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -796f, var_1.x)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1898f));
    return u_input.a.wxz;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    global2 = Struct_3(u_input.d.xxx, !global2.b, _wgslsmith_sub_u32(~0u, 45468u), arg_0);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(118f, -1000f), arg_1.a, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1483f)) - arg_1.a))));
    let var_1 = Struct_3(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 22786u, 9758u), vec3<u32>(arg_0.x, 11751u, u_input.c.x)) | func_3(u_input.b >> (0u % 32u), vec2<bool>(false, global2.b.x), arg_1, global0[_wgslsmith_index_u32(4294967295u, 10u)])), !(!global2.b), max(~4294967295u, 104378u), min(~_wgslsmith_mult_vec3_u32(func_3(u_input.b, vec2<bool>(false, false), global1[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(16762u, 10u)]), vec3<u32>(1u, 29264u, global2.a.x)), u_input.c.wzx));
    global0 = array<Struct_2, 10>();
    let var_2 = var_1.b.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1927f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a)))))));
}

fn func_1(arg_0: i32) -> vec2<u32> {
    let var_0 = -393f;
    global4 = array<bool, 22>();
    global4 = array<bool, 22>();
    global1 = array<Struct_1, 28>();
    var var_1 = func_2(u_input.a.xxz, global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_div_u32(global2.c, 1u))), 28u)]);
    return _wgslsmith_div_vec2_u32(func_3(2147483647i, !global2.b.xz, Struct_1(_wgslsmith_f_op_f32(-683f + _wgslsmith_f_op_f32(f32(-1f) * -448f))), Struct_2(func_2(vec3<u32>(global2.d.x, 18011u, u_input.a.x), var_1.a).a)).zz, countOneBits(u_input.d.wz | global2.d.xy));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 22>();
    let var_0 = func_1(24066i);
    global0 = array<Struct_2, 10>();
    let var_1 = vec3<f32>(887f, 780f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(689f, -569f)))))));
    global2 = Struct_3(~vec3<u32>(~(1u << (var_0.x % 32u)), 91316u, ~0u), global2.b, ~_wgslsmith_clamp_u32(1u | ~global2.a.x, _wgslsmith_mult_u32(45961u, 70411u), var_0.x), vec3<u32>(~(~(~1u)), _wgslsmith_mod_u32(u_input.c.x, 10407u) & ~_wgslsmith_mult_u32(u_input.d.x, 1u), ~(~_wgslsmith_add_u32(global2.c, var_0.x))));
    let var_2 = Struct_3(u_input.d.wzz, !(!global2.b), var_0.x, u_input.c.xyw);
    var var_3 = var_1;
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~min(48342u, var_2.d.x), global2.a.x, _wgslsmith_sub_u32(reverseBits(4294967295u), global2.a.x), global2.a.x ^ var_0.x), vec4<u32>(_wgslsmith_mult_u32(23139u, 0u) ^ select(59277u, 447u, true), firstTrailingBit(u_input.a.x), var_0.x, var_0.x)), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, firstTrailingBit(-(~min(vec4<i32>(u_input.b, -42715i, u_input.b, 62402i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))), firstTrailingBit(~(~30671u)) >> (var_2.a.x % 32u), u_input.c.x);
}

