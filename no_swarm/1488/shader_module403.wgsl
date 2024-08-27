struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f + -1000f));
    var var_1 = u_input.a;
    var var_2 = Struct_2(arg_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 * var_0)), arg_1.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1035f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-457f, -1675f) - vec2<f32>(-1790f, -390f))))));
    let var_3 = select(!(!var_2.a.a.xx), select(!select(!var_2.a.a.yx, var_2.a.a.zy, select(var_2.a.a.xx, var_2.a.a.zy, arg_1.a.zy)), arg_1.a.yz, any(vec2<bool>(any(arg_1.a), false))), arg_1.a.x);
    let var_4 = select(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, 29304u), _wgslsmith_dot_vec3_u32((vec3<u32>(49131u, u_input.a.x, 58169u) >> (vec3<u32>(var_1.x, var_1.x, 46354u) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a.x, u_input.a.x, 0u) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 86887u, 7323u), vec3<u32>(var_1.x, 34592u, u_input.a.x)))), var_1.x, any(vec3<bool>(_wgslsmith_f_op_f32(floor(var_0)) == _wgslsmith_f_op_f32(1213f - -858f), select(false, false, false), var_3.x)));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.b.x)), 789f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-141f)), var_2.b.x)) + 340f)));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(728f - -1315f)), _wgslsmith_f_op_f32(-341f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(2763f, -888f)), -380f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -522f)))) + -1346f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-179f, 1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1616f)))), _wgslsmith_f_op_f32(func_3(vec4<i32>(1i, 1i, 1i, 1i), Struct_1(vec3<bool>(false, false, false)))), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(1i, 1i, 1i, 1i), Struct_1(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(894f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(min(vec4<i32>(0i, 55702i, 2190i, 28552i), vec4<i32>(0i, 48802i, 2147483647i, -90098i)), Struct_1(vec3<bool>(false, false, false)))), -944f)))));
    var var_1 = Struct_1(vec3<bool>(true, all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true)), true));
    let var_2 = u_input.a.x;
    let var_3 = ~vec2<u32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 23991u), u_input.a) & abs(~4294967295u));
    var var_4 = Struct_2(Struct_1(vec3<bool>(!(u_input.a.x >= 88094u), true, var_1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -950f)))));
    return Struct_2(var_4.a, var_4.b);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = func_2();
    var_0 = Struct_2(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-753f + var_0.b.x), -1238f));
    let var_1 = Struct_1(vec3<bool>(any(select(select(vec4<bool>(false, var_0.a.a.x, var_0.a.a.x, false), vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, true), var_0.a.a.x), select(vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, false), vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, true), vec4<bool>(false, var_0.a.a.x, true, var_0.a.a.x)), false)), true, any(select(vec2<bool>(true, var_0.a.a.x), var_0.a.a.xx, var_0.a.a.xy))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-arg_0)))))));
    let var_3 = u_input.a;
    return vec4<u32>(u_input.a.x, 1u & var_3.x, u_input.a.x, reverseBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = reverseBits(reverseBits(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2156f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1651f, 1000f, -923f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1950f, -619f, -1361f, -449f), vec4<f32>(112f, -303f, -2728f, 439f))), true)))));
    var var_2 = -select(vec2<i32>(-1i >> (var_1.x % 32u), 19541i), ~vec2<i32>(1i, 1i), any(vec4<bool>(true, false, true, false))) & vec2<i32>(~1i, firstTrailingBit(max(-57692i, 0i)) >> (var_0 % 32u));
    var_2 = abs(_wgslsmith_mod_vec2_i32(-(vec2<i32>(39137i, var_2.x) ^ vec2<i32>(17135i, 0i)), vec2<i32>(71501i, var_2.x) | -vec2<i32>(var_2.x, var_2.x))) >> (~u_input.a % vec2<u32>(32u));
    var_2 = vec2<i32>(firstTrailingBit((var_2.x | min(var_2.x, var_2.x)) >> (_wgslsmith_sub_u32(4294967295u, var_1.x | var_0) % 32u)), 52060i);
    let var_3 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, 27117u, _wgslsmith_div_u32(13794u, 4294967295u), 1u), firstTrailingBit(~vec4<u32>(var_0, var_0, u_input.a.x, var_1.x))), ~max(firstLeadingBit(var_1.x), ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(abs(firstLeadingBit(var_1))), max(vec2<i32>(2509i, ~37019i), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_2.x, var_2.x), vec2<i32>(-1i, -35081i)), -select(vec2<i32>(var_2.x, -2147483647i), vec2<i32>(var_2.x, -47758i), vec2<bool>(false, true)))), ~_wgslsmith_add_i32(~(~var_2.x), abs(-var_2.x)));
}

