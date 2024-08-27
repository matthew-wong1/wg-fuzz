struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<f32>(1303f, -1412f, 858f)), Struct_1(vec3<f32>(-585f, 749f, -1236f)), Struct_1(vec3<f32>(2002f, -375f, -2412f)), Struct_1(vec3<f32>(737f, -767f, -416f)), Struct_1(vec3<f32>(-1530f, -1000f, 192f)), Struct_1(vec3<f32>(-233f, 953f, -460f)), Struct_1(vec3<f32>(776f, -1593f, -512f)), Struct_1(vec3<f32>(-1000f, -938f, 1100f)), Struct_1(vec3<f32>(1000f, 146f, 932f)), Struct_1(vec3<f32>(243f, 1727f, -846f)), Struct_1(vec3<f32>(-1271f, 172f, 226f)), Struct_1(vec3<f32>(-888f, -759f, -1000f)), Struct_1(vec3<f32>(1379f, -433f, -1172f)), Struct_1(vec3<f32>(-235f, 1513f, -228f)), Struct_1(vec3<f32>(-1698f, -953f, -852f)), Struct_1(vec3<f32>(-452f, 1319f, -1642f)), Struct_1(vec3<f32>(-473f, -2031f, 503f)), Struct_1(vec3<f32>(759f, 1000f, -771f)), Struct_1(vec3<f32>(-666f, -512f, -263f)), Struct_1(vec3<f32>(-597f, 1577f, 1000f)), Struct_1(vec3<f32>(-1000f, -646f, -408f)), Struct_1(vec3<f32>(1000f, -439f, -1392f)), Struct_1(vec3<f32>(-139f, -918f, 408f)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    var var_0 = any(vec2<bool>(true, true)) != false;
    let var_1 = true;
    global0 = any(select(vec4<bool>(any(!vec2<bool>(false, var_1)), var_1 | var_1, select(true, arg_2.a.x > arg_1.x, true), all(vec3<bool>(false, true, false))), !select(vec4<bool>(false, true, var_1, var_1), select(vec4<bool>(false, false, var_1, var_1), vec4<bool>(true, false, false, var_1), var_1), u_input.b.x != 20140u), !vec4<bool>(var_1, var_1, var_1 || var_1, true)));
    var var_2 = arg_2.a.x;
    let var_3 = arg_2;
    return u_input.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = vec4<i32>(-u_input.a, u_input.a, -countOneBits(func_3(arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 747f, arg_1.x, 463f)), Struct_1(arg_1.wxx), _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(arg_1.x, -792f, arg_1.x, arg_1.x)))), 2147483647i);
    var var_1 = abs(vec2<i32>(0i, var_0.x));
    global1 = array<Struct_1, 23>();
    let var_2 = firstTrailingBit(-var_0.x);
    global1 = array<Struct_1, 23>();
    return !select(select(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), arg_1.x > -1178f), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(arg_1.x * 1140f) < -427f, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -609f) < _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -710f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<u32> {
    global0 = true && any(select(!func_2(u_input.b, vec4<f32>(arg_1.a.x, arg_1.a.x, arg_2.x, arg_2.x), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), select(vec4<bool>(true, false, true, true), func_2(u_input.b, vec4<f32>(arg_1.a.x, -194f, arg_2.x, arg_2.x), vec3<u32>(76616u, 4294967295u, u_input.b.x)), vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, true, false, false))));
    let var_0 = select(12635i, -min(0i, _wgslsmith_mult_i32(-20651i, arg_0.x) | countOneBits(arg_0.x)), any(vec3<bool>(true, true, true)));
    let var_1 = ~(~(~min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 35015u, 23735u, u_input.b.x), vec4<u32>(1u, u_input.b.x, 1u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 17550u, 34072u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 50878u)))));
    var var_2 = ~4294967295u;
    let var_3 = select(vec4<bool>(all(vec4<bool>(false, select(false, true, false), false, true)), true, false, all(func_2(var_1.yz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, 1725f, -1594f, arg_2.x)), ~vec3<u32>(20345u, 1u, 13469u)).yzz)), !select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, true))), all(vec4<bool>(true, true, true, true))), !(!any(vec3<bool>(true, false, false))));
    return ~(~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(1u, 4525u), vec2<u32>(51368u, u_input.b.x)) >> (countOneBits(var_1.xx) % vec2<u32>(32u)), u_input.b, select(firstTrailingBit(vec2<u32>(var_1.x, u_input.b.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, u_input.b.x), var_1.zw), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_add_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b.x) & func_1(vec2<i32>(47900i, 1i), Struct_1(vec3<f32>(-748f, -514f, -452f)), vec2<f32>(663f, 781f), Struct_1(vec3<f32>(-688f, 1073f, -1142f))), u_input.b) << (_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x)), select(vec2<u32>(4294967295u, 1u), _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), true)) % vec2<u32>(32u)));
    var var_2 = min(~reverseBits(~vec3<u32>(4294967295u, 1u, 4294967295u) | vec3<u32>(u_input.b.x, var_1.x, u_input.b.x)), select(_wgslsmith_add_vec3_u32(~vec3<u32>(13495u, 24973u, var_1.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, var_1.x, 4294967295u))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, 3767u)), ~vec3<u32>(31713u, 15497u, var_1.x), ~vec3<u32>(var_1.x, 1u, 0u)), vec3<bool>(all(vec2<bool>(true, false)), true, true)) | vec3<u32>(var_1.x, u_input.b.x | ~u_input.b.x, u_input.b.x));
    var var_3 = ~firstLeadingBit(~vec4<u32>(~u_input.b.x, u_input.b.x, 0u, var_1.x));
    var var_4 = !(!any(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2133f, -1000f) * _wgslsmith_div_f32(843f, -533f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(978f, 1000f)))), ~abs(0u));
}

