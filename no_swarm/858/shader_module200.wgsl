struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<u32, 20>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<vec3<i32>, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global3 = array<vec3<i32>, 22>();
    global1 = array<u32, 20>();
    let var_0 = vec4<bool>(false, global0.x, !(countOneBits(~global1[_wgslsmith_index_u32(u_input.a, 20u)]) >= countOneBits(1u)), arg_1.a.x);
    var var_1 = -641f;
    global3 = array<vec3<i32>, 22>();
    return 1000f;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    global1 = array<u32, 20>();
    var var_0 = Struct_1(vec3<bool>(any(vec2<bool>(false, arg_1.a.x)), !(_wgslsmith_clamp_i32(u_input.b, 2147483647i, arg_1.d.x) <= -4595i), (_wgslsmith_mult_u32(arg_0, u_input.a) > u_input.a) && true), ~(~u_input.b), 787f, vec3<i32>(-37153i, 0i, ~max(u_input.d, arg_1.d.x) & 1i));
    var var_1 = 434f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - var_0.c);
    var var_2 = arg_1;
    let var_3 = u_input.a;
    return ~(~(~vec4<i32>(var_0.d.x >> (global1[_wgslsmith_index_u32(u_input.a, 20u)] % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, var_2.b, -4517i, 0i), vec4<i32>(u_input.d, 1i, 0i, var_2.b)), abs(-47397i), -var_0.d.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global3 = array<vec3<i32>, 22>();
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(select(func_3(25296u, arg_0), vec4<i32>(arg_2.b, u_input.b, -2147483647i, 2147483647i), true), firstTrailingBit(firstLeadingBit(vec4<i32>(0i, arg_0.b, arg_0.b, u_input.d)))), firstLeadingBit(vec4<i32>(~0i, -arg_2.b, 37331i, 54277i))) << (firstTrailingBit(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(336u, u_input.a, u_input.a, 1u)), vec4<u32>(89858u, _wgslsmith_mult_u32(4488u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 20u)]), ~1u, 0u))) % vec4<u32>(32u));
    let var_1 = arg_2.d.x;
    var var_2 = Struct_1(vec3<bool>(true, true, any(select(vec2<bool>(global0.x, arg_1.x), vec2<bool>(true, true), vec2<bool>(arg_0.a.x, arg_2.a.x)))), -34971i, -892f, -(vec3<i32>(-1i) * -vec3<i32>(-13660i, var_0.x, 30589i)));
    global0 = vec2<bool>(any(arg_2.a), arg_0.a.x);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-367f, _wgslsmith_f_op_f32(1962f * _wgslsmith_f_op_f32(func_1(273f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31945u, 20u)], 24u)], u_input.a)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 24u)], vec2<bool>(global0.x, true), global2[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_f_op_f32(1342f - 810f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(928f, -630f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2589f, 1000f) * vec2<f32>(-1277f, 590f))) - vec2<f32>(-1199f, 1f))));
    var var_1 = firstTrailingBit(-_wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(0i, 2147483647i, -2147483647i, u_input.c.x)), firstLeadingBit(vec4<i32>(u_input.b, u_input.c.x, -7852i, 0i)), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b, 0i, u_input.b), vec4<i32>(0i, u_input.b, 10583i, -22346i), vec4<i32>(u_input.d, u_input.c.x, 13137i, 1i)))));
    global1 = array<u32, 20>();
    var var_2 = Struct_1(vec3<bool>(all(vec3<bool>(global0.x, all(vec4<bool>(global0.x, false, false, false)), -1i <= u_input.d)), !any(!vec3<bool>(true, false, global0.x)), true), -firstTrailingBit(~_wgslsmith_div_i32(0i, -1i)), _wgslsmith_div_f32(2266f, var_0.x), ~vec3<i32>(~_wgslsmith_mod_i32(2147483647i, -5741i), ~(~(-56229i)), u_input.b));
    let var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(~(~firstTrailingBit(56872u))), 24u)];
    var var_4 = Struct_1(var_2.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.x, _wgslsmith_mult_i32(var_1.x, 11527i), ~2147483647i), var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(180f, -561f))), var_1.yzx | var_1.wxw);
    var var_5 = global2[_wgslsmith_index_u32(~abs(u_input.a), 24u)];
    let var_6 = min(4294967295u, reverseBits(34372u));
    var var_7 = Struct_1(var_5.a, 2147483647i, _wgslsmith_f_op_f32(trunc(2080f)), max(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, var_5.b, 2147483647i), _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(var_6, 22u)], var_3.d), var_3.d.x), firstLeadingBit(-var_5.d)) ^ -var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_5.c - _wgslsmith_f_op_f32(sign(var_3.c)))));
}

