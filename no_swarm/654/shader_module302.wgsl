struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<vec4<u32>, 3>;

var<private> global2: u32;

var<private> global3: array<vec3<u32>, 4>;

var<private> global4: vec4<f32> = vec4<f32>(393f, 1444f, -331f, -1382f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = arg_0;
    global3 = array<vec3<u32>, 4>();
    var var_1 = arg_0;
    var var_2 = u_input.a;
    let var_3 = vec2<u32>(10703u, 4294967295u);
    return 1u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(66073u, 30u)], -1502f, 1197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f + _wgslsmith_f_op_f32(-374f - -1858f)))));
    let var_0 = _wgslsmith_clamp_vec4_i32(-(-arg_0.a >> (vec4<u32>(arg_0.b.x, 4294967295u, 0u, arg_0.b.x) % vec4<u32>(32u))) >> (vec4<u32>(u_input.e | (u_input.e & 27719u), ~(~4294967295u), ~(~6327u), u_input.e | _wgslsmith_mult_u32(arg_0.b.x, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.c, u_input.d, -1i), vec4<i32>(14096i, arg_0.a.x, -1i, 8162i)), 0i, 3892i, -_wgslsmith_sub_i32(u_input.b.x, -17910i)), arg_0.a), vec4<i32>(-((u_input.d & arg_0.a.x) << (_wgslsmith_mod_u32(u_input.e, u_input.c.x) % 32u)), arg_0.a.x, u_input.d, -51503i));
    global1 = array<vec4<u32>, 3>();
    global0 = array<f32, 30>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global4.x - 403f), 2117f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.zx * global4.zz)))));
    return Struct_1(var_0, abs(global3[_wgslsmith_index_u32(arg_0.b.x, 4u)]) & vec3<u32>(_wgslsmith_clamp_u32(arg_0.b.x | 4294967295u, 1u, 0u), _wgslsmith_div_u32(min(4294967295u, u_input.e), 18909u), arg_0.b.x), _wgslsmith_div_i32(u_input.b.x, var_0.x));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0.c;
    let var_1 = true;
    let var_2 = arg_0.a.ww;
    var var_3 = !vec4<bool>(true, !((arg_0.b.x != arg_0.b.x) || var_1), var_1, !(!all(vec4<bool>(var_1, true, var_1, var_1))));
    global4 = vec4<f32>(_wgslsmith_f_op_f32(-138f + -424f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1624f)))), -763f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(459f)) - global0[_wgslsmith_index_u32(29175u, 30u)]) - 135f));
    return vec2<bool>(any(select(!vec4<bool>(var_3.x, var_1, true, var_1), select(!vec4<bool>(var_1, var_3.x, false, var_1), !vec4<bool>(true, true, var_1, var_1), vec4<bool>(true, true, true, false)), vec4<bool>(any(vec2<bool>(false, var_1)), false, true, var_1))), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~vec2<u32>(~33315u, ~u_input.e) ^ vec2<u32>(10258u, func_1(Struct_1(vec4<i32>(-36984i, u_input.d, u_input.b.x, u_input.d), u_input.c.xxx, -3643i), Struct_1(vec4<i32>(u_input.d, -2147483647i, u_input.b.x, u_input.b.x), global3[_wgslsmith_index_u32(u_input.e, 4u)], u_input.d))), vec2<u32>(~u_input.e, 4294967295u) ^ ~firstLeadingBit(~u_input.c.wy), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !func_3(func_2(Struct_1(vec4<i32>(2147483647i, 27447i, u_input.b.x, -1i), vec3<u32>(19804u, u_input.e, u_input.c.x), u_input.b.x))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), func_3(Struct_1(vec4<i32>(u_input.d, -47028i, u_input.b.x, u_input.b.x), u_input.c.xxx, -28472i))), vec2<bool>(true, true), true)));
    let var_1 = Struct_1(-(~vec4<i32>(-19229i, u_input.d, u_input.b.x, u_input.d)), abs(global3[_wgslsmith_index_u32(0u, 4u)]), firstLeadingBit(u_input.b.x));
    let var_2 = global4.xzx;
    let var_3 = u_input.c.x;
    let var_4 = abs(8798u);
    let var_5 = Struct_1(var_1.a, vec3<u32>(0u, 0u, abs(var_4)), var_1.c);
    let var_6 = 595f;
    global1 = array<vec4<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(3215i ^ var_5.c, 54608i)), vec4<f32>(_wgslsmith_f_op_f32(sign(var_6)), -643f, -1310f, _wgslsmith_f_op_f32(f32(-1f) * -832f)), max(firstLeadingBit(vec3<u32>(4294967295u, _wgslsmith_div_u32(var_0.x, var_1.b.x), abs(49493u))), global3[_wgslsmith_index_u32(var_0.x, 4u)]), func_2(func_2(func_2(Struct_1(vec4<i32>(31816i, var_5.c, 1i, var_5.c), vec3<u32>(0u, 0u, 1u), u_input.d)))).b, ~_wgslsmith_mult_i32(6048i, u_input.d));
}

