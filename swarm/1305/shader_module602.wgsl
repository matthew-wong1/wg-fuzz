struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(true, 1369f, Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_2(vec2<f32>(-2053f, -1088f)), Struct_2(vec2<f32>(-311f, 1370f)), 8505u, Struct_2(vec2<f32>(1207f, 1000f))), Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_2(vec2<f32>(204f, -1264f)), Struct_2(vec2<f32>(-167f, 599f)), 82253u, Struct_2(vec2<f32>(-880f, 303f))), 12193i));

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<u32>(95668u, 0u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec3<u32>(0u, 1u, 3678u)), Struct_1(vec3<u32>(55586u, 4294967295u, 1u)), Struct_1(vec3<u32>(48834u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 86063u, 0u)), Struct_1(vec3<u32>(20772u, 1u, 11955u)), Struct_1(vec3<u32>(14297u, 0u, 44660u)), Struct_1(vec3<u32>(4294967295u, 9781u, 0u)), Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(0u, 57111u, 13024u)), Struct_1(vec3<u32>(35777u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(12589u, 26936u, 28063u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(58822u, 4294967295u, 81450u)), Struct_1(vec3<u32>(4294967295u, 1u, 29254u)), Struct_1(vec3<u32>(4294967295u, 77123u, 0u)), Struct_1(vec3<u32>(4294967295u, 19327u, 19538u)), Struct_1(vec3<u32>(62773u, 4582u, 42849u)), Struct_1(vec3<u32>(0u, 26784u, 0u)));

var<private> global3: Struct_2;

var<private> global4: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    global2 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(235f, global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1027f - arg_0.b.a.x))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(-global0.d.e.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - 208f) + 1000f)), -145f, 892f));
    global4 = true;
    global0 = global1[_wgslsmith_index_u32(1u, 1u)];
    var var_1 = -4768i;
    return ~_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(63261u, global0.c.d, 4294967295u, u_input.a) & vec4<u32>(arg_2, arg_0.a.a.x, 0u, 45596u))), vec4<u32>(arg_0.a.a.x, ~(u_input.a | arg_0.a.a.x), arg_2, ~_wgslsmith_dot_vec2_u32(global0.d.a.a.zz, vec2<u32>(34263u, arg_0.d))));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = global0.d.a.a.yx;
    global0 = global1[_wgslsmith_index_u32(24876u, 1u)];
    let var_1 = !((!global0.a || (global0.d.d == global0.c.d)) && true) == !global0.a;
    var var_2 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(global0.c.d, u_input.a, global0.c.a.a.x, u_input.a), vec4<u32>(u_input.a, 0u, var_0.x, var_0.x)), vec4<u32>(40437u, var_0.x, u_input.a, 73583u) << (vec4<u32>(u_input.a, 29286u, u_input.a, 0u) % vec4<u32>(32u))), ~vec4<u32>(40051u, u_input.a, 1514u, 4294967295u)));
    let var_3 = ~abs(vec4<u32>(~1u, var_0.x, ~countOneBits(global0.d.d), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 20837u) >> (var_2.yz % vec2<u32>(32u)), ~global0.d.a.a.yx)));
    return vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global3.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -766f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a.x), -1000f))) == 558f, false, true);
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(min(~(~_wgslsmith_mult_u32(global0.d.a.a.x, 56372u)), ~func_2(Struct_3(global2[_wgslsmith_index_u32(0u, 20u)], Struct_2(global0.d.c.a), Struct_2(global3.a), 1u, Struct_2(global0.d.b.a)), ~vec4<i32>(u_input.b.x, global0.e, global0.e, 6295i), abs(37886u)))), 1u)];
    var var_1 = !vec4<bool>(!all(func_3(false)), var_0.a & false, !var_0.a, var_0.a & (global0.c.c.a.x != _wgslsmith_f_op_f32(ceil(var_0.d.e.a.x))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(633f, 230f, global3.a.x, var_0.c.c.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-517f, _wgslsmith_f_op_f32(select(var_0.c.c.a.x, 239f, global0.a))), -537f, 212f, _wgslsmith_f_op_f32(-1623f - _wgslsmith_f_op_f32(f32(-1f) * -171f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c.a.x, -243f, 1750f, global0.b) + vec4<f32>(var_0.c.b.a.x, 819f, global0.b, global0.c.e.a.x)) * vec4<f32>(-927f, -145f, var_0.d.b.a.x, -372f)) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.b.a.x, 128f, 1347f, -631f), vec4<f32>(global0.b, global0.d.c.a.x, global3.a.x, 1641f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -155f, 504f, -659f) - vec4<f32>(global3.a.x, -1947f, 663f, global0.d.c.a.x))))));
    global1 = array<Struct_5, 1>();
    var var_3 = ~(~(~min(min(u_input.b, vec3<i32>(-26574i, var_0.e, global0.e)), vec3<i32>(u_input.c, var_0.e, 1i))));
    return Struct_3(global0.c.a, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, _wgslsmith_f_op_f32(-var_2.x)))), var_0.d.e, 856u, var_0.c.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    return Struct_2(global0.d.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.c.a, func_4(func_1(select(~vec3<u32>(u_input.a, 67045u, global0.d.d), _wgslsmith_sub_vec3_u32(global0.d.a.a, vec3<u32>(u_input.a, 1u, 42487u)), vec3<bool>(false, false, global0.a))), ~u_input.b), Struct_2(global0.d.c.a), 4294967295u, global0.c.c);
    var var_1 = !select(!vec2<bool>(1u >= var_0.a.a.x, true), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(global0.a, global0.a), global0.a)), !all(vec4<bool>(true, global0.a, true, global0.a))), true);
    global1 = array<Struct_5, 1>();
    var_0 = Struct_3(func_1(global0.d.a.a).a, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a)))), func_4(func_1(vec3<u32>(44104u, global0.c.d, global0.c.d) | _wgslsmith_add_vec3_u32(var_0.a.a, var_0.a.a)), select(-(~u_input.b), ~vec3<i32>(u_input.b.x, -2147483647i, global0.e) & u_input.b, select(select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(true, global0.a, global0.a), vec3<bool>(global0.a, false, var_1.x)), vec3<bool>(true, false, true), select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, true, false), true)))), 93287u, Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.a) * global0.d.e.a)))));
    var var_2 = global0.d.e.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~8597u, i32(-1i) * -961i, (u_input.b.zy << (var_0.a.a.zy % vec2<u32>(32u))) >> (~vec2<u32>(min(var_0.d, global0.c.a.a.x), ~global0.d.a.a.x) % vec2<u32>(32u)), firstLeadingBit((vec4<i32>(u_input.d, global0.e, -2147483647i, global0.e) << (_wgslsmith_add_vec4_u32(vec4<u32>(103642u, var_0.d, 37025u, 7815u), vec4<u32>(4913u, global0.d.a.a.x, 4519u, 4294967295u)) % vec4<u32>(32u))) ^ reverseBits(abs(vec4<i32>(2147483647i, global0.e, 0i, global0.e)))));
}

