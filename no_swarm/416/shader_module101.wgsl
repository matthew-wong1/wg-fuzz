struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-1000f, 422f, 913f, -1901f), vec4<i32>(2147483647i, 0i, 2147483647i, -32045i), Struct_1(false), -2825f, Struct_1(true));

var<private> global1: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(4294967295u, 1117f, -1000f, true, vec4<i32>(-18251i, -1i, -15569i, -13239i)), Struct_5(11371u, -868f, -1531f, false, vec4<i32>(-4116i, 16013i, 40363i, -1i)), Struct_5(0u, 360f, 132f, false, vec4<i32>(1i, -23644i, -1i, 39805i)), Struct_5(10699u, 558f, -702f, false, vec4<i32>(-33844i, 2147483647i, 2147483647i, -1i)), Struct_5(3249u, -1096f, 838f, true, vec4<i32>(-1i, -5937i, 2147483647i, 1i)));

var<private> global2: i32 = -1i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    let var_0 = Struct_1(global0.e.a);
    global2 = u_input.b;
    var var_1 = vec2<u32>(u_input.c.x, arg_1.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -497f, arg_0))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.d, 2125f, -1425f, global0.d)))))), ~vec4<i32>(select(_wgslsmith_add_i32(global0.b.x, global0.b.x), u_input.a.x, all(vec4<bool>(false, global0.e.a, global0.c.a, true))), u_input.a.x, -9011i, ~min(global0.b.x, global0.b.x)), Struct_1(var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -670f), Struct_1(false));
    let var_3 = select(vec4<bool>(select(global0.e.a, all(vec2<bool>(false, true)), global0.c.a) & var_0.a, global0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(trunc(global0.d))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f + 1304f) * _wgslsmith_f_op_f32(arg_0 + var_2.a.x)), global0.e.a), !select(select(select(vec4<bool>(global0.c.a, false, true, false), vec4<bool>(var_2.c.a, true, true, var_0.a), vec4<bool>(var_2.e.a, var_0.a, false, false)), select(vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(false, global0.e.a, true, global0.e.a), global0.c.a), any(vec3<bool>(false, true, false))), vec4<bool>(true, any(vec4<bool>(global0.c.a, var_2.e.a, true, var_0.a)), false | var_0.a, true), var_2.c.a), select(select(vec4<bool>(var_2.c.a, any(vec2<bool>(true, false)), all(vec3<bool>(false, true, false)), var_0.a & global0.c.a), !(!vec4<bool>(var_0.a, false, global0.c.a, true)), !(!vec4<bool>(var_2.c.a, false, var_2.e.a, var_0.a))), select(vec4<bool>(all(vec2<bool>(false, var_2.c.a)), false || var_2.c.a, select(var_0.a, true, false), true), select(vec4<bool>(true, false, false, var_2.c.a), !vec4<bool>(true, true, global0.e.a, global0.e.a), !vec4<bool>(var_0.a, var_0.a, false, var_0.a)), vec4<bool>(var_2.e.a == var_0.a, var_2.e.a, global0.a.x == -783f, select(true, false, global0.c.a))), !select(!vec4<bool>(true, false, false, global0.e.a), !vec4<bool>(var_2.c.a, false, true, var_0.a), select(vec4<bool>(var_2.e.a, global0.c.a, false, global0.e.a), vec4<bool>(false, global0.e.a, var_2.c.a, true), vec4<bool>(var_2.c.a, false, true, var_2.c.a)))));
    return ~_wgslsmith_dot_vec4_i32(~(vec4<i32>(-13224i, var_2.b.x, global0.b.x, 47890i) | max(vec4<i32>(13699i, 1i, global0.b.x, -22288i), vec4<i32>(38938i, 72099i, 7547i, u_input.b))), min(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(-40483i, global0.b.x, global0.b.x, global0.b.x)), global0.b), global0.b));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1068f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f)))));
    let var_1 = Struct_4(Struct_1(any(select(vec3<bool>(false, global0.c.a, false), vec3<bool>(global0.c.a, global0.c.a, true), vec3<bool>(false, global0.e.a, global0.e.a))) || any(!vec2<bool>(global0.c.a, false))), vec2<bool>(-u_input.a.x <= 2147483647i, true), vec4<bool>(select(select(false, true, false) || any(vec2<bool>(true, true)), true, global0.e.a), global0.e.a, true, func_3(-1000f, ~vec3<u32>(1u, u_input.c.x, u_input.c.x)) != _wgslsmith_dot_vec2_i32(select(global0.b.yz, vec2<i32>(u_input.b, -1i), vec2<bool>(global0.c.a, global0.e.a)), u_input.a.zy & global0.b.xz)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(651f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a.x)), 1f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(1437f, 1643f), _wgslsmith_f_op_f32(global0.a.x - -1300f)), _wgslsmith_f_op_f32(f32(-1f) * -2050f), true || (0u >= u_input.c.x))))));
    let var_3 = 2154u;
    var var_4 = _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(u_input.a.x, firstLeadingBit(global0.b.x)), 2147483647i), -28146i), -_wgslsmith_mod_i32(countOneBits(1i), -2147483647i) & _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, global0.b.x << (u_input.c.x % 32u)), -1i));
    return global0.b.x;
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = u_input.b;
    global2 = -global0.b.x;
    var_0 = func_2();
    global0 = Struct_2(global0.a, vec4<i32>(-50892i, ~(-1i), -1i, func_3(_wgslsmith_f_op_f32(271f * global0.a.x), u_input.c.yxy)) ^ vec4<i32>(63228i, func_3(-326f, u_input.c.wzx), _wgslsmith_div_i32(u_input.a.x, ~global0.b.x), -2147483647i), arg_0, global0.a.x, arg_0);
    var var_1 = Struct_4(Struct_1(all(!vec2<bool>(arg_0.a, arg_0.a))), vec2<bool>(true, any(vec4<bool>(true, true, true, true)) & !any(vec4<bool>(true, true, global0.e.a, true))), vec4<bool>(!any(!vec3<bool>(false, arg_0.a, false)), false, !any(!vec2<bool>(global0.c.a, false)), false || !global0.c.a));
    return (vec2<u32>(1u, 1u) >> (_wgslsmith_div_vec2_u32(u_input.c.xy, ~u_input.c.xz) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, max(_wgslsmith_div_u32(0u, u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, 1u))), vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 5>();
    var var_0 = func_1(global0.e);
    global2 = 15367i;
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -925f) - global0.d), _wgslsmith_f_op_f32(-123f * global0.d), _wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))))), global0.b & vec4<i32>(~global0.b.x >> (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) % 32u), 1i, _wgslsmith_div_i32(u_input.b, -u_input.b), 66115i), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-407f + -324f))), Struct_1(global0.e.a));
    var_0 = ~vec2<u32>(31957u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, countOneBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c.wwz << (vec3<u32>(u_input.c.x, 69920u, 13521u) % vec3<u32>(32u))), ~(vec3<u32>(var_0.x, 4294967295u, 43300u) | u_input.c.yxx))), u_input.c.zwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.xxz)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-global0.a)) + global0.a))));
}

