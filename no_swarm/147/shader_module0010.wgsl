struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<u32>(21019u, 1u, 41123u)), Struct_1(vec3<u32>(4294967295u, 30700u, 3426u)), Struct_1(vec3<u32>(3330u, 89580u, 1u)), Struct_1(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(18439u, 0u, 1u)), Struct_1(vec3<u32>(0u, 0u, 35279u)), Struct_1(vec3<u32>(4294967295u, 47752u, 4294967295u)), Struct_1(vec3<u32>(47363u, 1u, 52646u)), Struct_1(vec3<u32>(69410u, 40454u, 41598u)), Struct_1(vec3<u32>(24341u, 1u, 0u)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec3<u32>(23816u, 34370u, 0u)), Struct_1(vec3<u32>(49485u, 0u, 4294967295u)));

var<private> global3: array<vec3<bool>, 13>;

var<private> global4: array<vec2<i32>, 17>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = arg_0;
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, ~u_input.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, global1.x, global1.x) << (vec4<u32>(u_input.a.x, 34113u, u_input.a.x, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-22667i, -2147483647i, u_input.b.x, -2147483647i), vec4<i32>(global1.x, global1.x, global1.x, -22393i))), firstTrailingBit(_wgslsmith_sub_i32(global1.x, ~u_input.b.x))), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, _wgslsmith_mult_i32(-1i & global1.x, 32547i), u_input.b.x, select(-12807i, 1i, true)), vec4<i32>(-(~global1.x), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 12210i, 2147483647i)), ~(~global1.x), u_input.b.x)), vec4<i32>(-u_input.b.x | -2147483647i, 1i, global1.x, ~(global1.x | firstLeadingBit(-2147483647i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, arg_0.x))), -111f, -1205f, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -201f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2198f, -1000f, 534f, var_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1279f, var_0.x, var_0.x, 677f), global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true))))));
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 13u)];
    var_2 = Struct_1(~vec3<u32>(~(~34675u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(743u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), min(u_input.a.x, 0u)), ~(~u_input.a.x)));
    return ~_wgslsmith_mult_vec2_u32(abs(u_input.a), _wgslsmith_div_vec2_u32(~var_2.a.xx, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), max(var_2.a.yz, var_2.a.yz), vec2<u32>(var_2.a.x, 54780u) & vec2<u32>(51711u, var_2.a.x))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1659f, 753f, false)) - _wgslsmith_f_op_f32(-146f * 151f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(874f)), -1705f))))));
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, -266f, 852f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1350f, 1520f, 1279f) + vec3<f32>(708f, -786f, 1480f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(159f, 311f, 267f), vec3<f32>(-2168f, -1000f, -114f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(336f, 746f, 1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(771f, 235f, -232f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1825f, 434f, -160f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f + 765f)), _wgslsmith_div_f32(-1334f, -818f)))));
    global1 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, global1.x, 1i, global1.x), vec4<i32>(-41883i, global1.x, u_input.b.x, -55087i)), vec4<i32>(global1.x, global1.x, u_input.b.x, global1.x) | vec4<i32>(u_input.b.x, global1.x, u_input.b.x, global1.x), true), min(_wgslsmith_sub_vec4_i32(vec4<i32>(18798i, global1.x, 3014i, u_input.b.x), vec4<i32>(global1.x, 68025i, global1.x, global1.x)), vec4<i32>(global1.x, 1i, u_input.b.x, 5763i) | vec4<i32>(global1.x, global1.x, 42102i, u_input.b.x))), vec4<i32>(u_input.b.x, global1.x, ~u_input.b.x, global1.x), _wgslsmith_add_vec4_i32(firstLeadingBit(select(vec4<i32>(u_input.b.x, u_input.b.x, global1.x, -2147483647i), vec4<i32>(global1.x, 14297i, global1.x, u_input.b.x), true)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(4437i, u_input.b.x, 25852i, 0i), vec4<i32>(global1.x, 1i, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1i, 8376i, u_input.b.x), vec4<i32>(-13909i, global1.x, u_input.b.x, u_input.b.x)))));
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(296u, ~(arg_0 & (var_1.x ^ u_input.a.x))), 13u)]);
    return global2[_wgslsmith_index_u32(61471u, 13u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<vec4<f32>, 14>();
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(~((arg_3.a & vec3<u32>(84817u, 11298u, 15073u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_2, 38818u), arg_3.a)), firstLeadingBit(arg_3.a), _wgslsmith_div_vec3_u32(vec3<u32>(17043u, 4294967295u, 1u), vec3<u32>(~45192u, ~arg_0.a.x, u_input.a.x ^ arg_3.a.x))));
    var_0 = Struct_1(arg_0.a);
    var var_1 = func_2(u_input.a.x);
    var var_2 = var_1.a;
    return select(arg_1.xy, select(!vec2<bool>(!arg_1.x, select(true, arg_1.x, false)), vec2<bool>(false, arg_1.x), select(select(!vec2<bool>(arg_1.x, true), select(arg_1.zx, arg_1.xx, false), select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, false), true)), !select(vec2<bool>(true, false), arg_1.yy, false), select(!vec2<bool>(false, arg_1.x), select(vec2<bool>(false, false), arg_1.xz, arg_1.zz), !arg_1.x))), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(select(vec2<bool>(true, true), func_1(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 35963u)), select(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], true), min(4776u, 0u), global2[_wgslsmith_index_u32(u_input.a.x << (1u % 32u), 13u)]), func_1(global2[_wgslsmith_index_u32(1u, 13u)], vec3<bool>(false, false, true), 1u, Struct_1(vec3<u32>(16665u, u_input.a.x, u_input.a.x))))), false, func_1(Struct_1(~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u))), vec3<bool>(!(u_input.a.x > u_input.a.x), any(vec4<bool>(true, true, true, true)), !func_1(Struct_1(vec3<u32>(0u, 24326u, u_input.a.x)), vec3<bool>(false, true, false), 33594u, global2[_wgslsmith_index_u32(1u, 13u)]).x), _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 12571u, 0u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec3<u32>(u_input.a.x, u_input.a.x, 30963u) ^ vec3<u32>(1u, u_input.a.x, u_input.a.x))), Struct_1(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<u32>(31474u, 46119u, 32646u))).x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-928f - -2673f)), 760f)), _wgslsmith_f_op_f32(round(639f))) + 673f);
    var var_2 = -1142f;
    let var_3 = select(vec2<bool>(any(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), var_0.x)), var_0.x), vec2<bool>(true, true), select(!var_0.zy, select(var_0.xz, !var_0.yy, true), !select(var_0.zy, var_0.xx, vec2<bool>(var_0.x, true))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_1)) + var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_1, 466f, -1232f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 14u)]))))))), -1i, abs(vec4<u32>(0u, 37351u, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -801f, -199f))).x, 5950u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 144858u), vec3<u32>(0u, 1u, u_input.a.x)))));
}

