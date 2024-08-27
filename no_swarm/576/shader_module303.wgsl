struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(true, vec3<f32>(1630f, -447f, -904f), vec3<u32>(9514u, 0u, 59856u)), Struct_1(false, vec3<f32>(370f, 1125f, -1000f), vec3<u32>(4294967295u, 0u, 1u)), Struct_1(true, vec3<f32>(317f, 1273f, -1079f), vec3<u32>(4446u, 0u, 13846u)), Struct_1(false, vec3<f32>(-172f, -1310f, 1371f), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(false, vec3<f32>(637f, 1146f, 526f), vec3<u32>(45379u, 75620u, 4294967295u)), Struct_1(true, vec3<f32>(1363f, -1000f, -1228f), vec3<u32>(86095u, 1u, 4294967295u)), Struct_1(true, vec3<f32>(-820f, -357f, 264f), vec3<u32>(9447u, 0u, 4294967295u)), Struct_1(false, vec3<f32>(904f, -1872f, -1096f), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(false, vec3<f32>(-597f, 695f, 508f), vec3<u32>(70407u, 17224u, 18106u)), Struct_1(true, vec3<f32>(-530f, 351f, 2301f), vec3<u32>(4911u, 1u, 0u)), Struct_1(false, vec3<f32>(-309f, -1528f, -756f), vec3<u32>(38009u, 1u, 0u)), Struct_1(true, vec3<f32>(-381f, 1332f, -1032f), vec3<u32>(20266u, 0u, 0u)), Struct_1(true, vec3<f32>(-135f, 334f, 122f), vec3<u32>(12971u, 4294967295u, 20534u)), Struct_1(false, vec3<f32>(446f, -913f, -625f), vec3<u32>(4294967295u, 14591u, 83296u)), Struct_1(true, vec3<f32>(-215f, -455f, -267f), vec3<u32>(51993u, 56164u, 4294967295u)), Struct_1(true, vec3<f32>(-1602f, -1038f, -494f), vec3<u32>(0u, 4294967295u, 1u)), Struct_1(true, vec3<f32>(-1000f, -634f, 783f), vec3<u32>(1u, 0u, 6261u)), Struct_1(true, vec3<f32>(1507f, 306f, -2376f), vec3<u32>(1u, 16590u, 31829u)), Struct_1(false, vec3<f32>(-1740f, -296f, 629f), vec3<u32>(1u, 73899u, 32072u)), Struct_1(true, vec3<f32>(591f, 1221f, 1220f), vec3<u32>(79844u, 63033u, 41072u)), Struct_1(true, vec3<f32>(1332f, -753f, -692f), vec3<u32>(96247u, 12272u, 9147u)), Struct_1(true, vec3<f32>(-524f, -255f, 899f), vec3<u32>(52829u, 0u, 86700u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, arg_0.b, var_0.c);
    var_0 = Struct_1(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-1075f * _wgslsmith_f_op_f32(-arg_3.x))), -1020f, _wgslsmith_f_op_f32(round(var_0.b.x))), arg_0.c);
    global0 = array<Struct_1, 22>();
    var_0 = arg_0;
    return ~(~arg_0.c.x >> (u_input.a.x % 32u));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~87634u), ~(~(~(0u ^ u_input.a.x)))), 22u)];
    let var_1 = Struct_2(false, vec3<i32>(countOneBits(~abs(15598i)), -26726i, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -30551i, _wgslsmith_add_i32(-1i, 22912i)), firstLeadingBit(vec2<i32>(20468i, -44954i)))), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 22u)], Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(sign(var_0.b)), select(~vec3<u32>(4294967295u, var_0.c.x, arg_0), vec3<u32>(1u, arg_0, 4294967295u) | var_0.c, true) >> (var_0.c % vec3<u32>(32u))), global0[_wgslsmith_index_u32(39256u, 22u)]);
    var_0 = Struct_1(var_1.c.a && var_1.d.a, vec3<f32>(var_0.b.x, var_1.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))))), ~(~min(countOneBits(vec3<u32>(1u, var_0.c.x, u_input.a.x)), var_1.e.c)));
    let var_2 = var_1;
    let var_3 = var_2;
    return _wgslsmith_dot_vec3_i32(var_1.b, _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -max(vec3<i32>(var_3.b.x, var_3.b.x, var_2.b.x), var_1.b), countOneBits(abs(vec3<i32>(2147483647i, var_2.b.x, -1986i)) << (vec3<u32>(var_0.c.x, arg_0, arg_0) % vec3<u32>(32u)))));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    var var_0 = abs(-(~(-6141i) & _wgslsmith_sub_i32(arg_0, arg_0))) ^ 1i;
    global0 = array<Struct_1, 22>();
    var var_1 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0, arg_0, -41431i), vec4<i32>(arg_0, arg_0, arg_0, 2147483647i)), vec4<i32>(arg_0, 42360i, 2147483647i, -1i), false), ~vec4<i32>(arg_0, arg_0, 0i, arg_0)), arg_0, -reverseBits(1i), 66213i);
    var var_2 = min(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x >> (abs(8298u) % 32u), u_input.a.x), ((1u ^ u_input.a.x) << (firstLeadingBit(36529u) % 32u)) >> (0u % 32u), ~0u), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(13374u, 4294967295u, 0u) >> (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 60559u, u_input.a.x)) << (vec3<u32>(_wgslsmith_div_u32(66327u, 50256u), ~u_input.a.x, 4294967295u | u_input.a.x) % vec3<u32>(32u))));
    var_1 = (vec4<i32>(-1i) * -vec4<i32>(func_3(1u), min(-1i, arg_0), var_1.x, select(2147483647i, 45429i, true))) | abs(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-48991i, 0i, 9257i, arg_0), vec4<i32>(20867i, 54700i, 1i, -1i), false), vec4<i32>(-35120i, arg_0, arg_0, arg_0) >> (vec4<u32>(u_input.a.x, 89419u, 28736u, 0u) % vec4<u32>(32u))) | reverseBits(vec4<i32>(arg_0, arg_0, 36283i, 26582i)));
    return ~firstTrailingBit(~firstTrailingBit(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    var var_0 = vec4<u32>(select(countOneBits(u_input.a.x), 0u, true), ~(~_wgslsmith_mod_u32(18850u << (u_input.a.x % 32u), ~u_input.a.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x | 57632u, max(131678u, 1u)), ~(u_input.a ^ _wgslsmith_div_vec2_u32(u_input.a, u_input.a))), _wgslsmith_div_u32(max(func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 54301u), vec2<u32>(u_input.a.x, 55040u)), 22u)], firstTrailingBit(vec4<i32>(-65473i, 67920i, -1i, 1i)), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(164f, -1171f, -277f) + vec3<f32>(1361f, -380f, -1000f))), u_input.a.x), ~0u));
    let var_1 = -35868i;
    var var_2 = 0u;
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~u_input.a.x), _wgslsmith_add_u32(2636u, 16029u), 29168u, 13253u), max(vec4<u32>(u_input.a.x, abs(0u), ~4294967295u, 0u), ~vec4<u32>(u_input.a.x, u_input.a.x, 8294u, 26746u))), ~vec4<u32>(abs(~u_input.a.x), func_1(Struct_1(true, vec3<f32>(558f, 1337f, -1696f), var_0.zwz), abs(vec4<i32>(2147483647i, var_1, var_1, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1704f, -228f, 376f, 685f) + vec4<f32>(1050f, -1536f, -713f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1731f, 105f, -203f))), reverseBits(u_input.a.x), 0u));
    let var_4 = vec2<bool>(false, true);
    var_2 = 4294967295u;
    var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(func_2(var_1), ~vec4<u32>(u_input.a.x, 855u, var_3.x, u_input.a.x)) | vec4<u32>(countOneBits(0u), var_3.x, ~26895u, 1u), min(~vec4<u32>(var_3.x, 4294967295u, var_0.x, 1u), firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, var_3.x, var_0.x))) >> (vec4<u32>(u_input.a.x, min(27242u, 76316u), _wgslsmith_mod_u32(1u, 41789u), ~var_3.x) % vec4<u32>(32u)));
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1 | -23643i);
}

