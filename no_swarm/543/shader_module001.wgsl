struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: f32,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_3;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(1438f));
    return global1.d.a.x && any(select(select(vec2<bool>(false, true), select(global1.d.a.zy, vec2<bool>(global1.d.a.x, global1.d.a.x), global1.d.a.x), vec2<bool>(false, false)), !select(vec2<bool>(true, global1.d.a.x), global1.d.a.zz, true), vec2<bool>(!global1.d.a.x, true)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> i32 {
    var var_0 = ~0u;
    global1 = arg_1.e;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-490f, _wgslsmith_f_op_f32(sign(global1.d.c.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e.d.c.x, 1353f, arg_1.b.d.c.x, 1534f) * _wgslsmith_div_vec4_f32(vec4<f32>(1705f, global1.a.x, arg_0, arg_0), arg_1.d))))));
    var var_1 = global1.c;
    var var_2 = arg_1.b.d.c.x;
    return -19264i;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<f32>) -> f32 {
    global0 = false;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_2.x)))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(232f)), -406f))));
    global1 = arg_1.e;
    global0 = arg_1.b.d.a.x;
    global0 = _wgslsmith_f_op_f32(step(arg_1.e.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1188f))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(458f + -1918f)));
    return global2.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> bool {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d.c.x)))), _wgslsmith_f_op_f32(func_4(abs(func_3(_wgslsmith_f_op_f32(min(global2.x, 1468f)), Struct_4(arg_2, Struct_3(vec2<f32>(global1.a.x, global2.x), global1.d.b.x, vec3<i32>(global1.d.b.x, u_input.a, global1.d.b.x), global1.d), 1170f, vec4<f32>(-1000f, -280f, -697f, global2.x), Struct_3(vec2<f32>(748f, 1136f), global1.c.x, vec3<i32>(-4907i, u_input.a, 61300i), global1.d)), -145f)), Struct_4(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 39318u), Struct_3(vec2<f32>(global2.x, global1.a.x), abs(2147483647i), vec3<i32>(global1.c.x, -20867i, 23949i), global1.d), global1.d.c.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-970f, global2.x, global2.x, -320f) + vec4<f32>(arg_1, arg_1, global1.d.c.x, global1.d.c.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 179f, -505f, -686f), vec4<f32>(-1337f, arg_1, arg_1, 2294f))), Struct_3(_wgslsmith_div_vec2_f32(global1.d.c, vec2<f32>(-1032f, -160f)), _wgslsmith_clamp_i32(global1.d.b.x, global1.d.b.x, global1.d.b.x), vec3<i32>(52949i, 20683i, -49691i), Struct_1(global1.d.a, global1.c.xy, global1.d.c))), global2.zw)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(0i, Struct_4(arg_2, Struct_3(global2.yx, global1.d.b.x, global1.c, global1.d), _wgslsmith_div_f32(1023f, global1.a.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, 1065f, -1199f, 1694f))), Struct_3(global1.a, 4498i, global1.c, global1.d)), global1.d.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -969f)) + _wgslsmith_f_op_f32(2443f - _wgslsmith_f_op_f32(f32(-1f) * -661f))))), arg_1);
    return global1.d.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) <= global1.a.x), _wgslsmith_div_vec2_i32((vec2<i32>(7692i, global1.b) | global1.c.zx) & vec2<i32>(global1.c.x, u_input.a), vec2<i32>(-45245i, _wgslsmith_sub_i32(0i, -47172i) | countOneBits(global1.c.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)), -339f));
    global0 = all(vec4<bool>(all(!var_0.a), false, !func_1(), false));
    let var_1 = !select(vec2<bool>(true, true), vec2<bool>(var_0.a.x, true), false);
    var var_2 = true;
    let var_3 = _wgslsmith_div_vec3_f32(global2.zzz, _wgslsmith_f_op_vec3_f32(-global2.zwx));
    var var_4 = select(select(vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(var_1.x, var_0.a.x, var_0.a.x, var_1.x), vec4<bool>(false, global1.d.a.x, var_1.x, global1.d.a.x))), true), var_0.a.yy), vec2<bool>(!(!(!global1.d.a.x)), func_1()), select(!select(var_0.a.zz, vec2<bool>(false, var_0.a.x), global1.d.a.x && var_1.x), vec2<bool>(global1.d.a.x, !(!var_1.x)), vec2<bool>(var_0.a.x, !func_2(4294967295u, -1501f, vec4<u32>(1u, 30739u, 23457u, 35964u)))));
    var var_5 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x), -1333f);
    var_2 = true;
    let var_6 = Struct_4(firstTrailingBit(reverseBits(vec4<u32>(1u, 1u, 1u, 1u))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2.wz))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.x, global2.x), vec2<f32>(global2.x, 601f)))))), var_0.b.x, ~(global1.c << (~vec3<u32>(35556u, 4294967295u, 36909u) % vec3<u32>(32u))), Struct_1(vec3<bool>(true, !global1.d.a.x, false), countOneBits(-global1.d.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 2337f) + global2.xx)))), 1462f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(floor(global2.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(510f))))), -1670f, _wgslsmith_f_op_f32(trunc(1302f))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(138f, global2.x) * _wgslsmith_f_op_f32(-932f * 1658f))), u_input.a, _wgslsmith_sub_vec3_i32(global1.c, reverseBits(global1.c)), Struct_1(select(var_0.a, select(global1.d.a, vec3<bool>(var_1.x, var_0.a.x, false), var_1.x), false), abs(_wgslsmith_div_vec2_i32(vec2<i32>(13199i, 2147483647i), var_0.b)), var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_6.a.x), var_6.a, _wgslsmith_f_op_vec2_f32(round(var_0.c)), ~1u);
}

