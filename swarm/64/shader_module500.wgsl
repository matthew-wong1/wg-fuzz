struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-15631i);

var<private> global1: Struct_1 = Struct_1(1i);

var<private> global2: Struct_2 = Struct_2(true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, -6635i), abs(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(global1.a, -52159i), vec2<i32>(global1.a, global0.a)), ~vec2<i32>(45925i, -5567i)))));
    let var_1 = select(select(select(select(vec2<bool>(global2.a, global2.a), !vec2<bool>(true, global2.a), vec2<bool>(true, false)), !select(vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, true), global2.a), !select(true, global2.a, false)), select(!(!vec2<bool>(global2.a, global2.a)), select(select(vec2<bool>(false, false), vec2<bool>(global2.a, true), global2.a), vec2<bool>(global2.a, global2.a), true), !(!global2.a)), select(select(u_input.a <= u_input.e.x, false, true), global2.a, global2.a)), vec2<bool>(true, any(select(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, true, false), global2.a), vec3<bool>(global2.a, true, global2.a), select(global2.a, true, true)))), !select(!select(vec2<bool>(false, global2.a), vec2<bool>(true, global2.a), global2.a), vec2<bool>(any(vec3<bool>(global2.a, true, false)), all(vec4<bool>(global2.a, global2.a, false, global2.a))), (u_input.a >> (u_input.b % 32u)) < firstTrailingBit(u_input.d.x)));
    let var_2 = Struct_1(-55741i);
    let var_3 = select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-468f, _wgslsmith_f_op_f32(ceil(-2764f)))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-370f)))), !global2.a, _wgslsmith_f_op_f32(ceil(203f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1835f)) - 2316f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1634f)))));
    global1 = Struct_1(_wgslsmith_sub_i32(u_input.c, -1i));
    return 1009f;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_2(!(!global2.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(~(~select(vec3<i32>(global1.a, u_input.c, global0.a), vec3<i32>(u_input.c, u_input.c, u_input.c), var_0.a)), vec3<i32>(-1i) * -select(vec3<i32>(global1.a, global1.a, 2147483647i), vec3<i32>(1i, 27121i, 2147483647i), global2.a)));
    let var_3 = vec4<bool>(any(select(select(select(vec3<bool>(false, false, true), vec3<bool>(var_0.a, true, false), var_0.a), vec3<bool>(var_0.a, true, true), !vec3<bool>(var_0.a, true, var_0.a)), select(select(vec3<bool>(true, true, global2.a), vec3<bool>(true, false, global2.a), global2.a), vec3<bool>(global2.a, true, global2.a), true), vec3<bool>(global2.a, true, global2.a != false))), true || select(!all(vec3<bool>(global2.a, var_0.a, global2.a)), global2.a, true), !global2.a, _wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.a, 0i) | 21327i, -18244i >> (u_input.d.x % 32u), u_input.c ^ ~19028i) < _wgslsmith_add_i32(reverseBits(i32(-1i) * -2147483647i), abs(firstLeadingBit(0i))));
    global1 = var_2;
    return _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1025f)) * _wgslsmith_f_op_f32(-1f)));
}

fn func_1() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1199f, _wgslsmith_f_op_f32(floor(889f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-592f)) - 1567f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(841f + _wgslsmith_f_op_f32(func_2(116u)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(664f, 1942f)), _wgslsmith_f_op_f32(f32(-1f) * -377f)))) + 517f);
    var var_2 = ~firstLeadingBit(_wgslsmith_mod_u32(0u, firstLeadingBit(5956u)));
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(max(vec4<i32>(u_input.c, global1.a, global0.a, u_input.c), vec4<i32>(u_input.c, 0i, global1.a, u_input.c)) >> (~vec4<u32>(u_input.e.x, u_input.e.x, 72238u, u_input.a) % vec4<u32>(32u))), vec4<i32>(u_input.c >> (~u_input.e.x % 32u), (global1.a | -9473i) << (max(u_input.d.x, u_input.d.x) % 32u), global1.a, -global0.a)));
    let var_3 = _wgslsmith_f_op_f32(-933f * -1898f);
    return vec2<f32>(-453f, _wgslsmith_f_op_f32(floor(2756f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))));
    var var_1 = false;
    var var_2 = 321f;
    var_1 = true;
    let var_3 = !vec4<bool>(all(!vec2<bool>(global2.a, true)), any(select(!vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, global2.a), global2.a)), abs(_wgslsmith_mod_i32(u_input.c, -16336i)) <= -(u_input.c & global0.a), global2.a);
    var var_4 = abs(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(_wgslsmith_div_i32(u_input.c, global0.a), _wgslsmith_mult_i32(9249i, global1.a), -global1.a, ~2274i)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-15545i, global0.a, u_input.c, -50732i), vec4<i32>(1i, 42110i, global0.a, 15911i))) & vec4<i32>(-1i, global0.a, global1.a, 21072i)));
    global1 = Struct_1(i32(-1i) * -(~(-3869i)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) + var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(func_2(~0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0u), u_input.a, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_4.x, -35499i), var_4.zw)), ~vec2<i32>(global0.a, u_input.c)), ~(~firstTrailingBit(vec2<i32>(61910i, -1962i)))));
}

