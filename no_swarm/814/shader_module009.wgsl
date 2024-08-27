struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(91707u, 22994u);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return arg_0.b;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(~(~vec4<u32>(7185u, global0.x, 11203u, 4294967295u)), vec4<u32>(global0.x, ~max(9707u, 0u), 4294967295u, _wgslsmith_clamp_u32(abs(1u), global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(952f, -1411f)) + _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(global0.x, global0.x, global0.x, global0.x), -1115f, 1i))))))), _wgslsmith_dot_vec3_i32(firstTrailingBit(-max(vec3<i32>(1i, 2147483647i, -44697i), vec3<i32>(u_input.a.x, u_input.a.x, 1i))), abs(vec3<i32>(abs(u_input.a.x), -u_input.a.x, ~6681i))));
    global0 = ~var_0.a.zx;
    let var_1 = reverseBits(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(abs(var_0.a), var_0.a << (var_0.a % vec4<u32>(32u))), ~4294967295u));
    global0 = vec2<u32>(max(1u, var_1), 1376u);
    global1 = select(!select(!select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), true), !(!vec2<bool>(false, global1.x)), true), select(!select(!vec2<bool>(true, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x)), -1425f > var_0.b), !(!vec2<bool>(global1.x, false)), vec2<bool>(any(!vec4<bool>(global1.x, global1.x, global1.x, true)), global1.x)), !(!(!select(vec2<bool>(true, false), vec2<bool>(global1.x, true), vec2<bool>(true, false)))));
    return -18091i;
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(max(max(max(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 4294967295u, 20663u, 17441u)), firstTrailingBit(~vec4<u32>(0u, 0u, global0.x, global0.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 147694u, global0.x, global0.x), vec4<u32>(global0.x, 0u, 20525u, global0.x)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(51589u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 27638u, global0.x, global0.x)) % vec4<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1815f)), 1282f), select(-37480i, min(u_input.a.x, func_2()) >> (1u % 32u), global1.x));
    global1 = vec2<bool>(select(any(vec4<bool>(all(vec3<bool>(global1.x, false, global1.x)), true, true, global1.x)), false, global1.x), (var_0.b == _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(global0.x, var_0.a.x, global0.x, var_0.a.x), var_0.b, 51297i)))) & any(!(!vec2<bool>(global1.x, true))));
    global1 = !select(vec2<bool>(!any(vec4<bool>(false, global1.x, global1.x, global1.x)), false), vec2<bool>(any(vec3<bool>(global1.x, true, global1.x)), all(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), vec2<bool>(true, global1.x)))), select(select(select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), false), select(vec2<bool>(false, false), vec2<bool>(false, false), global1.x), false), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), true), !(!vec2<bool>(global1.x, global1.x))));
    var var_1 = ~firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, var_0.a.x), ~var_0.a.zw));
    global1 = vec2<bool>(u_input.a.x <= -firstTrailingBit(-1i), !(!(600f >= var_0.b)));
    return select(var_0.a, select(firstLeadingBit(var_0.a ^ (var_0.a << (var_0.a % vec4<u32>(32u)))), firstTrailingBit(~vec4<u32>(var_1.x, 905u, global0.x, 0u)), false), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, global1.x, global1.x), false))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1;
    global0 = reverseBits(vec2<u32>(arg_1.a.x, abs(4294967295u)));
    let var_1 = arg_2;
    global1 = vec2<bool>(arg_1.b < arg_1.b, any(!(!vec3<bool>(global1.x, true, true))));
    var var_2 = arg_1;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_sub_i32(u_input.a.x, -8204i), Struct_1(func_1(), -945f, _wgslsmith_mult_i32(firstTrailingBit(u_input.a.x | -21775i), -2147483647i)), true);
    var var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_vec4_u32(min(vec4<u32>(1u, global0.x, 4294967295u, var_0.a.x), var_0.a) ^ vec4<u32>(global0.x, 12813u, global0.x, 4294967295u), func_4(var_0.c, func_4(0i, Struct_1(var_0.a, var_0.b, var_0.c), false), false).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, 2307f) + var_0.b)), firstLeadingBit(var_0.c))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1246f, var_0.b, var_0.b, var_0.b) + vec4<f32>(1696f, -1423f, var_0.b, 544f)), vec4<f32>(-1683f, 213f, var_0.b, 895f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -868f, 829f) * vec4<f32>(989f, 1294f, var_0.b, var_0.b)) - vec4<f32>(-1078f, var_0.b, var_0.b, var_0.b))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(func_4(var_0.c, func_4(var_0.c, Struct_1(vec4<u32>(6898u, global0.x, 50529u, 1u), var_0.b, var_0.c), global1.x), all(vec3<bool>(global1.x, true, true))).b, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-298f, var_0.b))), var_0.b))), select(select(!vec4<bool>(false, true, false, global1.x), !select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), false), select(!vec4<bool>(true, true, false, global1.x), vec4<bool>(false, true, false, global1.x), vec4<bool>(true, true, false, true))), select(vec4<bool>(any(vec3<bool>(global1.x, true, global1.x)), true, any(vec4<bool>(false, false, true, true)), false), select(select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, true, global1.x)), select(vec4<bool>(false, true, global1.x, false), vec4<bool>(global1.x, false, true, false), vec4<bool>(true, global1.x, global1.x, global1.x)), select(global1.x, true, global1.x)), vec4<bool>(1u != global0.x, !global1.x, !global1.x, all(vec3<bool>(global1.x, true, global1.x)))), all(select(!vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(false, global1.x, global1.x, false))))));
    var_1 = -105f;
    global0 = var_0.a.xy;
    var var_3 = select(vec3<bool>(true, !global1.x, false), vec3<bool>(any(vec2<bool>(true, true)), global1.x, false), all(vec2<bool>(~var_0.a.x < (var_0.a.x << (0u % 32u)), global1.x)));
    let var_4 = !select(!select(!var_3.xx, vec2<bool>(true, global1.x), !var_3.xx), vec2<bool>(false, var_3.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(var_0.c, u_input.a.x, -1i)))), 1000f, max(_wgslsmith_mult_i32(firstLeadingBit(-var_0.c), -26666i), 67390i));
}

