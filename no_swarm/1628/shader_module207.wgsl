struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(561f, vec2<bool>(true, true), vec3<i32>(44102i, -78102i, i32(-2147483648)), Struct_1(-22532i, -993f)), Struct_2(-258f, vec2<bool>(true, false), vec3<i32>(9968i, 23482i, i32(-2147483648)), Struct_1(2147483647i, 685f)), Struct_2(-1635f, vec2<bool>(true, true), vec3<i32>(-12337i, -7566i, 1i), Struct_1(i32(-2147483648), 1030f)), Struct_2(179f, vec2<bool>(true, true), vec3<i32>(-47471i, 25769i, 2147483647i), Struct_1(i32(-2147483648), -807f)), Struct_2(-374f, vec2<bool>(false, false), vec3<i32>(2147483647i, 9516i, 1i), Struct_1(-210i, 1072f)), Struct_2(-1000f, vec2<bool>(true, true), vec3<i32>(42359i, 1i, i32(-2147483648)), Struct_1(24032i, -358f)), Struct_2(539f, vec2<bool>(true, false), vec3<i32>(-1i, 5110i, -6422i), Struct_1(i32(-2147483648), -2374f)), Struct_2(576f, vec2<bool>(false, false), vec3<i32>(-30734i, -1i, 16382i), Struct_1(14826i, -2501f)), Struct_2(155f, vec2<bool>(false, true), vec3<i32>(9410i, -1i, 2147483647i), Struct_1(52731i, 1007f)), Struct_2(-964f, vec2<bool>(false, false), vec3<i32>(0i, 0i, -35469i), Struct_1(2147483647i, 927f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    return global0.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3) -> u32 {
    global1 = array<Struct_2, 10>();
    let var_0 = arg_2.a.b;
    global1 = array<Struct_2, 10>();
    var var_1 = arg_2.a;
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1584f, _wgslsmith_f_op_f32(1479f + 1538f), _wgslsmith_f_op_f32(f32(-1f) * -408f), var_1.b) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(func_3(any(vec3<bool>(false, true, false)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1798f + arg_0.x)), _wgslsmith_f_op_f32(arg_2.a.b * 616f)))));
    return ~(~arg_1);
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_1(-1i, arg_0.x);
    return ~vec3<u32>(56589u, _wgslsmith_mod_u32(select(min(4294967295u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(30642u, 28567u, 90148u), vec3<u32>(11875u, 1u, 4294967295u)), true), func_2(vec4<f32>(arg_0.x, -1812f, -112f, arg_0.x), 1u, Struct_3(Struct_1(-2147483647i, 201f)))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, 1u), reverseBits(select(vec3<u32>(47863u, 35980u, 20388u), _wgslsmith_mult_vec3_u32(vec3<u32>(24110u, 0u, 1u), vec3<u32>(51957u, 66618u, 1u)), vec3<bool>(true, true, true)))), ~func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1584f, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, 1279f, 333f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -607f, global0.x, 558f))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -226f))), _wgslsmith_f_op_f32(f32(-1f) * -1528f), -914f, _wgslsmith_f_op_f32(abs(global0.x)));
    var var_1 = 0i;
    global1 = array<Struct_2, 10>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(19954u & var_0, ~(~firstTrailingBit(var_0))), 10u)];
    global1 = array<Struct_2, 10>();
    let var_3 = 36140i;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-325f)), _wgslsmith_f_op_f32(trunc(global0.x))) + global0.x))), 1000f, -246f);
    var var_4 = -(~_wgslsmith_mod_i32(u_input.b, var_2.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -17511i, abs(1i) ^ min(var_3, 8512i), u_input.b), _wgslsmith_clamp_vec3_i32(-vec3<i32>(17120i, u_input.a.x, -728i), reverseBits(vec3<i32>(-1i, var_3, 21349i)), vec3<i32>(21928i, firstLeadingBit(0i), 1i))), _wgslsmith_f_op_f32(var_2.d.b * 178f), _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.a, ~u_input.a), min(_wgslsmith_div_vec3_i32(var_2.c & vec3<i32>(-38809i, var_3, -1i), max(vec3<i32>(var_3, var_2.d.a, var_3), u_input.a)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(48386i, var_2.d.a, -69690i), var_2.c), vec3<i32>(u_input.b, var_2.c.x, -1i) >> (vec3<u32>(74145u, var_0, var_0) % vec3<u32>(32u)), select(vec3<bool>(var_2.b.x, true, true), vec3<bool>(var_2.b.x, var_2.b.x, true), vec3<bool>(true, true, true))))));
}

