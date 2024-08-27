struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(0i, 0i), vec2<i32>(-35369i, 2147483647i), vec2<i32>(-30464i, 10598i), vec2<i32>(66167i, -1i), vec2<i32>(46024i, 5379i), vec2<i32>(1i, -1i), vec2<i32>(5405i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-22145i, 0i), vec2<i32>(-1i, -39315i), vec2<i32>(-47522i, 69668i), vec2<i32>(-37828i, 29800i), vec2<i32>(-4557i, 4969i), vec2<i32>(-4625i, 14295i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-61810i, 24133i), vec2<i32>(0i, 6350i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_1(false, arg_0.a.b, 103f);
    let var_1 = arg_0.a;
    global1 = array<vec2<i32>, 18>();
    var var_2 = countOneBits(vec3<u32>(~u_input.a.x, ~1u, _wgslsmith_add_u32(u_input.b, ~42998u))) << ((~(~min(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(arg_1, 99551u, u_input.b))) | _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1, 0u, 34924u), vec3<u32>(14240u, 33780u, 16262u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, arg_1, arg_1), vec3<u32>(u_input.a.x, arg_1, 81891u)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_3 = var_1;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    global0 = select(select(!vec3<bool>(true, all(vec3<bool>(true, global0.x, global0.x)), true), select(vec3<bool>(true, false, true), vec3<bool>(all(vec4<bool>(global0.x, arg_0.a.a, false, arg_0.a.a)), !global0.x, global0.x), vec3<bool>(any(vec3<bool>(false, true, arg_2.a)), !global0.x, true)), arg_2.a), !select(!select(vec3<bool>(arg_0.a.a, false, arg_2.a), vec3<bool>(arg_2.a, true, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, arg_0.a.a, arg_2.a), vec3<bool>(arg_2.a, false, global0.x), vec3<bool>(true, false, global0.x)), !vec3<bool>(arg_0.a.a, arg_2.a, arg_2.a), vec3<bool>(global0.x, global0.x, false)), select(select(vec3<bool>(true, global0.x, arg_0.a.a), vec3<bool>(true, false, global0.x), arg_0.a.a), select(vec3<bool>(false, arg_2.a, true), vec3<bool>(false, false, false), true), vec3<bool>(arg_2.a, false, false))), !global0.x);
    var var_0 = func_2(arg_0, u_input.b);
    let var_1 = Struct_2(Struct_1(all(vec4<bool>(false, arg_0.a.a, true, arg_2.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_0.a.b.x, arg_0.a.b.x, 1f))), -373f));
    global1 = array<vec2<i32>, 18>();
    let var_2 = countOneBits(i32(-1i) * -arg_1);
    return var_1;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = ~vec3<u32>(~(~37534u), abs(~arg_1 & 33045u), ~u_input.b);
    var var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(~reverseBits(-3655i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, u_input.d.x), vec4<i32>(-4355i, -9568i, arg_0, -51406i), vec4<i32>(-35769i, u_input.d.x, arg_0, -41986i)), vec4<i32>(arg_0, arg_0, 9550i, 0i) << (vec4<u32>(16274u, 45831u, arg_3, 1u) % vec4<u32>(32u))), -2147483647i), -1i), 1i, ~(-16699i));
    global1 = array<vec2<i32>, 18>();
    var var_2 = countOneBits(~_wgslsmith_mod_i32(var_1.x, 30212i));
    let var_3 = func_3(func_2(Struct_2(arg_2), 27221u), arg_0, Struct_1(false, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(858f, arg_2.c, arg_2.c, -220f) + arg_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b)))), 1191f), select(vec2<u32>(~firstTrailingBit(8880u), arg_1), var_0.yx, select(select(select(global0.yy, vec2<bool>(arg_2.a, arg_2.a), global0.x), select(vec2<bool>(arg_2.a, false), vec2<bool>(false, arg_2.a), global0.x), true), vec2<bool>(any(vec2<bool>(arg_2.a, true)), arg_2.a), vec2<bool>(arg_2.a, global0.x))));
    return any(select(!select(global0.yx, vec2<bool>(arg_2.a, global0.x), !global0.x), vec2<bool>(all(!vec3<bool>(var_3.a.a, var_3.a.a, var_3.a.a)), global0.x), arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(global0.x, select(global0.x, global0.x, func_1(u_input.e.x, u_input.a.x, Struct_1(false, vec4<f32>(1153f, -578f, -684f, 932f), 1373f), u_input.a.x) && true) & any(vec2<bool>(true, u_input.c.x == u_input.c.x)), all(!select(vec3<bool>(global0.x, global0.x, true), !vec3<bool>(true, global0.x, false), true)));
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-580f, 1000f), vec2<f32>(-285f, 1686f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-727f * 238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))));
    let var_1 = !(!(!(!global0.x) && (u_input.b > u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    global1 = array<vec2<i32>, 18>();
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 139f) + 421f), 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(712f, var_0.x, -296f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(global0.x, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), -1764f)), 72402u).a.b.xxz - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 146f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(339f, var_0.x, 1799f) - vec3<f32>(-1858f, -1515f, 102f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2271f, ~u_input.e.x);
}

