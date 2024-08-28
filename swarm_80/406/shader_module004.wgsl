struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(4294967295u, -1000f, Struct_3(i32(-2147483648), false, 0i)), Struct_4(1u, -828f, Struct_3(0i, true, 39999i)));

var<private> global1: array<Struct_5, 22>;

var<private> global2: Struct_2;

var<private> global3: vec3<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> vec4<f32> {
    global0 = array<Struct_4, 2>();
    global2 = Struct_2(any(vec2<bool>(true, !global2.c.x)), arg_1.c.c & _wgslsmith_sub_i32(arg_1.c.a, i32(-1i) * -arg_1.c.a), select(vec2<bool>((1u > arg_1.a) | false, !select(arg_3, arg_3, false)), global3.yx, any(select(vec2<bool>(arg_3, false), select(vec2<bool>(global3.x, global2.c.x), vec2<bool>(global3.x, global3.x), false), global3.zz))), global2.d >> (global2.d % 32u));
    var var_0 = vec4<bool>(true, true, arg_3, true);
    let var_1 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2048f, 1f, arg_0, _wgslsmith_f_op_f32(-var_1.b)))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -321f)) - _wgslsmith_f_op_f32(1174f - _wgslsmith_f_op_f32(786f * -274f))), Struct_4(77192u | firstLeadingBit(arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f + -282f) - -551f), Struct_3(global2.b, all(vec4<bool>(global3.x, true, false, true)), _wgslsmith_mod_i32(-7568i, 25237i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(503f * -190f) + 325f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(956f)) - _wgslsmith_f_op_f32(-294f + 643f))), any(select(vec4<bool>(global3.x, global2.c.x, global3.x, global2.c.x), select(vec4<bool>(global2.c.x, true, global3.x, false), vec4<bool>(global3.x, global2.a, false, true), global2.a), !vec4<bool>(false, true, false, global3.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 257f, 386f, -315f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-971f, 674f, 1000f, 800f) * vec4<f32>(-1000f, -587f, -1098f, 953f))))));
    var var_1 = vec4<bool>(true && !all(!vec3<bool>(true, true, global2.c.x)), any(global2.c), !(!global2.a), global3.x);
    var var_2 = Struct_2(false, firstTrailingBit(global2.b), vec2<bool>(!(countOneBits(u_input.b.x) == (global2.b ^ -2147483647i)), var_1.x), 115111u << (arg_1.x % 32u));
    global0 = array<Struct_4, 2>();
    let var_3 = Struct_3(1i, all(select(vec3<bool>(var_2.c.x, select(global2.a, false, global3.x), false), vec3<bool>(true, true, !var_2.a), global3.x)), firstTrailingBit(min(max(abs(13526i), var_2.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global2.b), u_input.b.yx))));
    return reverseBits(arg_1.x);
}

fn func_1(arg_0: f32) -> Struct_2 {
    global3 = select(select(vec3<bool>(false, u_input.a.x != 23215u, true), select(!select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, global3.x, true), vec3<bool>(false, false, global2.a)), vec3<bool>(false, true, any(vec3<bool>(false, false, global3.x))), global3.x), vec3<bool>(_wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_f_op_f32(-arg_0), false, global2.d <= reverseBits(u_input.a.x))), !select(!vec3<bool>(global3.x, true, global3.x), select(select(vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, false, global2.a), true), !vec3<bool>(global3.x, false, false), !global3.x), !(!vec3<bool>(global3.x, true, true))), select(select(!(!vec3<bool>(true, global2.c.x, global3.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, false), vec3<bool>(false, global2.a, global3.x)), true), vec3<bool>(all(vec2<bool>(global3.x, global2.c.x)), !global3.x, false)), !vec3<bool>(global3.x, all(vec4<bool>(global3.x, global3.x, global3.x, true)), global2.a), select(select(vec3<bool>(global2.c.x, true, global2.a), select(vec3<bool>(false, global2.a, global3.x), vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, global3.x, global2.c.x)), true), vec3<bool>(global3.x, true, true), true && (-9839i < global2.b))));
    global2 = Struct_2(global2.c.x, ~(-global2.b), global3.yy, ~u_input.a.x);
    let var_0 = Struct_1(vec4<f32>(-862f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(f32(-1f) * -624f))))), _wgslsmith_f_op_f32(round(1441f)), _wgslsmith_f_op_f32(step(-488f, 1000f))));
    var var_1 = vec4<bool>(any(select(!select(vec4<bool>(global2.a, true, true, true), vec4<bool>(global3.x, global3.x, global2.c.x, false), global2.c.x), vec4<bool>(31326u != u_input.a.x, true, select(true, global2.a, global3.x), any(vec4<bool>(true, false, false, false))), select(select(vec4<bool>(true, global2.a, true, global3.x), vec4<bool>(true, global3.x, true, global2.a), vec4<bool>(false, true, global3.x, global2.a)), vec4<bool>(global3.x, global2.c.x, global3.x, global2.c.x), true))), all(select(vec3<bool>(false, true, !global3.x), vec3<bool>(false, true, u_input.a.x != u_input.a.x), select(vec3<bool>(global2.c.x, true, global3.x), vec3<bool>(true, true, false), true))), global3.x, false);
    var var_2 = -(~u_input.b.xz);
    return Struct_2(any(vec2<bool>(true, _wgslsmith_div_u32(31170u, global2.d) <= select(global2.d, 630u, true))), 38549i, !(!(!(!vec2<bool>(global2.a, true)))), _wgslsmith_add_u32(~func_2(1u, u_input.a.yx) << (~(global2.d & u_input.a.x) % 32u), ~global2.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(324f);
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1904f)), _wgslsmith_f_op_f32(round(-1000f))))).d, global2.d), 50912u), 22u)];
    var var_1 = Struct_2(all(var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(-587i, var_0.c, u_input.b.x)), u_input.b), var_0.b.zw, _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(var_0.d, ~vec3<u32>(0u, 0u, var_0.d.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.d, 1u, global2.d), vec3<u32>(1u, 0u, u_input.a.x)), true), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~var_0.d, firstLeadingBit(vec3<u32>(15399u, 0u, 1u))), vec3<u32>(_wgslsmith_clamp_u32(10092u, global2.d, global2.d), _wgslsmith_add_u32(u_input.a.x, 47505u), _wgslsmith_clamp_u32(u_input.a.x, var_0.d.x, var_0.d.x)))));
    let var_2 = Struct_3(u_input.b.x, true, ~abs(-2147483647i));
    global1 = array<Struct_5, 22>();
    let var_3 = func_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1252f * -419f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a * -994f), -1998f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1297f, var_0.a, -2140f, 478f), vec4<f32>(380f, 933f, 415f, -409f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, -1000f, 3230f, 172f), vec4<f32>(var_0.a, -176f, -1008f, var_0.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 145f, var_0.a, 2253f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-589f, 774f, var_0.a, -1731f) + vec4<f32>(var_0.a, var_0.a, var_0.a, -1436f)))))));
}

