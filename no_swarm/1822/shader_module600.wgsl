struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global0 = Struct_1(_wgslsmith_div_u32(~19255u >> (_wgslsmith_div_u32(global0.a, 17703u) % 32u), 6467u) | arg_0.a, u_input.d, false);
    let var_0 = 1120f;
    let var_1 = 1u | global0.a;
    var var_2 = false;
    global0 = arg_0;
    return arg_0.a;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(min(vec4<u32>(41386u, 4294967295u, var_0.a, 29678u), firstTrailingBit(vec4<u32>(u_input.b, var_0.a, 90205u, 28723u))) >> (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(3692u, var_0.a, 76715u, var_0.a), vec4<u32>(global0.a, global0.a, global0.a, global0.a))) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(0u, global0.a, global0.a, u_input.b)) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(26u, arg_3.a, 0u, global0.a), vec4<u32>(25175u, 1u, 58712u, u_input.e)) | (vec4<u32>(1u, 1u, 0u, 73380u) << (vec4<u32>(arg_3.a, global0.a, 13870u, global0.a) % vec4<u32>(32u))))), (arg_3.b & abs(global0.b)) | u_input.d, !(((-21703i >> (1u % 32u)) | arg_3.b.x) <= _wgslsmith_sub_i32(u_input.a, countOneBits(2147483647i))));
    let var_1 = Struct_1(abs(firstLeadingBit(var_0.a)) << (~var_0.a % 32u), vec2<i32>(-(28593i | var_0.b.x) ^ -1i, var_0.b.x), arg_3.c);
    var_0 = var_1;
    var var_2 = vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(1i, var_0.b.x, arg_3.b.x)), ~vec3<i32>(var_0.b.x, 783i, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 63400i, var_0.b.x) << (vec3<u32>(var_0.a, 17236u, 22666u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, 29810i, u_input.c)));
    return ~(~_wgslsmith_sub_u32(global0.a, 4294967295u));
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = vec2<f32>(-211f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-889f - -3158f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-237f - -859f), _wgslsmith_f_op_f32(1000f - -694f)))))));
    let var_1 = -(_wgslsmith_div_i32(global0.b.x, ~_wgslsmith_sub_i32(0i, global0.b.x)) ^ global0.b.x);
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))) + -419f), var_0, arg_0.ywx, Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.e), vec3<u32>(23234u, u_input.b, global0.a)) >> (func_3(Struct_1(u_input.b, u_input.d, arg_0.x), min(vec4<i32>(37417i, 0i, global0.b.x, global0.b.x), vec4<i32>(0i, -1i, global0.b.x, -30283i))) % 32u), select(u_input.d, global0.b, select(false, false, false) && true), !arg_0.x != arg_0.x));
    let var_3 = countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(35144i, _wgslsmith_sub_i32(abs(2147483647i), ~global0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-8253i, -30990i) ^ global0.b, global0.b)), firstLeadingBit(min(vec3<i32>(var_1, 8998i, global0.b.x), max(vec3<i32>(-1i, -2147483647i, 14634i), vec3<i32>(u_input.a, var_1, -1i))))));
    global0 = Struct_1(8225u, select(vec2<i32>(-11563i, -2147483647i), vec2<i32>(u_input.c ^ (i32(-1i) * -1i), _wgslsmith_div_i32(select(global0.b.x, -1i, global0.c), ~(-55103i))), !select(-1328f < var_0.x, true, true)), all(!vec3<bool>(global0.c, select(global0.c, false, true), true)));
    return select(vec4<bool>(true, true, true, true & (firstTrailingBit(var_1) <= global0.b.x)), select(!vec4<bool>(82846u >= u_input.e, any(vec3<bool>(true, global0.c, false)), all(arg_0.zww), arg_0.x), vec4<bool>(false, select(true, !arg_0.x, true), true && arg_0.x, 625u == global0.a), !vec4<bool>(all(vec4<bool>(true, arg_0.x, arg_0.x, false)), true, true, true)), !(!(250f >= var_0.x)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(global0.a, min(vec2<i32>(-1i, -2147483647i), arg_0.yx), true);
    var var_0 = Struct_1(firstLeadingBit(global0.a & ((global0.a << (45648u % 32u)) >> (~0u % 32u))), firstLeadingBit(select(~global0.b, (arg_0.wx ^ vec2<i32>(global0.b.x, arg_0.x)) & _wgslsmith_clamp_vec2_i32(arg_0.ww, vec2<i32>(arg_0.x, global0.b.x), vec2<i32>(arg_0.x, u_input.d.x)), true)), any(select(select(vec2<bool>(arg_1.x, true), vec2<bool>(true, true), !vec2<bool>(true, arg_1.x)), vec2<bool>(global0.c & true, all(vec4<bool>(true, false, true, false))), any(!arg_1.xxz))));
    var var_1 = 7855u;
    var var_2 = Struct_1(u_input.b, vec2<i32>(32064i, ~global0.b.x), arg_1.x || !(1u != (var_0.a ^ 0u)));
    var_1 = u_input.b;
    return Struct_1(var_2.a >> (var_2.a % 32u), ~var_0.b, !all(select(select(arg_1.wz, arg_1.xy, arg_1.x), arg_1.wy, vec2<bool>(global0.c, true))));
}

fn func_1() -> vec3<i32> {
    let var_0 = func_5(vec4<i32>(u_input.a, u_input.a, 14807i, _wgslsmith_mult_i32(~global0.b.x, ~(-1i >> (u_input.b % 32u)))), func_2(vec4<bool>((u_input.d.x == -2147483647i) & select(false, global0.c, global0.c), select(true, u_input.e > global0.a, true), true, all(select(vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(true, global0.c, global0.c, global0.c), true)))));
    global0 = Struct_1(~func_5(vec4<i32>(min(u_input.c, -14062i), 0i, -var_0.b.x, global0.b.x >> (22103u % 32u)), select(!vec4<bool>(global0.c, var_0.c, false, var_0.c), !vec4<bool>(var_0.c, true, true, global0.c), false)).a, vec2<i32>(reverseBits(~(-57952i)), var_0.b.x), global0.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1561f - _wgslsmith_f_op_f32(f32(-1f) * -710f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2550f, _wgslsmith_f_op_f32(min(-1410f, 479f)), -1183f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-352f, 1000f, global0.c)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(603f - 922f))), -356f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1293f, 1787f))), _wgslsmith_f_op_f32(trunc(-275f))))));
    let var_3 = min(~(_wgslsmith_sub_u32(reverseBits(1u), global0.a) ^ (abs(u_input.b) << (firstLeadingBit(15324u) % 32u))), global0.a);
    return _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, global0.b.x | global0.b.x, -26248i), ~((vec3<i32>(var_0.b.x, 0i, var_0.b.x) << (vec3<u32>(17258u, global0.a, 1u) % vec3<u32>(32u))) << (max(vec3<u32>(93319u, var_3, var_3), vec3<u32>(17653u, 14410u, 4294967295u)) % vec3<u32>(32u)))) & -(vec3<i32>(_wgslsmith_div_i32(59501i, 3794i), _wgslsmith_add_i32(-2147483647i, 1i), ~0i) ^ ~countOneBits(vec3<i32>(-1i, -2147483647i, u_input.a)));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -562f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 697f), vec2<f32>(-513f, 1579f))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0))));
    var var_1 = !global0.c;
    var_1 = false;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(_wgslsmith_f_op_f32(-200f * arg_0), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(782f, -1000f), vec2<f32>(-924f, arg_0))), vec3<bool>(arg_1.c, arg_1.c, global0.c), func_5(vec4<i32>(arg_2.x, arg_1.b.x, 32112i, -1i), vec4<bool>(true, true, false, true))), ~0u, 981u << (firstTrailingBit(1971u) % 32u), 83487u), vec4<u32>(global0.a, func_3(func_5(vec4<i32>(381i, arg_1.b.x, u_input.a, arg_2.x), vec4<bool>(global0.c, global0.c, arg_1.c, true)), vec4<i32>(4928i, -29703i, global0.b.x, -613i)), ~_wgslsmith_mult_u32(5539u, u_input.b), 0u & global0.a)), vec2<i32>(min(6886i, firstLeadingBit(65285i)) ^ func_5(-vec4<i32>(u_input.a, global0.b.x, 14791i, arg_1.b.x), !vec4<bool>(global0.c, true, global0.c, true)).b.x, u_input.c), global0.c);
    var var_3 = select(!vec2<bool>(all(vec4<bool>(false, false, false, var_2.c)), var_2.c), !select(select(vec2<bool>(var_2.c, false), func_2(vec4<bool>(false, global0.c, var_2.c, true)).yz, !vec2<bool>(arg_1.c, var_2.c)), vec2<bool>(global0.c, -2023f == var_0.x), vec2<bool>(true, func_2(vec4<bool>(var_2.c, global0.c, false, var_2.c)).x)), true);
    return func_5(min(-vec4<i32>(-global0.b.x, arg_1.b.x >> (37919u % 32u), -1i, 2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, -2147483647i), vec2<i32>(global0.b.x, 34903i)), _wgslsmith_clamp_i32(func_5(vec4<i32>(-1i, -29805i, u_input.c, 2147483647i), vec4<bool>(var_3.x, global0.c, var_2.c, var_2.c)).b.x, firstTrailingBit(u_input.d.x), ~(-1i)), _wgslsmith_sub_i32(30219i, -1i), _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2.zy), ~vec2<i32>(-1i, arg_2.x)))), vec4<bool>(arg_0 >= _wgslsmith_f_op_f32(max(var_0.x, 1708f)), func_5(vec4<i32>(u_input.c | -11669i, _wgslsmith_div_i32(arg_2.x, u_input.c), ~u_input.c, -1i), vec4<bool>(true, true, arg_0 != arg_0, !arg_1.c)).c, arg_1.c, var_2.c));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    var var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.b, 18957u) << (~vec3<u32>(7965u, 0u, 72753u) % vec3<u32>(32u)), vec3<u32>(arg_1.a, u_input.b, 4294967295u)) << (vec3<u32>(~(~(~4294967295u)), min(arg_1.a >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.a, 60288u), 55875u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.e, 0u)), vec2<u32>(arg_1.a, arg_0.a) >> (vec2<u32>(arg_0.a, 60243u) % vec2<u32>(32u)))) % vec3<u32>(32u));
    let var_1 = arg_2.zwy;
    let var_2 = ~42110i & arg_1.b.x;
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, -1000f, -595f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(722f, 426f, -757f))))))), vec3<f32>(_wgslsmith_f_op_f32(round(-895f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -814f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-778f, 1196f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x)));
    global0 = Struct_1(~global0.a, global0.b, func_7(func_6(379f, Struct_1(abs(4294967295u), vec2<i32>(global0.b.x, -1i), global0.c), func_1()), Struct_1(~min(u_input.e, 5917u), ~(~vec2<i32>(global0.b.x, 1i)), func_2(select(vec4<bool>(global0.c, true, true, false), vec4<bool>(false, false, global0.c, global0.c), vec4<bool>(false, global0.c, global0.c, global0.c))).x), vec4<f32>(-723f, _wgslsmith_f_op_f32(f32(-1f) * -2093f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(max(-1000f, var_1.x))), _wgslsmith_f_op_f32(floor(691f)))));
    let var_2 = func_5(_wgslsmith_div_vec4_i32(-vec4<i32>(global0.b.x, u_input.a, 2147483647i, u_input.a) >> (vec4<u32>(u_input.b, u_input.b, u_input.e, u_input.b) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, global0.b.x, -24533i, global0.b.x) << (reverseBits(select(vec4<u32>(4621u, global0.a, 52046u, 15621u), vec4<u32>(49924u, global0.a, u_input.e, global0.a), vec4<bool>(global0.c, true, global0.c, false))) % vec4<u32>(32u))), vec4<bool>(!global0.c, false, true, true));
    var var_3 = any(select(func_2(select(func_2(vec4<bool>(var_2.c, false, var_2.c, var_2.c)), vec4<bool>(global0.c, global0.c, var_2.c, false), !vec4<bool>(false, global0.c, var_2.c, false))).ww, vec2<bool>((global0.c && true) || false, any(vec3<bool>(global0.c, var_2.c, true))), global0.c));
    var var_4 = var_2;
    let var_5 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 0u << (~global0.a % 32u), var_4.a, var_4.a), ~vec4<u32>(~u_input.e, func_3(var_2, vec4<i32>(global0.b.x, u_input.d.x, -5670i, var_2.b.x)), abs(0u), u_input.e)), vec2<i32>(39565i, u_input.d.x), all(vec3<bool>(var_2.c, !(!var_4.c), true)));
    let x = u_input.a;
    s_output = StorageBuffer(19454i);
}

