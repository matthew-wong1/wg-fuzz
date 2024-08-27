struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(5814i, -1034i, 38260i), vec4<i32>(2147483647i, 14191i, 0i, -2502i), false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(-firstLeadingBit(global0.b.zxx), -arg_1.c, all(vec3<bool>(any(vec2<bool>(true, global0.c)), any(vec3<bool>(true, true, true)), true)));
    global0 = Struct_1(arg_1.e.b.yww, ~(~vec4<i32>(-var_0.a.x, reverseBits(-1i), ~u_input.a, _wgslsmith_sub_i32(arg_1.e.a.x, global0.b.x))), arg_1.a.x);
    let var_1 = vec3<u32>(arg_1.b, ~(~u_input.b.x), _wgslsmith_mod_u32(~u_input.b.x, min(u_input.b.x, 4294967295u)));
    global0 = Struct_1(abs(abs(max(arg_0, vec3<i32>(47127i, -2147483647i, 1i)))) >> (vec3<u32>(reverseBits(arg_1.b), ~var_1.x, _wgslsmith_mod_u32(arg_1.b | arg_1.b, u_input.b.x)) % vec3<u32>(32u)), (vec4<i32>(_wgslsmith_mod_i32(global0.a.x, var_0.a.x), u_input.a, -2147483647i, countOneBits(arg_0.x)) >> (~u_input.b % vec4<u32>(32u))) & vec4<i32>(~2147483647i & _wgslsmith_dot_vec3_i32(var_0.b.zyz, vec3<i32>(global0.a.x, u_input.a, -1i)), -23986i, -14978i, 1i), all(select(select(select(vec3<bool>(global0.c, var_0.c, true), vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(false, var_0.c, false)), vec3<bool>(var_0.c, arg_1.a.x, true), !vec3<bool>(false, var_0.c, false)), select(!vec3<bool>(true, arg_1.e.c, var_0.c), select(vec3<bool>(true, var_0.c, global0.c), vec3<bool>(false, global0.c, false), vec3<bool>(var_0.c, true, global0.c)), !vec3<bool>(arg_1.e.c, arg_1.a.x, var_0.c)), select(!vec3<bool>(global0.c, true, arg_1.e.c), vec3<bool>(var_0.c, arg_1.e.c, true), !vec3<bool>(true, arg_1.a.x, false)))));
    let var_2 = arg_1;
    return vec2<f32>(arg_1.d.x, arg_1.d.x);
}

fn func_2() -> vec2<u32> {
    global0 = Struct_1(global0.a, _wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(u_input.a, _wgslsmith_div_i32(global0.b.x, global0.a.x), -6122i, reverseBits(-3455i)) | _wgslsmith_sub_vec4_i32(global0.b ^ global0.b, select(vec4<i32>(-36958i, 74730i, 41429i, global0.b.x), vec4<i32>(-828i, -2709i, -2147483647i, u_input.a), global0.c))), global0.c);
    let var_0 = ~(-25253i);
    var var_1 = Struct_2(vec2<bool>(global0.c, global0.c), u_input.b.x, global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1721f - 1079f), _wgslsmith_f_op_f32(min(-2143f, 385f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-936f, 1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(775f, 1534f)))) - _wgslsmith_f_op_vec2_f32(func_3(global0.b.zxw, Struct_2(vec2<bool>(global0.c, true), 1u, global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1248f, -123f)), Struct_1(global0.b.xyy, vec4<i32>(31557i, -1i, global0.b.x, u_input.a), global0.c))))), Struct_1(global0.a, -_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a, global0.b.x, 2147483647i, global0.b.x), global0.b), _wgslsmith_div_vec4_i32(global0.b, global0.b)), !(false || (u_input.b.x >= u_input.b.x))));
    var_1 = Struct_2(var_1.a, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.b, ~vec4<u32>(49168u, 56032u, var_1.b, 1u)), ~u_input.b), global0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.d.x))), _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-282f * var_1.d.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_1.b != reverseBits(var_1.b))), Struct_1(global0.a, -_wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(2147483647i, -50681i, u_input.a, 0i)) << (countOneBits(u_input.b) % vec4<u32>(32u)), any(select(!vec2<bool>(false, var_1.e.c), var_1.a, !global0.c))));
    let var_2 = var_1.d;
    return u_input.b.xx;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<f32> {
    var var_0 = vec3<bool>(global0.c, -23784i < -min(u_input.a, 12176i), !(!(!(!global0.c))));
    var var_1 = ~arg_0;
    let var_2 = func_2();
    var var_3 = Struct_2(var_0.yx, ~(arg_0 ^ arg_0), ~vec4<i32>(u_input.a, global0.a.x, _wgslsmith_sub_i32(global0.a.x, u_input.a), countOneBits(u_input.a)) & _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, -10418i, global0.a.x), global0.b), _wgslsmith_add_vec4_i32(global0.b, vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))), _wgslsmith_add_vec4_i32(select(global0.b, global0.b, vec4<bool>(var_0.x, global0.c, true, true)), vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(arg_1, arg_1)))))), Struct_1((vec3<i32>(u_input.a, u_input.a, global0.b.x) & ~vec3<i32>(global0.a.x, -1i, u_input.a)) ^ global0.a, vec4<i32>(-global0.b.x, _wgslsmith_mult_i32(-u_input.a, 0i), u_input.a, ~(i32(-1i) * -1i)), false));
    global0 = var_3.e;
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(1384f)), var_3.d.x, _wgslsmith_f_op_f32(408f * _wgslsmith_f_op_f32(362f - var_3.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(406f)) * var_3.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 610f, -2157f, arg_1), vec4<f32>(var_3.d.x, -1768f, arg_1, -1516f), false))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1602f, var_3.d.x, -787f, -768f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -103f, arg_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, -662f, 827f, -145f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-552f, -957f, 360f, 327f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = arg_2;
    var var_1 = Struct_2(!(!vec2<bool>(select(arg_2.a.x, var_0.e.c, true), false | global0.c)), func_2().x | _wgslsmith_div_u32(arg_1.b, ~min(36015u, u_input.b.x)), vec4<i32>(global0.b.x, -abs(u_input.a), firstLeadingBit(abs(63056i)), u_input.a), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + _wgslsmith_f_op_f32(arg_0.x + arg_1.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_1(0u, arg_0.x)).x, arg_1.d.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + -1000f), arg_1.d.x))))), Struct_1(arg_1.e.a >> (u_input.b.wzy % vec3<u32>(32u)), -global0.b << ((vec4<u32>(arg_2.b, 4294967295u, var_0.b, var_0.b) ^ _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)) % vec4<u32>(32u)), select(any(!vec4<bool>(true, global0.c, global0.c, false)), (true | arg_1.a.x) && arg_1.e.c, true)));
    var var_2 = _wgslsmith_clamp_vec2_i32(global0.b.wz, min(vec2<i32>(_wgslsmith_mult_i32(select(2147483647i, 2147483647i, false), 24872i), var_0.e.a.x), ~arg_2.e.b.yz), select(min(arg_1.e.b.xz, -var_0.c.wy), ~firstLeadingBit(abs(var_1.c.yw)), ~arg_2.c.x <= ~(~(-16149i))));
    let var_3 = vec3<bool>(false, false, abs(_wgslsmith_mult_u32(firstTrailingBit(48352u), 1u | var_0.b)) < (u_input.b.x | 0u));
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(2147483647i, 2147483647i, -1i), Struct_2(var_1.a, 4294967295u, vec4<i32>(2147483647i, -8267i, 3893i, var_2.x), arg_1.d, arg_2.e))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - 149f) - arg_2.d.x))))));
    return StorageBuffer(_wgslsmith_add_vec2_i32(firstTrailingBit(~vec2<i32>(var_0.c.x, arg_2.e.b.x)), vec2<i32>(-14549i, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = true;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-326f * 126f), _wgslsmith_f_op_f32(1000f - 921f), _wgslsmith_f_op_f32(floor(-304f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, -1000f, 1729f, -379f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-812f, -308f, 735f, 1108f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1446f, -216f, -468f, -615f)) + vec4<f32>(1824f, 1048f, 1276f, -480f)) - _wgslsmith_f_op_vec4_f32(func_1(u_input.b.x, _wgslsmith_f_op_f32(step(619f, -2216f))))), all(select(select(vec4<bool>(true, false, true, global0.c), vec4<bool>(false, false, global0.c, false), vec4<bool>(true, true, global0.c, global0.c)), vec4<bool>(global0.c, global0.c, true, true), any(vec2<bool>(global0.c, true)))))), Struct_2(vec2<bool>(!select(global0.c, false, false), !global0.c), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.b.x & 23749u)), select(abs(vec4<i32>(0i, 2147483647i, 2147483647i, global0.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, -1i, -16794i)), false) >> (vec4<u32>(33547u, _wgslsmith_mod_u32(78718u, u_input.b.x), u_input.b.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(global0.a.x, 81587i, 0i), Struct_2(vec2<bool>(false, false), u_input.b.x, global0.b, vec2<f32>(598f, 472f), Struct_1(vec3<i32>(-2109i, u_input.a, -1i), global0.b, false)))), vec2<f32>(567f, 833f), global0.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(549f, 2200f) + vec2<f32>(-1371f, -1339f))), Struct_1(vec3<i32>(1i, 22983i, global0.b.x) & global0.b.yxz, _wgslsmith_sub_vec4_i32(~vec4<i32>(global0.b.x, 1i, 0i, 1542i), vec4<i32>(-10309i, -1i, 26762i, -1i)), true)), Struct_2(!select(select(vec2<bool>(global0.c, global0.c), vec2<bool>(false, global0.c), vec2<bool>(global0.c, global0.c)), select(vec2<bool>(true, global0.c), vec2<bool>(global0.c, global0.c), true), vec2<bool>(true, true)), _wgslsmith_sub_u32(~(0u | u_input.b.x), 0u), (~vec4<i32>(u_input.a, -14322i, u_input.a, -1i) >> (~u_input.b % vec4<u32>(32u))) | vec4<i32>(abs(-20515i), ~global0.b.x, select(u_input.a, global0.a.x, true), u_input.a >> (4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(855f, -1048f)), _wgslsmith_f_op_vec2_f32(func_3(global0.b.wxy, Struct_2(vec2<bool>(global0.c, global0.c), u_input.b.x, global0.b, vec2<f32>(154f, 1000f), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), global0.b, global0.c)))))), Struct_1(vec3<i32>(_wgslsmith_mod_i32(u_input.a, 1i), u_input.a, -2147483647i), vec4<i32>(0i, ~global0.a.x, -2238i, u_input.a), all(vec3<bool>(true, true, true)))));
}

