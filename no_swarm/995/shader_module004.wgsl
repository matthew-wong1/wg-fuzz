struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: vec3<u32> = vec3<u32>(14896u, 1u, 1u);

var<private> global2: vec3<f32> = vec3<f32>(1000f, 561f, 314f);

var<private> global3: bool;

var<private> global4: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>) -> bool {
    return true;
}

fn func_3() -> u32 {
    var var_0 = false;
    var var_1 = Struct_2(~vec3<i32>(-1i << (global1.x % 32u), ~1i, abs(45033i)));
    global0 = array<f32, 9>();
    let var_2 = var_1.a.x;
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(189f, -1198f, 1000f) * vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 9u)], -1660f, 1946f)))))), vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, 34915u), 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1157f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(69616u, 9u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 9u)]), all(global4.wwy))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1446f - 1281f) + global0[_wgslsmith_index_u32(min(global1.x, 17374u), 9u)]))));
    return ~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x ^ 1u, 20452u, global1.x, 44716u << (0u % 32u)), ~vec4<u32>(global1.x, global1.x, 1u, 19184u) ^ vec4<u32>(global1.x, 1u, global1.x, global1.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: vec4<bool>) -> vec3<u32> {
    let var_0 = Struct_1(2147483647i);
    var var_1 = firstLeadingBit(arg_0.x);
    global3 = false;
    let var_2 = Struct_1(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, var_0.a, u_input.a.x, -1i), vec4<i32>(u_input.a.x, -13033i, arg_0.x, u_input.a.x))), select(-(~vec4<i32>(-20783i, arg_0.x, var_0.a, 1i)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(1i, 16546i, arg_0.x, 78834i), vec4<i32>(0i, arg_0.x, u_input.a.x, u_input.a.x), false), vec4<i32>(var_0.a, arg_0.x, 2147483647i, arg_0.x), vec4<i32>(var_0.a, 17357i, -1i, 0i)), !arg_3)));
    return ~(select(select(~vec3<u32>(global1.x, 0u, arg_2), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1.x, 8966u), vec3<u32>(arg_2, arg_2, global1.x)), true), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 24355u, 1u), vec3<u32>(global1.x, 0u, 4294967295u)), ~vec3<u32>(global1.x, arg_2, global1.x)), vec3<bool>(arg_1, global4.x, func_2(arg_3.zwz))) >> (countOneBits(vec3<u32>(arg_2 << (arg_2 % 32u), func_3(), _wgslsmith_sub_u32(1u, global1.x))) % vec3<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global1 = select(abs(~vec3<u32>(global1.x, global1.x, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(33298u, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global1.x, global1.x, 1u), vec4<u32>(global1.x, 3645u, global1.x, global1.x)), ~(global1.x | 0u)), vec3<u32>(max(_wgslsmith_mod_u32(global1.x, 54667u), ~global1.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, 4294967295u), vec4<u32>(global1.x, 1u, 68583u, 0u))), ~(global1.x << (global1.x % 32u)))), -2147483647i >= _wgslsmith_div_i32(~_wgslsmith_mult_i32(-16330i, u_input.a.x), u_input.a.x));
    var var_0 = func_4(select(max(u_input.a, u_input.a), -u_input.a | u_input.a, vec2<bool>(func_2(!global4.zxw), false)), true, func_3(), !(!vec4<bool>(false, select(false, false, global4.x), false, true)));
    var var_1 = _wgslsmith_sub_u32(~(~max(var_0.x & 46185u, global1.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(84179u, ~0u), 9302u) & ~(~(~global1.x)));
    let var_2 = !vec3<bool>(true, false, any(select(!global4.xy, global4.xx, vec2<bool>(false, global4.x))));
    let var_3 = Struct_1(i32(-1i) * -32867i);
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    global3 = false;
    var var_0 = global4.x;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-156f)), 980f, true));
    let var_2 = func_1();
    var var_3 = Struct_2(vec3<i32>(func_1().a, _wgslsmith_div_i32(1i & arg_2.a, 12691i), 2147483647i));
    return vec4<u32>(max(_wgslsmith_div_u32(~arg_3, arg_3), 1u), 5645u, 60920u, 106472u);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global1 = vec3<u32>(countOneBits(~11928u), global1.x, ~_wgslsmith_div_u32(~arg_1.x, 4294967295u | ~global1.x));
    var var_0 = reverseBits(arg_2.a.x);
    var var_1 = vec4<f32>(global0[_wgslsmith_index_u32(~min(~arg_1.x >> (1u % 32u), ~0u), 9u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.xy, vec2<u32>(62578u, 4294967295u)), 9u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1035f - 271f), global2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 9u)], -1533f, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-175f, -827f)) * -215f))));
    var var_2 = !any(vec2<bool>(true, false));
    var var_3 = func_1().a;
    return Struct_1(-2065i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(global1.xx >> (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 1u), global1.zy), vec2<u32>(1u, 25785u) << (global1.zx % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_1 = Struct_1(-u_input.a.x);
    let var_2 = func_6(!vec3<bool>(global4.x, !global4.x, false), ~(func_5(Struct_2(vec3<i32>(0i, -2147483647i, 1i)), abs(vec3<i32>(9117i, -6910i, 1i)), func_1(), 19982u) >> ((func_5(Struct_2(vec3<i32>(var_1.a, u_input.a.x, var_1.a)), vec3<i32>(-30966i, var_1.a, -2147483647i), var_1, var_0.x) & (vec4<u32>(35964u, var_0.x, global1.x, 41414u) | vec4<u32>(global1.x, 34196u, var_0.x, 0u))) % vec4<u32>(32u))), Struct_2(vec3<i32>(1i, 5703i, 1i)), firstTrailingBit(firstTrailingBit(~0u)));
    var var_3 = var_1;
    global1 = vec3<u32>(~(~(~var_0.x)), 75803u, ~func_4(u_input.a, func_2(global4.xyy), 19570u, !vec4<bool>(global4.x, global4.x, global4.x, global4.x)).x) ^ vec3<u32>(global1.x, 0u, _wgslsmith_sub_u32(~1u, 0u) ^ _wgslsmith_mult_u32(8554u, var_0.x));
    let var_4 = var_1;
    let var_5 = Struct_2(~vec3<i32>(_wgslsmith_div_i32(~(-18884i), abs(var_2.a)), 2147483647i, abs(_wgslsmith_clamp_i32(2147483647i, var_4.a, u_input.a.x))));
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_5.a.x, _wgslsmith_mult_i32(var_2.a >> (6178u % 32u), _wgslsmith_clamp_i32(var_6.a.x, -1i, 1813i))) | _wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_5.a.x, var_3.a, u_input.a.x), var_5.a)), -func_1().a), var_0.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f - _wgslsmith_f_op_f32(global2.x + global2.x)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.x & 4294967295u, 9u)] - _wgslsmith_f_op_f32(-global2.x)))), var_5.a.zz);
}

