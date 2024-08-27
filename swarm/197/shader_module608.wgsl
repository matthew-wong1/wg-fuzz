struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 16720i;

var<private> global1: Struct_4;

var<private> global2: vec4<bool>;

var<private> global3: f32 = 946f;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    global3 = _wgslsmith_f_op_f32(select(1413f, _wgslsmith_f_op_f32(sign(global1.b.a.x)), !any(select(!vec4<bool>(false, arg_0.x, global1.d, global2.x), select(vec4<bool>(global1.b.b, true, true, global1.d), vec4<bool>(false, true, true, arg_0.x), arg_0.x), true))));
    let var_0 = Struct_2(select(global2.zyx, global2.zxx, global1.b.b), vec2<bool>(any(!select(vec3<bool>(arg_0.x, global2.x, false), global2.xxz, vec3<bool>(true, true, global2.x))), true));
    let var_1 = global1.c.x;
    var var_2 = _wgslsmith_f_op_f32(global4.x + global1.b.a.x);
    var_2 = _wgslsmith_f_op_f32(488f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-2563f)))))));
    return select(u_input.a.wwx ^ vec3<u32>(~min(global1.c.x, 4294967295u), u_input.a.x, countOneBits(reverseBits(8645u))), reverseBits(countOneBits(~global1.c)) << (((u_input.a.www ^ vec3<u32>(global1.c.x, u_input.a.x, global1.c.x)) & (countOneBits(vec3<u32>(u_input.d, global1.c.x, 48364u)) ^ ~vec3<u32>(53512u, 4294967295u, u_input.a.x))) % vec3<u32>(32u)), !(!(!vec3<bool>(arg_0.x, var_0.a.x, false))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: u32) -> bool {
    global1 = Struct_4(-5451i, global1.b, vec3<u32>(~abs(global1.c.x), _wgslsmith_mod_u32(1u << (global1.c.x % 32u), 25321u) & 1u, 4294967295u), true);
    global1 = Struct_4((global1.a << (u_input.d % 32u)) | 2147483647i, Struct_3(vec2<f32>(1000f, 1064f), all(!select(vec4<bool>(true, global2.x, false, true), vec4<bool>(global1.d, false, true, global2.x), vec4<bool>(false, true, global1.d, global2.x)))), func_3(global2.zww), all(select(vec2<bool>(!global1.d, true), vec2<bool>(global2.x, true), 2147483647i == reverseBits(global1.a))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -840f))));
    global0 = arg_2.x ^ ~(~(-24421i ^ -arg_2.x));
    let var_0 = !vec4<bool>(global2.x, true, any(vec4<bool>(false, true, global1.b.b, true)) | (_wgslsmith_f_op_f32(-global1.b.a.x) > _wgslsmith_f_op_f32(step(1052f, 1035f))), 1u >= global1.c.x);
    return global2.x;
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    global2 = !select(!(!(!vec4<bool>(false, global2.x, global1.d, false))), select(vec4<bool>(1639f <= arg_0.x, all(vec4<bool>(global2.x, false, global2.x, global1.d)), func_2(arg_0, u_input.a.x, u_input.c, 3077u), false), select(!vec4<bool>(true, false, global1.d, true), !vec4<bool>(global2.x, true, true, false), global1.b.b && global2.x), all(select(vec4<bool>(false, global1.d, global2.x, true), vec4<bool>(false, global1.d, true, true), vec4<bool>(false, false, false, true)))), vec4<bool>(global1.d, reverseBits(u_input.d) <= 1u, true | any(vec2<bool>(true, false)), global1.b.b));
    var var_0 = abs(global1.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1085f), _wgslsmith_f_op_f32(min(1359f, global4.x)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(abs(-563f))), _wgslsmith_f_op_f32(f32(-1f) * -697f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-328f, -400f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(-227f, 672f))), global1.b.a.x);
    global1 = Struct_4(~13073i, global1.b, select(u_input.a.zwx, ~(~vec3<u32>(4294967295u, u_input.d, 0u)), vec3<bool>(true, 2147483647i == global1.a, -64041i <= u_input.c.x)), 30762i > -(~u_input.c.x));
    global0 = -abs(2147483647i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, _wgslsmith_f_op_f32(arg_0.x * global4.x), global1.b.a.x, _wgslsmith_f_op_f32(trunc(global4.x)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-113f * -1000f);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(760f, global4.x) + _wgslsmith_f_op_vec2_f32(-global4.yz)), any(!select(global2.xw, vec2<bool>(global1.d, true), any(global2.xxy))));
    global4 = arg_0.ywy;
    let var_2 = 1183f;
    let var_3 = arg_1;
    return StorageBuffer(~(vec3<u32>(u_input.a.x ^ global1.c.x, ~86573u, ~19056u) << (~global1.c % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(-412f * 387f)));
    var var_0 = global1.c.x;
    var_0 = ~(~(~1u << (~(~global1.c.x) % 32u)));
    let var_1 = _wgslsmith_div_f32(378f, _wgslsmith_f_op_f32(-1f));
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2039f, var_1, -1000f)), vec3<f32>(-1000f, global1.b.a.x, 655f))), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.a.x), var_1, 1f), global2.wzy))));
    var var_2 = vec3<i32>(u_input.c.x, ~(i32(-1i) * -34610i), _wgslsmith_mod_i32(global1.a, _wgslsmith_mult_i32(global1.a, u_input.b.x)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(114f, var_1, global1.b.a.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(187f, var_1, -125f, var_1)))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(562f, -1639f)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(global4.x)), _wgslsmith_f_op_f32(1118f + -124f)))));
}

