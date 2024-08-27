struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec2<bool>, 10>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(31707u, 1u), 2147483647i, vec2<i32>(2147483647i, 1i));

var<private> global4: Struct_2 = Struct_2(vec3<i32>(51508i, 24728i, 104i), Struct_1(vec2<u32>(22081u, 25111u), -24188i, vec2<i32>(1i, 8949i)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_2(vec3<i32>(46503i, ~select(_wgslsmith_sub_i32(arg_2.b, u_input.e.x), _wgslsmith_add_i32(-2147483647i, global3.c.x), true), _wgslsmith_dot_vec2_i32(global4.b.c, firstLeadingBit(vec2<i32>(arg_2.b, 2147483647i) & global4.b.c))), global4.b);
    let var_2 = global3.a.x & firstLeadingBit(global3.a.x);
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(!global0.x);
    let var_1 = min(1u, 1u) != _wgslsmith_mod_u32(1u, global2.a.x);
    var var_2 = select(vec2<bool>(true, false), select(select(select(!global1[_wgslsmith_index_u32(41586u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], select(global1[_wgslsmith_index_u32(global3.a.x, 10u)], global1[_wgslsmith_index_u32(global2.a.x, 10u)], false)), !vec2<bool>(global0.x, var_0.a), select(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(func_3(vec2<u32>(global4.b.a.x, 0u), var_0.a, global4.b, var_0), 10u)], global0.x)), select(vec2<bool>(select(global0.x, var_0.a, true), true), select(vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], false), var_0.a), !vec2<bool>(global0.x, var_0.a)), false), !vec2<bool>(any(select(global1[_wgslsmith_index_u32(global3.a.x, 10u)], vec2<bool>(var_0.a, global0.x), vec2<bool>(false, true))), select(true, select(var_1, global0.x, true), any(vec3<bool>(false, var_1, var_1)))));
    var_2 = !global1[_wgslsmith_index_u32(u_input.c.x, 10u)];
    let var_3 = true;
    return Struct_2(u_input.e & vec3<i32>(u_input.a, 1i, 1i), Struct_1(~(~(~global4.b.a)), ~u_input.e.x, -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.b.c.x, 0i, global4.a.x), vec3<i32>(-20781i, global3.b, global4.a.x)), 20744i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<f32>) -> u32 {
    global4 = func_2();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -165f)), 1030f)));
    let var_1 = Struct_2(global4.a, arg_1);
    let var_2 = func_2();
    global0 = select(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(14838u, _wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(1u), reverseBits(global4.b.a.x)), 4294967295u)), 10u)], global1[_wgslsmith_index_u32(1u, 10u)]);
    return _wgslsmith_mult_u32(1u, 1u);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> vec4<bool> {
    var var_0 = ~(~vec4<u32>(func_1(vec2<f32>(1597f, -1423f), Struct_1(vec2<u32>(0u, u_input.c.x), -50131i, u_input.e.zz), Struct_4(false, true), vec2<f32>(-575f, -973f)), _wgslsmith_mult_u32(global4.b.a.x ^ 0u, ~global3.a.x), ~_wgslsmith_sub_u32(0u, u_input.b.x), func_2().b.a.x));
    return select(vec4<bool>(global0.x, global0.x, true, !(all(vec3<bool>(false, true, false)) && !global0.x)), !select(!(!vec4<bool>(false, global0.x, true, global0.x)), !vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global3.b >= -54396i, global0.x, false, all(global1[_wgslsmith_index_u32(4294967295u, 10u)]))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global4.b;
    global3 = global4.b;
    var var_0 = any(func_4(Struct_2(u_input.e & (global4.a & u_input.e), Struct_1(vec2<u32>(1u, global4.b.a.x), _wgslsmith_mult_i32(u_input.d, global2.c.x), ~vec2<i32>(-7108i, global2.b))), global3.c.x, vec3<u32>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(449f, 681f)), global4.b, Struct_4(false, global0.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(325f, 3028f)))), 1u, countOneBits(u_input.b.x >> (u_input.c.x % 32u)))));
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-991f, _wgslsmith_f_op_f32(floor(334f)), global0.x)), 1f), 403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -114f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f - 903f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(195f, 780f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(885f, -1000f, -420f, 928f))), vec4<f32>(352f, -129f, 197f, -1327f))))), (abs(_wgslsmith_dot_vec3_u32(u_input.b.zzw, vec3<u32>(0u, global4.b.a.x, global3.a.x))) ^ firstLeadingBit(~global4.b.a.x)) <= 1u));
    global1 = array<vec2<bool>, 10>();
    let var_3 = func_4(Struct_2(~vec3<i32>(func_2().a.x, ~global2.c.x, i32(-1i) * -1i), Struct_1(min(abs(u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global3.a.x), global3.a)), ~(global4.a.x & -2147483647i), global4.b.c)), 2147483647i, u_input.b.yxx).xw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1297f + var_2.x)))), var_2.x, true)), firstTrailingBit(u_input.d), -14270i);
}

