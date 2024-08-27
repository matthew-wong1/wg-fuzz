struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(19953u, 4294967295u, 44912u);

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(23696u, 0u), vec2<u32>(4294967295u, 37613u), vec2<u32>(30854u, 4294967295u), vec2<u32>(9978u, 1u), vec2<u32>(57850u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(39810u, 1u), vec2<u32>(56588u, 48255u), vec2<u32>(17194u, 44110u), vec2<u32>(5712u, 126119u), vec2<u32>(3570u, 4037u), vec2<u32>(4294967295u, 20570u), vec2<u32>(1u, 17762u), vec2<u32>(57573u, 4294967295u), vec2<u32>(80795u, 41456u), vec2<u32>(4294967295u, 1u), vec2<u32>(8109u, 1u), vec2<u32>(21900u, 45704u), vec2<u32>(10274u, 63959u), vec2<u32>(1u, 15682u), vec2<u32>(0u, 0u));

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-493f, 1273f, 1221f, 217f), vec4<f32>(-213f, 149f, 734f, 361f), vec4<f32>(1305f, 679f, 637f, -138f), vec4<f32>(-245f, -765f, 152f, 250f), vec4<f32>(850f, 262f, 1049f, 2206f), vec4<f32>(-527f, 861f, -284f, -1062f), vec4<f32>(-563f, 362f, 1000f, -115f), vec4<f32>(920f, -221f, -557f, -621f));

var<private> global3: array<i32, 32>;

var<private> global4: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(1760f - arg_0.a.b.x);
    let var_2 = -min(i32(-1i) * -reverseBits(-2147483647i), var_0.b.a);
    let var_3 = -1i;
    var var_4 = firstTrailingBit(arg_0.c.zx);
    return any(!select(select(vec4<bool>(var_0.b.b, true, var_0.b.b, false), vec4<bool>(var_0.b.b, true, true, arg_0.b.b), false), !vec4<bool>(false, false, var_0.b.b, global4.b), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: i32) -> vec3<u32> {
    var var_0 = !select(vec2<bool>(func_3(Struct_3(arg_0.a, arg_0.b, vec3<u32>(20271u, 4367u, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, -535f, arg_0.a.b.x, arg_0.a.b.x))), any(select(vec2<bool>(arg_2, arg_1), vec2<bool>(false, true), arg_2))), !(!select(vec2<bool>(true, global4.b), vec2<bool>(false, arg_2), arg_2)), arg_2);
    var var_1 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_3, global4.a, global4.a, global4.a), vec4<i32>(arg_3, -40785i, global3[_wgslsmith_index_u32(arg_0.c.x, 32u)], global3[_wgslsmith_index_u32(7296u, 32u)]), var_0.x), -vec4<i32>(-212i, arg_0.b.a, arg_3, global4.a)) & -vec4<i32>(1i, -2147483647i ^ arg_0.b.a, global4.a | -11415i, global4.a), vec4<i32>(~1487i, min(-global3[_wgslsmith_index_u32(85732u, 32u)], -arg_3) >> (~1u % 32u), -43924i, max(24501i, 0i)));
    let var_2 = min(vec4<u32>(1u >> ((~u_input.a << (u_input.a % 32u)) % 32u), ~(~firstTrailingBit(u_input.a)), ~global0.x | ((4294967295u << (arg_0.a.a % 32u)) ^ _wgslsmith_mod_u32(global0.x, 0u)), firstLeadingBit(global0.x)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, 62702u, arg_0.c.x) << (vec4<u32>(4294967295u, global0.x, arg_0.c.x, 4294967295u) % vec4<u32>(32u)), select(vec4<u32>(arg_0.c.x, u_input.a, 69550u, 4294967295u), vec4<u32>(9595u, 1u, 63749u, u_input.a), arg_1), vec4<u32>(global0.x, global0.x, global0.x, 61619u) & vec4<u32>(global0.x, global0.x, u_input.a, 52412u)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.c.x), global0.xy), firstTrailingBit(arg_0.c.x), ~4294967295u, firstLeadingBit(4294967295u)) % vec4<u32>(32u)), ~min(select(vec4<u32>(u_input.a, 0u, 1u, global0.x), vec4<u32>(arg_0.a.a, global0.x, 67897u, global0.x), vec4<bool>(var_0.x, true, false, true)), vec4<u32>(arg_0.a.a, global0.x, 41540u, 1u))));
    let var_3 = 0u;
    var_1 = ~(-1i ^ -global4.a);
    return arg_0.c;
}

fn func_1(arg_0: Struct_3) -> StorageBuffer {
    global1 = array<vec2<u32>, 22>();
    let var_0 = arg_0;
    global2 = array<vec4<f32>, 8>();
    global1 = array<vec2<u32>, 22>();
    let var_1 = Struct_3(Struct_1(max(reverseBits(_wgslsmith_mod_u32(global0.x, u_input.a)), arg_0.c.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_0.a.b, _wgslsmith_div_vec3_f32(var_0.a.b, arg_0.a.b))))), Struct_2(global4.a, arg_0.b.b), ~(~func_2(Struct_3(arg_0.a, arg_0.b, vec3<u32>(u_input.a, arg_0.c.x, global0.x)), true, all(vec2<bool>(true, true)), arg_0.b.a << (u_input.a % 32u))));
    return StorageBuffer(~26070i, arg_0.b.a, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.b.a, ~(-2147483647i), ~global3[_wgslsmith_index_u32(global0.x, 32u)]), ~(~var_0.b.a)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 1i, var_0.b.a), reverseBits(vec3<i32>(var_0.b.a, 2401i, -2147483647i))), ~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(global0.x, 32u)], var_0.b.a), var_0.b.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0.b.a, -35847i), vec3<i32>(9409i, -12106i, arg_0.b.a)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(15874u, 1u, arg_0.c.x), vec3<u32>(33231u, 10155u, 57112u)) % vec3<u32>(32u)), -(~vec3<i32>(var_1.b.a, global3[_wgslsmith_index_u32(u_input.a, 32u)], 9561i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<u32>(_wgslsmith_add_u32(global0.x, 40893u), _wgslsmith_add_u32(4517u & min(18491u, u_input.a), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(u_input.a, 1u, 45291u) << (vec3<u32>(global0.x, 12408u, 1u) % vec3<u32>(32u)))), u_input.a);
    global2 = array<vec4<f32>, 8>();
    let x = u_input.a;
    s_output = func_1(Struct_3(Struct_1(global0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-657f, 301f, -1013f)) + vec3<f32>(713f, -406f, -1150f))), Struct_2(global4.a, global4.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global0.x, 0u >> (global0.x % 32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, 1179u, u_input.a), vec4<u32>(global0.x, global0.x, u_input.a, global0.x)), abs(global0.x), global0.x))));
}

