struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-358f, -2042f, 278f), vec3<f32>(-1628f, -1000f, 238f), vec3<f32>(1237f, -122f, -1056f), vec3<f32>(2370f, 1000f, 602f), vec3<f32>(233f, 316f, 207f), vec3<f32>(1419f, 121f, -1117f), vec3<f32>(1000f, 827f, 143f), vec3<f32>(-1029f, -2584f, 494f), vec3<f32>(1000f, -450f, -1462f), vec3<f32>(773f, -1538f, 491f), vec3<f32>(-691f, 769f, 1942f), vec3<f32>(-852f, -833f, 1038f), vec3<f32>(-807f, -292f, -1180f), vec3<f32>(1688f, 1107f, 277f), vec3<f32>(-1000f, 2038f, 770f), vec3<f32>(1000f, -2191f, 1585f), vec3<f32>(258f, -1610f, -868f), vec3<f32>(-815f, 1842f, -811f), vec3<f32>(-397f, -241f, 460f), vec3<f32>(131f, 1000f, 1694f), vec3<f32>(-2394f, 299f, -485f), vec3<f32>(831f, -112f, -2011f), vec3<f32>(-1000f, 1324f, 629f), vec3<f32>(-394f, -1280f, -160f), vec3<f32>(-537f, 1000f, -489f), vec3<f32>(-2406f, 1000f, 246f), vec3<f32>(123f, -805f, -254f));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: f32;

var<private> global3: vec2<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = min(select(countOneBits(vec4<i32>(abs(global3.x), i32(-1i) * -47186i, ~15719i, u_input.b.x)), abs(vec4<i32>(1i, global3.x ^ 1i, global3.x, _wgslsmith_add_i32(u_input.d.x, -1i))), !(!vec4<bool>(true, false, true, global1.x))), -(~vec4<i32>(arg_0.b, u_input.a, arg_0.b, u_input.b.x) << (~u_input.c % vec4<u32>(32u))) & abs(vec4<i32>(1i, -1i, -985i, 13604i)));
    let var_1 = 578f;
    global1 = vec4<bool>((-2224f > var_1) || false, all(!select(vec2<bool>(arg_0.a, false), global1.wx, global1.wy)) == any(vec4<bool>(true, arg_0.c.x || global4.a.x, global4.a.x, false)), global1.x, global1.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1)));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(false, -2147483647i, vec2<bool>(false, true)))) + _wgslsmith_f_op_f32(sign(-1751f)))), 291f));
    let var_1 = Struct_3(global4.a.x, ~(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(16135i, 0i)) ^ -u_input.d.x), !select(vec2<bool>(true, all(vec2<bool>(global1.x, false))), !global4.a.yz, any(vec3<bool>(false, false, false))));
    var var_2 = abs(reverseBits(~firstTrailingBit(~u_input.c.ywz)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, 1588f)))))));
    return var_1;
}

fn func_1() -> Struct_2 {
    var var_0 = 1000f;
    global0 = array<vec3<f32>, 27>();
    let var_1 = func_2();
    global1 = select(!(!(!select(vec4<bool>(false, var_1.c.x, true, global4.a.x), vec4<bool>(true, var_1.c.x, true, global1.x), false))), select(!select(vec4<bool>(var_1.c.x, global4.a.x, false, false), vec4<bool>(true, true, global1.x, global1.x), !vec4<bool>(false, true, global4.a.x, true)), !(!(!vec4<bool>(global4.a.x, false, global1.x, false))), !global1.x & global1.x), !(!(!select(vec4<bool>(true, global1.x, false, false), vec4<bool>(true, var_1.c.x, true, false), vec4<bool>(false, false, false, global4.a.x)))));
    let var_2 = -2147483647i;
    return Struct_2(Struct_1(vec3<bool>(true, all(!vec3<bool>(var_1.a, true, false)), countOneBits(u_input.c.x) <= (u_input.c.x & 115704u))), !select(!vec3<bool>(global4.a.x, global4.a.x, global1.x), !global4.a, any(select(vec4<bool>(false, false, global4.a.x, false), vec4<bool>(global4.a.x, global1.x, global4.a.x, false), vec4<bool>(global4.a.x, true, var_1.a, false)))), _wgslsmith_mod_u32(~u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2066f))), u_input.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    global1 = vec4<bool>(false, arg_2.a.x, !select(all(select(global1.zxw, arg_2.a, arg_0.a.a)), arg_3.c.x, all(select(vec3<bool>(true, arg_2.a.x, true), vec3<bool>(arg_3.c.x, true, global4.a.x), arg_2.a.x))), global1.x);
    let var_0 = func_2();
    let var_1 = -_wgslsmith_add_i32(global3.x, max(var_0.b, -global3.x));
    global2 = -229f;
    global3 = -vec2<i32>(arg_0.e.x, global3.x);
    return _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-421f)), -596f)))), 811f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.zzx;
    global1 = !(!vec4<bool>(true, !(!global4.a.x), true, global4.a.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1679f))), _wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-266f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1699f, -1000f, -412f), _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(var_0.x, 27u)], global0[_wgslsmith_index_u32(5136u, 27u)], global1.x)), select(global1.xxw, vec3<bool>(false, global4.a.x, global1.x), true))), Struct_1(vec3<bool>(global1.x, true, false)), Struct_3(true, abs(0i), vec2<bool>(true, global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -379f) + _wgslsmith_div_f32(1000f, -685f)));
    let var_2 = 2147483647i;
    var var_3 = all(vec3<bool>(!(min(u_input.c.x, 56852u) >= ~34285u), (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 33481u)) != ~var_0.x) || all(global4.a), global4.a.x));
    global0 = array<vec3<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i));
}

