struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(2028f, 714f), true);

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = abs(_wgslsmith_div_vec3_u32((u_input.a.zxz & vec3<u32>(global1.x, 58124u, u_input.a.x)) | (vec3<u32>(u_input.a.x, 26783u, global1.x) >> (u_input.a.xyz % vec3<u32>(32u))), firstTrailingBit(abs(u_input.a.xzx))) << (vec3<u32>(u_input.a.x, global1.x, reverseBits(8171u)) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)) - global0.a), global0.b);
    let var_2 = Struct_1(vec2<f32>(-215f, 1428f), var_1.b);
    var var_3 = _wgslsmith_mod_u32(16613u, min(abs(~global1.x & 124577u), select((16509u << (0u % 32u)) >> (_wgslsmith_div_u32(global1.x, 31663u) % 32u), ~4294967295u, global0.b)));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, ~firstTrailingBit(1u)), _wgslsmith_sub_u32(~7238u ^ ~u_input.a.x, var_0.x), u_input.a.x)), 24u)];
    return !vec4<bool>(all(vec4<bool>(true & var_1.b, global0.b, var_1.b, global0.b)), ~firstLeadingBit(var_0.x) <= ~1u, ~58162u <= _wgslsmith_div_u32(global1.x, var_0.x), var_2.b);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    global2 = array<Struct_1, 24>();
    var var_1 = !select(!vec4<bool>(global1.x > 120770u, arg_1 > arg_1, true | global0.b, true), select(select(select(vec4<bool>(var_0.b, arg_3.b, false, true), vec4<bool>(false, true, arg_3.b, true), vec4<bool>(global0.b, arg_3.b, false, true)), vec4<bool>(false, false, var_0.b, false), !vec4<bool>(var_0.b, arg_2.b, var_0.b, false)), vec4<bool>(!arg_2.b, false, true, true != global0.b), false), func_3());
    var var_2 = ~(~(vec4<u32>(global1.x, 23996u & u_input.a.x, u_input.a.x, global1.x) >> (~firstTrailingBit(u_input.a) % vec4<u32>(32u))));
    global2 = array<Struct_1, 24>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0, var_0.a.x)), _wgslsmith_f_op_f32(sign(-135f))), arg_2.a, var_0.b)), all(select(select(vec4<bool>(true, arg_2.b, arg_2.b, global0.b), func_3(), func_3().x), vec4<bool>(arg_2.a.x >= arg_0, arg_3.b | false, true, arg_2.b), vec4<bool>(-2147483647i >= arg_1, !global0.b, !global0.b, true))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_1 {
    global1 = abs(~(~(vec3<u32>(u_input.a.x, arg_2.x, arg_2.x) | reverseBits(u_input.a.yzy))));
    var var_0 = ~u_input.a;
    var_0 = (u_input.a | select(~u_input.a | vec4<u32>(arg_2.x, u_input.a.x, 29859u, 1u), ~vec4<u32>(u_input.a.x, 1u, 19468u, 4294967295u), !(!vec4<bool>(global0.b, true, false, global0.b)))) << (firstLeadingBit(u_input.a) % vec4<u32>(32u));
    let var_1 = select(!vec2<bool>(true, !all(vec3<bool>(global0.b, global0.b, global0.b))), !(!select(vec2<bool>(true, true), vec2<bool>(global0.b, false), false)), select(!(!select(vec2<bool>(false, arg_1.b), vec2<bool>(global0.b, false), vec2<bool>(arg_1.b, arg_1.b))), !vec2<bool>(global0.b, true), select(func_3().ww, select(select(vec2<bool>(true, true), vec2<bool>(global0.b, arg_1.b), vec2<bool>(global0.b, true)), vec2<bool>(arg_1.b, global0.b), false), !select(vec2<bool>(arg_1.b, global0.b), vec2<bool>(arg_1.b, false), false))));
    global1 = select(_wgslsmith_sub_vec3_u32(u_input.a.yzw, vec3<u32>(~(~58711u), 0u, abs(~34792u))), ~select(~min(vec3<u32>(var_0.x, 51302u, var_0.x), vec3<u32>(u_input.a.x, 5841u, 5880u)), _wgslsmith_mult_vec3_u32(var_0.zyx, _wgslsmith_add_vec3_u32(var_0.xyz, vec3<u32>(var_0.x, 114380u, 4294967295u))), var_1.x), select(vec3<bool>(var_1.x, true & any(vec4<bool>(global0.b, false, global0.b, true)), true), !vec3<bool>(any(vec3<bool>(var_1.x, var_1.x, global0.b)), true, global0.b), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.a.x, 628f))), -abs(9045i), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_3.yx), global0.b), Struct_1(vec2<f32>(arg_3.x, arg_3.x), var_1.x)).b));
    return Struct_1(arg_1.a, false);
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = 1i;
    var var_1 = ~u_input.a.xx;
    global0 = func_4(50159i, func_2(574f, ~(-2147483647i), Struct_1(global0.a, !select(true, global0.b, false)), Struct_1(global0.a, global0.b)), u_input.a.wz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(global0.a.x, 1i << (global1.x % 32u), Struct_1(vec2<f32>(-1777f, global0.a.x), global0.b), Struct_1(vec2<f32>(global0.a.x, -121f), true)).a.x, global0.a.x, -416f)));
    let var_2 = any(!vec4<bool>(!any(vec2<bool>(true, true)), global0.b, func_3().x & true, any(vec2<bool>(true, true))));
    var var_3 = true;
    return select(func_3(), select(func_3(), vec4<bool>(true, all(vec2<bool>(var_2, global0.b)), true, !(!var_2)), !((-616f >= global0.a.x) | var_2)), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    let var_0 = vec2<u32>(~(~73375u) & u_input.a.x, reverseBits(_wgslsmith_mod_u32(22503u, u_input.a.x & u_input.a.x))) << (_wgslsmith_add_vec2_u32(vec2<u32>(0u, global1.x), u_input.a.xx) % vec2<u32>(32u));
    global2 = array<Struct_1, 24>();
    var var_1 = !func_1(any(!select(vec4<bool>(true, false, global0.b, false), vec4<bool>(true, false, global0.b, global0.b), global0.b)));
    var_1 = select(!(!select(!vec4<bool>(global0.b, false, var_1.x, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(func_2(global0.a.x, ~firstLeadingBit(-21956i), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(884f, 377f) - global0.a), true), func_4(1i, global2[_wgslsmith_index_u32(min(var_0.x, u_input.a.x), 24u)], select(global1.xy, vec2<u32>(14006u, 34252u), false), _wgslsmith_div_vec3_f32(vec3<f32>(125f, 1000f, global0.a.x), vec3<f32>(-527f, global0.a.x, -240f)))).b, any(select(!vec4<bool>(global0.b, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(global0.b, global0.b, true, global0.b))), !var_1.x, func_4(37839i, global2[_wgslsmith_index_u32(0u, 24u)], u_input.a.yz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1529f, 1588f, 578f) * vec3<f32>(global0.a.x, global0.a.x, global0.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(673f, 1942f, -2046f)))).b), true);
    let var_2 = func_4(max(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-3896i, 36530i), 1i >> (var_0.x % 32u), select(-67376i, -1i, true)), 15824i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)), !select(true, true, func_4(-16665i, global2[_wgslsmith_index_u32(global1.x, 24u)], vec2<u32>(global1.x, 1u), vec3<f32>(392f, global0.a.x, -327f)).b)), ~vec2<u32>(u_input.a.x, abs(global1.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(422f, -1299f, -470f))) + vec3<f32>(global0.a.x, global0.a.x, 764f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~1i, -2860i, abs(_wgslsmith_add_i32(1i, 1i))), -_wgslsmith_mod_i32(1i, select(-15888i, -1i, var_1.x))), ~firstLeadingBit(global1.yy) & global1.yz);
}

