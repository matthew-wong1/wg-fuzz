struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 50329u);

var<private> global1: vec3<f32>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(1039f)), global1.x)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(424f, 324f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -611f) - _wgslsmith_f_op_f32(max(global1.x, -1095f))) * 302f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(794f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-136f, var_0.x, false))), -1000f))), -111f);
    var var_2 = vec3<bool>(arg_0.b, all(select(select(global2.xx, vec2<bool>(true, arg_0.b), global2.xz), vec2<bool>(false, false), global2.x && true)) & all(vec4<bool>(true, true, true, true)), global2.x);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-215f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)), var_1.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(260f - var_1.x), var_0.x))))));
    return !vec2<bool>(global2.x, arg_0.b);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> vec2<u32> {
    global2 = !select(vec3<bool>(!global2.x, true, true), select(!(!vec3<bool>(true, true, global2.x)), !select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, global2.x), true), vec3<bool>(true, global2.x, global2.x)), all(func_3(Struct_4(vec3<i32>(u_input.b, -2147483647i, u_input.b), false))));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-996f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, global1.x, -1290f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1658f, global1.x)), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(523f * global1.x)), global1.x) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-131f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, -1013f, arg_1.x)))))))));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1000f, global1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 1230f, -294f), vec3<f32>(global1.x, 118f, arg_1.x), vec3<bool>(false, false, false))), !global2.x)))), vec3<f32>(global1.x, global1.x, arg_1.x), all(vec4<bool>(!(!global2.x), true, true, !any(vec3<bool>(global2.x, global2.x, true))))));
    global2 = vec3<bool>(true, 58171u >= global0.x, any(select(!vec4<bool>(global2.x, global2.x, false, global2.x), select(select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(global2.x, true, global2.x, true), true), select(vec4<bool>(true, false, global2.x, true), vec4<bool>(false, false, false, false), global2.x), !vec4<bool>(global2.x, true, global2.x, global2.x)), min(arg_0, u_input.c) >= select(global0.x, 4294967295u, true))));
    var var_0 = (vec2<i32>(firstTrailingBit(u_input.b), -(~12849i)) | (vec2<i32>(~u_input.b, reverseBits(16385i)) ^ vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), 1i))) & ~vec2<i32>(-7832i, -u_input.b);
    return vec2<u32>(arg_0, global0.x);
}

fn func_1(arg_0: vec2<bool>) -> vec2<u32> {
    global0 = reverseBits(func_2(~0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1879f, -1000f) + global1.x), -296f)));
    let var_0 = vec3<f32>(-104f, global1.x, _wgslsmith_div_f32(-798f, _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = Struct_1(-10558i);
    let var_2 = 1u;
    let var_3 = Struct_2(Struct_1(select(var_1.a, -1i, var_0.x < var_0.x)));
    return ~(~vec2<u32>(46890u, ~30115u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~reverseBits((vec2<u32>(1u, 1u) & ~vec2<u32>(u_input.a, u_input.c)) ^ ~(vec2<u32>(1u, 28953u) | vec2<u32>(u_input.c, 1u)));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), global1.x);
    global0 = select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), ~vec2<u32>(global0.x, u_input.a)), firstTrailingBit(u_input.a)) ^ firstLeadingBit(~func_1(vec2<bool>(global2.x, global2.x))), ~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(19510u, 12990u), vec2<u32>(u_input.c, 25629u)) >> (func_1(global2.zx) % vec2<u32>(32u))), func_3(Struct_4(vec3<i32>(_wgslsmith_sub_i32(1i, 2147483647i), -1i, _wgslsmith_div_i32(1i, 15948i)), false & func_3(Struct_4(vec3<i32>(u_input.b, u_input.b, u_input.b), global2.x)).x)));
    global0 = _wgslsmith_div_vec2_u32(max(vec2<u32>(1u, 1u), ~vec2<u32>(1u >> (0u % 32u), max(4294967295u, global0.x))), select(select(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, u_input.a), vec2<u32>(global0.x, 53662u)), select(vec2<u32>(u_input.a, global0.x), vec2<u32>(7309u, 36487u), true), !global2.xz), vec2<u32>(abs(min(68032u, u_input.c)), u_input.c), !((global0.x != global0.x) && (global0.x <= 17439u))));
    global1 = vec3<f32>(1874f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))), global1.x);
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(u_input.b, -2147483647i) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, 9296i))), ~select(vec2<i32>(-3696i, -23141i), vec2<i32>(u_input.b, 1i), global2.zz) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 1u), func_1(vec2<bool>(true, global2.x))) % vec2<u32>(32u))));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(-1000f, -689f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1996f))), 499f);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(select(~0u, abs(51437u), false), reverseBits(1u), _wgslsmith_mod_u32(u_input.a, ~global0.x), ~global0.x), u_input.a);
}

