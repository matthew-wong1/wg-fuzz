struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(1i, i32(-2147483648), -3758i, 1i), 28116u, -4857i, Struct_1(54013u, true, 4294967295u, vec2<i32>(-1i, -1i)));

var<private> global1: array<vec4<u32>, 14>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(~90075u, all(!select(!vec2<bool>(global0.d.b, false), vec2<bool>(true, global0.d.b), true)), (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(952u, u_input.b, 0u), vec3<u32>(global0.b, u_input.b, u_input.b)), vec3<u32>(125939u, 4294967295u, global0.b) & vec3<u32>(42565u, 0u, u_input.b)) >> (1u % 32u)) & firstLeadingBit(~(~u_input.b)), u_input.d.zw);
    var var_1 = global0.d;
    let var_2 = Struct_2(vec4<i32>((-25056i << (global0.b % 32u)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.x, u_input.d.x), var_1.d), _wgslsmith_mod_i32(select(2108i, 44200i, var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-49323i, 25618i, 2147483647i), vec3<i32>(global0.a.x, 1i, var_1.d.x))), var_0.d.x, var_1.d.x) | u_input.d, u_input.b, _wgslsmith_dot_vec4_i32(global0.a ^ vec4<i32>(-1i, i32(-1i) * -1i, max(global0.c, u_input.d.x), _wgslsmith_add_i32(var_0.d.x, var_0.d.x)), global0.a & vec4<i32>(abs(1i), var_0.d.x, 2147483647i, reverseBits(1i))), Struct_1(countOneBits(~4294967295u), true, _wgslsmith_div_u32(4294967295u, ~(~1u)), firstLeadingBit(vec2<i32>(firstLeadingBit(0i), max(var_0.d.x, var_1.d.x)))));
    let var_3 = u_input.c;
    var_1 = global0.d;
    return select(firstTrailingBit(vec4<i32>(50601i, _wgslsmith_mult_i32(_wgslsmith_add_i32(global0.a.x, 36742i), 2147483647i), -max(8502i, var_3), abs(-2147483647i) << (_wgslsmith_mult_u32(var_0.a, 53630u) % 32u))), vec4<i32>(u_input.a, -_wgslsmith_clamp_i32(firstTrailingBit(36688i), var_3, ~2147483647i), -(~(-35463i)) ^ var_2.a.x, 37083i), vec4<bool>(!(global0.d.b != var_2.d.b), all(!vec4<bool>(true, var_0.b, var_2.d.b, var_1.b)) | true, false, var_2.d.b));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(541f, 1450f, -546f, -344f) * vec4<f32>(1099f, -349f, -339f, 243f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(775f, -585f, -167f, -234f) * vec4<f32>(-624f, -321f, -618f, -1389f))))));
    var_0 = 0i;
    var var_2 = Struct_3(45169u & arg_2.x, Struct_2(global0.a, u_input.b, 1i, global0.d));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, 1392f, -547f, var_1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-592f, -1810f, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, -113f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1612f, -1085f) - vec4<f32>(var_1.x, var_1.x, 300f, var_1.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 1825f, 1343f, 795f))), vec4<bool>(var_2.b.d.b, false, false, var_2.b.d.b)))))));
    return Struct_2(_wgslsmith_mod_vec4_i32(func_3(), global0.a), _wgslsmith_sub_u32(firstTrailingBit(u_input.b), arg_2.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, var_2.b.b, global0.d.c) & vec4<u32>(1u, 13415u, 792u, 4294967295u), arg_2) % 32u)), func_3().x, Struct_1(select(max(~global0.b, min(0u, u_input.b)), u_input.b, true), var_2.b.d.b, u_input.b, arg_0));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)));
    global0 = func_2(_wgslsmith_add_vec2_i32(vec2<i32>(-54320i, global0.a.x), select(max(vec2<i32>(u_input.e, -55527i) & arg_2.d.d, ~vec2<i32>(2043i, arg_0.d.x)), arg_0.d, !(!vec2<bool>(false, arg_0.b)))), global0.a.ywz, vec4<u32>(1u, _wgslsmith_mod_u32(global0.b, 0u), arg_0.a, ~(~arg_0.c)));
    global0 = Struct_2(u_input.d, ~(4294967295u >> (~global0.b % 32u)), ~arg_0.d.x, arg_0);
    var var_1 = Struct_1(0u, 59273i <= _wgslsmith_dot_vec4_i32(arg_2.a, vec4<i32>(u_input.c, 1i, -14285i, 12310i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_0.c, 4294967295u), vec4<u32>(arg_2.b, 1u, 0u, arg_0.c)) % vec4<u32>(32u))), u_input.b, func_3().yx);
    var_1 = global0.d;
    return -9381i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec4<i32>(-18008i, ~func_1(Struct_1(global0.b, global0.d.b, global0.b, u_input.d.xz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 868f, 1000f)), Struct_2(global0.a, 33070u, 0i, Struct_1(35545u, global0.d.b, 4294967295u, vec2<i32>(u_input.c, global0.c)))), u_input.c ^ firstLeadingBit(max(-35355i, -64948i)), 16461i), max(_wgslsmith_sub_u32(~u_input.b, 4294967295u), _wgslsmith_add_u32(u_input.b, ~(~u_input.b))), firstLeadingBit(~(-1i)), Struct_1(1u << ((countOneBits(u_input.b) | _wgslsmith_sub_u32(u_input.b, 17512u)) % 32u), global0.d.b, 55262u, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global0.a.zw, global0.d.d), vec2<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), -1i))));
    global0 = Struct_2(u_input.d, abs(~61119u), -u_input.a, func_2(global0.d.d, -max(select(vec3<i32>(global0.a.x, -1i, global0.d.d.x), u_input.d.xyy, vec3<bool>(global0.d.b, true, global0.d.b)), vec3<i32>(global0.c, global0.d.d.x, u_input.a)), vec4<u32>(global0.d.c, 73095u, ~(~49527u), ~4294967295u)).d);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(340f)) * 2770f), _wgslsmith_f_op_f32(-1022f * _wgslsmith_f_op_f32(f32(-1f) * -289f))))));
    global1 = array<vec4<u32>, 14>();
    let var_1 = abs(~vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.d.x, 0i)), _wgslsmith_add_vec3_i32(u_input.d.zxz, global0.a.zzz)), select(1i | global0.d.d.x, u_input.e, any(vec2<bool>(global0.d.b, true))), global0.a.x));
    global0 = Struct_2(-_wgslsmith_mult_vec4_i32(firstLeadingBit(func_3()), -select(u_input.d, u_input.d, false)), firstTrailingBit(~firstLeadingBit(global0.b)), var_1.x, global0.d);
    global0 = Struct_2(_wgslsmith_mult_vec4_i32(global0.a, u_input.d), abs(abs(63827u)), global0.c, func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -48284i), var_1.zx) << (abs(max(vec2<u32>(global0.d.a, 4294967295u), vec2<u32>(u_input.b, 62054u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.d.x, u_input.e, 1i), vec3<i32>(43957i, global0.c, 2147483647i), global0.a.yzw ^ max(vec3<i32>(-20771i, 45520i, global0.d.d.x), var_1)), global1[_wgslsmith_index_u32(1u, 14u)]).d);
    var var_2 = select(_wgslsmith_clamp_vec2_i32((~u_input.d.yz << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.e, u_input.e)), _wgslsmith_clamp_vec2_i32(global0.a.xw, u_input.d.xx, var_1.xz)), select(_wgslsmith_sub_vec2_i32(vec2<i32>(-8531i, -12762i) ^ var_1.zx, countOneBits(global0.d.d)), ~vec2<i32>(0i, var_1.x), false), countOneBits(u_input.d.xx)), var_1.yx ^ u_input.d.zy, !(~countOneBits(global0.c) > (0i & var_1.x)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2127f * -461f), -531f, !global0.d.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-846f)) - _wgslsmith_f_op_f32(max(-1578f, -1290f))) + _wgslsmith_f_op_f32(f32(-1f) * -1701f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-557f))), 155f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * 890f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2397f, 756f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1363f, global0.d.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), 1343f);
}

