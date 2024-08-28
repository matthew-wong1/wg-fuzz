struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(61221u, 19154u), vec2<u32>(3424u, 1u), vec2<u32>(16842u, 29337u), vec2<u32>(1u, 0u), vec2<u32>(475u, 44037u), vec2<u32>(15640u, 1787u));

var<private> global1: array<i32, 10> = array<i32, 10>(-1i, 0i, 2147483647i, 39832i, -10382i, 1i, -63887i, -47958i, -5068i, 1841i);

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global3: vec4<f32> = vec4<f32>(-1000f, 722f, -1219f, 1142f);

var<private> global4: array<u32, 21>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.c << ((0u & ~global4[_wgslsmith_index_u32(9267u, 21u)]) % 32u);
    var var_1 = Struct_4(arg_0, !select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, true)), true, u_input.c > 4294967295u), !any(vec3<bool>(false, true, true))));
    global1 = array<i32, 10>();
    let var_2 = Struct_3(u_input.a.x, Struct_2(Struct_1(-vec4<i32>(-1i, var_1.a.a.x, -1i, -24712i), global3.x), var_1.a, abs(17681u)), -166f);
    let var_3 = var_2.b;
    return ~abs(reverseBits(~21480u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_4 {
    global4 = array<u32, 21>();
    global4 = array<u32, 21>();
    var var_0 = Struct_3(func_3(Struct_1(vec4<i32>(-24475i, u_input.b.x, 0i, -u_input.b.x), -332f)), Struct_2(Struct_1(~min(vec4<i32>(u_input.b.x, u_input.b.x, -53686i, -33010i), vec4<i32>(11513i, u_input.b.x, -2147483647i, global1[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -884f))), Struct_1(select(countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(39823u, 10u)], global1[_wgslsmith_index_u32(30713u, 10u)], -10777i, u_input.b.x)), vec4<i32>(2147483647i, -51426i, -2147483647i, u_input.b.x) << (vec4<u32>(arg_0.x, arg_0.x, 33040u, u_input.c) % vec4<u32>(32u)), !arg_1.x), _wgslsmith_f_op_f32(-global3.x)), 0u), global3.x);
    var var_1 = Struct_3(~_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 56744u, global4[_wgslsmith_index_u32(4294967295u, 21u)], arg_0.x), vec4<u32>(arg_0.x, 25791u, 1u, var_0.a))), u_input.a << (~vec4<u32>(global4[_wgslsmith_index_u32(var_0.b.c, 21u)], var_0.a, var_0.a, 10822u) % vec4<u32>(32u))), Struct_2(var_0.b.a, var_0.b.a, ~((arg_0.x >> (arg_0.x % 32u)) | select(arg_0.x, 4294967295u, true))), global3.x);
    var_1 = Struct_3(var_0.b.c, Struct_2(var_0.b.a, Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(8095i, 20025i, var_0.b.b.a.x, global1[_wgslsmith_index_u32(2074u, 10u)]), var_1.b.a.a, var_0.b.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 934f))), ~4294967295u), 528f);
    return Struct_4(var_0.b.b, select(!vec3<bool>(arg_1.x, arg_1.x, true), select(vec3<bool>(arg_1.x, true, true), !select(vec3<bool>(arg_1.x, false, false), vec3<bool>(false, true, true), vec3<bool>(arg_1.x, arg_1.x, true)), !vec3<bool>(true, arg_1.x, arg_1.x)), arg_1.x));
}

fn func_1() -> bool {
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    let var_0 = func_2(u_input.a.xz, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yyy, vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(65846u, 21u)], 21u)] >> (71982u % 32u), 1u << (1u % 32u), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 5749u))), ~u_input.a.xyy), 10u)]);
    var var_1 = Struct_2(var_0.a, Struct_1(vec4<i32>(~(var_0.a.a.x | -2147483647i), global1[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(70983u, 21u)] & u_input.a.x, 10u)], _wgslsmith_mod_i32(max(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 10u)], 17259i), _wgslsmith_dot_vec4_i32(var_0.a.a, var_0.a.a)), 22248i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, global3.x))))), 4294967295u);
    var var_2 = 1725f;
    return all(vec3<bool>(var_0.b.x, 641f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1585f) - var_1.b.b), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), vec3<bool>(true, global3.x <= 698f, false), true | select(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 21u)] <= 68265u, !(~u_input.a.x < firstTrailingBit(82748u)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false))))));
    let var_1 = abs(~u_input.b.zy);
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(750f * 581f), global3.x, _wgslsmith_div_f32(748f, -297f), _wgslsmith_f_op_f32(global3.x + global3.x)), vec4<f32>(_wgslsmith_f_op_f32(-global3.x), 328f, -440f, global3.x), select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(true, false, true, var_0.x), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-264f, global3.x, 1558f, global3.x), vec4<f32>(global3.x, -455f, global3.x, global3.x)) * vec4<f32>(-976f, 1364f, 342f, global3.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, -1555f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, -293f, global3.x, global3.x)))))));
    global3 = vec4<f32>(424f, _wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(-1000f + -1050f), _wgslsmith_f_op_f32(max(func_2(_wgslsmith_sub_vec2_u32(~vec2<u32>(82985u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(31035u, global4[_wgslsmith_index_u32(17279u, 21u)]))), vec2<bool>(select(false, var_0.x, false), false)).a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -129f)))))));
    var var_4 = vec2<u32>(4294967295u, ~_wgslsmith_clamp_u32(firstLeadingBit(55520u), _wgslsmith_dot_vec3_u32(vec3<u32>(3099u, u_input.c, 77036u), vec3<u32>(45721u, 4294967295u, u_input.c)), 4294967295u)) ^ _wgslsmith_mod_vec2_u32(firstTrailingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 45085u), vec2<u32>(34415u, u_input.c))), _wgslsmith_mod_vec2_u32(u_input.a.yx, ~max(vec2<u32>(u_input.a.x, 1u), vec2<u32>(1u, global4[_wgslsmith_index_u32(28747u, 21u)]))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-241f, -505f, 137f)), var_3.wyz), _wgslsmith_f_op_vec3_f32(-global3.wyy))));
    let var_6 = !vec4<bool>(true, any(func_2(global0[_wgslsmith_index_u32(var_4.x, 6u)], vec2<bool>(true, true)).b), true, var_0.x);
    let var_7 = func_2(vec2<u32>(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~global4[_wgslsmith_index_u32(u_input.c, 21u)], ~1u), 21u)], ~15277u), var_4.x), vec2<bool>(var_0.x, all(!func_2(global0[_wgslsmith_index_u32(var_4.x, 6u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]).b)));
    let x = u_input.a;
    s_output = StorageBuffer(-(reverseBits(vec2<i32>(var_7.a.a.x, -1i)) ^ vec2<i32>(_wgslsmith_sub_i32(var_1.x, u_input.b.x), i32(-1i) * -2147483647i)), _wgslsmith_div_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(~1u, 21u)], 30203u), 8763u));
}

