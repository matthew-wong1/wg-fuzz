struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(69437i, -4950i, 1i, i32(-2147483648)), vec2<u32>(0u, 4294967295u), 435f);

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-11806i, i32(-2147483648), -55453i), vec3<i32>(-26135i, 28785i, i32(-2147483648)), vec3<i32>(-16722i, 0i, -37630i), vec3<i32>(34159i, -14420i, 2147483647i), vec3<i32>(i32(-2147483648), -15376i, 1i));

var<private> global2: array<i32, 15> = array<i32, 15>(22266i, 0i, 2147483647i, 2147483647i, -1i, -1i, 35022i, -10883i, -25297i, 34290i, 2147483647i, i32(-2147483648), 90273i, 8216i, -51170i);

var<private> global3: f32 = 852f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    var var_0 = 1i;
    global0 = Struct_2(vec4<i32>(u_input.b, min(-_wgslsmith_mult_i32(global0.a.x, global0.a.x), 2147483647i), abs(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, global0.b.x), 15u)], -9391i)), countOneBits(global0.a.x)), vec2<u32>(~_wgslsmith_div_u32(abs(arg_0.b), _wgslsmith_div_u32(0u, 15275u)), 47603u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(482f)), _wgslsmith_f_op_f32(-661f - global0.c)))))));
    global2 = array<i32, 15>();
    let var_1 = true;
    global1 = array<vec3<i32>, 5>();
    return !var_1;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    var var_0 = u_input.a.wy;
    var var_1 = vec2<i32>(-13935i, select(countOneBits(~1i), reverseBits(2147483647i), !arg_2.x & func_3(Struct_1(vec3<bool>(true, true, arg_2.x), 4294967295u, vec2<u32>(u_input.a.x, 1u), vec3<f32>(-2298f, 1000f, global0.c), vec3<bool>(true, true, arg_2.x)), vec4<f32>(global0.c, global0.c, 534f, 448f))) & ~firstTrailingBit(reverseBits(global2[_wgslsmith_index_u32(4294967295u, 15u)])));
    global0 = Struct_2(global0.a, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_0, 0u, 36363u, arg_0) | vec4<u32>(u_input.a.x, u_input.a.x, global0.b.x, u_input.a.x)), ~var_0.x) & ~u_input.a.wx, global0.c);
    var_0 = u_input.a.yw >> (firstLeadingBit(min(abs(firstLeadingBit(global0.b)), ~(u_input.a.wx << (u_input.a.xy % vec2<u32>(32u))))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0.c)), 1000f));
    return false;
}

fn func_1(arg_0: vec4<i32>) -> vec2<f32> {
    let var_0 = Struct_1(vec3<bool>((6880u & countOneBits(u_input.a.x)) <= _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.b.x, u_input.a.x), 27435u), false, (true & select(false, false, true)) | select(true, true, true)), 0u, reverseBits(~global0.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(756f, global0.c)))), 958f, 469f))), vec3<bool>(!any(vec2<bool>(true, false)) || any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(false, false, false, true)) & any(vec4<bool>(true, true, true, true)), true));
    let var_1 = !select(vec4<bool>(!var_0.a.x | any(vec4<bool>(var_0.e.x, true, var_0.e.x, false)), !func_2(global0.b.x, false, var_0.a.zx), false, var_0.a.x), !(!vec4<bool>(var_0.a.x, var_0.e.x, var_0.e.x, false)), false);
    let var_2 = Struct_2(abs(~reverseBits(vec4<i32>(12355i, -4834i, 1i, 0i))) | arg_0, ~select(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(19703u, global0.b.x)), ~var_0.c), _wgslsmith_add_vec2_u32(global0.b | u_input.a.yy, vec2<u32>(0u, 35967u)), !var_1.x), -380f);
    var var_3 = min(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 0u, global0.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(8136u, var_2.b.x, u_input.a.x), u_input.a.yxz), var_0.a), u_input.a.zzw), u_input.a.yyw), vec3<u32>(~select(var_2.b.x, 30345u, all(vec4<bool>(var_0.a.x, false, var_0.a.x, true))), u_input.a.x, _wgslsmith_div_u32(~var_0.b, u_input.a.x)));
    let var_4 = true;
    return var_0.d.zx;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    global0 = arg_2;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_1.x, 347f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, arg_2.c, arg_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(951f, -660f, arg_3.x)))))));
    let var_1 = vec4<i32>(2147483647i, u_input.b & 14307i, global0.a.x, min(2147483647i, firstTrailingBit(global0.a.x)));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c)) + arg_1.x)));
    let var_3 = ~arg_2.a.x;
    return Struct_1(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false)))), u_input.a.x, ~select(vec2<u32>(~0u, u_input.a.x), ~u_input.a.xx, select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -340f, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1101f, -1381f) - vec3<f32>(var_0.x, -781f, arg_2.c)))) * vec3<f32>(1000f, -988f, -708f)))), vec3<bool>(!func_3(Struct_1(vec3<bool>(false, true, true), global0.b.x, global0.b, vec3<f32>(var_0.x, -629f, arg_0.x), vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 214f, arg_1.x, -1285f))), func_3(Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), min(u_input.a.x, 0u), vec2<u32>(1u, global0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_0.x, arg_2.c)), vec3<bool>(false, false, true)), vec4<f32>(827f, _wgslsmith_f_op_f32(arg_3.x * arg_3.x), global0.c, _wgslsmith_f_op_f32(floor(arg_2.c)))), !(-511f >= _wgslsmith_f_op_f32(-arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c, global0.c)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, 1443f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1498f, 142f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c, global0.c), vec2<f32>(-810f, global0.c)))))), _wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(global0.a.x, -3636i, u_input.c.x, min(1i, i32(-1i) * -2147483647i)))), Struct_2(global0.a, global0.b, _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(step(global0.c, global0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.c, global0.c), vec2<f32>(-299f, -673f)))))));
    var_0 = Struct_1(vec3<bool>(var_0.e.x, false, !any(var_0.e)), max(13634u | ~var_0.c.x, ~(~(4294967295u ^ global0.b.x))), vec2<u32>(~abs(1u) << (u_input.a.x % 32u), 107006u), _wgslsmith_f_op_vec3_f32(var_0.d + vec3<f32>(_wgslsmith_f_op_f32(-1032f + 474f), _wgslsmith_f_op_vec2_f32(func_1(min(global0.a, vec4<i32>(-7134i, -1i, global2[_wgslsmith_index_u32(57575u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)])))).x, global0.c)), var_0.a);
    global0 = Struct_2(-_wgslsmith_sub_vec4_i32(~(global0.a >> (vec4<u32>(var_0.b, 0u, 4372u, 34625u) % vec4<u32>(32u))), global0.a), ~vec2<u32>(global0.b.x, ~91402u), global0.c);
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-118f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1180f * _wgslsmith_f_op_f32(-global0.c))), var_0.a.x)), _wgslsmith_f_op_f32(round(global0.c)), all(select(!(!vec3<bool>(var_0.a.x, var_0.a.x, true)), vec3<bool>(!var_0.a.x, var_0.a.x || var_0.a.x, false), !vec3<bool>(var_0.a.x, false, var_0.a.x)))));
    global3 = 1692f;
    let x = u_input.a;
    s_output = StorageBuffer(~((-vec3<i32>(u_input.b, global0.a.x, u_input.c.x) << (u_input.a.yyy % vec3<u32>(32u))) >> (~vec3<u32>(1592u, 34440u, global0.b.x) % vec3<u32>(32u))));
}

