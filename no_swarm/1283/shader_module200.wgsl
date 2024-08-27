struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 30015u), select(arg_2.zy, vec2<u32>(45953u, 45461u) ^ arg_3.xx, vec2<bool>(true, false)) | (~(~vec2<u32>(0u, u_input.b.x)) ^ (~arg_3.yy << (vec2<u32>(u_input.b.x, arg_3.x) % vec2<u32>(32u)))), arg_3.xz);
    global1 = array<Struct_1, 17>();
    return u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = arg_0;
    global0 = 4516i;
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(countOneBits(arg_0.b.x), 17u)], arg_1, Struct_1(_wgslsmith_clamp_vec2_u32(~max(arg_0.b.yz, var_0.b.yz), func_3(1834f, _wgslsmith_div_f32(var_0.a, arg_0.a), vec3<u32>(u_input.b.x, 43144u, arg_0.b.x), _wgslsmith_add_vec3_u32(arg_0.b, vec3<u32>(0u, 79582u, arg_0.d))), abs(func_3(arg_0.a, 599f, arg_0.b, arg_0.b))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, u_input.a, -2147483647i)), vec3<i32>(35389i, u_input.c.x, 1i)) & vec3<i32>(-6964i, 0i | u_input.c.x, ~0i), arg_1 | any(!var_0.c.zz), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -1641f) * vec2<f32>(var_0.a, -1000f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1315f, arg_0.a)), vec2<f32>(arg_0.a, -1681f), arg_0.c.yz)), !all(var_0.c)))));
    var_1 = Struct_3(global1[_wgslsmith_index_u32(var_0.b.x, 17u)], var_0.c.x, Struct_1(u_input.b, vec3<i32>(-abs(u_input.a), i32(-1i) * -1i, ~(-58210i)), var_1.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1070f)), -525f))));
    let var_2 = var_1.c.a.x > _wgslsmith_clamp_u32(u_input.b.x, 1u, 37138u << (abs(0u) % 32u));
    return u_input.c.x | reverseBits(-(~var_1.c.b.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = arg_3.b.x;
    global1 = array<Struct_1, 17>();
    let var_1 = vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_2.a));
    var var_3 = Struct_1(~arg_3.a, firstLeadingBit(vec3<i32>(var_1.x, func_2(arg_2, arg_2.c.x), 2147483647i)), true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(275f, arg_1.a) * vec2<f32>(arg_1.a, 302f))))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - arg_1.a), -622f)))), -1971f, _wgslsmith_f_op_f32(abs(var_3.d.x)), _wgslsmith_f_op_f32(step(1000f, 894f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-412f, var_3.d.x, _wgslsmith_f_op_f32(min(arg_3.d.x, arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -2139f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.d.x, 735f, -505f, 1209f), vec4<f32>(var_3.d.x, arg_3.d.x, arg_3.d.x, 1375f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(676f, 308f, 1000f, 1168f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1314f, -1302f, -803f, 1431f), vec4<f32>(-299f, 1000f, 1000f, -759f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x), Struct_2(-149f, vec3<u32>(67900u, 109256u, 35961u), vec3<bool>(true, false, true), 44628u), Struct_2(1761f, vec3<u32>(u_input.b.x, 1u, 1u), vec3<bool>(true, true, false), 90237u), Struct_1(vec2<u32>(u_input.b.x, 23544u), vec3<i32>(1i, 22645i, -1i), true, vec2<f32>(899f, 1983f)))), _wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(0u, 43121u, u_input.b.x, 57019u), Struct_2(-921f, vec3<u32>(u_input.b.x, 0u, 41337u), vec3<bool>(false, false, true), u_input.b.x), Struct_2(-574f, vec3<u32>(u_input.b.x, 37676u, 9252u), vec3<bool>(true, true, true), 962u), global1[_wgslsmith_index_u32(u_input.b.x, 17u)])), true)))));
    var var_1 = u_input.b;
    let var_2 = u_input.a;
    global1 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(trunc(402f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(189f)), _wgslsmith_f_op_f32(-var_0.x), true)));
}

