struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    let var_0 = vec4<bool>(!(!global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(776f, global0.a.x, false))))) >= global0.a.x, _wgslsmith_mod_u32(u_input.a, u_input.a) < _wgslsmith_mult_u32(u_input.a, reverseBits(select(59868u, 28102u, false))), !any(select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), !vec4<bool>(global0.b.x, false, false, global0.b.x), select(vec4<bool>(true, false, global0.b.x, true), vec4<bool>(global0.b.x, false, true, global0.b.x), true))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.b)) & ~vec4<i32>(u_input.b, u_input.b, -19182i, 2147483647i), ~(-vec4<i32>(u_input.b, u_input.b, 24811i, u_input.b)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(43069i, u_input.b, u_input.b, -4655i)), abs(vec4<i32>(-19358i, u_input.b, -20106i, 2147483647i)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-740f * 3427f), -1028f), !global0.b)), false, abs(_wgslsmith_add_i32(firstLeadingBit(37841i), 1i)));
    let var_2 = select((false && any(select(var_0, var_0, vec4<bool>(var_1.a.b.b.x, true, var_1.a.b.b.x, var_1.a.b.b.x)))) && global0.b.x, var_1.a.b.b.x, true & !(!(-276f <= global0.a.x)));
    var var_3 = global0.a;
    var_3 = var_1.a.b.a;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.xz + _wgslsmith_f_op_vec2_f32(global0.a.zx - vec2<f32>(106f, 467f))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(var_3.xy, vec2<f32>(global0.a.x, 283f))), _wgslsmith_div_vec2_f32(vec2<f32>(763f, -1364f), var_1.a.b.a.xx)))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -arg_0, 84438i ^ u_input.b, ~(-6814i)), ~reverseBits(vec4<i32>(1i, 0i, 0i, -2147483647i)), vec4<i32>(i32(-1i) * -44189i, _wgslsmith_mod_i32(u_input.b, 501i), u_input.b, -arg_0)) << ((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 48433u, 1u) | vec4<u32>(34172u, u_input.a, 2814u, arg_1), vec4<u32>(u_input.a, 1u, u_input.a, 0u) & vec4<u32>(u_input.a, 68728u, arg_1, 43334u)) >> (max(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(1u, u_input.a, 0u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), 1293f, -1488f), vec2<bool>(true, global0.b.x & (global0.a.x <= global0.a.x))));
    global1 = abs(u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(global0.a.zx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * vec2<f32>(global0.a.x, -1557f))) - global0.a.yx));
    var var_2 = -arg_0;
    return Struct_1(var_0.b.a, select(vec2<bool>(!all(vec4<bool>(true, true, false, false)), global0.b.x), !global0.b, vec2<bool>(false, !global0.b.x)));
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.a))), global0.b);
    global0 = func_2(_wgslsmith_mod_i32(u_input.b, u_input.b), min(u_input.a ^ ~u_input.a, 1u));
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, -2147i, -35471i, 1i) ^ vec4<i32>(10455i, -4156i, 73774i, 35084i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), ~(vec4<i32>(-13727i, u_input.b, 53682i, 2147483647i) >> (vec4<u32>(u_input.a, 1u, 1u, 0u) % vec4<u32>(32u))))), func_2(-(~u_input.b), 4294967295u));
    let var_1 = global0.a.xz;
    let var_2 = vec2<bool>(true, !all(var_0.b.b));
    return Struct_1(global0.a, func_2(2147483647i, ~firstLeadingBit(9361u) >> ((~u_input.a | firstTrailingBit(4294967295u)) % 32u)).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 28818i, 16788i, u_input.b), vec4<i32>(u_input.b, 2147483647i, -1i, -32090i)), ~u_input.b, abs(1i), u_input.b), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -12914i, u_input.b), -u_input.b, -4715i, _wgslsmith_dot_vec4_i32(vec4<i32>(30955i, u_input.b, 0i, 2147483647i), vec4<i32>(u_input.b, u_input.b, 4684i, u_input.b)))), vec4<i32>(reverseBits(u_input.b), min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, 3249i), vec3<i32>(-1i, u_input.b, u_input.b)), firstTrailingBit(-23369i)), abs(u_input.b), ~max(0i, u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(199f, -689f, 876f) * global0.a)), vec3<f32>(_wgslsmith_f_op_f32(round(-1505f)), _wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)), global0.a.x), vec3<bool>(true, any(vec2<bool>(global0.b.x, global0.b.x)), false && global0.b.x))), select(func_2(~u_input.b, ~4294967295u).b, !global0.b, !vec2<bool>(true, global0.b.x))));
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_add_i32(2147483647i, (15792i & ~u_input.b) << (u_input.a % 32u));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.b.a.x)))) + var_0.b.a.x), global0.a.x, var_1.a.x), var_0.b.b);
    var_0 = Struct_2(max(vec4<i32>(var_2, -var_0.a.x, _wgslsmith_sub_i32(2147483647i, 0i), -var_2) << (countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), var_0.a), func_1());
    var var_3 = !select(func_1().b, !var_1.b, var_1.b);
    var_1 = var_0.b;
    let var_4 = (abs(reverseBits(firstTrailingBit(var_0.a.x))) <= max(~(-2147483647i), -2147483647i)) | true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(min(var_0.a.ww & -vec2<i32>(-31132i, -16826i), ~vec2<i32>(u_input.b, var_0.a.x)), -vec2<i32>(-var_0.a.x, _wgslsmith_dot_vec2_i32(var_0.a.wx, var_0.a.wy)), var_0.a.zx), u_input.b >> (u_input.a % 32u), vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(select(u_input.b, 1i, var_4), 40092i)), _wgslsmith_sub_i32(u_input.b, firstLeadingBit(~var_2)), i32(-1i) * -33016i), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-1i), _wgslsmith_mult_i32(~var_0.a.x, ~var_2), -36497i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(8793i, var_0.a.x, -2147483647i), -u_input.b)), -_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(37611i, -2147483647i, var_0.a.x, 11639i)), ~var_0.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(abs(u_input.a), countOneBits(u_input.a), firstTrailingBit(u_input.a), u_input.a), firstTrailingBit(vec4<u32>(select(0u, u_input.a, false), 0u, u_input.a, u_input.a))));
}

