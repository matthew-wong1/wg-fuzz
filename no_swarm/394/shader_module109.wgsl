struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_4;

var<private> global2: array<i32, 30> = array<i32, 30>(-37982i, -20313i, -1i, -5940i, 0i, 1i, 88049i, 0i, 0i, 1340i, 8983i, -32897i, -1i, 46381i, 1i, 1372i, -1i, 22031i, 23593i, i32(-2147483648), -22968i, -2831i, -87393i, 20270i, -14375i, 19205i, 10696i, i32(-2147483648), 0i, 1i);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(54318i, -6555i, -26260i, 2147483647i), 0i, vec2<i32>(67552i, -38930i), 28775u, vec2<u32>(40464u, 62671u));

var<private> global4: array<u32, 24> = array<u32, 24>(39532u, 0u, 4294967295u, 4294967295u, 1u, 0u, 14461u, 1u, 24833u, 0u, 4294967295u, 1u, 1u, 74254u, 4728u, 59148u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 1u, 13098u, 0u, 0u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec2<u32> {
    global2 = array<i32, 30>();
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1000f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zy + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1049f, global0.x), arg_1.zx, vec2<bool>(false, true)))) * vec2<f32>(-702f, _wgslsmith_div_f32(global0.x, global0.x))), arg_1.zz))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zz + vec2<f32>(arg_1.x, arg_1.x)))))) - arg_0.yz);
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0)) + _wgslsmith_f_op_vec3_f32(arg_0 * arg_1)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 262f, arg_1.x))))), arg_0), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -272f)), global0.x, arg_0.x), arg_1, vec3<bool>(false, true, true)))));
    let var_1 = Struct_5(~_wgslsmith_mod_vec3_u32(min(vec3<u32>(global3.e.x, 4294967295u, 0u), vec3<u32>(global4[_wgslsmith_index_u32(global3.e.x, 24u)], global3.e.x, 1946u)), vec3<u32>(global4[_wgslsmith_index_u32(10570u, 24u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43749u, 24u)], 24u)], 24u)], 18573u)) & _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(49832u, 24u)], 1u, 38674u) << (vec3<u32>(global3.d, global3.e.x, global4[_wgslsmith_index_u32(global3.d, 24u)]) % vec3<u32>(32u)), ~vec3<u32>(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(global3.d, 24u)], 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global3.e.x, 24u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 24u)], 24u)], 0u), vec3<u32>(1u, 1u, 5242u)) ^ vec3<u32>(38461u, global3.e.x, 1u)), firstLeadingBit(vec4<u32>(max(~0u, ~34762u), 102914u, global3.e.x, 0u)));
    return ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(global3.d, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 24u)], 24u)])), var_1.b.yy), global3.e) ^ firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.d, global3.e.x), global3.e), vec2<u32>(var_1.a.x, _wgslsmith_div_u32(var_1.a.x, var_1.a.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(~u_input.a.x);
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~global3.d, _wgslsmith_dot_vec4_u32(vec4<u32>(33433u, global4[_wgslsmith_index_u32(global3.e.x, 24u)], 14044u, global3.d), ~vec4<u32>(global3.e.x, 0u, global3.e.x, 1u))), global3.e.x, global3.e.x, _wgslsmith_dot_vec2_u32(~(vec2<u32>(20810u, 54306u) | vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 24u)], 1u)), vec2<u32>(global3.e.x, global3.d))), vec4<u32>(28238u, 0u, global3.e.x, 0u));
    var var_2 = global0.x;
    global3 = Struct_1(global3.a, _wgslsmith_div_i32(_wgslsmith_mult_i32(-(~3448i), firstLeadingBit(-38216i)), -global1.a.a), u_input.a, global4[_wgslsmith_index_u32(var_1.x, 24u)], _wgslsmith_sub_vec2_u32(max(vec2<u32>(global3.e.x, 53722u) | var_1.ww, ~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.d, 24u)], 24u)], var_1.x)), vec2<u32>(~58874u, firstTrailingBit(38195u))) & ~firstTrailingBit(vec2<u32>(1u, 14244u)));
    let var_3 = ~1u;
    return Struct_1(vec4<i32>(619i, global2[_wgslsmith_index_u32(~(~1u), 30u)], abs(_wgslsmith_clamp_i32(firstLeadingBit(1i), firstTrailingBit(var_0.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.a, 1i), global3.a.yw))), 1i), ~((i32(-1i) * -1763i) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global1.a.a), ~global3.c)), vec2<i32>(-1i, 1i), var_1.x, max(~(~abs(global3.e)), func_3(vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), global0.x, _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1100f, global0.x) * vec3<f32>(global0.x, -283f, global0.x))), vec3<i32>(~global3.a.x, u_input.a.x, u_input.a.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f));
    var var_1 = Struct_2(!vec3<bool>(!all(vec4<bool>(arg_0.x, arg_1, true, true)), false, _wgslsmith_f_op_f32(-var_0) >= -387f), 1000f, func_2(), vec2<i32>(1i, global3.c.x));
    let var_2 = !vec4<bool>(!var_1.a.x, !any(!vec4<bool>(true, var_1.a.x, arg_0.x, true)), arg_0.x, true);
    var var_3 = Struct_2(var_2.wyz, _wgslsmith_f_op_f32(f32(-1f) * -1509f), var_1.c, ~global3.c);
    var var_4 = -1000f;
    return StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, -1403f)), var_1.b)))), global0.x, vec4<f32>(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b * var_0) * _wgslsmith_f_op_f32(ceil(-248f))) * _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(select(var_3.b, -637f, var_3.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(round(var_3.b)), select(arg_1, true, false))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-505f)) - 238f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, 202f)))), _wgslsmith_dot_vec2_u32(~var_1.c.e, vec2<u32>(func_3(vec3<f32>(var_3.b, global0.x, var_1.b), vec3<f32>(442f, var_0, -527f), global3.a.xxw).x, 37644u)) & 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -12211i;
    let x = u_input.a;
    s_output = func_1(vec2<bool>(true, true), any(vec2<bool>(true, true)));
}

