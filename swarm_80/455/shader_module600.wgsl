struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<u32, 8>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> i32 {
    global1 = arg_0;
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-782f)))));
    global1 = arg_0;
    var var_2 = vec2<u32>(abs(~(~(~4294967295u))), ~(~countOneBits(global2[_wgslsmith_index_u32(u_input.c.x, 8u)])));
    return ~(~min(u_input.a.x, min(_wgslsmith_add_i32(arg_2.a, -2147483647i), 21334i << (var_2.x % 32u))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(~2147483647i, 14133i);
    global0 = ~(-1i);
    global1 = var_0;
    global1 = var_0;
    global0 = func_3(var_0, -1i, var_0, 34851i);
    return Struct_1(-34868i, abs(2147483647i));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = 2147483647i;
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(-arg_0));
    var_0 = Struct_1(u_input.b.x, ~(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(var_0.a, arg_3.b)) >> (4294967295u % 32u))));
    let var_1 = u_input.a.zz;
    var var_2 = u_input.b.x < global1.a;
    return arg_1.a;
}

fn func_1() -> bool {
    global0 = global1.b;
    global0 = 18269i;
    let var_0 = _wgslsmith_clamp_i32(-u_input.a.x | -1i, _wgslsmith_div_i32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(875f, -1035f))), Struct_1(~u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, global1.b, u_input.b.x, -2481i))), Struct_1(abs(u_input.a.x), 1i), func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(726f, -377f))))), u_input.b.x), 1i);
    var var_1 = !select(vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), true), false);
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(653f, -658f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1338f, 154f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1051f)), _wgslsmith_f_op_f32(-838f + 948f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-451f, 1475f)))), !select(vec2<bool>(true, false), !vec2<bool>(true, var_1.x), var_1.x & var_1.x))));
    return !all(select(select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(false, false), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false))), vec2<bool>(true, all(vec4<bool>(false, false, false, var_1.x))), -1000f <= _wgslsmith_f_op_f32(ceil(1552f))));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(965f, 101f), vec2<f32>(686f, 1934f)))))));
    global2 = array<u32, 8>();
    var var_1 = -arg_2.xz;
    let var_2 = Struct_1(22412i, -u_input.b.x);
    var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(18432i, var_0.b) & firstTrailingBit(select(vec2<i32>(18931i, global1.a), countOneBits(arg_2.yx), vec2<bool>(false, false))), min(-min(_wgslsmith_add_vec2_i32(arg_2.zz, arg_2.yx), ~vec2<i32>(var_2.a, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_add_i32(28159i, var_0.a)), ~_wgslsmith_mult_vec2_i32(arg_2.zz, vec2<i32>(19734i, u_input.b.x)))));
    return 342f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(countOneBits(u_input.c.x), func_1(), _wgslsmith_clamp_vec3_i32(u_input.a.xww, u_input.a.yxy, u_input.b.zyw))) - _wgslsmith_f_op_f32(f32(-1f) * -2036f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-393f, -614f)) * 725f)));
    var var_1 = vec4<bool>(!(all(vec3<bool>(true, true, true)) & all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true))), true, false, true);
    var_1 = select(select(select(vec4<bool>(true, var_1.x, 1i > global1.a, all(vec2<bool>(var_1.x, false))), !vec4<bool>(var_1.x, true, true, var_1.x), true), !(!select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true))), !(!vec4<bool>(true, true, true, var_1.x))), vec4<bool>(var_1.x, select(true, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)) < _wgslsmith_f_op_f32(var_0.x * -1589f), !select(var_1.x, true, var_1.x)), var_1.x, true), var_1.x);
    var var_2 = Struct_1(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_5(64551u, var_1.x, vec3<i32>(u_input.b.x, -1i, u_input.b.x))), _wgslsmith_f_op_f32(func_5(31398u, var_1.x, vec3<i32>(u_input.a.x, -27777i, -1i))))), func_2(_wgslsmith_f_op_vec2_f32(-var_0)), Struct_1(-1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(35994i, global1.a, global1.a), firstLeadingBit(vec3<i32>(-2147483647i, u_input.b.x, u_input.a.x)))), Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(-24839i, u_input.a.x), 0i), _wgslsmith_div_i32(global1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-27740i, u_input.a.x))))), firstTrailingBit(global1.b));
    global0 = u_input.a.x;
    let var_3 = ~_wgslsmith_clamp_u32(abs(9599u), reverseBits(~(~36720u)), 48941u);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<f32>(var_0.x, -823f, var_0.x), var_1.wwx))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_0.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -2119f, -189f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1155f, 1232f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1262f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-1023f)), 968f, _wgslsmith_f_op_f32(abs(var_0.x))), false))));
    var var_5 = select(var_1.x, var_1.x, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-115f)) * _wgslsmith_f_op_f32(func_5(26547u, true, vec3<i32>(u_input.a.x, global1.b, global1.a)))) > var_4.x) && var_1.x);
    let var_6 = firstLeadingBit(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(6698u, global2[_wgslsmith_index_u32(27275u, 8u)])) | (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 8u)])) << (_wgslsmith_mod_vec2_u32(u_input.c.zy, vec2<u32>(var_3, u_input.c.x)) % vec2<u32>(32u))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, 1u), 107636u ^ var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(4294967295u ^ var_3, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 4294967295u)), _wgslsmith_div_u32(abs(21202u), min(global2[_wgslsmith_index_u32(u_input.c.x, 8u)], 1u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 8u)], var_3), var_6), _wgslsmith_div_u32(var_6.x, u_input.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(func_5(_wgslsmith_div_u32(28291u, var_3), any(vec4<bool>(true, var_1.x, true, var_1.x)), u_input.a.zxy >> (u_input.c % vec3<u32>(32u)))), 1000f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(593f, var_4.x, var_4.x, -870f), vec4<f32>(var_4.x, -1000f, var_0.x, -616f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -1328f, -884f, var_0.x) + vec4<f32>(260f, var_4.x, var_0.x, -2213f))))))), u_input.a.xz);
}

