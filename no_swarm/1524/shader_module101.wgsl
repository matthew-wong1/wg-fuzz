struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(950f, 1201f), 1u, Struct_1(vec2<u32>(97058u, 26111u)));

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, false, false, true, true, true, true, true, false, true, false, true, true, false, true, true, true, true, true, false, false);

var<private> global2: Struct_2;

var<private> global3: array<u32, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = -vec3<i32>(1i, _wgslsmith_mod_i32(u_input.b, u_input.b), 2147483647i);
    let var_1 = var_0.x;
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    global0 = arg_0;
    return select(!select(vec2<bool>(select(true, true, global1[_wgslsmith_index_u32(arg_1.b, 23u)]), !global1[_wgslsmith_index_u32(4294967295u, 23u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(98985u, 23u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(global2.c.a.x, 23u)], global1[_wgslsmith_index_u32(global2.c.a.x, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(46899u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), global1[_wgslsmith_index_u32(1u, 23u)])), vec2<bool>(!global1[_wgslsmith_index_u32(arg_1.c.a.x, 23u)], true || global1[_wgslsmith_index_u32(global0.b, 23u)])), !vec2<bool>(!all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], false)), global1[_wgslsmith_index_u32(47132u, 23u)]), global1[_wgslsmith_index_u32(95872u, 23u)]);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: bool) -> vec2<bool> {
    let var_0 = Struct_2(global0.a, arg_0, Struct_1(u_input.a.xy));
    var var_1 = var_0.c;
    var var_2 = var_0.c;
    global1 = array<bool, 23>();
    var var_3 = false;
    return !(!(!func_3(var_0, var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, var_0.a.x, 722f)), global0.c)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.c.a.x, global0.c.a.x), ~select(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global0.b), ~vec2<u32>(60774u, 55760u), func_2(u_input.a.x, 4294967295u, 178f, global1[_wgslsmith_index_u32(74252u, 23u)]))));
    var var_1 = Struct_2(vec2<f32>(global2.a.x, -763f), ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 37389u), vec2<u32>(var_0.a.x, global0.b)) | countOneBits(global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), global2.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.a.x, -1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, 756f, -1117f), vec3<f32>(var_1.a.x, global0.a.x, global0.a.x), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, -441f, global2.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -1639f, 942f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 519f, var_1.a.x)))))));
    global0 = Struct_2(var_2.zx, 1u, var_1.c);
    var_1 = Struct_2(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + -1129f))), abs(global2.c.a.x), var_1.c);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(abs(-2015f)), !global1[_wgslsmith_index_u32(1u, 23u)])))), var_0.a.x, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.c.a);
    global0 = func_1();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(8929u, countOneBits(var_0.a.x), ~1156u)), global0.c);
    var_0 = global0.c;
    global3 = array<u32, 23>();
    var var_2 = !(global3[_wgslsmith_index_u32(var_0.a.x, 23u)] >= countOneBits(1u));
    var_2 = global1[_wgslsmith_index_u32(0u, 23u)];
    let var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(970f, global0.a.x, var_1.a.x, -1685f) * vec4<f32>(global0.a.x, global2.a.x, 323f, global0.a.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-829f, global0.a.x, var_1.a.x, global0.a.x))))))))), _wgslsmith_clamp_i32(reverseBits(-u_input.b), 0i, ~abs(u_input.b)) | 14216i, vec4<u32>(max(var_3.a.x, max(global3[_wgslsmith_index_u32(global0.b, 23u)], u_input.a.x)), global3[_wgslsmith_index_u32(0u, 23u)] | var_3.a.x, ~u_input.a.x, _wgslsmith_sub_u32(firstLeadingBit(103444u), _wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(global2.b, 23u)]))) & min(vec4<u32>(4294967295u, 2703u, abs(1u), _wgslsmith_div_u32(global2.c.a.x, 1u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(24706u, 43810u, 0u, 32590u), vec4<u32>(global3[_wgslsmith_index_u32(var_0.a.x, 23u)], 7006u, 4294967295u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.a.x, 47516u, 32039u, 0u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a.x, 1u, global0.c.a.x)))), ~(~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-369f, -2385f, global2.a.x, global0.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.x, 461f, global2.a.x, global2.a.x), vec4<f32>(var_1.a.x, global0.a.x, global0.a.x, 1949f))))))));
}

