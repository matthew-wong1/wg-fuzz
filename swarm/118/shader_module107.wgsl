struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(20014i, true, vec2<u32>(25136u, 0u));

var<private> global1: array<Struct_1, 1>;

var<private> global2: u32 = 93962u;

var<private> global3: Struct_4 = Struct_4(7922i, Struct_1(true), vec3<f32>(-482f, -740f, 554f));

var<private> global4: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(0i, 2147483647i, i32(-2147483648), -72935i), vec4<i32>(0i, -30899i, -1i, 12259i), vec4<i32>(2147483647i, 1i, 1i, 2437i), vec4<i32>(-28534i, 0i, 59613i, -1906i), vec4<i32>(-64069i, 2147483647i, -42370i, -17720i), vec4<i32>(i32(-2147483648), -1i, -22632i, i32(-2147483648)), vec4<i32>(1i, -25358i, 1i, 19839i), vec4<i32>(-35862i, 0i, 0i, -39837i), vec4<i32>(-22994i, 45726i, -13915i, -1i), vec4<i32>(2139i, 1i, -9367i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 33828i, 30138i, 5666i), vec4<i32>(5310i, -1i, -44227i, 2147483647i), vec4<i32>(-40505i, 19961i, -5000i, 2147483647i), vec4<i32>(-1i, 37267i, 83888i, -22579i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(global3.a, global0.a, global0.a)), vec3<i32>(u_input.d, u_input.c.x, -global3.a)), global0.a), u_input.e.xy);
    let var_1 = 0u;
    let var_2 = vec4<i32>(firstTrailingBit(arg_2.x ^ ~11838i), arg_0.c, abs(-21448i), -12242i);
    var var_3 = vec3<f32>(1830f, _wgslsmith_f_op_f32(min(global3.c.x, _wgslsmith_f_op_f32(step(global3.c.x, -722f)))), global3.c.x);
    global4 = array<vec4<i32>, 14>();
    return arg_0.a.yw;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = !vec4<bool>(global0.b, all(vec3<bool>(any(vec2<bool>(global0.b, global3.b.a)), false, all(vec4<bool>(false, true, false, true)))), ~global0.c.x < 1u, !global3.b.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(global3.c.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(round(484f)))), select(vec2<bool>(arg_2.x < ~arg_2.x, true), var_0.xx, func_3(Struct_5(select(vec4<bool>(var_0.x, var_0.x, false, global3.b.a), vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, var_0.x, true, var_0.x)), Struct_2(false, Struct_1(false), Struct_1(true)), ~2147483647i), var_0.yz, ~vec2<i32>(global0.a, global0.a)))));
    let var_2 = global0.c.x;
    var var_3 = arg_1.x;
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -260f))), !all(select(!vec4<bool>(global0.b, false, global3.b.a, false), select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(global0.b, true, var_0.x, true), vec4<bool>(false, global3.b.a, true, var_0.x)), !vec4<bool>(false, global0.b, true, global3.b.a)))));
    return Struct_1(var_0.x);
}

fn func_1() -> bool {
    let var_0 = -5285i | global0.a;
    global4 = array<vec4<i32>, 14>();
    global4 = array<vec4<i32>, 14>();
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(select(global3.c.yx, vec2<f32>(global3.c.x, -1617f), u_input.b.x != global0.a)), vec4<f32>(global3.c.x, global3.c.x, global3.c.x, -1390f), ~u_input.a);
    var var_2 = !select(vec4<bool>(false | global0.b, false, false, false), !select(select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(global0.b, true, var_1.a, global3.b.a), true), select(vec4<bool>(false, false, false, var_1.a), vec4<bool>(false, true, true, var_1.a), vec4<bool>(global3.b.a, false, global0.b, false)), true), vec4<bool>(false, true, false, _wgslsmith_f_op_f32(1552f + 197f) <= _wgslsmith_f_op_f32(global3.c.x * -2013f)));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i) * -(max(vec3<i32>(global3.a, u_input.b.x, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global0.a, global0.a), vec3<i32>(global3.a, 1i, 77662i))) | ~(~u_input.b));
    var var_1 = u_input.e.x >= -2147483647i;
    var var_2 = !(!(global0.b == (global3.b.a || true)) || !func_1());
    var var_3 = ~global0.c.x;
    var var_4 = var_0.x;
    var_2 = global3.b.a;
    global2 = global0.c.x;
    var_3 = ~_wgslsmith_div_u32(0u, ~_wgslsmith_mult_u32(4294967295u, 1u & global0.c.x));
    let var_5 = vec3<bool>(global3.b.a, select(u_input.a.x != abs(~u_input.a.x), global3.b.a, global0.b), false);
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(141f)), global3.c.x)), 1u, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(20190u, global0.c.x), u_input.a), u_input.a.x, countOneBits(1u)), ~(~(~vec4<u32>(u_input.a.x, 1u, 53252u, u_input.a.x)))));
}

