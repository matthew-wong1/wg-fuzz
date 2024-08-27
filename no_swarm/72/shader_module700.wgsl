struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(-525f, -2765f), vec2<f32>(-563f, -336f), vec2<f32>(385f, 2349f), vec2<f32>(1269f, -786f), vec2<f32>(-577f, -1278f), vec2<f32>(-907f, -408f), vec2<f32>(-236f, -193f), vec2<f32>(175f, -1073f), vec2<f32>(298f, -925f), vec2<f32>(-1141f, -121f), vec2<f32>(-1574f, 546f), vec2<f32>(-1000f, 1903f), vec2<f32>(-2465f, 1000f), vec2<f32>(262f, 940f), vec2<f32>(166f, 705f), vec2<f32>(-2266f, -417f), vec2<f32>(-240f, 1246f));

var<private> global3: array<vec4<u32>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_dot_vec3_i32(global1.b.wwz, min(_wgslsmith_mult_vec3_i32(-global1.b.zwx, global1.b.xwz), _wgslsmith_add_vec3_i32(select(vec3<i32>(-28114i, -1i, global1.b.x), global1.b.yzz, global0.x), global1.b.zzw))) >= -1i;
    let var_1 = global0.yww;
    var var_2 = Struct_2(false, global1.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), global1.a.x, 412f), vec4<i32>(~global1.b.x, 0i, 1i, max(countOneBits(7380i), global1.b.x))), Struct_1(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1410f, global1.a.x, -110f), global1.a), vec3<f32>(195f, global1.a.x, 1503f), u_input.a >= u_input.a))), vec4<i32>(~1i, ~global1.b.x, global1.b.x, global1.b.x)), abs(global1.b.x));
    var var_3 = u_input.d;
    let var_4 = _wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(~u_input.c, 12u)], vec4<u32>(1u, _wgslsmith_add_u32(reverseBits(_wgslsmith_mod_u32(u_input.c, var_3.x)), ~0u), _wgslsmith_add_u32(_wgslsmith_mod_u32(min(var_3.x, 3317u), _wgslsmith_dot_vec4_u32(vec4<u32>(13718u, u_input.c, u_input.b, u_input.c), vec4<u32>(6379u, 0u, 4294967295u, 66650u))), var_3.x), 0u), _wgslsmith_mult_vec4_u32(firstTrailingBit(select(global3[_wgslsmith_index_u32(~12994u, 12u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, var_3.x, 4294967295u), vec4<u32>(var_3.x, 19121u, 48179u, u_input.d.x), vec4<u32>(var_3.x, 7173u, 35661u, u_input.d.x)), true)), vec4<u32>(~var_3.x, ~(~0u), u_input.a, 46366u & abs(u_input.b))));
    return abs(2147483647i);
}

fn func_2(arg_0: i32) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-306f, global1.a.x, global1.a.x) - global1.a))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, global1.a.x, -431f) - global1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -331f, -1017f))))), vec4<i32>(arg_0, ~(-2147483647i | _wgslsmith_mult_i32(global1.b.x, -23304i)), -1i, func_3()));
    global3 = array<vec4<u32>, 12>();
    global3 = array<vec4<u32>, 12>();
    var var_0 = Struct_1(global1.a, vec4<i32>(abs(-13060i), firstLeadingBit(~global1.b.x), arg_0, -77i));
    global0 = select(select(vec4<bool>(global0.x, global0.x, false, !(-2275f > global1.a.x)), vec4<bool>(!(global0.x & true), u_input.c != u_input.a, all(vec2<bool>(true, global0.x)), false), vec4<bool>(_wgslsmith_mod_u32(u_input.a, 1u) < ~41517u, _wgslsmith_f_op_f32(round(global1.a.x)) < _wgslsmith_f_op_f32(ceil(1301f)), global0.x, false)), vec4<bool>(global0.x, any(vec3<bool>(global0.x, any(vec4<bool>(true, global0.x, false, global0.x)), false)), any(vec3<bool>(all(vec4<bool>(true, true, global0.x, global0.x)), select(global0.x, true, global0.x), global1.b.x < -1i)), global0.x), vec4<bool>(global0.x, !global0.x, false | all(global0.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)) > _wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, global0.x))))));
    return 1u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = ~(~func_2(global1.b.x));
    let var_1 = Struct_3(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(2717u, var_0) | vec2<u32>(0u, arg_0.x), arg_1 ^ vec2<u32>(u_input.d.x, 4294967295u)), u_input.a) >> (vec2<u32>(24923u, reverseBits(1u)) % vec2<u32>(32u)), global1.a, countOneBits(countOneBits(vec2<u32>(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, var_0), arg_0.x | 4294967295u))));
    let var_2 = select(vec2<bool>(global0.x, all(global0.zy)), select(!(!vec2<bool>(global0.x, true)), !vec2<bool>(!global0.x, all(vec4<bool>(true, global0.x, global0.x, global0.x))), select(select(!vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), select(global0.zw, global0.zz, global0.zx)), global0.zy, select(!vec2<bool>(global0.x, global0.x), global0.zy, global0.x || true))), vec2<bool>(!(!global0.x), true));
    var var_3 = Struct_2((var_1.b.x <= var_1.b.x) && any(select(select(global0.yzx, vec3<bool>(false, false, var_2.x), global0.wxx), select(global0.www, global0.xxw, var_2.x), all(vec2<bool>(global0.x, false)))), global1.a, Struct_1(var_1.b, vec4<i32>(global1.b.x, global1.b.x >> (12463u % 32u), _wgslsmith_clamp_i32(global1.b.x, -global1.b.x, ~1i), 0i)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(global1.a.x + var_1.b.x), -634f)), vec4<i32>(-(i32(-1i) * -2819i), (2147483647i << (var_0 % 32u)) ^ global1.b.x, ~(-11444i), firstTrailingBit(1i))), -(reverseBits(1i) << ((37974u & ~arg_0.x) % 32u)));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2095f + _wgslsmith_f_op_f32(select(global1.a.x, -165f, var_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * -1000f) * var_1.b.x), -595f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(970f, var_3.c.a.x), _wgslsmith_f_op_f32(-var_1.b.x), -561f))), vec4<i32>(global1.b.x, firstTrailingBit(_wgslsmith_clamp_i32(global1.b.x, global1.b.x, ~var_3.c.b.x)), ~_wgslsmith_clamp_i32(var_3.e, global1.b.x, ~(-12822i)), reverseBits(_wgslsmith_add_i32(23510i, -13834i)) ^ var_3.e));
    return firstLeadingBit(vec4<i32>(~(~(2147483647i >> (u_input.a % 32u))), global1.b.x, -countOneBits(var_3.c.b.x), max(-18518i, _wgslsmith_clamp_i32(select(global1.b.x, -23129i, var_3.a), -var_3.d.b.x, -8753i))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<bool>) -> StorageBuffer {
    global3 = array<vec4<u32>, 12>();
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_f32(step(720f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(f32(-1f) * -540f)))), _wgslsmith_f_op_f32(f32(-1f) * -1442f)), func_4(vec3<u32>(~(~u_input.a), 1u, func_2(-2881i)), vec2<u32>(abs(countOneBits(1u)), 1u)));
    global2 = array<vec2<f32>, 17>();
    let var_0 = global0.x;
    let var_1 = _wgslsmith_mod_vec4_i32(-vec4<i32>(global1.b.x, min(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, -2147483647i), global1.b.xzy), _wgslsmith_sub_i32(2147483647i, global1.b.x)), 28128i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, -2147483647i), vec3<i32>(global1.b.x, 70879i, global1.b.x)), _wgslsmith_div_i32(global1.b.x, reverseBits(-322i))), -global1.b);
    return StorageBuffer(var_1.x, _wgslsmith_mult_i32(abs(~global1.b.x), ((global1.b.x << (22216u % 32u)) | ~41571i) << (arg_1.x % 32u)), 1u, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global0.x, u_input.d >> (vec2<u32>(_wgslsmith_sub_u32(~u_input.c, ~26543u), min(9231u, u_input.a) ^ 4294967295u) % vec2<u32>(32u)), global0.yy);
}

