struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(66862u, 1u, 39705u, 68809u), vec4<u32>(4294967295u, 1u, 45491u, 103304u), vec4<u32>(87887u, 2464u, 1u, 1u), vec4<u32>(1u, 0u, 57603u, 24525u), vec4<u32>(17533u, 96429u, 16131u, 43095u), vec4<u32>(79502u, 0u, 56455u, 1u), vec4<u32>(0u, 9954u, 0u, 58894u), vec4<u32>(40512u, 1u, 4294967295u, 35477u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(48585u, 0u, 29041u, 0u), vec4<u32>(99121u, 4294967295u, 17448u, 0u), vec4<u32>(49306u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 0u, 4294967295u, 16225u), vec4<u32>(32605u, 40073u, 1u, 4294967295u), vec4<u32>(81405u, 4294967295u, 23420u, 4294967295u), vec4<u32>(0u, 17259u, 42210u, 0u), vec4<u32>(42586u, 53781u, 45124u, 59899u), vec4<u32>(1u, 4294967295u, 0u, 9104u), vec4<u32>(1980u, 4294967295u, 1u, 4294967295u), vec4<u32>(39279u, 58041u, 15280u, 14568u), vec4<u32>(4294967295u, 11688u, 0u, 38105u), vec4<u32>(3117u, 97298u, 1u, 57244u), vec4<u32>(10771u, 0u, 0u, 5593u), vec4<u32>(4294967295u, 0u, 39374u, 2707u), vec4<u32>(27025u, 0u, 4294967295u, 0u), vec4<u32>(1u, 0u, 7269u, 1u));

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = -vec2<i32>(-872i, ~(~(~global1.a.b.x)));
    let var_1 = global1.a;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_1.a))));
    var var_3 = vec4<u32>(global1.d.a.x, 0u, _wgslsmith_div_u32(1u, u_input.b), u_input.b);
    var var_4 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(f32(-1f) * -2572f)), vec3<i32>(-2147483647i, -global1.d.c, global1.a.b.x)), Struct_3(global1.a, !all(select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(false, global1.d.e, false), vec3<bool>(true, false, true))), Struct_1(min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 16095u), var_3.xy), vec2<u32>(var_3.x, var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d.b)), var_1.b.x, global1.d.a.x, !global1.d.e), global1.d), global1.a.b.yy);
    return vec3<bool>(global3.x & var_4.b.c.e, select(true, !any(!vec4<bool>(global3.x, true, global3.x, global1.b)), global3.x || true), any(!vec4<bool>(select(false, true, false), global3.x | true, !global3.x, 795f == global1.a.a)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    global3 = select(func_3(1u), !vec3<bool>(true, any(vec3<bool>(true, arg_2.b.d.e, global3.x)) & global3.x, !arg_3.c.e), select(vec3<bool>(true, arg_3.c.e, true), select(!select(vec3<bool>(true, arg_3.d.e, global1.c.e), vec3<bool>(global1.d.e, false, global3.x), global3.x), vec3<bool>(func_3(global1.d.d).x, func_3(8405u).x, select(false, false, global1.c.e)), vec3<bool>(global1.c.e, arg_2.b.c.e, true | global1.d.e)), arg_3.b));
    let var_0 = Struct_2(-547f, arg_0.b);
    var var_1 = Struct_1(vec2<u32>(4294967295u, global1.d.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1057f, -118f, arg_0.a, -1206f) * vec4<f32>(-195f, 1689f, -472f, -1000f)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global1.d.b, vec4<f32>(644f, 1109f, -1771f, -108f), vec4<bool>(true, true, true, global1.d.e))))))), 2147483647i, u_input.b, false);
    var var_2 = _wgslsmith_clamp_u32(arg_3.c.d, ~(_wgslsmith_mod_u32(var_1.a.x, var_1.d ^ arg_3.d.d) >> (31331u % 32u)), _wgslsmith_div_u32(~(~4294967295u), select(0u, reverseBits(~var_1.d), global1.d.e)));
    return true;
}

fn func_1() -> StorageBuffer {
    let var_0 = 1u;
    var var_1 = select(vec3<bool>(any(vec3<bool>(global1.d.e, true, true)), false, any(vec4<bool>(true, false, true, any(vec3<bool>(global1.d.e, global1.d.e, global1.c.e))))), !(!(!vec3<bool>(global3.x, false, global3.x))), select(!select(vec3<bool>(true, false, global1.c.e), vec3<bool>(global1.c.e, true, global1.c.e), false), vec3<bool>(global3.x, true | func_2(Struct_2(-104f, vec3<i32>(-4186i, u_input.c, 11954i)), -12883i, Struct_4(global1.a, Struct_3(global1.a, global1.d.e, global1.c, Struct_1(global1.d.a, vec4<f32>(global1.c.b.x, global1.c.b.x, 1787f, global1.c.b.x), 1i, 1u, true)), global1.a.b.xy), Struct_3(Struct_2(1000f, global1.a.b), false, global1.d, global1.d)), false), false));
    var var_2 = global1.a.b;
    let var_3 = vec4<bool>(any(!select(vec2<bool>(global1.d.e, false), vec2<bool>(var_1.x, false), select(global3.xx, vec2<bool>(global1.d.e, false), global3.x))), false, func_2(global1.a, -12091i, Struct_4(Struct_2(1585f, global0[_wgslsmith_index_u32(1u, 17u)]), Struct_3(Struct_2(-1530f, global1.a.b), true, Struct_1(vec2<u32>(var_0, var_0), global1.c.b, global1.c.c, 0u, true), global1.d), -vec2<i32>(-46150i, u_input.a)), Struct_3(global1.a, true, Struct_1(global1.d.a, vec4<f32>(-714f, -913f, global1.c.b.x, 764f), u_input.a, global1.d.d, global1.c.e), Struct_1(global1.c.a, vec4<f32>(global1.a.a, global1.a.a, -124f, -1335f), var_2.x, global1.c.d, var_1.x))) | false, global1.d.e);
    var var_4 = Struct_3(Struct_2(-1502f, global0[_wgslsmith_index_u32(0u, 17u)]), !func_2(Struct_2(global1.c.b.x, global0[_wgslsmith_index_u32(78692u, 17u)]), -42185i, Struct_4(Struct_2(556f, global1.a.b), Struct_3(global1.a, global1.c.e, Struct_1(vec2<u32>(21713u, 9703u), global1.d.b, u_input.a, var_0, global3.x), global1.d), global1.a.b.yx), Struct_3(Struct_2(global1.d.b.x, global0[_wgslsmith_index_u32(u_input.b, 17u)]), global1.c.e, Struct_1(global1.d.a, vec4<f32>(global1.d.b.x, 434f, global1.c.b.x, -1542f), u_input.c, 24330u, global3.x), global1.c)) | func_2(Struct_2(1032f, global0[_wgslsmith_index_u32(4294967295u, 17u)]), ~(~u_input.a), Struct_4(Struct_2(-847f, vec3<i32>(global1.d.c, u_input.c, global1.c.c)), Struct_3(global1.a, global3.x, Struct_1(global1.d.a, vec4<f32>(-1000f, 1214f, global1.c.b.x, global1.d.b.x), u_input.c, u_input.b, global3.x), global1.c), _wgslsmith_add_vec2_i32(var_2.yy, vec2<i32>(global1.c.c, var_2.x))), Struct_3(Struct_2(1212f, vec3<i32>(31576i, u_input.c, -25389i)), any(var_3), global1.d, global1.c)), global1.d, Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(step(780f, 1002f)), _wgslsmith_f_op_f32(-global1.a.a), global1.a.a) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.d.b + global1.d.b)))), firstTrailingBit(u_input.c), 38162u | min(~0u, ~u_input.b), true));
    return StorageBuffer(vec2<i32>(firstTrailingBit(~(~global1.d.c)), _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, var_2.x, global1.c.c), vec4<i32>(-2147483647i, var_2.x, 66562i, var_4.d.c)) & select(42469i, 67964i, true))), vec4<f32>(745f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.c.b.x)) * -1707f), _wgslsmith_f_op_f32(f32(-1f) * -197f), global1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global0 = array<vec3<i32>, 17>();
    let var_1 = vec4<i32>(-1i, -1i ^ _wgslsmith_dot_vec3_i32(global1.a.b, _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(~38510u, 17u)], -vec3<i32>(-26510i, var_0, 2147483647i))), global1.c.c, -1i);
    let x = u_input.a;
    s_output = func_1();
}

