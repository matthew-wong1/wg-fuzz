struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), true, vec4<i32>(-1i, -1i, -8746i, 0i)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), false, vec4<i32>(1i, -1i, 2147483647i, 1i)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false), false, vec4<i32>(-1i, 1i, -21810i, 0i)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false), true, vec4<i32>(2147483647i, i32(-2147483648), -55729i, 0i)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true), false, vec4<i32>(-56121i, 30849i, -22878i, 2147483647i)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true), false, vec4<i32>(49055i, 1i, 0i, 40095i)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), true, vec4<i32>(0i, i32(-2147483648), -16458i, 1i)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), false, vec4<i32>(9376i, 69658i, -1i, 17792i)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), false, vec4<i32>(-6294i, -6782i, -1i, -27210i)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), true, vec4<i32>(-1i, 48266i, 0i, -18035i)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, false), true, vec4<i32>(0i, -56210i, 29684i, 54239i)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true), false, vec4<i32>(37045i, -190i, i32(-2147483648), 1i)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true), true, vec4<i32>(i32(-2147483648), 50967i, 1i, 0i)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false), false, vec4<i32>(0i, -1i, i32(-2147483648), 3876i)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true), false, vec4<i32>(-1i, 2147483647i, 1i, 1i)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), true, vec4<i32>(19202i, 2147483647i, 0i, 25648i)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), true, vec4<i32>(-11721i, 1i, -1i, 13893i)));

var<private> global1: u32;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true), false, vec4<i32>(-8943i, 21828i, -1i, 15239i)), vec2<u32>(0u, 4294967295u), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true), true, vec4<i32>(-33075i, -1i, 0i, 30834i)), false, Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false), true, vec4<i32>(-11981i, 0i, -50039i, -14486i)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = arg_3.c.b;
    global1 = arg_3.b.x;
    global2 = !(!vec4<bool>(arg_3.e.c, true, all(select(vec3<bool>(false, global2.x, true), vec3<bool>(true, global2.x, arg_1), global3.d)), !(arg_1 && arg_2)));
    let var_1 = Struct_1(global2.wxx, select(!(!vec2<bool>(arg_1, arg_3.c.b.x)), arg_3.e.a.yy, arg_2), true, _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_3.e.d.x, -1i, -24976i, 1i), vec4<i32>(-17315i, 2147483647i, arg_3.c.d.x, 31015i) << (u_input.a % vec4<u32>(32u)))), ~(~(~u_input.c))));
    let var_2 = 1u;
    return any(select(vec3<bool>(all(vec4<bool>(arg_1, global2.x, global3.c.a.x, var_1.a.x)), !global2.x, true), vec3<bool>(true, true, true), !var_1.a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec3<bool> {
    global0 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_sub_u32(~(~select(u_input.a.x | 47466u, _wgslsmith_clamp_u32(arg_2.x, arg_2.x, 4294967295u), func_3(1u, false, true, Struct_2(arg_0, global3.b, global3.e, false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])))), ~global3.b.x);
    let var_1 = any(arg_1);
    let var_2 = select(select(!(!arg_1), !(!(!arg_1)), true), arg_1, select(vec4<bool>(global3.c.d.x == global3.c.d.x, all(!arg_0.a), all(select(vec2<bool>(var_1, false), vec2<bool>(false, true), vec2<bool>(arg_0.a.x, var_1))), false), !(!arg_1), select(vec4<bool>(true, global3.a.b.x, func_3(108891u, true, true, Struct_2(Struct_1(vec3<bool>(global2.x, arg_0.c, false), vec2<bool>(false, false), false, u_input.c), vec2<u32>(28289u, arg_2.x), Struct_1(vec3<bool>(arg_1.x, false, global2.x), vec2<bool>(true, var_1), arg_0.c, vec4<i32>(-1i, 46011i, 2147483647i, -30333i)), arg_1.x, arg_0)), true), arg_1, arg_0.a.x)));
    let var_3 = vec4<bool>(var_1, true, var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-748f, 474f), -669f, all(vec2<bool>(false, global2.x)))))) <= 3015f);
    return !vec3<bool>(true, global2.x, true);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = -1i;
    var var_1 = select(select(select(!arg_0.a, vec3<bool>(false, global3.c.b.x, true), !func_2(arg_0, vec4<bool>(false, global2.x, true, true), vec4<u32>(4294967295u, 15145u, 4294967295u, u_input.a.x))), select(select(global3.c.a, select(vec3<bool>(arg_0.a.x, false, true), vec3<bool>(false, true, false), vec3<bool>(global2.x, false, true)), !global2.wwz), func_2(Struct_1(arg_0.a, vec2<bool>(true, arg_0.b.x), true, vec4<i32>(13159i, u_input.c.x, u_input.c.x, u_input.c.x)), select(vec4<bool>(false, false, global2.x, arg_0.a.x), vec4<bool>(arg_0.a.x, true, true, true), global2.x), max(vec4<u32>(4294967295u, u_input.a.x, global3.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 29584u, 106669u, global3.b.x))), any(!vec3<bool>(false, true, global3.d))), _wgslsmith_sub_u32(global3.b.x, ~u_input.a.x) != max(1u, ~0u)), global2.zwx, arg_0.c);
    let var_2 = global3.b;
    let var_3 = abs(vec4<i32>(-8287i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.e.d.x, abs(global3.e.d.x), _wgslsmith_mult_i32(0i, u_input.b.x)), vec3<i32>(-global3.c.d.x, -2147483647i, global3.e.d.x)), arg_0.d.x ^ -_wgslsmith_div_i32(global3.e.d.x, 0i), min(u_input.c.x, ~(~63147i))));
    var var_4 = true;
    return 426f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2.x;
    global1 = u_input.a.x;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2115f, _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, global3.c.a.x, true), vec2<bool>(false, true), global2.x, u_input.c))))));
    global0 = array<Struct_1, 17>();
    global3 = Struct_2(global3.e, vec2<u32>(u_input.a.x << (u_input.a.x % 32u), _wgslsmith_add_u32(countOneBits(u_input.a.x), u_input.a.x ^ u_input.a.x)), Struct_1(select(global3.e.a, select(select(vec3<bool>(false, true, false), global3.c.a, global2.x), !vec3<bool>(global3.c.c, global2.x, global2.x), global3.c.a), vec3<bool>(true, global2.x, any(vec4<bool>(false, global3.d, global2.x, global3.c.c)))), func_2(Struct_1(global3.e.a, global2.yw, global2.x && global2.x, -global3.e.d), vec4<bool>(global2.x, global3.c.b.x, u_input.c.x > 22136i, u_input.c.x < global3.c.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 42043u, u_input.a.x, 4294967295u), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(1u, global3.b.x, global3.b.x, 1173u)))).zy, global3.a.b.x == (~global3.b.x != (global3.b.x >> (5468u % 32u))), global3.a.d), !(global3.b.x <= ~19264u), global0[_wgslsmith_index_u32(~4294967295u, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1047f, 1000f), 843f)))));
}

