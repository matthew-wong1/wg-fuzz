struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(1u, 4294967295u, 0u, 36888u, 20542u, 56416u, 43633u, 0u, 1u, 6767u, 4294967295u, 90552u, 18252u, 4294967295u, 39953u);

var<private> global1: vec3<i32> = vec3<i32>(-9571i, 20195i, -33430i);

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 71195u);

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, false)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(~(14151u & global2.x), 12u)];
    let var_1 = Struct_1(var_0.a);
    global1 = vec3<i32>(max(-27424i, u_input.a) ^ _wgslsmith_div_i32(i32(-1i) * -1i, -11229i), max(-74068i, abs(_wgslsmith_div_i32(2147483647i, abs(u_input.a)))), 18984i);
    global1 = ~select(vec3<i32>(_wgslsmith_dot_vec2_i32(-global1.yx, global1.xy), -firstTrailingBit(-10049i), -27925i), ~(~vec3<i32>(global1.x, u_input.a, 1i) ^ vec3<i32>(0i, u_input.a, u_input.a)), false);
    var var_2 = select(vec2<bool>(~(~4294967295u) != (max(u_input.b.x, 73062u) & firstLeadingBit(global2.x)), !any(var_0.a)), select(!vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(!any(vec2<bool>(true, var_1.a.x)), any(vec3<bool>(false, var_1.a.x, var_1.a.x))), true), select(var_1.a.ww, var_1.a.zw, var_1.a.xw));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1092f))) - _wgslsmith_f_op_f32(1f * -846f));
}

fn func_2() -> vec4<u32> {
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1329f)) - 1f) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-456f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))) <= _wgslsmith_f_op_f32(f32(-1f) * -936f), true | (true | any(vec2<bool>(true, true))), true), select(vec4<bool>(true, false, false, _wgslsmith_f_op_f32(sign(1592f)) == 259f), !vec4<bool>(any(vec3<bool>(false, true, true)), false, true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), !select(vec4<bool>(true, any(vec2<bool>(false, false)), select(true, false, true), true), vec4<bool>(true, true, true, true), !any(vec4<bool>(false, false, false, false))));
    global1 = vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -u_input.a, select(-2147483647i, 24001i, var_0.x), -8483i), ~(-vec4<i32>(-27567i, global1.x, global1.x, u_input.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global1.zz, -vec2<i32>(global1.x, -34795i)), 1i, u_input.a), firstTrailingBit(-firstTrailingBit(vec3<i32>(global1.x, u_input.a, u_input.a)))), countOneBits(~u_input.a));
    global1 = (_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_mult_i32(-10486i, global1.x), global1.x), vec3<i32>(firstLeadingBit(global1.x), -2147483647i, global1.x)) | _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a, 1i), abs(-vec3<i32>(u_input.a, -24632i, global1.x)))) | _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-13563i, global1.x, -49866i), min(~vec3<i32>(-47864i, -28925i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 44658i) >> (u_input.b % vec3<u32>(32u)), vec3<i32>(1i, -30701i, 1i))));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-867f))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1374f))))), -2498f);
    let var_2 = -vec2<i32>(-2147483647i ^ ((u_input.a & u_input.a) >> (_wgslsmith_sub_u32(u_input.b.x, global2.x) % 32u)), ~global1.x);
    return vec4<u32>(62906u, global2.x, ~(~0u), abs(4294967295u | _wgslsmith_add_u32(~77601u, u_input.b.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = !select(vec2<bool>(arg_2.a.x, any(!arg_2.a.xyy)), select(!vec2<bool>(arg_1, true), arg_2.a.zy, !arg_2.a.zy), select(!arg_2.a.zy, select(select(vec2<bool>(arg_1, true), arg_2.a.ww, arg_2.a.x), !arg_2.a.xx, vec2<bool>(arg_1, arg_2.a.x)), true));
    var var_1 = ~(-vec4<i32>(-2017i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -21587i), global1.yy), reverseBits(global1.x >> (0u % 32u)), 32246i));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(78278u, u_input.b.x, arg_0, arg_0), vec4<u32>(global2.x, 47914u, 1u, global2.x), arg_2.a.x) ^ ~vec4<u32>(arg_0, 4294967295u, global0[_wgslsmith_index_u32(10390u, 15u)], global0[_wgslsmith_index_u32(global2.x, 15u)]), ~vec4<u32>(1u, 60874u, 1u, u_input.b.x), any(select(arg_2.a, vec4<bool>(true, true, true, true), true))), func_2() | ~vec4<u32>(global2.x, u_input.b.x, global2.x, arg_0)) & u_input.b.x, 12u)];
    var_0 = !var_2.a.wx;
    let var_3 = arg_2;
    return !var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(!vec4<bool>(true, all(vec3<bool>(true, false, true)), true, all(vec3<bool>(false, false, false))), !vec4<bool>(func_1(u_input.b.x, true, Struct_1(vec4<bool>(false, true, true, true))), u_input.b.x != 48683u, any(vec3<bool>(true, true, false)), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)));
    var var_1 = -vec3<i32>(~global1.x, abs(_wgslsmith_sub_i32(global1.x, -1i) ^ 10900i), abs(2147483647i));
    var_1 = ~(-_wgslsmith_add_vec3_i32(vec3<i32>(-12362i, -75952i, _wgslsmith_clamp_i32(global1.x, 2147483647i, global1.x)), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, global1.x, var_1.x), vec3<i32>(var_1.x, 0i, global1.x))));
    global2 = vec2<u32>(u_input.b.x, 70986u);
    let var_2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, global1.x, u_input.a), ~global0[_wgslsmith_index_u32(~35848u & global2.x, 15u)]);
}

