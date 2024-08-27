struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-1i, -8635i, -1i), vec3<i32>(74122i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(1i, 1i, 0i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 1i, 36600i), vec3<i32>(-9995i, -67834i, -10306i), vec3<i32>(55334i, 26762i, -18346i), vec3<i32>(18168i, 2147483647i, 2147483647i), vec3<i32>(10760i, i32(-2147483648), -13674i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(6451i, -3888i, 1i), vec3<i32>(1i, 36352i, -18573i), vec3<i32>(26948i, i32(-2147483648), 1i), vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(1i, -1i, -51802i), vec3<i32>(33588i, 2147483647i, -44873i), vec3<i32>(-1i, i32(-2147483648), 20977i), vec3<i32>(-76133i, -34651i, 30525i), vec3<i32>(110454i, 1i, 2147483647i), vec3<i32>(4301i, -29029i, 9559i));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(23475u, 75169u), 4294967295u, vec3<i32>(-16056i, 1i, 1i));

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(232i, 1i, 22895i), vec3<i32>(0i, 0i, 13653i), vec3<i32>(10037i, 0i, 0i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-41198i, -1i, 30921i), vec3<i32>(-11052i, 28213i, -42345i), vec3<i32>(-37403i, -1i, 2147483647i), vec3<i32>(-21767i, 46142i, 24382i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-58906i, 1i, -24988i), vec3<i32>(-5362i, -22496i, -1i), vec3<i32>(0i, 4600i, -15572i), vec3<i32>(-55741i, 37901i, 1i), vec3<i32>(-12353i, -14665i, 0i), vec3<i32>(-12533i, -43152i, 2147483647i), vec3<i32>(-11994i, i32(-2147483648), i32(-2147483648)), vec3<i32>(16473i, 0i, i32(-2147483648)), vec3<i32>(0i, 18814i, -23633i), vec3<i32>(22112i, i32(-2147483648), 50659i), vec3<i32>(i32(-2147483648), i32(-2147483648), -23916i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(vec2<u32>(global2.b, ~max(~global1.a.x, arg_0.x)), 43210u, ~(-abs(-vec3<i32>(arg_2.c.x, arg_2.c.x, global2.c.x))));
    var var_1 = reverseBits(0i);
    return select(select(min(vec2<u32>(u_input.a, 0u), vec2<u32>(39867u, 1u)), vec2<u32>(~4294967295u, 13013u), vec2<bool>(true, true)) << (global2.a % vec2<u32>(32u)), arg_2.a, (false || all(vec4<bool>(true, true, true, true))) | true);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1960f, 1921f, _wgslsmith_div_f32(1304f, -136f), -105f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, -1066f, 1000f, 1000f)) - vec4<f32>(-1156f, 116f, -100f, -619f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-979f)), _wgslsmith_f_op_f32(-2142f * -864f)), 1f, _wgslsmith_f_op_f32(-1f))));
    var var_1 = _wgslsmith_f_op_f32(ceil(var_0.x));
    global2 = Struct_1(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(26206u, 907u) | func_3(vec4<u32>(1u, 26231u, 1u, 7147u), vec4<i32>(global2.c.x, 1i, -1i, u_input.d), Struct_1(vec2<u32>(global2.b, u_input.b), 31401u, global2.c)), global2.a, _wgslsmith_sub_vec2_u32(~global1.a, global1.a)), _wgslsmith_dot_vec4_u32(firstTrailingBit(abs(vec4<u32>(4294967295u, 4294967295u, 70443u, global2.b))), reverseBits(vec4<u32>(u_input.b, 0u, global1.a.x, u_input.e))) >> (firstTrailingBit(abs(global1.b | 0u)) % 32u), global4[_wgslsmith_index_u32(~global2.a.x, 20u)]);
    global4 = array<vec3<i32>, 20>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 1286f, var_0.x, _wgslsmith_div_f32(-171f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -227f))))));
    return Struct_1(_wgslsmith_sub_vec2_u32(abs(global2.a) << (select(global1.a, select(global2.a, vec2<u32>(global1.a.x, 4294967295u), false), select(vec2<bool>(true, false), vec2<bool>(true, true), true)) % vec2<u32>(32u)), vec2<u32>(0u, 1u) & ~_wgslsmith_sub_vec2_u32(vec2<u32>(14628u, 1u), global2.a)), global2.a.x, -(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(global1.c, global1.c), firstTrailingBit(global4[_wgslsmith_index_u32(global2.b, 20u)])) & (global2.c ^ _wgslsmith_mod_vec3_i32(global4[_wgslsmith_index_u32(1u, 20u)], vec3<i32>(global2.c.x, 21858i, 2147483647i)))));
}

fn func_1() -> Struct_1 {
    let var_0 = countOneBits(-1i);
    global1 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-global1.c.x, global1.c.x, 1i);
    let var_1 = 34872u;
    var var_2 = func_1();
    let var_3 = global1.c.yz;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1958f) - -1848f))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(global1.c.x, _wgslsmith_dot_vec2_i32(var_2.c.yz, vec2<i32>(-39499i, -2147483647i))) | (var_0.yx | -select(vec2<i32>(var_2.c.x, global2.c.x), var_0.yy, true)), var_2.c, -21002i);
}

