struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: vec4<i32>;

var<private> global3: array<bool, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global0 = global3[_wgslsmith_index_u32(u_input.e.x, 2u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-107f, 656f, 622f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1525f, 308f, 1091f), vec3<f32>(450f, -791f, 231f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-855f, -3056f, -243f) + vec3<f32>(274f, -311f, 381f))))))), global3[_wgslsmith_index_u32(firstLeadingBit(20392u), 2u)], _wgslsmith_sub_i32(-16068i << (u_input.b.x % 32u), 2147483647i));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(5629i, -_wgslsmith_mult_i32(-global2.x, arg_3.c), -17594i, global2.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(abs(-14126i), global2.x, _wgslsmith_mult_i32(arg_0.b.c, 44708i), func_2().c), ~vec4<i32>(485i, arg_0.b.c, 17739i, 1i) >> (u_input.d % vec4<u32>(32u))));
    var var_1 = -abs(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.wyy, var_0.zwy), u_input.a ^ u_input.a)));
    let var_2 = func_2();
    var var_3 = var_2.a;
    let var_4 = Struct_3(func_2(), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), firstLeadingBit(~min(u_input.d.x | 3089u, ~u_input.d.x)), arg_0);
    return u_input.d.x;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_2(func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(-274f)), arg_0.x, -2421f))), global3[_wgslsmith_index_u32(~func_3(Struct_2(Struct_1(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), false, u_input.a.x), Struct_1(vec3<f32>(520f, -1103f, arg_0.x), false, u_input.a.x)), global1.x, vec2<bool>(global1.x, global1.x), func_2()), 2u)], -12565i));
    var var_1 = 143f;
    let var_2 = func_2();
    let var_3 = _wgslsmith_dot_vec4_u32(~(~select(u_input.d, vec4<u32>(u_input.e.x, u_input.b.x, u_input.d.x, 4294967295u), var_0.a.b)), min(max(vec4<u32>(u_input.b.x, 78101u, 9646u, 0u), u_input.d), u_input.d) >> (~(~vec4<u32>(u_input.b.x, u_input.e.x, u_input.b.x, u_input.d.x)) % vec4<u32>(32u))) << (~37656u % 32u);
    global0 = select(all(select(!(!vec3<bool>(var_0.a.b, false, global1.x)), vec3<bool>(!global1.x, all(vec2<bool>(var_0.a.b, false)), true), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global1.x, var_2.b), vec3<bool>(true, true, true), !global1.x))), global2.x != -var_0.b.c, !all(vec3<bool>(var_2.b, !var_0.b.b, !var_0.a.b)));
    return abs(_wgslsmith_sub_i32(u_input.a.x, ~25472i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-919f, -1146f, 1476f) - vec3<f32>(-413f, -1158f, 692f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, 1555f, -1484f)))), !global1.x, func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(592f, 1043f, -296f))))))), func_2());
    let var_1 = Struct_2(var_0.a, func_2());
    var_0 = var_1;
    var var_2 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(~(~select(u_input.e.yz, vec2<u32>(u_input.e.x, u_input.b.x), false))), vec2<u32>(~abs(u_input.e.x ^ 21065u), _wgslsmith_add_u32(countOneBits(u_input.e.x & 10333u), 20323u)), max(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 109358u), vec2<u32>(1u, 27562u)), u_input.d.xx));
    var var_3 = Struct_3(func_2(), ~select(var_1.b.c | var_0.a.c, -(var_1.a.c >> (u_input.c % 32u)), any(!vec2<bool>(true, var_1.a.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, _wgslsmith_mult_u32(var_2.x, func_3(Struct_2(var_0.b, var_0.b), false, vec2<bool>(global3[_wgslsmith_index_u32(23195u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)]), Struct_1(var_0.a.a, var_1.a.b, 2147483647i))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(25668u, u_input.d.x, var_2.x, 0u), u_input.d), u_input.d)), vec3<u32>(~_wgslsmith_clamp_u32(u_input.e.x, u_input.b.x, 1u), var_2.x, 10371u)), Struct_2(var_0.a, func_2()));
    let var_4 = var_0.a;
    global1 = vec3<bool>(!var_4.b, true, !(!(_wgslsmith_f_op_f32(var_4.a.x + 403f) > -497f)));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~global2.xz >> (vec2<u32>(abs(abs(var_3.c)), _wgslsmith_div_u32(~2044u, u_input.d.x)) % vec2<u32>(32u)));
}

