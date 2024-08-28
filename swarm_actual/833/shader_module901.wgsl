struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(false, !(false | select(all(vec3<bool>(false, false, false)), true, true)), !(global0.b >= _wgslsmith_f_op_f32(f32(-1f) * -279f)));
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, ~abs(u_input.a), global0.a), ~vec3<i32>(-u_input.a, global0.a, _wgslsmith_clamp_i32(-21292i, u_input.a, 1i))), _wgslsmith_f_op_f32(-global0.b));
    var var_1 = Struct_1(0i, global0.b);
    var_1 = Struct_1(u_input.a, -1000f);
    global0 = Struct_1(-28181i ^ ~_wgslsmith_add_i32(select(1i, -10400i, var_0.x), ~0i), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f * _wgslsmith_f_op_f32(global0.b * global0.b)))));
    return Struct_1(_wgslsmith_div_i32(~(~(-var_1.a)), ~abs(reverseBits(var_1.a))), global0.b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = (max(global0.a, u_input.a) >> (~(~1u) % 32u)) >= _wgslsmith_mult_i32(countOneBits(82872i << (select(1u, 1u, arg_3) % 32u)), arg_1.a);
    var_0 = false;
    var_0 = false;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~reverseBits(1u), ~firstLeadingBit(4294967295u), 1u, _wgslsmith_clamp_u32(32313u, ~4294967295u, 1u)), vec4<u32>(4294967295u, ~0u, 1u, ~1u)) ^ 1u;
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -462f));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = !(!(!(!all(vec4<bool>(true, true, true, false)))));
    var_0 = true;
    let var_1 = Struct_1(-_wgslsmith_sub_i32(~(-1i), -10177i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.b) * 972f), _wgslsmith_f_op_f32(-870f * _wgslsmith_f_op_f32(arg_0.b - global0.b)), true != (u_input.a < 1i)))));
    var_0 = (-1239f != var_1.b) & false;
    var_0 = reverseBits(~_wgslsmith_add_u32(69387u, arg_2.x) | arg_2.x) < (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) << ((vec4<u32>(arg_2.x, arg_2.x, 63783u, 1u) & vec4<u32>(arg_2.x, 652u, 15214u, 45470u)) % vec4<u32>(32u)), arg_2) << (arg_2.x % 32u));
    return global0.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_1(~(~func_4(Struct_1(u_input.a, -885f), func_3(vec4<bool>(false, false, true, true), Struct_1(global0.a, global0.b), var_0.b, true), vec4<u32>(arg_0.x, 58980u, 18104u, arg_0.x))), global0.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b, var_0.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) - vec2<f32>(var_0.b, var_0.b)), false))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1180f, var_0.b) + vec2<f32>(global0.b, 276f)), vec2<f32>(-167f, 596f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2084f, global0.b))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.b), global0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, 2415f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1509f, var_0.b) * vec2<f32>(601f, global0.b)))))));
    let var_2 = all(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))) || (1u != ~(~(~arg_1)));
    let var_3 = func_3(!(!select(select(vec4<bool>(false, true, var_2, var_2), vec4<bool>(false, true, false, var_2), vec4<bool>(var_2, true, false, true)), !vec4<bool>(true, var_2, var_2, true), vec4<bool>(var_2, true, var_2, var_2))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, 920i, -2147483647i, 38271i), vec4<i32>(var_0.a, 32752i, global0.a, var_0.a)), global0.a, global0.a << (4294967295u % 32u), countOneBits(u_input.a)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-15249i, var_0.a, -1i, -2147483647i), vec4<i32>(0i, var_0.a, var_0.a, 0i) | vec4<i32>(var_0.a, 1i, 14980i, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_f_op_f32(f32(-1f) * -273f))), var_1.x, var_2);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<u32>(49987u, ~6095u), ~1u);
    let var_1 = abs(min(~53669i, func_1(~vec2<u32>(0u, 38402u), reverseBits(0u)).a >> (1u % 32u)));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, var_0.a, 2147483647i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(7329i, var_1, var_1, var_1), vec4<i32>(1i, u_input.a, -2147483647i, -36264i))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.a, 64730i, var_0.a, -2147483647i), abs(vec4<i32>(-19735i, 7420i, var_1, 1i)), ~max(vec4<i32>(var_0.a, u_input.a, -2147483647i, -1i), vec4<i32>(-2315i, u_input.a, 0i, 2147483647i)))), global0.a | func_2().a, global0.a);
    var_0 = func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-1370f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-545f, 1132f))), global0.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1073f)) - global0.b), _wgslsmith_f_op_f32(f32(-1f) * -1580f), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(min(func_2().b, _wgslsmith_f_op_f32(floor(-379f))))), 721f)));
    var var_4 = Struct_1(i32(-1i) * -2568i, global0.b);
    let var_5 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-var_4.a << (~34929u % 32u), _wgslsmith_sub_i32(var_4.a, var_1 << (96333u % 32u)), 0i), ~select(~vec3<i32>(global0.a, var_4.a, var_1), vec3<i32>(var_4.a, 2147483647i, 1i), false), vec3<i32>(~1i, -(-20659i << (1u % 32u)), abs(-26501i) << (1u % 32u))), ~abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, var_4.a, var_1), vec3<i32>(-1i, var_0.a, -2147483647i), vec3<i32>(28921i, var_4.a, var_2.x))) & vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(78215i, var_0.a), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, global0.a, 1i, -2147483647i), vec4<i32>(12696i, var_0.a, var_2.x, global0.a)) | var_1, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i << (countOneBits(41994u) % 32u), ~18027i, firstLeadingBit(~global0.a) << (82480u % 32u)), select(firstLeadingBit(reverseBits(vec4<u32>(1u, 2304u, 4294967295u, 3944u))), abs(~vec4<u32>(4007u, 4294967295u, 3736u, 37519u)), false));
}

