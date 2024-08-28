struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(2675f, -1047f, 757f, -1073f), -1000f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<u32>) -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.a, global1.a, arg_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1303f, 219f, global1.a.x) - global1.a)), global1.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a * global1.a)))), global1.b);
    global1 = Struct_2(global1.a, -401f);
    var var_0 = Struct_3(global1.a, vec3<bool>((all(vec4<bool>(false, arg_2.x, false, true)) | any(arg_2)) && true, false, arg_0));
    var var_1 = 1u;
    global0 = u_input.c;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1077f))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), vec4<f32>(-338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + global1.a.x)), _wgslsmith_f_op_f32(floor(-1094f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, arg_0.b.x, vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<u32>(1u, 0u, 1u, 1u))) - arg_1) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(global1.b + arg_1), true)))), u_input.c.x, arg_0.a.x, vec4<f32>(-377f, -130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -333f))), _wgslsmith_f_op_f32(-arg_0.a.x)));
    global1 = Struct_2(var_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1863f * 123f), arg_1)))));
    var var_1 = arg_0.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), 318f, global1.a.x, _wgslsmith_f_op_f32(310f - -1420f))), vec4<f32>(-333f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-2295f * arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -365f)), true)));
    global0 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, ~(-u_input.c)) & -u_input.c, ~(-(~select(vec2<i32>(76954i, 13906i), u_input.c, arg_0.b.x))));
    return vec2<i32>(reverseBits(var_0.c), _wgslsmith_div_i32(_wgslsmith_mod_i32(firstTrailingBit(abs(1i)), var_0.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(20947u, 0u, 1u), vec3<u32>(1u, 1u, 4294967295u)) % 32u)), 0i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<u32>) -> Struct_3 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)), !arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -455f) - global1.b))));
    let var_0 = select(all(!select(vec4<bool>(true, true, arg_1.b.x, false), vec4<bool>(true, true, arg_1.b.x, true), vec4<bool>(false, arg_1.b.x, false, arg_1.b.x))), arg_1.b.x, arg_1.b.x);
    global0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f * 640f))), _wgslsmith_f_op_f32(trunc(-955f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.x, arg_2))))), -157f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, 2789f, 596f) + vec4<f32>(-357f, -528f, 907f, global1.b))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.a + arg_1.a), global1.a, true)))));
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) - vec4<f32>(var_1.x, -208f, 1232f, arg_2))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1125f, -511f, 1222f) - vec4<f32>(347f, -734f, 562f, global1.b))), _wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(max(global1.a, vec4<f32>(302f, 1000f, 400f, arg_2))))))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -525f)))));
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(global1.b, arg_0.a.x));
    var var_1 = max(~4294967295u, ~1u);
    var var_2 = 16535i;
    var var_3 = -1i;
    var_2 = u_input.a;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0.b.x && arg_0.b.x, any(vec4<bool>(true, arg_0.b.x, false, false)), !arg_0.b, ~vec4<u32>(1u, 8796u, 34149u, 4294967295u))), global1.b, 1974f, global1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1354f, -1000f, arg_0.a.x, 1007f) - arg_0.a), vec4<f32>(global1.b, 1000f, -1143f, arg_0.a.x)))))), 1i, arg_0.a.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(404f, global1.b, 144f, global1.a.x), vec4<f32>(global1.a.x, 569f, -1220f, -1912f), arg_0.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - _wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_0.a, arg_0.b.x)))))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = abs(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~(~37392u), 68811u, _wgslsmith_add_u32(25847u, _wgslsmith_div_u32(24095u, 3488u)), 1u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-820f))), arg_0.a.x, !arg_0.b.x)));
    var var_2 = select(vec2<bool>(arg_0.b.x, false), !vec2<bool>(arg_0.b.x, false), select(select(vec2<bool>(4294967295u >= var_0.x, arg_0.b.x), select(vec2<bool>(true, true), !vec2<bool>(false, arg_0.b.x), arg_0.b.x), arg_0.b.x), select(!vec2<bool>(false, arg_0.b.x), !vec2<bool>(true, arg_0.b.x), vec2<bool>(true, arg_0.b.x)), !(!select(arg_0.b.yy, vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.x))));
    global0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.a), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(0i, ~(-13218i), ~global0.x))), abs(u_input.c.x));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -675f);
    return func_5(func_4(_wgslsmith_mult_vec2_i32(max(firstTrailingBit(u_input.c), reverseBits(u_input.c)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(-34397i, global0.x), vec2<i32>(2147483647i, -46784i)), func_2(arg_0, -879f))), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * 1174f) - arg_0.a.x))), select(var_0.zyw, abs(var_0.wzz), var_2.x)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> bool {
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, countOneBits(0i)), -(~(~vec2<i32>(58613i, -32945i))));
    var var_0 = func_4(arg_2.ww, func_4(arg_2.yy << (max(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 48600u)) % vec2<u32>(32u)), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, arg_3.x, global1.a.x, arg_1.e.x))), select(!arg_0.xyz, arg_0.wzz, vec3<bool>(true, arg_0.x, false))), global1.b, vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(exp2(arg_3.x)), vec3<u32>(1u, 1u, 1u));
    let var_1 = arg_1;
    var var_2 = firstTrailingBit(min(firstLeadingBit(abs(arg_2.wy & vec2<i32>(-30618i, global0.x))), arg_2.xw));
    global0 = reverseBits(~select(max(min(arg_2.yy, arg_2.xy), vec2<i32>(arg_2.x, var_2.x)), -max(vec2<i32>(-1969i, var_1.c), vec2<i32>(10969i, 2147483647i)), func_4(u_input.c, Struct_3(vec4<f32>(arg_3.x, 1527f, arg_1.a, -1468f), arg_0.www), _wgslsmith_f_op_f32(arg_3.x - -212f), ~vec3<u32>(1728u, 10247u, 1u)).b.xy));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = (!any(vec3<bool>(true, true, true)) & true) || !(func_6(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), func_1(Struct_3(global1.a, vec3<bool>(false, false, true))), vec4<i32>(global0.x, 4022i, 0i, u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1354f, -925f, 1639f))) | !(global0.x >= 33727i));
    global1 = Struct_2(global1.a, -1388f);
    var var_1 = _wgslsmith_f_op_f32(-global1.a.x);
    global0 = _wgslsmith_sub_vec2_i32(func_2(func_4(vec2<i32>(u_input.a, reverseBits(global0.x)), Struct_3(_wgslsmith_f_op_vec4_f32(ceil(global1.a)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b))), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 10945u, 42910u), vec3<u32>(4294967295u, 1u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f))), u_input.c);
    let var_2 = u_input.b;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(u_input.c, Struct_3(vec4<f32>(-230f, global1.b, global1.b, 1513f), vec3<bool>(true, false, true)), global1.b, vec3<u32>(16122u, 4294967295u, 38789u)).a.x, _wgslsmith_f_op_f32(-global1.b))), -360f)), global1.a, u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f * _wgslsmith_f_op_f32(988f - 1205f)) * global1.a.x)), _wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, _wgslsmith_f_op_f32(-global1.a.x), global1.a.x, -410f)), any(vec3<bool>(func_4(u_input.c, Struct_3(vec4<f32>(277f, 784f, global1.a.x, 890f), vec3<bool>(false, true, false)), global1.a.x, vec3<u32>(14842u, 0u, 1u)).b.x, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(vec3<u32>(1u, 1u, 1u)) >> (select(reverseBits(vec3<u32>(0u, 4294967295u, 4294967295u)), max(vec3<u32>(51943u, 0u, 95688u), vec3<u32>(0u, 4294967295u, 16517u)), true) % vec3<u32>(32u))));
}

