struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-698f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>) -> vec2<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) * global0.a));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f - global0.a)) - _wgslsmith_f_op_f32(global0.a * 317f)) - -1847f));
    global0 = Struct_1(_wgslsmith_f_op_f32(248f * _wgslsmith_f_op_f32(var_0.a - 170f)));
    var var_1 = _wgslsmith_add_i32(~(-abs(min(10221i, u_input.b))), _wgslsmith_mult_i32(-max(u_input.b, 0i), i32(-1i) * -u_input.b) & -u_input.b);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a)) * _wgslsmith_f_op_f32(min(259f, 485f))))), _wgslsmith_f_op_f32(select(var_0.a, 1081f, true)));
    return select(max(u_input.c.yx, countOneBits(vec2<u32>(11673u, 16661u))) | countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(arg_1, 1u))), vec2<u32>(arg_1, 4294967295u & _wgslsmith_mod_u32(u_input.d.x, 11116u)), arg_2.x) << (select(~(~(~u_input.a.wz)), max(min(vec2<u32>(85557u, u_input.a.x), vec2<u32>(1u, arg_1)), u_input.a.zx) & ~abs(vec2<u32>(1u, arg_1)), arg_2.xy) % vec2<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(global0.a);
    let var_1 = Struct_2(func_3(min(~select(u_input.a.xz, vec2<u32>(u_input.d.x, u_input.d.x), vec2<bool>(arg_2, arg_2)), vec2<u32>(1u ^ u_input.c.x, select(u_input.a.x, u_input.c.x, true))), ~(~u_input.c.x), vec3<bool>(arg_2, (global0.a < 1216f) | all(vec4<bool>(arg_2, arg_2, false, true)), any(vec2<bool>(false, true)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) - _wgslsmith_f_op_f32(-arg_0)) - global0.a));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -605f)))));
    var var_2 = !select(!select(!vec2<bool>(arg_2, arg_2), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, true), vec2<bool>(true, arg_2)), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), true)), !vec2<bool>(u_input.d.x >= 56002u, true), vec2<bool>(all(vec3<bool>(true, true, true)), arg_2));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32) -> vec3<f32> {
    let var_0 = ~func_3(_wgslsmith_mod_vec2_u32(arg_0.a | arg_0.a, arg_0.a), _wgslsmith_dot_vec3_u32(~u_input.c & vec3<u32>(arg_2, 0u, u_input.d.x), _wgslsmith_sub_vec3_u32(vec3<u32>(28752u, u_input.a.x, 1u), u_input.a.yyw) | ~vec3<u32>(0u, arg_0.a.x, arg_0.a.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), vec3<bool>(true, true, true)));
    var var_1 = reverseBits(vec2<u32>(~(u_input.a.x ^ 4294967295u), select(u_input.d.x ^ 4294967295u, 0u, false)) | ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, arg_2), vec2<u32>(4294967295u, 4634u))));
    var var_2 = Struct_2(arg_0.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(floor(-136f)));
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a, global0.a, -2072f)));
}

fn func_5(arg_0: vec3<f32>) -> StorageBuffer {
    global0 = Struct_1(1151f);
    let var_0 = select(vec4<bool>(!(!select(false, true, true)), true, all(vec2<bool>(true, true)), !all(vec4<bool>(true, true, true, true))), !vec4<bool>(true, all(vec3<bool>(true, true, true)), (u_input.b >= -48538i) | all(vec2<bool>(true, true)), true), true);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1137f, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec2<u32>(14401u, u_input.c.x)), vec3<i32>(-20311i, 12449i, u_input.b), 1u)).x), all(var_0.yx)))), select(vec4<u32>(u_input.d.x, 1u, ~50299u, u_input.c.x), _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(0u, 1u, 1538u, 0u))), vec4<u32>(func_2(-1000f, vec3<i32>(2147483647i, u_input.b, u_input.b), var_0.x, vec3<i32>(25147i, u_input.b, 0i)).a.x, 45629u, 4294967295u, 2260u)), select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, true, true && var_0.x, true), any(vec3<bool>(var_0.x, false, false)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(u_input.c.xy), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, -1i), u_input.b, u_input.b), abs(~vec3<i32>(u_input.b, u_input.b, 33864i))), ~u_input.c.x)).x, u_input.b);
}

fn func_1() -> StorageBuffer {
    let var_0 = reverseBits(0i);
    global0 = Struct_1(-1967f);
    return func_5(_wgslsmith_f_op_vec3_f32(func_4(func_2(1884f, ~vec3<i32>(2147483647i, 50208i, u_input.b), any(vec3<bool>(true, true, true)), abs(min(vec3<i32>(2147483647i, 1i, u_input.b), vec3<i32>(26504i, 1i, -31345i)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b, 0i), 8365i, -1i), ~vec3<i32>(var_0, 25111i, u_input.b) << ((u_input.d.yxz << (u_input.a.xwy % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, 0i, u_input.b), ~vec3<i32>(-12009i, 0i, 22804i))), ~(~11101u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f) * global0.a)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(994f * global0.a), _wgslsmith_f_op_f32(min(437f, global0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-585f, global0.a) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, 474f))))))));
    var var_2 = u_input.d.x;
    let var_3 = !(select(true, all(vec4<bool>(true, false, false, true)), all(vec2<bool>(false, true))) == all(vec2<bool>(true, false)));
    let var_4 = u_input.b << (u_input.d.x % 32u);
    var var_5 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 570f, var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(sign(1925f)))))));
    let var_6 = min(u_input.c.yy, ~(~vec2<u32>(1u, abs(u_input.a.x))));
    let x = u_input.a;
    s_output = func_1();
}

