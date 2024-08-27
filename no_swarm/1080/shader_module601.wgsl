struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(4294967295u, 0u, 24580u), vec3<u32>(45789u, 23005u, 9983u), vec3<u32>(29016u, 0u, 4294967295u), vec3<u32>(57625u, 4294967295u, 1u), vec3<u32>(10477u, 30214u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(40149u, 47222u, 20725u), vec3<u32>(1u, 11898u, 1u), vec3<u32>(5113u, 96384u, 8580u), vec3<u32>(1u, 1u, 6745u), vec3<u32>(42859u, 1u, 0u), vec3<u32>(0u, 0u, 90805u), vec3<u32>(19724u, 0u, 41128u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 20509u), vec3<u32>(1u, 4294967295u, 13581u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(54847u, 0u, 90787u), vec3<u32>(4294967295u, 1u, 64085u), vec3<u32>(33551u, 11704u, 1u), vec3<u32>(12307u, 1u, 1u), vec3<u32>(1686u, 1u, 1412u), vec3<u32>(1u, 1u, 7375u), vec3<u32>(47797u, 38809u, 37277u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(52278u, 0u, 1u), vec3<u32>(74369u, 20418u, 1u), vec3<u32>(4294967295u, 76407u, 16249u), vec3<u32>(4294967295u, 31989u, 32375u));

var<private> global1: u32;

var<private> global2: f32;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, 1i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = vec4<bool>(-1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1047f + -906f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-714f)))), !arg_1.b.a, !arg_2.b.a, any(vec3<bool>(false, true, true)));
    var_0 = !(!(!(!(!vec4<bool>(true, false, arg_2.b.a, var_0.x)))));
    return any(vec4<bool>(arg_1.b.a, true, arg_1.b.a, true)) && all(!(!vec2<bool>(arg_2.a.a, arg_1.a.a)));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_3(Struct_1((func_3(vec2<u32>(u_input.b, 1u), Struct_2(Struct_1(false, vec3<i32>(-1i, global3.x, -2147483647i)), Struct_1(true, vec3<i32>(0i, global3.x, arg_0))), Struct_2(Struct_1(true, vec3<i32>(13013i, arg_0, -1i)), Struct_1(false, vec3<i32>(global3.x, -2147483647i, global3.x)))) | true) && select(u_input.a.x > u_input.b, arg_0 >= arg_0, true), -_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-36139i, -8085i, arg_0)), vec3<i32>(2147483647i, 13240i, arg_0))), Struct_1(false, firstTrailingBit(vec3<i32>(4068i, arg_0, global3.x) & vec3<i32>(-2147483647i, 0i, global3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-176f, 814f)) - -472f) - -1056f), -2032f), 1225f, min(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, 35738u, u_input.a.x)) >> (~u_input.b % 32u), 29275u));
    var var_1 = Struct_2(var_0.a, var_0.b);
    let var_2 = ~countOneBits(countOneBits(30137u));
    var var_3 = ~1i;
    global1 = ~(~(~0u));
    return !(_wgslsmith_f_op_f32(ceil(var_0.d)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    let var_0 = true;
    var var_1 = 0i;
    global2 = arg_0.x;
    var var_2 = Struct_2(Struct_1(arg_2.x, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-10755i, global3.x, -2147483647i) >> (vec3<u32>(17263u, u_input.b, 1u) % vec3<u32>(32u)), abs(vec3<i32>(2147483647i, 0i, -1i))), abs(vec3<i32>(2147483647i, 2147483647i, 50383i)) << (countOneBits(u_input.a) % vec3<u32>(32u)), abs(~vec3<i32>(arg_1, 2147483647i, 21074i)))), Struct_1(any(arg_2) & (var_0 & (-2147483647i < arg_1)), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_1, 2147483647i) ^ vec3<i32>(47448i, arg_1, arg_1), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -32470i, global3.x), vec3<i32>(14477i, 16569i, -1i)), vec3<i32>(global3.x, -1203i, global3.x) & vec3<i32>(52713i, global3.x, 2147483647i)), -vec3<i32>(-2147483647i, 2147483647i, -61267i) << (countOneBits(vec3<u32>(u_input.a.x, 55661u, 987u)) % vec3<u32>(32u)))));
    global3 = select(firstTrailingBit(max(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 15918i), vec2<i32>(-56885i, -48398i)), firstLeadingBit(vec2<i32>(arg_1, 44943i)))), var_2.b.b.xx, vec2<bool>(global3.x != abs(arg_1), func_3(u_input.a.xx, Struct_2(var_2.a, var_2.a), Struct_2(var_2.b, Struct_1(true, var_2.b.b))))) >> (~(~(~u_input.a.zy)) % vec2<u32>(32u));
    return firstTrailingBit(~(u_input.a.x | ~_wgslsmith_clamp_u32(5868u, u_input.a.x, 4294967295u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.b), _wgslsmith_clamp_u32(17629u, _wgslsmith_div_u32(reverseBits(abs(arg_3.x)), ~_wgslsmith_mod_u32(arg_3.x, 20924u)), firstLeadingBit(4294967295u)), firstLeadingBit(func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1829f, 1037f), _wgslsmith_div_vec2_f32(vec2<f32>(-528f, 2061f), vec2<f32>(1137f, -843f)))), firstLeadingBit(i32(-1i) * -17903i), vec4<bool>(arg_2.a | false, !arg_2.a, func_2(arg_2.b.x), arg_2.a))), 5667u);
    var var_1 = vec3<bool>(~(_wgslsmith_clamp_u32(u_input.a.x, arg_3.x, 27310u) & arg_3.x) != firstLeadingBit(_wgslsmith_mult_u32(arg_3.x, u_input.a.x)), false, !all(vec3<bool>(true, func_3(vec2<u32>(u_input.a.x, 15281u), Struct_2(Struct_1(arg_2.a, arg_1), Struct_1(arg_2.a, vec3<i32>(-8140i, -33570i, -59322i))), Struct_2(arg_2, Struct_1(false, arg_2.b))), arg_2.a)));
    var var_2 = arg_2;
    let var_3 = Struct_1(var_2.a, vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_1.x, arg_1.x, global3.x, var_2.b.x) | arg_0, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_0.x, -79691i, var_2.b.x), arg_0), false), ~(arg_0 << (var_0 % vec4<u32>(32u)))), firstTrailingBit(-1i), global3.x));
    var var_4 = arg_0.x;
    return Struct_3(var_3, arg_2, -291f, _wgslsmith_f_op_f32(726f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1311f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-444f, -738f)), -898f))))), select(u_input.b, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_add_u32(53201u, u_input.a.x), max(0u, u_input.b)), all(vec2<bool>(true, false))) << (arg_3.x % 32u));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = firstLeadingBit(~20156u);
    let var_1 = func_1(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -(~0i)), global3.x, global3.x, arg_1.b.b.x), vec3<i32>(arg_2.b.x, arg_2.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~arg_2.b, ~vec3<i32>(2916i, arg_1.a.b.x, arg_1.b.b.x)), 1i << (~arg_1.e % 32u))), Struct_1(!arg_1.a.a, min(max(-vec3<i32>(-45415i, arg_2.b.x, arg_1.b.b.x), min(vec3<i32>(arg_1.b.b.x, 44920i, arg_1.b.b.x), arg_1.b.b)), vec3<i32>(1i, 5798i, global3.x))), vec2<u32>(1u, _wgslsmith_add_u32(0u, ~23399u))).a;
    var var_2 = _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(1i, ~abs(23349i), -1i >> (u_input.b % 32u), reverseBits(var_1.b.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -1327i, -1i, arg_1.a.b.x) >> (vec4<u32>(u_input.b, 1u, arg_1.e, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(-11468i, -72786i, global3.x, arg_1.b.b.x) & vec4<i32>(0i, arg_2.b.x, var_1.b.x, global3.x)), ~arg_1.a.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.b.x, 59799i), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, arg_1.b.b.x), vec2<i32>(2147483647i, -2147483647i))), var_1.b.x), -(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, arg_1.b.b.x, arg_1.b.b.x, 62128i), vec4<i32>(0i, 2147483647i, arg_2.b.x, global3.x)) ^ (vec4<i32>(-65500i, 0i, arg_1.a.b.x, var_1.b.x) >> (vec4<u32>(4294967295u, 0u, u_input.b, u_input.b) % vec4<u32>(32u))))));
    let var_3 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 0u, 0u, ~u_input.a.x), min(vec4<u32>(0u, 0u, u_input.a.x, 2944u), vec4<u32>(u_input.b, 4294967295u, arg_1.e, 5830u)) | ~(~vec4<u32>(14608u, arg_1.e, u_input.a.x, arg_1.e)));
    let var_4 = func_1(firstTrailingBit(abs(vec4<i32>(1i, -1i, var_1.b.x, var_2.x) | vec4<i32>(arg_2.b.x, 69747i, 159i, var_2.x))) & ~(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 33933i, -2147483647i, global3.x), vec4<i32>(61221i, var_2.x, 5399i, global3.x))), abs(_wgslsmith_sub_vec3_i32(~arg_1.b.b << (~vec3<u32>(59294u, 0u, arg_1.e) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(global3.x, var_1.b.x, -14422i), _wgslsmith_add_vec3_i32(vec3<i32>(-20472i, global3.x, -10670i), var_1.b)))), Struct_1(!arg_1.b.a, _wgslsmith_mod_vec3_i32(arg_2.b, firstLeadingBit(select(vec3<i32>(var_2.x, 20423i, global3.x), vec3<i32>(arg_2.b.x, global3.x, -25314i), vec3<bool>(true, arg_1.b.a, arg_0))))), vec2<u32>(~(~4294967295u), ~1u)).b;
    return vec3<u32>((~1u << ((u_input.b | ~14431u) % 32u)) & 1u, 55320u, _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(arg_1.e, 4294967295u, 53692u)), ~(~select(var_3.wzy, vec3<u32>(var_3.x, u_input.a.x, var_3.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<i32>(~global3.x, reverseBits(-global3.x ^ ~global3.x)));
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(func_5(u_input.a.x > 0u, func_1(vec4<i32>(global3.x, 0i, -2147483647i, var_0.x), vec3<i32>(var_0.x, 1i, global3.x), Struct_1(false, vec3<i32>(1i, 2147483647i, global3.x)), u_input.a.zy), func_1(vec4<i32>(-17645i, 0i, 7073i, 1i), vec3<i32>(18703i, -33833i, var_0.x), Struct_1(true, vec3<i32>(2112i, 60483i, global3.x)), vec2<u32>(2222u, u_input.b)).b), vec3<u32>(0u, u_input.b << (u_input.a.x % 32u), func_5(true, Struct_3(Struct_1(false, vec3<i32>(var_0.x, global3.x, -24398i)), Struct_1(false, vec3<i32>(1i, var_0.x, 0i)), 743f, 1000f, 4294967295u), Struct_1(false, vec3<i32>(0i, global3.x, var_0.x))).x)) << (_wgslsmith_div_vec3_u32(select(~vec3<u32>(1u, 1u, 52993u), global0[_wgslsmith_index_u32(0u, 29u)], select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), reverseBits(u_input.a & global0[_wgslsmith_index_u32(601u, 29u)])) % vec3<u32>(32u)), vec3<u32>(reverseBits(firstLeadingBit(4294967295u)), ~abs(u_input.b), u_input.b));
    var var_2 = _wgslsmith_f_op_f32(max(1351f, _wgslsmith_f_op_f32(1289f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f) - _wgslsmith_f_op_f32(trunc(-209f))) + -808f))));
    var var_3 = ~(~_wgslsmith_div_vec2_i32(-var_0, var_0) ^ var_0);
    let x = u_input.a;
    s_output = StorageBuffer(367f, -553f, countOneBits(_wgslsmith_mult_i32(var_3.x, _wgslsmith_mod_i32(var_3.x, global3.x ^ -5408i))));
}

