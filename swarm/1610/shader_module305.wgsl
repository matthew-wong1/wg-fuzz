struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<u32, 3>;

var<private> global2: array<f32, 28> = array<f32, 28>(-1338f, -1285f, -2096f, -1000f, 767f, 882f, -1657f, 751f, 1212f, -280f, -481f, -1000f, -188f, 1296f, 181f, 1822f, 241f, 1543f, 1608f, 1000f, -1591f, -2053f, -763f, 1216f, -330f, 353f, 1000f, 243f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec2<bool> {
    global2 = array<f32, 28>();
    let var_0 = !vec2<bool>(arg_0.x >= 53581i, false);
    let var_1 = vec2<u32>(~(~(~global0[_wgslsmith_index_u32(7808u, 2u)])) & countOneBits(~1u), u_input.d.x);
    var var_2 = Struct_2(Struct_1(var_0.x, ~var_1.x, !any(select(vec3<bool>(true, var_0.x, false), arg_1.wwx, false))));
    global0 = array<u32, 2>();
    return var_0;
}

fn func_2(arg_0: Struct_5) -> vec2<i32> {
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    var var_0 = all(select(arg_0.a.yy, vec2<bool>(arg_0.a.x, arg_0.a.x), func_3(vec4<i32>(_wgslsmith_sub_i32(1i, 1i), -10281i, 2147483647i, -40009i), vec4<bool>(true, false, true, arg_0.a.x))));
    let var_1 = Struct_1(func_3(countOneBits(firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, 33422i, u_input.a.x) | vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x))), vec4<bool>(!any(arg_0.a), all(vec2<bool>(arg_0.a.x, false)), arg_0.a.x, false)).x, u_input.d.x, arg_0.b);
    var var_2 = !vec4<bool>(var_1.c, false, true, arg_0.a.x);
    return max(u_input.a.xz, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a.zz));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    global2 = array<f32, 28>();
    let var_0 = countOneBits(~(~select(select(vec2<u32>(88734u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 2u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], u_input.c.x), arg_0.a), u_input.d.zy << (u_input.c.xx % vec2<u32>(32u)), arg_0.a)));
    global0 = array<u32, 2>();
    global1 = array<u32, 3>();
    let var_1 = firstLeadingBit(firstLeadingBit(u_input.a.xy));
    return Struct_1(!arg_0.a, reverseBits(_wgslsmith_mult_u32(~u_input.d.x, select(34503u, 17952u, arg_0.a) ^ var_0.x)), _wgslsmith_div_f32(arg_0.b, 966f) == _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.b * arg_0.b)))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(func_4(Struct_4(all(vec4<bool>(true, false, false, false)) == (global1[_wgslsmith_index_u32(37929u, 3u)] >= 0u), 1234f, func_2(Struct_5(vec3<bool>(false, true, true), true)))));
    global1 = array<u32, 3>();
    let var_1 = 401f;
    var var_2 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~reverseBits(~var_0.a.b), 28u)], _wgslsmith_f_op_f32(-var_1));
    let var_3 = _wgslsmith_mult_vec2_u32(~reverseBits(_wgslsmith_sub_vec2_u32(u_input.d.zx, ~u_input.c.yx)), u_input.c.yy);
    return Struct_3(-1000f, ~(-vec2<i32>(9840i, u_input.a.x)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_5(vec3<bool>(arg_1.a.a, arg_1.a.a, false), any(!vec3<bool>(true, any(vec3<bool>(false, arg_1.a.c, arg_1.a.c)), false & arg_1.a.c)));
    let var_1 = Struct_4(all(select(select(vec4<bool>(true, true, var_0.a.x, true), select(vec4<bool>(arg_1.a.c, var_0.a.x, true, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.b, false), true), var_0.b), vec4<bool>(var_0.b, true, true, all(var_0.a)), select(select(vec4<bool>(var_0.a.x, true, arg_1.a.c, false), vec4<bool>(arg_1.a.c, var_0.a.x, var_0.a.x, arg_1.a.c), vec4<bool>(false, var_0.a.x, var_0.a.x, true)), !vec4<bool>(false, var_0.a.x, var_0.b, var_0.b), any(vec3<bool>(var_0.a.x, var_0.b, var_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(min(-369f, _wgslsmith_f_op_f32(f32(-1f) * -252f))))), _wgslsmith_mult_vec2_i32(arg_0.b, ~abs(max(u_input.a.yz, arg_0.b))));
    let var_2 = ~(~(~u_input.d.x & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12586u, global1[_wgslsmith_index_u32(82219u, 3u)], 1u), u_input.d.xww), 2u)])) != _wgslsmith_div_u32(abs(4939u), _wgslsmith_sub_u32(~firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, arg_1.a.b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 2u)]), vec3<u32>(0u, 43874u, 54223u), false), ~u_input.d.xyx)));
    var_0 = Struct_5(select(var_0.a, select(vec3<bool>(arg_1.a.a & true, !arg_1.a.c, false), vec3<bool>(true, var_1.a || false, all(vec2<bool>(arg_1.a.c, true))), var_0.a), any(var_0.a)), any(!(!(!vec2<bool>(true, arg_1.a.c)))));
    global2 = array<f32, 28>();
    return Struct_2(Struct_1(true, _wgslsmith_add_u32(countOneBits(global0[_wgslsmith_index_u32(36337u, 2u)]), 0u), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), Struct_2(func_4(Struct_4(-393f <= global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(81191u, 3u)], 28u)], -423f, vec2<i32>(u_input.a.x, 1i)))), func_1());
    var var_1 = reverseBits(_wgslsmith_clamp_vec3_i32(abs(~u_input.a), -u_input.a, vec3<i32>(countOneBits(u_input.a.x), 31160i << (1u % 32u), _wgslsmith_div_i32(28455i, 1i)) | vec3<i32>(-u_input.a.x, 1i, countOneBits(u_input.a.x))));
    var_1 = u_input.a;
    let var_2 = !(!func_3(max(vec4<i32>(u_input.a.x, var_1.x, var_1.x, 2147483647i), vec4<i32>(1i, 20749i, 0i, u_input.a.x) << (u_input.d % vec4<u32>(32u))), vec4<bool>(var_1.x != 2147483647i, true, true, true)).x);
    global0 = array<u32, 2>();
    var var_3 = Struct_5(vec3<bool>(any(!vec2<bool>(var_0.a.a, var_0.a.c)), !all(select(vec4<bool>(false, var_2, var_0.a.c, true), vec4<bool>(false, var_0.a.a, true, var_2), var_0.a.a)), false), !var_0.a.a);
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(-8762i, _wgslsmith_mult_i32(~1i, _wgslsmith_mod_i32(1i, u_input.a.x)), !(var_4 >= var_4))), countOneBits(vec3<i32>(var_1.x, ~1i & _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 2147483647i)));
}

