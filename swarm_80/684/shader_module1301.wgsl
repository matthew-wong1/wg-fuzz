struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(631f, false), 1u, Struct_1(-962f, false)), Struct_2(Struct_1(138f, true), 1u, Struct_1(1935f, true)), Struct_2(Struct_1(-916f, false), 419u, Struct_1(1382f, false)), Struct_2(Struct_1(779f, false), 1u, Struct_1(-458f, false)), Struct_2(Struct_1(797f, true), 27521u, Struct_1(-1059f, false)), Struct_2(Struct_1(-576f, true), 0u, Struct_1(246f, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = ~(~(vec2<u32>(u_input.b.x, u_input.b.x) >> ((abs(vec2<u32>(103935u, u_input.b.x)) ^ u_input.b.xw) % vec2<u32>(32u))));
    let var_1 = vec2<bool>(true, global1.b);
    var var_2 = vec2<i32>(reverseBits(u_input.c.x), max(countOneBits(-u_input.c.x), ~(~0i)));
    var var_3 = 4294967295u;
    var var_4 = Struct_2(Struct_1(global1.a, false), var_0.x, Struct_1(global1.a, all(select(vec4<bool>(false, global1.b, true, true), select(vec4<bool>(global1.b, false, true, false), vec4<bool>(global1.b, true, true, true), false), !vec4<bool>(true, global1.b, global1.b, false)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.a)), -2054f));
}

fn func_2() -> Struct_1 {
    var var_0 = -1000f;
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(702f))) - global1.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(841f, -1626f)) * _wgslsmith_f_op_f32(func_3()))), !(global1.b & false));
    global1 = Struct_1(-943f, !global1.b);
    var var_1 = vec4<f32>(108f, _wgslsmith_f_op_f32(func_3()), 655f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1773f), _wgslsmith_div_f32(-750f, 225f))))))));
    var var_2 = Struct_3(var_1.x, var_1.zx);
    return Struct_1(_wgslsmith_f_op_f32(var_1.x + -1004f), true);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(round(global1.a)), global1.b);
    global2 = array<Struct_2, 6>();
    let var_0 = !(!vec3<bool>(any(vec4<bool>(global1.b, true, global1.b, global1.b)) == all(vec4<bool>(global1.b, global1.b, global1.b, global1.b)), !(u_input.b.x >= u_input.b.x), true));
    global1 = func_2();
    var var_1 = _wgslsmith_f_op_f32(func_3());
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec2<i32>(_wgslsmith_mod_i32(u_input.d, u_input.c.x), u_input.d));
    global1 = func_2();
    let var_0 = Struct_4(vec3<bool>(~1i >= min(i32(-1i) * -2147483647i, u_input.a.x), global1.b, !global1.b), -127f, u_input.b.x, vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(u_input.d), u_input.c.x), -2147483647i, ~(~(-1i))));
    global0 = array<vec4<u32>, 11>();
    let var_1 = func_1(min(abs(_wgslsmith_mod_vec2_i32(var_0.d.xx, u_input.c >> (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)))), var_0.d.yx)).a;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 1594f, 488f, global1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(878f, var_0.b, global1.a, -368f) - vec4<f32>(1090f, 2123f, var_0.b, 198f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, 1545f, -578f, var_1))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, var_1, 126f, 591f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, -225f, -1166f, var_1))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, var_1, -688f, 1674f))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 + 533f), _wgslsmith_div_f32(var_1, global1.a))), func_1(u_input.c).a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1121f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec4<u32>(85918u, _wgslsmith_add_u32(~(~u_input.b.x), var_0.c), var_0.c, 1u));
}

