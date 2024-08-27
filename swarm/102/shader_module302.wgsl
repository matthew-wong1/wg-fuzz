struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, false, true, false, false, true, false, false, false, false, true, true, false, true, true, true, true, true, true, false, false, true, true);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(21544u, 0u, 50701u), vec3<i32>(51213i, -32643i, 2147483647i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    let var_0 = countOneBits(reverseBits(~u_input.b));
    var var_1 = 1i;
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-281f, -253f), _wgslsmith_f_op_f32(max(-1285f, 2147f)))), _wgslsmith_f_op_f32(-1504f * _wgslsmith_f_op_f32(-1063f + 1006f)), false)), _wgslsmith_f_op_f32(select(-1656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f)), 1u > _wgslsmith_mod_u32(u_input.b, global2.a.x))), _wgslsmith_div_f32(545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-338f, -295f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-425f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f) * _wgslsmith_f_op_f32(f32(-1f) * -1940f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-169f)))), -898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-911f, -1484f) * -236f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -599f)))))));
    global1 = array<bool, 24>();
    let var_3 = Struct_1(global2.a, global2.b);
    return -vec3<i32>(-u_input.a.x, 49100i, select(4122i, countOneBits(-global2.b.x), !(var_3.a.x < global2.a.x)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_1 {
    global1 = array<bool, 24>();
    global2 = Struct_1(min(global2.a, ~(~min(global2.a, vec3<u32>(global2.a.x, global2.a.x, global2.a.x)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.b.x | -2147483647i, ~global2.b.x, global2.b.x), global2.b), global2.b, ~min(abs(global2.b), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global2.b.x, global2.b.x), vec3<i32>(u_input.a.x, 1i, global2.b.x)))));
    global2 = Struct_1(global2.a ^ vec3<u32>(40847u, ~(~global2.a.x), max(_wgslsmith_mod_u32(u_input.b, 0u), ~global2.a.x)), func_3());
    var var_0 = countOneBits(u_input.a.yx);
    var_0 = abs(global2.b.xx);
    return Struct_1(global2.a ^ countOneBits(global2.a), min(global2.b, abs(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(global2.b.x, u_input.a.x, var_0.x))) ^ u_input.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -505f)))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-320f))))) + -672f);
    var var_1 = Struct_1(~((~global2.a >> ((vec3<u32>(0u, 15926u, global2.a.x) ^ global2.a) % vec3<u32>(32u))) & reverseBits(func_2(true, arg_0, vec2<bool>(true, arg_0.x), vec3<f32>(-1640f, 1197f, -1029f)).a)), countOneBits(-vec3<i32>(global2.b.x, global2.b.x, global2.b.x)));
    global2 = arg_1;
    var var_2 = -_wgslsmith_clamp_i32(reverseBits(-38072i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, global2.b.x, 2147483647i), vec4<i32>(arg_1.b.x, 2147483647i, u_input.a.x, arg_1.b.x))), _wgslsmith_sub_vec3_i32(-vec3<i32>(var_1.b.x, var_1.b.x, global2.b.x), global2.b | vec3<i32>(u_input.a.x, global2.b.x, var_1.b.x))), min(min(-u_input.a.x, abs(3672i)), u_input.a.x));
    return ~(~global2.a) & global2.a;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 18>();
    let var_0 = ~(-1i);
    var var_1 = arg_2;
    var var_2 = arg_2.a;
    let var_3 = select(select(!select(vec2<bool>(true, false), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(44077u, 24u)]), select(false, true, global1[_wgslsmith_index_u32(62297u, 24u)])), vec2<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 24u)], true, global1[_wgslsmith_index_u32(16097u, 24u)]))), !(true | !global1[_wgslsmith_index_u32(var_2.x, 24u)])), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(2267u << (0u % 32u), 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 24u)] & true, global1[_wgslsmith_index_u32(var_1.a.x, 24u)]), vec2<bool>(true, true)), any(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 24u)], false), vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 24u)], global1[_wgslsmith_index_u32(4685u, 24u)]), global1[_wgslsmith_index_u32(arg_3.a.x, 24u)])) || false);
    return arg_3;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_5(~(-19420i), ~u_input.b, Struct_1(vec3<u32>(~(~1u), arg_0, global2.a.x), global2.b), Struct_1(firstLeadingBit(func_4(vec2<bool>(true, true), func_2(true, vec2<bool>(true, global1[_wgslsmith_index_u32(global2.a.x, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(global2.a.x, 24u)], global1[_wgslsmith_index_u32(7316u, 24u)]), vec3<f32>(664f, -682f, 1423f)))), ~(~(~u_input.a))));
    let var_1 = !select(!vec4<bool>(true, global1[_wgslsmith_index_u32(global2.a.x, 24u)], true, true), select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(global2.a.x, 24u)], false, true)), select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 24u)], false, global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(var_0.a.x, 24u)]), !vec4<bool>(global1[_wgslsmith_index_u32(13185u, 24u)], global1[_wgslsmith_index_u32(global2.a.x, 24u)], true, global1[_wgslsmith_index_u32(18733u, 24u)]), 0i != global2.b.x), true & (global1[_wgslsmith_index_u32(1u, 24u)] | false)), false);
    let var_2 = 22605u;
    let var_3 = _wgslsmith_div_vec4_u32(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(60773u, 0u, arg_0, global2.a.x), vec4<u32>(var_0.a.x, var_2, var_2, var_0.a.x)) | ~vec4<u32>(var_0.a.x, arg_0, var_2, var_2)), countOneBits(countOneBits(vec4<u32>(firstTrailingBit(30018u), u_input.b, var_2, 5168u))));
    var var_4 = Struct_1((func_2(all(vec2<bool>(true, global1[_wgslsmith_index_u32(44806u, 24u)])), vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_1.x, false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1051f, 416f, 679f)))).a | global2.a) >> (vec3<u32>(~global2.a.x, reverseBits(firstLeadingBit(16536u)), firstTrailingBit(~var_2)) % vec3<u32>(32u)), vec3<i32>(firstLeadingBit(-2147483647i) >> (var_0.a.x % 32u), firstLeadingBit(-global2.b.x), 1i));
    return func_2(false, select(vec2<bool>(true, var_3.x > var_4.a.x), !select(var_1.zx, !var_1.xz, vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 24u)])), !global1[_wgslsmith_index_u32(min(~var_4.a.x, 0u), 24u)]), vec2<bool>(false, !global1[_wgslsmith_index_u32(func_4(var_1.zy, Struct_1(global2.a, var_0.b)).x, 24u)]), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1125f, -1886f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1017f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1269f) - _wgslsmith_div_f32(-1000f, -445f)) * 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(global2.a.zx);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(859f)))), _wgslsmith_f_op_f32(select(-356f, _wgslsmith_f_op_f32(1499f * 1000f), false))))), vec2<f32>(_wgslsmith_div_f32(-1661f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(806f - 369f), _wgslsmith_f_op_f32(sign(-403f)))))));
    global2 = func_1(global2.a.x);
    let var_2 = Struct_1(vec3<u32>(59284u, u_input.b, ~u_input.b), reverseBits(~(-firstLeadingBit(u_input.a))));
    var var_3 = Struct_1(~select(~(~vec3<u32>(0u, 65262u, 84455u)), global2.a, global1[_wgslsmith_index_u32(var_0.x, 24u)]), firstLeadingBit(~(-u_input.a) << (vec3<u32>(0u, 4294967295u, 4730u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, 512f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -2153f), vec2<f32>(var_1.x, var_1.x), true))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, var_1.x))))))));
}

