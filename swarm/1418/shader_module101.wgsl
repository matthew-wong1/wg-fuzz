struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: Struct_1 = Struct_1(961f, vec2<i32>(-526i, 1i));

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(1221f)), max(global1.b, vec2<i32>(min(i32(-1i) * -1i, countOneBits(u_input.a)), -(i32(-1i) * -1i))));
    let var_1 = 4294967295u;
    global0 = array<vec4<f32>, 27>();
    let var_2 = !vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * -1363f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 1737f), any(vec3<bool>(true, true, true)), 34138u == var_1);
    let var_3 = Struct_1(-480f, _wgslsmith_div_vec2_i32((_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -12088i), arg_0.yy) >> (~vec2<u32>(4294967295u, var_1) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_0.b.x), vec2<i32>(1i, -73048i) | vec2<i32>(global1.b.x, global1.b.x)), vec2<i32>(reverseBits(1i), i32(-1i) * -global1.b.x)));
    return var_3;
}

fn func_3(arg_0: f32, arg_1: bool) -> bool {
    global2 = false;
    global0 = array<vec4<f32>, 27>();
    var var_0 = vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(17544u, 1u, 23416u), vec3<u32>(1u, 1u, 1u)))), abs(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(7970u, 1u, 4294967295u, 4294967295u)), _wgslsmith_mult_u32(44278u, 1u))), _wgslsmith_div_u32(min(1u, firstTrailingBit(4294967295u)) | ~(~4294967295u), ~reverseBits(4294967295u)));
    let var_1 = Struct_1(global1.a, vec2<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(~global1.b.x, -2147483647i, ~global1.b.x)), ~41289i));
    var var_2 = select(arg_1, false, select(arg_1, all(vec3<bool>(!arg_1, any(vec2<bool>(false, false)), arg_1)), !(~u_input.a != 12857i)));
    return select(all(select(select(select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(false, true, arg_1, true), true), select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1)), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, false, false, true), false)), select(vec4<bool>(true, true, true, arg_1), !vec4<bool>(arg_1, false, true, arg_1), select(vec4<bool>(false, arg_1, true, true), vec4<bool>(false, true, arg_1, arg_1), true)), select(-1i, global1.b.x, arg_1) == u_input.a)), true, all(!(!(!vec4<bool>(true, arg_1, true, arg_1)))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(-595f, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(global1.b, ~(global1.b << (vec2<u32>(104281u, 4294967295u) % vec2<u32>(32u)))), -global1.b));
    global1 = func_2(vec4<i32>(-(~var_0.b.x), ~select(u_input.a, -1i << (1u % 32u), false), ~(-3820i), global1.b.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * var_0.a) * _wgslsmith_f_op_f32(global1.a * var_0.a)), -579f, var_0.a, 1165f));
    global1 = func_2(~vec4<i32>(-u_input.a, min(0i, ~24744i), 1i, -29983i), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 27u)]);
    let var_1 = func_2(vec4<i32>(u_input.a, global1.b.x & var_0.b.x, -(_wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, var_0.b.x)) | (u_input.a & -10348i)), -18487i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.a, -882f), -1033f, 633f, 907f)) * global0[_wgslsmith_index_u32(~max(0u, 74575u), 27u)]));
    let var_2 = select(vec3<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), true)), _wgslsmith_add_i32(u_input.a | 0i, u_input.a) > 1i, true), select(vec3<bool>(true, select(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), func_3(1584f, false));
    return Struct_1(var_1.a, vec2<i32>(global1.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(var_0.b), -var_0.b, ~var_0.b), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.x, u_input.a), -global1.b))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = func_2(~select(vec4<i32>(1i, -43845i, -1i, global1.b.x) ^ vec4<i32>(arg_2.b.x, -14183i, 26120i, arg_1.b.x), vec4<i32>(u_input.a, -63122i, -28687i, 0i), true) ^ -(~(-vec4<i32>(arg_2.b.x, 11593i, -2147483647i, global1.b.x))), _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(arg_0.x, 27u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_0.x, 27u)] + vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 548f)) * _wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(arg_0.x, 27u)]))) - global0[_wgslsmith_index_u32(51940u, 27u)])));
    let var_0 = select(-1i > (_wgslsmith_dot_vec2_i32(arg_2.b, vec2<i32>(1i, arg_1.b.x)) << (~(~arg_0.x) % 32u)), any(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, any(vec3<bool>(true, true, true)), !(arg_0.x != arg_0.x))), false | (true | any(vec4<bool>(false, false, false, false))));
    var var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.a, -490f))))), var_1.b);
    return func_2(~max(~firstTrailingBit(vec4<i32>(var_1.b.x, var_1.b.x, 43511i, arg_1.b.x)), vec4<i32>(-1445i, global1.b.x, _wgslsmith_clamp_i32(arg_1.b.x, -2147483647i, 2147483647i), 24522i)), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(34564u, arg_0.x, arg_0.x)), 27u)]));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_div_vec2_i32(var_0.b, var_0.b);
    let var_2 = 4294967295u;
    let var_3 = select(select(select(vec4<bool>(true, arg_2.x, arg_2.x, false), !(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(any(vec4<bool>(arg_2.x, true, false, arg_2.x)), false, arg_2.x, arg_2.x)), !(!(!vec4<bool>(arg_2.x, true, arg_2.x, true))), select(select(select(vec4<bool>(true, true, arg_2.x, true), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, true, arg_2.x)), select(vec4<bool>(arg_2.x, arg_2.x, false, true), vec4<bool>(arg_2.x, true, true, false), true), arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), false || (arg_2.x != arg_2.x))), select(!(!vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(true, true, true, (var_2 >> (0u % 32u)) >= abs(arg_0)), select(!select(vec4<bool>(false, arg_2.x, false, arg_2.x), vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(false, true, true, false)), select(!vec4<bool>(true, false, false, arg_2.x), select(vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, true, true, false), false), vec4<bool>(arg_2.x, arg_2.x, false, false)), vec4<bool>(true, true, true, arg_2.x))), select(vec4<bool>(true, select(true, arg_2.x, !arg_2.x), arg_0 == var_2, false), !vec4<bool>(true && arg_2.x, true, true, true), ~(~var_2) <= var_2));
    var var_4 = 377f;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), !all(vec2<bool>(false, false)), any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(false, false, true))));
    global1 = Struct_1(-163f, vec2<i32>(~(u_input.a | reverseBits(global1.b.x)), 0i));
    global2 = func_5(1176u, func_4(vec2<u32>(1u, 1u), Struct_1(1000f, global1.b), func_1()), select(vec2<bool>(false, !var_0.x), vec2<bool>(true, var_0.x), !var_0.xz)) > abs(~_wgslsmith_mod_u32(countOneBits(35590u), 1u));
    global0 = array<vec4<f32>, 27>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-478f - _wgslsmith_div_f32(198f, -527f))), true)) - 349f);
    let var_2 = abs(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(1i, _wgslsmith_mult_i32(1i, -1i), min(-2147483647i, 15736i))));
    var var_3 = -countOneBits(global1.b);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u >> (0u % 32u), 27u)]) - global0[_wgslsmith_index_u32(15406u, 27u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, var_1, -186f) - vec4<f32>(global1.a, global1.a, -1000f, var_1))), global0[_wgslsmith_index_u32(reverseBits(func_5(45663u, Struct_1(global1.a, vec2<i32>(-68205i, 2147483647i)), var_0.zz)), 27u)])));
    global1 = func_2(vec4<i32>(var_3.x, -1i, _wgslsmith_add_i32(1i, ~1i) >> (_wgslsmith_mod_u32(1u, select(1u, 64223u, false)) % 32u), _wgslsmith_mod_i32(-2147483647i, global1.b.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1114f, -1888f, 1000f, global1.a) + global0[_wgslsmith_index_u32(0u, 27u)]), vec4<f32>(-388f, var_4.x, -567f, var_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, 1026f, global1.a))), vec4<f32>(_wgslsmith_f_op_f32(-func_2(vec4<i32>(1i, -2147483647i, var_3.x, -70776i), vec4<f32>(325f, var_1, 161f, -1701f)).a), var_1, 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_4.x, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-342f, var_1), 1f), var_4.xy))));
}

