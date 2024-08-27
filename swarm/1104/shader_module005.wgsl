struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: i32) -> vec3<f32> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.a.d.x, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.d.x))))), global1.x);
    let var_0 = vec2<f32>(666f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2768f, -1000f) * global1.x));
    var var_1 = ~_wgslsmith_sub_vec3_u32(~(~firstTrailingBit(arg_1.a.a.zwx)), ~arg_1.a.a.yzx);
    var_1 = select(u_input.b & vec3<u32>(~max(1u, var_1.x), ~(~u_input.c.x), arg_1.a.a.x), vec3<u32>(1u, 48478u, 63335u), any(vec3<bool>(true, select(false, !arg_0, !arg_0), true)));
    let var_2 = vec3<i32>(max(firstLeadingBit(-_wgslsmith_mult_i32(arg_1.a.b, 18370i)), -8082i), 7820i, max(_wgslsmith_add_i32(-1i, -1i), ~arg_2));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_1.b, -1000f)) * vec3<f32>(global1.x, 1008f, -514f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1651f, var_0.x, arg_1.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b, -1451f, var_0.x))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-global1.x))), -1305f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1541f), _wgslsmith_f_op_f32(select(var_0.x, 294f, arg_0)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(697f, arg_1.a.d.x, global1.x), vec3<f32>(-1007f, 1863f, 444f), vec3<bool>(false, true, arg_0))), vec3<f32>(-679f, -836f, global1.x)))))), !select(!vec3<bool>(true, arg_0, false), !select(vec3<bool>(false, true, arg_0), vec3<bool>(false, false, true), vec3<bool>(false, arg_0, false)), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_0, arg_0)), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, arg_0)), !arg_0))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-460f + -1431f)) + _wgslsmith_div_f32(global1.x, global1.x)), global1.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-647f * global1.x), 178f, _wgslsmith_div_f32(-825f, _wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(864f + -156f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, 164f, global1.x), vec4<f32>(global1.x, 469f, global1.x, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1006f, global1.x, global1.x)), true))))));
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-firstTrailingBit(1i), ~(~(-13011i)))), select(vec2<i32>(-1i) * -(vec2<i32>(19552i, -12021i) << (u_input.b.zz % vec2<u32>(32u))), vec2<i32>(-(~(-1i)), abs(1i)), all(vec3<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, true)), true))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-501f, 126f, global1.x), _wgslsmith_f_op_vec3_f32(func_3(true, Struct_5(Struct_4(vec4<u32>(u_input.a, 5262u, u_input.a, 12503u), 1i, u_input.b.xy, vec2<f32>(681f, var_0.x), vec4<u32>(u_input.c.x, 58454u, 20104u, u_input.b.x)), _wgslsmith_f_op_f32(2005f * var_0.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-53328i, -6013i), vec2<i32>(var_1.x, -23525i)), -vec2<i32>(var_1.x, var_1.x))))));
    let var_2 = vec4<u32>(1u, 3126u, ~4294967295u, u_input.a);
    var var_3 = Struct_3(Struct_2(Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -17064i), vec2<i32>(-37645i, -63668i)), _wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, global1.x, global1.x)), vec4<u32>(firstLeadingBit(73360u), var_2.x >> (21298u % 32u), 0u, var_2.x & 18364u), false), Struct_1(var_1.x, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_0.x + -322f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_0, vec4<f32>(-620f, -1138f, global1.x, var_0.x)))), var_2, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)))), var_2, var_2.yx, var_1.x), _wgslsmith_sub_vec4_u32(var_2, ~(_wgslsmith_mod_vec4_u32(vec4<u32>(99083u, u_input.c.x, var_2.x, 4294967295u), var_2) & countOneBits(vec4<u32>(4294967295u, 1u, 6723u, u_input.a)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(905f)) + _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1f), !arg_1));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1478f)) + _wgslsmith_div_f32(-1000f, 561f)))))), -768f);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), -1191f, -1322f);
    return Struct_3(Struct_2(Struct_1(23125i, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(871f)), _wgslsmith_div_f32(2182f, -1000f)), select(~vec4<u32>(120422u, 0u, u_input.c.x, 47345u), vec4<u32>(0u, u_input.c.x, 126272u, u_input.c.x), true), true), Struct_1(~_wgslsmith_clamp_i32(73632i, 1i, -323i), -1391f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -594f, var_1.x, 791f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, 1335f), vec4<f32>(var_1.x, 1421f, -758f, var_1.x))))), ~(vec4<u32>(39955u, u_input.c.x, 4857u, u_input.a) >> (vec4<u32>(37689u, u_input.c.x, u_input.b.x, 1u) % vec4<u32>(32u))), arg_1), ~((vec4<u32>(4294967295u, u_input.b.x, 12390u, u_input.c.x) >> (vec4<u32>(50099u, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))) | vec4<u32>(106327u, 38246u, u_input.c.x, u_input.a)), vec2<u32>(1u, abs(u_input.c.x)), i32(-1i) * -1i), ~(~(~vec4<u32>(u_input.a, 1u, u_input.a, 0u))));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global0 = arg_0.a.b.e;
    let var_0 = Struct_5(Struct_4(~abs(firstLeadingBit(vec4<u32>(arg_0.b.x, 24143u, 0u, 0u))), 0i, vec2<u32>(1u, ~10332u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) * _wgslsmith_f_op_f32(sign(1000f))), arg_0.a.b.c.x), ~(~arg_0.a.a.d)), -1089f);
    global0 = false;
    var var_1 = var_0.a;
    var_1 = var_0.a;
    return func_1(arg_0.a.a.e & arg_0.a.b.e, any(select(vec4<bool>(arg_0.a.a.e, true, !arg_0.a.a.e, false), !select(vec4<bool>(false, false, arg_0.a.a.e, arg_0.a.a.e), vec4<bool>(arg_0.a.b.e, false, true, arg_0.a.a.e), arg_0.a.b.e), any(!vec2<bool>(arg_0.a.a.e, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-903f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-239f))))), _wgslsmith_f_op_f32(-global1.x), -766f);
    global1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 430f)), -403f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x)))))));
    global0 = true;
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1868f * -892f), global1.x, -991f));
    let var_0 = func_4(func_1(false, true));
    let var_1 = func_4(func_4(func_1(true, true))).a;
    let x = u_input.a;
    s_output = StorageBuffer(1073f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, var_0.a.a.c.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a.b.c.zx)) + global1.xx))));
}

