struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(20766u, 0u, 4294967295u, 46866u), vec4<u32>(4294967295u, 0u, 45329u, 12257u), vec4<u32>(24826u, 51469u, 0u, 1u), vec4<u32>(1u, 41061u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 79394u), vec4<u32>(28185u, 29329u, 4294967295u, 30988u), vec4<u32>(108244u, 4294967295u, 94699u, 0u), vec4<u32>(0u, 1u, 0u, 75719u), vec4<u32>(18861u, 47661u, 0u, 64502u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> bool {
    let var_0 = abs(83459u);
    global0 = array<vec4<u32>, 9>();
    let var_1 = arg_1.b;
    var var_2 = arg_1.b;
    let var_3 = Struct_1(var_1.a, vec3<u32>(_wgslsmith_add_u32(reverseBits(var_0), 0u), ~_wgslsmith_add_u32(abs(4294967295u), abs(0u)), select(~55390u >> (var_1.b.x % 32u), max(1u, arg_1.a.x & 4294967295u), true)), arg_3.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(-848f * _wgslsmith_f_op_f32(max(var_1.d, var_1.d)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.d), -549f)) + _wgslsmith_f_op_f32(trunc(-1246f)))));
    return all(arg_3);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = true;
    global0 = array<vec4<u32>, 9>();
    var var_1 = arg_1;
    var var_2 = !vec4<bool>(var_1.c.x, func_3(abs(_wgslsmith_clamp_i32(arg_1.a, 30141i, 2569i)), Struct_2(firstLeadingBit(vec2<u32>(1u, arg_0.b.x)), arg_0), arg_1.a, vec3<bool>(!arg_0.c.x, true, select(arg_1.c.x, true, true))), any(vec3<bool>(!arg_1.c.x, !arg_1.c.x, all(vec3<bool>(var_1.c.x, true, arg_0.c.x)))), all(select(var_1.c, !vec2<bool>(arg_1.c.x, false), var_1.c.x || var_1.c.x)));
    global0 = array<vec4<u32>, 9>();
    return Struct_2(~arg_0.b.zx, Struct_1(36352i, select(vec3<u32>(57583u, max(0u, u_input.b), 0u), vec3<u32>(_wgslsmith_mod_u32(arg_1.b.x, arg_0.b.x), _wgslsmith_add_u32(46556u, arg_0.b.x), 0u), false), var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -805f)));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = func_2(Struct_1(~reverseBits(1i), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 1349u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 39538u, 16339u), vec3<u32>(u_input.a, u_input.a, 57821u), vec3<u32>(u_input.b, 81510u, 4294967295u)), vec3<u32>(4294967295u, 4294967295u, 65305u) << (vec3<u32>(16804u, u_input.a, 0u) % vec3<u32>(32u))), ~vec3<u32>(u_input.b, u_input.b, 32006u)), vec2<bool>(true, true), _wgslsmith_div_f32(-343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(1342f + arg_0.x)))), Struct_1(_wgslsmith_sub_i32(~(-27435i), _wgslsmith_clamp_i32(0i, -13449i, ~1i)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 34527u, u_input.b), vec3<u32>(u_input.b ^ 14174u, u_input.b, u_input.a)), vec2<bool>(true, true), arg_0.x));
    let var_1 = Struct_1(-11572i, var_0.b.b, func_2(func_2(var_0.b, var_0.b).b, var_0.b).b.c, _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-340f, arg_0.x)));
    let var_2 = func_2(func_2(var_0.b, var_1).b, func_2(Struct_1(1i, _wgslsmith_clamp_vec3_u32(var_1.b | var_1.b, abs(vec3<u32>(33694u, 45945u, 22440u)), var_1.b), !func_2(Struct_1(0i, vec3<u32>(77164u, 1u, 66799u), vec2<bool>(true, var_1.c.x), var_0.b.d), var_0.b).b.c, var_0.b.d), Struct_1(var_1.a, ~(~vec3<u32>(u_input.b, u_input.b, var_1.b.x)), vec2<bool>(func_2(var_1, Struct_1(var_0.b.a, vec3<u32>(u_input.b, 35106u, 24668u), vec2<bool>(var_0.b.c.x, var_1.c.x), -634f)).b.c.x, !var_0.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))).b).b;
    let var_3 = -(firstTrailingBit(_wgslsmith_div_vec4_i32(min(vec4<i32>(21503i, 39259i, -10152i, 2147483647i), vec4<i32>(-1i, var_1.a, var_0.b.a, var_1.a)), ~vec4<i32>(-28561i, -5976i, var_2.a, var_0.b.a))) << (global0[_wgslsmith_index_u32(0u, 9u)] % vec4<u32>(32u)));
    let var_4 = Struct_1(~firstTrailingBit(var_1.a), firstTrailingBit(var_2.b), var_1.c, 1516f);
    return _wgslsmith_dot_vec3_u32(~(~(~var_0.b.b << (_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, 59975u, var_4.b.x), vec3<u32>(var_0.a.x, 0u, var_2.b.x)) % vec3<u32>(32u)))), ~abs(max(_wgslsmith_mult_vec3_u32(var_4.b, vec3<u32>(21970u, 15590u, var_4.b.x)), firstTrailingBit(var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 9>();
    let var_0 = vec3<u32>(~(func_1(vec4<f32>(102f, 729f, -487f, -1000f)) ^ ~u_input.b), ~_wgslsmith_clamp_u32(abs(u_input.b), 4294967295u, u_input.a | 20371u), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a, 47955u), 0u)) ^ countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 29801u), vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(22106u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), u_input.a)));
    global0 = array<vec4<u32>, 9>();
    var var_1 = ~min(countOneBits(firstTrailingBit(-47458i)), _wgslsmith_sub_i32(-26553i, -1i));
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(select(~vec4<u32>(var_0.x, var_2, 1u, var_0.x), countOneBits(vec4<u32>(var_0.x, u_input.b, 98509u, 84143u)), vec4<bool>(true, true, true, true)), vec4<u32>(u_input.a, var_2, var_0.x, var_2) & vec4<u32>(5861u, var_2, u_input.a, 76105u)), select(select(vec4<i32>(-1i, 2147483647i, -1i, 15899i) & (vec4<i32>(2147483647i, 38586i, 2147483647i, 1i) >> (global0[_wgslsmith_index_u32(43397u, 9u)] % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 0i, 1i, -1i), vec4<i32>(1i, 1i, 1i, 1i)), var_2 < ~27876u), ((vec4<i32>(-31677i, 2147483647i, -1i, 0i) >> (global0[_wgslsmith_index_u32(var_2, 9u)] % vec4<u32>(32u))) | vec4<i32>(-5070i, -2147483647i, 70731i, 1i)) & reverseBits(-vec4<i32>(-41299i, -2147483647i, 38228i, -1i)), !(!select(true, true, true))), ~var_0.zz, u_input.b);
}

