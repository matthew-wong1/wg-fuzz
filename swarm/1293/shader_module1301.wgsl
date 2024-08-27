struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-655f, 892f, 1201f, 177f, 592f, 403f, -1000f, 1314f, 1573f, -658f, 587f, -440f, -1212f, -272f, 328f, -603f, -1000f, 670f, 1000f, -1599f, 308f, -2527f, 218f, -1533f, -1000f);

var<private> global1: vec4<f32> = vec4<f32>(365f, -1513f, -401f, -470f);

var<private> global2: bool;

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> u32 {
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global2 = !(max(_wgslsmith_sub_i32(u_input.a, u_input.a) ^ 1i, 22710i) != (1i << (min(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 25865u, 4294967295u, 48852u), vec4<u32>(4534u, 16255u, 4294967295u, 27930u))) % 32u)));
    global0 = array<f32, 25>();
    return _wgslsmith_mod_u32(select(~_wgslsmith_clamp_u32(4294967295u, 27654u, 4850u) << (~_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u) % 32u), 52453u, select(any(vec4<bool>(true, true, true, true)), true, (global0[_wgslsmith_index_u32(69069u, 25u)] < 1300f) == true)), select(max(~(~22201u), 1u), 25408u, false));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 25u)] * _wgslsmith_div_f32(global1.x, global0[_wgslsmith_index_u32(0u, 25u)]))), !arg_0.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(1094f)), true)))))), -1926f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(622f + -164f)));
    var var_0 = any(vec4<bool>(false, (func_3() & reverseBits(4294967295u)) >= ~19163u, arg_0.a.x, !(global0[_wgslsmith_index_u32(~1u, 25u)] <= global1.x)));
    let var_1 = ~(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, 32264i), vec2<i32>(u_input.a, ~u_input.a)) << (max(vec2<u32>(_wgslsmith_add_u32(0u, 2533u), 1u), ~vec2<u32>(10938u, 1u)) % vec2<u32>(32u)));
    var var_2 = Struct_3(Struct_2(arg_0, Struct_1(vec4<bool>(any(vec4<bool>(arg_0.a.x, false, true, false)), false, !arg_0.a.x, arg_0.a.x && arg_0.a.x)), vec3<u32>(49608u, ~firstLeadingBit(38910u), firstTrailingBit(_wgslsmith_mod_u32(45762u, 34210u))), Struct_1(select(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), select(arg_0.a, vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, true, false)), arg_0.a.x | arg_0.a.x)), 0u), firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_add_i32(var_1.x, -40683i), -u_input.a), ~(-u_input.a >> (0u % 32u))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_div_f32(-161f, global1.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.b.x, 25u)]), _wgslsmith_f_op_f32(-175f * -1075f)))));
    return ~34563u;
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    let var_1 = ~min(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -72346i), vec2<i32>(u_input.a, -14406i)), _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(u_input.a, u_input.a)));
    global0 = array<f32, 25>();
    var var_2 = _wgslsmith_div_vec3_u32(~select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(41345u, 0u, 19289u)), 37300u, ~20519u), ~firstTrailingBit(vec3<u32>(1u, 4294967295u, 32867u)), var_0), vec3<u32>(func_2(Struct_1(vec4<bool>(true, var_0, true, var_0))), 25323u, 1u));
    let var_3 = global1.yy;
    return Struct_2(Struct_1(!vec4<bool>(true, true, var_0, 87426u != var_2.x)), Struct_1(select(select(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), false), vec4<bool>(var_0, var_0, false, true), !var_0), select(vec4<bool>(var_0, var_0, false, true), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, true, var_0, true)), true), !vec4<bool>(var_0, false, false, false))), max(vec3<u32>(32317u, 0u, var_2.x), ~vec3<u32>(~6265u, _wgslsmith_div_u32(65950u, 27521u), select(var_2.x, var_2.x, var_0))), Struct_1(select(select(!vec4<bool>(var_0, var_0, false, var_0), !vec4<bool>(var_0, true, var_0, true), vec4<bool>(false, false, false, true)), vec4<bool>(all(vec2<bool>(false, false)), -57145i > var_1, var_0, var_0), vec4<bool>(true, !var_0, var_0, !var_0))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), vec4<u32>(~(~select(4294967295u, 0u, false)), _wgslsmith_mult_u32(max(abs(1u), countOneBits(1u)), 1u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 25482u)), ~vec2<u32>(18488u, 1u)), 4294967295u), 4294967295u), select(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -26211i), countOneBits(vec2<i32>(u_input.a, u_input.a))), vec2<i32>(-5055i, _wgslsmith_mod_i32(-2147483647i, u_input.a)), !all(vec3<bool>(true, false, false)) && select(true, false, true)));
    let var_1 = vec2<f32>(-750f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(503f + -544f))))));
    var var_2 = 71433u;
    global2 = var_0.a.a.a.x | (~15806i >= select(39848i, -2147483647i, all(var_0.a.d.a)));
    let var_3 = reverseBits(max(vec4<u32>(var_0.a.e, var_0.a.c.x, var_0.a.e, ~_wgslsmith_add_u32(581u, var_0.b.x)), vec4<u32>(abs(var_0.b.x), ~50u, ~var_0.b.x, ~63151u) & var_0.b));
    global0 = array<f32, 25>();
    var var_4 = vec4<bool>(var_0.a.d.a.x, var_0.a.d.a.x, true, !(!(!var_0.a.b.a.x)) == func_1().b.a.x);
    var_2 = var_0.a.c.x;
    var var_5 = select(vec3<i32>(~abs(_wgslsmith_sub_i32(-42671i, u_input.a)), select(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -50059i), ~vec2<i32>(-20962i, var_0.c.x)), var_4.x), min(countOneBits(-12706i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, 30295i, -12267i), vec4<i32>(var_0.c.x, -60377i, var_0.c.x, var_0.c.x)) << (4294967295u % 32u))), _wgslsmith_add_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-19050i, -1i, var_0.c.x), vec3<i32>(u_input.a, u_input.a, 5146i)), -vec3<i32>(var_0.c.x, u_input.a, -2147483647i), true) | -(vec3<i32>(38376i, 2147483647i, 19388i) << (vec3<u32>(var_0.b.x, 1u, var_3.x) % vec3<u32>(32u))), vec3<i32>(0i, -15262i, reverseBits(var_0.c.x)) << (firstLeadingBit(vec3<u32>(1u, var_3.x, 19005u)) % vec3<u32>(32u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~((~vec2<u32>(var_3.x, var_3.x) << (var_0.b.wz % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_dot_vec2_u32(var_3.zx, var_3.yx), 7016u) % vec2<u32>(32u))), (func_2(Struct_1(var_0.a.a.a)) << (var_3.x % 32u)) & var_0.a.c.x, vec4<u32>(~28238u, (countOneBits(var_0.b.x) ^ _wgslsmith_sub_u32(var_3.x, 1u)) << (~var_3.x % 32u), var_3.x, countOneBits(_wgslsmith_mod_u32(0u, ~47639u))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0.b.x, 48921u) << (~24007u % 32u), var_3.x, var_0.a.c.x, 6790u), ~reverseBits(var_3)));
}

