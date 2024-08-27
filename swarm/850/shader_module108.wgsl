struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-267f, 1000f, -1738f), -44673i, vec2<f32>(866f, -810f), vec4<u32>(1u, 30277u, 4294967295u, 1u));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<f32>(227f, -839f, 1000f), -27197i, vec2<f32>(-1294f, -1567f), vec4<u32>(0u, 19736u, 4294967295u, 77440u)), Struct_1(vec3<f32>(-664f, 563f, -962f), 25803i, vec2<f32>(-2314f, 152f), vec4<u32>(34682u, 4294967295u, 5647u, 1u)), Struct_1(vec3<f32>(-451f, 662f, 122f), 34359i, vec2<f32>(1786f, 789f), vec4<u32>(2339u, 4294967295u, 4294967295u, 0u)));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(1029f, -1849f, -919f), 1i, vec2<f32>(-170f, 916f), vec4<u32>(65094u, 27534u, 4294967295u, 2857u)), Struct_1(vec3<f32>(1000f, 170f, -145f), 8277i, vec2<f32>(957f, -1454f), vec4<u32>(76224u, 31745u, 4605u, 4294967295u)), Struct_1(vec3<f32>(-1615f, 636f, -211f), 1i, vec2<f32>(-206f, 1371f), vec4<u32>(19112u, 0u, 51084u, 21813u)), Struct_1(vec3<f32>(433f, 902f, -1075f), -1i, vec2<f32>(1157f, -1000f), vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), Struct_1(vec3<f32>(-992f, -699f, -1205f), i32(-2147483648), vec2<f32>(-1085f, -1476f), vec4<u32>(83442u, 4294967295u, 4294967295u, 1u)), Struct_1(vec3<f32>(1142f, -1400f, 1000f), 2147483647i, vec2<f32>(-2248f, 420f), vec4<u32>(1u, 56955u, 116507u, 4294967295u)), Struct_1(vec3<f32>(2165f, 705f, 175f), -44262i, vec2<f32>(-458f, -2073f), vec4<u32>(72475u, 31400u, 38544u, 4294967295u)), Struct_1(vec3<f32>(488f, 157f, 638f), 0i, vec2<f32>(-1072f, 112f), vec4<u32>(68555u, 35569u, 45036u, 1u)), Struct_1(vec3<f32>(477f, 1104f, -1000f), 1i, vec2<f32>(1235f, 495f), vec4<u32>(35056u, 137u, 1u, 0u)), Struct_1(vec3<f32>(-1079f, 1000f, 781f), -36930i, vec2<f32>(1710f, -198f), vec4<u32>(28936u, 0u, 1u, 20726u)), Struct_1(vec3<f32>(-382f, 1385f, -186f), 2147483647i, vec2<f32>(561f, 408f), vec4<u32>(75503u, 4294967295u, 12922u, 0u)), Struct_1(vec3<f32>(290f, 1000f, -535f), -16985i, vec2<f32>(-1037f, -2058f), vec4<u32>(4294967295u, 4294967295u, 25224u, 1u)), Struct_1(vec3<f32>(-1063f, 506f, 880f), -41940i, vec2<f32>(480f, 556f), vec4<u32>(39681u, 0u, 38726u, 19015u)), Struct_1(vec3<f32>(-950f, -1000f, 1000f), 2147483647i, vec2<f32>(407f, 1223f), vec4<u32>(4294967295u, 0u, 39447u, 1u)), Struct_1(vec3<f32>(-373f, 1175f, -783f), 1772i, vec2<f32>(1000f, -1128f), vec4<u32>(4294967295u, 9258u, 5332u, 9596u)), Struct_1(vec3<f32>(-272f, -575f, 1473f), 34534i, vec2<f32>(965f, -534f), vec4<u32>(0u, 70391u, 4294967295u, 31321u)), Struct_1(vec3<f32>(-1048f, -1143f, 886f), 0i, vec2<f32>(1311f, -2105f), vec4<u32>(40447u, 67460u, 0u, 41772u)), Struct_1(vec3<f32>(208f, 1000f, 617f), 0i, vec2<f32>(-714f, 1453f), vec4<u32>(12970u, 0u, 38049u, 1u)), Struct_1(vec3<f32>(146f, -230f, -107f), 0i, vec2<f32>(415f, -2196f), vec4<u32>(1u, 4294967295u, 40478u, 4294967295u)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global1 = array<Struct_1, 3>();
    global0 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(select(global2.d, _wgslsmith_add_vec4_u32(abs(vec4<u32>(52943u, global2.d.x, global0.d.x, 55996u)), countOneBits(global0.d)), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), global2.d.x <= 1u)), vec4<u32>(_wgslsmith_sub_u32(global2.d.x, global2.d.x), _wgslsmith_div_u32(global0.d.x, 4294967295u), ~global2.d.x, global0.d.x) & global2.d)), 19u)];
    let var_0 = -(-2147483647i | -firstLeadingBit(u_input.a.x)) != _wgslsmith_mod_i32(u_input.a.x, reverseBits(_wgslsmith_clamp_i32(-605i, global2.b, global2.b) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(43255i, global0.b, -33881i, u_input.a.x), vec4<i32>(global2.b, 0i, global0.b, u_input.a.x))));
    global1 = array<Struct_1, 3>();
    let var_1 = global1[_wgslsmith_index_u32(max(max(1u, _wgslsmith_mod_u32(reverseBits(global2.d.x), 115843u >> (global0.d.x % 32u))) | 28577u, ~global2.d.x & global2.d.x), 3u)];
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> bool {
    var var_0 = select(vec2<bool>(arg_2, true), select(select(select(vec2<bool>(true, arg_2), vec2<bool>(false, arg_2), vec2<bool>(false, arg_2)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), vec2<bool>(true, true)), any(vec2<bool>(true, true))), vec2<bool>(arg_2, false), !select(!vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(false, false))), 3077u == _wgslsmith_add_u32(arg_1.d.x, _wgslsmith_clamp_u32(~arg_1.d.x, 47226u, 16245u | arg_0.d.x)));
    global0 = arg_1;
    var var_1 = _wgslsmith_add_i32(2147483647i, (_wgslsmith_clamp_i32(global0.b << (arg_1.d.x % 32u), countOneBits(global0.b), _wgslsmith_add_i32(global0.b, 1i)) ^ (abs(-10465i) & (arg_1.b ^ -83103i))) | -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global0.b, -86295i, u_input.a.x, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(global2.b, global0.b, global0.b, -25357i), vec4<i32>(-2147483647i, global2.b, global0.b, global2.b))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_3.yzz * vec3<f32>(-1034f, arg_1.a.x, 1304f)), min(-2147483647i >> ((28617u ^ global0.d.x) % 32u), -(u_input.a.x & arg_0.b)) << (20888u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.a.zy)))), vec4<u32>(~global0.d.x, select(97265u, 4804u << (global0.d.x % 32u), true), ~(~arg_0.d.x), ~_wgslsmith_mod_u32(max(25490u, arg_1.d.x), _wgslsmith_mod_u32(arg_1.d.x, 25022u))));
    let var_3 = vec2<bool>(false, any(select(!select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(false, false, false, true), vec4<bool>(arg_2, var_0.x, arg_2, true)), vec4<bool>(9003u < arg_0.d.x, 59887i < arg_0.b, true, var_0.x), true)));
    return !all(vec4<bool>(var_3.x, var_3.x | false, !var_0.x, true));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> u32 {
    global3 = array<Struct_1, 19>();
    let var_0 = global1[_wgslsmith_index_u32(global0.d.x, 3u)];
    var var_1 = select(vec4<bool>(var_0.c.x >= var_0.c.x, arg_2.x, !all(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_2.x, false, false, true), vec4<bool>(arg_2.x, arg_0.x, arg_2.x, true))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_3)), max(arg_1, -2469i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.c.x, var_0.a.x))), vec4<u32>(4234u, 4294967295u, global2.d.x, 11861u)), Struct_1(var_0.a, func_3(), _wgslsmith_f_op_vec2_f32(max(global2.a.yz, vec2<f32>(319f, var_0.c.x))), ~global0.d), arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, global2.a.x, global2.a.x, 1000f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1085f, 366f, 358f, 963f), vec4<f32>(arg_3.x, var_0.c.x, global0.c.x, global2.a.x), vec4<bool>(false, arg_0.x, arg_2.x, true)))))), select(vec4<bool>(true, (arg_3.x < -464f) & !arg_0.x, false, true), !vec4<bool>(arg_0.x, !arg_2.x, any(arg_0.xz), true), 25080i < arg_1), !vec4<bool>(!arg_0.x, select(var_0.b, u_input.a.x, arg_0.x) != _wgslsmith_sub_i32(-76842i, global0.b), (global0.b != 12090i) && arg_2.x, !(arg_0.x & arg_0.x)));
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(~1i, arg_1), countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1, var_0.b, arg_1, -11143i), -vec4<i32>(var_0.b, -2147483647i, -2147483647i, global2.b)), abs(arg_1))));
    var var_3 = select(vec2<bool>(var_2.x > _wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, 1i, 59881i), firstTrailingBit(u_input.a.x)), 4294967295u > _wgslsmith_sub_u32(72201u ^ global2.d.x, 1u)), !vec2<bool>(all(!vec4<bool>(false, true, var_1.x, false)), select(true, !var_1.x, true)), select(select(!arg_0.zx, select(!vec2<bool>(false, arg_2.x), var_1.zz, true), select(arg_0.zz, vec2<bool>(false, true), arg_0.zy)), !vec2<bool>(var_2.x == var_2.x, !var_1.x), vec2<bool>(all(!vec2<bool>(true, arg_2.x)), _wgslsmith_div_i32(-48686i, arg_1) > ~1i)));
    return 11650u;
}

fn func_1(arg_0: f32) -> f32 {
    global3 = array<Struct_1, 19>();
    global1 = array<Struct_1, 3>();
    let var_0 = 40032u >> (func_2(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), -2147483647i, vec2<bool>(true, true), global2.a) % 32u);
    let var_1 = Struct_1(global0.a, ~(-(~(global2.b | u_input.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(765f, arg_0)), ~reverseBits(~global0.d) << (abs(~(~global0.d)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_1.c.x)))), _wgslsmith_f_op_f32(-arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (max(global0.b, global0.b >> (~global2.d.x % 32u)) == 22401i) | (_wgslsmith_f_op_f32(-global2.c.x) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-963f, -616f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2.c.x)) * _wgslsmith_f_op_f32(step(-511f, 649f)))));
    let var_1 = 249f;
    global3 = array<Struct_1, 19>();
    var var_2 = abs(~firstLeadingBit(firstLeadingBit(1u)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(~1u), firstLeadingBit(~47241u)) | countOneBits(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(global0.d.x, global2.d.x)) << (min(34937u, global0.d.x << (16042u % 32u)) % 32u)), 3u)];
    var_2 = global0.d.x;
    global1 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(global0.c.x)), -1618f, global2.d.x, max(var_3.b, -(i32(-1i) * -27286i)), 2463f);
}

