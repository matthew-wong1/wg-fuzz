struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, true, true, true, false, false, true, false, false, false, false, true, false, false, false, false, false, true, true, true, false, false, false);

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(0i, 1401i), vec2<i32>(i32(-2147483648), -64962i), vec2<i32>(1061i, 4205i), vec2<i32>(11469i, 2147483647i), vec2<i32>(-70006i, i32(-2147483648)), vec2<i32>(2147483647i, -42016i));

var<private> global3: vec3<u32> = vec3<u32>(0u, 1u, 0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> bool {
    let var_0 = any(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 24u)], true, global0[_wgslsmith_index_u32(12950u, 24u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true, false)), !vec3<bool>(false, arg_0.x == -58837i, true), true));
    let var_1 = Struct_2(Struct_1(global1.zz, select(vec4<bool>(true, !global0[_wgslsmith_index_u32(global3.x, 24u)], false, any(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 24u)], true, false, var_0))), vec4<bool>(true, false, arg_2 != 36482u, !global0[_wgslsmith_index_u32(arg_1, 24u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 24u)], global0[_wgslsmith_index_u32(arg_2, 24u)], true, false))), _wgslsmith_mod_u32(1u, global3.x), select(~(~7093u), global3.x, true), reverseBits(0i)), global1.yz);
    let var_2 = var_1;
    return true;
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = true;
    global0 = array<bool, 24>();
    global2 = array<vec2<i32>, 6>();
    var var_1 = Struct_1(~vec2<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, ~4294967295u), ~global1.x), select(vec4<bool>(false, (0u < global3.x) & global0[_wgslsmith_index_u32(~global1.x, 24u)], arg_0.a && func_3(vec3<i32>(u_input.a.x, u_input.a.x, 28920i), global1.x, global1.x), !(!global0[_wgslsmith_index_u32(40457u, 24u)])), !vec4<bool>(!global0[_wgslsmith_index_u32(47791u, 24u)], false, true, arg_0.a), true), ~(_wgslsmith_clamp_u32(~4294967295u, 0u, global1.x) << (~(global1.x << (global3.x % 32u)) % 32u)), 12687u, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(~(~u_input.a.x), 36997i)));
    global2 = array<vec2<i32>, 6>();
    return -830f;
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = 31242u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_0)), 288f);
    var var_2 = arg_0;
    let var_3 = firstTrailingBit(_wgslsmith_add_u32(12218u, 1u));
    let var_4 = Struct_1(~_wgslsmith_mult_vec2_u32(~select(vec2<u32>(1u, global1.x), global1.zx, var_2.a), vec2<u32>(global3.x, var_3)), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_3, 24u)], var_2.a, false, var_2.a), vec4<bool>(var_2.a, arg_0.a, false, var_2.a), arg_0.a), vec4<bool>(true, false, func_3(u_input.a, global1.x, 59015u), var_2.a), true), select(select(vec4<bool>(var_2.a, false, global0[_wgslsmith_index_u32(1u, 24u)], false), vec4<bool>(false, false, false, true), select(vec4<bool>(arg_0.a, var_2.a, arg_0.a, var_2.a), vec4<bool>(true, arg_0.a, true, true), var_2.a)), !select(vec4<bool>(true, var_2.a, false, false), vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 24u)], true, global0[_wgslsmith_index_u32(global3.x, 24u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1587u, 24u)], true, arg_0.a, true)), global0[_wgslsmith_index_u32(7224u, 24u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(4866u, 24u)], false, false), select(vec4<bool>(false, true, false, var_2.a), vec4<bool>(var_2.a, var_2.a, var_2.a, true), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], var_2.a, false)), true)), firstLeadingBit(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(14130u, 16056u, 0u, global3.x), vec4<u32>(1u, global3.x, global1.x, 4294967295u)), ~vec4<u32>(4294967295u, 19267u, var_3, global1.x))), firstTrailingBit(global3.x), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(min(-1i, u_input.a.x), u_input.a.x, u_input.a.x)), firstLeadingBit(_wgslsmith_mod_i32(-u_input.a.x, -34528i))));
    return countOneBits(~vec2<u32>(~1u, global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec2<u32>(106437u, 71817u), select(vec4<bool>(all(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 24u)], true)), true, any(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(global3.x, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 24u)], global0[_wgslsmith_index_u32(~global3.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global1.x << (1u % 32u), 24u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], true, global0[_wgslsmith_index_u32(global1.x, 24u)])), 59103u, ~1u, ~3106i), func_1(Struct_3(all(!vec3<bool>(global0[_wgslsmith_index_u32(17848u, 24u)], global0[_wgslsmith_index_u32(global3.x, 24u)], global0[_wgslsmith_index_u32(global3.x, 24u)])), vec3<f32>(_wgslsmith_f_op_f32(max(1000f, -1159f)), _wgslsmith_f_op_f32(min(628f, -1000f)), 621f))));
    let var_1 = Struct_2(Struct_1(global3.yy, select(select(vec4<bool>(var_0.a.b.x, true, global0[_wgslsmith_index_u32(4294967295u, 24u)], false), !var_0.a.b, var_0.a.b.x & true), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], var_0.a.b.x), var_0.a.b, !var_0.a.b.x), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])), _wgslsmith_add_u32(global3.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, global1.x, 1u), vec3<u32>(19874u, 1u, global1.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 14066u, global1.x), vec3<u32>(global1.x, 30764u, global3.x)))), ~_wgslsmith_mod_u32(50390u ^ global1.x, 0u), u_input.a.x), abs(abs(~(~global3.zz))));
    var var_2 = ~_wgslsmith_sub_i32(var_0.a.e, _wgslsmith_mod_i32(-36241i, ~43380i));
    let var_3 = 28350u;
    let var_4 = var_3;
    var_0 = Struct_2(var_0.a, _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.a.x, global1.x), ~vec2<u32>(23049u, var_1.a.c)), var_1.a.a, vec2<u32>(~1u, ~(var_4 >> (4294967295u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(458f, 556f, -2002f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-603f, 802f, 100f), vec3<f32>(-1000f, -679f, 1425f), var_0.a.b.zxw))), vec3<f32>(1011f, _wgslsmith_f_op_f32(step(1655f, -1000f)), -172f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(874f, 1956f, 154f) + vec3<f32>(-1163f, 620f, -1105f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1066f, -740f, 1759f), vec3<f32>(810f, -616f, 278f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, 698f, 256f)))), vec3<bool>(true, any(var_1.a.b.zxz), true)))), vec3<u32>(global1.x, ~(~(~1u)), ~(~_wgslsmith_mod_u32(var_4, 33043u))), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-753f)), -345f, 1525f)))));
}

