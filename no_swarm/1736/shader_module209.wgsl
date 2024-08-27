struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(4294967295u, 39426u, 14744u), vec3<u32>(1u, 32136u, 31121u), vec3<u32>(55690u, 0u, 22143u), vec3<u32>(24594u, 0u, 1u), vec3<u32>(9577u, 4294967295u, 51657u), vec3<u32>(4294967295u, 1u, 11309u), vec3<u32>(4294967295u, 0u, 8416u), vec3<u32>(13635u, 138438u, 4294967295u), vec3<u32>(4294967295u, 0u, 10447u), vec3<u32>(1u, 43942u, 0u), vec3<u32>(0u, 594u, 15818u), vec3<u32>(37440u, 81060u, 4294967295u), vec3<u32>(35176u, 69075u, 4294967295u), vec3<u32>(11274u, 11685u, 51708u), vec3<u32>(21006u, 37796u, 22081u), vec3<u32>(15868u, 58019u, 16702u), vec3<u32>(110098u, 0u, 52084u), vec3<u32>(4294967295u, 4294967295u, 2737u));

var<private> global2: Struct_1 = Struct_1(true, -1i);

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_1(true, global2.b);
    global0 = abs(~_wgslsmith_sub_u32(~global3.x, _wgslsmith_add_u32(reverseBits(11711u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 33383u, global3.x, 4294967295u), vec4<u32>(1u, arg_0, 1u, global3.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1222f, -1000f, 1129f, 906f), vec4<f32>(281f, -1387f, 582f, -446f), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1320f, 577f, -357f, -1574f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1182f, 374f, 310f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 410f, 1581f, -653f), vec4<f32>(768f, 1000f, -1420f, -449f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-943f, -735f, -1000f, -233f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-131f, 1f, _wgslsmith_f_op_f32(-1857f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -162f)))))));
    global2 = Struct_1(!all(vec2<bool>(true, false)), global2.b);
    global2 = Struct_1(all(select(select(select(vec2<bool>(var_0.a, global2.a), vec2<bool>(var_0.a, false), global2.a), vec2<bool>(true, true), true), vec2<bool>(true, var_0.a | var_0.a), global2.a)), 1i);
    return false;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global3 = vec4<u32>(4294967295u, global3.x, global3.x, 80195u);
    let var_0 = 983f;
    global1 = array<vec3<u32>, 18>();
    let var_1 = vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(var_0 + -1000f));
    let var_2 = Struct_1(any(vec2<bool>(true, func_3(1u))), 0i);
    return Struct_1(u_input.b != 1u, -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.a;
    var var_1 = arg_1;
    var var_2 = arg_1;
    var_1 = arg_0;
    var_1 = func_2(select(select(!(!vec3<bool>(var_2.a, var_1.a, global2.a)), vec3<bool>(!arg_1.a, arg_1.a, true), select(vec3<bool>(true, false, arg_0.a), !vec3<bool>(var_2.a, arg_0.a, true), !vec3<bool>(true, true, arg_1.a))), select(!select(vec3<bool>(false, arg_1.a, false), vec3<bool>(global2.a, true, true), false), vec3<bool>(true, var_1.b <= -7948i, arg_0.a), any(vec3<bool>(true, arg_1.a, true))), true));
    return func_2(!select(vec3<bool>(true, !var_1.a, global2.a), vec3<bool>(arg_0.a | false, global2.a, arg_0.a), !(!global2.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = func_4(func_2(vec3<bool>(true, arg_1.a, global2.a && (arg_2 == arg_2))), Struct_1(all(vec4<bool>(arg_0.a, arg_1.a, true, false)) | (any(vec4<bool>(false, global2.a, arg_0.a, arg_0.a)) & true), _wgslsmith_mult_i32(abs(arg_0.b), _wgslsmith_sub_i32(func_2(vec3<bool>(arg_1.a, arg_1.a, false)).b, arg_0.b & arg_1.b))));
    let var_1 = 1u;
    global3 = ~firstLeadingBit(select(select(vec4<u32>(20879u, u_input.b, 5618u, 58889u) << (vec4<u32>(52886u, 1u, 41864u, 60041u) % vec4<u32>(32u)), vec4<u32>(u_input.b, 4158u, var_1, u_input.b) ^ vec4<u32>(u_input.b, var_1, var_1, u_input.b), !vec4<bool>(true, true, arg_0.a, arg_0.a)), ~(~vec4<u32>(var_1, 15737u, 4294967295u, var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1053f) >= _wgslsmith_f_op_f32(trunc(961f))));
    let var_2 = _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_1, var_1, global3.x), min(vec4<u32>(48211u, var_1, 4294967295u, var_1), vec4<u32>(u_input.b, var_1, 12915u, global3.x))) ^ ((~vec4<u32>(u_input.e, var_1, 23850u, u_input.e) ^ min(vec4<u32>(6323u, global3.x, u_input.e, var_1), vec4<u32>(0u, u_input.b, 35289u, var_1))) << (vec4<u32>(~1u, global3.x, 115226u, firstLeadingBit(0u)) % vec4<u32>(32u))), ~(~select(~vec4<u32>(u_input.e, 4294967295u, 0u, 4294967295u), vec4<u32>(global3.x, u_input.b, 0u, 1u), !vec4<bool>(arg_0.a, global2.a, arg_1.a, false))));
    var var_3 = Struct_1(true, i32(-1i) * -(50437i | firstLeadingBit(global2.b)));
    return var_2.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> vec4<u32> {
    global3 = vec4<u32>(global3.x, u_input.b, ~_wgslsmith_mult_u32(abs(14338u), global3.x), func_5(func_4(func_2(vec3<bool>(false, global2.a, true)), Struct_1(false, u_input.d.x)), Struct_1(false, -global2.b), 310f)) >> (vec4<u32>(_wgslsmith_add_u32(max(32251u, reverseBits(global3.x)), 4294967295u), 22856u, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(65279u, 28707u, 0u, u_input.b), vec4<u32>(global3.x, 0u, 23077u, global3.x)), firstTrailingBit(~vec4<u32>(u_input.b, 4294967295u, global3.x, 0u))), 0u) % vec4<u32>(32u));
    var var_0 = vec2<u32>(87979u, firstTrailingBit(u_input.e));
    var var_1 = var_0.x;
    var var_2 = !(!vec3<bool>(global2.a, false, any(select(vec4<bool>(global2.a, false, global2.a, global2.a), vec4<bool>(false, true, global2.a, false), false))));
    var var_3 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(global3.x, 38982u, 13254u)), vec3<u32>(130380u, var_0.x, 43359u)), ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, 1379u), 18u)]), select(_wgslsmith_sub_u32(1u, u_input.b), 47516u, false));
    return ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.e, 4294967295u, 4294967295u, 6690u), vec4<u32>(global3.x, 108892u, 4294967295u, 1u)) & vec4<u32>(126461u, global3.x, u_input.e, var_0.x), vec4<u32>(73337u, 0u, 0u << (var_0.x % 32u), ~53749u), vec4<u32>(1u, ~global3.x, firstLeadingBit(var_0.x), ~2037u)), ~max(vec4<u32>(4294967295u, global3.x, u_input.e, var_0.x) & vec4<u32>(28889u, 4294967295u, u_input.b, u_input.e), vec4<u32>(0u, global3.x, 0u, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~func_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(642f)), -1110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f + -1000f)), -firstLeadingBit(global2.b));
    var var_0 = _wgslsmith_mult_u32(55381u, 783u);
    let var_1 = Struct_1(!(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, 4294967295u), vec4<u32>(0u, u_input.b, 95743u, 1u))) > 1u), 14489i);
    global3 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(firstTrailingBit(~97368u), _wgslsmith_mod_u32(u_input.b, 42678u) ^ 96936u, u_input.e, _wgslsmith_mod_u32(4294967295u, 1u) >> (1u % 32u)), vec4<u32>(reverseBits(~u_input.e), ~0u, ~u_input.b >> ((4294967295u & u_input.b) % 32u), global3.x | global3.x), vec4<bool>(!global2.a, func_4(func_4(var_1, Struct_1(var_1.a, var_1.b)), var_1).a, true, false & var_1.a)), countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global3.x, 32179u, global3.x), firstLeadingBit(vec4<u32>(global3.x, u_input.e, global3.x, 1u)))));
    let var_2 = Struct_1(select(true, func_3(u_input.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -638f))) <= 753f), 1i);
    var var_3 = !((var_2.b <= (firstTrailingBit(2147483647i) ^ min(9314i, global2.b))) == !(var_2.a & var_1.a));
    let var_4 = _wgslsmith_dot_vec2_i32(~(u_input.d.zx ^ (u_input.d.xz | ~vec2<i32>(var_2.b, 1i))), vec2<i32>(~(-20471i), func_4(var_1, var_2).b | -var_1.b));
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(~func_1(vec2<f32>(1213f, -242f), -1000f, var_2.b)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1264f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-747f))), 21853i << (u_input.b % 32u))), select(countOneBits(vec4<u32>(0u, 1u, firstTrailingBit(9144u), 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(30572u, u_input.e, abs(26565u), 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(123028u, u_input.e, 67466u), vec3<u32>(46907u, 31991u, u_input.e)), ~u_input.b, global3.x, 1u)), select(select(vec4<bool>(var_1.a, var_2.a, false, global2.a), !vec4<bool>(false, true, var_1.a, var_1.a), func_3(u_input.e)), !(!vec4<bool>(false, var_1.a, true, false)), !vec4<bool>(global2.a, true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(global2.b, u_input.d.x), ~(-abs(u_input.c))), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-537f))) + -143f), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.e | 4294967295u, firstLeadingBit(u_input.b), _wgslsmith_clamp_u32(global3.x, u_input.b, 32083u)), 18u)] | _wgslsmith_add_vec3_u32(global3.zzw, global1[_wgslsmith_index_u32(~(global3.x << (5071u % 32u)), 18u)]));
}

