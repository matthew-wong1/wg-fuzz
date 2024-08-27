struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(2053f, 1068f), Struct_1(-1284f, -158f), Struct_1(335f, -204f), Struct_1(-698f, 222f), Struct_1(-947f, -949f));

var<private> global2: array<Struct_3, 24>;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-769f, -238f), Struct_1(1000f, -216f), Struct_1(-1838f, -982f), Struct_1(1292f, -680f), Struct_1(-667f, -501f), Struct_1(-1177f, -689f), Struct_1(924f, 490f), Struct_1(-419f, 912f), Struct_1(369f, 1000f), Struct_1(-1449f, -610f), Struct_1(781f, -1138f));

var<private> global4: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> vec4<u32> {
    global0 = array<vec4<i32>, 3>();
    let var_0 = reverseBits(i32(-1i) * -17072i);
    let var_1 = false;
    var var_2 = i32(-1i) * -(~(_wgslsmith_add_i32(-39317i, u_input.b.x) | _wgslsmith_mult_i32(21438i, -1i)));
    var_2 = -5840i;
    return ~arg_3;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(sign(-653f));
    var var_2 = arg_0.b;
    var var_3 = max(firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(u_input.a ^ 1792u, 1u, 1366u), 1u, u_input.a, ~_wgslsmith_add_u32(u_input.a, 20241u))), ~(~vec4<u32>(~u_input.a, min(4294967295u, 0u), _wgslsmith_sub_u32(1u, u_input.a), 329u)));
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a ^ var_3.x, select(1u, 4294967295u, false) << (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_3.x, 28738u))) % 32u)), 11u)];
    return -702f;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    global4 = arg_0.a.b;
    let var_0 = Struct_3(arg_0.a, Struct_1(_wgslsmith_div_f32(arg_0.c, arg_0.c), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_0.a, arg_0.c, vec3<i32>(u_input.b.x, arg_1.x, 0i))), _wgslsmith_f_op_f32(func_3(arg_0.a, arg_0.c, vec3<i32>(arg_1.x, -7070i, -41280i))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(103f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c - -2612f))))));
    let var_1 = select(~1u, 42388u, var_0.a.b);
    let var_2 = !all(vec3<bool>(arg_0.a.a.x, any(vec3<bool>(arg_0.a.b, false, true)), arg_0.a.a.x));
    let var_3 = var_0.a;
    return var_0.c <= 324f;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    global3 = array<Struct_1, 11>();
    var var_0 = select(select(select(arg_1.a, !(!arg_1.a), any(!vec4<bool>(arg_1.b, true, arg_1.b, arg_2.a.x))), arg_1.a, !(!arg_1.a)), select(arg_1.a, !select(arg_1.a, select(arg_1.a, vec4<bool>(arg_2.a.x, true, true, arg_1.b), true), arg_1.a), arg_2.a.x), !select(arg_1.a, vec4<bool>(true, !arg_1.b, arg_1.a.x, true), all(vec2<bool>(arg_1.a.x, arg_1.b))));
    let var_1 = ~select(max(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 9016i, u_input.b.x) >> (arg_0.xzx % vec3<u32>(32u)), vec3<i32>(u_input.b.x, 4314i, u_input.b.x)), vec3<i32>(~(-58483i), 2147483647i, u_input.b.x)), vec3<i32>(u_input.b.x, ~1i, ~9240i), var_0.wxx);
    let var_2 = -var_1.x;
    return Struct_2(!select(arg_1.a, vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x || false, true), select(!vec4<bool>(arg_1.b, true, var_0.x, true), select(arg_1.a, vec4<bool>(var_0.x, true, false, var_0.x), arg_1.a.x), !vec4<bool>(arg_2.a.x, false, var_0.x, arg_2.a.x))), min(u_input.b.x, var_2) >= var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = func_4(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, u_input.a | 1u, reverseBits(u_input.a), _wgslsmith_mod_u32(u_input.a, 1u)), select(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), func_1(vec2<u32>(u_input.a, u_input.a), u_input.a, vec3<i32>(u_input.b.x, 1i, -1i), vec4<u32>(u_input.a, 0u, u_input.a, 127984u)), u_input.b.x >= -1i)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(68415u, 4294967295u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 56136u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 57149u, 41634u)) % vec4<u32>(32u)), vec4<u32>(1u, 103187u, 88490u, 44894u) << ((vec4<u32>(4294967295u, 4294967295u, 36014u, u_input.a) ^ vec4<u32>(35153u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)))), Struct_2(vec4<bool>(true & func_2(Struct_3(Struct_2(vec4<bool>(false, false, false, true), false), Struct_1(-645f, 1120f), 1715f), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)), false, false, !select(true, false, false)), true), Struct_4(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) & ~vec4<u32>(u_input.a, 51156u, u_input.a, 0u), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.a, 67667u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 31922u, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 22565u, u_input.a), vec4<u32>(4294967295u, 0u, 1u, u_input.a)), abs(vec4<u32>(8279u, u_input.a, 27770u, 9401u)))), ~vec4<u32>(u_input.a, func_1(vec2<u32>(14099u, 8623u), 384u, vec3<i32>(0i, 14561i, u_input.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)).x >> (18590u % 32u), u_input.a, ~u_input.a)), 5u)];
    var var_3 = false;
    let var_4 = Struct_1(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -589f));
    global0 = array<vec4<i32>, 3>();
    var var_5 = abs(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(~27782u, 3u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(-30344i, u_input.b.x, -43098i, u_input.b.x) & vec4<i32>(2147483647i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 42243i, u_input.b.x, -6936i), global0[_wgslsmith_index_u32(73957u, 3u)]) | global0[_wgslsmith_index_u32(1u, 3u)], max(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 3513i, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.a, 5773u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 2147483647i, 20935i, u_input.b.x)), global0[_wgslsmith_index_u32(~u_input.a, 3u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~abs((vec3<u32>(u_input.a, 0u, 23012u) << (vec3<u32>(4294967295u, 27551u, 29779u) % vec3<u32>(32u))) ^ select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 24413u), var_1.a.x)), _wgslsmith_dot_vec3_i32(-(vec3<i32>(var_5.x, -34487i, u_input.b.x) | var_5.xzw), vec3<i32>(_wgslsmith_div_i32(var_5.x, -9275i) | _wgslsmith_mod_i32(u_input.b.x, -28716i), var_5.x, var_5.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_4.b) * _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)), _wgslsmith_f_op_f32(f32(-1f) * -1062f))));
}

