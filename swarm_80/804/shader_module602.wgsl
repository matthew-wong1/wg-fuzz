struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-167f, 1u, vec4<u32>(47740u, 0u, 66193u, 0u), -12330i), Struct_1(1874f, 0u, vec4<u32>(45765u, 88572u, 314u, 4294967295u), -40001i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> bool {
    var var_0 = u_input.c;
    var var_1 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * 343f) * global0.a) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1097f - global0.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - global0.a))), (_wgslsmith_add_u32(var_0.x, ~var_0.x) != u_input.d) & all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), !any(vec3<bool>(true, true, true)) && all(vec4<bool>(true, any(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)), true)));
    var var_2 = 1000f;
    let var_3 = -1941f;
    let var_4 = _wgslsmith_f_op_f32(506f - var_3);
    return true;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    let var_0 = false;
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-775f, 380f, global0.a, global0.a), vec4<f32>(var_1.a.x, 2361f, -2363f, arg_1.a.x), true)), _wgslsmith_f_op_vec4_f32(exp2(arg_1.a)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-700f, var_1.a.x, 1219f, -502f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -940f, -555f, arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x - 119f), 727f, _wgslsmith_f_op_f32(floor(-666f)), _wgslsmith_f_op_f32(arg_1.a.x + -1052f))))));
    global0 = global1[_wgslsmith_index_u32(arg_0.x, 2u)];
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_mod_u32(62505u, global0.c.x)) >> ((~1u | (~max(u_input.d, 17184u) ^ ~(u_input.c.x ^ 99289u))) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = reverseBits(func_3(max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_2.b, 7281u, 4294967295u), arg_2.c), _wgslsmith_add_vec4_u32(~vec4<u32>(54744u, arg_2.c.x, arg_0.c.x, 0u), ~vec4<u32>(arg_0.c.x, u_input.a.x, global0.b, u_input.a.x))), arg_3, -u_input.b));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))), global0.b, global0.c, max(-min(-2147483647i, arg_0.d) ^ global0.d, -22846i));
    let var_1 = global0.d;
    let var_2 = abs(-vec4<i32>(_wgslsmith_div_i32(arg_1.x, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.d, global0.d) << (vec2<u32>(global0.c.x, arg_2.b) % vec2<u32>(32u)), reverseBits(vec2<i32>(-11671i, arg_2.d))), i32(-1i) * -8847i, -_wgslsmith_mult_i32(u_input.b.x, -23550i)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(arg_3.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_3.a.x, -1809f, -1486f)))))))));
    return Struct_2(arg_3.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    return u_input.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-(~(-5568i)), min(global0.d, -global0.d)) | -(-1i ^ abs(global0.d)), abs(_wgslsmith_mult_i32(select(-5896i, _wgslsmith_mult_i32(global0.d, -2147483647i), all(arg_0.wxx)), global0.d)));
    var var_1 = arg_2.a.x;
    var var_2 = firstTrailingBit(arg_1.c);
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -1694f))), 23301u, arg_1.c, ~(firstLeadingBit(global0.d) << (~_wgslsmith_div_u32(arg_1.c.x, 36615u) % 32u)));
    let var_3 = arg_2.a.x;
    return global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(global0.b, u_input.d)), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.a, global0.a))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a, 1464f, 235f))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.a, global0.a, -1222f), vec3<f32>(global0.a, -1180f, global0.a)), vec3<bool>(false, true, false)))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, global0.a, _wgslsmith_f_op_f32(global0.a + 1243f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, -326f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, 698f)))), !(!(-959f < global0.a)))));
    let var_1 = vec3<bool>(func_1() && true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1267f - var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a * -798f), _wgslsmith_f_op_f32(-global0.a)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-974f, _wgslsmith_div_f32(global0.a, var_0.x))) + -624f), true);
    var var_2 = func_5(select(!vec4<bool>(-1i == global0.d, !var_1.x, true, var_1.x), !vec4<bool>(!var_1.x, any(vec2<bool>(var_1.x, false)), true, 8410u <= u_input.c.x), select(!(!vec4<bool>(var_1.x, var_1.x, true, true)), vec4<bool>(any(var_1), var_1.x, any(var_1.zz), true), vec4<bool>(var_1.x, true, var_1.x, global0.a <= var_0.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -216f))), _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x) >> (max(1u, ~69356u) % 32u), firstLeadingBit(func_4(Struct_2(vec4<f32>(var_0.x, var_0.x, -758f, global0.a)), func_2(Struct_1(global0.a, u_input.d, u_input.a, -9653i), vec2<i32>(u_input.b.x, 2147483647i), Struct_1(var_0.x, u_input.d, global0.c, -24542i), Struct_2(vec4<f32>(global0.a, global0.a, var_0.x, -313f))))), global0.d), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(775f, -641f))), func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(59345u, 69151u), 2u)], -u_input.b.zz, global1[_wgslsmith_index_u32(1u | u_input.a.x, 2u)], Struct_2(vec4<f32>(var_0.x, -288f, var_0.x, 463f))).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) + var_0.x), _wgslsmith_f_op_f32(1486f * _wgslsmith_f_op_f32(f32(-1f) * -805f)))));
    var var_3 = !(!select(var_1, !vec3<bool>(true, var_1.x, var_1.x), true));
    var var_4 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(261f, -1504f, var_0.x, global0.a), vec4<f32>(402f, global0.a, 948f, -1229f), vec4<bool>(var_1.x, false, var_3.x, true))), vec4<f32>(-1482f, global0.a, 548f, var_0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -1046f, -194f, 690f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-437f))), -290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * var_0.x), _wgslsmith_f_op_f32(-global0.a))));
    var var_5 = global1[_wgslsmith_index_u32(~min(global0.b, 4294967295u), 2u)];
    let var_6 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_5.a))), 1164f, 850f))));
    let var_7 = global1[_wgslsmith_index_u32(~(4294967295u ^ select(~1u, 4294967295u, var_3.x)), 2u)];
    var var_8 = Struct_2(var_6.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(var_7.d, -4657i)), ~(~vec2<i32>(23092i, global0.d))), reverseBits(u_input.b.ww & u_input.b.wx), ~u_input.b.yw | _wgslsmith_clamp_vec2_i32(-u_input.b.ww, vec2<i32>(var_2.d, -2147483647i), ~vec2<i32>(-15011i, 17025i))), ~vec3<u32>(~global0.b, var_2.c.x, var_5.c.x | 5863u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1502f, -219f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(Struct_1(117f, var_2.c.x, vec4<u32>(38119u, 0u, var_7.b, var_2.c.x), var_5.d), vec2<i32>(-65988i, -1i), global1[_wgslsmith_index_u32(29160u, 2u)], var_6).a.zy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_8.a.yy, var_4.a.yx, var_3.zx))))), ~(~abs(i32(-1i) * -1i)), global0.d);
}

