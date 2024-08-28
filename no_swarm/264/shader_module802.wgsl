struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, i32(-2147483648));

var<private> global1: array<i32, 31>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-687f, arg_3.x, arg_3.x), vec3<f32>(arg_0, -2260f, -1885f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_0, arg_0))))) * vec3<f32>(arg_3.x, 238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1020f + arg_0) + -1120f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1555f, arg_0, arg_3.x), vec3<f32>(arg_0, 162f, arg_3.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 846f, arg_3.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(899f, 528f, 628f) - vec3<f32>(386f, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 2028f))))));
    global4 = array<Struct_1, 6>();
    global4 = array<Struct_1, 6>();
    var var_2 = var_0;
    return firstTrailingBit(firstTrailingBit(51982i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_1(~(~select(firstLeadingBit(global2.a), reverseBits(arg_2.a), arg_2.a != 27858u)));
    let var_1 = arg_2;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -424f))), -1000f))), -610f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(633f)), 666f, true))), -1446f, true)));
    var var_3 = true;
    let var_4 = vec3<i32>(-1i, -1i, -global0.x);
    return ~0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: bool) -> f32 {
    var var_0 = Struct_1(global3.a);
    var_0 = Struct_1(reverseBits(~arg_1.x));
    let var_1 = vec3<i32>(-1i, ~2076i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(func_4(global4[_wgslsmith_index_u32(reverseBits(~13218u), 6u)], global4[_wgslsmith_index_u32(reverseBits(~u_input.a.x), 6u)], global4[_wgslsmith_index_u32(var_0.a, 6u)], vec4<i32>(-1i, -11926i, func_3(407f, global3.a, Struct_1(0u), vec2<f32>(-622f, -109f)), ~global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), 31u)], -1i));
    global0 = reverseBits(vec2<i32>(-arg_0.x, 3331i) & _wgslsmith_add_vec2_i32(arg_0, var_1.yy));
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.a << (global3.a % 32u), ~3127u), 6u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f)) - 726f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -974f))), -259f))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-vec2<i32>(20673i, global0.x) ^ (vec2<i32>(1i, 12262i) ^ vec2<i32>(arg_0, 1i)), ~abs(vec2<u32>(103397u, u_input.a.x)), true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)), 910f)), -518f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(207f))))) + _wgslsmith_f_op_f32(-192f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-735f)), 729f))));
    var var_1 = Struct_1(~_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(4294967295u, 1u) ^ countOneBits(global2.a), global2.a));
    global2 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, (vec4<u32>(global3.a, u_input.a.x, 1u, 108742u) | ~vec4<u32>(4294967295u, global3.a, 0u, 0u)) ^ vec4<u32>(1u, ~1u, func_4(Struct_1(u_input.a.x), global4[_wgslsmith_index_u32(4294967295u, 6u)], Struct_1(26616u), vec4<i32>(global0.x, -1i, global0.x, 7197i)), 1u)), 6u)];
    let var_2 = ~u_input.a.ww;
    let var_3 = Struct_1(var_2.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 31>();
    var var_0 = Struct_1(4294967295u);
    let var_1 = Struct_1(~(select(u_input.a.x, 54436u, false) >> (_wgslsmith_sub_u32(4555u, u_input.a.x) % 32u)) & global3.a);
    global1 = array<i32, 31>();
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(firstTrailingBit(44264u) << (~max(1u, 18191u) % 32u), ~abs(_wgslsmith_add_u32(22399u, var_0.a))), _wgslsmith_mod_u32(u_input.a.x, ~var_1.a)), 6u)];
    let var_2 = true;
    var_0 = func_1(global0.x);
    global0 = select(~(~min(~vec2<i32>(global1[_wgslsmith_index_u32(global2.a, 31u)], -13627i), vec2<i32>(global0.x, 2351i))), vec2<i32>(countOneBits(~0i), -33892i), all(!(!(!vec4<bool>(true, var_2, var_2, var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(702f, -1000f, -1591f))) + vec3<f32>(_wgslsmith_f_op_f32(-1423f + 1261f), _wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(529f - 106f))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(-771f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1760f, 274f), _wgslsmith_f_op_f32(496f - 2111f)))))), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, (0u >> (global3.a % 32u)) & ~global3.a), ~var_1.a << (min(~global2.a, firstLeadingBit(var_0.a)) % 32u)), _wgslsmith_clamp_vec2_i32(~(min(vec2<i32>(22756i, global1[_wgslsmith_index_u32(29792u, 31u)]), vec2<i32>(global1[_wgslsmith_index_u32(0u, 31u)], -11034i)) | -vec2<i32>(-1i, global0.x)), _wgslsmith_add_vec2_i32(select(vec2<i32>(-1i, global0.x), vec2<i32>(-2147483647i, global0.x), vec2<bool>(var_2, var_2)), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 31u)]) ^ vec2<i32>(global0.x, global0.x)) >> (abs(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(-13190i, _wgslsmith_div_i32(global0.x, -1i) ^ -2147483647i)));
}

