struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 25431u;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(10035u, 4294967295u));

var<private> global2: array<u32, 13> = array<u32, 13>(4294967295u, 0u, 23205u, 55555u, 48116u, 0u, 4497u, 4294967295u, 35899u, 20055u, 4294967295u, 0u, 4294967295u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    var var_0 = 55575u;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), -1000f))), -1927f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(arg_1 - -227f)), -818f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f + arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 946f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1417f)))), _wgslsmith_f_op_f32(f32(-1f) * -624f), arg_1, arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1218f, arg_1, 1380f)) - vec4<f32>(234f, arg_1, _wgslsmith_f_op_f32(abs(arg_1)), arg_1))));
    let var_3 = 39970u;
    global1 = Struct_1(~(var_1.a >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))) | (vec2<u32>(~31452u, arg_0.a.x) << (vec2<u32>(4294967295u, ~var_1.a.x) % vec2<u32>(32u))));
    return ~vec4<u32>(var_1.a.x, 31701u, ~var_1.a.x | ~_wgslsmith_sub_u32(0u, var_1.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(77506u, var_3) >> (u_input.b.zz % vec2<u32>(32u)), vec2<u32>(global2[_wgslsmith_index_u32(22513u, 13u)], 79151u) >> (~vec2<u32>(var_1.a.x, 10765u) % vec2<u32>(32u))));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(~(~vec2<u32>(global2[_wgslsmith_index_u32(~u_input.b.x, 13u)], 993u)));
    let var_1 = Struct_1(~_wgslsmith_mod_vec2_u32(var_0.a, abs(abs(u_input.b.zy))));
    global0 = 40477u;
    var_0 = var_1;
    global1 = var_1;
    return u_input.a << (abs(~(~37790u | var_0.a.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(30791u, global1.a.x), vec2<u32>(global2[_wgslsmith_index_u32(3062u, 13u)], u_input.b.x)), u_input.b.zx, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), global1.a, global1.a))));
    let var_0 = vec4<i32>(select(0i, 21159i ^ (u_input.a >> (global1.a.x % 32u)), true == all(vec2<bool>(true, false))), u_input.a, -2147483647i, _wgslsmith_mod_i32(~(-u_input.a), u_input.c)) >> (~((~vec4<u32>(1u, 15741u, 46146u, u_input.b.x) | reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], 4294967295u, global1.a.x, 4294967295u))) >> (func_1(Struct_1(vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 13u)])), 532f) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(~u_input.a, 5943i), max(u_input.c & -2147483647i, _wgslsmith_sub_i32(u_input.a, -1i)), 1i), func_2(_wgslsmith_f_op_f32(ceil(-1000f)))));
    global2 = array<u32, 13>();
    let var_2 = _wgslsmith_div_f32(1997f, -1578f);
    global0 = ~(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(countOneBits(8194u), 13u)], 13u)] & 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(84040u, 13u)], u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(10302u, u_input.b.x, global2[_wgslsmith_index_u32(77930u, 13u)], 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u, 0u, 0u)), abs(vec4<u32>(u_input.b.x, global1.a.x, 8863u, u_input.b.x) & vec4<u32>(0u, global1.a.x, 4294967295u, global1.a.x))), _wgslsmith_mod_u32(1841u, _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_add_u32(19940u, 1u), 1u)));
}

