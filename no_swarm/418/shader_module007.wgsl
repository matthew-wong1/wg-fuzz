struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<bool>(false, true)), false, true), Struct_2(Struct_1(vec2<bool>(false, true)), false, true), Struct_2(Struct_1(vec2<bool>(true, false)), false, true), Struct_2(Struct_1(vec2<bool>(true, true)), false, true), Struct_2(Struct_1(vec2<bool>(true, true)), false, true), Struct_2(Struct_1(vec2<bool>(true, true)), true, false), Struct_2(Struct_1(vec2<bool>(true, true)), false, true), Struct_2(Struct_1(vec2<bool>(true, true)), true, false));

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)));

var<private> global2: Struct_4 = Struct_4(Struct_2(Struct_1(vec2<bool>(true, false)), true, false), vec4<u32>(59531u, 4402u, 7953u, 25287u), true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    return Struct_1(global2.a.a.a);
}

fn func_1(arg_0: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_1(select(vec2<bool>(global2.c, true), vec2<bool>(!global2.c, true), global2.a.a.a));
    var_0 = func_2(_wgslsmith_dot_vec3_u32(global2.b.xxx, vec3<u32>(3327u, _wgslsmith_sub_u32(u_input.c, max(global2.b.x, 4294967295u)), 1u)), i32(-1i) * -238i, vec3<i32>(_wgslsmith_sub_i32(1i, reverseBits(-1i)), max(_wgslsmith_sub_i32(abs(-2147483647i), 0i), firstTrailingBit(i32(-1i) * -1i)), -13124i));
    let var_1 = max(~vec2<i32>(i32(-1i) * -14950i, -6036i), vec2<i32>(-2147483647i, -598i));
    let var_2 = global2.b;
    var var_3 = arg_0.x;
    return select(~((global2.b << (_wgslsmith_mod_vec4_u32(vec4<u32>(36993u, u_input.b, 54762u, var_2.x), global2.b) % vec4<u32>(32u))) << (~vec4<u32>(global2.b.x, 98705u, global2.b.x, 0u) % vec4<u32>(32u))), global2.b, global2.b.x <= ~(~global2.b.x));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global2.b.x >> (max(_wgslsmith_add_u32(global2.b.x, 4294967295u), u_input.a >> (4294967295u % 32u)) % 32u)), global2.b.wy);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-757f + _wgslsmith_f_op_f32(trunc(-766f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1597f, -183f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(836f)) - _wgslsmith_f_op_f32(max(1190f, 560f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 396f))), any(select(vec4<bool>(false, global2.a.b, true, global2.a.c), vec4<bool>(global2.a.c, false, global2.c, false), global2.c))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-317f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(502f, -666f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f + 404f) * _wgslsmith_f_op_f32(select(-270f, 852f, true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1691f, 1095f, 196f)))), !(!select(vec3<bool>(global2.a.b, global2.c, global2.a.c), vec3<bool>(global2.c, global2.c, global2.a.a.a.x), vec3<bool>(global2.a.a.a.x, global2.a.a.a.x, global2.a.c))))));
    var var_2 = Struct_3(vec2<u32>(max(67750u, 0u), max(_wgslsmith_mult_u32(~u_input.b, var_0.x), 1u)), func_2(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_0 ^ vec2<i32>(arg_0.x, -7335i)) >> (~global2.b.x % 32u), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(18002i, -1i, arg_0.x), ~vec3<i32>(25097i, arg_0.x, arg_0.x)), vec3<i32>(_wgslsmith_div_i32(1i, -1i), 16098i, 1i))), 1u);
    var_0 = ~(~global2.b.yw);
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1.x, -228f))))), !vec3<bool>(false, !global2.a.b, false)))));
    return vec4<u32>(_wgslsmith_mult_u32(var_0.x | ~global2.b.x, firstLeadingBit(abs(~44382u))), _wgslsmith_div_u32(max(48989u, _wgslsmith_add_u32(19938u, 84887u)) >> (1u % 32u), ~(~u_input.c)), var_0.x, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(u_input.b, select(u_input.c, _wgslsmith_mod_u32(global2.b.x, 0u ^ global2.b.x), select(true, true, true) & all(vec3<bool>(global2.a.a.a.x, global2.a.c, false)))) & 0u;
    var var_1 = select(vec4<u32>(~((0u >> (u_input.b % 32u)) << (abs(4294967295u) % 32u)), ~abs(~4294967295u), _wgslsmith_dot_vec4_u32(global2.b, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-907f, -1000f) + vec2<f32>(-704f, 593f)))), u_input.a), func_3(vec2<i32>(_wgslsmith_clamp_i32(0i, ~1i, _wgslsmith_clamp_i32(7860i, -66788i, -2147483647i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(50635i, -1i)), vec2<i32>(-2147483647i, 2147483647i)))), !vec4<bool>(global2.c, !global2.a.a.a.x, true, any(select(vec4<bool>(global2.a.c, global2.c, global2.a.c, global2.c), vec4<bool>(true, global2.a.a.a.x, global2.a.a.a.x, true), vec4<bool>(global2.a.a.a.x, global2.a.c, global2.c, global2.a.c)))));
    global0 = array<Struct_2, 8>();
    var var_2 = global2.a.a.a;
    var var_3 = Struct_2(Struct_1(func_2(_wgslsmith_div_u32(var_1.x, 0u) ^ ~22418u, 0i, vec3<i32>(1i, 1i, 1i)).a), any(vec2<bool>(!(false == var_2.x), any(vec4<bool>(global2.c, global2.a.a.a.x, false, var_2.x)) | true)), _wgslsmith_dot_vec2_i32(vec2<i32>(-37798i, -15635i) >> (~var_1.xx % vec2<u32>(32u)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -13480i), vec2<i32>(72919i, 72928i)), vec2<i32>(-21703i, -52183i), true)) <= -2147483647i);
    global0 = array<Struct_2, 8>();
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(-459f)), 534f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-267f)) - _wgslsmith_f_op_f32(max(168f, 922f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(f32(-1f) * -155f)), var_3.b)))));
    global1 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(438f - var_4.x), _wgslsmith_f_op_f32(var_4.x - -2801f)) + vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), var_4.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.x, 317f), vec2<f32>(-1217f, -471f), var_3.c)), _wgslsmith_f_op_vec2_f32(-var_4.xy), vec2<bool>(true, var_2.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1120f, var_4.x), vec2<f32>(var_4.x, var_4.x))) - var_4.xz)))), global2.b, abs(-(~(-vec2<i32>(1i, 21617i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1216f))));
}

