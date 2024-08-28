struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: vec4<i32> = vec4<i32>(1i, 6870i, 42736i, -15412i);

var<private> global2: f32;

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    global2 = global3.x;
    global1 = _wgslsmith_mult_vec4_i32(select(-reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(19162i, -1114i, -7326i, 22329i), vec4<i32>(global1.x, 1i, -38064i, arg_0.a))), vec4<i32>(~max(0i, arg_2.b), countOneBits(i32(-1i) * -10631i), _wgslsmith_mult_i32(479i, _wgslsmith_sub_i32(u_input.b, u_input.b)), -global1.x), select(select(select(arg_0.c, arg_2.c, arg_1.x), vec4<bool>(arg_0.c.x, arg_2.c.x, true, arg_2.c.x), arg_2.c), !arg_0.c, vec4<bool>(arg_2.c.x, arg_1.x, arg_2.c.x, arg_0.c.x))), -firstTrailingBit(vec4<i32>(-24598i << (global0[_wgslsmith_index_u32(1u, 19u)] % 32u), global1.x, arg_2.b, 2147483647i)));
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.x + arg_0.d), -971f, _wgslsmith_f_op_f32(-global3.x), arg_2.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, -1000f, arg_0.d, -966f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_0.d, global3.x, arg_0.d))))))));
    let var_1 = Struct_1(-2147483647i, 1i, arg_2.c, 1000f);
    var var_2 = vec2<u32>(reverseBits(8856u), 4294967295u);
    return !(!(!var_1.c));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = 29302i ^ u_input.b;
    var var_1 = ~93778u;
    var var_2 = arg_0.c.x;
    let var_3 = select(vec4<i32>(global1.x, _wgslsmith_clamp_i32(1i, 2147483647i, abs(-2147483647i)), arg_0.b, (i32(-1i) * -42460i) | ~reverseBits(u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global1.x, global1.x, u_input.b, global1.x), vec4<i32>(global1.x, global1.x, global1.x, arg_0.a), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x)), countOneBits(vec4<i32>(-1i, -2147483647i, -9697i, arg_0.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global1.x, global1.x, global1.x), vec4<i32>(20051i, u_input.b, 16236i, arg_0.b))), vec4<i32>(global1.x, _wgslsmith_add_i32(u_input.b, global1.x), _wgslsmith_div_i32(-31486i, u_input.b), u_input.b)) & vec4<i32>(_wgslsmith_mult_i32(-1i, arg_0.b) << (~global0[_wgslsmith_index_u32(0u, 19u)] % 32u), arg_0.b, 2147483647i, arg_0.b), !select(!arg_0.c, func_3(Struct_1(1i, 61765i, arg_0.c, arg_0.d), vec2<bool>(true, false), Struct_1(global1.x, 0i, arg_0.c, -680f)), vec4<bool>(!arg_0.c.x, global0[_wgslsmith_index_u32(0u, 19u)] >= 13383u, select(false, true, arg_0.c.x), true)));
    var var_4 = u_input.a;
    return ~u_input.b;
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_div_f32(-547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)));
    global3 = vec3<f32>(global3.x, 233f, global3.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(313f - global3.x), _wgslsmith_f_op_f32(global3.x - global3.x)), global3.x, !(arg_0.x || true))), 880f));
    let var_1 = ~(-vec4<i32>(min(global1.x, ~global1.x), ~func_2(Struct_1(1i, global1.x, vec4<bool>(false, arg_0.x, false, true), -1373f)), func_2(Struct_1(0i, 5952i, vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), 118f)), global1.x));
    global2 = -1004f;
    return u_input.a < ~_wgslsmith_add_u32(_wgslsmith_add_u32(61273u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70882u, 19u)], 19u)] >> (69541u % 32u)), 54712u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(all(vec4<bool>(true, true, true, true)) != func_1(vec2<bool>(true, true)));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) - global3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f) * global3.x), -873f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -465f));
    var var_1 = firstTrailingBit(~(vec3<u32>(0u, firstTrailingBit(u_input.a), global0[_wgslsmith_index_u32(4294967295u, 19u)] & u_input.a) >> (firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)])) % vec3<u32>(32u))));
    global1 = vec4<i32>(global1.x, 1i, u_input.b, 34989i);
    var var_2 = vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_mult_u32(4294967295u, countOneBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 19u)], 19u)], 67292u) & _wgslsmith_dot_vec3_u32(vec3<u32>(23854u, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(53599u, 19u)], u_input.a, u_input.a)))));
    let var_3 = max(_wgslsmith_add_vec2_i32(global1.wx, ~vec2<i32>(-14677i, global1.x)), vec2<i32>(func_2(Struct_1(i32(-1i) * -8373i, max(u_input.b, global1.x), vec4<bool>(false, var_0, var_0, var_0), _wgslsmith_f_op_f32(sign(-231f)))), u_input.b));
    let var_4 = Struct_1(-1i, global1.x, !func_3(Struct_1(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(13655i, global1.x, 40076i, -24366i), vec4<i32>(2147483647i, -19892i, 0i, -7370i)), !vec4<bool>(var_0, true, var_0, var_0), global3.x), vec2<bool>(var_0 | false, global3.x > global3.x), Struct_1(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), _wgslsmith_div_i32(global1.x, 5894i), vec4<bool>(var_0, var_0, var_0, var_0), _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global3.x)), _wgslsmith_f_op_f32(sign(global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(abs(var_3)), abs(1u) >> (abs(_wgslsmith_div_u32(var_1.x | var_2.x, _wgslsmith_sub_u32(var_1.x, 57898u))) % 32u), ~global1.xzw, _wgslsmith_f_op_vec2_f32(step(global3.yz, vec2<f32>(_wgslsmith_f_op_f32(ceil(-859f)), _wgslsmith_f_op_f32(-var_4.d)))));
}

