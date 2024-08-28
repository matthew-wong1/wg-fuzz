struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<i32>(1i, 61417i, 21430i, -1i), 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1666f, _wgslsmith_f_op_f32(-687f + 1848f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_div_f32(121f, 350f))))));
    global0 = Struct_1(global0.a, global0.b, 4294967295u);
    let var_1 = u_input.a.x;
    let var_2 = select(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, 6219u, 77418u, 4294967295u), vec4<u32>(1u, global0.c, arg_1, u_input.a.x)), ~vec4<u32>(global0.c, arg_1, 4294967295u, 72544u)), select(select(vec4<u32>(1u, 21342u, 76390u, 56323u) << (vec4<u32>(1u, global0.c, arg_1, 88609u) % vec4<u32>(32u)), vec4<u32>(arg_1, 0u, 16995u, arg_1), false), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 4294967295u, 0u, 39936u), vec4<u32>(0u, 58762u, u_input.a.x, var_1), vec4<u32>(1u, var_1, arg_1, var_1)), ~vec4<u32>(4294967295u, 35535u, global0.c, 39876u)), select(select(vec4<bool>(global0.a, global0.a, false, arg_0), vec4<bool>(arg_0, true, global0.a, arg_0), vec4<bool>(arg_0, true, arg_0, false)), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(global0.a, arg_0, global0.a, global0.a), vec4<bool>(arg_0, arg_0, false, global0.a)), true))), vec4<u32>(~4294967295u, 2096u, 3761u, ~var_1), !select(!(!vec4<bool>(global0.a, false, global0.a, true)), vec4<bool>(any(vec3<bool>(true, global0.a, global0.a)), false, any(vec2<bool>(false, arg_0)), true), global0.a));
    return vec4<bool>(any(vec2<bool>(false, true)), (global0.b.x > -2147483647i) || global0.a, true, true);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> u32 {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1693f, -659f, 199f, 1410f), vec4<f32>(1302f, -186f, -152f, -914f))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)), 1287f, _wgslsmith_f_op_f32(round(-1889f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1121f, -322f, global0.a)) + _wgslsmith_f_op_f32(round(699f))))));
    let var_1 = global0.b.x & 0i;
    global0 = arg_0;
    var var_2 = any(select(func_3(all(!vec3<bool>(global0.a, false, global0.a)), arg_0.c), !vec4<bool>(false, any(vec4<bool>(global0.a, global0.a, false, false)), any(vec2<bool>(false, false)), select(false, false, arg_0.a)), !select(vec4<bool>(true, global0.a, global0.a, arg_0.a), !vec4<bool>(arg_0.a, false, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a))));
    return ~_wgslsmith_add_u32(firstLeadingBit(min(88370u, 50560u >> (1u % 32u))), 23288u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    global0 = arg_0;
    var var_0 = Struct_1(!(_wgslsmith_mod_u32(1u, ~u_input.a.x) != 16048u), _wgslsmith_add_vec4_i32(~select(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 14477i, 24596i, arg_0.b.x), vec4<i32>(global0.b.x, arg_0.b.x, global0.b.x, 15484i)), vec4<i32>(global0.b.x, global0.b.x, arg_2.b.x, -73602i), !vec4<bool>(true, arg_0.a, global0.a, false)), global0.b), _wgslsmith_sub_u32(min(1u, 119159u), firstTrailingBit(~(~0u))));
    var var_1 = Struct_1(!select(arg_0.a, true, var_0.a), _wgslsmith_sub_vec4_i32(~global0.b, ~arg_0.b), 81173u);
    var_1 = arg_0;
    let var_2 = var_1.b.x;
    return ~0i;
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(true, vec4<i32>(global0.b.x, func_4(Struct_1(global0.a, -global0.b, func_2(Struct_1(global0.a, vec4<i32>(-43571i, 0i, 0i, global0.b.x), 9945u), global0.b.x, global0.b, vec3<i32>(34964i, global0.b.x, global0.b.x))), vec2<f32>(1845f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(!global0.a, vec4<i32>(global0.b.x, global0.b.x, global0.b.x, -2147483647i), global0.c)), countOneBits(2147483647i) | abs(-global0.b.x), ~(43886i ^ max(global0.b.x, global0.b.x))), 48351u >> (func_2(Struct_1(global0.a, global0.b << (vec4<u32>(56058u, 5468u, global0.c, 0u) % vec4<u32>(32u)), ~u_input.a.x), global0.b.x, -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1999i, global0.b.x, global0.b.x), vec4<i32>(11602i, -25867i, global0.b.x, global0.b.x)), -select(vec3<i32>(global0.b.x, global0.b.x, global0.b.x), vec3<i32>(0i, -1i, global0.b.x), vec3<bool>(false, global0.a, global0.a))) % 32u));
    let var_1 = vec2<u32>(max(~select(min(var_0.c, var_0.c), _wgslsmith_mult_u32(1u, 100808u), global0.a), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 33056u, global0.c, var_0.c), vec4<u32>(1u, var_0.c, 1u, 37602u)))), u_input.a.x);
    let var_2 = global0.a;
    let var_3 = select(vec3<u32>(firstLeadingBit(~9117u), 4294967295u, ~(max(var_0.c, var_0.c) & var_1.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 18856u, global0.c), countOneBits(vec3<u32>(4294967295u, 9773u, 0u))), abs(vec3<u32>(23604u, 33117u, 4294967295u))), min(countOneBits(vec3<u32>(var_0.c, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, var_0.c, 30952u)) & ~vec3<u32>(4294967295u, global0.c, var_0.c), _wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 31433u, 0u), vec3<u32>(var_1.x, 48339u, 34828u), var_0.a), ~vec3<u32>(4294967295u, 16778u, u_input.a.x)) >> (vec3<u32>(~var_0.c, 0u, ~71584u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(643f, -3117f, false))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1210f)), _wgslsmith_f_op_f32(f32(-1f) * -704f)))));
    return vec4<u32>(((global0.c >> (var_3.x % 32u)) >> (13297u % 32u)) | abs(_wgslsmith_sub_u32(u_input.a.x, 22848u)), global0.c, ~18475u << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 4294967295u, 0u, 19839u) & vec4<u32>(41682u, global0.c, 85074u, 29219u), ~vec4<u32>(92833u, var_1.x, global0.c, 4294967295u)) % 32u), countOneBits(_wgslsmith_add_u32(var_0.c ^ u_input.a.x, select(0u, var_0.c, true)))) | select(min(vec4<u32>(_wgslsmith_dot_vec3_u32(var_3, vec3<u32>(var_0.c, 1u, 4294967295u)), 4294967295u, 0u, reverseBits(var_3.x)), vec4<u32>(global0.c, ~var_0.c, global0.c & 0u, _wgslsmith_div_u32(1u, var_0.c))), ~countOneBits(vec4<u32>(34975u, 1u, u_input.a.x, 0u)) ^ ~(~vec4<u32>(global0.c, 0u, 62071u, 1u)), select(vec4<bool>(false, global0.a, true, true), !(!vec4<bool>(false, global0.a, var_0.a, global0.a)), any(!vec4<bool>(true, global0.a, global0.a, global0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u <= _wgslsmith_dot_vec4_u32(func_1(), vec4<u32>(4294967295u, u_input.a.x, 0u, global0.c) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global0.c, 18552u, u_input.a.x, 46667u), vec4<u32>(4294967295u, 1u, global0.c, u_input.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(global0.b.x, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(37223i, -11543i, 2147483647i), reverseBits(global0.b.xxw)), -14336i << (u_input.a.x % 32u), max(global0.b.x, global0.b.x)), vec4<i32>(-1i) * -vec4<i32>(1i, -49220i, global0.b.x, 0i)), u_input.a.x);
    var_0 = Struct_1(!var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(-19428i, firstLeadingBit(~0i), ~1i, -(1781i << (var_0.c % 32u))), _wgslsmith_div_vec4_i32(min(reverseBits(var_0.b), vec4<i32>(-1i, -1i, 2147483647i, global0.b.x)), var_0.b), firstTrailingBit(global0.b)), ~4294967295u);
    global0 = Struct_1(func_3(false, 0u).x, -vec4<i32>(0i, _wgslsmith_mod_i32(firstLeadingBit(global0.b.x), i32(-1i) * -1i), _wgslsmith_sub_i32(var_0.b.x, i32(-1i) * -1i), 0i), ~u_input.a.x);
    global0 = Struct_1(false, min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_0.b.x, min(global0.b.x, -8417i), global0.b.x), -global0.b, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.x, global0.b.x, var_0.b.x, global0.b.x), vec4<i32>(-2765i, var_0.b.x, -2147483647i, global0.b.x)), select(vec4<i32>(0i, -838i, global0.b.x, global0.b.x), vec4<i32>(global0.b.x, 1i, var_0.b.x, global0.b.x), false))), min(vec4<i32>(_wgslsmith_clamp_i32(global0.b.x, var_0.b.x, 26798i), _wgslsmith_mult_i32(var_0.b.x, 7016i), var_0.b.x & global0.b.x, -2147483647i), min(_wgslsmith_div_vec4_i32(vec4<i32>(global0.b.x, 1i, 25453i, -1i), vec4<i32>(global0.b.x, global0.b.x, 36970i, 2147483647i)), var_0.b))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4690u, 47021u, 0u, 1u) << (vec4<u32>(var_0.c, var_0.c, 0u, global0.c) % vec4<u32>(32u)), ~vec4<u32>(var_0.c, u_input.a.x, 1u, var_0.c)) | 37509u);
    let var_1 = Struct_1(all(select(vec2<bool>(true, true), func_3(!var_0.a, select(u_input.a.x, global0.c, var_0.a)).wy, !var_0.a)), max(var_0.b, _wgslsmith_div_vec4_i32(vec4<i32>(abs(global0.b.x), firstLeadingBit(-1214i), -2147483647i, 2147483647i >> (global0.c % 32u)), vec4<i32>(-1i) * -var_0.b)), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(786f, -345f, -1193f, 294f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(774f, 206f, -927f, 1972f), vec4<f32>(1755f, 428f, -1479f, 1097f), true)))))), abs(u_input.a), 4294967295u);
}

