struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 24> = array<u32, 24>(41702u, 0u, 1u, 20604u, 40755u, 27057u, 18369u, 0u, 14022u, 26434u, 4882u, 41071u, 1u, 0u, 65512u, 83239u, 21553u, 54057u, 93341u, 13591u, 0u, 0u, 4294967295u, 4294967295u);

var<private> global2: Struct_2;

var<private> global3: f32 = -427f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = ~(~(~_wgslsmith_add_u32(~8807u, u_input.d.x)));
    var var_1 = _wgslsmith_dot_vec3_i32(global2.a.a.xwz, global2.a.a.xww);
    var var_2 = u_input.b;
    global1 = array<u32, 24>();
    var_1 = 0i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x)), _wgslsmith_f_op_f32(abs(global2.a.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.b.x, 736f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-779f + global2.a.b.x))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> Struct_3 {
    global3 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_0 = firstLeadingBit(min(vec2<i32>(-45985i, u_input.c.x) >> (~vec2<u32>(u_input.e, arg_2.x) % vec2<u32>(32u)), select(arg_1.a.zz, vec2<i32>(arg_3, 1i), true))) << (select(~vec2<u32>(min(56014u, 13394u), ~global1[_wgslsmith_index_u32(4294967295u, 24u)]), min(firstTrailingBit(abs(arg_2)), vec2<u32>(25735u, global1[_wgslsmith_index_u32(4294967295u, 24u)]) & ~u_input.b), true) % vec2<u32>(32u));
    let var_1 = arg_2 & ~(~_wgslsmith_clamp_vec2_u32(arg_2, firstLeadingBit(arg_2), vec2<u32>(7530u, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * global2.a.b.x));
    let var_3 = vec3<bool>(false, -353f > var_2, -1i >= arg_3);
    return Struct_3(global2.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = vec2<bool>(var_0.x, !(var_0.x && (min(0u, 1u) == arg_3.x)));
    global1 = array<u32, 24>();
    global3 = global2.a.b.x;
    let var_2 = func_3(arg_2.a.b, func_3(vec2<f32>(func_3(vec2<f32>(arg_2.a.b.x, arg_1.a.b.x), func_3(vec2<f32>(global2.a.b.x, arg_1.a.b.x), Struct_1(vec4<i32>(arg_1.a.a.x, u_input.a.x, u_input.a.x, 0i), vec2<f32>(global2.a.b.x, -1174f)), vec2<u32>(4294967295u, 0u), -43716i).a, firstTrailingBit(vec2<u32>(0u, u_input.e)), _wgslsmith_clamp_i32(u_input.a.x, arg_1.a.a.x, arg_2.a.a.x)).a.b.x, arg_2.a.b.x), func_3(_wgslsmith_f_op_vec2_f32(max(global2.a.b, _wgslsmith_div_vec2_f32(arg_1.a.b, vec2<f32>(-1000f, -1000f)))), Struct_1(max(vec4<i32>(global2.a.a.x, arg_1.a.a.x, global2.a.a.x, u_input.a.x), vec4<i32>(arg_2.a.a.x, -2147483647i, -8701i, arg_1.a.a.x)), _wgslsmith_f_op_vec2_f32(-global2.a.b)), select(vec2<u32>(1u, u_input.b.x), vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), var_0.wy) ^ vec2<u32>(69824u, global1[_wgslsmith_index_u32(16194u, 24u)]), arg_1.a.a.x).a, vec2<u32>(u_input.d.x >> (0u % 32u), firstTrailingBit(u_input.b.x | 142234u)), countOneBits(47576i)).a, u_input.d.xx, 2302i);
    return Struct_2(Struct_1(~arg_2.a.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.b.x, 697f)))))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    global2 = func_4(select(!(!select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(false, false, arg_0, false))), !vec4<bool>(arg_0, any(vec4<bool>(true, true, true, arg_0)), all(vec3<bool>(arg_0, arg_0, false)), !arg_0), !select(vec4<bool>(false, arg_0, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_0, true, false), vec4<bool>(arg_0, false, false, arg_0)), !vec4<bool>(arg_0, arg_0, false, arg_0))), func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(415f, _wgslsmith_f_op_f32(func_2(global2.a.a.xw))), _wgslsmith_f_op_vec2_f32(global2.a.b * vec2<f32>(577f, 768f)))), Struct_1(u_input.c, global2.a.b), vec2<u32>(4294967295u, ~(arg_1 >> (arg_1 % 32u))), -_wgslsmith_clamp_i32(1i, 1i, _wgslsmith_div_i32(-41756i, global2.a.a.x))), func_3(global2.a.b, func_3(_wgslsmith_f_op_vec2_f32(global2.a.b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -164f))), Struct_1(global2.a.a, _wgslsmith_f_op_vec2_f32(-global2.a.b)), vec2<u32>(global1[_wgslsmith_index_u32(1u, 24u)] >> (u_input.e % 32u), ~4294967295u), -2147483647i).a, firstLeadingBit(~u_input.b) & firstTrailingBit(~u_input.b), u_input.c.x), u_input.d.zx);
    global2 = func_4(!vec4<bool>(~arg_1 != ~arg_1, !(150755u >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)], 24u)]), _wgslsmith_f_op_f32(step(global2.a.b.x, global2.a.b.x)) != global2.a.b.x, arg_0), func_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(global2.a.b)))), func_4(select(!vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, false, false), true), Struct_3(func_3(global2.a.b, global2.a, u_input.d.zw, global2.a.a.x).a), func_3(global2.a.b, Struct_1(vec4<i32>(global2.a.a.x, global2.a.a.x, -5691i, arg_2.x), vec2<f32>(global2.a.b.x, 1579f)), u_input.b | u_input.d.ww, -u_input.c.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, u_input.e), u_input.b)).a, u_input.b, u_input.a.x), Struct_3(global2.a), firstTrailingBit(vec2<u32>(firstLeadingBit(~u_input.d.x), 3496u)));
    let var_0 = global2.a.a;
    global3 = _wgslsmith_div_f32(global2.a.b.x, global2.a.b.x);
    let var_1 = ~u_input.b.x;
    return global2.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-(firstTrailingBit(0i) << (0u % 32u)), _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global2.a.a.x), vec2<i32>(global2.a.a.x, -2147483647i)), reverseBits(u_input.c.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-841f, 734f)), _wgslsmith_f_op_f32(func_1(false, 4294967295u, global2.a.a.xx))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2.a.b.x, 573f)), _wgslsmith_f_op_f32(ceil(global2.a.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b.x * global2.a.b.x)));
    var var_2 = global2.a.a.x << (select(_wgslsmith_mult_u32(min(u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(245u, 24u)], 24u)]), max(u_input.b.x, u_input.b.x)) | 1u, ~_wgslsmith_clamp_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79473u, 24u)], 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], false), 1u, _wgslsmith_dot_vec3_u32(u_input.d.ywy, u_input.d.wzw)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))))) % 32u);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(567f))))));
    var var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(select(0u, 1u, global1[_wgslsmith_index_u32(u_input.b.x, 24u)] < global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)]), _wgslsmith_mult_u32(~51414u, ~4294967295u), ~(24120u ^ u_input.b.x), 53300u), ~vec4<u32>(abs(81596u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 71726u, 0u)), ~abs(firstLeadingBit(u_input.d)));
    var var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~vec2<i32>(9458i, global2.a.a.x)))))));
    let var_6 = global2.a;
    let var_7 = func_3(_wgslsmith_f_op_vec2_f32(var_1.xz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.b.x, var_1.x) - global2.a.b))), func_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2118f, -535f))))), Struct_1(global2.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.b * vec2<f32>(547f, -318f)) * _wgslsmith_f_op_vec2_f32(var_1.xy - vec2<f32>(-473f, 281f)))), u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-u_input.c, var_6.a), global2.a.a)).a, ~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(99764u, global1[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_mod_u32(4294967295u, 38242u)), _wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)] ^ global1[_wgslsmith_index_u32(0u, 24u)])), -u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(i32(-1i) * -11002i), ~u_input.c.x, _wgslsmith_mod_i32(var_6.a.x, 1i)));
}

