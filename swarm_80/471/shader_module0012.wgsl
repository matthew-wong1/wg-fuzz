struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<i32, 24> = array<i32, 24>(0i, 5320i, i32(-2147483648), 0i, -35170i, -1i, -1i, -1i, -4446i, i32(-2147483648), 1i, -14193i, -12354i, -10655i, 1i, 0i, 1i, 10689i, 1i, -1245i, -1i, -71539i, 2147483647i, 7770i);

var<private> global2: bool;

var<private> global3: vec2<u32> = vec2<u32>(99804u, 10892u);

var<private> global4: array<u32, 13> = array<u32, 13>(39968u, 4294967295u, 1u, 23080u, 4294967295u, 4294967295u, 1u, 67152u, 57450u, 1u, 67630u, 61763u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> u32 {
    global1 = array<i32, 24>();
    var var_0 = 15393u;
    let var_1 = Struct_2(select(firstLeadingBit(-vec4<i32>(arg_0, arg_0, arg_0, arg_0) >> ((vec4<u32>(859u, global3.x, u_input.a.x, 4294967295u) ^ vec4<u32>(global4[_wgslsmith_index_u32(1u, 13u)], 1u, global3.x, 5426u)) % vec4<u32>(32u))), -(~vec4<i32>(arg_0, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], 24u)], arg_0, -5318i)), !(!(!vec4<bool>(false, false, arg_2, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x * -1272f), _wgslsmith_f_op_f32(-arg_1.a.x), true)), _wgslsmith_f_op_f32(step(-1168f, 1303f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x) + 663f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x), _wgslsmith_f_op_f32(arg_1.a.x - 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 480f, -388f, 2477f) * vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 1105f))))), !select(select(!vec3<bool>(true, arg_2, false), !vec3<bool>(false, arg_2, true), arg_2), select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(arg_2, arg_2, true)), any(vec4<bool>(true, true, arg_2, arg_2)), true)));
    global0 = array<Struct_2, 1>();
    return global3.x;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<u32>) -> vec3<bool> {
    global3 = max(vec2<u32>(func_3(arg_2, Struct_3(vec3<f32>(1f, 1f, 1f)), !all(vec4<bool>(false, false, false, false))), firstLeadingBit(global3.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(43528u, _wgslsmith_div_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(1u, 13u)], u_input.a.x), 1u)), ~reverseBits(~vec2<u32>(4294967295u, u_input.a.x))));
    let var_0 = ~countOneBits(77226u);
    global0 = array<Struct_2, 1>();
    return select(select(!vec3<bool>(all(vec2<bool>(arg_0, arg_0)), arg_0, any(vec2<bool>(false, arg_0))), !(!select(vec3<bool>(arg_0, false, true), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, false))), !arg_0), vec3<bool>(firstTrailingBit(-2147483647i & arg_2) > _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(arg_1.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec3<i32>(22652i, 2147483647i, global1[_wgslsmith_index_u32(var_0, 24u)])), false, !(_wgslsmith_dot_vec3_i32(vec3<i32>(36586i, global1[_wgslsmith_index_u32(1u, 24u)], 0i), vec3<i32>(arg_2, arg_2, arg_2)) > _wgslsmith_add_i32(0i, global1[_wgslsmith_index_u32(25203u, 24u)]))), false);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = select(select(arg_0, select(func_2(select(arg_0.x, arg_0.x, true), u_input.a.xyz, ~global1[_wgslsmith_index_u32(global3.x, 24u)], ~vec2<u32>(u_input.a.x, 107141u)), arg_0, all(vec3<bool>(true, true, true))), arg_1.x), select(arg_0, vec3<bool>(!arg_0.x, false, false), arg_0), vec3<bool>(any(arg_0), !arg_1.x, any(!(!arg_0))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1121f, 861f, -2100f)))) - vec3<f32>(_wgslsmith_f_op_f32(select(-981f, -2092f, true)), _wgslsmith_f_op_f32(1100f - 1075f), 1f)))));
    let var_2 = Struct_3(var_1.a);
    var var_3 = global4[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_4 = global1[_wgslsmith_index_u32(0u, 24u)];
    return !vec3<bool>(!(any(var_0.yy) && (false || var_0.x)), !select(false, false, arg_1.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 25880u) << (u_input.a.ww % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(u_input.a.wy, u_input.a.xy)));
    let var_0 = Struct_2(~(~vec4<i32>(20583i, global1[_wgslsmith_index_u32(4294967295u, 24u)] << (0u % 32u), 2147483647i, ~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], 24u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) + -624f), 340f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(737f)) - -719f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_f_op_f32(-973f + -231f)))), !(!func_1(vec3<bool>(true, true, true), vec2<bool>(true, true))));
    var var_1 = var_0.c.x;
    var_1 = false;
    global4 = array<u32, 13>();
    global2 = !var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(firstLeadingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, 0i, global1[_wgslsmith_index_u32(global3.x, 24u)], var_0.a.x), var_0.a)), -min(var_0.a, countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(global3.x, 24u)], global1[_wgslsmith_index_u32(3992u, 24u)], -1i)))), var_0.a.xz, vec3<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x, countOneBits(_wgslsmith_div_u32(~4294967295u, ~9670u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -737f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)))))));
}

