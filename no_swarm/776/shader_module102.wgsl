struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(0i, 2147483647i, -1i, -54158i), vec4<i32>(-1i, 47246i, 30108i, -36531i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 65300i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 15856i), vec4<i32>(2777i, -11521i, -15226i, -1i), vec4<i32>(-50439i, 14155i, -17855i, 1i), vec4<i32>(-1i, -1i, 1i, 0i), vec4<i32>(7432i, -1i, 10532i, -54831i), vec4<i32>(-31812i, 0i, i32(-2147483648), 2717i), vec4<i32>(1i, -3871i, 1i, i32(-2147483648)), vec4<i32>(5472i, -54158i, -37162i, 53155i), vec4<i32>(4827i, -1i, 41462i, 2147483647i), vec4<i32>(1i, 0i, -23093i, 28415i), vec4<i32>(-2347i, -1i, 96121i, 0i), vec4<i32>(0i, 0i, -1i, -25695i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 60809i), vec4<i32>(i32(-2147483648), -1i, 0i, 61431i), vec4<i32>(30748i, 37969i, -14680i, 49360i), vec4<i32>(-28426i, -646i, 0i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(27509i, -1i, 1i, 61834i), vec4<i32>(1i, 9595i, 12602i, -19232i), vec4<i32>(-16126i, 0i, -22883i, i32(-2147483648)), vec4<i32>(27327i, 2147483647i, 39001i, 27903i), vec4<i32>(1i, 16886i, i32(-2147483648), 42929i), vec4<i32>(0i, 5770i, 15039i, 1i), vec4<i32>(-1i, -1i, -15996i, -17254i), vec4<i32>(-1i, -28013i, i32(-2147483648), 47735i), vec4<i32>(0i, 1i, 2147483647i, 1i), vec4<i32>(-1i, i32(-2147483648), -1i, -57842i), vec4<i32>(-1i, 2147483647i, -1i, -22898i));

var<private> global1: i32 = 257i;

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = arg_0.c.x;
    var var_0 = _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(arg_1.x & -1i, abs(-1i))) ^ -vec2<i32>(_wgslsmith_mod_i32(arg_0.c.x, u_input.a), arg_3.c.x | 25045i), _wgslsmith_mult_vec2_i32(select(min(arg_2.c.zx, vec2<i32>(u_input.a, arg_0.c.x)) | arg_2.c.xx, arg_0.c.xy, select(!vec2<bool>(arg_2.a, true), vec2<bool>(true, true), true)), vec2<i32>(1i, firstLeadingBit(countOneBits(arg_1.x)))));
    let var_1 = arg_2.b;
    global0 = array<vec4<i32>, 31>();
    var var_2 = arg_2;
    return 28689u;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<bool>(false, any(vec3<bool>(true, true, arg_0.x)));
    var var_1 = arg_1;
    var var_2 = global2.zw;
    var_0 = select(vec2<bool>(false, any(!vec4<bool>(arg_0.x, false, var_1.a, false))), arg_0, false);
    let var_3 = true;
    return arg_1.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = true;
    global1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.c.x, u_input.a), arg_0.c.x);
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.c.xy | vec2<i32>(arg_0.c.x, -1i), vec2<i32>(0i, 2147483647i) >> (vec2<u32>(arg_1, 0u) % vec2<u32>(32u))), -2147483647i >> (1u % 32u)), func_3(!select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, false), false), arg_0), u_input.a, 5166i), vec4<i32>(func_3(vec2<bool>(true, true), arg_0), u_input.a, 7534i, ~u_input.a), select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(min(arg_1, 0u), reverseBits(4294967295u)), 0u), 31u)], abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_0.c.x, arg_0.c.x, 46800i), vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, u_input.a))), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_1(false, reverseBits(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(9593u, 21265u, arg_1), vec3<u32>(arg_0.b, arg_0.b, 4294967295u)))), -min(abs(var_1.zyw), arg_0.c));
    let var_3 = _wgslsmith_div_vec2_f32(arg_3, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1109f, arg_2.x)), -319f), _wgslsmith_f_op_f32(-538f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, global2.x))))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(0u, arg_0.b, arg_0.b)) << (vec3<u32>(73125u, 8329u & arg_0.b, 4294967295u) % vec3<u32>(32u))), reverseBits(select(~vec3<u32>(4294967295u, 33440u, 4294967295u), vec3<u32>(arg_0.b, 87203u, 1u) | vec3<u32>(4847u, 0u, 1u), select(arg_1.x, arg_1.x, arg_1.x)) ^ ~(~vec3<u32>(arg_0.b, 1u, arg_0.b))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1592f, global2.x, 884f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1000f, 597f, global2.x) - vec4<f32>(-1910f, global2.x, 543f, 698f)))))));
    global0 = array<vec4<i32>, 31>();
    var_0 = 32958u;
    var var_1 = select(vec3<bool>(true, arg_0.a | true, true), select(!(!(!vec3<bool>(false, false, arg_0.a))), arg_1.wyz, all(vec3<bool>(false, any(arg_1.xwx), arg_0.a))), global2.x == _wgslsmith_f_op_f32(abs(-382f)));
    return Struct_1(true, _wgslsmith_mod_u32(arg_0.b, 1u), ~(-vec3<i32>(~1i, _wgslsmith_sub_i32(7877i, u_input.a), countOneBits(2147483647i))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.c.x, arg_0.c.x), arg_0.c);
    global0 = array<vec4<i32>, 31>();
    let var_0 = ~firstTrailingBit(~(~vec4<u32>(arg_0.b, 14315u, arg_0.b, 0u)));
    global0 = array<vec4<i32>, 31>();
    global1 = u_input.a << (1u % 32u);
    return var_0.x;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 31>();
    var var_0 = 2147483647i;
    let var_1 = arg_1.a || arg_1.a;
    global0 = array<vec4<i32>, 31>();
    global1 = _wgslsmith_div_i32(arg_1.c.x, arg_1.c.x);
    return Struct_1(false, arg_1.b, -firstLeadingBit(vec3<i32>(~(-2147483647i), 2147483647i, arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~_wgslsmith_div_vec3_i32(-select(vec3<i32>(17569i, 71897i, 46158i), vec3<i32>(-1i, 0i, u_input.a), vec3<bool>(true, true, false)), vec3<i32>(1i, _wgslsmith_div_i32(25058i, u_input.a), 0i)));
    let var_1 = func_6(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.yyy)) - vec3<f32>(1286f, 640f, -141f))), _wgslsmith_f_op_vec3_f32(-global2.xxx))), Struct_1(select(!all(vec4<bool>(false, true, false, false)), global2.x > -1000f, select(select(false, false, true), any(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)))), max(~0u, ~func_1(Struct_1(true, 4294967295u, var_0), vec2<i32>(-2229i, u_input.a), Struct_1(true, 0u, vec3<i32>(u_input.a, 0i, u_input.a)), Struct_1(true, 39153u, vec3<i32>(var_0.x, 0i, 0i)))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, var_0.x, u_input.a), vec3<i32>(-33512i, 0i, var_0.x)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), Struct_1(48367i != countOneBits(u_input.a), func_5(func_4(func_2(Struct_1(true, 1u, vec3<i32>(var_0.x, var_0.x, -10914i)), 40937u, vec2<f32>(925f, global2.x), global2.wy), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)))), -(~var_0) | var_0));
    let var_2 = firstLeadingBit(vec3<u32>(52255u, ~(var_1.b << (var_1.b % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9217u, 27306u), _wgslsmith_sub_vec3_u32(vec3<u32>(20581u, 0u, var_1.b), vec3<u32>(var_1.b, var_1.b, var_1.b)))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b, 4294967295u, 4273u), abs(~vec3<u32>(41269u, var_1.b, var_1.b)), vec3<u32>(82898u, 4294967295u, ~1u)) % vec3<u32>(32u)));
    var var_3 = func_6(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-904f - global2.x)), 841f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-831f - global2.x), var_1.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global2.x, global2.x))))), var_1, Struct_1(var_1.a, select(~20926u, var_2.x, true) << (abs(~4294967295u) % 32u), select(vec3<i32>(var_0.x, u_input.a, 1i), select(var_0, var_0, var_1.a), var_1.a) & ~func_2(Struct_1(true, var_1.b, var_1.c), var_1.b, global2.xy, vec2<f32>(global2.x, 439f)).c)).a;
    let var_4 = func_6(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1000f, global2.x)))))), global2.x, global2.x), Struct_1(func_2(var_1, var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.xy, vec2<f32>(-775f, global2.x))) + _wgslsmith_f_op_vec2_f32(floor(global2.zw))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-618f, global2.x), vec2<f32>(global2.x, 653f)) - _wgslsmith_f_op_vec2_f32(global2.wy - vec2<f32>(global2.x, 303f)))).a, 1u, func_6(global2.zxx, var_1, Struct_1(!var_1.a, _wgslsmith_clamp_u32(1u, 1u, var_1.b), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(var_0.x, u_input.a, var_0.x)))).c), var_1);
    var var_5 = var_1;
    var var_6 = !vec4<bool>(false, func_2(Struct_1(var_5.c.x >= var_5.c.x, _wgslsmith_dot_vec2_u32(var_2.zy, var_2.yy), -vec3<i32>(var_5.c.x, var_5.c.x, var_4.c.x)), func_1(var_4, vec2<i32>(u_input.a, 2147483647i), func_2(Struct_1(var_1.a, 24059u, var_5.c), 7838u, global2.yx, global2.yz), Struct_1(var_4.a, 63607u, vec3<i32>(var_4.c.x, -2147483647i, var_0.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -598f) * global2.yx), _wgslsmith_f_op_vec2_f32(global2.yx - global2.zx))), vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * global2.x))).a, !(198f > _wgslsmith_f_op_f32(select(-297f, global2.x, var_1.a))), abs(-var_4.c.x) < var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(global2.x, global2.x, var_4.a)), _wgslsmith_f_op_f32(min(-861f, 945f)), _wgslsmith_div_f32(960f, 427f), _wgslsmith_f_op_f32(200f - -628f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-999f)), 376f, _wgslsmith_div_f32(852f, global2.x), _wgslsmith_f_op_f32(207f + 1000f)))), vec2<f32>(-1165f, 166f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-264f, 1488f, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -470f)), any(vec4<bool>(var_1.a, true, var_6.x, false)))), global2.x), 61437u);
}

