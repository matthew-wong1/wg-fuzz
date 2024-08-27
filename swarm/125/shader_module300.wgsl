struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-347f, 706f, 544f), vec2<u32>(25750u, 1u));

var<private> global2: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = -41946i;
    let var_1 = abs(_wgslsmith_sub_vec4_u32(select(vec4<u32>(~0u, reverseBits(global1.b.x), 11930u, 1977u), (vec4<u32>(arg_3.b.x, arg_3.b.x, arg_0.x, global2.a) << (vec4<u32>(arg_3.b.x, global1.b.x, u_input.a, arg_0.x) % vec4<u32>(32u))) ^ ~vec4<u32>(arg_3.b.x, 67207u, global2.a, 15709u), select(arg_2, arg_2, select(arg_2, arg_2, arg_2))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(global0.a, 4294967295u, u_input.a, arg_3.b.x) ^ vec4<u32>(global0.a, 4294967295u, global0.a, global2.a)), vec4<u32>(u_input.a, reverseBits(25850u), 4294967295u, global0.a ^ global0.a))));
    let var_2 = vec3<bool>(arg_2.x, !any(!(!arg_2)), arg_2.x);
    var var_3 = ~_wgslsmith_div_i32(max(_wgslsmith_sub_i32(firstLeadingBit(2147483647i), 1i), 25760i), abs(select(-9153i, 1i, true)) | -(~1606i));
    let var_4 = true;
    return global1.b;
}

fn func_3(arg_0: bool) -> i32 {
    global0 = Struct_3(_wgslsmith_add_u32(global2.a, global0.a ^ _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global1.b.x, 0u))));
    var var_0 = min(vec3<u32>(0u, max(~(~72994u), abs(2619u)), 10207u), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(1u), func_1(~vec3<u32>(u_input.a, 21654u, 4294967295u), 1000f, !vec4<bool>(false, false, arg_0, true), Struct_2(global1.a, vec2<u32>(u_input.a, 1u))).x, 19226u), ~vec3<u32>(u_input.b.x, global2.a, 4294967295u) | (~vec3<u32>(u_input.a, 4294967295u, global0.a) << (~vec3<u32>(u_input.b.x, global1.b.x, 4294967295u) % vec3<u32>(32u)))));
    return _wgslsmith_div_i32(~_wgslsmith_mod_i32(firstTrailingBit(abs(-14002i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, 2147483647i), vec2<i32>(25670i, -2147483647i), vec2<bool>(true, true)), vec2<i32>(1i, 1i))), 1i);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = min(vec2<i32>(~(-2147483647i), _wgslsmith_sub_i32(27295i >> (~global2.a % 32u), -(i32(-1i) * -10107i))), abs(vec2<i32>(1i, 1i)));
    var var_1 = vec2<bool>(~(~global0.a) <= global0.a, !(func_3(true && arg_1) >= 0i));
    let var_2 = reverseBits(arg_3.b.x) & 0u;
    var var_3 = !select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, arg_1, arg_0.a), var_1.x), vec3<bool>(arg_0.a, true, true), select(vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_1, var_1.x, var_1.x), select(vec3<bool>(false, var_1.x, true), vec3<bool>(true, true, false), vec3<bool>(false, arg_1, false)))), !(!select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_1, arg_1, arg_1), arg_0.a)), !select(vec3<bool>(arg_0.a, arg_1, true), !vec3<bool>(var_1.x, true, arg_1), true));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f * _wgslsmith_f_op_f32(global1.a.x - global1.a.x)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-549f * 1397f), arg_3.a.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.a)))))), _wgslsmith_mod_vec2_u32(max(vec2<u32>(94696u, global2.a), _wgslsmith_mod_vec2_u32(arg_2, vec2<u32>(1u, global2.a))) & u_input.b, vec2<u32>(u_input.b.x, 4294967295u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_2.x;
    global2 = Struct_3(global1.b.x >> (_wgslsmith_sub_u32(global0.a, ~(global1.b.x | global2.a)) % 32u));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.a, _wgslsmith_f_op_vec3_f32(-global1.a), (true && arg_3.a) && !arg_2.x))), global1.b);
    var var_1 = 0u;
    let var_2 = Struct_1(!arg_3.a);
    return Struct_3(select(~firstTrailingBit(1u), 12788u, true) | countOneBits(1u));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = global0.a;
    global0 = Struct_3(16135u);
    let var_1 = min(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(1u), _wgslsmith_sub_u32(0u, 0u), 14050u), vec3<u32>(max(10611u, global2.a), u_input.a, 46296u)), _wgslsmith_sub_u32(arg_0.a, min(arg_0.a, 60360u)) << (4294967295u % 32u)) < u_input.a;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(736f, global1.a.x, global1.a.x), global1.a) - _wgslsmith_f_op_vec3_f32(-global1.a))))), vec2<u32>(_wgslsmith_div_u32((global1.b.x >> (37739u % 32u)) ^ global2.a, ~func_2(Struct_1(false), true, global1.b, Struct_2(vec3<f32>(global1.a.x, 230f, 1081f), u_input.b)).b.x), arg_0.a));
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + 1866f), global1.a.x), ~(~vec2<u32>(~global1.b.x, 0u | global0.a)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(11865i, -51024i, 0i), vec3<i32>(-2147483647i, 1534i, 2147483647i)), select(vec3<i32>(-64890i, -1i, -48146i), vec3<i32>(1i, -2147483647i, -25705i), vec3<bool>(false, true, false))) << (~(~firstLeadingBit(vec3<u32>(global2.a, u_input.b.x, u_input.a))) % vec3<u32>(32u)));
    let var_1 = vec3<i32>(~var_0.x, ~(i32(-1i) * -29893i), -firstTrailingBit(-var_0.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1223f, global1.a.x, -1061f) - global1.a);
    global0 = func_5(func_4(vec4<i32>(var_0.x, -24647i, select(29145i, -84477i, all(vec4<bool>(false, false, false, false))), -firstTrailingBit(-2147483647i)), func_2(Struct_1(true), true, _wgslsmith_sub_vec2_u32(func_1(vec3<u32>(1u, global1.b.x, global0.a), global1.a.x, vec4<bool>(true, true, false, false), Struct_2(var_2, vec2<u32>(5797u, 0u))), vec2<u32>(u_input.a, 47551u)), Struct_2(var_2, ~vec2<u32>(global2.a, 1u))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), Struct_1(all(vec3<bool>(false, false, false)))));
    let var_3 = func_4(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, _wgslsmith_sub_i32(var_0.x, var_0.x), var_0.x), -vec4<i32>(-45042i, 31918i, var_0.x, -1i) ^ select(vec4<i32>(var_0.x, -8397i, 2147483647i, var_0.x), vec4<i32>(-2147483647i, -2147483647i, var_1.x, var_0.x), vec4<bool>(false, false, true, false))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, var_2.x, -1337f) - vec3<f32>(var_2.x, 253f, -2604f)))), vec3<f32>(-1000f, _wgslsmith_div_f32(1892f, 1222f), global1.a.x)), u_input.b), select(!vec2<bool>(true, all(vec2<bool>(false, false))), select(vec2<bool>(global1.a.x == global1.a.x, false), vec2<bool>(true, true), vec2<bool>(var_1.x != var_1.x, any(vec3<bool>(true, false, false)))), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(false));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2.yz), var_2.xy)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.x, ~(-7037i)), var_1.x) >> (func_4(countOneBits(-vec4<i32>(var_0.x, var_1.x, var_1.x, 20648i)), Struct_2(_wgslsmith_f_op_vec3_f32(var_2 + vec3<f32>(-1022f, -1091f, 233f)), u_input.b), vec2<bool>(true, true), Struct_1(false)).a % 32u), var_4.x, _wgslsmith_mod_i32(19045i, select(var_0.x ^ -1i, reverseBits(var_1.x), false) << (abs(1u) % 32u)));
}

