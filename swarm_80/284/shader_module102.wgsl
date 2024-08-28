struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = !select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec4<bool>(false, false, false, false))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true)), true);
    let var_1 = 4294967295u;
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1382f + 1024f)) - 472f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f + 576f)))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 75550u) | vec3<u32>(49390u, 4294967295u, var_1), ~vec3<u32>(71211u, var_1, 19498u)) | _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(12648u, var_1, 1u)), ~vec3<u32>(u_input.b, 9127u, var_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, -341f, _wgslsmith_f_op_f32(757f * 1565f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(778f, -830f, -1175f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, 125f, -545f)))), !(!(var_0.x && false))), var_0.xy, vec2<u32>(var_1 & 0u, ~_wgslsmith_mod_u32(var_1, ~109682u)), !((var_1 >= 1u) && true));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.a.x, _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.b.x + 2278f)))))));
    var_3 = var_2.a;
    return (all(vec2<bool>(any(var_0), any(vec4<bool>(false, true, var_0.x, var_2.c.x)))) | !(max(var_1, var_1) > var_1)) || !(!var_2.c.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = ~u_input.a;
    var var_1 = arg_1;
    var var_2 = select(vec4<bool>(true & all(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1.c, arg_1.c, false, arg_1.c), vec4<bool>(true, var_1.c, var_1.c, var_1.c))), !(1814f != var_1.b.x) && all(vec4<bool>(arg_1.c, false, var_1.c, arg_1.c)), false, !func_3()), vec4<bool>(true, abs(u_input.b) > 5421u, func_3(), arg_1.c), !vec4<bool>(any(!vec3<bool>(arg_1.c, true, false)), true, false, var_1.c));
    let var_3 = Struct_2(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(round(arg_1.b.x))), arg_1, vec2<bool>(var_1.c, true), ~var_1.a.xy, select(true, false, _wgslsmith_add_u32(select(var_1.a.x, arg_1.a.x, var_2.x), 94751u) > ~(~arg_0)));
    var_2 = vec4<bool>(false, var_1.c, true, all(!select(select(vec4<bool>(arg_1.c, arg_1.c, false, arg_1.c), vec4<bool>(false, var_3.c.x, arg_1.c, var_3.c.x), arg_1.c), vec4<bool>(false, false, var_3.c.x, var_2.x), !var_1.c)));
    return select(var_2.zyz, !(!select(vec3<bool>(var_2.x, arg_1.c, var_3.c.x), !vec3<bool>(arg_1.c, true, var_3.b.c), false)), !var_2.wzz);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = any(select(!func_2(21503u, Struct_1(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<f32>(-285f, arg_1.x, arg_1.x), false), select(u_input.a.zzw, u_input.a.xxx, vec3<bool>(arg_0, arg_0, arg_0))), !select(!vec3<bool>(arg_0, true, arg_0), !vec3<bool>(true, arg_0, true), arg_0), !(!all(vec3<bool>(arg_0, arg_0, true)))));
    var var_1 = 541f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(287f)))));
    let var_2 = Struct_2(vec2<f32>(-423f, arg_1.x), Struct_1(arg_2.wxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(550f, -932f, 584f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1335f)))) != _wgslsmith_f_op_f32(ceil(arg_1.x))), vec2<bool>(true, !func_2(u_input.b, Struct_1(arg_2.yzw, vec3<f32>(arg_1.x, arg_1.x, 989f), false), u_input.a.wyz).x == true), arg_2.zz, true);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(171f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f)));
    return 605i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(-(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, -60610i)) & countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i))), vec3<i32>(1i, -(~u_input.a.x), func_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1273f, 123f)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 29659u, 29820u, u_input.b), vec4<u32>(u_input.b, u_input.b, 66538u, u_input.b))))) ^ select(countOneBits(vec3<i32>(59732i, 1i, u_input.a.x) >> (max(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(60733u, u_input.b, 40063u)) % vec3<u32>(32u))), firstLeadingBit(~u_input.a.wwy), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = all(vec4<bool>(true, false, select(all(vec3<bool>(true, true, true)), -46511i != u_input.a.x, false), !(u_input.a.x == 23860i)));
    var var_2 = true;
    var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(max(u_input.b, u_input.b), firstLeadingBit(38555u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 35362u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), vec3<u32>(u_input.b << (u_input.b % 32u), u_input.b, max(u_input.b, u_input.b) << (4294967295u % 32u))) < 1u;
    var_0 = abs(u_input.a.yyw ^ ((abs(vec3<i32>(51110i, -2147483647i, var_0.x)) >> (firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 14486u)) % vec3<u32>(32u))) | vec3<i32>(-2147483647i, _wgslsmith_add_i32(var_0.x, -10247i), _wgslsmith_dot_vec3_i32(vec3<i32>(53604i, -6593i, -1731i), u_input.a.zzx))));
    var_2 = var_1 || (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1083f * -333f), _wgslsmith_div_f32(-1170f, -934f))) > 604f);
    var_0 = u_input.a.wwz;
    let x = u_input.a;
    s_output = StorageBuffer(-269f);
}

