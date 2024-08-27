struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, false, false, true, false, true, false, true, false, true, false, true, false, false);

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(23910i, 4294967295u, vec2<i32>(1i, 0i), Struct_2(Struct_1(vec3<bool>(false, false, false)), 1689i)));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)));

var<private> global4: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(39287u, 1u)];
    let var_1 = -vec4<i32>(_wgslsmith_sub_i32(reverseBits(arg_2.b), -arg_2.b), arg_1, i32(-1i) * -u_input.d.x, 1i) >> (~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(51735u, var_0.b, u_input.c, 24956u), vec4<u32>(1u, 19143u, var_0.b, u_input.b) >> (vec4<u32>(u_input.c, u_input.e.x, var_0.b, var_0.b) % vec4<u32>(32u))), reverseBits(~vec4<u32>(4294967295u, 55640u, 1u, 4294967295u))) % vec4<u32>(32u));
    var var_2 = select(!select(!select(vec4<bool>(true, global0.x, arg_2.a.a.x, false), vec4<bool>(global0.x, true, true, true), global0.x), vec4<bool>(!global1[_wgslsmith_index_u32(28976u, 15u)], true, true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 15u)], var_0.d.a.a.x, false))), select(!vec4<bool>(true, false, arg_2.a.a.x, global0.x), !vec4<bool>(arg_0.a.x, var_0.d.a.a.x, true, true), !global0.x)), !(!select(vec4<bool>(arg_0.a.x, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global0.x, global0.x, true), vec4<bool>(arg_0.a.x, false, true, false))), true);
    global2 = array<Struct_3, 1>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-893f, 822f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-651f, -344f)))))));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, _wgslsmith_dot_vec2_u32(~u_input.e.xz, vec2<u32>(u_input.e.x, u_input.a)), var_0.b, reverseBits(18665u)), ~vec4<u32>(14602u << (1u % 32u), 4294967295u, var_0.b, 5443u), reverseBits(vec4<u32>(0u, 20903u, firstLeadingBit(var_0.b), _wgslsmith_dot_vec3_u32(u_input.e, u_input.e)))), ~(~(~countOneBits(vec4<u32>(2457u, u_input.a, u_input.c, 117148u)))));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global3 = array<Struct_1, 32>();
    var var_0 = func_3(Struct_1(!(!(!arg_0.a))), ~u_input.d.x, Struct_2(global3[_wgslsmith_index_u32(u_input.b, 32u)], 0i));
    global3 = array<Struct_1, 32>();
    var var_1 = Struct_1(!arg_0.a);
    var var_2 = 1484f;
    return !vec3<bool>(!global1[_wgslsmith_index_u32(abs(0u), 15u)] & false, true, !global1[_wgslsmith_index_u32(~(var_0.x >> (2627u % 32u)), 15u)]);
}

fn func_1() -> Struct_3 {
    global0 = vec3<bool>((-33891i <= _wgslsmith_sub_i32(abs(u_input.d.x), u_input.d.x)) || all(select(!vec3<bool>(global0.x, global0.x, global0.x), func_2(Struct_1(vec3<bool>(global0.x, false, global1[_wgslsmith_index_u32(1u, 15u)]))), vec3<bool>(true, true, true))), !(false && global0.x), any(vec3<bool>(!global1[_wgslsmith_index_u32(~4294967295u, 15u)], any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], false, global1[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], false, global0.x, global0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 15u)], false, true, global0.x))), true | all(vec2<bool>(global1[_wgslsmith_index_u32(8583u, 15u)], true)))));
    var var_0 = global2[_wgslsmith_index_u32(u_input.e.x, 1u)];
    return global2[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.b, u_input.a), u_input.e), ~u_input.e.x), 4294967295u) | u_input.a, 1u)];
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.b;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) * _wgslsmith_f_op_f32(floor(666f))) * _wgslsmith_div_f32(232f, 353f))), -1076f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-915f, _wgslsmith_f_op_f32(1000f * -613f), true)))), -1000f);
    global1 = array<bool, 15>();
    global2 = array<Struct_3, 1>();
    let var_2 = func_1();
    return select(var_0, func_3(func_1().d.a, 1i, func_1().d).x, var_2.d.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.c, 15u)] && false;
    var var_1 = _wgslsmith_sub_i32(~u_input.d.x, -7032i);
    global0 = vec3<bool>(global0.x, 37516u != max(0u, _wgslsmith_add_u32(u_input.c, 1u)), _wgslsmith_add_u32(min(~0u, max(u_input.c, u_input.b)), u_input.b) <= ~_wgslsmith_mod_u32(~u_input.a, _wgslsmith_clamp_u32(u_input.c, u_input.e.x, u_input.e.x)));
    let var_2 = global2[_wgslsmith_index_u32(func_4(func_1()), 1u)];
    var var_3 = func_1().d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1241f + 150f) + _wgslsmith_f_op_f32(-1000f * -566f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-578f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(396f, -721f, 473f, 236f)))), -1596f, 48031u, -602f);
}

