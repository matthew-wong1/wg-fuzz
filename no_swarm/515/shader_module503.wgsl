struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<f32>(-1072f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(268f, -1758f, true)), _wgslsmith_div_f32(-1515f, -1826f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-355f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-599f * _wgslsmith_f_op_f32(trunc(-815f)))), (_wgslsmith_mod_i32(1i, global1.x) & -2147483647i) != global1.x)));
    var var_1 = select(select(vec2<bool>(false, u_input.a.x == u_input.a.x), vec2<bool>(any(vec2<bool>(true, true)), true | (global1.x >= global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), select(select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec2<bool>(false, true))), vec2<bool>(false, select(false, false, true)), vec2<bool>(false, true))), !vec2<bool>(any(vec3<bool>(true, true, true)), true), false);
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.xz);
    var var_3 = 2962u;
    let var_4 = Struct_3(Struct_1(vec4<bool>(true, !all(vec2<bool>(true, true)), true, true), abs(-vec2<i32>(global1.x, global0[_wgslsmith_index_u32(0u, 32u)]) ^ abs(vec2<i32>(global0[_wgslsmith_index_u32(55453u, 32u)], global0[_wgslsmith_index_u32(3075u, 32u)])))), Struct_2(vec2<bool>(true, false), Struct_1(select(vec4<bool>(true, var_1.x, true, false), !vec4<bool>(var_1.x, false, false, true), !vec4<bool>(true, var_1.x, false, false)), ~vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(20994u, 32u)])), -978f, !(!(!vec4<bool>(false, var_1.x, true, true))), !(!(!vec3<bool>(true, true, var_1.x)))), Struct_1(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec2<i32>(_wgslsmith_div_i32(2147483647i, global1.x), firstTrailingBit(global0[_wgslsmith_index_u32(1u, 32u)])) << (u_input.a % vec2<u32>(32u))), all(select(vec4<bool>(var_0.x > -428f, true, select(var_1.x, var_1.x, true), false), select(!vec4<bool>(true, false, var_1.x, true), select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), false), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), vec4<bool>(!var_1.x, false, true, !var_1.x))));
    return var_4.a.a;
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_3(Struct_1(!(!func_3()), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(44437i, -26678i), vec2<i32>(1i, -2147483647i)), -global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) << (u_input.a % vec2<u32>(32u))), Struct_2(!func_3().yz, Struct_1(vec4<bool>(true, func_3().x, true, true), reverseBits(vec2<i32>(1900i, global1.x))), _wgslsmith_f_op_f32(trunc(-602f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec3<bool>(true, any(vec2<bool>(true, true)), false)), Struct_1(vec4<bool>(!all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), ~u_input.a.x < reverseBits(u_input.a.x), true), countOneBits(-vec2<i32>(global1.x, -11649i)) ^ vec2<i32>(countOneBits(global1.x), min(0i, -39860i))), true);
    var var_1 = var_0.b.c;
    global0 = array<i32, 32>();
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.b.c)), -206f), vec2<f32>(var_0.b.c, _wgslsmith_f_op_f32(floor(-977f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-485f, -1929f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.c, var_0.b.c), vec2<f32>(-848f, var_0.b.c))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-503f, 543f), vec2<f32>(var_0.b.c, var_0.b.c))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-156f, var_0.b.c), vec2<f32>(var_0.b.c, 110f), var_0.a.a.xz)))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(var_0.b.c))))), 1000f)));
    var var_3 = abs(vec2<i32>(23454i, var_0.a.b.x));
    return vec2<i32>(1i, ~global1.x);
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global1 = _wgslsmith_mod_vec2_i32(func_2(), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(1i, 2147483647i), -vec2<i32>(global0[_wgslsmith_index_u32(57256u, 32u)], 1i)), vec2<i32>(31670i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) >> (select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), true) % vec2<u32>(32u))), func_2()));
    global1 = max(func_2(), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 32u)], _wgslsmith_div_i32(12986i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]))), select(firstLeadingBit(~vec2<i32>(global1.x, -18034i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-5006i, 67630i), vec2<i32>(0i, 2147483647i)), i32(-1i) * -40778i), arg_0.zy)));
    var var_0 = Struct_1(func_3(), vec2<i32>(-2147483647i, firstTrailingBit(_wgslsmith_div_i32(~global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 7050i))));
    var var_1 = Struct_1(func_3(), max(vec2<i32>(21221i, global0[_wgslsmith_index_u32(47285u, 32u)]), _wgslsmith_add_vec2_i32(vec2<i32>(-13353i, -4091i), vec2<i32>(-1i, -48692i)) & -var_0.b));
    var var_2 = 727f;
    return !(!(~60834u > ~u_input.a.x)) && var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(func_1(vec3<bool>(true, true, true)), ~4294967295u == (_wgslsmith_add_u32(74960u, 43278u) ^ u_input.a.x), ~1u < (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 47650u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)) << (1u % 32u)), false), vec2<i32>(global1.x, -global0[_wgslsmith_index_u32(~43115u, 32u)]));
    var var_1 = select(var_0.a.zy, select(var_0.a.xy, vec2<bool>(true, _wgslsmith_f_op_f32(step(1000f, 492f)) >= -554f), var_0.a.xz), func_3().x);
    global0 = array<i32, 32>();
    let var_2 = u_input.a.x;
    let var_3 = Struct_3(Struct_1(select(select(func_3(), var_0.a, false), select(func_3(), vec4<bool>(true, true, var_0.a.x, var_1.x), select(false, var_0.a.x, false)), select(func_3().x, func_3().x, var_1.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(var_0.b), vec2<i32>(-2147483647i, global1.x), var_0.b), var_0.b)), Struct_2(vec2<bool>(true, any(var_0.a.xx)), var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1158f)) + _wgslsmith_f_op_f32(trunc(1284f))))), !select(var_0.a, vec4<bool>(var_0.a.x, var_1.x, var_0.a.x, var_1.x), var_0.a.x), !var_0.a.wyz), var_0, true);
    let var_4 = Struct_3(Struct_1(var_0.a, vec2<i32>(~2147483647i, -global1.x ^ _wgslsmith_mult_i32(-2925i, 0i))), Struct_2(vec2<bool>(!any(var_3.a.a.zz), true), Struct_1(select(var_0.a, vec4<bool>(true, var_0.a.x, var_1.x, true), any(var_3.c.a.yx)), vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.b, var_3.b.b.b), var_3.b.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.c)))), var_0.a, !(!select(vec3<bool>(var_0.a.x, true, var_3.d), vec3<bool>(true, false, true), var_0.a.x))), var_3.c, !all(var_0.a.xx));
    let var_5 = func_3();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(788f, var_4.b.c) * vec2<f32>(851f, var_4.b.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(835f, -417f))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_4.b.c)), var_4.b.c) + vec2<f32>(_wgslsmith_f_op_f32(-var_3.b.c), _wgslsmith_f_op_f32(-var_4.b.c))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_3.b.c - -744f), _wgslsmith_f_op_f32(-var_3.b.c)))), true)), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2814f, var_4.b.c, -452f)))))));
}

