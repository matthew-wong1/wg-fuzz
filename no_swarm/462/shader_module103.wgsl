struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(2147483647i, 13410i, -11711i, -31936i, 2147483647i, 97005i, 20643i, -29044i, 800i, -1i, 47425i, 11384i, 0i, 0i, 1i, 2147483647i, 2147483647i, 2147483647i, i32(-2147483648));

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(2224f, -597f, 22433u, 1248f, false), 2147483647i, 28257i), Struct_2(Struct_1(-975f, 377f, 33750u, -713f, true), i32(-2147483648), 1524i), Struct_2(Struct_1(402f, 841f, 11919u, -516f, false), -1i, 1i), Struct_2(Struct_1(1378f, -1044f, 4294967295u, -849f, false), 1i, -8818i), Struct_2(Struct_1(-2062f, -1101f, 51195u, -566f, true), -38891i, 1i), Struct_2(Struct_1(-735f, 652f, 51729u, -1000f, true), 1i, 35746i), Struct_2(Struct_1(483f, 1573f, 79071u, 1000f, true), -42311i, 8879i), Struct_2(Struct_1(-287f, 135f, 25317u, -197f, true), 2147483647i, 33709i), Struct_2(Struct_1(362f, -1385f, 56196u, 796f, false), i32(-2147483648), 22109i), Struct_2(Struct_1(652f, -537f, 0u, -2002f, false), 0i, -57464i), Struct_2(Struct_1(1010f, -678f, 4294967295u, -1127f, true), -1i, 2147483647i), Struct_2(Struct_1(998f, -951f, 4294967295u, -336f, true), 31938i, 2147483647i), Struct_2(Struct_1(-1213f, 912f, 17254u, 218f, true), -42045i, 24100i), Struct_2(Struct_1(980f, -609f, 44514u, -394f, true), 2147483647i, -36921i), Struct_2(Struct_1(368f, 405f, 38127u, -871f, false), 30948i, 23089i), Struct_2(Struct_1(-953f, 790f, 0u, -110f, true), -1i, -1943i), Struct_2(Struct_1(-1431f, -374f, 26420u, 1640f, true), i32(-2147483648), 2997i), Struct_2(Struct_1(-154f, -559f, 16435u, -1026f, false), 1i, -13122i));

var<private> global2: array<u32, 11> = array<u32, 11>(1u, 4294967295u, 4294967295u, 0u, 48760u, 48516u, 144882u, 1u, 1u, 14720u, 13160u);

var<private> global3: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = 70326u;
    return 613f;
}

fn func_3() -> bool {
    let var_0 = Struct_5(((~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 0u) & ~vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 6844u)) >> (~abs(vec3<u32>(0u, 18345u, 1u)) % vec3<u32>(32u))) ^ ~vec3<u32>(23297u ^ global2[_wgslsmith_index_u32(4294967295u, 11u)], select(0u, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], true), ~u_input.b.x));
    let var_1 = 74854u;
    global0 = array<i32, 19>();
    global1 = array<Struct_2, 18>();
    global2 = array<u32, 11>();
    return all(vec4<bool>(false, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true)), all(vec4<bool>(true, true, true, true)), false));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1398f))));
    var var_1 = Struct_5(~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 26404u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)]), vec3<u32>(u_input.b.x, 4294967295u, 1u))) ^ vec3<u32>(17587u, ~abs(1u), ~(~3385u)));
    var var_2 = Struct_2(Struct_1(-1259f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-904f * 1729f)), -1445f)), ~countOneBits(_wgslsmith_mod_u32(31859u, var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 379f))), func_3()), -(firstTrailingBit(abs(0i)) | 11880i), _wgslsmith_dot_vec3_i32(-(~reverseBits(vec3<i32>(1i, u_input.a, -51095i))), -(vec3<i32>(-1i, global0[_wgslsmith_index_u32(1u, 19u)], -3475i) | (vec3<i32>(1i, global0[_wgslsmith_index_u32(37363u, 19u)], 1i) << (vec3<u32>(23745u, 1u, global2[_wgslsmith_index_u32(1861u, 11u)]) % vec3<u32>(32u))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.d, var_2.a.b, -268f, 1311f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-290f, var_2.a.d, var_2.a.a, var_2.a.b)), var_2.b < global0[_wgslsmith_index_u32(var_2.a.c, 19u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-254f, var_2.a.b, var_2.a.b, -561f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-112f, 1000f, var_2.a.a, -132f)))))));
    var var_4 = Struct_4(any(vec2<bool>(false, all(vec2<bool>(var_2.a.e, true)))) || true);
    return Struct_3(var_2.a, Struct_1(-364f, var_2.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(~var_1.a.x, 11u)], u_input.b.x, ~0u, u_input.b.x), firstTrailingBit(vec4<u32>(4294967295u, 113978u, 9467u, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(min(var_2.a.b, var_2.a.b))))), !var_4.a), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-425f)) * _wgslsmith_f_op_f32(func_1(vec3<i32>(1i, u_input.a, 1i)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -1i, global0[_wgslsmith_index_u32(0u, 19u)]))) * -1105f)) * 1878f));
    let var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 11u)], 19u)], 1i), 0i), 1166f, reverseBits(reverseBits(abs(~vec4<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(1u, 11u)], 7664u)))));
}

