struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32>;

var<private> global1: Struct_2;

var<private> global2: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32) -> vec2<u32> {
    global0 = array<Struct_4, 32>();
    let var_0 = Struct_1((reverseBits(arg_2) >> (u_input.b % 32u)) & (i32(-1i) * -u_input.a.x), vec2<i32>(_wgslsmith_clamp_i32(global1.a >> (1u % 32u), arg_0 | u_input.a.x, _wgslsmith_add_i32(-68248i, -37344i)) | min(-13158i, ~global1.a), ~(-15741i)), _wgslsmith_f_op_f32(select(global2.a.x, _wgslsmith_f_op_f32(602f - 1540f), -arg_2 > 0i)), select(select(vec3<bool>(true, true, select(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), select(vec3<bool>(true, any(vec2<bool>(false, true)), any(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)));
    global1 = Struct_2(_wgslsmith_sub_i32(49147i, _wgslsmith_add_i32(-u_input.a.x ^ min(var_0.b.x, arg_0), 24978i)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.b), max(global1.b, 0u)), abs(vec2<u32>(u_input.b, 1u))));
    let var_1 = vec4<i32>(~global1.a, arg_1, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, firstTrailingBit(select(17496i, 16155i, var_0.d.x)), 2147483647i)), global1.a);
    global1 = Struct_2(_wgslsmith_clamp_i32(arg_0, 9322i, 452i), ~(~(~96757u)));
    return max(select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, firstLeadingBit(18432u)), reverseBits(~vec2<u32>(26442u, global1.b))), _wgslsmith_div_vec2_u32(vec2<u32>(3908u, global1.b) ^ vec2<u32>(41469u, 25313u), ~vec2<u32>(u_input.b, u_input.b)) & ~_wgslsmith_clamp_vec2_u32(vec2<u32>(22480u, u_input.b), vec2<u32>(24374u, u_input.b), vec2<u32>(40129u, u_input.b)), true), ~(vec2<u32>(~11275u, firstLeadingBit(global1.b)) & reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, u_input.b)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<f32>) -> bool {
    var var_0 = func_3(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, u_input.a.x, arg_1.x), -vec3<i32>(25812i, 1i, 1i)), -21414i), arg_1.x, arg_0.a) << (vec2<u32>(13102u, select(global1.b, ~10486u, false)) % vec2<u32>(32u));
    global1 = Struct_2(abs(global1.a), min(func_3(firstLeadingBit(firstTrailingBit(global1.a)), arg_1.x, ~(-2983i)).x, abs(4294967295u)));
    let var_1 = 1u;
    let var_2 = select(vec3<bool>((-66049i >= abs(u_input.a.x)) | !any(vec3<bool>(false, false, false)), -397f == arg_2.x, false), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), vec3<bool>(true, true, any(vec4<bool>(false, false, false, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !vec3<bool>(true, all(vec2<bool>(true, false)), true)));
    var var_3 = abs(~select(firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.a.yx, vec2<i32>(global1.a, 2147483647i))), arg_1.zz, var_2.x));
    return true & select(var_2.x, all(vec2<bool>(true, any(vec3<bool>(var_2.x, var_2.x, var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(953f + -383f)) > _wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(abs(-676f)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: i32) -> vec2<bool> {
    global1 = Struct_2(1i, ~min(_wgslsmith_sub_u32(69284u, global1.b) | global1.b, u_input.b));
    let var_0 = all(select(select(vec2<bool>(41174u < global1.b, false), arg_0.a.d.xx, vec2<bool>(false, arg_1.x)), select(!arg_1.zw, vec2<bool>(all(vec2<bool>(arg_0.a.d.x, true)), !arg_0.a.d.x), select(global1.b < global1.b, false, func_2(Struct_3(0i), vec4<i32>(-2147483647i, -2470i, global1.a, global1.a), global2.a))), any(select(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), select(arg_1, vec4<bool>(false, arg_0.a.d.x, true, true), arg_1.x), !arg_1))));
    global2 = Struct_5(vec4<f32>(-1719f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(2267f, global2.a.x), _wgslsmith_f_op_f32(trunc(122f))))), 1027f, arg_0.a.c));
    let var_1 = arg_0.a;
    var var_2 = ~(~u_input.b);
    return select(!vec2<bool>(true, arg_1.x), arg_0.a.d.xx, vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    var var_1 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(func_1(Struct_4(Struct_1(global1.a, vec2<i32>(37926i, -2147483647i), -783f, vec3<bool>(true, true, true))), vec4<bool>(true, false, false, true), vec4<i32>(-53811i, u_input.a.x, 0i, 18069i), u_input.a.x), select(vec2<bool>(true, false), vec2<bool>(true, false), true), all(vec2<bool>(false, true))), func_1(Struct_4(Struct_1(u_input.a.x, u_input.a.zz, global2.a.x, vec3<bool>(true, false, false))), vec4<bool>(false, false, true, false), vec4<i32>(global1.a, global1.a, u_input.a.x, u_input.a.x), u_input.a.x).x && true), true), func_1(global0[_wgslsmith_index_u32(9060u, 32u)], vec4<bool>(all(vec4<bool>(false, false, false, false)) && func_2(Struct_3(global1.a), vec4<i32>(global1.a, u_input.a.x, global1.a, u_input.a.x), vec4<f32>(global2.a.x, 340f, global2.a.x, -2097f)), true, all(vec3<bool>(false, true, false)) & any(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(global1.a, u_input.a.x, 33937i, u_input.a.x)) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global1.a, u_input.a.x, u_input.a.x), vec4<i32>(1i, global1.a, -21908i, global1.a)), max(countOneBits(vec4<i32>(global1.a, 0i, global1.a, 45345i)), ~vec4<i32>(-1i, u_input.a.x, 2147483647i, -1i))), global1.a), vec2<bool>(func_1(Struct_4(Struct_1(u_input.a.x, u_input.a.xz, global2.a.x, vec3<bool>(true, true, false))), vec4<bool>(false, 1760f <= global2.a.x, true, false), _wgslsmith_div_vec4_i32(vec4<i32>(global1.a, global1.a, 17718i, u_input.a.x) << (vec4<u32>(1u, u_input.b, 12329u, global1.b) % vec4<u32>(32u)), select(vec4<i32>(-2147483647i, global1.a, 47443i, global1.a), vec4<i32>(55253i, 2147483647i, global1.a, 22215i), vec4<bool>(true, true, false, false))), -2147483647i).x, func_1(global0[_wgslsmith_index_u32(global1.b, 32u)], select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), abs(countOneBits(vec4<i32>(1i, u_input.a.x, global1.a, 59618i))), select(_wgslsmith_mod_i32(2147483647i, -1i), 1i, true)).x));
    var var_2 = Struct_1(1i, u_input.a.zy, global2.a.x, !vec3<bool>(!(u_input.a.x <= u_input.a.x), var_1.x, var_1.x));
    let var_3 = Struct_1(i32(-1i) * -(~_wgslsmith_mod_i32(u_input.a.x, 2147483647i)), -min(max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a, global1.a), vec2<i32>(global1.a, 0i)), vec2<i32>(var_2.b.x, var_2.a)), -vec2<i32>(u_input.a.x, global1.a) ^ u_input.a.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a.x + var_2.c), _wgslsmith_f_op_f32(-var_2.c))))), !vec3<bool>(var_1.x, all(!vec4<bool>(var_1.x, var_1.x, true, true)), var_2.d.x));
    var var_4 = 59872u;
    var var_5 = select(~(~(~vec4<u32>(5161u, global1.b, 14185u, u_input.b))), vec4<u32>(~4294967295u, 1u, ~func_3(~var_2.a, select(1i, 8400i, true), -5432i).x, 4294967295u), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, 636f, 861f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, -1008f, 1496f) * global2.a.xyz)))), u_input.b, var_5.x, global2.a);
}

