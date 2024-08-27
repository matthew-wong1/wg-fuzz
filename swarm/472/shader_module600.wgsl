struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, i32(-2147483648));

var<private> global1: Struct_2 = Struct_2(false, vec2<u32>(1u, 18571u));

var<private> global2: array<i32, 16>;

var<private> global3: Struct_3 = Struct_3(Struct_2(false, vec2<u32>(1u, 5085u)), Struct_1(vec4<i32>(2147483647i, 8082i, 2147483647i, -1i), 1000f, false, false), 0u, vec4<f32>(-457f, -834f, -699f, 1360f));

var<private> global4: vec4<i32> = vec4<i32>(-38211i, -6326i, 0i, i32(-2147483648));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> vec4<i32> {
    global1 = arg_3.a;
    global1 = Struct_2(true, ~(~abs(vec2<u32>(4294967295u, 14851u))));
    global1 = global3.a;
    global2 = array<i32, 16>();
    var var_0 = ~min(~arg_3.a.b.x, max(u_input.d.x, global3.c ^ ~u_input.b.x));
    return arg_1.a;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_sub_i32(firstTrailingBit(10954i), -2147483647i);
    global2 = array<i32, 16>();
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.b.a.x, _wgslsmith_dot_vec4_i32(max(global3.b.a, vec4<i32>(global4.x, 2147483647i, global0.x, -16491i)), abs(global3.b.a)), _wgslsmith_mod_i32(reverseBits(-1i), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(19425u, global1.b.x), 16u)]), _wgslsmith_div_i32(global4.x, -40108i)), -countOneBits(vec4<i32>(arg_0, 1i, 9899i, -36809i))), global3.b.b, false, global1.a || !(any(vec4<bool>(false, global3.b.c, global3.b.c, true)) && true));
    global4 = _wgslsmith_mod_vec4_i32(global3.b.a, ~(vec4<i32>(1i, arg_0, _wgslsmith_add_i32(var_1.a.x, -15693i), ~global2[_wgslsmith_index_u32(0u, 16u)]) | func_3(vec4<bool>(var_1.c, true, true, true), global3.b, _wgslsmith_f_op_f32(-arg_1.x), Struct_3(Struct_2(var_1.d, vec2<u32>(global1.b.x, global3.a.b.x)), Struct_1(vec4<i32>(var_1.a.x, global3.b.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global0.x), 519f, var_1.d, false), global1.b.x, global3.d))));
    var var_2 = 17142u;
    return (global1.a & (false && (_wgslsmith_f_op_f32(global3.d.x * var_1.b) > global3.b.b))) & global3.b.d;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.d), global3.d, func_2(~arg_1.a.x, _wgslsmith_f_op_vec2_f32(step(global3.d.zw, _wgslsmith_f_op_vec2_f32(-global3.d.zz))))));
    global4 = vec4<i32>(global4.x | (i32(-1i) * -(~(-2147483647i))), select(~_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, arg_1.a.x), _wgslsmith_dot_vec4_i32(arg_1.a, global3.b.a)), min(~global3.b.a.x, ~global4.x & arg_1.a.x), arg_0.a), global0.x, global3.b.a.x);
    global1 = Struct_2(max(abs(1i), _wgslsmith_mult_i32(global3.b.a.x, -16073i)) <= u_input.e, global1.b);
    return Struct_2(false, ~u_input.d.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.a, Struct_1(~((global3.b.a << (vec4<u32>(u_input.b.x, u_input.c.x, 24215u, global1.b.x) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global3.c, global1.b.x, 43622u, 18877u), vec4<u32>(global3.c, 52u, global1.b.x, global3.c)) % vec4<u32>(32u))), global3.d.x, any(!vec4<bool>(global1.a, true, global3.b.c, global3.a.a)) == all(!vec2<bool>(global1.a, global3.a.a)), !global3.a.a), u_input.b.x);
    let var_1 = !var_0.a;
    global1 = func_1(global3.a, Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(global3.b.a.x, -1i, 52841i, -28028i), _wgslsmith_sub_vec4_i32(vec4<i32>(global4.x, 0i, global3.b.a.x, global3.b.a.x), global3.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x)), any(vec2<bool>(var_0.a, global1.a)), any(select(select(vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, var_1, var_1), vec3<bool>(var_1, true, false)), vec3<bool>(var_1, true, false), vec3<bool>(false, false, global3.a.a)))), 1u);
    var var_2 = 13681u;
    global2 = array<i32, 16>();
    var var_3 = func_3(select(vec4<bool>(!global3.b.c, true, true, true), select(select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(true, false, var_0.a, var_1), vec4<bool>(var_1, var_1, false, true)), select(vec4<bool>(false, global3.b.d, var_0.a, false), vec4<bool>(var_1, false, global1.a, global3.a.a), global1.a), !vec4<bool>(global3.a.a, global3.a.a, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, global3.a.a, false), vec4<bool>(true, var_0.a, var_1, false)), !vec4<bool>(var_0.a, true, true, global3.a.a), !var_1)), global3.b, -977f, Struct_3(func_1(Struct_2(global1.a, global1.b), global3.b, 3723u | u_input.c.x), Struct_1(~global3.b.a, _wgslsmith_f_op_f32(sign(-608f)), !global3.b.d, true), ~abs(var_0.b.x), _wgslsmith_f_op_vec4_f32(-global3.d))).x > -countOneBits(-25495i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global4.x, 3709i, global4.x));
}

