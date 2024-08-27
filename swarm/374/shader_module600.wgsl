struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(0i, 2147483647i), vec2<i32>(5605i, 2147483647i), vec2<i32>(-48102i, -1i), vec2<i32>(9665i, -7102i), vec2<i32>(0i, 23872i), vec2<i32>(37355i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 19697i), vec2<i32>(0i, -63288i), vec2<i32>(23298i, 11606i), vec2<i32>(63283i, 6694i), vec2<i32>(22579i, i32(-2147483648)), vec2<i32>(1i, -28408i), vec2<i32>(2147483647i, 679i), vec2<i32>(-22198i, 2147483647i), vec2<i32>(-10104i, 2147483647i), vec2<i32>(15623i, -28056i), vec2<i32>(i32(-2147483648), 24763i), vec2<i32>(-1i, -36393i));

var<private> global2: bool;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = vec2<bool>(select(true, !any(vec2<bool>(false, true)) && false, true), !((any(vec2<bool>(false, true)) && all(vec2<bool>(true, true))) & (arg_0.a.x <= arg_0.a.x)));
    global2 = false;
    var var_1 = -vec4<i32>(-77969i, _wgslsmith_mod_i32(u_input.b.x, ~u_input.c | u_input.d), -max(u_input.e.x, -49453i) ^ -firstTrailingBit(67133i), u_input.e.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(181f, 1184f, arg_0.a.x, 1562f), vec4<f32>(163f, -266f, arg_0.a.x, arg_0.a.x), vec4<bool>(false, false, true, false)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(trunc(133f)), 399f, _wgslsmith_f_op_f32(-556f + -543f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1843f, -2161f, 518f, arg_0.a.x))))));
    global0 = ~u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-var_2.x), -468f, _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, 688f, -578f, 1628f), vec4<f32>(arg_0.a.x, -537f, -146f, arg_0.a.x))))) + var_2));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    var var_0 = ~vec3<u32>(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(46727u, arg_3.x), vec2<u32>(40600u, arg_3.x), vec2<bool>(false, true)), max(arg_3.yx, vec2<u32>(28846u, u_input.a.x))), u_input.a.x, arg_3.x);
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29546u, firstTrailingBit(var_0.x)), ~(var_0.xy << (vec2<u32>(8901u, 21361u) % vec2<u32>(32u)))), firstLeadingBit(0u)) ^ firstLeadingBit(arg_3.yz);
    return any(select(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, false)), vec4<bool>(abs(arg_0) < firstLeadingBit(-1i), true, -arg_2.a.x < arg_0, !any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = select(vec3<bool>(func_4(firstLeadingBit(abs(2147483647i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<f32>(-1653f, 213f, arg_0.x)))))), Struct_2(vec4<i32>(u_input.b.x, 22576i, arg_2, -13975i)), ~(vec4<u32>(8523u, 4294967295u, 0u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u))), true, any(vec4<bool>(true, true, true, true)) & all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false))), !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, select(false, false, false), true), vec3<bool>(func_4(u_input.d, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), Struct_2(vec4<i32>(arg_2, -35300i, -4303i, -2147483647i)), vec4<u32>(u_input.a.x, 1u, 42675u, u_input.a.x)), false, select(false, true, true))), vec3<bool>(true || any(vec3<bool>(false, false, false)), true && func_4(-8497i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 496f, 1295f, -748f)), Struct_2(vec4<i32>(-1i, 2147483647i, u_input.b.x, 9799i)), u_input.a & vec4<u32>(1u, u_input.a.x, 17364u, 0u)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<f32>(-166f, 316f, -859f)))).x - 2684f), arg_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, _wgslsmith_f_op_f32(-737f - arg_0.x)))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1607f, 2108f), vec3<f32>(arg_0.x, var_1.x, -1413f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0.x, -1000f))))))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-924f, -1461f, -469f) * vec3<f32>(300f, 259f, 1442f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, 1214f, 508f)), vec3<f32>(299f, -1000f, -768f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(345f, 2316f, -1865f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, 999f, 1000f) + vec3<f32>(-211f, 351f, -2376f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-513f, 424f, -1503f), vec3<f32>(-1000f, -1000f, 956f), vec3<bool>(false, false, true)))))));
    var var_1 = u_input.a.yz;
    global1 = array<vec2<i32>, 18>();
    let var_2 = ~(~0u);
    let var_3 = func_2(var_0.a.zz, abs(u_input.a.zzw), _wgslsmith_clamp_i32(u_input.c, -(_wgslsmith_clamp_i32(u_input.e.x, u_input.e.x, u_input.e.x) ^ firstTrailingBit(579i)), ~(~11868i)));
    return Struct_2(firstTrailingBit(-firstLeadingBit(vec4<i32>(1i, u_input.d, u_input.d, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec3<bool>(false, true, true);
    global0 = reverseBits(u_input.a.x) | u_input.a.x;
    var var_2 = func_1();
    var var_3 = _wgslsmith_mod_u32(73531u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~select(u_input.a.xz, vec2<u32>(u_input.a.x, u_input.a.x), var_1.x), ~vec2<u32>(u_input.a.x, 29792u)), vec2<u32>(~u_input.a.x, 1u)));
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(0u, 0u, u_input.a.x))), ~u_input.a.wwx, !var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-605f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-347f))), -345f)));
}

