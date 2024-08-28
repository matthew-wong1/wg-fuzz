struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: f32 = -862f;

var<private> global2: i32;

var<private> global3: Struct_2;

var<private> global4: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-559f, -1000f, -1301f), vec3<f32>(1983f, -608f, 688f), vec3<f32>(2119f, 333f, 483f), vec3<f32>(-182f, 458f, 408f), vec3<f32>(1345f, 774f, 1540f), vec3<f32>(-1716f, 1000f, 1460f), vec3<f32>(-1360f, 2301f, 815f), vec3<f32>(1230f, -1632f, 1304f), vec3<f32>(921f, 1137f, -1466f), vec3<f32>(189f, -842f, -1252f), vec3<f32>(-412f, 790f, -947f), vec3<f32>(-667f, 443f, -594f), vec3<f32>(-1000f, -140f, 1000f), vec3<f32>(-718f, 271f, 989f), vec3<f32>(-1179f, 918f, -236f), vec3<f32>(1874f, -324f, 520f), vec3<f32>(325f, 2970f, 839f), vec3<f32>(-286f, 1034f, 931f), vec3<f32>(330f, -844f, 1000f), vec3<f32>(339f, -686f, -1680f), vec3<f32>(328f, -707f, -728f), vec3<f32>(1210f, 482f, -1019f), vec3<f32>(-1000f, 348f, 896f), vec3<f32>(-449f, 1232f, 284f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_2 {
    global3 = Struct_2(countOneBits(global3.a), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.b.a.x), _wgslsmith_f_op_f32(ceil(299f)), -541f, _wgslsmith_div_f32(-686f, global3.d.x)))), global3.b, _wgslsmith_f_op_vec2_f32(-global3.c.a.yz));
    var var_0 = _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, ~abs(-1i), -u_input.e.x, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -46006i, u_input.d.x, 7146i), vec4<i32>(u_input.a, 0i, u_input.e.x, -31392i)), abs(vec4<i32>(2147483647i, u_input.d.x, -2147483647i, u_input.e.x))), _wgslsmith_add_i32(-57922i, abs(0i)), ~u_input.d.x, 55589i), -(abs(vec4<i32>(-2147483647i, -1i, u_input.d.x, 2362i)) | (vec4<i32>(u_input.a, 52566i, 2147483647i, u_input.a) | vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.e.x)))));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.x, -14139i), var_0.x);
    let var_2 = global3.c.a.yx;
    global2 = reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-38623i | _wgslsmith_mod_i32(u_input.a, -1i), abs(var_0.x)), ~_wgslsmith_div_vec2_i32(~var_0.xy, var_0.zx)));
    return Struct_2(abs(global3.a), global3.c, global3.b, vec2<f32>(1102f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), var_2.x, all(vec4<bool>(false, true, true, false))))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global3 = func_2();
    global3 = arg_2;
    global2 = ~u_input.d.x;
    global3 = Struct_2(_wgslsmith_clamp_u32(~(~global3.a), 0u, countOneBits(u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.a.x, _wgslsmith_div_f32(arg_0.x, global3.c.a.x), _wgslsmith_f_op_f32(round(global3.d.x)), _wgslsmith_f_op_f32(ceil(-414f))))), arg_2.c, global3.b.a.wz);
    global3 = Struct_2(~40027u, arg_2.b, func_2().b, func_2().d);
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    return -2779i;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global2 = _wgslsmith_clamp_i32(~(-2812i), _wgslsmith_add_i32(func_4(u_input.b | _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a, u_input.c), vec2<u32>(global3.a, 0u)), global3.c, func_3(global4[_wgslsmith_index_u32(u_input.b | 59046u, 24u)], -vec4<i32>(1i, u_input.d.x, 10213i, 2147483647i), func_2(), u_input.a)), -14867i), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(2147483647i) & u_input.a, -12237i, abs(u_input.e.x)), u_input.e));
    let var_0 = -(~(-(~(~vec4<i32>(u_input.a, u_input.e.x, -22493i, -2147483647i)))));
    var var_1 = select(vec4<bool>(!arg_0, arg_0, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), !select(arg_0, true, arg_0 | false)), !(!(!(!vec4<bool>(false, arg_0, true, false)))), true);
    let var_2 = var_0.xw;
    let var_3 = _wgslsmith_f_op_f32(1270f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x + 1000f)) + -1000f));
    return select(!(!(!select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, arg_0, false, var_1.x), vec4<bool>(var_1.x, false, true, arg_0)))), vec4<bool>(any(!var_1.xzx), var_1.x, var_1.x, any(!(!vec3<bool>(arg_0, arg_0, true)))), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_3(arg_1);
    let var_1 = !(!select(!(!arg_0), select(vec4<bool>(true, true, arg_0.x, true), arg_0, !arg_0.x), vec4<bool>(arg_0.x, select(arg_0.x, true, true), func_1(arg_0.x).x, false)));
    var var_2 = 1199f;
    let var_3 = 13382u;
    var var_4 = Struct_3(arg_3);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.b.a.x;
    global3 = func_5(select(!select(vec4<bool>(true, true, true, true), func_1(true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), true), any(vec2<bool>(func_1(false).x, true))), u_input.a, reverseBits(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3.a, 33202u, global3.a, u_input.b), vec4<u32>(4294967295u, u_input.b, 4294967295u, 20545u)), select(vec4<u32>(0u, u_input.c, 1u, global3.a), vec4<u32>(57597u, 0u, 35772u, 1u), vec4<bool>(true, false, true, false)), abs(vec4<u32>(u_input.b, global3.a, 54655u, u_input.c)))), _wgslsmith_add_i32(-u_input.d.x, _wgslsmith_sub_i32(1i, min(~u_input.a, _wgslsmith_div_i32(-5268i, u_input.e.x)))));
    global2 = u_input.a;
    let var_0 = u_input.e & u_input.e;
    let var_1 = func_5(select(vec4<bool>(false, !all(vec4<bool>(false, false, false, false)), !all(vec3<bool>(false, true, false)), true), vec4<bool>(any(vec2<bool>(true, true)), func_1(any(vec3<bool>(false, true, false))).x, true, true), false), ~(var_0.x >> (~(~global3.a) % 32u)), ~max(~countOneBits(vec4<u32>(u_input.c, 66253u, 0u, 4294967295u)), countOneBits(vec4<u32>(14892u, 2839u, 1u, global3.a))), ~abs(1i));
    let var_2 = any(!(!vec3<bool>(-14653i >= var_0.x, func_1(true).x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~u_input.a, 1i), var_1.b.a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.a) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.c.a + vec4<f32>(-1688f, -622f, global3.b.a.x, -2061f)) * vec4<f32>(global3.c.a.x, var_1.d.x, global3.d.x, 1010f))), global3.c.a)));
}

