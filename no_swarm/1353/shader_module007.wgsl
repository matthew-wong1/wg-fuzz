struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(22218i, vec4<f32>(375f, 303f, 978f, 1605f), true);

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<i32>, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = 664f <= _wgslsmith_div_f32(global0.b.x, 115f);
    var var_1 = any(select(select(!select(vec4<bool>(true, var_0, false, true), vec4<bool>(global0.c, global0.c, true, global0.c), vec4<bool>(true, var_0, global1.x, true)), vec4<bool>(true, global0.b.x == -836f, true, true), all(select(vec2<bool>(false, true), vec2<bool>(global0.c, global1.x), false))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, global1.x), vec4<bool>(var_0, global0.c, global0.c, false))), select(select(vec4<bool>(true, true, var_0, global1.x), !vec4<bool>(true, global0.c, true, true), all(vec3<bool>(false, global1.x, true))), vec4<bool>(true, any(vec3<bool>(global0.c, false, true)), select(true, false, global0.c), true), !select(vec4<bool>(var_0, global0.c, true, true), vec4<bool>(global1.x, true, var_0, true), vec4<bool>(true, false, false, true)))));
    let var_2 = Struct_1(_wgslsmith_sub_i32(1i, global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(125f, _wgslsmith_f_op_f32(sign(577f)), _wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_f_op_f32(global0.b.x * 1104f))))), global0.c);
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(-var_2.a, ~countOneBits(1i) << (max(_wgslsmith_div_u32(8925u, 67207u), _wgslsmith_mod_u32(21122u, 1u)) % 32u)), abs(-1i));
    let var_4 = Struct_1(u_input.a.x, var_2.b, any(select(vec2<bool>(any(vec3<bool>(var_0, false, true)), global0.c), vec2<bool>(any(vec4<bool>(global1.x, var_2.c, true, global1.x)), true), any(vec3<bool>(var_2.c, true, global1.x)))));
    return false;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(0i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(global0.b)), global0.b)), func_3());
    var var_1 = Struct_1(_wgslsmith_div_i32(reverseBits(1i), global0.a), _wgslsmith_f_op_vec4_f32(-var_0.b), true);
    var_1 = Struct_1(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) + _wgslsmith_div_f32(var_1.b.x, var_1.b.x))), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -150f), false))), _wgslsmith_f_op_f32(-global0.b.x), 322f), any(select(!select(vec4<bool>(var_1.c, false, false, true), vec4<bool>(false, global0.c, true, global1.x), vec4<bool>(false, false, true, global0.c)), select(vec4<bool>(var_1.c, false, var_0.c, var_1.c), vec4<bool>(true, true, true, true), any(vec3<bool>(global0.c, true, true))), all(vec3<bool>(true, true, true)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))) - var_0.b.x) * -984f) * var_1.b.x);
    let var_3 = -(~(-36867i));
    return Struct_1(_wgslsmith_mult_i32(0i, reverseBits(var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-2049f, -680f), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(trunc(532f)), _wgslsmith_f_op_f32(step(962f, -2122f))))), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = func_2(arg_2);
    let var_1 = _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -899f))));
    var var_2 = 1i;
    var_0 = arg_0;
    let var_3 = Struct_1(-30855i, _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(exp2(global0.b)))))), global1.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(global0.a, global0.b, false), _wgslsmith_f_op_vec3_f32(-global0.b.wzw), 28910u, vec3<u32>(max(4294967295u, 1u), 0u, 41110u));
    let var_1 = vec2<u32>(select(0u, ~67332u, any(vec2<bool>(false, true))), abs(abs(~1u)));
    let var_2 = _wgslsmith_f_op_f32(-global0.b.x);
    var_0 = Struct_1(~(_wgslsmith_clamp_i32(reverseBits(-2147483647i), _wgslsmith_div_i32(var_0.a, var_0.a), ~global0.a) ^ -47260i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.x, 135f, -546f, var_0.b.x))))), any(select(vec2<bool>(false, var_0.c), vec2<bool>(true, global1.x), global0.a <= 2147483647i)) == !(global0.a <= ~var_0.a));
    var_0 = func_1(Struct_1(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, -1099f))), var_2, var_0.b.x, 270f), true), vec3<f32>(global0.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-1445f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-348f - var_2)), _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)), ~min(49216u, select(~var_1.x, _wgslsmith_sub_u32(4294967295u, var_1.x), any(vec4<bool>(false, global1.x, false, false)))), ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(4294967295u, var_1.x, var_1.x), 47775i > var_0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 1u, 4294967295u), vec3<u32>(var_1.x, 0u, var_1.x)) & ~vec3<u32>(var_1.x, 54333u, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~select(~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), countOneBits(vec4<u32>(39120u, 4294967295u, 4294967295u, var_1.x)), !var_0.c)), -_wgslsmith_sub_i32(abs(2147483647i), select(0i, global0.a, u_input.a.x < var_0.a)), global2[_wgslsmith_index_u32(var_1.x, 27u)], vec3<f32>(global0.b.x, _wgslsmith_div_f32(func_2(~120972u).b.x, -926f), _wgslsmith_div_f32(func_2(countOneBits(1u)).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1704f)) * _wgslsmith_f_op_f32(var_0.b.x * var_2)))), global0.b.zx);
}

