struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: u32;

var<private> global2: u32;

var<private> global3: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_2 {
    global3 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    global3 = false;
    let var_0 = 2147483647i;
    let var_1 = ~(((u_input.b << (~56600u % 32u)) >> (_wgslsmith_div_u32(u_input.a, 39125u) % 32u)) << (u_input.b % 32u));
    global0 = array<Struct_2, 9>();
    return global0[_wgslsmith_index_u32(u_input.a, 9u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = 1999f;
    global3 = false;
    global1 = ~min(~u_input.a, 116296u) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.b.xy, _wgslsmith_div_vec2_u32(arg_2.b.zz, vec2<u32>(arg_1.a, 0u))), min(arg_2.b.xx, _wgslsmith_clamp_vec2_u32(~arg_2.b.ww, _wgslsmith_mult_vec2_u32(arg_2.b.xw, vec2<u32>(28520u, arg_1.a)), arg_2.b.zy & vec2<u32>(44546u, arg_2.a))));
    let var_1 = arg_1;
    return vec4<bool>(var_1.b == reverseBits(4294967295u), true && all(vec4<bool>(select(true, true, true), true, select(false, true, false), false)), false, any(vec2<bool>(any(vec2<bool>(true, true)), false)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = -881f;
    var var_1 = !(!(true && all(select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, false, false, true), false))));
    let var_2 = func_3(func_1().c.yyz, Struct_2(1u, ~(max(u_input.a, u_input.b) << (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 753f, -512f) - vec4<f32>(-2163f, var_0, -1347f, var_0)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-484f, var_0, var_0, var_0), vec4<f32>(-459f, -810f, var_0, -828f))))))), Struct_1(u_input.b, _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, 1u, u_input.a), vec4<u32>(28418u, 0u, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, u_input.a) >> (vec4<u32>(u_input.a, 0u, u_input.a, 22473u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a, 46538u, u_input.a), vec4<u32>(u_input.a, u_input.b, u_input.a, 6980u)), ~vec4<u32>(1u, u_input.a, u_input.b, u_input.a)))), vec4<f32>(1000f, -195f, var_0, _wgslsmith_f_op_f32(-var_0)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_div_f32(365f, -1495f) + -265f)), _wgslsmith_div_f32(1022f, var_0));
    var_1 = all(vec3<bool>(true, any(!vec2<bool>(var_2.x, var_2.x)), any(vec4<bool>(true, true, true, true)))) || (func_3(vec3<f32>(-244f, 1f, _wgslsmith_f_op_f32(trunc(var_0))), global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(_wgslsmith_sub_u32(u_input.b, u_input.b), min(vec4<u32>(u_input.a, u_input.b, 1u, 1275u), vec4<u32>(u_input.a, u_input.a, 3468u, 0u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-253f, var_3.x, 1082f, -1480f), vec4<f32>(100f, var_0, var_0, 1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1092f, -862f, 1000f, 428f), vec4<f32>(var_0, var_3.x, 883f, -847f)), !var_2))).x & true);
    return Struct_3(var_3, -_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, 0i, 41141i), vec3<i32>(_wgslsmith_add_i32(6264i, 1i), -25481i, countOneBits(-11816i)), ~(vec3<i32>(-49563i, 1i, 9458i) << (vec3<u32>(u_input.b, u_input.a, u_input.b) % vec3<u32>(32u)))), global0[_wgslsmith_index_u32(0u, 9u)]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> u32 {
    global0 = array<Struct_2, 9>();
    let var_0 = 50251u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c.x)));
    global0 = array<Struct_2, 9>();
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - 873f), var_1) - _wgslsmith_f_op_f32(select(-2105f, _wgslsmith_f_op_f32(-1061f + -1000f), true))), 157f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.c.c.x, _wgslsmith_f_op_f32(2692f + -1709f))) - _wgslsmith_f_op_f32(max(-549f, _wgslsmith_f_op_f32(-1000f - -274f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.c.x)));
    return ~_wgslsmith_clamp_u32(var_0, ~35501u, 39409u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    let var_0 = firstTrailingBit(select(~(~vec2<u32>(u_input.a, 0u) >> (~vec2<u32>(u_input.a, 46512u) % vec2<u32>(32u))), vec2<u32>(min(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16981u), vec2<u32>(16138u, u_input.b))), func_4(func_1(), func_2(true), ~u_input.a)), !(reverseBits(44751u) > ~u_input.a)));
    var var_1 = Struct_1(~54736u, _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(var_0.x, u_input.a), _wgslsmith_add_u32(0u, var_0.x), 16215u, _wgslsmith_div_u32(u_input.b, var_0.x)), ((vec4<u32>(0u, u_input.b, var_0.x, var_0.x) ^ vec4<u32>(0u, u_input.a, 4294967295u, 57816u)) & (vec4<u32>(u_input.a, var_0.x, 4294967295u, var_0.x) | vec4<u32>(5207u, u_input.b, 4294967295u, 1u))) >> (firstTrailingBit(~vec4<u32>(39518u, 77148u, u_input.a, var_0.x)) % vec4<u32>(32u))));
    global2 = 1u;
    global2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -(0i >> (var_0.x % 32u)), -(~min(-1i, 1i))), _wgslsmith_div_i32(2147483647i, func_2(!func_3(vec3<f32>(-1000f, 706f, 1187f), Struct_2(1u, 69165u, vec4<f32>(1190f, 1952f, -556f, 140f)), Struct_1(u_input.b, var_1.b), vec4<f32>(-138f, 1084f, -1000f, 1004f)).x).b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_1().c.x), _wgslsmith_f_op_f32(f32(-1f) * -489f)))), _wgslsmith_add_u32(u_input.b, var_0.x ^ ~_wgslsmith_clamp_u32(4294967295u, 1u, var_0.x)));
}

