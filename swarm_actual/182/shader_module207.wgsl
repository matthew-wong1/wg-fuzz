struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)));

var<private> global1: array<vec4<f32>, 31>;

var<private> global2: array<Struct_3, 21>;

var<private> global3: array<i32, 12> = array<i32, 12>(2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 4661i, -1i, -1i, 67377i, 1i, -45802i, 44549i, 10643i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5) -> vec2<i32> {
    let var_0 = global0[_wgslsmith_index_u32(arg_1.b.c.x, 16u)];
    global0 = array<Struct_1, 16>();
    global3 = array<i32, 12>();
    return _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(u_input.b.wx), ~u_input.b.zx, ~min(vec2<i32>(-12190i, global3[_wgslsmith_index_u32(u_input.c.x, 12u)]), _wgslsmith_mult_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(41004u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), u_input.a.yy))), vec2<i32>(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 4294967295u), 12u)] << (u_input.c.x % 32u), arg_1.d));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = u_input.b;
    let var_1 = arg_0.a.x;
    var var_2 = func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(485f, 587f, arg_1)) * vec3<f32>(1949f, 880f, -1000f))))), Struct_5(!select(!arg_0.a, arg_0.a, arg_0.a), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), Struct_2(global0[_wgslsmith_index_u32(0u, 16u)], select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), vec4<bool>(false, true, var_1, arg_0.a.x), false), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1)), Struct_1(arg_0.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(73630u, 9368u, u_input.d.x), vec3<u32>(45865u, u_input.c.x, u_input.c.x)), Struct_2(Struct_1(vec2<bool>(arg_0.a.x, arg_0.a.x)), !vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), vec2<f32>(837f, 1250f), Struct_1(arg_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(597f, arg_1, arg_1))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), arg_1, _wgslsmith_f_op_f32(trunc(850f)))), -max(1i, select(u_input.e, global3[_wgslsmith_index_u32(u_input.d.x, 12u)], arg_0.a.x))));
    var_2 = vec2<i32>(~var_2.x, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.d.x, 12u)] | max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_2.x), vec2<i32>(-62420i, var_2.x)), global3[_wgslsmith_index_u32(u_input.d.x, 12u)] ^ var_0.x), 48804i));
    global1 = array<vec4<f32>, 31>();
    return _wgslsmith_dot_vec2_i32(u_input.a.yz, -(~(-select(vec2<i32>(var_2.x, u_input.b.x), vec2<i32>(0i, global3[_wgslsmith_index_u32(u_input.d.x, 12u)]), arg_0.a))));
}

fn func_4(arg_0: i32) -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(16441u, ~u_input.c.x), countOneBits(_wgslsmith_dot_vec3_u32(u_input.d.yxy, u_input.d.zzx)), 142511u, 0u);
    var var_1 = Struct_1(vec2<bool>(all(vec3<bool>(false, true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 1u)) >= countOneBits(u_input.d.x)));
    global3 = array<i32, 12>();
    let var_2 = Struct_2(Struct_1(var_1.a), vec4<bool>(any(select(!vec3<bool>(var_1.a.x, false, var_1.a.x), !vec3<bool>(false, var_1.a.x, var_1.a.x), select(var_1.a.x, var_1.a.x, false))), any(select(vec3<bool>(false, false, false), vec3<bool>(false, var_1.a.x, false), true)), !all(select(vec4<bool>(var_1.a.x, true, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, true, true), vec4<bool>(var_1.a.x, true, true, var_1.a.x))), var_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(277f, -1000f), vec2<f32>(-510f, -1585f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-133f, 1569f) - vec2<f32>(-250f, -1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1098f, -126f), vec2<f32>(-1402f, 113f))))))), Struct_1(select(select(!var_1.a, !var_1.a, any(vec4<bool>(var_1.a.x, true, true, var_1.a.x))), select(vec2<bool>(true, true), !var_1.a, var_1.a.x), var_1.a.x)));
    var var_3 = u_input.c.wyy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(trunc(var_2.c.x))), _wgslsmith_f_op_f32(abs(-439f)))) + _wgslsmith_f_op_f32(step(-600f, _wgslsmith_f_op_f32(-321f * -359f))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.d.x, 31u)] * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1482f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f - 597f)), 365f, _wgslsmith_div_f32(143f, _wgslsmith_f_op_f32(round(1083f))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.e, -40605i), vec2<i32>(u_input.e, func_2(global0[_wgslsmith_index_u32(4294967295u, 16u)], 973f))))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~_wgslsmith_mult_u32(1u, u_input.d.x)), 16u)], vec4<bool>(true, all(vec4<bool>(true, true, true, true)), select(true, false, 4294967295u >= u_input.c.x), any(vec3<bool>(true, false, true))), var_0.xx, Struct_1(vec2<bool>(true, true))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c.x), _wgslsmith_add_vec3_u32(u_input.d.yxw, vec3<u32>(1u, 4294967295u, 31882u)), vec3<u32>(u_input.c.x, 49374u, 4294967295u)) >> (u_input.d.xyx % vec3<u32>(32u)), Struct_2(Struct_1(vec2<bool>(true, true)), select(vec4<bool>(any(vec4<bool>(true, false, true, false)), true, true, u_input.c.x > u_input.d.x), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz))), global0[_wgslsmith_index_u32(11800u, 16u)]));
    global1 = array<vec4<f32>, 31>();
    global1 = array<vec4<f32>, 31>();
    var var_2 = ~(-func_2(var_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_1.b.c.x) * _wgslsmith_f_op_f32(min(var_1.d.c.x, var_1.b.c.x)))));
    return var_1.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-729f, 206f, -1218f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1633f, 1136f)) + -2584f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(811f * -789f) + _wgslsmith_f_op_f32(1125f * 639f)))));
    global0 = array<Struct_1, 16>();
    var var_1 = u_input.d.x;
    var var_2 = _wgslsmith_div_vec2_u32(min(_wgslsmith_div_vec2_u32(select(abs(u_input.d.xw), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.d.x), u_input.c.yx), 1512f >= var_0.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), u_input.d.ww) >> ((vec2<u32>(22266u, 12011u) | u_input.d.yz) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 32959u, 68996u, u_input.d.x), min(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c)), _wgslsmith_mod_u32(3986u, u_input.d.x) ^ ~0u)), ~min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.d.x), u_input.c.xx), ~vec2<u32>(u_input.d.x, u_input.d.x)) | vec2<u32>(~(~4294967295u), ~(u_input.c.x & u_input.c.x)));
    global1 = array<vec4<f32>, 31>();
    global2 = array<Struct_3, 21>();
    var var_3 = 0i;
    var_1 = 59618u << ((4294967295u >> (~(~u_input.c.x) % 32u)) % 32u);
    var_2 = (u_input.d.zy ^ u_input.c.xx) & ~(~_wgslsmith_clamp_vec2_u32(~u_input.c.xy, ~vec2<u32>(u_input.c.x, 1u), vec2<u32>(var_2.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_sub_vec3_u32(u_input.d.yzw, vec3<u32>(_wgslsmith_div_u32(0u, u_input.c.x) >> (firstTrailingBit(u_input.d.x) % 32u), ~_wgslsmith_div_u32(u_input.c.x, 97100u), ~(~4688u))), 87739i, var_0.x);
}

