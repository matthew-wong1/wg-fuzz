struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-15549i, 1i, -37048i), 156f);

var<private> global1: array<Struct_2, 24>;

var<private> global2: vec3<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = !(!vec4<bool>(any(select(arg_0, arg_0, false)), arg_0.x, -695f < _wgslsmith_f_op_f32(exp2(global0.b)), false));
    global1 = array<Struct_2, 24>();
    let var_1 = select(global0.a.yx, vec2<i32>(2147483647i, -32955i), vec2<bool>(global0.b != global2.x, u_input.a <= u_input.a));
    global0 = Struct_1(vec3<i32>(i32(-1i) * -7710i, -var_1.x, 27943i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    let var_2 = abs(min(vec3<u32>(~0u, u_input.b.x, firstTrailingBit(abs(1u))), _wgslsmith_sub_vec3_u32(u_input.b.yyw, vec3<u32>(36007u, 1u, 10404u)) ^ reverseBits(~vec3<u32>(29704u, u_input.a, 25909u))));
    return var_0.x;
}

fn func_2() -> vec3<bool> {
    global0 = Struct_1(global0.a, global0.b);
    let var_0 = vec3<i32>(2147483647i << (u_input.a % 32u), global0.a.x, -35899i);
    global0 = Struct_1(-vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.a.x, var_0.x), var_0.x), var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(29919i, global0.a.x, var_0.x, global0.a.x) << (vec4<u32>(4294967295u, 60921u, 62553u, u_input.a) % vec4<u32>(32u)), ~vec4<i32>(-8456i, var_0.x, 27517i, global0.a.x))), global2.x);
    global0 = Struct_1(vec3<i32>(select(global0.a.x, min(global0.a.x, var_0.x), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), -min(~global0.a.x, i32(-1i) * -15053i), global0.a.x | ~abs(-2147483647i)), _wgslsmith_f_op_f32(-global0.b));
    var var_1 = !select(vec3<bool>(any(vec3<bool>(false, true, false)) & any(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, true, true)), func_3(vec4<bool>(true, true, true, true))), vec3<bool>(true, false, true || (836f < global0.b)), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), u_input.b.x < u_input.a), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)));
    return !select(select(select(vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, var_1.x, false)), select(!vec3<bool>(false, true, var_1.x), !vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, false, true)), vec3<bool>(all(var_1.zx), u_input.b.x != u_input.b.x, var_1.x)), !(!select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x))), any(select(select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), var_1.zx), select(var_1.xy, var_1.zz, vec2<bool>(true, var_1.x)), vec2<bool>(var_1.x, false))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1269f))) * _wgslsmith_f_op_f32(f32(-1f) * -2967f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1725f);
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(697f + _wgslsmith_f_op_f32(arg_0.a.x * global0.b))))), arg_0.a.wxy);
    var var_1 = !select(select(vec3<bool>(true, false, arg_0.a.x > arg_0.a.x), func_2(), select(true, true, true)), vec3<bool>(true, true, true), !all(vec2<bool>(false, true)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(select(abs(4294967295u), 44405u, ~arg_2.x >= 1u), ~arg_3.x), _wgslsmith_clamp_u32(39098u, _wgslsmith_dot_vec3_u32(u_input.b.wzz, vec3<u32>(u_input.b.x, 553u, arg_2.x)), u_input.a) << (~(~_wgslsmith_mult_u32(arg_3.x, 2160u)) % 32u), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.a, arg_0.b)) ^ vec3<u32>(0u, 1u, 0u), arg_2.yxy)), 24u)];
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a.ywx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.a.ywx))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.a.x)))) * _wgslsmith_f_op_f32(global0.b * global0.b))));
    return func_2().zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(max(_wgslsmith_div_vec2_u32(~u_input.b.wx, ~u_input.b.zw), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 78391u), ~vec2<u32>(u_input.a, 117117u))) | ~_wgslsmith_mod_vec2_u32(u_input.b.wz, vec2<u32>(u_input.b.x, u_input.a)));
    let var_1 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(77069u, _wgslsmith_add_u32(~u_input.a, 56432u)), 24u)], 0i, ~u_input.b << (u_input.b % vec4<u32>(32u)), _wgslsmith_div_vec3_u32(~u_input.b.ywx, ~vec3<u32>(~0u, var_0.x, 31543u)));
    global0 = Struct_1(~countOneBits(_wgslsmith_sub_vec3_i32(global0.a, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_f_op_f32(-295f - -1085f)))) * _wgslsmith_f_op_f32(min(-467f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + global0.b), global0.b)))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1288f, global0.b, -467f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1516f, -704f, global2.x)))), vec3<f32>(_wgslsmith_f_op_f32(1100f + 202f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_div_f32(-481f, global2.x)), 1f)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1356f, 586f, global2.x, global2.x))), vec4<f32>(-1000f, global0.b, -1051f, global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, global2.x, global2.x))) * vec4<f32>(300f, global2.x, -1000f, _wgslsmith_f_op_f32(global0.b - -349f))))), abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(10929u, 87290u, 104221u, 4294967295u), u_input.b))) | ~(~max(u_input.b.x, 0u)), firstLeadingBit(firstTrailingBit(firstTrailingBit(-vec4<i32>(-35000i, -2147483647i, 38927i, global0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(-26797i, ~countOneBits(global0.a.x)), _wgslsmith_dot_vec3_i32(var_2.c.zzy, _wgslsmith_sub_vec3_i32(var_2.c.xyx, vec3<i32>(0i, global0.a.x, var_2.c.x) >> (vec3<u32>(u_input.a, 15664u, 90161u) % vec3<u32>(32u)))), var_2.c.x), vec2<u32>(~abs(min(1307u, 13314u)), _wgslsmith_sub_u32(reverseBits(_wgslsmith_clamp_u32(3881u, 0u, u_input.a)), 0u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_2.a.zwy - var_2.a.yyx), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -998f, var_2.a.x)), var_2.a.xyw)))))));
}

