struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 6093u);

var<private> global1: vec3<u32> = vec3<u32>(51643u, 16613u, 1u);

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<f32>, 8>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_5(!(!select(vec2<bool>(true, global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), true), !vec2<bool>(false, global2.x))));
    global2 = vec2<bool>(true, true);
    let var_1 = ~(-9563i);
    var var_2 = !select(!vec4<bool>(select(var_0.a.x, global2.x, var_0.a.x), true, global2.x && false, false), select(select(vec4<bool>(global2.x, false, var_0.a.x, global2.x), select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, true, var_0.a.x), var_0.a.x), global2.x), vec4<bool>(false, var_0.a.x & global2.x, global2.x, false), (true && global2.x) || true), vec4<bool>(true, var_0.a.x, true, !all(vec3<bool>(global2.x, global2.x, true))));
    var_2 = !(!vec4<bool>(var_0.a.x, var_0.a.x, var_2.x & true, true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1955f, 600f, -1985f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1021f, 618f, 484f))))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-773f, -822f, -499f) + vec3<f32>(472f, -1000f, 1744f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -512f, -493f) + vec3<f32>(-1848f, 308f, -1380f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 393f, 739f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-980f, 623f, 553f)), !global2.x))))), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(select(arg_1.x, -6595i, global2.x), arg_1.x ^ -2147483647i)), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(9732i, -1i), arg_1.zy), abs(firstLeadingBit(-1i)))), ~(-arg_1.zx), _wgslsmith_mod_vec3_u32(u_input.a.xxz, ~vec3<u32>(u_input.c, global0.x, ~4294967295u)));
    var var_1 = true;
    var var_2 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(-2143f + -661f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, var_0.a.x)))) * var_0.a.x), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)));
    let var_3 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(~global1.x, ~global1.x), ~vec2<u32>(u_input.b, var_0.d.x ^ 6379u));
    global0 = vec2<u32>(global1.x, abs(min(min(1u, ~94957u), firstTrailingBit(5125u))));
    return (~66053u == _wgslsmith_add_u32(firstLeadingBit(u_input.c), ~(~global1.x))) & (false & any(!select(vec3<bool>(true, true, global2.x), vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, false, global2.x))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_5 {
    global2 = vec2<bool>(true, select(true, true, !all(select(vec3<bool>(global2.x, global2.x, arg_0), vec3<bool>(global2.x, global2.x, false), vec3<bool>(arg_0, false, true)))));
    global3 = array<vec4<f32>, 8>();
    global3 = array<vec4<f32>, 8>();
    let var_0 = Struct_2(_wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-8685i, -13132i), vec2<i32>(1i, 1555i)))), -_wgslsmith_sub_vec2_i32(vec2<i32>(2764i, -1i), select(vec2<i32>(-1i, 11820i), vec2<i32>(0i, -8843i), true))));
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(13284u, arg_2), u_input.a.yy >> (vec2<u32>(0u, global0.x) % vec2<u32>(32u))), 71877u), global1.zz);
    return Struct_5(select(vec2<bool>(arg_0, true), !(!vec2<bool>(global2.x, true)), vec2<bool>(false, true)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_5) -> Struct_2 {
    let var_0 = func_4(any(!vec3<bool>(true, arg_0, func_2(global1.x, vec3<i32>(arg_1.b.x, 1137i, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-431f, -2010f, arg_2 < arg_2)) * arg_1.a.x), ~countOneBits(56438u));
    let var_1 = func_4(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - -1328f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)))), 4294967295u);
    var var_2 = -1000f;
    var var_3 = select(vec3<u32>(16679u, arg_1.d.x & arg_1.d.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a.yxx, u_input.a.yxz << (u_input.a.xzz % vec3<u32>(32u))))), firstTrailingBit(min(~arg_1.d ^ u_input.a.yyx, ~vec3<u32>(5841u, u_input.a.x, global0.x))), global2.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.a)))));
    return Struct_2(vec2<i32>(arg_1.c.x, -1i));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = firstLeadingBit(~vec2<u32>(global0.x, 4294967295u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_1.a, _wgslsmith_f_op_vec3_f32(-arg_1.a))), -vec2<i32>(~(-12144i) ^ arg_2.a.x, arg_2.a.x), countOneBits(reverseBits(arg_2.a >> (global1.xx % vec2<u32>(32u)))) & vec2<i32>(-28114i, -46884i), select(select(u_input.a.yzy, firstLeadingBit(u_input.a.zyz) >> (u_input.a.ywx % vec3<u32>(32u)), any(vec4<bool>(true, arg_0, false, true)) || select(global2.x, false, arg_0)), abs(vec3<u32>(var_0.x, 4294967295u, 67693u) & abs(arg_1.d)), select(select(select(vec3<bool>(global2.x, arg_0, global2.x), vec3<bool>(true, true, global2.x), vec3<bool>(true, arg_0, true)), select(vec3<bool>(true, arg_0, true), vec3<bool>(global2.x, global2.x, true), false), select(vec3<bool>(false, false, arg_0), vec3<bool>(false, arg_0, global2.x), vec3<bool>(false, false, arg_0))), vec3<bool>(any(vec4<bool>(false, global2.x, false, global2.x)), true, global2.x), any(vec3<bool>(arg_0, arg_0, false)))));
    let var_2 = true;
    var var_3 = Struct_4(global1.x);
    var var_4 = Struct_3(func_1(!(var_0.x >= _wgslsmith_add_u32(arg_1.d.x, 27475u)), Struct_1(vec3<f32>(-777f, 184f, _wgslsmith_f_op_f32(-arg_1.a.x)), -arg_1.b, -firstLeadingBit(var_1.b), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.d, vec3<u32>(var_1.d.x, 1u, var_0.x)), var_1.d)), _wgslsmith_dot_vec2_u32(arg_1.d.zz, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, u_input.b), u_input.a.xy, vec2<u32>(var_1.d.x, 9731u)), vec2<u32>(4294967295u, 1u), var_1.d.yz)), func_4(true, 1000f, 4294967295u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x), vec2<i32>(-23393i, -var_1.c.x) & -vec2<i32>(arg_1.b.x, arg_1.c.x), ~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a.x, 12454i), vec2<i32>(arg_2.a.x, arg_2.a.x)), min(vec3<u32>(global1.x, var_1.d.x, global0.x), var_1.d & vec3<u32>(global1.x, 60581u, 1u)) & vec3<u32>(1u, 0u, arg_1.d.x)));
    return 58519u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 8>();
    global1 = vec3<u32>(0u, _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(func_5(global2.x, Struct_1(vec3<f32>(-1000f, -130f, 197f), vec2<i32>(21294i, 1i), vec2<i32>(4690i, 4864i), u_input.a.yzy), func_1(false, Struct_1(vec3<f32>(-252f, 730f, 1000f), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -519i), u_input.a.ywx), global0.x, Struct_5(vec2<bool>(true, true)))), 1u)), _wgslsmith_mult_u32(1u | u_input.b, 2161u));
    global2 = !select(vec2<bool>(global2.x, any(select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, false, true)))), select(vec2<bool>(false, true), select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true), vec2<bool>(false, false)), vec2<bool>(global2.x, true), vec2<bool>(true, false)), global2.x), select(!(!vec2<bool>(global2.x, true)), select(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, true), vec2<bool>(true, global2.x)), vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x), global2.x)), func_2(56915u, reverseBits(vec3<i32>(2147483647i, 5615i, -1i)))));
    global2 = vec2<bool>(false, true);
    let var_0 = func_1(select(global2.x, false, 1u < countOneBits(~u_input.c)), Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), vec2<i32>(1i, 1i), -select(vec2<i32>(15512i, 13542i), _wgslsmith_sub_vec2_i32(vec2<i32>(42517i, 0i), vec2<i32>(1i, -21188i)), vec2<bool>(false, false)), ~select(abs(vec3<u32>(u_input.a.x, u_input.c, 1u)), vec3<u32>(global1.x, u_input.b, global1.x), vec3<bool>(true, true, true))), 42062u, Struct_5(vec2<bool>(global2.x, true)));
    var var_1 = Struct_3(var_0, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3()), vec3<f32>(-1000f, 1228f, 1087f)))), vec2<i32>(select(var_0.a.x, max(var_0.a.x, 1i), any(vec3<bool>(global2.x, global2.x, true))), var_0.a.x), ~abs(~vec2<i32>(var_0.a.x, var_0.a.x)), ~vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 70829u), vec3<u32>(global0.x, 63159u, u_input.c)), u_input.a.x)));
    global2 = select(vec2<bool>(global2.x, global2.x), select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(!select(global2.x, global2.x, true), global2.x), !vec2<bool>(true, !global2.x)), func_4(select(true, true, true), var_1.b.a.x, ~(~34229u)).a.x == false);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(0u, 26192u, _wgslsmith_mult_u32(min(34072u, u_input.a.x), 1u), 17799u), abs(_wgslsmith_sub_u32(27717u, 1u)), _wgslsmith_dot_vec2_u32(select(abs(global1.zz) & select(vec2<u32>(global0.x, 4294967295u), global1.xz, vec2<bool>(false, true)), ~var_1.b.d.zz, any(vec4<bool>(false, global2.x, true, true)) & (var_1.b.a.x == var_1.b.a.x)), max(vec2<u32>(global1.x, u_input.b) ^ (var_1.b.d.zy & global1.xx), var_1.b.d.xy ^ u_input.a.wx)), vec2<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(var_1.b.a.x * _wgslsmith_f_op_f32(ceil(-409f))), true)), var_1.b.a.x));
}

