struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(11958u, 1u);

var<private> global1: array<vec4<bool>, 21>;

var<private> global2: vec2<f32>;

var<private> global3: Struct_2 = Struct_2(false, Struct_1(vec4<bool>(false, false, false, true), -9142i, false, vec3<bool>(true, true, false)), -2319f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_4) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 66998u, u_input.d), vec3<u32>(abs(_wgslsmith_clamp_u32(arg_1.a, 4294967295u, arg_1.a)), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, 29668u, 109496u), vec4<u32>(arg_2, arg_2, arg_2, arg_1.a)))), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~4294967295u), arg_0, ~118325u << ((u_input.b << (global0.x % 32u)) % 32u)), countOneBits(~vec3<u32>(arg_0, global0.x, u_input.d))));
    let var_1 = select(u_input.b, 17917u, arg_3.a.a) | ~(1u ^ ~(arg_2 ^ 54152u));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.c, -646f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, 1985f)))))));
    var var_2 = true;
    let var_3 = vec2<bool>(true, all(!vec3<bool>(true, any(arg_1.c.b.d.zz), true)));
    return _wgslsmith_f_op_f32(floor(387f));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<u32>) -> vec3<f32> {
    let var_0 = arg_0.c;
    return vec3<f32>(_wgslsmith_f_op_f32(func_3(0u, Struct_3(0u, ~(vec3<i32>(global3.b.b, arg_1.x, -2147483647i) << (vec3<u32>(arg_2.x, arg_2.x, arg_2.x) % vec3<u32>(32u))), Struct_2(true, Struct_1(global1[_wgslsmith_index_u32(u_input.d, 21u)], -10124i, arg_0.c.b.c, vec3<bool>(global3.b.d.x, true, true)), -1032f), Struct_2(true, Struct_1(var_0.b.a, u_input.a.x, arg_0.d.a, arg_0.c.b.d), _wgslsmith_f_op_f32(floor(2202f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global2.x))))), 15548u, Struct_4(arg_0.c, Struct_1(arg_0.c.b.a, 25136i, 12977i == arg_0.b.x, arg_0.c.b.a.zwx), arg_0.c.b.d.x))), -272f, _wgslsmith_f_op_f32(select(arg_0.e, -396f, false)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = global3.b.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(42822u, u_input.a.xxw, Struct_2(false, global3.b, 240f), Struct_2(global3.a, Struct_1(global1[_wgslsmith_index_u32(global0.x, 21u)], global3.b.b, true, arg_1), -1000f), global2.x), min(u_input.a.zzw, u_input.a.zyx), vec2<u32>(12338u, 0u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.c, 1884f, -705f)))), vec3<bool>(true, all(select(arg_1.zx, arg_1.zy, var_0.x)), false)))));
    let var_2 = global3.b;
    global3 = Struct_2(var_2.a.x, Struct_1(select(select(var_2.a, !global1[_wgslsmith_index_u32(1u, 21u)], true), select(select(vec4<bool>(false, arg_1.x, global3.a, true), vec4<bool>(arg_1.x, var_0.x, true, true), global1[_wgslsmith_index_u32(u_input.b, 21u)]), !vec4<bool>(true, true, global3.a, var_2.a.x), global3.a | global3.a), vec4<bool>(!var_0.x, true, any(global3.b.d.zy), true)), global3.b.b, any(!(!vec4<bool>(true, var_0.x, false, false))), select(select(vec3<bool>(var_2.c, false, false), !var_0.wzx, vec3<bool>(var_2.d.x, true, var_2.a.x)), vec3<bool>(select(var_2.a.x, false, false), all(arg_1.xz), global3.a), !vec3<bool>(arg_1.x, var_0.x, var_2.a.x))), var_1.x);
    var var_3 = Struct_1(select(global1[_wgslsmith_index_u32(u_input.b, 21u)], select(vec4<bool>(var_2.a.x && false, !global3.a, true, any(vec4<bool>(true, false, true, true))), !select(vec4<bool>(var_2.c, global3.b.a.x, arg_1.x, false), var_2.a, vec4<bool>(var_0.x, true, global3.b.c, arg_1.x)), select(vec4<bool>(false, false, global3.b.c, false), !global3.b.a, arg_0 == 539i)), vec4<bool>(!var_0.x | all(var_2.a), (-32093i >= var_2.b) | any(var_2.a.wy), global3.b.c, !(!var_2.a.x))), min(u_input.a.x, 1i | ~global3.b.b), ~16325u >= global0.x, !arg_1);
    return Struct_3(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, ~54603u), ~(vec2<u32>(24264u, global0.x) | vec2<u32>(u_input.b, 67793u))), global0.x), firstTrailingBit(vec3<i32>(firstLeadingBit(-1i), _wgslsmith_add_i32(global3.b.b, arg_0), select(_wgslsmith_dot_vec3_i32(u_input.a.zww, vec3<i32>(var_2.b, global3.b.b, 2147483647i)), var_3.b, !arg_1.x))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) + var_1.x) >= 1f, global3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(round(-1622f))))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, -768f)) * _wgslsmith_f_op_f32(ceil(global3.c))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))))), _wgslsmith_f_op_f32(trunc(global3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 21>();
    var var_0 = func_1(_wgslsmith_mod_i32(379i, -1583i), !vec3<bool>(false, global3.b.d.x, any(global1[_wgslsmith_index_u32(min(70077u, 1u), 21u)])));
    var var_1 = _wgslsmith_sub_i32(-(~_wgslsmith_sub_i32(u_input.c.x, -1738i) << (~_wgslsmith_clamp_u32(25800u, 1u, var_0.a) % 32u)), u_input.c.x);
    var_1 = 1i;
    global3 = func_1(9232i, select(global3.b.d, func_1(~2147483647i, vec3<bool>(false, global3.b.a.x, !var_0.c.b.a.x)).c.b.a.wxy, all(vec2<bool>(true, any(vec4<bool>(true, false, false, var_0.c.a)))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, func_1(-17277i, select(var_0.c.b.d, select(var_0.d.b.d, global3.b.d, !global3.b.a.wxy), !vec3<bool>(global3.a, true, true))).c.b.b, ~vec3<u32>(var_0.a, ~var_0.a << (4294967295u % 32u), ~countOneBits(u_input.d)));
}

