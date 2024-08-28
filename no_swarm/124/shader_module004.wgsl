struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 10>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = select(abs(vec4<i32>(-(i32(-1i) * -2147483647i), -_wgslsmith_sub_i32(arg_0.b.c.x, 44923i), arg_0.b.c.x, abs(i32(-1i) * -2147483647i))), ~firstLeadingBit(vec4<i32>(-1i, reverseBits(2147483647i), arg_0.b.c.x, select(1i, 2147483647i, global1[_wgslsmith_index_u32(7090u, 10u)]))), true);
    global0 = ~u_input.d.xxx;
    let var_1 = u_input.d.xy;
    let var_2 = abs(-var_0 & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-94999i, var_0.x)) ^ -42589i, 5349i, -8599i, 2147483647i));
    var var_3 = ~(~var_1);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-898f, arg_0.b.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1460f, arg_0.b.b, false))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1717f - arg_1.b.b))), arg_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b - arg_1.b.b))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.b, 951f, arg_1.b.b), vec3<f32>(arg_1.b.b, arg_1.b.b, arg_1.b.b)))))))));
    var var_1 = select(vec2<bool>(true, false), vec2<bool>(true, arg_1.b.a), (44210u != _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, global0.x, u_input.a), _wgslsmith_add_u32(0u, global0.x))) != false);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(857f, var_0.x, 639f), vec3<f32>(arg_1.b.b, var_0.x, 591f), arg_1.b.a)), vec3<f32>(1140f, 1059f, -223f), any(vec3<bool>(false, arg_1.b.a, arg_1.b.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.b, var_0.x, arg_1.b.b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, arg_1.b.b, -569f)))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(func_3(arg_1))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(128f, var_0.x, arg_1.b.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(min(952f, 1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-455f, -117f, arg_1.b.b))))));
    let var_2 = ~(-vec4<i32>(-2147483647i, ~(arg_2 & u_input.b), ~(~u_input.b), 0i));
    let var_3 = arg_1.b;
    return var_3.c.x;
}

fn func_1() -> u32 {
    var var_0 = countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.xx, ~_wgslsmith_sub_vec2_i32(vec2<i32>(-11210i, u_input.e.x), vec2<i32>(35304i, u_input.b))), ~abs(abs(u_input.b)), -31392i, _wgslsmith_div_i32(1i, func_2(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 10u)], true, global1[_wgslsmith_index_u32(1u, 10u)]), Struct_2(u_input.d, Struct_1(global1[_wgslsmith_index_u32(0u, 10u)], -1671f, vec2<i32>(u_input.b, u_input.b))), firstTrailingBit(u_input.e.x)))));
    let var_1 = 2655u;
    var_0 = vec4<i32>(u_input.e.x, u_input.e.x, min(u_input.b, abs(-1i)), _wgslsmith_add_i32(u_input.e.x, var_0.x)) << (~vec4<u32>(var_1, 0u, 0u, global0.x) % vec4<u32>(32u));
    let var_2 = Struct_1(any(select(vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(9894u, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)])), global1[_wgslsmith_index_u32(var_1, 10u)]), select(vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(var_1, 10u)], false), true), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(9138u, 10u)])))), _wgslsmith_f_op_f32(-1073f * -559f), _wgslsmith_div_vec2_i32(vec2<i32>(-16243i, _wgslsmith_add_i32(var_0.x, u_input.b) & var_0.x), var_0.zy));
    let var_3 = select(!select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, 0u), 10u)], var_2.a), select(!vec2<bool>(global1[_wgslsmith_index_u32(var_1, 10u)], true), vec2<bool>(var_2.a, true), !var_2.a), all(vec2<bool>(true, true))), !select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], false), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(global0.x, 10u)]), vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, true)), true), vec2<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -1044f) < _wgslsmith_f_op_f32(floor(var_2.b))), true));
    return _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 9858u, 22961u, ~(var_1 | 15978u))), vec4<u32>(global0.x, 0u, ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(u_input.d.x, 4294967295u)), var_1));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -343f)));
    let var_1 = vec4<f32>(-254f, -1009f, _wgslsmith_f_op_f32(-146f + arg_2.b.b), -333f);
    var_0 = var_1.x;
    global0 = _wgslsmith_mod_vec3_u32(arg_2.a.xzy, ~vec3<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(36596u, u_input.c)), arg_2.a.x, arg_0.x));
    let var_2 = Struct_1(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), -714f), min(-firstLeadingBit(vec2<i32>(1i, arg_2.b.c.x)), arg_1.c | u_input.e.yx));
    return StorageBuffer(arg_0.wwx, firstLeadingBit(vec3<i32>(func_2(vec3<bool>(true, true, false), Struct_2(u_input.d, Struct_1(var_2.a, -2104f, arg_2.b.c)), 0i) ^ 0i, ~1i, -5134i)), max(vec2<u32>(func_1(), 1u), ~vec2<u32>(~0u, global0.x & 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 12970i;
    var var_1 = !(!(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], global1[_wgslsmith_index_u32(47279u, 10u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], global1[_wgslsmith_index_u32(u_input.d.x, 10u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 10u)])))));
    let x = u_input.a;
    s_output = func_4(vec4<u32>(0u, 12738u, 41086u, func_1()), Struct_1(false, _wgslsmith_f_op_f32(select(-707f, -718f, 0i >= ~u_input.b)), u_input.e.xx), Struct_2(firstTrailingBit(~(u_input.d | vec4<u32>(4294967295u, global0.x, 2781u, global0.x))), Struct_1(var_1.x, 1426f, countOneBits(_wgslsmith_div_vec2_i32(u_input.e.zz, vec2<i32>(u_input.b, u_input.e.x))))));
}

