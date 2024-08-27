struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<i32> = vec2<i32>(1i, i32(-2147483648));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_4) -> i32 {
    return -8548i;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: u32) -> bool {
    global1 = vec2<i32>(1i, arg_2.b);
    var var_0 = any(arg_2.d.wzy) || (reverseBits(~13574i) > func_3(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - -540f), -499f), Struct_1(max(-1i, 40502i), ~vec4<u32>(arg_1.a.x, arg_2.a, arg_2.c.x, 4294967295u)), vec4<i32>(~(-1i), ~u_input.a, -arg_2.b, u_input.a), arg_2));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x))));
    let var_2 = arg_2.d.x;
    global1 = abs(vec2<i32>(u_input.a, -13888i));
    return false;
}

fn func_1() -> vec4<bool> {
    var var_0 = select(select(!vec4<bool>(func_2(vec4<f32>(-1510f, -187f, -528f, 1120f), Struct_3(vec3<u32>(4294967295u, 10520u, 1u)), Struct_4(17856u, global1.x, vec3<u32>(48100u, 60807u, 6181u), vec4<bool>(false, false, false, true)), 54095u), false, all(vec4<bool>(true, false, true, false)), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, func_2(vec4<f32>(1568f, -161f, -326f, 260f), Struct_3(vec3<u32>(4294967295u, 0u, 66254u)), Struct_4(0u, 1i, vec3<u32>(70406u, 1u, 4294967295u), vec4<bool>(true, true, true, false)), firstLeadingBit(66u)), true != any(vec3<bool>(true, false, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), vec4<bool>(func_2(vec4<f32>(1f, 1f, 1f, 1f), Struct_3(vec3<u32>(30447u, 4294967295u, 4220u)), Struct_4(5411u, -2147483647i, vec3<u32>(25652u, 12896u, 1u), vec4<bool>(true, false, true, false)), ~4294967295u), true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, false)), func_2(vec4<f32>(-2107f, -120f, 2922f, 254f), Struct_3(vec3<u32>(33330u, 5369u, 1u)), Struct_4(1u, u_input.a, vec3<u32>(5918u, 0u, 39359u), vec4<bool>(true, true, true, false)), 0u), true, true), all(vec2<bool>(true, true)))), true);
    let var_1 = Struct_1(0i, ~firstLeadingBit(~(~vec4<u32>(4294967295u, 47953u, 1u, 0u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(787f, -487f, -883f), vec3<f32>(-1891f, 1015f, 802f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1800f, -1377f, -337f)))) * vec3<f32>(2175f, _wgslsmith_f_op_f32(max(665f, -852f)), _wgslsmith_f_op_f32(abs(419f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(760f, _wgslsmith_f_op_f32(f32(-1f) * -1813f), _wgslsmith_f_op_f32(sign(1742f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(370f, 1536f, 1000f))))))));
    var var_3 = firstLeadingBit(var_1.b) ^ ~(countOneBits(vec4<u32>(var_1.b.x, 4294967295u, 24926u, var_1.b.x)) | var_1.b);
    global0 = !var_0.x;
    return select(!vec4<bool>(false, any(var_0.zyy), !(var_2.x <= -1616f), true), select(!(!select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, true, false, var_0.x), var_0.x)), !(!vec4<bool>(true, false, var_0.x, var_0.x)), select(select(vec4<bool>(true, true, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(var_0.x, true, true, false)), vec4<bool>(true, var_0.x, true, !var_0.x), !select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, var_0.x, var_0.x, false)))), vec4<bool>(false, any(vec2<bool>(var_0.x, true)), all(vec2<bool>(var_0.x, true)) | !var_0.x, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(abs(select(-vec4<i32>(-21074i, u_input.a, u_input.a, 1i), vec4<i32>(global1.x, u_input.a, 2147483647i, -63466i), func_1())));
    var_0 = abs(~(_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_0.x, var_0.x, 24601i, -33909i), vec4<i32>(var_0.x, global1.x, global1.x, u_input.a), false), _wgslsmith_add_vec4_i32(vec4<i32>(36014i, var_0.x, global1.x, var_0.x), vec4<i32>(2147483647i, u_input.a, 1i, -1i))) | reverseBits(vec4<i32>(u_input.a, -2147483647i, 0i, var_0.x))));
    var var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(64275u, 41274u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(56312u, 40450u), vec2<u32>(21185u, 0u)) % vec2<u32>(32u)), vec2<u32>(1u, 1u)) ^ ~vec2<u32>(1u, 1u);
    let var_2 = Struct_2(true);
    var var_3 = Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(5978u, 1u, var_1.x, var_1.x), select(vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), true)), select(abs(vec4<u32>(0u, 111838u, var_1.x, var_1.x)) | vec4<u32>(0u, 40370u, var_1.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 54115u, 1u), vec4<u32>(2003u, var_1.x, 1u, 4294967295u) >> (vec4<u32>(var_1.x, 1u, var_1.x, var_1.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1.x, var_1.x, 39799u), vec4<u32>(var_1.x, 1u, 29549u, var_1.x))), false)), min(0i, var_0.x) ^ var_0.x, _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_1.x, var_1.x) ^ reverseBits(vec3<u32>(4294967295u, var_1.x, var_1.x)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 40435u, var_1.x), vec3<u32>(61757u, var_1.x, var_1.x)))), ~(~vec3<u32>(var_1.x, var_1.x, 67904u))), !vec4<bool>(var_2.a, true, all(func_1()), var_2.a));
    global1 = countOneBits(~abs(var_0.zx));
    let var_4 = ~_wgslsmith_clamp_u32(var_1.x, var_3.a, var_1.x);
    var var_5 = Struct_3(var_3.c);
    global0 = var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(758f, reverseBits(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11432u, 5756u, var_4, var_4), vec4<u32>(32723u, 8470u, var_4, 58749u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4, var_4, var_3.a), var_3.c), 0u, 50153u & var_1.x)));
}

