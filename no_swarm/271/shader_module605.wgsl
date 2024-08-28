struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(48806u, 4294967295u, 18231u, 1u, 4463u, 17935u, 71999u, 4294967295u);

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(54542i, 39874i), vec2<bool>(true, false), 1151f, -832f), Struct_1(vec2<i32>(27154i, -24197i), vec2<bool>(false, true), 118f, -1900f), Struct_1(vec2<i32>(-68000i, 0i), vec2<bool>(true, false), -522f, -177f), Struct_1(vec2<i32>(-23927i, 1i), vec2<bool>(true, false), -1679f, -764f), Struct_1(vec2<i32>(1i, 2147483647i), vec2<bool>(false, true), -333f, 1469f), Struct_1(vec2<i32>(4400i, -47118i), vec2<bool>(true, true), -926f, -569f), Struct_1(vec2<i32>(-10697i, 0i), vec2<bool>(true, false), -1337f, 1000f), Struct_1(vec2<i32>(10036i, 40280i), vec2<bool>(false, true), 160f, -1130f), Struct_1(vec2<i32>(24504i, 32616i), vec2<bool>(true, true), -647f, 1358f), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, true), -938f, -106f), Struct_1(vec2<i32>(-1i, -46463i), vec2<bool>(false, false), 1000f, 1000f), Struct_1(vec2<i32>(54411i, 0i), vec2<bool>(false, false), 1797f, 1463f), Struct_1(vec2<i32>(18181i, 41057i), vec2<bool>(true, true), -1574f, -1192f), Struct_1(vec2<i32>(1i, -11610i), vec2<bool>(true, true), 2187f, -209f), Struct_1(vec2<i32>(39109i, 37720i), vec2<bool>(true, false), -363f, 277f), Struct_1(vec2<i32>(-17166i, 10809i), vec2<bool>(false, true), -945f, 819f), Struct_1(vec2<i32>(0i, 1i), vec2<bool>(true, true), -196f, -1171f), Struct_1(vec2<i32>(i32(-2147483648), 20436i), vec2<bool>(true, true), -374f, -1736f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, true), 2007f, -1000f), Struct_1(vec2<i32>(-39248i, -1i), vec2<bool>(true, true), 392f, -1485f), Struct_1(vec2<i32>(1i, 2147483647i), vec2<bool>(false, false), 835f, 417f), Struct_1(vec2<i32>(2147483647i, 1i), vec2<bool>(false, false), 1380f, 1000f), Struct_1(vec2<i32>(-13957i, i32(-2147483648)), vec2<bool>(true, true), 584f, -362f), Struct_1(vec2<i32>(i32(-2147483648), 30453i), vec2<bool>(true, true), -1934f, -1522f), Struct_1(vec2<i32>(2147483647i, -7600i), vec2<bool>(true, true), 1000f, -1219f), Struct_1(vec2<i32>(7922i, 2490i), vec2<bool>(true, true), -1490f, 1045f), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true), 1219f, -229f));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<bool>(true, true), 729f, -1445f), Struct_1(vec2<i32>(1157i, 11907i), vec2<bool>(true, true), -1000f, 1056f), Struct_1(vec2<i32>(318i, -6001i), vec2<bool>(true, true), 1011f, -203f), Struct_1(vec2<i32>(-19401i, 1740i), vec2<bool>(false, true), 2210f, -556f), Struct_1(vec2<i32>(i32(-2147483648), 82348i), vec2<bool>(true, false), 861f, -143f), Struct_1(vec2<i32>(-1i, -42213i), vec2<bool>(false, true), -652f, -1572f), Struct_1(vec2<i32>(54784i, -1i), vec2<bool>(false, true), 230f, -517f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(true, false), 852f, 407f), Struct_1(vec2<i32>(-1i, -2141i), vec2<bool>(false, false), 1228f, -1132f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_div_f32(898f, 669f);
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0) - _wgslsmith_f_op_f32(step(-1299f, var_0)));
    global0 = array<u32, 8>();
    var var_3 = vec2<u32>(0u, 4222u);
    return -4779i;
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(0i);
    return min(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.e, 8u)], 0u, u_input.e), select(vec3<u32>(u_input.e, u_input.a, global0[_wgslsmith_index_u32(0u, 8u)]), vec3<u32>(50604u, 0u, 0u), true))), vec3<u32>(~u_input.e >> (1u % 32u), ~(~84535u), 49221u) >> (~countOneBits(~vec3<u32>(23028u, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.e, 8u)])) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global1 = array<Struct_1, 27>();
    var var_0 = Struct_2(-27947i);
    var var_1 = Struct_1(~(vec2<i32>(-1i) * -(arg_0.wy << (vec2<u32>(1u, u_input.e) % vec2<u32>(32u)))), select(vec2<bool>(false, false), vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1281f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(2158f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(323f)), _wgslsmith_f_op_f32(-820f * 2295f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1973f), _wgslsmith_f_op_f32(194f * 467f))))));
    let var_2 = func_3();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(-var_1.c)));
    return var_1.d;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global1 = array<Struct_1, 27>();
    global2 = array<Struct_1, 9>();
    var var_0 = arg_2.b.x;
    var var_1 = select(select(select(vec3<bool>(arg_2.b.x, true, all(vec4<bool>(arg_2.b.x, false, arg_2.b.x, false))), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(arg_2.b.x, !any(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -1149f)) <= 281f), select(select(!vec3<bool>(arg_2.b.x, arg_2.b.x, true), vec3<bool>(false, arg_2.b.x, true), false), vec3<bool>(!arg_2.b.x, any(!vec4<bool>(arg_2.b.x, true, true, true)), !arg_2.b.x & true), arg_2.b.x), true);
    var var_2 = select(arg_2.b, !var_1.xz, all(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, var_1.x, true), vec3<bool>(true, var_1.x, var_1.x))) & (any(arg_2.b) && var_1.x));
    return global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)] ^ ~(~0u), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(vec2<i32>(i32(-1i) * -3474i, (-14546i >> (u_input.d % 32u)) | -2388i), vec2<i32>(2147483647i, func_1(1u)), !(~22548u >= u_input.b.x));
    var var_1 = 297f;
    global2 = array<Struct_1, 9>();
    global0 = array<u32, 8>();
    var var_2 = func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_i32(-vec4<i32>(-79343i, -2147483647i, var_0.x, 1i), vec4<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_clamp_i32(var_0.x, 2147483647i, 4700i), reverseBits(var_0.x), ~0i)))), _wgslsmith_dot_vec2_i32(abs(var_0) | select(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_0.x), var_0), vec2<i32>(var_0.x, var_0.x), vec2<bool>(true, true)), ~vec2<i32>(_wgslsmith_add_i32(1i, var_0.x), countOneBits(-2147483647i))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 8u)] | _wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 8u)], u_input.b.x), countOneBits(u_input.e & u_input.b.x)) ^ 18447u, 9u)], Struct_2((var_0.x ^ -12879i) & 1i));
    var var_3 = var_2.b;
    var_2 = func_4(1427f, var_0.x, Struct_1(~firstTrailingBit(vec2<i32>(var_2.a.x, var_2.a.x)), var_2.b, var_2.d, _wgslsmith_f_op_f32(var_2.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1629f + -475f)))), Struct_2(-(~_wgslsmith_sub_i32(var_2.a.x, var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(78490u) >> (1u % 32u), 11550u), 8u)], countOneBits(u_input.d | u_input.c), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(53059u, 8u)], global0[_wgslsmith_index_u32(32557u, 8u)], u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 8u)], 8u)])), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a, 4294967295u) ^ vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35676u, 8u)], 8u)], 8u)], 39957u, 47348u)), 56760u, global0[_wgslsmith_index_u32(~(~u_input.c), 8u)]), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~4294967295u, 8u)] & u_input.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(15134u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], 3505u), vec3<u32>(u_input.a, 4294967295u, 67507u)), u_input.c))));
}

