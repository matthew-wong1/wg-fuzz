struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1212f, -1013f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(624f, -208f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(103f, 1211f)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-1179f, -771f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-745f, -406f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(517f, 826f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(918f, -2340f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(167f, -683f)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(1000f, -389f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-300f, -1814f)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-465f, -1000f)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-743f, 148f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(1000f, -1000f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-619f, 1069f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(1323f, 1996f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(761f, -1000f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-125f, -1063f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(2138f, -2341f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-644f, 1360f)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(794f, -1000f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-271f, 799f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(282f, 616f)));

var<private> global1: i32 = -84773i;

var<private> global2: f32;

var<private> global3: vec3<bool>;

var<private> global4: vec3<f32> = vec3<f32>(-1341f, 592f, 781f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = !select(vec2<bool>(!(true && global3.x), true), select(!(!global3.yy), !global3.xy, true), global3.zz);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1069f);
}

fn func_1() -> bool {
    global0 = array<Struct_1, 22>();
    global2 = _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - global4.x));
    global4 = vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(global4.x, -803f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global4.x, 107f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, global4.x, false)) - -1211f)))), global4.x, _wgslsmith_f_op_f32(-global4.x));
    var var_0 = vec2<bool>(true && (!any(vec3<bool>(true, false, true)) || (_wgslsmith_f_op_f32(func_2(vec4<f32>(global4.x, 262f, global4.x, global4.x))) != _wgslsmith_f_op_f32(2612f * 1048f))), !global3.x);
    var_0 = vec2<bool>(!((false && global3.x) & var_0.x), true);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~26145u << (min(_wgslsmith_sub_u32(u_input.a.x, 1u) & 59719u, 9572u) % 32u);
    let var_1 = abs(vec3<u32>(86696u, ~_wgslsmith_clamp_u32(var_0, var_0, 1u) & u_input.a.x, abs(4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(global4.x * global4.x);
    global3 = vec3<bool>(global3.x, true, func_1());
    let var_3 = Struct_2(vec4<i32>(~20173i, ~(-2147483647i), _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 30299i), vec2<i32>(u_input.b, u_input.c)), vec2<i32>(-u_input.c, _wgslsmith_div_i32(u_input.b, u_input.b))), u_input.c), true, var_2, ~countOneBits(-vec2<i32>(u_input.c, -10724i)) << (_wgslsmith_mod_vec2_u32(u_input.a, var_1.zy) % vec2<u32>(32u)));
    global1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(555f + var_2), -352f)), -155f, -284f), reverseBits(~vec4<u32>(8805u & var_1.x, ~129050u, 4294967295u, 4294967295u)), var_1, _wgslsmith_f_op_vec2_f32(-global4.yz));
}

