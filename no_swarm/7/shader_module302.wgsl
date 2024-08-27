struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> bool {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    return !(all(vec4<bool>(arg_1, false, arg_0.x, false)) == any(!vec3<bool>(arg_0.x, false, false))) & arg_1;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = vec3<i32>(global0[_wgslsmith_index_u32(~0u, 16u)], _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 29868i), global0[_wgslsmith_index_u32(firstTrailingBit(45448u), 16u)]), firstTrailingBit(global0[_wgslsmith_index_u32(abs(u_input.a.x), 16u)])), global0[_wgslsmith_index_u32(33342u, 16u)]), global0[_wgslsmith_index_u32(u_input.a.x, 16u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 511f, _wgslsmith_f_op_f32(ceil(-1145f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-646f, -384f, 598f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(819f, -857f, arg_0.x))))), vec3<f32>(468f, arg_0.x, -1000f)))), select(!vec3<bool>(u_input.a.x >= u_input.a.x, arg_0.x != -368f, true), vec3<bool>(func_3(vec2<bool>(true, true), true), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), true), false & (true | any(vec4<bool>(true, false, false, false))))));
    var var_2 = firstLeadingBit(vec4<i32>(~countOneBits(var_0.x), min(countOneBits(-2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -14756i, var_0.x, 1i), vec4<i32>(-19359i, global0[_wgslsmith_index_u32(8379u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], -2147483647i))), var_0.x, 78481i));
    let var_3 = max(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, u_input.a));
    var_0 = var_2.zyy;
    return var_3.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = ~(~(~(~(~vec4<u32>(u_input.a.x, 9719u, 12839u, 0u)))));
    let var_1 = all(!(!(!vec3<bool>(true, arg_1, arg_1))));
    var var_2 = _wgslsmith_mod_u32(countOneBits(4294967295u & _wgslsmith_div_u32(u_input.a.x, func_2(vec2<f32>(-2310f, -650f)))), ~(~93380u));
    global0 = array<i32, 16>();
    var_2 = abs(_wgslsmith_clamp_u32((~var_0.x ^ _wgslsmith_mod_u32(var_0.x, 29138u)) & ~(~u_input.a.x), ~_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(max(-vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(105327u, 16u)], 24967i), vec3<i32>(countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), _wgslsmith_mult_i32(0i, 2147483647i), i32(-1i) * -20383i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(38097u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 0i, -34082i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], -1i, global0[_wgslsmith_index_u32(28348u, 16u)]), false))) | (vec3<i32>(func_1(vec2<i32>(30090i, -1i), true, 896f, 1556f) >> (u_input.a.x % 32u), abs(~global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), abs(i32(-1i) * -30885i)) | ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-14777i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), global0[_wgslsmith_index_u32(~4294967295u, 16u)], 1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-158f + _wgslsmith_f_op_f32(495f * 1000f))), -288f, _wgslsmith_f_op_f32(-1367f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(2873f)), _wgslsmith_f_op_f32(-632f * -513f), var_0.x < global0[_wgslsmith_index_u32(36342u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(128f * 699f), _wgslsmith_f_op_f32(step(-193f, 295f)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(511f - 833f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-780f)), 1900f)), -419f, _wgslsmith_div_f32(675f, _wgslsmith_f_op_f32(f32(-1f) * -1254f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1413f, 214f, -1343f, 1000f) * vec4<f32>(283f, 566f, 1416f, -497f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(877f, -1000f, -250f, 743f)))))));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1643f + var_1.x) - _wgslsmith_f_op_f32(215f * var_1.x))), -940f), select(vec4<bool>(true, -947f <= var_1.x, true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), vec4<bool>(select(false, false, false) && false, false, (var_0.x >> (0u % 32u)) > global0[_wgslsmith_index_u32(0u, 16u)], !any(vec2<bool>(true, true))), true), Struct_1(firstTrailingBit(u_input.a.xz), ~(2147483647i | global0[_wgslsmith_index_u32(~0u, 16u)]), _wgslsmith_f_op_vec2_f32(var_1.xz + vec2<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(min(var_1.x, 110f))))), vec2<i32>(-1i, reverseBits(-(global0[_wgslsmith_index_u32(64353u, 16u)] ^ 2147483647i))));
    global0 = array<i32, 16>();
    let var_3 = vec2<bool>(false, var_2.b.x);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(70156u), 0i);
}

