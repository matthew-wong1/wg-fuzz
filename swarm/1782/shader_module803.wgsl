struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: f32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = -(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wy, vec2<i32>(arg_0.a, arg_0.a)), max(arg_0.a, -17959i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_0.a, var_0.a, 54864i), vec4<i32>(var_0.a, 35763i, var_0.a, u_input.b.x)), -arg_0.a));
    let var_2 = _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(_wgslsmith_mult_i32(var_0.a, u_input.b.x), ~1i, arg_0.a, _wgslsmith_clamp_i32(4915i, u_input.b.x, u_input.b.x)))), vec4<i32>(countOneBits(~(-2147483647i)), 1i, arg_0.a, ~countOneBits(0i)));
    let var_3 = Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_i32(u_input.b, abs(vec4<i32>(1i, arg_0.a, arg_0.a, 32060i)) & ~vec4<i32>(7412i, var_0.a, u_input.b.x, -42484i), u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -949f)))), select(vec2<bool>(_wgslsmith_add_i32(-6585i, -58744i) >= ~var_1.x, select(all(vec4<bool>(false, true, true, false)), true, true)), vec2<bool>(select(true, false, true), any(vec4<bool>(true, true, true, true))), vec2<bool>(all(vec3<bool>(false, true, false)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))));
    let var_4 = var_3;
    return !select(var_4.c, vec2<bool>(1f > var_4.b, var_3.c.x), var_4.c);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(~(~vec4<i32>(1i, ~13495i, -19282i, ~1069i)), -851f, select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), false)), vec2<bool>((u_input.a | 2147483647i) <= (i32(-1i) * -1i), _wgslsmith_mult_u32(0u, 30767u) > firstTrailingBit(u_input.c)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -2613f) < _wgslsmith_f_op_f32(step(-279f, -1074f)))));
    global1 = 1000f;
    let var_1 = Struct_1(u_input.b, 2009f, select(var_0.c, var_0.c, select(vec2<bool>(!var_0.c.x, false), var_0.c, select(select(vec2<bool>(true, true), var_0.c, false), vec2<bool>(true, true), !var_0.c.x))));
    var var_2 = select(!vec4<bool>(false, true, !all(vec3<bool>(true, true, true)), all(func_3(Struct_3(-6912i)))), !(!select(!vec4<bool>(true, var_1.c.x, false, false), select(vec4<bool>(var_0.c.x, var_1.c.x, false, false), vec4<bool>(var_1.c.x, var_0.c.x, var_0.c.x, true), vec4<bool>(var_1.c.x, false, var_0.c.x, false)), select(vec4<bool>(false, true, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, true, var_1.c.x, false), vec4<bool>(var_1.c.x, var_1.c.x, true, var_0.c.x)))), select(select(vec4<bool>(func_3(Struct_3(var_1.a.x)).x, true, var_0.b != var_1.b, var_0.c.x), !vec4<bool>(false, var_1.c.x, false, var_0.c.x), !(!vec4<bool>(var_1.c.x, var_0.c.x, false, false))), !(!(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_0.c.x))), select(vec4<bool>(any(vec3<bool>(true, var_1.c.x, false)), all(vec4<bool>(var_0.c.x, false, true, false)), var_1.c.x, func_3(Struct_3(u_input.b.x)).x), vec4<bool>(func_3(Struct_3(u_input.a)).x, func_3(Struct_3(u_input.a)).x, false, var_0.c.x), !vec4<bool>(true, var_0.c.x, var_1.c.x, true))));
    var var_3 = Struct_3(_wgslsmith_add_i32(-max(-var_1.a.x, -16609i), _wgslsmith_sub_i32(min(~var_0.a.x, firstTrailingBit(-6048i)), -1i)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, _wgslsmith_f_op_f32(step(822f, _wgslsmith_div_f32(var_1.b, -1000f))), _wgslsmith_f_op_f32(-506f + -503f), -291f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_0.b, -1415f, -782f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b, var_1.b, var_0.b, 1324f))), _wgslsmith_div_vec4_f32(vec4<f32>(598f, 1396f, 836f, -586f), vec4<f32>(231f, -517f, 927f, 1561f))))))), var_2.wyz);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_div_i32(u_input.a, -u_input.b.x);
    let var_2 = func_2();
    let var_3 = Struct_1(_wgslsmith_add_vec4_i32(u_input.b, u_input.b & _wgslsmith_clamp_vec4_i32(-u_input.b, vec4<i32>(u_input.b.x, u_input.a, -1170i, 2147483647i), _wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(u_input.d, 12u)], vec4<i32>(0i, u_input.b.x, 1i, -18236i), vec4<i32>(u_input.a, 16974i, u_input.b.x, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + var_2.b.x)), func_2().c.xx);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.a.zy))));
    return Struct_3(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, -1532f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-348f, -806f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(912f, -1930f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1207f, 1000f), vec2<f32>(252f, 640f))), select(false, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(621f, 1000f) + vec2<f32>(202f, -716f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(593f, 410f))))))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -1521f, false));
    global0 = array<vec4<i32>, 12>();
    var var_2 = vec3<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)) || (27357i != reverseBits(u_input.b.x)), false);
    let var_3 = func_2();
    var var_4 = Struct_1(~_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(u_input.c, 12u)], firstTrailingBit(global0[_wgslsmith_index_u32(~8859u, 12u)])), 1790f, func_3(Struct_3(var_0.a)));
    global1 = var_4.b;
    var var_5 = 2147483647i ^ _wgslsmith_dot_vec3_i32(max(u_input.b.zwx, vec3<i32>(countOneBits(2147483647i), -var_0.a, select(var_0.a, u_input.b.x, true))), _wgslsmith_clamp_vec3_i32(max(abs(u_input.b.zwz), ~vec3<i32>(-2147483647i, var_4.a.x, u_input.b.x)), select(~vec3<i32>(var_4.a.x, 30016i, -1i), u_input.b.wyw, var_4.c.x), vec3<i32>(-1i) * -vec3<i32>(30077i, var_0.a, var_0.a)));
    let var_6 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(~44343u, var_4.a.x, _wgslsmith_mod_i32(-(~var_0.a) ^ var_4.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(min(u_input.b.zz, vec2<i32>(var_4.a.x, var_4.a.x)), select(vec2<i32>(0i, 26172i), vec2<i32>(-2147483647i, 21543i), false)), vec2<i32>(max(8520i, u_input.b.x), ~u_input.a))), ~u_input.c, -685f);
}

