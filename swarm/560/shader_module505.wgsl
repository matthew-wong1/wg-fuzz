struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: vec3<f32> = vec3<f32>(1020f, -444f, 2800f);

var<private> global2: vec2<f32> = vec2<f32>(816f, 506f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-367f, global2.x, arg_0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, -722f, -906f) + vec3<f32>(arg_2.a.b.b, -367f, arg_3))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -302f, 202f) - vec3<f32>(arg_2.c, global2.x, -247f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global2.x, 488f) * vec3<f32>(arg_2.c, 1998f, arg_0.a.b.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-762f, arg_3, global2.x), vec3<f32>(-738f, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, 136f, arg_0.a.b.b)))) - vec3<f32>(_wgslsmith_f_op_f32(global1.x - global2.x), -753f, 1091f))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) - _wgslsmith_f_op_f32(arg_0.a.b.b + arg_2.a.b.b)) * -1234f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f), _wgslsmith_f_op_f32(-global2.x))));
    var var_0 = _wgslsmith_div_vec4_i32(countOneBits(abs(firstTrailingBit(vec4<i32>(49724i, -1i, 7157i, -1i)))) & ~abs(-vec4<i32>(2147483647i, 0i, 11045i, 2147483647i)), firstTrailingBit(vec4<i32>(select(~(-1i), ~1i, arg_0.a.d), 1i, i32(-1i) * -28067i, ~(-2147483647i))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_u32(arg_0.b, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.x, 1u), 45327u)), Struct_1(~countOneBits(vec4<u32>(arg_0.a.b.a.x, 4294967295u, 1186u, u_input.a)), -973f), !select(!vec3<bool>(arg_2.a.c.x, false, true), !vec3<bool>(arg_0.a.d, false, true), arg_0.a.d), arg_2.a.c.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~arg_2.a.a, 4981u), abs(arg_2.b)), 145114u), -1392f);
    let var_2 = Struct_1(~vec4<u32>(arg_1.x, reverseBits(0u >> (u_input.d.x % 32u)), arg_0.a.b.a.x, u_input.d.x), arg_0.a.b.b);
    let var_3 = vec3<u32>(arg_2.a.b.a.x, arg_1.x, u_input.d.x);
    return var_1.a.b.b;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = -vec3<i32>(-7405i, -2147483647i, arg_2);
    global0 = array<vec2<u32>, 13>();
    global2 = vec2<f32>(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(473f)), 744f)))), 119f);
    var var_1 = Struct_3(Struct_2(4294967295u, Struct_1(select(firstTrailingBit(vec4<u32>(u_input.c.x, 8110u, u_input.a, u_input.d.x)), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4238u), all(vec3<bool>(arg_1, false, arg_0))), arg_3.x), vec3<bool>(false, false, arg_0 == false), true), u_input.c.x >> (1u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(max(global1.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f * -1677f)))));
    global0 = array<vec2<u32>, 13>();
    return var_1.a;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(func_3(false, all(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), 0i, _wgslsmith_f_op_vec2_f32(global1.yz - vec2<f32>(global2.x, _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(42317u, Struct_1(vec4<u32>(1u, 0u, u_input.b.x, 0u), -1415f), vec3<bool>(true, false, true), false), u_input.b.x, 1117f), vec3<u32>(4294967295u, u_input.a, 1u), Struct_3(Struct_2(13155u, Struct_1(vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.b.x), -1190f), vec3<bool>(true, true, false), true), 41698u, global1.x), global1.x))))), u_input.d.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(step(-1738f, 833f))));
    let var_1 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - var_0.c)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1125f - global2.x) + 616f))), _wgslsmith_f_op_f32(func_3(var_0.a.d, all(vec4<bool>(true, var_0.a.d, var_0.a.d, var_0.a.c.x)), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(global1.xz - global1.xx)).b.b + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x * var_0.c))))));
    var var_2 = var_0.a;
    let var_3 = 1i;
    let var_4 = select(!(!vec4<bool>(var_0.a.d && var_0.a.c.x, var_2.c.x, all(vec2<bool>(true, var_2.d)), true)), vec4<bool>(var_2.d, !var_2.c.x, true, var_0.a.c.x), vec4<bool>(any(func_3(!var_2.c.x, false, -var_3, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-343f, 342f)))).c), !any(select(var_0.a.c, vec3<bool>(false, var_0.a.c.x, var_2.c.x), var_0.a.c)), var_2.c.x, !func_3(var_2.d, var_0.a.d & var_0.a.c.x, -var_3, _wgslsmith_f_op_vec2_f32(exp2(var_1.xz))).c.x));
    return Struct_3(func_3(all(var_0.a.c.yx), !((944f < var_0.c) && (var_4.x || true)), _wgslsmith_div_i32(~firstTrailingBit(var_3), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_3, 0i)), vec2<i32>(-3456i, -19678i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.b, var_2.b.b) - vec2<f32>(-358f, global2.x))), 0u, 864f);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    global2 = global1.zy;
    let var_0 = !arg_0;
    let var_1 = reverseBits(_wgslsmith_clamp_vec2_i32(((vec2<i32>(-3980i, 0i) << (u_input.c.xx % vec2<u32>(32u))) | ~vec2<i32>(-41820i, 2147483647i)) | ~(-vec2<i32>(1i, -1i)), ~abs(max(vec2<i32>(25903i, -1i), vec2<i32>(25742i, 57685i))), max(select(~vec2<i32>(-28532i, -69588i), -vec2<i32>(0i, -1i), false), -vec2<i32>(-1i, 32732i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_2 - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_2))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2, arg_2, vec3<bool>(true, false, true))))))));
    var var_3 = arg_1.a.c.yx;
    return func_3(var_3.x, false, var_1.x, _wgslsmith_div_vec2_f32(arg_2.zy, var_2.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(global1.yx));
    let var_1 = func_4(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), all(vec3<bool>(true, true, false))), func_1(), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 791f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(2115f - -2160f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-127f * 1000f), var_0.x, _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(0u, Struct_1(vec4<u32>(18304u, u_input.c.x, u_input.c.x, u_input.d.x), var_0.x), vec3<bool>(false, true, false), true), u_input.b.x, global1.x), vec3<u32>(1u, u_input.b.x, 0u), Struct_3(Struct_2(0u, Struct_1(vec4<u32>(0u, u_input.d.x, u_input.b.x, 21270u), -2055f), vec3<bool>(true, false, false), true), 0u, var_0.x), 1203f)))))), func_3(func_3(true, all(func_1().a.c), -18175i, vec2<f32>(1770f, -217f)).d, all(func_3(all(vec3<bool>(true, true, false)), true, 1i, global1.zx).c), ~_wgslsmith_add_i32(-61508i, -8744i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2396f, -115f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, -1058f))) * vec2<f32>(global1.x, global2.x)), func_1().a.c.x))).b);
    let var_2 = func_1();
    let var_3 = -22497i;
    let var_4 = Struct_1(var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1453f - -564f)))));
    global0 = array<vec2<u32>, 13>();
    let var_5 = vec3<f32>(1486f, 1783f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(!(!var_1.c.xz), Struct_3(Struct_2(~0u, var_1.b, vec3<bool>(var_2.a.c.x, true, var_2.a.c.x), func_3(var_2.a.c.x, var_2.a.c.x, 2970i, vec2<f32>(var_0.x, var_2.c)).c.x), 4294967295u & _wgslsmith_clamp_u32(var_2.a.b.a.x, 49272u, var_1.b.a.x), 444f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b - 1308f)), var_1.b.b, _wgslsmith_f_op_f32(534f + _wgslsmith_f_op_f32(765f + -495f))), Struct_1(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, 25086u, u_input.b.x, var_1.a)), _wgslsmith_mod_vec4_u32(var_4.a, var_2.a.b.a), vec4<u32>(var_1.b.a.x, var_1.b.a.x, var_4.a.x, var_2.a.a)), global1.x)).b.a.xxy, var_4.a, var_2.b, abs(~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_4.a, var_4.a), 13u)]));
}

