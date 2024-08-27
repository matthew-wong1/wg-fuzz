struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(45305i, 1i);

var<private> global1: array<i32, 14>;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_1(0u, 48850u, vec4<i32>(-16937i, 1i, 35282i, 1i), 0i), Struct_1(0u, 4294967295u, vec4<i32>(1562i, 47287i, -16744i, 0i), 2147483647i), Struct_1(4294967295u, 35967u, vec4<i32>(-70075i, 26295i, 33842i, -18406i), -1i), vec4<f32>(-2059f, -1000f, 225f, 712f), false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> u32 {
    global1 = array<i32, 14>();
    global0 = u_input.d.yx;
    let var_0 = global2[_wgslsmith_index_u32(arg_0, 1u)];
    let var_1 = select(arg_2, vec4<bool>(false, arg_2.x, any(!select(arg_2, vec4<bool>(arg_2.x, var_0.e, true, true), arg_2)), var_0.e | var_0.e), select(arg_2, !vec4<bool>(select(true, var_0.e, false), any(vec4<bool>(arg_2.x, false, false, true)), false, var_0.e & arg_2.x), !(!any(arg_2))));
    var var_2 = Struct_5(Struct_2(Struct_1(0u, _wgslsmith_div_u32(40133u, _wgslsmith_sub_u32(arg_0, var_0.a.b)), var_0.a.c, global0.x)), Struct_3(~_wgslsmith_add_i32(global0.x, -1i), Struct_2(var_0.a)));
    return firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(~(~var_0.b.a), 16229u), reverseBits(_wgslsmith_add_u32(~49851u, 1u))));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_4(Struct_1(max(min(u_input.b, reverseBits(u_input.b)), countOneBits(~1u)), (func_3(0u, vec4<f32>(-126f, -2262f, -159f, -388f), vec4<bool>(true, true, true, false)) ^ ~u_input.b) >> (1u % 32u), ~_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, 4549i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], 23373i, u_input.c, -2147483647i)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, 1i)), u_input.d.xz)), Struct_1(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.b, 23353u), vec3<u32>(u_input.b, 4294967295u, 18982u), vec3<bool>(true, false, true)), vec3<u32>(u_input.b, 4294967295u, u_input.b)), 44814u, -(abs(vec4<i32>(global0.x, -2147483647i, 1i, u_input.a)) << (firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 4294967295u) ^ (vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, 1u) >> (vec2<u32>(28208u, 1u) % vec2<u32>(32u))), 14u)]), Struct_1(~u_input.b, u_input.b, -_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -7267i, global0.x, global1[_wgslsmith_index_u32(70918u, 14u)]) | vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], 30105i, u_input.d.x, global0.x), vec4<i32>(u_input.c, -1455i, u_input.d.x, -43487i) >> (vec4<u32>(0u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), -2147483647i ^ _wgslsmith_dot_vec2_i32(u_input.d.zx ^ u_input.d.xy, u_input.d.xy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -876f, -1451f, 1746f)))))), any(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)))));
    global1 = array<i32, 14>();
    let var_1 = true;
    global0 = var_0.a.c.wx;
    global2 = array<Struct_4, 1>();
    return _wgslsmith_mod_vec2_u32(~vec2<u32>(~8009u, 1u), vec2<u32>(u_input.b, _wgslsmith_clamp_u32(~u_input.b, 15445u, 0u))) | (~(~(~vec2<u32>(u_input.b, var_0.c.a))) | vec2<u32>(var_0.a.b, u_input.b));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> i32 {
    global0 = vec2<i32>(global0.x, -_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-1i, u_input.d.x, 0i, global0.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(28686i, global0.x, -1989i, u_input.a), vec4<i32>(-2147483647i, u_input.c, 2147483647i, global0.x)), reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(19569u, 14u)], 0i, 2147483647i, 5914i)))));
    var var_0 = select(-(~(~vec4<i32>(2147483647i, global0.x, -53291i, global1[_wgslsmith_index_u32(u_input.b, 14u)]))) >> (vec4<u32>(arg_1.x, 4294967295u, 1u, 3680u) % vec4<u32>(32u)), vec4<i32>(~_wgslsmith_sub_i32(-48796i, global0.x), 0i, global0.x, i32(-1i) * -(i32(-1i) * -1i)), true);
    var var_1 = select(!vec4<bool>(any(vec2<bool>(false, false)), (arg_0 <= 3518f) & any(vec3<bool>(false, false, true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))), true), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global2 = array<Struct_4, 1>();
    let var_2 = true;
    return 13500i;
}

fn func_1(arg_0: bool) -> vec4<i32> {
    global0 = vec2<i32>(1i, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1109f)) - -1337f), select(func_2(), ~vec2<u32>(u_input.b, u_input.b), true))) ^ firstLeadingBit(u_input.d.xy);
    global2 = array<Struct_4, 1>();
    var var_0 = Struct_2(Struct_1(2815u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, 9870u), ~vec2<u32>(u_input.b, 1u)), vec2<u32>(4294967295u, _wgslsmith_sub_u32(1988u, 1u))), vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(44037u, 14u)], 22058i, abs(u_input.a)), u_input.d.x));
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_sub_u32(var_0.a.b, 5826u)), u_input.b | (_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, var_0.a.b), countOneBits(0u)) >> (var_0.a.a % 32u)), vec4<i32>(~(-(global1[_wgslsmith_index_u32(var_0.a.a, 14u)] & global0.x)), ~(i32(-1i) * -25740i), _wgslsmith_clamp_i32(u_input.d.x, -3582i, -u_input.d.x) & ~u_input.a, -2147483647i), u_input.d.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(410f * 651f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1149f + 1000f) * 2374f))));
    return min(vec4<i32>(abs(func_4(_wgslsmith_f_op_f32(round(730f)), ~vec2<u32>(var_0.a.a, 0u))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, -var_0.a.d), countOneBits(min(-1i, -14i))), ~firstTrailingBit(global0.x) ^ _wgslsmith_dot_vec2_i32(var_1.c.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.d, var_1.c.x), vec2<i32>(-2147483647i, -1i))), -var_0.a.d), vec4<i32>(-1i) * -(~(var_0.a.c << (vec4<u32>(48153u, 29265u, var_0.a.a, 0u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_clamp_u32(87375u, 87726u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 50279u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 25751u, 17636u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 0u, 1863u)))), ~(~u_input.b << (~u_input.b % 32u)), ~func_1(any(vec2<bool>(false, true)) | true), 14408i);
    var var_1 = global2[_wgslsmith_index_u32(~(34250u << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.b, 65857u), vec2<u32>(u_input.b, var_0.a)), ~vec2<u32>(var_0.a, 1508u)) % 32u)) >> (4294967295u % 32u), 1u)];
    global1 = array<i32, 14>();
    let var_2 = vec2<bool>(~reverseBits(47063u) <= u_input.b, var_1.e);
    let var_3 = var_1.e;
    var var_4 = _wgslsmith_f_op_f32(step(var_1.d.x, var_1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-3769i));
}

