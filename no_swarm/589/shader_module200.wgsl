struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = arg_0.b.x;
    var_0 = true;
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1145f, arg_1.c, 1147f, _wgslsmith_f_op_f32(2531f + arg_1.a.x)) * vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -881f), -998f, -177f)), !(!arg_0), 821f), u_input.a, -577f, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, 1u), reverseBits(vec3<u32>(1u, 39598u, 76606u))), ~_wgslsmith_add_u32(global0.x, global0.x)), global0.x));
    var_0 = arg_1;
    let var_1 = vec4<i32>(2147483647i, ~2147483647i, u_input.a.x, ~_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b, u_input.b), u_input.a.wz), -vec2<i32>(u_input.a.x, 2147483647i))) >> (~(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 59177u, 0u, 1u), vec4<u32>(15152u, global0.x, 0u, global0.x), vec4<u32>(1u, 18839u, 1u, 0u)) | vec4<u32>(1u << (0u % 32u), global0.x & 4294967295u, max(4294967295u, 12481u), global0.x)) % vec4<u32>(32u));
    let var_2 = func_2(arg_1, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1648f - var_0.a.x) + var_0.a.x), ~firstLeadingBit(vec2<u32>(global0.x, 7424u))).b.yyx;
    var_0 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    let var_0 = func_2(arg_2, ~select(firstTrailingBit(u_input.a), vec4<i32>(_wgslsmith_mult_i32(1619i, arg_0), ~arg_0, -31566i << (global0.x % 32u), 2147483647i), func_2(func_2(arg_2, vec4<i32>(u_input.b, arg_0, 9920i, arg_1.x), -966f, vec2<u32>(global0.x, global0.x)), -vec4<i32>(arg_1.x, u_input.a.x, u_input.a.x, arg_0), -207f, ~vec2<u32>(79641u, global0.x)).b), -889f, firstLeadingBit(~(~(vec2<u32>(global0.x, global0.x) >> (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))))));
    global0 = ~(~vec2<u32>(_wgslsmith_mod_u32(7971u, 1u), global0.x) << (~vec2<u32>(select(0u, 0u, true), _wgslsmith_div_u32(global0.x, global0.x)) % vec2<u32>(32u)));
    global0 = _wgslsmith_clamp_vec2_u32(max(select(firstLeadingBit(vec2<u32>(13559u, 1u)), vec2<u32>(1u, global0.x) ^ vec2<u32>(12866u, global0.x), !var_0.b.x), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(39231u, global0.x), vec2<u32>(global0.x, 37538u)), vec2<u32>(85597u, 23659u))), ~firstLeadingBit(vec2<u32>(41809u, 0u)), firstTrailingBit(~vec2<u32>(global0.x, global0.x)) & ~(~vec2<u32>(global0.x, 21289u))) << (countOneBits(vec2<u32>(min(0u, 1u) & (global0.x << (global0.x % 32u)), abs(13869u))) % vec2<u32>(32u));
    global0 = firstTrailingBit(firstTrailingBit(vec2<u32>(4294967295u, max(max(0u, global0.x), global0.x))));
    global0 = ~vec2<u32>(global0.x & firstLeadingBit(global0.x), global0.x) & firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(0u, ~global0.x), ~global0.x));
    return !var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(572f, _wgslsmith_div_f32(1705f, 378f), _wgslsmith_f_op_f32(abs(-2033f)), -1290f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, true, false, false), Struct_1(vec4<f32>(-374f, -1197f, -778f, -570f), vec4<bool>(false, false, false, true), -639f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -123f, 382f, 1677f), vec4<f32>(-448f, -719f, -557f, 1000f), vec4<bool>(true, false, true, true)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, -352f, -2360f, -2236f))))))), !(!vec4<bool>(all(vec4<bool>(true, false, false, false)), all(vec4<bool>(true, false, true, false)), func_3(0i, u_input.a, Struct_1(vec4<f32>(-2298f, -823f, -256f, 1000f), vec4<bool>(true, false, true, false), 286f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -143f), -1000f))));
    var var_1 = vec3<i32>(~u_input.b, -u_input.b, _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), min(u_input.a.x, u_input.b)));
    let var_2 = var_0.a.x;
    var var_3 = global0.x;
    var var_4 = !(!func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 428f, var_0.a.x, var_0.a.x)), func_2(Struct_1(vec4<f32>(var_0.c, -1000f, 280f, -1161f), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), var_0.c), u_input.a, -1000f, vec2<u32>(global0.x, 4294967295u)).b, 402f), u_input.a, -1035f, firstLeadingBit(min(vec2<u32>(13087u, global0.x), vec2<u32>(49192u, global0.x)))).b.x);
    var_1 = ~_wgslsmith_sub_vec3_i32(min(-u_input.a.xzw, min(vec3<i32>(u_input.a.x, var_1.x, 2147483647i), u_input.a.wxx)) >> (vec3<u32>(global0.x & global0.x, _wgslsmith_clamp_u32(global0.x, 4294967295u, global0.x), global0.x) % vec3<u32>(32u)), u_input.a.wyy);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, abs(vec3<u32>(countOneBits(global0.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 26205u), vec2<u32>(global0.x, global0.x)), select(global0.x | 4294967295u, 14814u, 1u != global0.x), _wgslsmith_div_u32(0u, global0.x | global0.x))));
}

