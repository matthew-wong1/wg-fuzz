struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
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

var<private> global0: array<i32, 12> = array<i32, 12>(10577i, 2147483647i, 1i, -1i, 2147483647i, 2882i, 39464i, 1409i, -45037i, i32(-2147483648), -23020i, 0i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(52781i, 7209i, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)])), ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(296u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 1i, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(30722u, 12u)]))), firstTrailingBit(abs(global0[_wgslsmith_index_u32(u_input.b, 12u)]))) | ~_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 42452i), vec2<i32>(-26573i, 49536i));
    var var_2 = u_input.a << (u_input.b % 32u);
    var var_3 = Struct_1(select(!select(!vec4<bool>(true, false, arg_0.x, false), select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), true), vec4<bool>(true, true, arg_0.x, all(select(vec4<bool>(arg_0.x, false, true, false), vec4<bool>(true, false, true, arg_0.x), arg_0.x))), !arg_0.x), arg_0.x, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-24676i, global0[_wgslsmith_index_u32(u_input.d.x, 12u)], global0[_wgslsmith_index_u32(u_input.d.x, 12u)], global0[_wgslsmith_index_u32(696u, 12u)]), reverseBits(vec4<i32>(-11804i, global0[_wgslsmith_index_u32(57226u, 12u)], var_1.x, var_1.x))), select(~vec4<i32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(1u, 12u)], 1i), countOneBits(vec4<i32>(3325i, -66590i, global0[_wgslsmith_index_u32(u_input.b, 12u)], -46963i)), !vec4<bool>(arg_0.x, false, true, arg_0.x))), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(max(u_input.a, 7132u), 12u)], ~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 12u)], -23106i))), -47923i);
    var var_4 = !select(!arg_0, vec3<bool>(all(arg_0.zz), false, false), var_3.a.wxy);
    return _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-1i, -65581i & global0[_wgslsmith_index_u32(43503u, 12u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), 12u)], -24615i), -select(firstLeadingBit(vec3<i32>(-1i, var_1.x, -11817i)), firstLeadingBit(vec3<i32>(-2147483647i, 0i, 1i)), arg_0)), -_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(var_1.x, -1i, -36982i)), -min(vec3<i32>(var_3.d, -66259i, var_3.d), vec3<i32>(var_1.x, var_1.x, 3575i)), vec3<i32>(~global0[_wgslsmith_index_u32(0u, 12u)], var_3.c.x, var_1.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    let var_0 = arg_1;
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    return arg_1.b;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(!select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, any(vec3<bool>(true, true, false))), true), !func_4(func_3(vec3<bool>(true, false, true)), Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), true, -vec2<i32>(37611i, 0i), ~(-36623i))), func_3(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))).zx >> (u_input.d % vec2<u32>(32u)), global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(~u_input.a)), 12u)]);
    let var_1 = ~firstTrailingBit(-(~1i));
    var var_2 = var_0.b;
    return u_input.a;
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = func_2(1f);
    global0 = array<i32, 12>();
    var var_1 = Struct_1(vec4<bool>(any(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(false, false, arg_0.x, arg_0.x), true)), arg_0.x, ~max(841u, u_input.c.x) >= (~u_input.b & u_input.b), arg_0.x), arg_0.x & (_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(19951u, 12u)], 1i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 12u)], 12941i))) <= _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(~u_input.c.x, 12u)])), select(reverseBits(-vec2<i32>(1i, global0[_wgslsmith_index_u32(106234u, 12u)])), firstTrailingBit(~vec2<i32>(16239i, global0[_wgslsmith_index_u32(1u, 12u)])), select(!vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true))) ^ ~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(24231u, 12u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 12u)])), 2147483647i);
    var var_2 = _wgslsmith_f_op_f32(-700f * 1f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1176f * -410f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(690f + 1554f), _wgslsmith_div_f32(-1429f, -120f)))));
    var var_3 = Struct_1(!vec4<bool>(true, arg_0.x, any(arg_0), arg_0.x), true, abs(vec2<i32>(-abs(global0[_wgslsmith_index_u32(5082u, 12u)]), (global0[_wgslsmith_index_u32(13319u, 12u)] >> (75830u % 32u)) | -2147483647i)), -1i);
    return all(!(!select(var_3.a.ywy, var_3.a.yzw, var_3.a.zzw))) && var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, all(vec4<bool>(true, false, false, true)), true), true, true), vec4<bool>(!func_1(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), true, true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))), any(vec2<bool>(all(vec2<bool>(true, false)) & true, false)));
    let var_1 = ~17184u;
    global0 = array<i32, 12>();
    let var_2 = var_0.x;
    let var_3 = vec4<u32>(countOneBits(~(25654u & var_1)), 4294967295u, var_1, ~(~var_1)) | vec4<u32>(min(_wgslsmith_div_u32(_wgslsmith_div_u32(var_1, u_input.c.x), ~49011u), ~4294967295u & (var_1 | var_1)), u_input.b, 87876u, ~select(~u_input.b, min(u_input.d.x, u_input.a), all(var_0.wyz)));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~4358i), _wgslsmith_mult_i32(~(2734i >> (1u % 32u)), 21786i), true));
}

