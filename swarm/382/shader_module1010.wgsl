struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: f32 = -495f;

var<private> global2: Struct_1;

var<private> global3: array<i32, 20>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1105f, -878f, 526f), 1519f), vec3<u32>(2202u, 37108u, 35176u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    global4 = Struct_2(global4.a, ~(~(u_input.a & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), vec3<u32>(85704u, 1u, 1u)))));
    global1 = _wgslsmith_f_op_f32(max(global2.b, -102f));
    let var_0 = false;
    global1 = _wgslsmith_f_op_f32(429f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global4.a.a.x)))));
    let var_1 = !any(select(vec3<bool>(var_0, u_input.c <= u_input.b, var_0), !select(vec3<bool>(false, false, var_0), vec3<bool>(true, global0[_wgslsmith_index_u32(global4.b.x, 22u)], false), var_0), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 22u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(global4.b.x, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)], var_0), all(vec3<bool>(var_0, global0[_wgslsmith_index_u32(109534u, 22u)], var_0)))));
    return _wgslsmith_f_op_f32(select(global2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.a.b))), global0[_wgslsmith_index_u32(~max(~global4.b.x, _wgslsmith_mod_u32(u_input.a.x, global4.b.x) >> (~1u % 32u)), 22u)]));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(global4.b.x, 22u)] || global0[_wgslsmith_index_u32(4294967295u, 22u)], true)));
    global0 = array<bool, 22>();
    let var_1 = global4.a;
    var var_2 = global4.a;
    let var_3 = global4.a;
    return Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3()), var_3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.a.x)), -660f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1786f, global2.a.x))), global4.b);
}

fn func_1() -> Struct_1 {
    global2 = Struct_1(global2.a, -493f);
    let var_0 = func_2(!select(!global0[_wgslsmith_index_u32(u_input.a.x, 22u)], all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(119522u, 22u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 22u)], false))), !global0[_wgslsmith_index_u32(9064u, 22u)]));
    global0 = array<bool, 22>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-500f, -704f, 265f, global2.a.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.b, global2.b, -1984f, -930f) * vec4<f32>(global4.a.b, var_0.a.a.x, -2269f, var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.b, var_0.a.b, global2.b, global4.a.a.x))))), vec4<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(sign(-1318f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.a.a.x * 792f))))), select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(global4.b.x, 22u)], true, true), vec4<bool>(false, any(vec4<bool>(true, false, false, true)), any(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], true)), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(global4.b.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]))), global0[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], select(!global0[_wgslsmith_index_u32(global4.b.x, 22u)], global0[_wgslsmith_index_u32(32317u | var_0.b.x, 22u)], !global0[_wgslsmith_index_u32(1u, 22u)]), global0[_wgslsmith_index_u32(61219u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(countOneBits(var_0.b.x ^ 4294967295u), 22u)], var_0.a.a.x < -147f, !(var_0.b.x <= global4.b.x)))));
    let var_2 = false;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(global4.a.a));
    let var_1 = func_1();
    var_0 = vec3<f32>(var_1.a.x, var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1527f))));
    let var_2 = ~u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(func_3());
    global4 = func_2(!all(vec4<bool>(any(vec3<bool>(true, false, false)), true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)] || true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 20u)], u_input.c | 22656i) << ((vec2<u32>(4294967295u, var_2) >> (vec2<u32>(u_input.d.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-53305i, u_input.b), vec2<i32>(u_input.b, 2147483647i), true), firstLeadingBit(vec2<i32>(global3[_wgslsmith_index_u32(4926u, 20u)], u_input.b))))), vec2<i32>(47035i, firstLeadingBit(-1i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(~global3[_wgslsmith_index_u32(var_2, 20u)], u_input.c), 2147483647i) | u_input.b);
}

