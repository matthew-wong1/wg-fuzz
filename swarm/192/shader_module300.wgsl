struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4>;

var<private> global1: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(22801u, 5366u, 0u, 0u), vec4<u32>(92915u, 9009u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 50010u, 0u), vec4<u32>(0u, 4294967295u, 22606u, 4294967295u), vec4<u32>(12535u, 4294967295u, 4294967295u, 16787u), vec4<u32>(1u, 97657u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 8954u, 56688u), vec4<u32>(80699u, 0u, 52124u, 6465u), vec4<u32>(37519u, 0u, 0u, 56304u), vec4<u32>(0u, 8927u, 8517u, 0u), vec4<u32>(28646u, 22376u, 4294967295u, 1u), vec4<u32>(73157u, 1u, 1u, 34463u), vec4<u32>(20123u, 0u, 1u, 64120u), vec4<u32>(1u, 36381u, 21288u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 0u, 66235u, 39847u));

var<private> global2: array<Struct_4, 16>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_2(Struct_1(true), Struct_1(true)), -163f, vec2<f32>(501f, -1444f)), Struct_3(Struct_2(Struct_1(false), Struct_1(true)), 952f, vec2<f32>(697f, -1000f)), Struct_3(Struct_2(Struct_1(true), Struct_1(true)), 1197f, vec2<f32>(-1050f, -942f)), Struct_3(Struct_2(Struct_1(true), Struct_1(true)), 234f, vec2<f32>(333f, -1471f)), Struct_3(Struct_2(Struct_1(true), Struct_1(true)), -139f, vec2<f32>(2333f, 628f)), Struct_3(Struct_2(Struct_1(true), Struct_1(true)), 161f, vec2<f32>(-897f, -160f)), Struct_3(Struct_2(Struct_1(false), Struct_1(true)), 1038f, vec2<f32>(363f, 653f)), Struct_3(Struct_2(Struct_1(false), Struct_1(true)), 1218f, vec2<f32>(-1433f, 141f)), Struct_3(Struct_2(Struct_1(false), Struct_1(false)), -2446f, vec2<f32>(-1263f, 613f)), Struct_3(Struct_2(Struct_1(false), Struct_1(true)), -429f, vec2<f32>(532f, -1564f)), Struct_3(Struct_2(Struct_1(true), Struct_1(true)), -496f, vec2<f32>(769f, 1271f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(global3.a, global3.a);
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 16u)];
    global4 = array<Struct_3, 11>();
    var_0 = var_1.b;
    var var_2 = u_input.d.x;
    return 229f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> vec2<bool> {
    global3 = arg_3.b;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(-537f * 938f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a + 1555f) - arg_2), -861f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_3.a), -1516f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, arg_0.x, arg_0.x, arg_3.a)) - vec4<f32>(arg_0.x, -170f, arg_2, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-609f, -642f, -184f, arg_3.a) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1449f, -680f, -923f, 1172f)))), select(vec4<bool>(false, arg_3.b.a.a, false, arg_3.b.a.a), select(vec4<bool>(global3.b.a, arg_3.b.b.a, false, global3.b.a), vec4<bool>(false, arg_3.b.b.a, global3.b.a, false), vec4<bool>(arg_3.b.a.a, false, arg_3.b.b.a, true)), true)))));
    var var_1 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, 0i << (1u % 32u)), vec3<i32>(~u_input.a, -2147483647i, _wgslsmith_mult_i32(-7472i, u_input.a))), vec3<i32>(1i, ~u_input.b, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c.x, u_input.c.x) ^ -u_input.a, u_input.c.x)));
    let var_2 = !(!(any(select(vec4<bool>(global3.b.a, global3.b.a, true, false), vec4<bool>(arg_1.b.a, true, false, arg_1.b.a), arg_3.b.b.a)) && true));
    global2 = array<Struct_4, 16>();
    return select(select(vec2<bool>(any(!vec4<bool>(arg_3.b.b.a, global3.b.a, true, var_2)), false), vec2<bool>(!(!arg_3.b.b.a), true), !(!(!vec2<bool>(arg_3.b.b.a, false)))), select(!vec2<bool>(arg_1.b.a, false), !select(select(vec2<bool>(var_2, global3.b.a), vec2<bool>(true, false), true), !vec2<bool>(arg_3.b.a.a, global3.b.a), vec2<bool>(global3.a.a, true)), vec2<bool>(true, true)), !vec2<bool>(global3.a.a == global3.b.a, all(select(vec2<bool>(true, arg_3.b.a.a), vec2<bool>(arg_3.b.b.a, true), false))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    global4 = array<Struct_3, 11>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-858f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(306f + 334f) - _wgslsmith_f_op_f32(f32(-1f) * -412f)))), Struct_2(Struct_1(true), Struct_1(false)));
    global0 = array<vec4<i32>, 4>();
    let var_1 = vec2<bool>(all(vec2<bool>(any(vec3<bool>(var_0.b.b.a, global3.b.a, var_0.b.a.a)), any(select(vec4<bool>(global3.b.a, false, false, true), vec4<bool>(global3.b.a, false, false, global3.a.a), true)))), all(func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-686f, var_0.a) + vec2<f32>(695f, var_0.a)))), var_0.b, _wgslsmith_f_op_f32(func_3()), var_0)));
    let var_2 = true;
    return var_0.b;
}

fn func_1() -> Struct_2 {
    return func_2(global3.a, u_input.c | _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.b), max(u_input.c.x, -2147483647i)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(26328u, u_input.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-984f)), _wgslsmith_f_op_f32(1446f + -538f))))))), ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 4294967295u), vec3<u32>(u_input.d.x, 16879u, u_input.d.x)))));
}

