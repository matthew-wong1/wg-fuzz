struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(850f))))))));
    var var_1 = !vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)) == all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    var var_2 = select(vec2<bool>(true, any(!select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, false, false, true)))), !(!select(vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), vec2<bool>(false, false)), true)), false);
    let var_3 = var_2.x;
    let var_4 = -2147483647i;
    return _wgslsmith_dot_vec4_i32(abs(u_input.a), u_input.a);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(max(-_wgslsmith_mod_i32(reverseBits(5479i), 31180i ^ u_input.a.x), func_3()), ~(select(21622i, u_input.a.x, true) & u_input.a.x), u_input.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1339f, -642f, 1155f), vec3<f32>(-564f, -573f, 1000f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(363f, -427f, -402f), vec3<f32>(359f, -1737f, 386f))))))));
    let var_2 = max(_wgslsmith_div_vec4_u32(vec4<u32>(~(~4294967295u), countOneBits(~36721u), 4294967295u, min(1u, reverseBits(2904u))), countOneBits(vec4<u32>(1u, 46825u, ~1u, ~497u))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(5258u, 1u, 30153u, 13955u), ~min(vec4<u32>(0u, 4294967295u, 14772u, 0u), vec4<u32>(4294967295u, 103159u, 4294967295u, 41034u)), ~vec4<u32>(16813u, 1u, 1u, 4294967295u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(98130u, 19984u, 1306u, 17709u), vec4<u32>(1u, 39425u, 4294967295u, 21115u), vec4<u32>(109273u, 57451u, 72719u, 27506u)) % vec4<u32>(32u))), ~abs(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1088f) + -1403f), _wgslsmith_div_f32(772f, -507f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)))));
    var var_4 = select(vec2<bool>(false, true), !(!vec2<bool>(true, -18506i > u_input.a.x)), vec2<bool>(var_2.x == _wgslsmith_div_u32(5131u, 1u), !(var_2.x <= 0u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a - vec3<f32>(-777f, var_3.a.x, var_3.a.x)) + vec3<f32>(1000f, var_1.a.x, 576f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.a, vec3<f32>(-559f, 285f, -543f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.a))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    let var_0 = Struct_4(Struct_2(arg_1.x, func_2(), arg_1.x), ~arg_1, Struct_2(967u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_div_u32(arg_1.x, abs(arg_1.x))));
    let var_1 = arg_1.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-280f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.a.x + arg_0.x))))), 843f);
    var_2 = _wgslsmith_f_op_f32(arg_0.x - arg_2);
    let var_3 = -152f;
    return arg_1.x >> ((max(_wgslsmith_sub_u32(~1u, 3685u), var_1) >> (81327u % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(_wgslsmith_mod_u32(firstLeadingBit(1u), countOneBits(firstTrailingBit(4294967295u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-499f, -1936f, -1408f) * vec3<f32>(-493f, -926f, 240f)))), func_1(vec3<f32>(1f, 1f, 1f), vec4<u32>(1u, 0u, 105519u, 40238u), -591f) & ~min(0u, 4294967295u)), vec4<u32>(~(~1u), ~69676u, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), 40466u), Struct_2(reverseBits(_wgslsmith_div_u32(~63174u, 113852u)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(996f, 1709f, 475f) * vec3<f32>(-545f, -599f, 1012f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 664f, 330f))), true))), 1u));
    var_0 = Struct_4(Struct_2(countOneBits(1u), func_2(), 36740u), ~vec4<u32>(~8237u, ~var_0.a.c, ~firstLeadingBit(var_0.a.a), 123408u), Struct_2(~func_1(var_0.c.b.a, ~var_0.b, var_0.a.b.a.x), func_2(), 4294967295u));
    var var_1 = any(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec4<bool>(true, true, u_input.a.x == u_input.a.x, any(vec4<bool>(false, true, true, false))))));
    let var_2 = Struct_4(var_0.a, var_0.b, Struct_2(abs(var_0.a.c), func_2(), 59664u));
    let var_3 = Struct_3(var_0.c.b, var_0.c.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, _wgslsmith_f_op_f32(floor(func_2().a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(804f, -1000f))));
}

