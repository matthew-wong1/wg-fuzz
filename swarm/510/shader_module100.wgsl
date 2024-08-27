struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: bool = false;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    global1 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, var_0.d.x, arg_0.d.x, -709f))))) + _wgslsmith_f_op_vec4_f32(arg_0.d - _wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, 408f, arg_0.d.x, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 483f, -642f, arg_0.d.x))))));
    let var_2 = global0[_wgslsmith_index_u32(66880u, 22u)];
    return var_0.b;
}

fn func_4(arg_0: i32) -> vec3<f32> {
    let var_0 = -105f;
    global0 = array<vec4<u32>, 22>();
    let var_1 = vec3<i32>(arg_0, -12970i, ~(~u_input.a)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(~u_input.c, 1u, ~76130u), vec3<u32>(~u_input.c, 1u, 27415u) & vec3<u32>(countOneBits(u_input.d), firstLeadingBit(u_input.d), u_input.b)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1132f - _wgslsmith_f_op_f32(-1f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, -1413f))))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(-259f, -937f), u_input.a >= abs(-19242i))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1113f, -154f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(912f * 163f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1337f, -372f, var_0.x) - vec3<f32>(-1945f, var_0.x, -1277f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -369f, 303f)) * _wgslsmith_f_op_vec3_f32(func_4(func_3(Struct_1(vec2<bool>(false, true), arg_0.a, u_input.d, vec4<f32>(1200f, var_0.x, var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -204f, -380f) * vec3<f32>(-1188f, var_0.x, var_0.x)), vec3<f32>(-200f, var_0.x, var_0.x))))));
    var var_1 = arg_0;
    var var_2 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), false | (true != any(vec4<bool>(false, true, true, false)))));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-11142i, ~(-24340i)) << ((select(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.d, u_input.c), vec2<bool>(true, true)) << (min(vec2<u32>(u_input.d, u_input.b), vec2<u32>(u_input.b, 37231u)) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(~vec2<i32>(1509i, -38912i)) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), (u_input.a | _wgslsmith_dot_vec2_i32(-vec2<i32>(-57267i, -2147483647i), max(vec2<i32>(0i, var_1.a), vec2<i32>(u_input.a, -1i)))) ^ _wgslsmith_add_i32(-7738i, _wgslsmith_add_i32(u_input.a | 31392i, u_input.a ^ var_1.a)), arg_0.a, arg_0.a);
    return abs(-2147483647i);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -arg_2.x, ~(~func_2(Struct_2(-2147483647i))), -(i32(-1i) * -3296i)), ~(vec4<i32>(_wgslsmith_sub_i32(arg_2.x, u_input.a), ~9100i, u_input.a, 2147483647i) | (abs(vec4<i32>(2147483647i, arg_2.x, arg_2.x, u_input.a)) << (vec4<u32>(u_input.c, u_input.b, u_input.c, 38418u) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x * arg_1.x)));
    let var_2 = select(global0[_wgslsmith_index_u32(~u_input.c | ~43365u, 22u)], (vec4<u32>(firstTrailingBit(4294967295u), ~4294967295u, ~4294967295u, u_input.c) & _wgslsmith_clamp_vec4_u32(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.d, 22u)]), max(global0[_wgslsmith_index_u32(u_input.d, 22u)], vec4<u32>(4294967295u, u_input.d, 20889u, 25580u)), global0[_wgslsmith_index_u32(u_input.c, 22u)] << (global0[_wgslsmith_index_u32(u_input.b, 22u)] % vec4<u32>(32u)))) | vec4<u32>(u_input.b, ~1552u, abs(u_input.d), 36364u), vec4<bool>(true, !arg_0.x, any(vec4<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, arg_0.x, false)), true, true)), arg_0.x));
    global0 = array<vec4<u32>, 22>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f - _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(round(arg_1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -1186f) - _wgslsmith_f_op_f32(-844f - 1025f)))));
    return vec4<bool>(arg_0.x & true, any(vec2<bool>(any(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), !(0u >= u_input.c))), all(!select(select(vec4<bool>(arg_0.x, false, true, true), vec4<bool>(true, false, arg_0.x, arg_0.x), false), select(vec4<bool>(true, true, arg_0.x, true), vec4<bool>(arg_0.x, true, true, true), arg_0.x), arg_0.x)), any(arg_0) & true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), abs(-(~(-2147483647i))), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-567f, -390f, -741f, 583f) * vec4<f32>(1049f, -368f, -1000f, 367f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 334f, -1602f, -2173f)), func_1(vec2<bool>(false, false), vec3<f32>(1000f, 489f, 1018f), vec3<i32>(u_input.a, u_input.a, 1i)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, abs(firstLeadingBit(-vec3<i32>(44411i, 2147483647i, u_input.a)) >> ((~vec3<u32>(0u, u_input.d, 47608u) >> (vec3<u32>(u_input.d, 20263u, 6565u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(-vec2<i32>(-48741i, 38957i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, -1i), vec2<i32>(1i, var_0.b))), _wgslsmith_f_op_vec2_f32(var_0.d.wy + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.d.xx * _wgslsmith_f_op_vec2_f32(vec2<f32>(181f, -687f) - var_0.d.ww))))), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(54913u, var_0.c, min(u_input.c, 8243u)), vec3<u32>(0u, u_input.b, u_input.d) >> (vec3<u32>(30899u, 1u, u_input.b) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, var_0.c, 1u), vec3<u32>(var_0.c, 1u, u_input.b)), vec3<u32>(var_0.c, u_input.c, 52688u))), ~abs(~vec3<u32>(10142u, u_input.d, u_input.d))));
}

