struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec3<bool>, 29>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(!all(vec4<bool>(arg_0.x, true, arg_0.x, true)) == ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.x, 16598u, arg_2.x), vec4<u32>(arg_2.x, 2315u, 72132u, 7637u)) < 20693u) | !(false & arg_0.x)));
    global1 = arg_0.zx;
    let var_1 = arg_3.x;
    global0 = array<vec3<bool>, 29>();
    var var_2 = true;
    return Struct_1(global1.x);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = false;
    global1 = !(!select(select(select(vec2<bool>(true, false), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x)), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), true), any(vec3<bool>(arg_0.a, global1.x, true))), vec2<bool>(true, all(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a))), select(select(vec2<bool>(true, global1.x), vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a)), !vec2<bool>(global1.x, true), arg_0.a)));
    global0 = array<vec3<bool>, 29>();
    let var_1 = _wgslsmith_add_u32(~4294967295u, _wgslsmith_mult_u32(~(~1u), 4294967295u));
    var_0 = arg_0.a;
    return _wgslsmith_mult_i32(-25075i, -1i);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = -_wgslsmith_mod_i32(func_3(func_2(select(vec4<bool>(false, arg_2.a, false, true), vec4<bool>(arg_3.x, true, arg_2.a, global1.x), vec4<bool>(false, arg_3.x, false, arg_3.x)), vec4<f32>(205f, 1140f, arg_0, arg_0), vec3<u32>(6571u, 94536u, 4294967295u), vec3<f32>(arg_0, 1564f, arg_0))), abs(-func_3(arg_2)));
    let var_1 = Struct_2(firstTrailingBit(vec3<i32>(abs(0i), -2147483647i, 2147483647i)), var_0);
    var var_2 = Struct_3(Struct_1(false), func_2(select(select(!vec4<bool>(false, false, true, arg_3.x), vec4<bool>(true, true, true, arg_3.x), arg_3.x), vec4<bool>(select(false, false, false), arg_2.a | global1.x, select(arg_2.a, true, arg_3.x), false), global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 1370f, -1238f, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1066f, arg_0, arg_0, arg_0))))), vec3<u32>(15349u, 17712u, 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-461f, arg_0, -1844f), vec3<f32>(arg_0, -1000f, arg_0)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -2642f, arg_0), vec3<f32>(arg_0, -591f, arg_0), vec3<bool>(arg_2.a, false, arg_3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_0, -449f)))))), _wgslsmith_add_vec3_i32(countOneBits(abs(-vec3<i32>(1i, u_input.a.x, 2147483647i))), ~(-(var_1.a << (vec3<u32>(75492u, 19421u, 148787u) % vec3<u32>(32u))))), _wgslsmith_div_vec3_i32(firstLeadingBit(~(-var_1.a)), ~max(vec3<i32>(-2147483647i, var_0, -51959i) >> (vec3<u32>(0u, 4294967295u, 4294967295u) % vec3<u32>(32u)), min(var_1.a, vec3<i32>(34517i, u_input.a.x, u_input.a.x)))));
    let var_3 = arg_1;
    global1 = arg_3.yz;
    return func_2(select(select(select(vec4<bool>(true, false, arg_2.a, true), !vec4<bool>(global1.x, arg_3.x, true, global1.x), vec4<bool>(arg_3.x, false, global1.x, false)), !(!vec4<bool>(true, true, var_2.a.a, true)), select(!vec4<bool>(false, arg_2.a, var_2.b.a, arg_2.a), select(vec4<bool>(true, false, arg_2.a, arg_2.a), vec4<bool>(false, global1.x, global1.x, true), arg_3.x), !vec4<bool>(var_2.b.a, false, arg_3.x, false))), select(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, true), !select(vec4<bool>(global1.x, true, arg_3.x, true), vec4<bool>(true, false, arg_3.x, false), vec4<bool>(false, false, global1.x, global1.x)), select(!vec4<bool>(true, global1.x, arg_3.x, false), !vec4<bool>(true, arg_3.x, true, false), true)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-649f, 706f, arg_0, arg_0)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -449f), 503f, arg_0, 1383f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1017f, -800f, arg_0)) - vec4<f32>(-676f, 1656f, -744f, arg_0)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1384f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1517f, arg_0, arg_0, 577f)), vec4<bool>(true, arg_3.x, var_2.b.a, arg_2.a))))), ~vec3<u32>(1u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(50727u, 1u, 29862u)) >> (_wgslsmith_mod_u32(23830u, 4294967295u) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 441f, arg_0))))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0 - -283f), _wgslsmith_f_op_f32(floor(2561f)), arg_0)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    global1 = vec2<bool>(true & any(!select(global0[_wgslsmith_index_u32(1756u, 29u)], vec3<bool>(arg_3.a, arg_3.a, var_0.a), var_0.a)), global1.x);
    global0 = array<vec3<bool>, 29>();
    let var_1 = !arg_3.a;
    global1 = !select(vec2<bool>(all(vec3<bool>(var_1, false, false)), false), select(select(vec2<bool>(false, true), select(vec2<bool>(arg_3.a, var_0.a), vec2<bool>(arg_3.a, false), vec2<bool>(var_1, true)), func_2(vec4<bool>(false, var_1, false, var_1), arg_1, vec3<u32>(14024u, 4294967295u, 25972u), vec3<f32>(-442f, -637f, 2082f)).a), select(vec2<bool>(true, true), !vec2<bool>(var_0.a, true), true), !(!var_0.a)), select(vec2<bool>(true, select(arg_3.a, false, arg_3.a)), select(select(vec2<bool>(true, var_0.a), vec2<bool>(arg_3.a, global1.x), false), select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, false), global1.x), true), false | global1.x));
    return func_1(_wgslsmith_f_op_f32(-arg_0), ~_wgslsmith_sub_i32(arg_2, -1i), Struct_1(func_2(!select(vec4<bool>(false, arg_3.a, var_1, false), vec4<bool>(var_0.a, true, true, false), vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(138f, -560f, -2995f, arg_0)))), vec3<u32>(71375u, 1u, 1u), _wgslsmith_f_op_vec3_f32(-arg_1.xzz)).a), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(global1.x, false, global1.x), global0[_wgslsmith_index_u32(17498u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-284f)))), arg_2, Struct_1(true), global0[_wgslsmith_index_u32(4294967295u, 29u)]).a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 29>();
    let var_0 = Struct_3(func_4(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~(~2147483647i >> (abs(1u) % 32u)), func_1(1268f, u_input.a.x, Struct_1(true), vec3<bool>(global1.x, u_input.a.x < u_input.a.x, all(vec2<bool>(global1.x, true))))), Struct_1(!any(vec2<bool>(true, true))), vec3<i32>(u_input.a.x, 43186i, _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(~u_input.a, vec2<i32>(-1i, u_input.a.x) >> (vec2<u32>(109947u, 88787u) % vec2<u32>(32u))))), vec3<i32>(-2147483647i, 31400i, u_input.a.x));
    global0 = array<vec3<bool>, 29>();
    var var_1 = u_input.a.x;
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(76692u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 0u, 4294967295u)))), firstLeadingBit(abs(4294967295u)), firstLeadingBit(~(~(~4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(reverseBits(1u), ~1u, ~0u), vec3<u32>(14044u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 13546u))), select(vec3<bool>(false, var_0.b.a, global1.x), global0[_wgslsmith_index_u32(1u, 29u)], any(global0[_wgslsmith_index_u32(4294967295u, 29u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-533f))))))));
}

