struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec3_i32(abs(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(193i, -1i), i32(-1i) * -14592i, _wgslsmith_dot_vec3_i32(vec3<i32>(17834i, 2147483647i, -1i), vec3<i32>(-1793i, 1i, -2147483647i))))), _wgslsmith_sub_vec3_i32(-vec3<i32>(countOneBits(-2147483647i), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-8692i, -44710i, -1i, 30074i), vec4<i32>(-43370i, -49180i, -55959i, 2147483647i))), max(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(3477i, -1i, 0i)), select(vec3<i32>(6807i, -7587i, -29472i), vec3<i32>(-21359i, 0i, 0i), true)), vec3<i32>(1i, 1i, 1i))));
    var var_1 = _wgslsmith_mult_i32(0i, ~(~(~1i))) & _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(-1i, var_0.x, 1i)), firstTrailingBit(var_0.x), 20449i), min(var_0, vec3<i32>(var_0.x, var_0.x, -1i))), select(vec3<i32>(35064i, var_0.x, -1i), vec3<i32>(-53466i, var_0.x, 1i), vec3<bool>(true, true, true)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1801u, 2787u, u_input.a.x), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(205f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1154f, -402f, true)) - 1510f)) + -479f));
    let var_3 = vec2<bool>(true, ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) >= 11623u);
    let var_4 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1535f * var_2) - _wgslsmith_f_op_f32(-1704f - var_2)) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-378f - var_2))), var_2, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_2) * _wgslsmith_f_op_f32(abs(1474f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(ceil(698f))))));
    return select(select(select(!vec4<bool>(true, true, true, var_3.x), select(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, false, var_3.x), true), any(vec4<bool>(true, var_3.x, true, true)) & all(vec2<bool>(var_3.x, false))), !vec4<bool>(all(vec3<bool>(var_3.x, var_3.x, var_3.x)), var_3.x, true, true), (abs(u_input.a.x) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 64267u, 4294967295u), vec4<u32>(u_input.a.x, 41208u, u_input.a.x, 4294967295u))) | true), !(!vec4<bool>(any(vec4<bool>(true, var_3.x, var_3.x, true)), true, true, any(vec4<bool>(var_3.x, var_3.x, false, false)))), !vec4<bool>(true, select(false, var_3.x, false), true, true));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(true, true, false);
    var var_1 = Struct_2(func_3(), Struct_1(func_3(), select(!var_0, select(var_0, var_0, func_3().yxz), true), vec4<i32>(-64032i, ~(-2147483647i), abs(46497i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(18576i, 0i), vec2<i32>(-1i, -58771i))), !var_0.zz));
    let var_2 = Struct_2(var_1.a, Struct_1(var_1.b.a, var_0, reverseBits(min(abs(var_1.b.c), -var_1.b.c)), var_0.yy));
    var_1 = Struct_2(select(!(!var_1.b.a), !var_1.a, select(func_3(), select(select(vec4<bool>(var_0.x, var_1.b.a.x, var_0.x, true), var_1.a, var_2.b.a), var_2.b.a, true), var_1.a.x)), var_1.b);
    let var_3 = -var_1.b.c.yx << (vec2<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(45508u, 61457u))), ~u_input.a.x) % vec2<u32>(32u));
    return var_2.b;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_5) -> f32 {
    let var_0 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + arg_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~1i, -1i);
    let var_1 = vec3<f32>(1f, 1f, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), 368f, _wgslsmith_f_op_f32(func_1(var_0, vec3<u32>(u_input.a.x, 46071u, 1u), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), vec4<i32>(var_0, var_0, -15354i, -1680i), vec2<bool>(true, true))), Struct_5(vec4<f32>(1000f, var_1.x, 976f, var_1.x))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1214f, var_1.x))))))), vec4<i32>(reverseBits(_wgslsmith_mod_i32(var_0, 27928i) >> (_wgslsmith_sub_u32(u_input.a.x, 15004u) % 32u)), ~var_0, ~(8995i & var_0) >> (select(min(u_input.a.x, u_input.a.x), u_input.a.x, true) % 32u), _wgslsmith_mult_i32(0i, -var_0) >> (75354u % 32u)));
}

