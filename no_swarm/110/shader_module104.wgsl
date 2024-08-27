struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3)), arg_3) * 1000f)), vec2<f32>(arg_3, arg_3), true));
    var var_2 = _wgslsmith_mult_vec4_u32(~(~firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, arg_2.b.a.x, 47417u))), vec4<u32>(max(~arg_2.b.a.x, 0u), ~_wgslsmith_mod_u32(~34600u, ~20236u), ~min(67318u, 0u), 27899u));
    let var_3 = !(!vec3<bool>(true, all(select(vec3<bool>(arg_1.a.b, false, var_0), vec3<bool>(false, arg_1.a.b, arg_1.a.b), vec3<bool>(arg_2.a.b, false, arg_2.b.b))), !arg_2.b.b));
    global0 = all(var_3.zy);
    return vec4<bool>(true, true || select(!(true && arg_1.a.b), arg_1.b.b, !any(vec3<bool>(arg_2.b.b, arg_1.b.b, false))), true, all(var_3));
}

fn func_2() -> Struct_1 {
    global0 = !any(vec4<bool>(u_input.d.x == 1i, all(func_3(vec3<u32>(1u, 36046u, 0u), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 15273u), true), Struct_1(vec3<u32>(1u, 15794u, 33135u), false), u_input.a), Struct_2(Struct_1(vec3<u32>(13142u, 0u, 62758u), true), Struct_1(vec3<u32>(4294967295u, 0u, 25101u), false), u_input.d.x), 101f)), (u_input.d.x < u_input.c.x) != (u_input.d.x <= 0i), false));
    let var_0 = u_input.d.zz;
    let var_1 = true;
    global0 = !any(vec3<bool>(true, all(vec2<bool>(false, var_1)), var_1));
    var var_2 = Struct_1(~(~firstLeadingBit(select(vec3<u32>(19454u, 52271u, 4535u), vec3<u32>(16989u, 1u, 0u), var_1))), var_1 | true);
    return Struct_1(var_2.a ^ ~(~(~vec3<u32>(var_2.a.x, 4294967295u, var_2.a.x))), true);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> bool {
    global0 = true;
    var var_0 = arg_0;
    let var_1 = var_0.b.b;
    var_0 = arg_0;
    var var_2 = Struct_2(Struct_1(~min(arg_0.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(11407u, 1u, 0u), vec3<u32>(var_0.a.a.x, arg_0.a.a.x, 27852u))), true), func_2(), 0i);
    return false & !var_2.b.b;
}

fn func_1() -> vec4<u32> {
    global0 = func_4(Struct_2(Struct_1(select(~vec3<u32>(0u, 1u, 35313u), ~vec3<u32>(7324u, 1u, 0u), false), ~u_input.b.x >= -73282i), func_2(), u_input.c.x), -1131f, 1421f);
    global0 = false;
    global0 = false;
    var var_0 = vec2<bool>(select(false, true || (select(false, true, true) && select(false, false, true)), false), all(!vec2<bool>(any(vec2<bool>(false, true)), func_2().b)));
    var var_1 = func_3(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~98359u, 0u), firstTrailingBit(func_2().a))), Struct_2(func_2(), func_2(), ~0i), Struct_2(func_2(), Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(8271u, 0u, 22097u), vec3<u32>(3506u, 1u, 0u)), any(!vec3<bool>(var_0.x, true, var_0.x))), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1434f - 1655f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1252f))))));
    return vec4<u32>(countOneBits(~62063u), 1u, _wgslsmith_div_u32(min(1u, 1u), ~max(4294967295u, 28662u) >> (~func_2().a.x % 32u)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = abs(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) >> ((select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(0u, 4294967295u, 24604u, 1u), vec4<u32>(4294967295u, 1u, 2641u, 0u)), true) | vec4<u32>(1u, 1u, 1u, firstLeadingBit(2248u))) % vec4<u32>(32u)));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(10429u, var_0.x), var_0.x & 102293u), var_0.x, ~(var_0.x | var_0.x), ~var_0.x) & abs(~vec4<u32>(var_0.x, 1u, var_0.x, 0u)), vec4<u32>(~var_0.x, 1u, _wgslsmith_dot_vec2_u32(var_0.yw, vec2<u32>(var_0.x, 13523u)), 46776u) ^ (func_1() >> ((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 41192u, var_0.x, var_0.x), vec4<u32>(var_0.x, 63586u, var_0.x, 20872u)) >> (abs(vec4<u32>(var_0.x, 36210u, 1u, var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = false;
    var var_2 = vec4<i32>(firstLeadingBit(u_input.a), min(u_input.b.x, _wgslsmith_mod_i32(i32(-1i) * -9914i, ~u_input.a)), -(~(-11050i)), u_input.b.x);
    let var_3 = !var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(610f, 603f, -1279f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1640f, -1000f, 699f) + vec3<f32>(507f, -1000f, -1824f))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-793f, -2021f, 249f)), vec3<f32>(707f, 1578f, -564f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(370f, -600f, -368f))))), vec3<u32>(var_0.x, var_0.x, _wgslsmith_mult_u32(~60852u, ~var_0.x) | var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-366f, 919f) + vec2<f32>(1385f, 2557f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-835f, -1875f), vec2<f32>(-688f, -1000f))))) - vec2<f32>(_wgslsmith_f_op_f32(-1f), -1533f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(708f + -1184f) + _wgslsmith_f_op_f32(select(768f, 123f, false)))))));
}

