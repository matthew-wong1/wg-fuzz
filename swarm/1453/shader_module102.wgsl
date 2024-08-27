struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_2(true, arg_0.a);
    var var_1 = ~max(4294967295u, global0.x);
    var_1 = global0.x;
    let var_2 = arg_0.b.x;
    var_1 = ~17667u;
    return vec3<bool>(select(true, var_0.a, true), var_0.a, all(!select(!vec4<bool>(true, true, var_0.a, true), !vec4<bool>(var_0.a, var_0.a, false, var_0.a), false)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-592f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-322f)), _wgslsmith_f_op_f32(-1000f + 541f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(369f, 314f) - vec2<f32>(-904f, 570f))))));
    let var_1 = arg_0;
    var var_2 = Struct_2(arg_0.x, 1359f);
    let var_3 = func_3(Struct_1(-1966f, vec3<i32>(abs(0i), global2.x, global2.x & 2147483647i) << (~(~global0.zzy) % vec3<u32>(32u))), Struct_1(var_2.b, vec3<i32>(u_input.a, ~(~global2.x), -52838i)), select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, u_input.a) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), firstLeadingBit(global2.zz)), u_input.a, ~u_input.a, global2.x), (vec4<i32>(global2.x, global2.x, -1i, global2.x) << (vec4<u32>(1u, u_input.b, 21847u, u_input.b) % vec4<u32>(32u))) ^ select(~vec4<i32>(u_input.a, 26525i, u_input.a, -28540i), vec4<i32>(-14593i, 1i, global2.x, u_input.a), !vec4<bool>(true, false, var_2.a, false)), !select(!vec4<bool>(true, true, true, arg_1.x), vec4<bool>(true, true, true, var_2.a), any(vec4<bool>(true, var_2.a, arg_0.x, arg_0.x)))));
    global0 = ~min(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, u_input.b, global1.x, 19180u)), vec4<u32>(min(60123u, global0.x), ~global1.x, min(global1.x, 92295u), 27185u)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, 4294967295u, global1.x, 0u), select(vec4<u32>(u_input.b, 475u, u_input.b, global0.x), vec4<u32>(27051u, 41640u, 1u, u_input.b), vec4<bool>(true, true, false, arg_1.x))));
    return select(select(vec2<bool>(true == (var_0.x > var_2.b), arg_0.x), vec2<bool>(true, true), true), select(arg_1, !(!(!var_3.yy)), arg_0.yx), !all(!func_3(Struct_1(-1200f, vec3<i32>(u_input.a, 25206i, -2147483647i)), Struct_1(857f, vec3<i32>(u_input.a, u_input.a, 2147483647i)), vec4<i32>(14972i, 0i, 9021i, global2.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_4(select(func_3(Struct_1(_wgslsmith_f_op_f32(arg_1.x - arg_2.b), ~vec3<i32>(1i, arg_0.x, 13454i)), Struct_1(_wgslsmith_f_op_f32(round(arg_1.x)), vec3<i32>(2147483647i, 2147483647i, arg_0.x)), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, arg_0.x, 29139i) & vec4<i32>(-7711i, u_input.a, arg_0.x, 24936i))), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, false, false)), vec3<bool>(any(vec4<bool>(false, arg_2.a, arg_2.a, arg_2.a)), true, true), arg_2.a), arg_2.a), !select(select(func_3(Struct_1(arg_1.x, vec3<i32>(u_input.a, -6696i, u_input.a)), Struct_1(-1110f, vec3<i32>(arg_0.x, 0i, -31184i)), vec4<i32>(-23867i, u_input.a, u_input.a, 0i)).xx, vec2<bool>(true, false), func_3(Struct_1(arg_2.b, vec3<i32>(global2.x, global2.x, -2147483647i)), Struct_1(arg_1.x, vec3<i32>(29623i, -10166i, global2.x)), vec4<i32>(-1i, arg_0.x, global2.x, -17503i)).yy), !select(vec2<bool>(true, false), vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, arg_2.a)), !vec2<bool>(false, arg_2.a)));
    global1 = ~(~firstLeadingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(39127u, global0.x), ~vec2<u32>(global0.x, u_input.b))));
    let var_1 = true;
    var var_2 = _wgslsmith_dot_vec4_i32(select(~select(vec4<i32>(u_input.a, -2147483647i, 1200i, u_input.a), vec4<i32>(global2.x, 1i, u_input.a, 72356i), arg_2.a), ~(-vec4<i32>(43551i, 2147483647i, 24189i, -34471i)), vec4<bool>(arg_2.a, all(vec3<bool>(var_0.x, arg_2.a, false)), false == arg_2.a, false)) >> ((vec4<u32>(1u, abs(4294967295u), 68294u >> (global1.x % 32u), u_input.b >> (0u % 32u)) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(16643u, 1u, global0.x, global1.x), vec4<u32>(4294967295u, 1u, global1.x, global1.x) << (vec4<u32>(global1.x, u_input.b, global0.x, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)), ~vec4<i32>(firstTrailingBit(select(-31849i, u_input.a, var_1)), arg_0.x, u_input.a, abs(~1i)));
    var var_3 = Struct_1(arg_1.x, vec3<i32>(-1i, _wgslsmith_clamp_i32(countOneBits(select(-16291i, u_input.a, false)), _wgslsmith_add_i32(-52365i, u_input.a), _wgslsmith_mod_i32(~(-1i), 1i)), min(arg_0.x, ~(i32(-1i) * -26839i))));
    return Struct_1(var_3.a, -vec3<i32>(-firstTrailingBit(arg_0.x), -abs(-9404i), -1i));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1122f + arg_0.a) + arg_0.a)), arg_0.b);
    var var_1 = var_0.a > arg_0.a;
    let var_2 = vec4<bool>(any(vec2<bool>(true, true)) | false, true, true, false);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1372f + arg_0.a)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))), abs(-vec3<i32>(var_0.b.x & global2.x, firstLeadingBit(-28587i), _wgslsmith_dot_vec2_i32(global2.zx, arg_0.b.yx))));
    var var_4 = vec3<bool>(_wgslsmith_mult_i32(countOneBits(-42677i), -16189i) <= var_3.b.x, false, true);
    return Struct_2(var_4.x, _wgslsmith_f_op_f32(339f * -753f));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> vec2<bool> {
    var var_0 = func_5(func_2(global2.xy, vec3<f32>(426f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(272f, 1734f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(963f)))), Struct_2(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -491f), -438f)))));
    global0 = _wgslsmith_div_vec4_u32(~max(vec4<u32>(_wgslsmith_mult_u32(21325u, 62363u), 39099u, 4627u, global1.x), abs(vec4<u32>(89805u, 1u, 19971u, 40553u))), _wgslsmith_clamp_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.x, global0.x, 7566u), vec4<u32>(4294967295u, 0u, global0.x, global0.x))), vec4<u32>(countOneBits(~global1.x), 59990u, global1.x, ~global0.x | u_input.b), vec4<u32>(~min(1u, global0.x), max(global0.x, abs(global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, global0.x, 128968u) ^ vec4<u32>(global1.x, 0u, 0u, u_input.b), ~vec4<u32>(global0.x, 4294967295u, u_input.b, u_input.b)), _wgslsmith_mod_u32(4294967295u >> (global0.x % 32u), firstLeadingBit(global0.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, 1333f, 1000f), vec3<f32>(610f, 1000f, var_0.b), arg_0.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, 1178f, var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b)))))));
    var var_2 = Struct_1(var_1.x, vec3<i32>(global2.x, max(u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(-6511i, 0i, -10507i, u_input.a), vec4<i32>(global2.x, 40304i, 1i, global2.x))), 53757i));
    let var_3 = 877f;
    return vec2<bool>(!any(!func_4(arg_0.ywy, vec2<bool>(true, true))), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), true), true && all(vec4<bool>(false, false, true, true)), true), vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))) != false, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false), false))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~global0.yyw, vec3<u32>(0u, ~72064u, countOneBits(min(56091u, global0.x)))), min(-global2.yz, vec2<i32>(i32(-1i) * -26297i, global2.x)), countOneBits(~(~firstTrailingBit(2147483647i))), vec3<i32>(1i, ~_wgslsmith_sub_i32(-8657i, u_input.a), max(u_input.a, -12466i)) ^ _wgslsmith_mult_vec3_i32(~(vec3<i32>(-2147483647i, u_input.a, 0i) & vec3<i32>(global2.x, u_input.a, 0i)), abs(vec3<i32>(global2.x, 0i, global2.x))), -(~max(vec3<i32>(0i, global2.x, u_input.a), vec3<i32>(u_input.a, global2.x, -2147483647i) << (vec3<u32>(917u, global0.x, global0.x) % vec3<u32>(32u)))));
}

