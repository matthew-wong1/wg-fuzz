struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 137834u, 1u, 52295u);

var<private> global1: i32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<bool>(true, true, true, true), 51100i), Struct_1(vec4<bool>(true, true, false, false), 52187i), Struct_1(vec4<bool>(true, true, true, false), 69087i), Struct_1(vec4<bool>(true, true, false, true), 9482i), Struct_1(vec4<bool>(true, true, false, false), -27776i), Struct_1(vec4<bool>(false, true, false, false), 1i), Struct_1(vec4<bool>(false, true, true, false), 4935i), Struct_1(vec4<bool>(true, false, true, true), -33986i), Struct_1(vec4<bool>(false, true, false, false), 115i), Struct_1(vec4<bool>(true, false, true, false), 64930i), Struct_1(vec4<bool>(false, true, false, false), 1i), Struct_1(vec4<bool>(true, true, true, false), i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, false), -665i), Struct_1(vec4<bool>(true, true, true, true), -14467i), Struct_1(vec4<bool>(false, true, false, false), 6790i), Struct_1(vec4<bool>(true, false, true, false), 2147483647i), Struct_1(vec4<bool>(false, false, false, true), 0i), Struct_1(vec4<bool>(true, true, true, true), -25686i), Struct_1(vec4<bool>(true, true, false, true), 25945i), Struct_1(vec4<bool>(false, false, true, true), 0i), Struct_1(vec4<bool>(false, true, true, false), i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, false), -5424i), Struct_1(vec4<bool>(false, true, false, false), -58214i), Struct_1(vec4<bool>(true, false, true, false), -1i), Struct_1(vec4<bool>(true, false, true, false), 0i), Struct_1(vec4<bool>(false, true, false, true), -55640i), Struct_1(vec4<bool>(false, false, false, false), 8225i));

var<private> global3: i32;

var<private> global4: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> u32 {
    return reverseBits(u_input.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_u32(reverseBits(u_input.b.x) ^ u_input.c.x, _wgslsmith_clamp_u32(global0.x >> ((u_input.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 71299u, u_input.b.x), vec3<u32>(3768u, 0u, 4294967295u)) % 32u)) % 32u), u_input.c.x, ~_wgslsmith_mod_u32(1u, 1u)));
    let var_1 = arg_0;
    global2 = array<Struct_1, 27>();
    var var_2 = _wgslsmith_f_op_f32(-409f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f), _wgslsmith_f_op_f32(min(-2291f, 716f))) - -637f) * _wgslsmith_f_op_f32(step(1000f, 860f))));
    let var_3 = vec3<u32>(global0.x, global0.x, ~func_3(1i, _wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_div_i32(firstTrailingBit(u_input.a.x), var_1.b), Struct_2(var_1, !vec3<bool>(arg_2.x, true, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(1495f, -585f, 450f, -143f) * vec4<f32>(1159f, -687f, 868f, 1679f)), Struct_1(vec4<bool>(arg_1.a.x, false, var_1.a.x, false), -1i), arg_0.a.x)));
    return arg_0.a;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 27u)];
    let var_1 = Struct_1(vec4<bool>(any(arg_0.a) && !any(var_0.a.yz), var_0.a.x, !all(func_2(global2[_wgslsmith_index_u32(1u, 27u)], Struct_1(arg_0.a, var_0.b), var_0.a.zz)), arg_0.a.x), reverseBits(~_wgslsmith_add_i32(-1i, firstTrailingBit(arg_0.b))));
    global2 = array<Struct_1, 27>();
    global0 = select(~abs(vec4<u32>(global0.x, ~1u, 0u, _wgslsmith_mult_u32(global0.x, u_input.c.x))), ~vec4<u32>(1u, ~1u, ~u_input.c.x, u_input.c.x), vec4<bool>(!(arg_0.b < var_0.b) && all(var_0.a), any(func_2(Struct_1(vec4<bool>(true, true, true, true), u_input.a.x), arg_0, func_2(global2[_wgslsmith_index_u32(global0.x, 27u)], Struct_1(arg_0.a, arg_0.b), arg_0.a.yx).zx).wzz), true, true));
    var var_2 = select(max(_wgslsmith_sub_vec3_i32(-abs(vec3<i32>(arg_0.b, -2147483647i, arg_0.b)), max(vec3<i32>(var_1.b, 427i, u_input.a.x) ^ vec3<i32>(var_1.b, var_0.b, -20637i), ~vec3<i32>(var_0.b, -32252i, u_input.a.x))), vec3<i32>(1i, 1i, -39896i) & ~_wgslsmith_div_vec3_i32(vec3<i32>(-45136i, var_0.b, var_0.b), vec3<i32>(var_1.b, u_input.a.x, -1i))), vec3<i32>(31975i, _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a.x, -1i, -10644i) ^ vec3<i32>(u_input.a.x, arg_0.b, var_1.b)), ~vec3<i32>(0i, 1i, u_input.a.x) ^ ~vec3<i32>(-2147483647i, 43984i, var_0.b)), ~((arg_0.b >> (25895u % 32u)) & 42252i)), true);
    return _wgslsmith_clamp_u32(u_input.b.x, 8100u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 4294967295u), vec4<u32>(0u, global0.x, 4051u, 29456u))) >> (u_input.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true)))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(all(vec4<bool>(true, false, false, false)), true), vec2<bool>(true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, all(vec3<bool>(false, false, true)))), true), any(!vec3<bool>(true, all(vec3<bool>(true, false, true)), false)));
    let var_1 = vec4<u32>(4294967295u, ~(~u_input.c.x), func_1(Struct_1(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), 1i)) >> (~(~_wgslsmith_mod_u32(global0.x, u_input.c.x)) % 32u), firstLeadingBit(u_input.b.x));
    global1 = abs(firstTrailingBit(_wgslsmith_add_i32(~u_input.a.x, min(0i, -1i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, 1067f, -459f, 1202f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-306f, 1085f, 1587f, 480f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(958f)) * _wgslsmith_f_op_f32(546f + 1525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-554f, -382f))), _wgslsmith_f_op_f32(f32(-1f) * -329f), -657f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-453f, 1010f, -466f, 1000f) - vec4<f32>(2354f, 283f, -986f, -1023f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1094f, 772f, -866f, 1555f)))))));
    var var_3 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -u_input.a, _wgslsmith_add_vec2_i32(min(min(u_input.a, vec2<i32>(u_input.a.x, -19038i)), -u_input.a), u_input.a ^ reverseBits(vec2<i32>(-1i, u_input.a.x))));
    var var_4 = max(global0.x, ~1u) & (~u_input.c.x ^ 27672u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

