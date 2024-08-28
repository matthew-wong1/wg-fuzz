struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_3,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(~firstTrailingBit(vec3<u32>(45515u, arg_0.x, 1u)), abs(vec3<u32>(0u, u_input.c.x, u_input.c.x)) & vec3<u32>(14918u, 4294967295u, 4294967295u)), vec3<u32>(43985u << (u_input.c.x % 32u), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, 70364u, 15866u))), u_input.c.x));
    let var_1 = Struct_4(vec3<bool>((71295u | u_input.c.x) <= abs(arg_0.x & var_0.x), !all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), true), abs(abs(~(~vec3<u32>(var_0.x, 39853u, 1u)))), arg_1, _wgslsmith_clamp_vec4_u32(~abs(~vec4<u32>(arg_0.x, u_input.c.x, 8764u, var_0.x)), vec4<u32>(reverseBits(arg_0.x) ^ 1u, ~select(var_0.x, u_input.c.x, true), u_input.c.x, var_0.x), ~(~vec4<u32>(29267u, arg_0.x, u_input.c.x, 0u))), Struct_3(~(_wgslsmith_add_vec4_i32(arg_1.a, arg_1.a) & vec4<i32>(-2147483647i, 2147483647i, -11445i, 26302i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-151f)) * 1021f), -630f)), _wgslsmith_f_op_f32(-1042f + _wgslsmith_f_op_f32(round(579f))));
    global0 = all(var_1.a.yx);
    return !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, var_2.x))) < -314f, false, true);
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_4(select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), func_3(vec2<u32>(arg_0.x, arg_0.x), Struct_3(vec4<i32>(u_input.d, 33983i, u_input.d, u_input.d))), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), true), arg_0, Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(select(2147483647i, 31045i, false), firstLeadingBit(1i), 5886i, -23308i), -vec4<i32>(13873i, u_input.d, global1.x, -2147483647i))), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 0u) ^ ~(~0u), abs(abs(_wgslsmith_mod_u32(50965u, arg_0.x))), 1u, 0u), Struct_3(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, -8036i, 0i, 2849i), vec4<i32>(max(global1.x, global1.x), ~u_input.b.x, -global1.x, _wgslsmith_sub_i32(global1.x, global1.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -46120i, u_input.b.x), abs(vec4<i32>(-1i, -1i, global1.x, u_input.d))))));
    var_0 = Struct_4(vec3<bool>(true, var_0.a.x, !(arg_0.x == 1u) || all(select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(false, true, true, false), true))), _wgslsmith_mod_vec3_u32(~arg_0, var_0.b), Struct_3(_wgslsmith_mult_vec4_i32(select(reverseBits(var_0.c.a), ~var_0.c.a, select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, true, false, var_0.a.x))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_0.c.a.x, u_input.a, global1.x), _wgslsmith_div_vec4_i32(var_0.e.a, var_0.c.a)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(79535u, _wgslsmith_sub_u32(240u | arg_0.x, ~var_0.b.x), abs(firstTrailingBit(117439u)), ~45748u), vec4<u32>(arg_0.x, arg_0.x, 1173u, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, arg_0.x), select(4294967295u, 64489u, false))), ~var_0.d), Struct_3(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.c.a, var_0.c.a), vec4<i32>(u_input.b.x, global1.x, var_0.e.a.x, 6317i)) ^ ~abs(vec4<i32>(5557i, -2147483647i, 12828i, global1.x))));
    global1 = _wgslsmith_add_vec2_i32(u_input.b.zx, var_0.c.a.wz);
    global0 = true;
    let var_1 = Struct_5(max(~0u, _wgslsmith_dot_vec2_u32(abs(var_0.d.yy), ~var_0.b.xz) ^ _wgslsmith_clamp_u32(arg_0.x | var_0.b.x, 27497u, firstLeadingBit(28011u))));
    return vec2<bool>(all(!(!var_0.a)), var_0.a.x);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = true;
    var var_2 = select(!vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(false, true), func_2(~(~(vec3<u32>(25369u, 0u, u_input.c.x) ^ vec3<u32>(1u, u_input.c.x, 62733u)))));
    var_2 = vec2<bool>(select(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-456f, -412f)))) <= 393f, true), var_2.x | (true || (false && func_3(u_input.c, Struct_3(arg_0.a)).x)));
    var var_3 = Struct_5(~0u);
    return Struct_2(!var_2.x && true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    global1 = -(_wgslsmith_add_vec2_i32(firstTrailingBit(~u_input.b.zy), -firstTrailingBit(u_input.b.yx)) << (abs(vec2<u32>(~4294967295u, arg_2.a)) % vec2<u32>(32u)));
    var var_0 = select(func_3(vec2<u32>(_wgslsmith_div_u32(arg_1.x, 1u), _wgslsmith_mod_u32(53601u, arg_1.x)) | _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(arg_1.x, 1u)), vec2<u32>(1u, 4294967295u) & vec2<u32>(arg_1.x, arg_2.a)), Struct_3(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.d, u_input.d, u_input.d, -1i)), -vec4<i32>(2147483647i, global1.x, -10110i, u_input.a)))), vec3<bool>(any(vec3<bool>(all(vec2<bool>(arg_0.a, arg_0.a)), !arg_0.a, true)), func_2(vec3<u32>(~42380u, ~103646u, arg_1.x | u_input.c.x)).x, false), !(!arg_0.a));
    var var_1 = Struct_3(~max(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global1.x, u_input.b.x), vec4<i32>(u_input.b.x, global1.x, u_input.b.x, -2147483647i)), vec4<i32>(global1.x, -12693i, 16647i, ~2147483647i)));
    global1 = _wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(var_1.a.yw, _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, -8706i), var_1.a.yz))), vec2<i32>(firstLeadingBit(-1i), 3407i), _wgslsmith_add_vec2_i32(-select(u_input.b.yz, vec2<i32>(15305i, global1.x), var_0.xx), u_input.b.zz));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(218f))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = vec2<i32>(~(~(global1.x >> (arg_1 % 32u))), -31086i);
    global0 = false;
    global1 = ~var_0 << (u_input.c % vec2<u32>(32u));
    let var_1 = 40104i;
    global0 = false;
    return Struct_1(abs(~4244u));
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_mult_u32(countOneBits(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 125319u, func_5(489f, u_input.c.x, u_input.c.x).a).a), select(~_wgslsmith_sub_u32(u_input.c.x, 0u), ~u_input.c.x, 2147483647i >= countOneBits(global1.x))) & ~(~32379u ^ ~func_5(795f, 74962u, u_input.c.x).a);
    var var_1 = ~firstLeadingBit(-u_input.b.x);
    var var_2 = max(vec4<i32>(1i, ~(-74069i), firstTrailingBit(global1.x), 1i), ~(-(~vec4<i32>(1i, global1.x, u_input.a, global1.x))));
    let var_3 = Struct_5(firstTrailingBit(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, 57235u), vec2<u32>(0u, arg_0.a)))));
    var var_4 = Struct_4(select(func_3(vec2<u32>(_wgslsmith_mod_u32(4789u, var_3.a), 94382u), Struct_3(vec4<i32>(u_input.b.x, global1.x, u_input.a, global1.x))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), !vec3<bool>(func_1(Struct_3(vec4<i32>(global1.x, -1i, u_input.d, var_2.x))).a, any(vec2<bool>(true, true)), false)), vec3<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(u_input.c), vec2<u32>(~30721u, ~u_input.c.x)), ~(~(~1u)), 52020u), Struct_3(max(select(reverseBits(vec4<i32>(-2147483647i, -81918i, -66i, global1.x)), ~vec4<i32>(-1i, 0i, u_input.d, 17408i), vec4<bool>(true, true, true, true)), vec4<i32>(-2147483647i, 23724i, global1.x, firstTrailingBit(-13645i)))), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(10787u, 62984u, 0u, 47743u), select(vec4<u32>(4294967295u, arg_0.a, arg_0.a, 4294967295u), vec4<u32>(u_input.c.x, 16180u, 74899u, 1u), true), vec4<bool>(false, true, true, true)), min(~abs(vec4<u32>(11068u, 4294967295u, 4294967295u, 31549u)), vec4<u32>(var_3.a, var_3.a, _wgslsmith_div_u32(var_3.a, arg_0.a), 82924u))), Struct_3(-countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_2.x, 0i, 1i), vec4<i32>(2147483647i, -38199i, var_2.x, -1i), vec4<i32>(-1i, global1.x, 15847i, u_input.b.x)))));
    return var_4.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(~1i, ~global1.x);
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_1(Struct_3(vec4<i32>(-38917i, u_input.b.x, 39207i, 34588i))), ~u_input.c, Struct_1(4294967295u))), _wgslsmith_f_op_f32(floor(-198f)))), u_input.c.x, _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, u_input.c), reverseBits(u_input.c)))));
    let var_1 = Struct_1(u_input.c.x);
    var var_2 = func_6(Struct_1(u_input.c.x));
    global1 = vec2<i32>(-_wgslsmith_mult_i32(abs(-42701i), func_6(var_1).a.x) >> (u_input.c.x % 32u), var_0.a.x);
    let var_3 = func_5(-1000f, u_input.c.x, countOneBits(reverseBits(10880u)));
    var_0 = func_6(var_1);
    let var_4 = ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, 9423u), _wgslsmith_dot_vec4_u32(vec4<u32>(24277u, var_1.a, 4294967295u, u_input.c.x), vec4<u32>(4294967295u, 53533u, u_input.c.x, var_3.a)), var_3.a, var_3.a), ~(vec4<u32>(var_1.a, 70522u, u_input.c.x, 20304u) | vec4<u32>(var_1.a, 4294967295u, var_1.a, u_input.c.x)), vec4<u32>(1u, 0u, var_1.a, var_3.a) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a, u_input.c.x, 0u, 1u), vec4<u32>(var_3.a, 62864u, var_1.a, var_3.a)) % vec4<u32>(32u))), vec4<u32>(u_input.c.x, 23360u, _wgslsmith_dot_vec3_u32(vec3<u32>(28882u, u_input.c.x, var_3.a), vec3<u32>(var_1.a, var_3.a, var_1.a)) | select(var_1.a, 1u, true), var_1.a), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-225f, _wgslsmith_f_op_f32(f32(-1f) * -407f)), i32(-1i) * -global1.x, min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, ~u_input.c.x, func_5(252f, var_1.a, 4294967295u).a) >> (vec3<u32>(reverseBits(22806u), u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, var_1.a)) % vec3<u32>(32u))), abs(firstLeadingBit(-44883i)));
}

