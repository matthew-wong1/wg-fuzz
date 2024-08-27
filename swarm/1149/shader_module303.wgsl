struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: f32 = -770f;

var<private> global2: vec3<u32> = vec3<u32>(1u, 1u, 20913u);

var<private> global3: array<vec4<bool>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1036f, 1367f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1203f, 638f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 157f) + vec2<f32>(386f, -1136f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(sign(294f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1915f, 1682f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1150f, 287f) + vec2<f32>(407f, -763f))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), var_0.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x));
    let var_2 = Struct_3(5963i, select(vec2<bool>(false, true), vec2<bool>(true, true), true), Struct_2(Struct_1(vec2<i32>(-1i, -2147483647i), false), global0[_wgslsmith_index_u32((global2.x | 1u) << (74826u % 32u), 3u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(542f, var_0.x, false)), var_0.x))));
    var var_3 = global2.x;
    return _wgslsmith_f_op_f32(350f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -229f))));
}

fn func_4(arg_0: vec4<f32>) -> vec3<bool> {
    global2 = vec3<u32>(27698u, 0u, global2.x);
    return select(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(global2.x, 3u)] && global0[_wgslsmith_index_u32(u_input.d, 3u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 3u)], false, global0[_wgslsmith_index_u32(1u, 3u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 3u)], global0[_wgslsmith_index_u32(global2.x, 3u)], true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false, true))), global0[_wgslsmith_index_u32(global2.x, 3u)]), !select(!vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 3u)], false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(global2.x, 3u)]), false), !global0[_wgslsmith_index_u32(global2.x, 3u)]), select(!select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(u_input.e.x, 3u)], global0[_wgslsmith_index_u32(global2.x, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)]), global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 3u)], (0u & u_input.c) <= u_input.c, true), global0[_wgslsmith_index_u32(~(~u_input.a.x) & reverseBits(4294967295u), 3u)]), !vec3<bool>(true, !(-202f <= arg_0.x), true));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-987f, -1000f, -1540f, 1000f))) - vec4<f32>(-2031f, _wgslsmith_f_op_f32(select(2713f, -515f, global0[_wgslsmith_index_u32(u_input.c, 3u)])), _wgslsmith_f_op_f32(func_3()), 602f))));
    var_0 = !func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-559f, -286f, -579f, -567f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, -1070f, -536f, 2389f)))));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-11763i, 2735i), vec2<i32>(1i, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-22424i, 1i), vec2<i32>(2147483647i, -2147483647i)), global0[_wgslsmith_index_u32(17641u, 3u)]), _wgslsmith_mult_vec2_i32(~vec2<i32>(-10813i, -1i), select(vec2<i32>(0i, 11350i), vec2<i32>(-2147483647i, 2147483647i), false)))), var_0.x & select(false, false, true));
    return Struct_1(var_1.a, any(select(select(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)]), global3[_wgslsmith_index_u32(~90718u, 5u)], any(var_0.yy))) & global0[_wgslsmith_index_u32(abs(90797u), 3u)]);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = var_0.a;
    let var_2 = vec2<bool>(-var_1.x != arg_0.a.a.x, _wgslsmith_mod_u32(global2.x, global2.x) >= 4294967295u);
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) * 833f)), _wgslsmith_f_op_f32(f32(-1f) * -1027f));
    global2 = u_input.a.xxy;
    var var_0 = reverseBits(global2.x);
    var var_1 = Struct_3(arg_0.a.x, vec2<bool>(false, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, 484f, -994f, -232f)) + vec4<f32>(-281f, 515f, -148f, 1000f))).x), func_1(Struct_2(arg_2.a, all(global3[_wgslsmith_index_u32(0u, 5u)]) & (arg_2.b | arg_0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_2 = select(func_4(vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x)).zx, select(!(!vec2<bool>(var_1.b.x, var_1.c.a.b)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.d.x, var_1.d.x, -1000f, var_1.d.x))))).zz, any(vec4<bool>(false, true, select(arg_0.b, arg_0.b, false), true))), var_1.b);
    return Struct_1(func_1(var_1.c).a.a, all(vec4<bool>(true, !(!arg_2.b), any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(40733u, 3u)], arg_2.a.b, true)) | func_2().b, false)));
}

fn func_6(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2079f + -977f)))), -824f, all(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1053f, -321f, 2806f, -970f) - vec4<f32>(1069f, -304f, -735f, -1000f))).xy))));
    global2 = abs(firstLeadingBit(~max(u_input.a.yyz, max(vec3<u32>(global2.x, global2.x, u_input.a.x), vec3<u32>(global2.x, 0u, global2.x)))));
    var var_0 = func_1(Struct_2(arg_2, func_5(arg_2, 1u, Struct_2(Struct_1(arg_1, false), arg_2.b)).b));
    global0 = array<bool, 3>();
    var_0 = Struct_2(arg_2, u_input.b.x <= 40313u);
    return func_5(Struct_1(arg_1, arg_2.b), ~global2.x, Struct_2(arg_2, func_1(func_1(func_1(Struct_2(var_0.a, arg_2.b)))).a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 71328u;
    let var_1 = Struct_2(func_6(_wgslsmith_add_i32(firstTrailingBit(~(-54015i)), 1i), countOneBits(vec2<i32>(1i, 1i)) << (~(~vec2<u32>(22183u, u_input.b.x)) % vec2<u32>(32u)), func_5(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(24442i, -25083i), vec2<i32>(2147483647i, -2147483647i)), global0[_wgslsmith_index_u32(~global2.x, 3u)]), max(~20778u, _wgslsmith_clamp_u32(u_input.e.x, 3979u, global2.x)), func_1(Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), false), global0[_wgslsmith_index_u32(4294967295u, 3u)])))), true);
    var var_2 = global0[_wgslsmith_index_u32(~2950u, 3u)];
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(442f, -2326f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -595f))), 1f);
    var_0 = 25606u;
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), 723f, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, var_1.a.a.x, func_2().a.x, -34332i));
}

