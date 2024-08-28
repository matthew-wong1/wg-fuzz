struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 62380u, 0u, 81024u);

var<private> global1: Struct_2;

var<private> global2: vec2<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(!vec3<bool>(false, true, _wgslsmith_mod_u32(global0.x, 4294967295u) == max(global0.x, 34068u)));
    var var_1 = global1.a.x;
    var var_2 = Struct_1(var_0.a);
    var var_3 = vec4<bool>(select(true, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, global2.x), vec4<i32>(60219i, u_input.b, 30932i, global2.x)), firstTrailingBit(u_input.a)) > global1.b.x, false), u_input.c > ~2147483647i, true, any(!vec3<bool>(var_0.a.x, true, true)) && var_2.a.x);
    var var_4 = ~max(global1.a.x, _wgslsmith_mod_u32(~(~global0.x), (global0.x ^ global0.x) << (_wgslsmith_mult_u32(global0.x, 0u) % 32u)));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(24015u, 84932u, 1u, global1.a.x), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, 1u), global0.wy), global1.a ^ global0.wx), firstTrailingBit(~3996u), ~global0.x), 11473u, ~31669u, ~_wgslsmith_div_u32(~global1.a.x, 5903u)));
}

fn func_2() -> Struct_1 {
    global0 = vec4<u32>(global1.a.x ^ 4294967295u, ~max(59968u, global0.x), _wgslsmith_div_u32(global1.a.x, abs(~_wgslsmith_mod_u32(1u, 428u))), func_3());
    let var_0 = _wgslsmith_clamp_i32(reverseBits(~global1.b.x >> (0u % 32u)), ~max(global1.b.x, countOneBits(_wgslsmith_div_i32(u_input.b, -2147483647i))), min(global2.x, u_input.b));
    let var_1 = Struct_1(vec3<bool>(false, any(vec3<bool>(true, true, true)) | false, true));
    let var_2 = var_0;
    var var_3 = vec4<bool>(any(!select(select(vec4<bool>(false, false, var_1.a.x, var_1.a.x), vec4<bool>(false, var_1.a.x, false, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)), select(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), var_1.a.x), true & var_1.a.x)), any(vec3<bool>(any(select(var_1.a, var_1.a, var_1.a)), true, true)), true, false);
    return Struct_1(!(!select(var_3.xxw, select(var_1.a, vec3<bool>(var_1.a.x, var_1.a.x, false), var_3.x), vec3<bool>(var_1.a.x, true, false))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(792f + 149f)) * _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-571f, _wgslsmith_f_op_f32(-arg_3))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(f32(-1f) * -733f), !arg_2.x)))));
    var var_1 = arg_1;
    let var_2 = !var_1.a.x;
    var_1 = func_2();
    var var_3 = global1.b | arg_0.b;
    return Struct_2(global1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(23197i, 3000i, -18947i, 19071i)), global1.b), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 35327i), vec2<i32>(global1.b.x, -1i)), abs(~(-10266i)), _wgslsmith_add_i32(var_3.x ^ 2147483647i, -global2.x)), global1.b));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = !vec3<bool>(false, !(_wgslsmith_f_op_f32(round(1244f)) == _wgslsmith_f_op_f32(603f + -777f)), (global2.x ^ -26264i) == global2.x);
    var var_1 = global1.a;
    var var_2 = func_4(Struct_2(global0.xx, (select(global1.b, vec4<i32>(arg_0.b.x, u_input.a, arg_0.b.x, arg_0.b.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) | vec4<i32>(u_input.c, global1.b.x, u_input.a, -2147483647i)) & vec4<i32>(~34206i, -1i, 0i ^ global1.b.x, global1.b.x)), func_2(), vec2<bool>(select(-26070i != u_input.a, var_0.x, _wgslsmith_f_op_f32(round(1523f)) <= _wgslsmith_f_op_f32(f32(-1f) * -607f)), var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(167f, -469f)))))).b.x;
    return func_4(func_4(arg_0, func_2(), select(select(var_0.yy, vec2<bool>(false, var_0.x), var_0.xy), var_0.yz, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1394f - 1616f) * _wgslsmith_f_op_f32(f32(-1f) * -1196f))), func_2(), !(!select(func_2().a.yx, !var_0.yy, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -627f));
}

fn func_1(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = func_5(func_4(Struct_2(~(~arg_0), global1.b), func_2(), !vec2<bool>(all(vec4<bool>(false, false, true, false)), true), _wgslsmith_div_f32(-598f, -279f)));
    global0 = vec4<u32>(abs(~_wgslsmith_mod_u32(2006u, abs(arg_0.x))), _wgslsmith_mod_u32(func_5(var_0).a.x, global1.a.x), 17312u, min(29483u, firstLeadingBit(1u)));
    var var_1 = func_2();
    var var_2 = (vec4<i32>(global1.b.x ^ max(u_input.a, -53855i), 48442i, ~(var_0.b.x ^ global1.b.x), ~_wgslsmith_mult_i32(global2.x, var_0.b.x)) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, arg_0.x, 1u, arg_0.x)), vec4<u32>(var_0.a.x, func_5(Struct_2(vec2<u32>(4294967295u, 0u), vec4<i32>(2147483647i, -4426i, var_0.b.x, 8321i))).a.x, 93434u << (global0.x % 32u), ~12525u)) % vec4<u32>(32u))) ^ firstLeadingBit(var_0.b);
    let var_3 = true;
    return global0.wz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(abs(func_1(vec2<u32>(global1.a.x, ~global1.a.x))), vec4<i32>(countOneBits(global1.b.x), global2.x | _wgslsmith_sub_i32(global1.b.x, global1.b.x), -select(global2.x, 9393i, false), abs(~19838i)) & -(abs(global1.b) & func_5(Struct_2(vec2<u32>(global0.x, global1.a.x), global1.b)).b));
    var var_0 = func_2();
    let var_1 = vec2<u32>(~(_wgslsmith_add_u32(0u | global0.x, reverseBits(40549u)) | min(global0.x, 4294967295u)), reverseBits(1u));
    var var_2 = func_4(func_5(func_4(func_5(func_5(Struct_2(vec2<u32>(0u, global1.a.x), global1.b))), Struct_1(var_0.a), !func_2().a.xy, _wgslsmith_f_op_f32(f32(-1f) * -1367f))), func_2(), select(select(!(!var_0.a.zz), !vec2<bool>(true, var_0.a.x), var_0.a.xz), vec2<bool>(1088f > _wgslsmith_f_op_f32(round(-630f)), true), vec2<bool>(!(22191i != global1.b.x), all(vec2<bool>(false, var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1077f, 1f)));
    let var_3 = Struct_1(var_0.a);
    let var_4 = ~firstTrailingBit(-15188i);
    var var_5 = min(reverseBits(func_4(func_5(Struct_2(vec2<u32>(4294967295u, 1u), var_2.b)), var_3, var_3.a.xy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -142f)))).a.x), ~var_2.a.x >> (_wgslsmith_mod_u32(countOneBits(70292u) >> (var_1.x % 32u), _wgslsmith_div_u32(15037u, 1u) << (select(var_1.x, var_1.x, false) % 32u)) % 32u));
    global0 = select(firstLeadingBit(~max(select(vec4<u32>(1u, 55342u, global0.x, var_1.x), vec4<u32>(var_1.x, 4294967295u, global0.x, global1.a.x), vec4<bool>(var_0.a.x, false, var_3.a.x, true)), ~vec4<u32>(var_1.x, global1.a.x, 4294967295u, 19964u))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(3025u, global1.a.x, global0.x, 4294967295u)), vec4<u32>(5946u, ~var_2.a.x, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 4294967295u, 48891u), global0.xzx))), ~firstLeadingBit(vec4<u32>(var_2.a.x, var_1.x, global1.a.x, var_2.a.x)) << (vec4<u32>(1u, ~63658u, func_4(Struct_2(var_1, vec4<i32>(var_2.b.x, u_input.a, -13069i, global1.b.x)), var_3, vec2<bool>(true, true), 1000f).a.x, func_3()) % vec4<u32>(32u))), !any(var_3.a));
    global0 = abs(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(347u, global1.a.x, var_2.a.x, 0u), vec4<u32>(var_2.a.x, 69366u, 62424u, var_2.a.x)), abs(vec4<u32>(39300u, 4294967295u, 41334u, 89389u))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(129258u, global1.a.x, 0u, var_2.a.x)), ~vec4<u32>(var_1.x, 11282u, var_1.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1268f, -675f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2327f, -1721f) * vec2<f32>(225f, -241f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, 1051f)), vec2<f32>(1093f, -1000f)))))), -12665i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-678f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(326f + -266f))), 713f)), -927f, 200f), -1000f);
}

