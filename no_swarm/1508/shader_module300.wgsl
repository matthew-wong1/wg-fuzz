struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_1(vec4<i32>(-1i, -5888i, -1i, 0i))), Struct_3(Struct_1(vec4<i32>(-1i, 0i, -1i, 19101i))), Struct_3(Struct_1(vec4<i32>(-34739i, 1i, 42203i, 2147483647i))), Struct_3(Struct_1(vec4<i32>(-1i, 0i, -545i, 2147483647i))), Struct_3(Struct_1(vec4<i32>(10290i, 29457i, -62113i, 42557i))), Struct_3(Struct_1(vec4<i32>(-507i, -5038i, i32(-2147483648), 8464i))), Struct_3(Struct_1(vec4<i32>(-2387i, -1i, 1i, 14165i))), Struct_3(Struct_1(vec4<i32>(2147483647i, -24683i, -1i, -9439i))), Struct_3(Struct_1(vec4<i32>(9940i, 64768i, 19234i, -17770i))), Struct_3(Struct_1(vec4<i32>(2147483647i, -36774i, -25393i, 21664i))), Struct_3(Struct_1(vec4<i32>(-1i, -2030i, -58232i, -44650i))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -5878i, 1i, 16696i))), Struct_3(Struct_1(vec4<i32>(2147483647i, 41622i, i32(-2147483648), 1i))), Struct_3(Struct_1(vec4<i32>(-21843i, 1i, 532i, 0i))), Struct_3(Struct_1(vec4<i32>(0i, 52232i, 1i, 28806i))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 10996i, 44157i, -1i))), Struct_3(Struct_1(vec4<i32>(-52380i, 1i, 1i, 16338i))), Struct_3(Struct_1(vec4<i32>(-57300i, 9719i, -1i, 1i))), Struct_3(Struct_1(vec4<i32>(30778i, i32(-2147483648), 9624i, 0i))), Struct_3(Struct_1(vec4<i32>(1i, 33017i, i32(-2147483648), 0i))), Struct_3(Struct_1(vec4<i32>(1i, 2147483647i, 19598i, 9839i))), Struct_3(Struct_1(vec4<i32>(86337i, 3196i, -32381i, 2147483647i))), Struct_3(Struct_1(vec4<i32>(-1i, i32(-2147483648), 58880i, -11894i))), Struct_3(Struct_1(vec4<i32>(-1i, 2468i, 2147483647i, i32(-2147483648)))), Struct_3(Struct_1(vec4<i32>(7247i, 12102i, 23657i, i32(-2147483648)))), Struct_3(Struct_1(vec4<i32>(0i, i32(-2147483648), 7107i, -205i))), Struct_3(Struct_1(vec4<i32>(17066i, 20375i, -9000i, -9233i))), Struct_3(Struct_1(vec4<i32>(-37192i, 0i, 2147483647i, 0i))), Struct_3(Struct_1(vec4<i32>(-40707i, 16775i, i32(-2147483648), 2147483647i))));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_2 {
    return Struct_2(vec3<bool>(true, false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-425f, 1000f, -934f, 1607f), vec4<f32>(520f, 1378f, 1000f, 981f)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(188f, 1000f, 1422f, -500f) + _wgslsmith_div_vec4_f32(vec4<f32>(-350f, 2321f, -792f, 287f), vec4<f32>(-2237f, -888f, 1000f, 263f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1324f, -361f, 1000f, 933f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1167f, 170f, 247f, -1344f), vec4<f32>(415f, 445f, -1369f, 1089f))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> u32 {
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    let var_0 = u_input.c.x;
    return 30963u;
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = u_input.c;
    var var_1 = func_2();
    var_0 = vec3<u32>(1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(func_3(Struct_3(Struct_1(vec4<i32>(u_input.b, 4897i, u_input.b, u_input.d.x))), u_input.b, Struct_2(vec3<bool>(var_1.a.x, var_1.a.x, true), var_1.b), arg_0.x), arg_0.x)), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(arg_0.zx, u_input.c.zz), arg_0.zz)), 29198u);
    var var_2 = vec4<bool>(var_1.a.x, func_2().a.x, _wgslsmith_f_op_f32(abs(var_1.b.x)) < var_1.b.x, var_1.a.x);
    var_1 = func_2();
    return !select(var_2.xww, !var_1.a, vec3<bool>(!var_1.a.x && any(vec3<bool>(var_1.a.x, false, var_1.a.x)), true, var_1.a.x & (var_1.a.x && var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!select(vec3<bool>(false, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), !func_1(u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-826f, -1447f)), _wgslsmith_f_op_f32(409f * -1129f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(659f + 1622f), 1212f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-793f, 1268f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f + -1000f)))));
    let var_1 = select(u_input.b, firstLeadingBit(u_input.a.x), true);
    var_0 = func_2();
    let var_2 = select(!select(vec4<bool>(false || var_0.a.x, all(vec2<bool>(var_0.a.x, false)), var_0.a.x, func_2().a.x), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(false, var_0.a.x, false, false), select(vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, false, var_0.a.x, true))), !all(vec4<bool>(true, true, false, false))), select(select(!(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)), select(!vec4<bool>(true, var_0.a.x, var_0.a.x, false), select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)), !(!vec4<bool>(false, var_0.a.x, true, var_0.a.x))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, true)), select(vec4<bool>(false, var_0.a.x, var_0.a.x, false), !vec4<bool>(var_0.a.x, var_0.a.x, false, true), false), true), false), all(select(vec4<bool>(true, true, !var_0.a.x, all(vec2<bool>(var_0.a.x, false))), vec4<bool>(var_0.a.x, !var_0.a.x, !var_0.a.x, all(vec2<bool>(true, var_0.a.x))), select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(false, true, var_0.a.x, var_0.a.x), false), !vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(var_0.a.x, var_0.a.x, true, true))))));
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec4<u32>(31858u, _wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(~1u, 0u)), 1u, 83056u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))));
}

