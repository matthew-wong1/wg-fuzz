struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 1i, 22420i);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), true), vec2<f32>(1000f, -184f), Struct_1(vec2<bool>(true, false), true));

var<private> global2: Struct_1;

var<private> global3: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec2<f32> {
    global2 = global1.a;
    global1 = Struct_2(Struct_1(vec2<bool>(!global1.c.a.x, all(!vec2<bool>(global2.b, global3[_wgslsmith_index_u32(0u, 1u)]))), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-753f - -623f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.x)))) - _wgslsmith_f_op_vec2_f32(floor(global1.b))), Struct_1(select(vec2<bool>(all(vec4<bool>(global1.c.b, true, true, global1.a.a.x)), select(false, false, global2.a.x)), !(!arg_1.yy), !arg_1.zy), global1.a.a.x));
    global0 = firstTrailingBit(max(vec3<i32>(-31744i, global0.x, 0i), firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, -2147483647i), vec3<i32>(global0.x, -31984i, global0.x)))));
    var var_0 = countOneBits(_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(u_input.a, 0u)), ~abs(min(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(4294967295u, abs(arg_0))));
    let var_1 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.b + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f + global1.b.x)), -677f))));
}

fn func_2() -> Struct_2 {
    var var_0 = global1.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(0u, vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 1u)], global2.b, global1.a.b)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-360f, 780f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-424f - var_1.x), 219f))), var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_1.x - 519f)), _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-797f * var_1.x)))), _wgslsmith_f_op_f32(-141f - -354f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_2 * vec4<f32>(679f, var_2.x, 155f, 1606f)))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(755f + var_1.x), _wgslsmith_f_op_f32(global1.b.x + -1722f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, 1002f, var_2.x, -579f)), var_2)));
    let var_4 = Struct_3(global1.a, ~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(10607u, u_input.a))) << (vec2<u32>(select(31453u, u_input.a, false), u_input.a) % vec2<u32>(32u))), global1.a, 4294967295u);
    return Struct_2(var_4.a, vec2<f32>(_wgslsmith_f_op_f32(sign(2132f)), -1000f), Struct_1(select(vec2<bool>(var_4.c.a.x, false), var_4.c.a, _wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(sign(-1026f))), !all(!vec4<bool>(false, true, global3[_wgslsmith_index_u32(var_4.d, 1u)], global1.c.a.x))));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = u_input.a;
    let var_1 = max(reverseBits(32040u), reverseBits(~u_input.a));
    var var_2 = func_2();
    var var_3 = false;
    let var_4 = u_input.a << ((firstTrailingBit(reverseBits(u_input.a >> (85641u % 32u))) & 1u) % 32u);
    return vec2<i32>(_wgslsmith_dot_vec2_i32(global0.zz << (~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 24544u), vec2<u32>(var_1, var_1)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(reverseBits(global0.x), 1i), firstTrailingBit(global0.x))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(global1.b.x * 580f), -801f, _wgslsmith_f_op_f32(abs(159f))));
    global0 = vec3<i32>(~firstLeadingBit(-_wgslsmith_mod_i32(1i, global0.x)), firstTrailingBit(24967i) & (~0i ^ global0.x), _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(func_1(global1.a), global0.zx), global0.xz));
    global2 = func_2().a;
    let var_1 = 1i;
    let var_2 = 0u;
    var var_3 = func_2();
    let var_4 = !select(vec4<bool>(global1.a.a.x, global1.a.a.x, false, true), vec4<bool>(global2.a.x, false, false, !(!global3[_wgslsmith_index_u32(10398u, 1u)])), vec4<bool>(var_3.c.b, all(vec3<bool>(false, global2.b, false)), global1.c.a.x, !(var_3.a.a.x && global1.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(reverseBits(i32(-1i) * -2147483647i))), _wgslsmith_f_op_vec3_f32(-var_0.xyz), firstLeadingBit(-(~(global0.x | 37504i))), vec4<u32>(u_input.a, ~(~0u), 10740u, u_input.a));
}

