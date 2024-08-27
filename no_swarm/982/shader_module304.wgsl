struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(21985u, 4294967295u, 23308u), vec3<u32>(13096u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(11149u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(7854u, 1u, 20944u), vec3<u32>(0u, 69084u, 66565u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 23118u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 4294967295u, 44891u), vec3<u32>(4294967295u, 1u, 32219u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(38938u, 24113u, 11028u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 48660u, 1u), vec3<u32>(43141u, 0u, 4896u), vec3<u32>(0u, 4294967295u, 62888u), vec3<u32>(1u, 29985u, 1u), vec3<u32>(39532u, 28604u, 38576u), vec3<u32>(36660u, 1u, 1u), vec3<u32>(681u, 1u, 3410u), vec3<u32>(46490u, 11140u, 1u), vec3<u32>(29015u, 1u, 0u), vec3<u32>(33357u, 60768u, 42990u), vec3<u32>(41212u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 25173u));

var<private> global1: u32 = 6400u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<f32>, arg_3: i32) -> i32 {
    global1 = firstLeadingBit(~0u);
    var var_0 = Struct_1(24248i, 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_2);
    var var_2 = ~vec4<i32>(var_0.a, 2147483647i, u_input.e, -1i);
    global1 = _wgslsmith_dot_vec2_u32(reverseBits(~firstLeadingBit(vec2<u32>(var_0.b, u_input.a.x))) << (u_input.a.xz % vec2<u32>(32u)), ~(~u_input.b.yz));
    return 2147483647i;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = arg_0;
    var var_1 = ~(~4294967295u);
    var var_2 = u_input.d;
    var_1 = ~4294967295u | arg_1;
    let var_3 = abs(4294967295u);
    return 56204u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = ~(_wgslsmith_add_vec2_u32((u_input.a.zz & u_input.a.xy) & (u_input.a.yy ^ vec2<u32>(u_input.a.x, 0u)), vec2<u32>(arg_2.b, 71187u) & abs(vec2<u32>(u_input.b.x, arg_2.b))) << (_wgslsmith_mod_vec2_u32(~u_input.b.xy, select(u_input.b.xz, vec2<u32>(1u, 1u), vec2<bool>(true, false))) % vec2<u32>(32u)));
    global1 = 1u;
    let var_1 = arg_0;
    var var_2 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)), vec4<bool>(all(vec3<bool>(false, true, false)), true, any(vec2<bool>(false, false)), all(vec3<bool>(true, false, true))), any(vec3<bool>(true, true, true))));
    var var_3 = Struct_1(20869i, _wgslsmith_sub_u32(min(~firstTrailingBit(83744u), min(reverseBits(var_0.x), var_1.b & 1u)), ~_wgslsmith_add_u32(~0u, u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -1908f) * arg_1.zw));
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_1(u_input.e, u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2324f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1092f))), 321f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(func_2(var_0.b, true, vec3<f32>(-600f, -2048f, 1140f), var_0.a), func_3(-1i, u_input.a.x, -2147483647i)), _wgslsmith_div_vec4_f32(vec4<f32>(1497f, 968f, -726f, -295f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, -230f, 237f, 612f))), Struct_1(-1i, 18727u)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, 838f) + vec2<f32>(var_1.x, var_1.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-533f, -675f), vec2<f32>(1484f, -1396f), false)))) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(-2147483647i, 4294967295u), vec4<f32>(-1217f, var_1.x, var_1.x, -2247f), Struct_1(1i, 53237u))).x))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1311f)), _wgslsmith_f_op_f32(floor(-1592f))))));
    global1 = u_input.b.x;
    let var_2 = var_0.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(211f)), _wgslsmith_f_op_f32(-var_1.x))))) - vec2<f32>(_wgslsmith_f_op_f32(-162f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f - var_1.x) - _wgslsmith_f_op_f32(ceil(1696f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1000f)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_1 {
    global1 = countOneBits(firstLeadingBit(min(1u << (_wgslsmith_div_u32(u_input.b.x, 73580u) % 32u), u_input.a.x)));
    global1 = 8588u;
    var var_0 = _wgslsmith_mod_i32(-_wgslsmith_div_i32(-u_input.d.x, u_input.d.x), _wgslsmith_add_i32(u_input.e, _wgslsmith_add_i32(u_input.e, u_input.d.x))) & u_input.d.x;
    let var_1 = Struct_1(-36043i, u_input.b.x);
    var_0 = 54396i;
    return Struct_1(~(~1i), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 14325u;
    let var_0 = _wgslsmith_mod_i32(~u_input.d.x, ~_wgslsmith_sub_i32(-1i, ~select(-2147483647i, u_input.d.x, false)));
    global0 = array<vec3<u32>, 27>();
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(func_1()), !vec4<bool>((u_input.c >= u_input.b.x) | true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true));
    var var_2 = var_1;
    global1 = _wgslsmith_sub_u32(45297u, var_2.b);
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1168f, 2313f, -525f, 770f)) + vec4<f32>(666f, -1131f, -1218f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-439f))), 769f, _wgslsmith_f_op_f32(-707f - _wgslsmith_f_op_f32(639f + 2560f)), -116f), vec4<bool>(true, any(vec3<bool>(false, true, false)), true, !any(vec2<bool>(false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_4.x)), _wgslsmith_f_op_f32(sign(var_4.x)), _wgslsmith_div_f32(-1250f, -218f), var_4.x))));
}

