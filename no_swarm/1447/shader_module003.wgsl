struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(72060u, 4294967295u), vec2<u32>(29264u, 4294967295u), vec2<u32>(16746u, 49872u), vec2<u32>(57258u, 18442u), vec2<u32>(4294967295u, 11670u), vec2<u32>(4294967295u, 17009u), vec2<u32>(23776u, 16342u), vec2<u32>(8203u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(71980u, 47957u), vec2<u32>(1u, 7382u), vec2<u32>(44900u, 4294967295u), vec2<u32>(1u, 60218u), vec2<u32>(1u, 4294967295u), vec2<u32>(48566u, 80606u), vec2<u32>(4294967295u, 1u), vec2<u32>(57148u, 12010u), vec2<u32>(8209u, 1u));

var<private> global1: u32 = 15041u;

var<private> global2: Struct_2 = Struct_2(252f, vec4<u32>(1u, 1u, 82741u, 6359u), vec4<u32>(50908u, 25139u, 37904u, 15463u), 160f, Struct_1(vec4<u32>(69106u, 23309u, 112330u, 33220u), vec4<bool>(false, true, false, false), -2040f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    global0 = array<vec2<u32>, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, -1475f, -725f, global2.d))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(899f, global2.d, 1423f, -264f) + vec4<f32>(global2.e.c, global2.a, 447f, global2.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-550f, global2.a, -729f, global2.e.c) - vec4<f32>(-827f, -675f, global2.a, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.e.c, -1254f, global2.d, global2.a))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-531f, global2.a, -111f, 909f), vec4<f32>(937f, global2.d, global2.d, -1000f))))))));
    let var_1 = Struct_3(vec4<f32>(global2.e.c, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(sign(-777f)))), _wgslsmith_f_op_f32(sign(global2.a))), -(~abs(~arg_0)));
    var var_2 = vec4<i32>(-(~(~arg_0.x)), arg_0.x, 2147483647i, 1i) >> (firstTrailingBit(~(~global2.e.a)) % vec4<u32>(32u));
    let var_3 = global2.e;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-889f - _wgslsmith_f_op_f32(var_0.x * 1697f))))));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.a.yy, ~global0[_wgslsmith_index_u32(0u, 19u)] ^ vec2<u32>(4294967295u, 1u)), global0[_wgslsmith_index_u32(0u, 19u)]);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.d))), _wgslsmith_f_op_f32(-global2.a), -271f);
    global2 = Struct_2(_wgslsmith_f_op_f32(sign(-732f)), ~_wgslsmith_add_vec4_u32(global2.c, ~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, u_input.a.x, global2.e.a.x, 2112u), vec4<u32>(0u, var_0.x, u_input.a.x, var_0.x))), global2.e.a, 735f, Struct_1(vec4<u32>(4294967295u, ~u_input.a.x, 1u, 23004u), !global2.e.b, _wgslsmith_f_op_f32(func_3(vec3<i32>(-2147483647i, -16138i, 1i), !select(false, false, false)))));
    var var_2 = false;
    global2 = Struct_2(_wgslsmith_f_op_f32(select(3356f, global2.a, any(select(vec2<bool>(global2.e.b.x, global2.e.b.x), global2.e.b.yw, false)))), vec4<u32>(~arg_0, firstTrailingBit(min(0u, 36690u)) >> (abs(global2.b.x | 2302u) % 32u), max(global2.c.x, arg_0), var_0.x >> (var_0.x % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, ~(~arg_0), 33066u, global2.c.x), global2.c), var_1.x, global2.e);
    return Struct_2(895f, _wgslsmith_mult_vec4_u32(global2.e.a << ((global2.b & (vec4<u32>(u_input.a.x, 65245u, u_input.a.x, u_input.a.x) & vec4<u32>(arg_0, global2.c.x, 0u, u_input.a.x))) % vec4<u32>(32u)), global2.c), abs(global2.e.a << (global2.c % vec4<u32>(32u))), var_1.x, Struct_1(~global2.e.a, !select(vec4<bool>(true, false, global2.e.b.x, false), select(vec4<bool>(true, false, global2.e.b.x, true), vec4<bool>(global2.e.b.x, true, false, global2.e.b.x), vec4<bool>(true, false, false, true)), vec4<bool>(false, global2.e.b.x, true, true)), _wgslsmith_f_op_f32(-global2.a)));
}

fn func_1() -> f32 {
    let var_0 = func_2(u_input.a.x, -(i32(-1i) * -(~15301i)));
    global0 = array<vec2<u32>, 19>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(884f, global2.a, _wgslsmith_f_op_f32(func_3(vec3<i32>(0i, 3284i, 2147483647i), global2.e.b.x)), _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global2.e.c, -1255f, global2.e.c)) - _wgslsmith_div_vec4_f32(vec4<f32>(1421f, var_0.e.c, 678f, var_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, -1497f, global2.a, -135f)))))), _wgslsmith_clamp_vec3_i32(-((vec3<i32>(0i, 2147483647i, -876i) << (var_0.c.zzx % vec3<u32>(32u))) ^ reverseBits(vec3<i32>(-60563i, -6627i, 2147483647i))), min(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(1i, 1i, 1i))), (select(vec3<i32>(16852i, -1i, -1125i), vec3<i32>(-29926i, -12141i, 31199i), vec3<bool>(global2.e.b.x, false, global2.e.b.x)) ^ max(vec3<i32>(-357i, 2147483647i, 20055i), vec3<i32>(-2147483647i, 42938i, -1679i))) << (var_0.e.a.yww % vec3<u32>(32u))));
    global1 = 82357u;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(var_1.a)), _wgslsmith_sub_vec3_i32(~select(~vec3<i32>(2147483647i, var_1.b.x, 14496i), firstTrailingBit(vec3<i32>(1i, -2147483647i, var_1.b.x)), !var_0.e.b.x), ~vec3<i32>(0i, var_1.b.x, var_1.b.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.d, func_2(global2.e.a.x << (var_0.e.a.x % 32u), -var_2.b.x).e.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-506f - _wgslsmith_f_op_f32(global2.d - 1536f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(-858f - global2.e.c))), 652f));
    global1 = 25574u;
    var var_1 = vec3<u32>(global2.b.x, u_input.a.x, 0u);
    global0 = array<vec2<u32>, 19>();
    let var_2 = 242f;
    let var_3 = !select(func_2(~(~var_1.x), 1i).e.b.xww, !global2.e.b.zzy, !(true && global2.e.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~min(i32(-1i) * -80612i, _wgslsmith_dot_vec3_i32(vec3<i32>(-76001i, 2330i, -28520i) >> (vec3<u32>(global2.b.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(-17693i, 0i, 0i))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_2)))), ~min(global2.b, select(global2.b, global2.c, select(global2.e.b, vec4<bool>(var_3.x, var_3.x, true, true), vec4<bool>(true, var_3.x, var_3.x, var_3.x)))));
}

