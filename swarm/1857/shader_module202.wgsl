struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<f32>(1244f, 506f, -114f), 10754u, vec4<bool>(true, true, false, true), -1000f, 47913i);

var<private> global1: vec4<i32>;

var<private> global2: array<i32, 31>;

var<private> global3: array<u32, 13> = array<u32, 13>(4294967295u, 8043u, 31869u, 0u, 4294967295u, 1u, 31479u, 1u, 4294967295u, 52607u, 67153u, 0u, 80511u);

var<private> global4: array<vec4<u32>, 29>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec2<u32>(global0.b, ~min(global0.b | u_input.b, global0.b >> (global0.b % 32u))), global0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-616f - global0.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.d)))))), -602f)), ~(vec3<u32>(0u, 1u, ~1u) << (reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(13696u, u_input.b, global3[_wgslsmith_index_u32(1u, 13u)]), vec3<u32>(global0.b, 40473u, 0u))) % vec3<u32>(32u))));
    let var_1 = 67104u <= firstLeadingBit(global0.b);
    let var_2 = all(!(!var_0.b.wyx)) & var_1;
    global4 = array<vec4<u32>, 29>();
    let var_3 = var_0.d.xy;
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.d.x, global3[_wgslsmith_index_u32(0u, 13u)], var_0.d.x)), vec3<u32>(~global3[_wgslsmith_index_u32(u_input.b, 13u)], _wgslsmith_div_u32(u_input.b, ~109043u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(global0.b, 13u)]), ~u_input.b))) << (4294967295u % 32u);
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    global1 = vec4<i32>(-44898i, 2147483647i, _wgslsmith_clamp_i32(arg_0.e, _wgslsmith_dot_vec2_i32(firstTrailingBit(-global1.yy), u_input.a), 2147483647i), -_wgslsmith_add_i32(arg_1, arg_1) & ~arg_0.e);
    let var_0 = arg_0;
    global3 = array<u32, 13>();
    var var_1 = vec2<u32>(85069u, abs(func_3()));
    var var_2 = arg_2;
    return ~(~1u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 984f;
    global4 = array<vec4<u32>, 29>();
    let var_1 = arg_0.d;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1374f, 1445f, var_0))))), vec4<f32>(1000f, _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.x)) - arg_0.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1184f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)))));
    global2 = array<i32, 31>();
    return Struct_1(vec2<u32>(countOneBits(_wgslsmith_mult_u32(u_input.b, 4294967295u) << (func_2(Struct_5(vec3<f32>(-408f, var_0, var_0), global3[_wgslsmith_index_u32(global0.b, 13u)], arg_0.b, var_2.x, 1i), 14583i, arg_0, vec2<f32>(1553f, var_0)) % 32u)), 53129u ^ global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a.x, 13u)], 13u)], 6758u)), 13u)]), select(select(global0.c, select(select(global0.c, vec4<bool>(true, true, global0.c.x, arg_0.b.x), arg_0.b), vec4<bool>(true, arg_0.b.x, true, true), global0.c.x), false), select(!vec4<bool>(global0.c.x, true, false, global0.c.x), global0.c, true), vec4<bool>(!(!arg_0.b.x), !all(vec4<bool>(false, false, global0.c.x, global0.c.x)), global0.c.x, any(!arg_0.b.zz))), var_2.x, select(arg_0.d, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(select(arg_0.d, vec3<u32>(4294967295u, 21857u, u_input.b), arg_0.b.x), ~arg_0.d), _wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, 0u, 4294967295u), firstLeadingBit(arg_0.d))), vec3<bool>(_wgslsmith_div_f32(1000f, global0.a.x) < _wgslsmith_div_f32(arg_0.c, arg_0.c), all(vec2<bool>(true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec2<u32>(global3[_wgslsmith_index_u32(~(~34577u), 13u)], global0.b), global0.c, 420f, min(~(~vec3<u32>(global3[_wgslsmith_index_u32(0u, 13u)], u_input.b, 41901u)), ~abs(vec3<u32>(global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(19909u, 13u)], 36155u)))));
    var var_1 = var_0.b.xx;
    var var_2 = Struct_2(select(select(var_0.b.wz, select(select(var_0.b.yz, vec2<bool>(true, false), global0.c.zy), !vec2<bool>(var_0.b.x, global0.c.x), false), all(func_1(var_0).b.zyz)), var_0.b.yz, global0.c.wy), var_0, func_1(Struct_1(var_0.a, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c)) * var_0.c), _wgslsmith_add_vec3_u32(~var_0.d, var_0.d))).b.x, func_1(Struct_1(var_0.a, global0.c, _wgslsmith_f_op_f32(abs(global0.a.x)), vec3<u32>(var_0.a.x, var_0.d.x & global0.b, select(global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(u_input.b, 13u)], var_0.b.x)))));
    global0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(139f + _wgslsmith_div_f32(190f, var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(629f))), _wgslsmith_f_op_f32(152f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-505f))))), _wgslsmith_mod_u32(24301u, var_0.d.x), vec4<bool>(!(!var_2.d.b.x != true), global0.c.x, any(!var_0.b.www), all(var_2.d.b.zwz)), global0.d, -2147483647i);
    var var_3 = Struct_3(func_1(var_0), vec4<i32>(~(-1i), ~(~u_input.a.x), 2147483647i, -_wgslsmith_dot_vec3_i32(global1.zwz, global1.zww)) >> (global4[_wgslsmith_index_u32(firstTrailingBit(var_0.d.x), 29u)] % vec4<u32>(32u)), var_2.b.a.x, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(37470u, global0.b, 17505u), vec3<u32>(u_input.b & 4294967295u, var_0.d.x, 30376u)), var_2.b.d));
    global1 = var_3.b;
    let var_4 = Struct_1(vec2<u32>(0u, _wgslsmith_add_u32(var_2.b.d.x, 4294967295u)), !(!var_2.d.b), _wgslsmith_f_op_f32(971f * 764f), vec3<u32>(~_wgslsmith_mod_u32(2969u, ~global0.b), 1u, global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c);
}

