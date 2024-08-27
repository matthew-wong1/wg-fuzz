struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, true, false, true, true, false, true, false, true, false, true, true, true, false, true, true, true);

var<private> global1: i32 = -29203i;

var<private> global2: array<bool, 21>;

var<private> global3: Struct_3 = Struct_3(66752u, vec4<f32>(-684f, -263f, -910f, -642f), -1i, vec2<bool>(true, false));

var<private> global4: array<bool, 31> = array<bool, 31>(true, false, false, true, true, true, false, true, false, false, true, false, false, true, false, true, false, false, true, true, true, false, true, true, true, false, false, true, true, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~(-1i);
    var var_1 = Struct_2(_wgslsmith_mod_u32(65648u, u_input.a), ~(~u_input.a) << (0u % 32u), _wgslsmith_f_op_f32(global3.b.x * -344f), Struct_1(-235f));
    let var_2 = global3.b.x;
    var var_3 = true || !all(!vec3<bool>(true, global4[_wgslsmith_index_u32(global3.a, 31u)], false));
    let var_4 = Struct_2(16306u, _wgslsmith_mod_u32(u_input.a, global3.a), 998f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-313f * -1000f))))));
    return var_4.d;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = (u_input.b.wy << (~select(vec2<u32>(1u, 34243u), _wgslsmith_mod_vec2_u32(u_input.b.xz, vec2<u32>(1u, global3.a)), !global3.d) % vec2<u32>(32u))) ^ (~vec2<u32>(4294967295u, reverseBits(1u)) ^ select(u_input.b.xy, select(vec2<u32>(70222u, 16208u), u_input.b.zx, select(global3.d, vec2<bool>(global2[_wgslsmith_index_u32(28508u, 21u)], false), vec2<bool>(global2[_wgslsmith_index_u32(global3.a, 21u)], global3.d.x))), false));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + arg_0.x));
    global1 = _wgslsmith_dot_vec2_i32(min(arg_1.xx, -_wgslsmith_clamp_vec2_i32(arg_1.yy | arg_1.xy, _wgslsmith_mult_vec2_i32(arg_1.xz, vec2<i32>(2147483647i, arg_1.x)), vec2<i32>(-1i, global3.c))), vec2<i32>(-2147483647i, -17928i));
    global1 = global3.c;
    global1 = ~_wgslsmith_add_i32(-(~arg_1.x), i32(-1i) * -2317i);
    return 52357u;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = ~global3.a;
    var var_1 = func_2();
    var_0 = firstTrailingBit(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2025f, 1000f, -669f, global3.b.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2095f, global3.b.x, -1116f, global3.b.x))) - global3.b), ~_wgslsmith_div_vec3_i32(vec3<i32>(29925i, 24414i, 29311i), vec3<i32>(global3.c, arg_2.x, 41451i))));
    var_0 = ~abs(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, -112f, var_1.a, 1000f) + global3.b), _wgslsmith_mod_vec3_i32(vec3<i32>(global3.c, -29578i, 1i), vec3<i32>(-1i, 0i, global3.c))) & 4294967295u);
    return Struct_2(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~firstLeadingBit(u_input.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(1u, u_input.b.x, global3.a, global3.a), u_input.b), u_input.b, ~u_input.b), vec4<u32>(u_input.b.x, u_input.b.x, ~22014u, u_input.b.x)), abs(abs(u_input.b))), var_1.a, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1717f, vec3<bool>(!(!any(global3.d)), global2[_wgslsmith_index_u32(1u, 21u)], true), ~(firstTrailingBit(vec2<i32>(-2147483647i, -1i) & vec2<i32>(global3.c, global3.c)) << (firstTrailingBit(u_input.b.ww ^ u_input.b.zy) % vec2<u32>(32u))));
    let var_1 = Struct_2(abs(~68370u), ~(~(~global3.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, 0u, u_input.b.x, 0u), u_input.b) % 32u))), _wgslsmith_f_op_f32(-1524f + _wgslsmith_f_op_f32(f32(-1f) * -776f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -693f)))));
    global4 = array<bool, 31>();
    let var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(-_wgslsmith_sub_vec2_i32(~vec2<i32>(global3.c, global3.c), vec2<i32>(1i, 1i))), abs(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(global3.c, global3.c)), abs(vec2<i32>(-1i, global3.c))), ~vec2<i32>(global3.c, -929i))));
    var var_3 = 0i;
    let var_4 = Struct_2(var_1.b, ~4294967295u, -590f, var_0.d);
    var var_5 = vec2<i32>(select(1i, ~_wgslsmith_add_i32(var_2, var_2), false), select((global3.c << (55095u % 32u)) ^ -global3.c, var_2, true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(var_4.a, 0u, ~var_0.b, 0u))));
}

