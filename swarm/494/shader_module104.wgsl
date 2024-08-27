struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(4294967295u, 4294967295u, 29883u)), Struct_1(vec3<u32>(1u, 1802u, 24943u)), Struct_1(vec3<u32>(14883u, 17469u, 11456u)), Struct_1(vec3<u32>(5798u, 78492u, 28974u)), Struct_1(vec3<u32>(0u, 47902u, 24030u)), Struct_1(vec3<u32>(1u, 1u, 5837u)), Struct_1(vec3<u32>(57991u, 8362u, 82847u)), Struct_1(vec3<u32>(5242u, 39305u, 73865u)));

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 29>;

var<private> global4: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(~global4.x | 83298u, 29u)];
    let var_1 = Struct_1(global4.yzz);
    let var_2 = Struct_1(~vec3<u32>(4294967295u, abs(u_input.c.x), 0u));
    var var_3 = Struct_1(var_2.a);
    global2 = false;
    return min(select(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, global4.x), 57000u), 6643u, !all(vec4<bool>(false, false, true, true))), var_3.a.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(max(~1u, u_input.d ^ (_wgslsmith_sub_u32(1u, u_input.b) >> (func_3() % 32u))), global4.x | 60185u);
    let var_1 = _wgslsmith_sub_i32(-87668i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~(-vec2<i32>(-1980i, 1i)), vec2<i32>(1i, 1i) << (u_input.c % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-45093i, 32962i), vec2<i32>(1i, -1i), vec2<i32>(0i, 1i)), -reverseBits(vec2<i32>(0i, 0i)), vec2<i32>(-39432i, 0i))));
    let var_2 = Struct_1(firstLeadingBit(global4.yxx));
    let var_3 = _wgslsmith_sub_i32(var_1 << (global4.x % 32u), ~select(var_1, abs(0i) & _wgslsmith_add_i32(13877i, var_1), true));
    global4 = firstTrailingBit(firstLeadingBit(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(44988u, 84056u, u_input.c.x, 0u) << (vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 18745u) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_2.a.x, var_2.a.x, global4.x, 68289u))))));
    return select(select(select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true))), all(vec4<bool>(all(vec4<bool>(false, false, false, false)), 2550i <= var_3, true, select(false, false, false)))), vec2<bool>(true, true), select(!vec2<bool>(select(false, false, false), false), select(vec2<bool>(true, var_2.a.x > global4.x), vec2<bool>(var_3 > 50967i, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !(!all(vec3<bool>(false, false, true)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(min(~(~vec3<u32>(u_input.b, global4.x, 42539u)) & ~_wgslsmith_div_vec3_u32(global4.zzx, global4.yzx), global4.wyw));
    global0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(sign(1000f));
    global3 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, -1719f, 971f, var_1)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1915f, 469f, 1378f, -522f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, 582f, -759f, 132f) - vec4<f32>(var_1, -1208f, 895f, -816f)), !arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, 1000f, -2215f, var_1), vec4<f32>(var_1, var_1, var_1, var_1)))))));
    return Struct_1(vec3<u32>(reverseBits(~var_0.a.x), 4294967295u, 30171u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    let var_0 = func_4(select(func_2(), !vec2<bool>(select(false, true, false), true), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), vec4<bool>(!func_2().x, false, any(vec4<bool>(true, true, true, true)) == all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), select(false, func_2().x || any(vec4<bool>(false, false, false, true)), false)), true, max(1i, firstLeadingBit(_wgslsmith_div_i32(-2147483647i, arg_2))));
    global3 = array<Struct_1, 29>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x ^ (_wgslsmith_div_u32(1u, func_4(vec2<bool>(false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false)), _wgslsmith_mod_i32(33048i, arg_2)).a.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 0u, 1u), vec3<u32>(u_input.c.x, global4.x, u_input.b))), firstLeadingBit(vec2<u32>(1u, 0u)))), 8u)];
    global4 = _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(69667u, 1u, arg_1.a.x, var_1.a.x)), firstTrailingBit(vec4<u32>(792u, 1u, 4294967295u, 50395u) << (vec4<u32>(30536u, var_0.a.x, global4.x, 4294967295u) % vec4<u32>(32u))))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, ~arg_0.a.x, global4.x, var_0.a.x), vec4<u32>(42154u, u_input.c.x, ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4.x, 19985u, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_1.a.x, 4294967295u, 58269u)))));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(countOneBits(0u), ~_wgslsmith_mult_u32(4294967295u, var_1.a.x), firstTrailingBit(var_0.a.x)), 1u, 52396u), 8u)];
    return _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u << (1u % 32u), ~global4.x, _wgslsmith_dot_vec2_u32(arg_1.a.xz, var_1.a.zz))), ~(~(~(arg_1.a | vec3<u32>(12890u, arg_0.a.x, global4.x)))), vec3<u32>(select(63826u, ~max(arg_0.a.x, 1u), false), func_4(vec2<bool>(all(vec4<bool>(false, false, false, true)), func_2().x), vec4<bool>(true, true, true, true), true, _wgslsmith_mod_i32(~(-21018i), arg_2)).a.x, ~41331u));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, 832f, 497f, -1081f))))));
    global3 = array<Struct_1, 29>();
    global2 = !(false | (select(true, false, false) && true)) || (true & all(vec2<bool>(false, arg_0 >= -34138i)));
    global2 = any(select(vec3<bool>(false, false, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), any(vec3<bool>(true, false, true))), false));
    var var_1 = Struct_1(global4.yyz);
    return func_1(global3[_wgslsmith_index_u32(global4.x, 29u)], func_4(func_2(), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), !(max(-78073i, arg_0) < (-22077i & arg_0)), 9972i), 0i).x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    let var_0 = global1[_wgslsmith_index_u32(~(~(_wgslsmith_mult_u32(global4.x, u_input.d) & global4.x) & 4294967295u), 8u)];
    let var_1 = any(vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), all(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(280f, 340f, -416f)))))))));
    global0 = 0i;
    var var_3 = i32(-1i) * -20019i;
    var var_4 = 22262u;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(-4935i, ~(func_1(global3[_wgslsmith_index_u32(global4.x, 29u)], Struct_1(vec3<u32>(43892u, 69339u, 1u)), -42958i) >> (global4.zzx % vec3<u32>(32u)))), vec3<i32>(abs(firstTrailingBit(abs(0i))), _wgslsmith_div_i32(abs(max(-1i, -7544i)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-5313i, 0i)), ~vec2<i32>(43510i, 2147483647i))), -abs(0i) ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(-3912i, 2147483647i), vec2<i32>(0i, 11383i))), firstLeadingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 38088i, 21005i, -55936i), vec4<i32>(-1i, 2147483647i, -1i, -2147483647i), vec4<i32>(2147483647i, -23914i, 53276i, -1i)) << (countOneBits(vec4<u32>(u_input.c.x, 4294967295u, var_0.a.x, 18198u)) % vec4<u32>(32u))), u_input.d);
}

