struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<f32, 10> = array<f32, 10>(-140f, 1394f, 594f, 190f, -527f, 599f, -1000f, -252f, -1197f, 328f);

var<private> global2: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = arg_0;
    return vec2<bool>(any(select(vec4<bool>(global0.x, false, global0.x, true), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x)) & !global0.x, ~1u != ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 24467u), u_input.c.x));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    let var_0 = !arg_2.a;
    global0 = vec2<bool>(!var_0, !(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~5608u, 10u)], 494f)) != -1895f));
    let var_1 = -2147483647i;
    global2 = global0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 10u)], -1514f, -203f) + vec3<f32>(-785f, global1[_wgslsmith_index_u32(arg_3, 10u)], global1[_wgslsmith_index_u32(arg_3, 10u)])) - vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 1043f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)])))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(164f, 1143f, global1[_wgslsmith_index_u32(4294967295u, 10u)]))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(14101u, 10u)], -491f) - vec3<f32>(global1[_wgslsmith_index_u32(5970u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))))), vec3<f32>(global1[_wgslsmith_index_u32(34368u, 10u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-556f * global1[_wgslsmith_index_u32(u_input.c.x, 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(arg_3, 10u)])))))));
    return vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(-_wgslsmith_mult_i32(-2147483647i, var_1), -20633i)), arg_0, 2147483647i, arg_0);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global0 = select(vec2<bool>(true, !(arg_0.b.a | arg_1.a)), vec2<bool>(arg_1.a, false), true);
    global2 = arg_1.a;
    let var_0 = arg_0.c.ywy;
    var var_1 = Struct_2(Struct_1(true), arg_0.d, firstLeadingBit(func_4(u_input.d.x, func_3(arg_0.c.wz), arg_1, ~u_input.c.x)) ^ vec4<i32>(var_0.x, 1884i, -select(u_input.e, 1885i, global0.x), ~var_0.x), Struct_1(true));
    let var_2 = 35191u;
    return -arg_0.c.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    global0 = select(select(vec2<bool>((u_input.a.x | u_input.e) > func_2(Struct_2(Struct_1(false), Struct_1(false), vec4<i32>(-16302i, 47159i, u_input.b, u_input.d.x), Struct_1(global0.x)), Struct_1(arg_1.x)), all(arg_1)), vec2<bool>(true, true), arg_1.x), arg_1, !(!arg_1));
    global0 = select(vec2<bool>(~_wgslsmith_mult_u32(u_input.c.x, 4294967295u) >= _wgslsmith_mod_u32(firstLeadingBit(u_input.c.x), u_input.c.x), (_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 10u)] * arg_2) <= _wgslsmith_f_op_f32(-arg_3.x)) & (arg_1.x || false)), select(!(!(!arg_1)), func_3(vec2<i32>(u_input.d.x, u_input.d.x)), false), !vec2<bool>(true, all(vec4<bool>(false, true, true, false)) && true));
    let var_0 = Struct_1(true);
    return -_wgslsmith_dot_vec2_i32(-max(vec2<i32>(u_input.e, u_input.d.x), vec2<i32>(u_input.d.x, u_input.e)) ^ u_input.a, min(~firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)), firstLeadingBit(u_input.d.wy)));
}

fn func_5(arg_0: vec4<i32>) -> Struct_2 {
    global0 = !(!select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, false), true), select(global0.x, !global0.x, global0.x)));
    global2 = false;
    var var_0 = vec3<u32>(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(64229u, 4294967295u, 3090u), countOneBits(vec3<u32>(13865u, 53225u, u_input.c.x))) >> (4294967295u % 32u)), u_input.c.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(var_0.x, var_0.x)) == ~(~var_0.x)), Struct_1(global0.x), vec4<i32>(min(_wgslsmith_add_i32(-46511i, u_input.e), min(~u_input.e, -1i)), -2147483647i, ~func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1841f, 1180f, -254f, global1[_wgslsmith_index_u32(var_0.x, 10u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], 595f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(22611u, 10u)])), vec2<bool>(false, global0.x), _wgslsmith_f_op_f32(322f + global1[_wgslsmith_index_u32(var_0.x, 10u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(var_0.x, 10u)], -954f))), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(36081i), arg_0.x), u_input.a)), Struct_1(select(~1u <= ~var_0.x, global0.x, func_3(-vec2<i32>(arg_0.x, arg_0.x)).x)));
    global1 = array<f32, 10>();
    return Struct_2(var_1.d, var_1.a, vec4<i32>(-arg_0.x, (u_input.e ^ min(var_1.c.x, arg_0.x)) ^ (_wgslsmith_div_i32(2147483647i, arg_0.x) | _wgslsmith_sub_i32(var_1.c.x, 2147483647i)), arg_0.x, 23378i), Struct_1(true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 10>();
    let var_0 = global0.x;
    var var_1 = u_input.e | (-2147483647i | ~u_input.a.x);
    var var_2 = 0u;
    var var_3 = func_5(vec4<i32>(_wgslsmith_mod_i32(min(u_input.d.x, _wgslsmith_mod_i32(3484i, u_input.a.x)), -u_input.e | func_1(vec4<f32>(-1146f, -1000f, global1[_wgslsmith_index_u32(70486u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(true, false), global1[_wgslsmith_index_u32(0u, 10u)], vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], 923f, -978f, -374f))), max(0i, ~(~u_input.a.x)), firstTrailingBit(~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.e, 2147483647i, u_input.d.x, u_input.a.x))), u_input.a.x));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(4805u, reverseBits(32513u) | ~u_input.c.x), 10u)] * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 10u)] * 1100f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.c.x, 10u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1176f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zyz, firstTrailingBit(~_wgslsmith_div_u32(u_input.c.x, countOneBits(22947u))), vec4<i32>(-12100i, min(-2147483647i, var_3.c.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(select(var_3.c.yx, vec2<i32>(32352i, var_3.c.x), vec2<bool>(var_3.b.a, global0.x))), func_5(select(var_3.c, vec4<i32>(-28031i, -24979i, -4593i, u_input.b), vec4<bool>(var_3.d.a, global0.x, true, var_3.a.a))).c.wy), -2483i));
}

