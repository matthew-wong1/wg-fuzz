struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32 = -1000f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<bool> {
    global1 = 2380f;
    let var_0 = !(!vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, true))));
    global1 = _wgslsmith_f_op_f32(min(-1146f, -551f));
    let var_1 = select(vec2<bool>(!var_0.x, any(!select(var_0, vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, true)))), !vec2<bool>((u_input.b.x << (1u % 32u)) == global0.x, !(!var_0.x)), select(vec2<bool>(true, !any(var_0)), vec2<bool>(true, true), var_0.x));
    let var_2 = vec4<i32>(7163i, u_input.a.x, firstTrailingBit(global0.x & (u_input.a.x | global0.x)), select(firstLeadingBit(-1i), 51550i, !(any(var_0) || (var_1.x & var_0.x))));
    return select(vec3<bool>((false || any(vec3<bool>(true, var_0.x, var_0.x))) || !all(var_0.xy), any(vec3<bool>(var_0.x, true, !var_0.x)), var_1.x), var_0, true);
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<i32> {
    let var_0 = vec2<bool>(all(func_3()), true);
    var var_1 = Struct_1(_wgslsmith_sub_u32(13070u, _wgslsmith_dot_vec4_u32(vec4<u32>(54885u, 10198u, 0u, u_input.d.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 37136u, 0u, arg_1), vec4<u32>(65797u, u_input.c, u_input.c, arg_1), vec4<u32>(u_input.c, 1u, 4294967295u, arg_1)) % vec4<u32>(32u)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 0u, 28512u, u_input.d.x), vec4<u32>(u_input.c, arg_1, arg_1, 35006u), vec4<u32>(arg_1, 1u, arg_1, 4294967295u)), max(vec4<u32>(39277u, arg_1, u_input.c, u_input.c), vec4<u32>(36782u, 42666u, arg_1, 1u)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1041f)))), _wgslsmith_f_op_f32(max(368f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(890f)), _wgslsmith_f_op_f32(floor(1000f))))))), true);
    global0 = _wgslsmith_add_vec4_i32(-select(reverseBits(vec4<i32>(arg_0, global0.x, 34950i, -2147483647i)) << ((vec4<u32>(u_input.d.x, var_1.a, 73721u, u_input.d.x) << (vec4<u32>(1u, u_input.d.x, var_1.a, var_1.a) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-1i, 0i, arg_0, arg_0) | _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -45896i, -14536i, 0i), vec4<i32>(2147483647i, 19530i, arg_0, global0.x)), any(vec4<bool>(var_0.x, true, true, var_0.x))), abs(vec4<i32>(_wgslsmith_add_i32(global0.x, ~(-1i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, global0.x), arg_0), 27072i, ~u_input.a.x)));
    let var_2 = u_input.d.x;
    global1 = 1554f;
    return firstLeadingBit(vec2<i32>(38802i, abs(min(min(2147483647i, global0.x), firstTrailingBit(-1i)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-536f)), 569f, arg_1.b.c));
    let var_0 = true;
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(1u, 1u), ~0u | arg_1.b.a) ^ (vec2<u32>(~firstTrailingBit(1u), ~115451u) & u_input.d);
    var var_2 = any(select(vec4<bool>(arg_1.b.c, !arg_2.c, false, true), vec4<bool>(arg_1.b.c, var_1.x >= var_1.x, arg_1.b.b < _wgslsmith_f_op_f32(-2330f * -1000f), var_0), select(vec4<bool>(!arg_2.c, arg_2.c, var_0, arg_1.b.c), !vec4<bool>(var_0, arg_1.b.c, true, true), false)));
    let var_3 = 629f;
    return arg_1.b.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = vec3<bool>((true & any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))) | (0u < ~u_input.d.x), true, all(vec3<bool>(false, all(vec2<bool>(false, false)), !all(vec4<bool>(false, true, false, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2));
    var var_2 = reverseBits(_wgslsmith_sub_u32(~max(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 56580u), vec3<u32>(u_input.d.x, u_input.d.x, 37596u))), 12706u));
    var var_3 = Struct_2(abs(vec4<i32>(-1i) * -vec4<i32>(global0.x, -23025i, u_input.b.x, global0.x)), Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(0u, u_input.d.x, 1u, u_input.c))), min(abs(vec4<u32>(u_input.d.x, 3262u, u_input.c, 0u)), select(vec4<u32>(u_input.d.x, 6226u, 0u, 1710u), vec4<u32>(1926u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(trunc(1135f)), 397f < arg_2));
    let var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(var_3.b.a, 98422u, ~16466u), ~(~vec3<u32>(11968u, 1u, 61004u) | (vec3<u32>(u_input.c, 71467u, 4294967295u) | min(vec3<u32>(var_3.b.a, var_3.b.a, 32887u), vec3<u32>(u_input.c, var_3.b.a, var_3.b.a)))));
    return Struct_2(vec4<i32>(~(~0i), global0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0.zx, u_input.a) & (var_3.a.x & var_3.a.x), u_input.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, 29572i, -1i, 4713i), -vec4<i32>(var_3.a.x, -2147483647i, global0.x, u_input.a.x))), global0.x), var_3.b);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b, _wgslsmith_div_f32(-132f, 1031f), -697f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(func_4(func_2(55028i, 10600u), Struct_2(vec4<i32>(global0.x, -22356i, 51766i, global0.x), Struct_1(u_input.c, arg_0.b, arg_0.c)), Struct_1(0u, -411f, arg_0.c)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 805f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) * vec2<f32>(817f, 1589f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -801f) + vec2<f32>(1135f, -1062f)))))), -677f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, -1000f), vec2<f32>(-278f, arg_0.b)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, -738f) + vec2<f32>(arg_0.b, arg_0.b))))));
    let var_1 = var_0.b;
    var var_2 = select(select(vec4<bool>(-u_input.b.x >= global0.x, all(vec4<bool>(true, true, true, true)), func_5(vec3<f32>(1810f, -332f, 1523f), vec2<f32>(1000f, 895f), var_1.b, vec2<f32>(var_0.b.b, arg_0.b)).b.a >= ~4294967295u, var_1.c), select(select(select(vec4<bool>(false, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.c, var_0.b.c, false, true), false), vec4<bool>(arg_0.c, arg_0.c, false, var_1.c), var_0.b.c || var_0.b.c), vec4<bool>(var_1.c || false, func_5(vec3<f32>(-1232f, -458f, 331f), vec2<f32>(var_0.b.b, var_0.b.b), arg_0.b, vec2<f32>(-372f, 757f)).b.c, arg_0.c, arg_0.c), arg_0.c), !vec4<bool>(any(vec4<bool>(arg_0.c, false, arg_0.c, var_0.b.c)), func_3().x, true, true)), !vec4<bool>(true, any(vec2<bool>(arg_0.c, false)), select(false || arg_0.c, all(vec3<bool>(var_0.b.c, true, true)), !var_1.c), func_3().x), !select(select(!vec4<bool>(var_1.c, var_1.c, var_0.b.c, var_1.c), !vec4<bool>(arg_0.c, arg_0.c, var_0.b.c, true), vec4<bool>(false, arg_0.c, arg_0.c, var_0.b.c)), vec4<bool>(true, 300f != var_1.b, any(vec2<bool>(false, var_0.b.c)), u_input.b.x >= -1i), select(select(vec4<bool>(true, var_0.b.c, true, arg_0.c), vec4<bool>(var_1.c, var_0.b.c, var_0.b.c, true), var_0.b.c), select(vec4<bool>(false, arg_0.c, arg_0.c, var_1.c), vec4<bool>(var_0.b.c, false, false, true), true), var_1.c)));
    let var_3 = vec4<f32>(-1681f, _wgslsmith_f_op_f32(ceil(-1139f)), arg_0.b, -1000f);
    let var_4 = arg_0.a;
    return (_wgslsmith_add_i32(min(11398i, -1i), -12721i) >> (var_1.a % 32u)) << (reverseBits(var_4) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<i32>(u_input.b.x, -15306i, abs(func_1(Struct_1(4294967295u, 418f, true))) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 1i), global0.yww), _wgslsmith_mod_i32(select(-19266i, -2147483647i, false), global0.x ^ global0.x) & u_input.a.x), Struct_1(~(~604u), _wgslsmith_f_op_f32(-266f * _wgslsmith_f_op_f32(1814f + _wgslsmith_f_op_f32(ceil(-741f)))), func_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1712f, -239f, -1037f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1193f, 1241f) + vec2<f32>(-347f, 124f)), _wgslsmith_div_f32(-219f, 166f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1061f, 986f) + vec2<f32>(-307f, -310f))).b.a <= ~u_input.c));
    let var_1 = u_input.d;
    global0 = var_0.a;
    let var_2 = !any(select(select(select(vec4<bool>(var_0.b.c, var_0.b.c, false, true), vec4<bool>(false, var_0.b.c, true, var_0.b.c), vec4<bool>(true, false, var_0.b.c, true)), !vec4<bool>(var_0.b.c, false, var_0.b.c, var_0.b.c), vec4<bool>(true, true, true, true)), vec4<bool>(var_0.b.c, false, var_0.b.c, -1i < global0.x), select(!vec4<bool>(var_0.b.c, true, var_0.b.c, var_0.b.c), vec4<bool>(var_0.b.c, var_0.b.c, true, var_0.b.c), select(vec4<bool>(var_0.b.c, true, false, var_0.b.c), vec4<bool>(true, false, true, var_0.b.c), false))));
    global0 = _wgslsmith_add_vec4_i32(-min(vec4<i32>(u_input.a.x, -1i, -29285i, -1297i & var_0.a.x), vec4<i32>(-1i, 0i, 1i, func_1(var_0.b))), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_vec3_u32(~(~vec3<u32>(41646u, 0u, u_input.c)), ~(vec3<u32>(53830u, var_0.b.a, 1u) ^ vec3<u32>(u_input.d.x, u_input.c, var_0.b.a))), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(88076u, var_1.x, 4294967295u), ~vec3<u32>(1u, var_0.b.a, 47925u)), vec3<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 63999u), _wgslsmith_sub_u32(u_input.c, 0u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1448f, var_0.b.b, _wgslsmith_f_op_f32(var_0.b.b + 151f), _wgslsmith_f_op_f32(floor(-716f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1060f, var_0.b.b, var_0.b.b, 1157f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-981f, 1174f, var_0.b.b, var_0.b.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.b, var_0.b.b, 1215f, 2555f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, 1256f, -337f, var_0.b.b))), vec4<bool>(!var_2, !var_2, all(vec3<bool>(var_2, false, false)), select(false, true, var_2))))), vec3<u32>(~(~_wgslsmith_div_u32(var_1.x, 4294967295u)), 1u, ~4294967295u));
}

