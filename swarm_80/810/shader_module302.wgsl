struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_i32(u_input.a.x, i32(-1i) * -arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1743f)), -534f, 543f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-264f, 194f, false))))), Struct_1(arg_0), Struct_1(0i));
    let var_1 = vec2<bool>(any(vec3<bool>(true, select(false, true, true), !select(false, true, true))), (var_0.b.x <= var_0.b.x) && (false && all(vec3<bool>(true, true, true))));
    var var_2 = select(select(select(vec3<bool>(true, true, !var_1.x), !vec3<bool>(false, true, var_1.x), !(!var_1.x)), vec3<bool>(true, true, false), select(!vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, false, true), select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, true, var_1.x), false)), !(!vec3<bool>(var_1.x, true, true)))), vec3<bool>(!(true && var_1.x), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.b.x)))) < var_0.b.x), vec3<bool>(!any(!vec2<bool>(var_1.x, var_1.x)), !all(select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(false, true, var_1.x, true))), var_1.x));
    global0 = var_0.b.x;
    var_0 = Struct_3(Struct_1(arg_0), var_0.b, var_0.c, var_0.d);
    return var_0.b.x;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_2(~arg_0);
    var var_1 = vec4<f32>(-2872f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~(-45439i))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(541f, 1035f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-861f + 459f) + -770f) + -371f)), -137f);
    var var_2 = true;
    var_2 = all(select(!vec2<bool>(true, var_0.a <= 1u), vec2<bool>(any(vec3<bool>(true, true, true)), true == all(vec3<bool>(true, false, false))), vec2<bool>(true, true)));
    var var_3 = firstTrailingBit(-(27751i >> (_wgslsmith_add_u32(var_0.a, 4294967295u) % 32u))) ^ firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b.yyy | firstLeadingBit(u_input.a.xww), countOneBits(vec3<i32>(-14776i, u_input.a.x, u_input.a.x))));
    return var_1.x;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - arg_0)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(func_2(0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-463f, -1884f))))));
    return Struct_1(u_input.a.x);
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(892f, arg_0, arg_3.x, arg_3.x) * vec4<f32>(379f, arg_0, -442f, 197f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(161f, -1200f, -2235f, -1282f) + vec4<f32>(arg_0, -105f, -1317f, 598f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(204f, arg_3.x, arg_3.x, 1472f) * vec4<f32>(1358f, arg_3.x, arg_0, arg_0))), true)), true)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 840f, _wgslsmith_f_op_f32(sign(2065f))));
    global0 = _wgslsmith_f_op_f32(-arg_3.x);
    let var_1 = Struct_3(func_4(_wgslsmith_f_op_f32(func_2(abs(1u) << (1u % 32u))), select(select(!vec4<bool>(arg_2, arg_2, true, true), !vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(false, arg_2, false, arg_2)), !(!vec4<bool>(arg_2, false, arg_2, false)), (u_input.a.x ^ 0i) > -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0, var_0.x, arg_0) + vec4<f32>(arg_3.x, -1332f, var_0.x, arg_3.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -697f, -1674f, 224f) + vec4<f32>(1195f, arg_3.x, -407f, var_0.x))))), func_4(1477f, !(!select(vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(true, false, arg_2, true), vec4<bool>(false, true, false, arg_2)))), Struct_1(-31703i));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1188f, -1258f)))), _wgslsmith_f_op_vec4_f32(-var_1.b)));
    return Struct_4(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1.a, ~_wgslsmith_mod_vec3_i32(arg_1.a, arg_1.a), vec3<i32>(2147483647i, ~(-2147483647i), func_4(var_1.b.x, vec4<bool>(false, false, true, arg_2)).a)), vec3<i32>(u_input.a.x, firstTrailingBit(_wgslsmith_clamp_i32(arg_1.a.x, 13396i, -1i)), u_input.a.x | countOneBits(-1i)), countOneBits(u_input.a.wxy | ~vec3<i32>(var_1.d.a, 15752i, arg_1.a.x))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1074f)), _wgslsmith_f_op_f32(f32(-1f) * -233f)), arg_1.b.x, true))));
    var var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_f32(round(arg_1.b.x));
    var var_2 = Struct_2(_wgslsmith_div_u32(1u, 1u));
    var_0 = func_4(_wgslsmith_f_op_f32(332f * arg_1.b.x), vec4<bool>(true, false, false, select(true, true, all(vec2<bool>(true, true)) != true)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(min(max(min(var_2.a, var_2.a), var_2.a), ~var_2.a << (select(var_2.a, var_2.a, false) % 32u)), var_2.a), max(~(~vec2<u32>(4294967295u, 0u) | _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_2.a), vec2<u32>(var_2.a, 33611u))), _wgslsmith_sub_vec2_u32(~(vec2<u32>(53945u, var_2.a) >> (vec2<u32>(var_2.a, 0u) % vec2<u32>(32u))), reverseBits(vec2<u32>(134919u, var_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(838f, _wgslsmith_f_op_f32(ceil(561f))))), -1152f, 1f);
    var var_1 = 19967i;
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(func_5(func_1(var_0.x, Struct_4(u_input.a.xxy), true, vec2<f32>(var_0.x, var_0.x)), Struct_3(Struct_1(-2147483647i), vec4<f32>(var_0.x, var_0.x, var_0.x, -707f), Struct_1(u_input.b.x), Struct_1(38284i))), 43124u), _wgslsmith_mult_vec2_u32(min(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 74003u)), vec2<u32>(~(~1u), ~(~4294967295u))));
    var_1 = countOneBits(-908i);
    var var_3 = var_0.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec3<u32>(18185u, 10367u, 4294967295u) >> (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u))) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(82417u, 40775u, 57835u), firstTrailingBit(vec3<u32>(0u, 4294967295u, 0u))) % vec3<u32>(32u)), u_input.b.x);
}

