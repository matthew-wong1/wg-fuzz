struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1336f), Struct_1(-1612f), Struct_1(-1000f), Struct_1(367f), Struct_1(1760f), Struct_1(-1000f), Struct_1(-1224f), Struct_1(-947f), Struct_1(-125f), Struct_1(-900f), Struct_1(493f), Struct_1(552f), Struct_1(-1852f), Struct_1(-1415f), Struct_1(1035f));

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: Struct_1 = Struct_1(2053f);

var<private> global4: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    global3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1287f, 924f)), _wgslsmith_f_op_f32(step(arg_2.x, -1249f)))))))));
    let var_0 = vec3<bool>(false, false, global2.x);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(0u, u_input.a.x, 30124u), ~0u, 104295u), vec4<u32>(select(0u, u_input.c.x, global2.x), _wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(5065u, 47995u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 3102u, u_input.a.x, 0u), vec4<u32>(86995u, u_input.a.x, 62669u, u_input.a.x)), 19779u)), 15u)], _wgslsmith_f_op_f32(arg_1.a - -1509f), select(global4[_wgslsmith_index_u32(reverseBits(1u), 13u)], select(!select(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], global4[_wgslsmith_index_u32(u_input.a.x, 13u)], true), select(select(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], vec4<bool>(global2.x, global2.x, true, var_0.x), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, global2.x, var_0.x, false), vec4<bool>(global2.x, false, true, var_0.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), select(vec4<bool>(global2.x, true, true, true), global4[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 13u)], true)), select(vec4<bool>(all(vec3<bool>(false, true, global2.x)), var_0.x, !global2.x, global2.x && var_0.x), select(global4[_wgslsmith_index_u32(min(u_input.a.x, u_input.c.x), 13u)], !global4[_wgslsmith_index_u32(1u, 13u)], !var_0.x), select(vec4<bool>(var_0.x, var_0.x, global2.x, var_0.x), !vec4<bool>(global2.x, true, global2.x, false), false))));
    global0 = var_1.b != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(846f, 1367f)) * -212f)) + _wgslsmith_f_op_f32(-var_1.b));
    var var_2 = reverseBits(~(~(~vec4<u32>(u_input.a.x, u_input.c.x, 26639u, u_input.c.x))) << (abs(vec4<u32>(~3172u, 55661u, u_input.c.x, ~u_input.c.x)) % vec4<u32>(32u)));
    return var_0.x;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> f32 {
    global0 = all(!(!arg_0.c.zx));
    global2 = select(vec3<bool>(all(arg_0.c.wzx), true, any(arg_0.c.wwz)), !arg_0.c.yxx, select(vec3<bool>(arg_1, global2.x, !arg_1), vec3<bool>(func_3(global1[_wgslsmith_index_u32(abs(u_input.c.x), 15u)], Struct_1(arg_0.b), vec2<f32>(arg_0.b, arg_0.a.a)), global2.x, false), !arg_1));
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c.x), 1u, ~0u | ~u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, u_input.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.a.zx) % 32u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(15592u, 0u, u_input.c.x, 36518u), ~vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.c.x)), ~vec4<u32>(u_input.c.x, 11129u, 0u, u_input.c.x))), select(_wgslsmith_mult_vec4_u32(~vec4<u32>(63059u, u_input.a.x, u_input.a.x, 25712u), select(vec4<u32>(u_input.c.x, 0u, u_input.a.x, 5207u), vec4<u32>(11280u, 97304u, u_input.c.x, 31019u), arg_0.c)), vec4<u32>(u_input.a.x, 37724u >> (u_input.a.x % 32u), u_input.a.x, 4391u << (u_input.a.x % 32u)), arg_0.c) | reverseBits(abs(vec4<u32>(18946u, u_input.a.x, 16665u, 4294967295u))), ~vec4<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.a.x, 33802u, 803u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, 19636u, u_input.c.x), vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 9457u))), min(u_input.c.x, select(u_input.c.x, u_input.c.x, global2.x)), ~0u));
    global0 = all(vec4<bool>(arg_0.c.x, any(vec4<bool>(!arg_0.c.x, true, arg_1, true)), all(select(select(vec3<bool>(global2.x, true, true), vec3<bool>(true, false, true), arg_0.c.zxz), select(arg_0.c.yxy, vec3<bool>(false, arg_0.c.x, arg_1), true), false)), !(!arg_0.c.x)));
    let var_1 = vec2<f32>(global3.a, -495f);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1357f, arg_0.b) * var_1.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, !(!arg_3.x), u_input.b.x))), !arg_0.c);
    let var_1 = Struct_2(Struct_1(334f), arg_2.a, !select(arg_0.c, !arg_0.c, all(global4[_wgslsmith_index_u32(u_input.a.x, 13u)]) != (u_input.b.x == u_input.b.x)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 475f) + vec2<f32>(1685f, arg_2.a)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b, -234f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(step(arg_1.a, -535f))), _wgslsmith_f_op_f32(-1f))), vec2<f32>(-115f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_1, var_0.c.x, u_input.b.x)))))));
    global4 = array<vec4<bool>, 13>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(1125f + var_0.b));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.a)) * -1192f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(-644f + 1069f));
    global1 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, arg_1, 838f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, arg_0.x, -496f)))), !select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, true, true))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 597f))))), arg_2.a, vec4<bool>(true, false, global2.x, global2.x));
    global4 = array<vec4<bool>, 13>();
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1772f, -1295f))) * _wgslsmith_f_op_vec2_f32(func_1(Struct_2(Struct_1(-289f), var_0.x, global4[_wgslsmith_index_u32(0u, 13u)]), global1[_wgslsmith_index_u32(1u, 15u)], var_1.a, vec4<bool>(true, false, false, var_1.c.x))).x), var_0.x), _wgslsmith_f_op_f32(-1000f * arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 13>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global3.a, global4[_wgslsmith_index_u32(u_input.a.x, 13u)]), Struct_1(global3.a), Struct_1(1611f), global4[_wgslsmith_index_u32(u_input.c.x, 13u)])), _wgslsmith_f_op_f32(step(global3.a, -1260f)), Struct_1(501f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(f32(-1f) * -974f)))), select(!(!select(vec4<bool>(true, false, true, global2.x), global4[_wgslsmith_index_u32(117672u, 13u)], global4[_wgslsmith_index_u32(1u, 13u)])), vec4<bool>(global2.x, any(!vec3<bool>(global2.x, false, global2.x)), !(false & global2.x), !all(vec3<bool>(false, true, true))), global2.x));
    global4 = array<vec4<bool>, 13>();
    global1 = array<Struct_1, 15>();
    let var_1 = false;
    var var_2 = !(true == !global2.x) && !((u_input.a.x == ~u_input.c.x) == global2.x);
    global1 = array<Struct_1, 15>();
    global0 = func_3(Struct_1(-1178f), Struct_1(_wgslsmith_f_op_f32(var_0.a.a + 381f)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, global3.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -719f), var_0.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(538f + 1339f), var_0.a.a)))));
    var var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.c.x, (u_input.a.x >> (0u % 32u)) & reverseBits(90487u), 4294967295u), -_wgslsmith_clamp_vec3_i32(~vec3<i32>(14644i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))) >> (u_input.c % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), -1675f), u_input.b);
}

