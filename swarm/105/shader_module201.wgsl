struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = (~abs(_wgslsmith_mult_u32(global0.a, 4294967295u)) ^ 0u) >= ~_wgslsmith_dot_vec4_u32(~(global0.e | arg_0.e), ~vec4<u32>(arg_0.a, global0.e.x, 0u, 4294967295u) >> ((arg_0.e & global0.e) % vec4<u32>(32u)));
    var var_0 = arg_0;
    var_0 = arg_0;
    global2 = !any(select(select(select(vec2<bool>(var_0.d, false), vec2<bool>(true, var_0.d), false), !vec2<bool>(arg_0.d, true), vec2<bool>(false, false)), vec2<bool>(!var_0.c, any(vec4<bool>(arg_0.c, false, false, var_0.d))), !(!vec2<bool>(var_0.c, true))));
    let var_1 = Struct_1(23751u, u_input.a.x, any(select(vec4<bool>(true, any(vec2<bool>(global0.c, false)), !global0.d, var_0.c | true), vec4<bool>(all(vec4<bool>(global0.c, false, global0.d, false)), arg_0.d, !global0.c, all(vec2<bool>(true, var_0.d))), var_0.c)), !(!(arg_0.e.x > global0.a) || global0.c), vec4<u32>(1u, reverseBits(_wgslsmith_add_u32(52352u, ~var_0.a)), 3633u, 17945u));
    return _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(u_input.a.x | var_0.b, -var_1.b, -var_0.b), var_1.b) > 28451i;
}

fn func_4(arg_0: bool) -> vec2<u32> {
    var var_0 = Struct_1(5677u, 0i, all(select(select(vec2<bool>(true, true), !vec2<bool>(arg_0, false), global0.b != 1i), vec2<bool>(global0.c | global0.c, true), vec2<bool>(true, global0.b == -10549i))), arg_0, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, 4294967295u, 21675u, 80950u), vec4<u32>(global0.e.x, 32523u, global0.e.x, global0.e.x)), reverseBits(~vec4<u32>(22195u, global0.e.x, global0.a, 1u))), firstLeadingBit(global0.e)));
    var var_1 = Struct_1(firstLeadingBit(~(countOneBits(30847u) | global0.e.x)), ~(1i | global0.b), true, true, firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global0.e.x, 0u, global0.a, global0.a), vec4<u32>(4294967295u, var_0.e.x, 46696u, var_0.e.x), var_0.c), ~vec4<u32>(37766u, var_0.a, 36603u, global0.a), vec4<u32>(global0.e.x, 90529u, 101729u, var_0.e.x) & vec4<u32>(0u, 4294967295u, 44559u, 4294967295u)))));
    let var_2 = Struct_1(~(~var_1.e.x), firstLeadingBit(var_1.b), true, var_0.b > _wgslsmith_clamp_i32(~(-45302i) | firstTrailingBit(var_0.b), var_0.b, firstLeadingBit(var_0.b)), select(~max(global0.e, var_0.e | vec4<u32>(global0.a, var_1.e.x, 35669u, global0.e.x)), var_0.e, any(!vec2<bool>(arg_0, global0.c)) && true));
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(57450u, abs(58656u & var_2.e.x), countOneBits(1u)), ~abs(~var_1.e.yww)), -_wgslsmith_div_i32(var_2.b, firstLeadingBit(~(-45494i))), true, func_3(var_2), abs(reverseBits(var_1.e) | vec4<u32>(var_0.e.x, countOneBits(11182u), _wgslsmith_dot_vec3_u32(var_1.e.yyx, var_0.e.zww), ~19495u)));
    let var_4 = ~var_1.a;
    return var_1.e.xy;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> f32 {
    let var_0 = -u_input.a.yx >> ((func_4(func_3(arg_0)) >> (vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(59500u, arg_0.e.x, 1693u), vec3<u32>(1u, arg_0.e.x, arg_2.x))), ~reverseBits(0u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = vec4<u32>(arg_2.x, 40334u, _wgslsmith_dot_vec2_u32(global0.e.ww & _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), arg_2.zz), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(67747u, 8947u), vec2<u32>(global0.a, 1u), arg_0.e.zy)), global0.e.x) ^ (arg_2 << (arg_0.e % vec4<u32>(32u)));
    var var_2 = any(arg_1);
    var_2 = all(!select(select(!vec4<bool>(global0.d, arg_0.d, true, false), select(vec4<bool>(false, global0.d, arg_0.c, arg_1.x), vec4<bool>(arg_1.x, arg_0.d, global0.c, arg_0.c), true), true), vec4<bool>(all(vec4<bool>(true, true, arg_1.x, true)), all(arg_1.yx), -1i >= u_input.c.x, any(arg_1.xz)), vec4<bool>(false && arg_0.d, func_3(arg_0), false, true)));
    let var_3 = select(vec2<bool>(global0.c, true), !arg_1.zx, !all(select(vec4<bool>(arg_0.d, false, true, arg_1.x), vec4<bool>(arg_0.c, global0.c, global0.c, arg_0.d), vec4<bool>(global0.c, true, true, false))));
    return _wgslsmith_f_op_f32(sign(-1123f));
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(firstTrailingBit(global0.a), 2147483647i, true, any(vec3<bool>(true, false, global0.c)), global0.e), vec3<bool>(global0.c, global0.d, global0.c), vec4<u32>(~0u, global0.e.x, 42893u, 1u)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))))), 264f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)));
    let var_2 = Struct_1(0u, ~global0.b, global0.d, func_3(Struct_1(0u, _wgslsmith_div_i32(global0.b, _wgslsmith_mod_i32(15298i, 1i)), !(!global0.d), any(select(vec4<bool>(global0.d, global0.c, global0.d, global0.d), vec4<bool>(true, global0.d, true, global0.c), vec4<bool>(true, global0.d, global0.d, global0.d))), global0.e)), vec4<u32>(global0.a, global0.a >> (global0.e.x % 32u), global0.a, 57112u));
    let var_3 = Struct_1(global0.e.x, -7622i, _wgslsmith_f_op_f32(-1022f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_1.x) * _wgslsmith_f_op_f32(abs(-1159f)))) >= _wgslsmith_f_op_f32(trunc(-1512f)), var_2.c, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~(vec4<u32>(global0.a, 8949u, global0.e.x, 0u) << (vec4<u32>(36374u, var_2.e.x, 0u, global0.e.x) % vec4<u32>(32u))), vec4<u32>(reverseBits(38466u), _wgslsmith_mult_u32(global0.a, global0.a), var_2.a, ~var_2.a)), firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(var_2.e, vec4<u32>(40889u, global0.a, var_2.e.x, global0.e.x)), vec4<u32>(var_2.e.x, var_2.a, 0u, 0u)))));
    global1 = 1565f != var_0;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(1244f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, -772f, var_0, var_0)))) * vec4<f32>(var_0, var_0, var_0, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1259f, _wgslsmith_f_op_f32(-var_1.x), 731f, 831f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), -1291f, 1760f, _wgslsmith_f_op_f32(-var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(268f, -221f, 286f, -634f), vec4<f32>(2039f, -1593f, -807f, 277f))), _wgslsmith_f_op_vec4_f32(func_1()))))));
    let var_1 = vec3<u32>(_wgslsmith_div_u32(min(~4068u ^ global0.e.x, _wgslsmith_clamp_u32(countOneBits(4294967295u), 46258u, max(global0.a, global0.e.x))), ~(~_wgslsmith_sub_u32(0u, global0.a))), global0.a, 0u);
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, ~var_1.x, _wgslsmith_mod_u32(12883u, global0.a), global0.e.x), ~vec4<u32>(~4294967295u, 9817u, global0.a, 0u)) >> (firstTrailingBit(var_1.x) % 32u);
    global2 = false;
    let var_3 = !any(select(!(!vec4<bool>(global0.c, false, true, global0.d)), select(select(vec4<bool>(global0.c, false, global0.c, false), vec4<bool>(global0.d, false, false, true), vec4<bool>(true, global0.d, global0.d, global0.c)), select(vec4<bool>(true, global0.d, global0.c, global0.c), vec4<bool>(global0.d, global0.d, global0.d, global0.d), true), select(vec4<bool>(true, false, global0.c, global0.c), vec4<bool>(true, true, false, global0.d), vec4<bool>(global0.d, false, true, true))), true | all(vec3<bool>(false, global0.c, true))));
    let var_4 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zx, ~_wgslsmith_clamp_vec2_i32(-vec2<i32>(31857i, -1i), abs(vec2<i32>(u_input.a.x, 26815i)), _wgslsmith_sub_vec2_i32(u_input.a.xy, u_input.a.zx))), vec2<i32>(global0.b, _wgslsmith_div_i32(-1i, firstLeadingBit(~u_input.b))), vec2<i32>(u_input.d, firstLeadingBit(1i)));
    let var_5 = _wgslsmith_div_u32(func_4(any(!(!vec3<bool>(true, false, global0.c)))).x, countOneBits(~15463u));
    var var_6 = any(select(select(select(vec3<bool>(var_3, true, global0.d), vec3<bool>(false, var_3, false), vec3<bool>(true, true, var_3)), select(vec3<bool>(global0.c, true, var_3), vec3<bool>(global0.c, true, global0.d), true), !global0.d), vec3<bool>(var_3 == var_3, all(vec2<bool>(true, var_3)), select(global0.c, true, true)), select(vec3<bool>(false, true, var_3), !vec3<bool>(false, var_3, true), true))) | false;
    let var_7 = Struct_1(~(reverseBits(var_2 >> (var_1.x % 32u)) ^ ~(~global0.a)), -(~(-2147483647i)), !(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)) && any(vec4<bool>(true, var_3, var_3, false))), false, vec4<u32>(reverseBits(1u ^ global0.e.x), var_1.x, ~_wgslsmith_sub_u32(103426u, global0.a) << (var_5 % 32u), ~(~(~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -4972i, 1i, u_input.a.x), firstLeadingBit(vec4<i32>(-2147483647i, var_4.x, global0.b, 8405i)), ~vec4<i32>(var_7.b, var_4.x, 3542i, global0.b))) | -vec4<i32>(i32(-1i) * -49351i, -8513i, abs(global0.b), ~global0.b), var_0.x);
}

