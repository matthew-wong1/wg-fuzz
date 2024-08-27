struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global2: vec4<f32>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, 542f, 568f, global2.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2610f, global2.x, -757f, global2.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3721f, -824f, global2.x, global2.x))))));
    let var_1 = Struct_1(select(select(select(global1[_wgslsmith_index_u32(1u, 11u)], vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), false), vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), false), select(true, !select(true, true, false), global2.x <= -726f)), -(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 37447i, u_input.a) | vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), max(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(1i, -82667i, 14936i, u_input.a)))), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -2147483647i), countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a))), firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a << (59178u % 32u))), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -2147483647i, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-39046i, 0i, 5946i), vec3<i32>(16414i, u_input.a, 0i)), select(vec3<i32>(u_input.a, u_input.a, 10386i), vec3<i32>(u_input.a, -28582i, u_input.a), false)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    global2 = var_0;
    let var_2 = Struct_4(var_1, select(select(select(vec4<bool>(var_1.a.x, true, true, var_1.a.x), select(vec4<bool>(false, var_1.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), var_1.a.x), var_1.a.x), select(!vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, true, var_1.a.x), var_1.a.x), vec4<bool>(var_0.x <= -801f, false, true, any(var_1.a))), select(select(!vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), !vec4<bool>(var_1.a.x, var_1.a.x, true, false), true), !(!vec4<bool>(false, var_1.a.x, false, var_1.a.x)), all(!global1[_wgslsmith_index_u32(var_1.c.x, 11u)])), select(vec4<bool>(var_1.a.x, false, all(global1[_wgslsmith_index_u32(var_1.c.x, 11u)]), var_1.a.x), select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, false, var_1.a.x), false), vec4<bool>(var_1.a.x, true, true, var_1.a.x), u_input.a >= -34385i), true || all(global1[_wgslsmith_index_u32(0u, 11u)]))), ~abs(var_1.c.zw), Struct_2(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, var_0.x)))));
    let var_3 = (var_1.c.x & reverseBits(~_wgslsmith_dot_vec3_u32(var_1.c.wzx, var_2.a.c.zyy))) << (_wgslsmith_dot_vec3_u32(var_1.c.zwy, vec3<u32>(32562u, 12590u ^ var_2.a.c.x, 1u)) % 32u);
    return any(var_2.b);
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: bool) -> vec3<i32> {
    var var_0 = arg_0.d;
    let var_1 = vec2<f32>(arg_0.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) + _wgslsmith_div_f32(arg_0.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.b.x, global2.x) + arg_1.x))));
    let var_2 = select(~var_0.a.c.yz, ~vec2<u32>(0u, firstTrailingBit(36085u)), !var_0.a.a.yx);
    var var_3 = _wgslsmith_f_op_f32(abs(2284f));
    let var_4 = Struct_4(Struct_1(select(vec3<bool>(var_0.a.a.x, true, func_3()), vec3<bool>(true, arg_1.x == arg_0.d.b.x, true), false), vec4<i32>(47944i, 64494i, -2147483647i, ~abs(35915i)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(26598u, arg_0.c.x, 7152u, var_0.a.c.x) & var_0.a.c, select(var_0.a.c, arg_0.a.c, arg_2)), abs(~arg_0.d.a.b.yyw)), vec4<bool>(arg_2, any(arg_0.b), false, _wgslsmith_f_op_f32(-var_0.b.x) <= _wgslsmith_f_op_f32(f32(-1f) * -504f)), var_0.a.c.xz, arg_0.d);
    return var_0.a.b.yxy;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global0 = array<vec2<f32>, 27>();
    let var_0 = Struct_5(Struct_4(Struct_1(vec3<bool>(true, true, true), ~(~vec4<i32>(0i, 19689i, 31885i, 2147483647i)), ~(~vec4<u32>(1u, 0u, 29941u, 38740u)), func_2(Struct_4(Struct_1(global1[_wgslsmith_index_u32(40071u, 11u)], vec4<i32>(-23222i, u_input.a, u_input.a, -5854i), vec4<u32>(4294967295u, 1u, 59116u, 59290u), vec3<i32>(33785i, u_input.a, -3237i)), vec4<bool>(arg_0, false, false, arg_0), vec2<u32>(0u, 28302u), Struct_2(Struct_1(global1[_wgslsmith_index_u32(70125u, 11u)], vec4<i32>(-1i, u_input.a, -1i, u_input.a), vec4<u32>(0u, 64203u, 33685u, 0u), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<f32>(global2.x, global2.x, -891f))), vec2<f32>(global2.x, global2.x), arg_0)), select(!select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, arg_0, arg_0), true), vec4<bool>(all(vec2<bool>(arg_0, false)), false, true, true)), vec2<u32>(~countOneBits(1u), 37655u), Struct_2(Struct_1(!global1[_wgslsmith_index_u32(11351u, 11u)], vec4<i32>(0i, u_input.a, u_input.a, u_input.a), ~vec4<u32>(1u, 97164u, 40855u, 1u), vec3<i32>(65772i, 2147483647i, 0i)), vec3<f32>(_wgslsmith_f_op_f32(722f - 1354f), -1181f, _wgslsmith_f_op_f32(global2.x + global2.x)))), !vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_0, arg_0, arg_0), true)), false, !(1i == u_input.a), arg_0), Struct_3(Struct_1(global1[_wgslsmith_index_u32(1u, 11u)], select(~vec4<i32>(12207i, 23607i, u_input.a, u_input.a), vec4<i32>(-47820i, u_input.a, -2147483647i, -2147483647i), u_input.a <= u_input.a), abs(reverseBits(vec4<u32>(1u, 23611u, 71404u, 1u))), ~(-vec3<i32>(u_input.a, -51783i, u_input.a))), global2.x, Struct_1(select(global1[_wgslsmith_index_u32(~63975u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(16366u, 1672u), vec2<u32>(1u, 1u)), 11u)]), vec4<i32>(u_input.a, max(-11247i, 25549i), u_input.a, -1i), vec4<u32>(~4294967295u, ~27164u, ~13167u, 4294967295u), min(_wgslsmith_mod_vec3_i32(vec3<i32>(-14286i, -1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), select(vec3<i32>(-1i, -28761i, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i), true)))));
    let var_1 = 0u;
    let var_2 = ~var_0.c.a.c.yzx;
    let var_3 = vec2<bool>(true, arg_0);
    return StorageBuffer(~(~_wgslsmith_add_vec4_i32(vec4<i32>(15808i, var_0.a.d.a.d.x, var_0.a.a.d.x, u_input.a), vec4<i32>(var_0.a.a.b.x, u_input.a, u_input.a, 2147483647i) & var_0.c.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-889f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.d.b.x, _wgslsmith_f_op_f32(-var_0.a.d.b.x), var_0.b.x | var_3.x)))), func_2(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.a.d.b.yz))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, var_0.c.b))), arg_0), -countOneBits(_wgslsmith_add_i32(2147483647i, u_input.a) | abs(2147483647i)), -6155i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 27>();
    global1 = array<vec3<bool>, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(14196u, 27u)], vec2<f32>(global2.x, -949f), false)))) * global2.zz))), global2.wx));
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_0.x, global2.x, -696f) + vec4<f32>(161f, -504f, var_0.x, -371f))))))));
    let var_1 = global2.x;
    let x = u_input.a;
    s_output = func_1(all(vec2<bool>(true, !any(vec4<bool>(false, false, true, false)))));
}

