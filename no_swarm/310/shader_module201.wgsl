struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-302f, 707f, 381f, 1129f), vec4<f32>(-277f, -1380f, 1106f, 942f), vec4<f32>(-537f, -1112f, 231f, 655f), vec4<f32>(-353f, -1818f, 1000f, 2173f), vec4<f32>(-267f, -774f, 196f, -637f), vec4<f32>(1395f, -1134f, -1000f, -354f), vec4<f32>(1346f, 261f, -125f, -578f), vec4<f32>(-1469f, -327f, 361f, 118f), vec4<f32>(-336f, 125f, 879f, 560f), vec4<f32>(1226f, -1775f, -121f, -662f), vec4<f32>(-516f, -1371f, -1433f, 282f), vec4<f32>(-2304f, -523f, -951f, 779f), vec4<f32>(1071f, 1000f, -435f, 598f), vec4<f32>(-630f, -802f, -700f, 208f), vec4<f32>(-819f, -690f, -287f, -824f), vec4<f32>(-1217f, 199f, 1596f, 1971f));

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(89876u, 4294967295u, 1720f, Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec4<bool>(false, true, true, true)), true), Struct_2(1u, 37639u, 1524f, Struct_1(vec3<i32>(i32(-2147483648), 6647i, -1i), vec4<bool>(false, false, true, false)), false), Struct_2(1u, 4294967295u, -931f, Struct_1(vec3<i32>(2147483647i, -1204i, -14089i), vec4<bool>(true, false, false, true)), true), Struct_2(4294967295u, 4294967295u, 942f, Struct_1(vec3<i32>(2147483647i, -67130i, 12465i), vec4<bool>(true, false, false, false)), false), Struct_2(4294967295u, 23623u, -1050f, Struct_1(vec3<i32>(i32(-2147483648), -1i, -26660i), vec4<bool>(true, true, true, false)), true), Struct_2(32395u, 62950u, 968f, Struct_1(vec3<i32>(-3645i, -14319i, -43462i), vec4<bool>(false, true, false, true)), true), Struct_2(92748u, 1u, 320f, Struct_1(vec3<i32>(-27785i, i32(-2147483648), -1i), vec4<bool>(false, false, true, false)), false), Struct_2(4294967295u, 0u, -239f, Struct_1(vec3<i32>(1i, 1i, 0i), vec4<bool>(true, true, true, false)), false), Struct_2(4294967295u, 0u, 993f, Struct_1(vec3<i32>(-22278i, 17190i, -31197i), vec4<bool>(false, true, true, true)), false));

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(1u, 0u), vec2<u32>(46795u, 53000u), vec2<u32>(1u, 1u), vec2<u32>(23146u, 11410u), vec2<u32>(0u, 37967u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 3642u), vec2<u32>(1u, 1u), vec2<u32>(8406u, 4294967295u), vec2<u32>(1u, 88761u), vec2<u32>(35967u, 24794u), vec2<u32>(63307u, 19867u), vec2<u32>(27645u, 0u), vec2<u32>(0u, 28914u), vec2<u32>(8310u, 4294967295u), vec2<u32>(4294967295u, 6371u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(17904u, 0u), vec2<u32>(42759u, 74710u), vec2<u32>(98071u, 10852u), vec2<u32>(1u, 27914u), vec2<u32>(4294967295u, 25192u), vec2<u32>(27912u, 19142u), vec2<u32>(1u, 63277u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = arg_1;
    let var_1 = 1i;
    let var_2 = global1[_wgslsmith_index_u32(u_input.c.x, 9u)];
    var var_3 = var_2.d;
    global1 = array<Struct_2, 9>();
    return false;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_1(select(vec3<i32>(-2147483647i, arg_3.x, u_input.d.x), ~min(select(vec3<i32>(arg_3.x, 3396i, u_input.d.x), vec3<i32>(arg_3.x, arg_3.x, -41365i), vec3<bool>(false, false, true)), -vec3<i32>(-1093i, 1i, arg_3.x)), vec3<bool>(true, true, true)), vec4<bool>(-_wgslsmith_mult_i32(u_input.d.x, 33926i) == select(arg_3.x | u_input.d.x, _wgslsmith_clamp_i32(35744i, u_input.d.x, 59446i), u_input.b.x > 73538u), true, all(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true));
    let var_1 = 2496f;
    var var_2 = !func_3(arg_1.x, Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_0.a.x, var_0.a.x), vec3<i32>(-18049i, 35985i, 0i)), select(!vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), select(vec4<bool>(var_0.b.x, true, true, false), var_0.b, var_0.b.x), true)), Struct_1(vec3<i32>(0i, 22813i, u_input.d.x), var_0.b), u_input.a >= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 5824u) | vec2<u32>(u_input.c.x, 0u), ~global3[_wgslsmith_index_u32(arg_0, 26u)]));
    var var_3 = arg_1.yz;
    let var_4 = Struct_1(~var_0.a, vec4<bool>(true, any(vec4<bool>(!var_0.b.x, false || var_0.b.x, var_0.b.x || false, false & var_0.b.x)), _wgslsmith_add_u32(~u_input.a, u_input.c.x) != u_input.b.x, var_0.b.x));
    return select(select(select(vec2<bool>(true, arg_1.x <= -1176f), !var_0.b.ww, select(!var_4.b.xw, !vec2<bool>(true, var_0.b.x), var_0.b.x)), vec2<bool>(true, var_4.b.x), true), vec2<bool>(true, var_0.b.x), var_0.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(5143u), 9u)];
    global0 = array<vec4<f32>, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1413f, _wgslsmith_f_op_f32(-324f * var_0.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(207f, var_0.c)))), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), var_0.c))));
    let var_2 = abs(max(~firstLeadingBit(u_input.b), ~u_input.b));
    let var_3 = !select(func_2(arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.c, -252f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1375f, var_0.c), vec4<f32>(587f, 277f, -498f, -1000f)), vec4<f32>(var_1.x, -252f, -174f, 660f))), arg_0.a.zy), vec2<bool>(1i >= firstLeadingBit(u_input.d.x), true), vec2<bool>(true, select(!var_0.d.b.x, var_0.d.b.x & var_0.d.b.x, any(vec3<bool>(true, true, var_0.d.b.x)))));
    return select(!var_0.d.b.wxx, !arg_0.b.zxx, vec3<bool>(_wgslsmith_mult_i32(21569i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, 2147483647i, var_0.d.a.x, u_input.d.x), vec4<i32>(-2147483647i, u_input.d.x, 27846i, u_input.d.x))) <= u_input.d.x, false, all(!arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1132f;
    global3 = array<vec2<u32>, 26>();
    global1 = array<Struct_2, 9>();
    let var_1 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, u_input.a > u_input.b.x, true), vec3<bool>(false, false, 1097f == var_0), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true)), select(func_1(Struct_1(vec3<i32>(-37469i, -79714i, u_input.d.x), vec4<bool>(true, false, false, true)), global3[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)));
    var var_2 = 525f;
    let var_3 = Struct_2(u_input.a << (u_input.a % 32u), 4294967295u, 386f, Struct_1(min(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, -1i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 13522i), vec3<i32>(35866i, -2147483647i, 1i))), max(vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x), firstTrailingBit(vec3<i32>(u_input.d.x, 1i, -56779i)))), vec4<bool>(-406f >= _wgslsmith_f_op_f32(var_0 + var_0), true, var_1.x, var_0 > _wgslsmith_f_op_f32(max(var_0, var_0)))), all(select(select(!vec4<bool>(true, var_1.x, var_1.x, false), select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(true, var_1.x, false, var_1.x)), vec4<bool>(var_1.x, false, true, var_1.x)), vec4<bool>(var_1.x && false, !var_1.x, false | var_1.x, var_1.x), !vec4<bool>(false, false, var_1.x, true))));
    var var_4 = var_1.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.d.x, -4723i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.d.a.x, -1i), var_3.d.a.xz), u_input.d.x)), 2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-109f, var_3.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1090f, -539f) + vec2<f32>(var_0, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(354f, var_0) * vec2<f32>(var_0, -1317f))))));
}

