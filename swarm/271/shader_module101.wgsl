struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(11190u, 1u, 1u, 14189u, 65000u, 6843u, 9968u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1318f + 474f))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - -338f);
    let var_1 = vec3<bool>(false, true, true);
    return -26364i;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = func_2();
    global0 = array<u32, 7>();
    var var_1 = firstLeadingBit(vec2<i32>(arg_2.c, 26500i));
    return u_input.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_sub_i32(arg_1.a.c, u_input.d >> (abs(0u) % 32u)), -firstTrailingBit(0i));
    var var_1 = Struct_1(arg_0, _wgslsmith_f_op_f32(min(1032f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1050f * arg_1.a.b))))), -10584i, arg_1.a.d);
    global0 = array<u32, 7>();
    var_0 = ~var_1.c;
    var_1 = arg_1.a;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.a);
    var var_1 = select(true, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f)), -203f, true || (32544u <= var_0))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = func_3(select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false))), Struct_2(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f + 1163f)), abs(~u_input.d), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1341f, 1000f) - vec2<f32>(-968f, -1124f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1537f, -454f))))))), max(~vec2<u32>(~10804u, abs(4294967295u)), vec2<u32>(23077u, global0[_wgslsmith_index_u32(func_1(u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-290f, -1361f, 1528f) - vec3<f32>(618f, 1378f, -797f)), Struct_1(vec2<bool>(true, true), -1211f, u_input.d, vec2<f32>(-273f, -1121f))), 7u)])));
    var var_3 = select(select(vec4<bool>(var_2.a.x, !var_2.a.x, false, false), vec4<bool>(false, true, var_2.a.x, var_2.a.x), var_2.a.x), !vec4<bool>(false, !(!var_2.a.x), true, true), !vec4<bool>(var_2.a.x, (var_2.a.x | var_2.a.x) || var_2.a.x, any(select(vec3<bool>(var_2.a.x, var_2.a.x, true), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(false, false, var_2.a.x))), false));
    var var_4 = Struct_2(func_3(var_3.zx, Struct_2(Struct_1(var_2.a, -1060f, -15820i ^ var_2.c, vec2<f32>(3570f, var_2.d.x))), vec2<u32>(~_wgslsmith_clamp_u32(var_0, 1u, 32809u), 42576u)));
    let var_5 = func_3(!var_2.a, Struct_2(Struct_1(!var_4.a.a, -524f, _wgslsmith_div_i32(0i << (var_0 % 32u), -var_4.a.c), var_4.a.d)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(23627u, 7u)]) >> (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 7u)]) % vec2<u32>(32u))), (vec2<u32>(var_0, var_0) >> (~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 7u)], 7u)], 1u) % vec2<u32>(32u))) | firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(12594u, 4294967295u), vec2<u32>(u_input.a, 41598u)))));
    var var_6 = var_4.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.b, var_5.d.x, var_2.b)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5.d.x, 298f, -393f), vec3<f32>(272f, var_4.a.d.x, -2955f), vec3<bool>(false, var_2.a.x, true))))), vec3<f32>(-1207f, _wgslsmith_f_op_f32(sign(-338f)), _wgslsmith_f_op_f32(1236f + _wgslsmith_f_op_f32(-var_5.b))), true)), ~u_input.b, abs(min(~(~vec4<u32>(77781u, 47913u, var_0, var_0)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(46541u, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(11820u, 7u)]), vec4<u32>(4294967295u, var_0, global0[_wgslsmith_index_u32(0u, 7u)], u_input.b)), ~vec4<u32>(34833u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68217u, 7u)], 7u)], 0u, var_0)))));
}

