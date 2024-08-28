struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: u32;

var<private> global2: bool = false;

var<private> global3: array<bool, 3>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> bool {
    var var_0 = -314f;
    global3 = array<bool, 3>();
    global0 = !(!(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 3u)] | global3[_wgslsmith_index_u32(54762u, 3u)], true, true || global3[_wgslsmith_index_u32(67825u, 3u)])));
    var var_1 = max(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(8889i, 0i, arg_0.x), arg_0.x >> (1u % 32u)), u_input.a.x, ~(-1i), _wgslsmith_div_i32(1i, -arg_0.x)), vec4<i32>(u_input.a.x, arg_0.x, ~arg_0.x, firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)))) | select(max(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 13529i, -49077i), vec4<i32>(-2147483647i, 1i, u_input.a.x, 36089i)), min(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.x, -11750i), _wgslsmith_mod_vec4_i32(vec4<i32>(11361i, 26692i, -1i, u_input.a.x), vec4<i32>(arg_0.x, -29781i, 0i, 2147483647i)))), -min(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), -vec4<i32>(-11079i, -2147483647i, u_input.a.x, -17036i)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~1u), 3u)]);
    var var_2 = !(!(!global3[_wgslsmith_index_u32(select(4294967295u, reverseBits(4294967295u), false), 3u)]));
    return select(true != arg_1, true, !all(vec2<bool>(global0.x, true))) == global3[_wgslsmith_index_u32(~0u, 3u)];
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_2(4294967295u >> (abs(~(~arg_0)) % 32u));
    var_0 = Struct_2(var_0.a);
    let var_1 = vec2<bool>(func_3(-(~firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, 12126i))), true), false);
    global0 = vec3<bool>(true, select(global0.x, true, global0.x), any(vec3<bool>(true, any(global0.zx), any(vec3<bool>(true, global0.x, global0.x)))));
    var var_2 = Struct_1(abs(u_input.a.x), all(!(!(!global0.zx))), 1f);
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<bool>) -> vec3<bool> {
    global0 = select(!(!select(vec3<bool>(arg_0, true, global3[_wgslsmith_index_u32(arg_2.x, 3u)]), select(vec3<bool>(arg_0, true, false), vec3<bool>(global3[_wgslsmith_index_u32(41575u, 3u)], true, false), arg_3.x), !vec3<bool>(arg_3.x, global0.x, arg_0))), vec3<bool>(true, func_2(arg_2.x), !(!global3[_wgslsmith_index_u32(~arg_2.x, 3u)])), true);
    var var_0 = _wgslsmith_dot_vec4_i32(select(~(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -2147483647i) << (vec4<u32>(arg_1.a, 0u, 52901u, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 31983i, u_input.a.x), vec4<i32>(4389i, 1i, u_input.a.x, 2147483647i)) & -vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), (33578i ^ u_input.a.x) >= u_input.a.x) ^ _wgslsmith_add_vec4_i32(min(~vec4<i32>(1i, -14104i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -24307i, 2147483647i, u_input.a.x)), vec4<i32>(countOneBits(2147483647i), ~(-52803i), ~2147483647i, -u_input.a.x)), vec4<i32>(u_input.a.x | -_wgslsmith_add_i32(u_input.a.x, 1i), -1i, 1i, -8756i));
    var var_1 = Struct_2(~(~4294967295u));
    var var_2 = arg_2;
    global0 = !select(vec3<bool>(arg_0, !(false && arg_0), ~u_input.a.x > -37909i), vec3<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 15735i), u_input.a.xx) <= 2147483647i, select(!arg_3.x, true, false)), !(!(!vec3<bool>(global0.x, false, global3[_wgslsmith_index_u32(1u, 3u)]))));
    return !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_3.x, false, true), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], true, arg_0), vec3<bool>(arg_3.x, true, arg_3.x)), select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, arg_3.x, true), true)), select(vec3<bool>(true, true, true), !vec3<bool>(global3[_wgslsmith_index_u32(arg_1.a, 3u)], true, false), select(vec3<bool>(global0.x, false, arg_0), vec3<bool>(arg_3.x, global0.x, global0.x), vec3<bool>(arg_0, global3[_wgslsmith_index_u32(arg_2.x, 3u)], global0.x))), !any(vec4<bool>(false, global0.x, false, false))), select(!(!vec3<bool>(true, global0.x, true)), !vec3<bool>(global3[_wgslsmith_index_u32(var_1.a, 3u)], true, true), global0.x), select(true, !global0.x | (arg_0 & arg_3.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = _wgslsmith_mod_u32(1u, ~1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, -1087f, -251f, 1103f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1191f, -1215f, -459f, -1546f) * vec4<f32>(2685f, -167f, -1037f, 145f))))))));
    var var_3 = ~(vec3<u32>(1u, 1u, 1u) | select(~vec3<u32>(1u, 1u, 1u), reverseBits(firstLeadingBit(vec3<u32>(0u, 72468u, 4919u))), global0.x));
    var_1 = ~(~_wgslsmith_mod_u32(var_3.x, ~select(16264u, 4294967295u, global0.x)));
    global0 = select(vec3<bool>(all(select(!vec3<bool>(global0.x, global3[_wgslsmith_index_u32(1u, 3u)], global0.x), vec3<bool>(false, true, global0.x), !vec3<bool>(global3[_wgslsmith_index_u32(84483u, 3u)], false, false))), any(!global0.yx), !(global0.x & global0.x)), select(!(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global3[_wgslsmith_index_u32(var_3.x, 3u)], true, true), vec3<bool>(false, global3[_wgslsmith_index_u32(78318u, 3u)], false))), func_1(global3[_wgslsmith_index_u32(22649u, 3u)], Struct_2(var_3.x), max(vec3<u32>(var_3.x, 0u, var_3.x), vec3<u32>(var_3.x, 0u, 1u)) >> (vec3<u32>(var_3.x, var_3.x, var_3.x) % vec3<u32>(32u)), global0.xx), false != global3[_wgslsmith_index_u32(0u, 3u)]), !select(select(func_1(false, Struct_2(28769u), vec3<u32>(var_3.x, var_3.x, var_3.x), global0.yy), vec3<bool>(global0.x, global0.x, true), var_2.x < 1000f), vec3<bool>(false, false, global3[_wgslsmith_index_u32(~var_3.x, 3u)]), select(any(vec3<bool>(true, global3[_wgslsmith_index_u32(var_3.x, 3u)], false)), true, any(vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~73563u, abs(_wgslsmith_mult_vec2_i32(-(u_input.a.yx ^ vec2<i32>(-40881i, u_input.a.x)), abs(vec2<i32>(1i, 2147483647i)))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~var_3.x, 88807u, var_3.x), select(~vec3<u32>(58469u, 47579u, 4294967295u), firstLeadingBit(vec3<u32>(var_3.x, var_3.x, 4294967295u)), select(vec3<bool>(false, true, false), vec3<bool>(global0.x, global0.x, global3[_wgslsmith_index_u32(1u, 3u)]), vec3<bool>(global0.x, global0.x, false)))), u_input.a.x);
}

