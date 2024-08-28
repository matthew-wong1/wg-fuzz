struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(50046u, 5142u, 36769u, 61632u, 0u, 7152u, 0u, 0u, 0u, 1u, 7724u, 4012u, 10234u, 13889u, 84893u, 39694u, 4294967295u, 15078u, 35406u, 4294967295u, 61676u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(56990u, 21u)], 25500u, 4294967295u) >> (~vec4<u32>(52730u, 41381u, global0[_wgslsmith_index_u32(40815u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)]) % vec4<u32>(32u)), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 21u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 1u, _wgslsmith_mult_u32(48976u, u_input.b))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, false))), select(false, true, true)), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), true)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(52232u, 21u)], 13010u), ~global0[_wgslsmith_index_u32(59365u, 21u)], 1u) | ~57892u), _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(86622u, 38317u, u_input.a.x), vec3<u32>(u_input.b, 33507u, 0u)), _wgslsmith_add_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 21u)], 21u)], u_input.b, u_input.a.x), vec3<u32>(0u, 12228u, global0[_wgslsmith_index_u32(15839u, 21u)]))) >> (_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(28791u, u_input.b, u_input.a.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(36160u, 21u)], 0u, u_input.a.x), vec3<u32>(1u, u_input.b, 25524u))) % vec3<u32>(32u)));
    global0 = array<u32, 21>();
    var var_1 = Struct_4(!(!(!(!var_0.a.b.xxx))), var_0);
    global0 = array<u32, 21>();
    var_1 = Struct_4(var_1.a, var_1.b);
    return Struct_4(vec3<bool>(true, !var_0.a.b.x, true), Struct_2(var_1.b.a, var_1.b.b));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = -2147483647i;
    let var_1 = Struct_4(vec3<bool>(u_input.b == _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(14527u, 1u, 4294967295u), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x))), !((global0[_wgslsmith_index_u32(u_input.a.x, 21u)] >> (u_input.b % 32u)) < u_input.b), false), func_2().b);
    let var_2 = var_1.a.x;
    let var_3 = func_2().b;
    var var_4 = !any(!select(var_1.b.a.b, vec4<bool>(var_3.a.c, var_2, var_3.a.c, var_3.a.c), any(vec3<bool>(true, var_3.a.c, false))));
    return !select(true, true, select(any(func_2().a), (var_3.b.x | 0u) <= 53987u, -var_0 < _wgslsmith_add_i32(var_0, var_0)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    var var_0 = func_2();
    let var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(select(~vec4<u32>(12969u, var_0.b.b.x, 31845u, 4294967295u), select(vec4<u32>(global0[_wgslsmith_index_u32(108730u, 21u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(arg_0.b.b.x, 21u)]), vec4<u32>(1017u, u_input.b, 1630u, 0u), var_1.b.a.c), false), ~vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], var_0.b.a.a.x)), vec4<bool>(!func_3(var_0.a.x), var_0.b.a.b.x, arg_0.b.a.b.x, var_1.a.x | true), true, 0u), var_0.b.b);
    var var_3 = abs(vec3<i32>(arg_2.x, arg_2.x, 2147483647i));
    global0 = array<u32, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(563f - arg_3), 553f)), -458f), arg_1.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f + arg_3))), _wgslsmith_f_op_f32(f32(-1f) * -358f))));
}

fn func_4(arg_0: vec4<f32>) -> StorageBuffer {
    var var_0 = -firstTrailingBit(-49374i);
    var_0 = 1i;
    let var_1 = !select(vec4<bool>(true, true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), func_2().b.a.b);
    var var_2 = 37075i;
    var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-55158i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(61453i, -4298i), vec2<i32>(0i, -11087i)), abs(vec2<i32>(-14482i, -74144i)))), _wgslsmith_sub_i32(1i, ~(-28512i) >> (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(44438u, 21u)], 21u)] % 32u))), vec3<i32>(-23165i, ~(~1i), 18333i));
    return StorageBuffer(_wgslsmith_sub_u32(u_input.a.x, 2612u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_0 = vec2<i32>(~1i, abs(abs(0i)));
    let x = u_input.a;
    s_output = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1627f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f - -570f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_4(vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(29477u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], 9015u, u_input.a.x), vec4<bool>(true, false, true, true), false, 30161u), vec3<u32>(0u, 60484u, global0[_wgslsmith_index_u32(0u, 21u)]))), vec2<f32>(509f, 1487f), vec4<i32>(-31236i, -14259i, var_0.x, 1i), -442f)), _wgslsmith_div_f32(-502f, 282f), select(false, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f - 147f))));
}

