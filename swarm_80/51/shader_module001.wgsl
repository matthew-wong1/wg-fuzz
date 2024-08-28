struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(25151i, -12109i, 18103i, 24697i);

var<private> global1: array<vec3<bool>, 31>;

var<private> global2: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global3: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global4: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(true, all(vec3<bool>(true, global4.a, true)));
    global1 = array<vec3<bool>, 31>();
    return var_0;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = !func_2(!(any(vec2<bool>(arg_1.b, arg_1.a)) & true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-402f)))))), abs(2147483647i)).b;
    let var_1 = func_2(func_2(any(vec4<bool>(global4.a, !var_0, var_0, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -476f)))), global3.x).a, 169f, -44941i);
    let var_2 = vec2<i32>(select(arg_0.x, -15931i, global4.a), _wgslsmith_dot_vec2_i32(arg_0.xx, vec2<i32>(global0.x, -9264i) | vec2<i32>(2147483647i | global3.x, ~(-25226i))));
    let var_3 = Struct_1(false, !func_2(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1207f, 502f))), 0i).a);
    let var_4 = func_2(true, -2369f, u_input.c);
    return func_2(true, _wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-236f * 443f)))), global0.x).a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = false;
    var var_1 = func_2(global4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1727f - 1533f))) - -750f), _wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global0.x, global3.x, -16984i), vec4<i32>(13929i, u_input.b.x, global3.x, arg_0)) >> (abs(vec4<u32>(0u, 1u, 1u, 6215u)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, 1i, global3.x, 26131i), vec4<i32>(-36605i, 45567i, global0.x, 38072i)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4412u, 4294967295u, 17933u), vec4<u32>(25331u, u_input.d, u_input.a.x, u_input.a.x)) != ~78140u), abs(max(vec4<i32>(arg_0, 1i, u_input.c, global0.x), vec4<i32>(arg_0, 2147483647i, -2147483647i, arg_0))) ^ vec4<i32>(global3.x, global0.x, -1i, _wgslsmith_add_i32(1i, global0.x))));
    var var_2 = !select(vec2<bool>(false & any(vec3<bool>(var_1.b, false, false)), !(true || var_1.a)), vec2<bool>(_wgslsmith_clamp_u32(13853u, u_input.d, 9871u) != 73804u, global4.b || func_3(vec4<i32>(-52159i, 0i, u_input.b.x, 1i), Struct_1(false, false), u_input.a.x)), var_1.a);
    let var_3 = func_2(var_1.b, 1245f, i32(-1i) * -arg_0);
    var_2 = select(!select(vec2<bool>(true, true), select(select(vec2<bool>(global4.a, var_3.b), vec2<bool>(true, var_0), global4.a), vec2<bool>(var_0, var_3.a), true), false), vec2<bool>(u_input.a.x != (1u << (_wgslsmith_sub_u32(u_input.d, 35349u) % 32u)), var_3.b), any(!select(select(vec3<bool>(true, false, global4.b), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(var_0, var_2.x, var_3.a), global1[_wgslsmith_index_u32(47616u, 31u)], vec3<bool>(var_0, false, var_0)), global1[_wgslsmith_index_u32(abs(38045u), 31u)])));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~27890u;
    var var_1 = func_1(_wgslsmith_div_i32(-45365i, 7670i));
    global1 = array<vec3<bool>, 31>();
    var var_2 = 9338i;
    let var_3 = Struct_1(true, abs(0u) > u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(-24246i), -63032i, global0.x, global0.x >> (u_input.d % 32u)), global0.x);
}

