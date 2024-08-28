struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-2018f, 920f, 161f);

var<private> global1: array<bool, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    global0 = array<f32, 3>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]) - _wgslsmith_f_op_f32(-735f + -1427f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(7962u, 0u, 45980u, 73517u), vec4<u32>(12866u, 13751u, 36812u, 31898u)), vec4<u32>(549u, 4294967295u, 4294967295u, 40859u)), 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(480f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1926f)) - global0[_wgslsmith_index_u32(~0u, 3u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(31713u, 3u)], -134f, -1000f, 812f))))), Struct_1(~abs(vec3<i32>(-1i, 28686i, arg_3.a.x)), all(vec3<bool>(true, global0[_wgslsmith_index_u32(7970u, 3u)] < global0[_wgslsmith_index_u32(1u, 3u)], true)), 53729i), Struct_1(arg_1.a >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(abs(~9732u), 18u)], arg_3.c & arg_1.a.x), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.a.x ^ -12356i, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2, u_input.a.x), vec3<i32>(arg_2, 0i, arg_2))), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.c, 0i, arg_2), arg_3.a, vec3<i32>(0i, 0i, arg_2)))), any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 18u)], arg_3.b, true, arg_1.b)) | arg_0.x, -(~(-2914i))), true);
    global1 = array<bool, 18>();
    var var_1 = vec4<u32>(~1u, ~reverseBits(14947u), ~43723u, firstLeadingBit(_wgslsmith_mod_u32(43335u, ~(~70008u))));
    global0 = array<f32, 3>();
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<f32, 3>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_1, 117623u), ~0u), 3u)];
    let var_1 = select(max(_wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(0i, u_input.c, -43133i, -2147483647i)), ~firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, arg_0.x, arg_2))), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, arg_3.x, 8802i, -80617i), vec4<i32>(61399i, arg_3.x, -43018i, 10216i))), vec4<i32>(arg_2, 40672i, arg_3.x, -func_3(!vec3<bool>(global1[_wgslsmith_index_u32(2197u, 18u)], global1[_wgslsmith_index_u32(arg_1, 18u)], false), Struct_1(vec3<i32>(arg_2, 2147483647i, -21556i), global1[_wgslsmith_index_u32(arg_1, 18u)], arg_3.x), 11512i, Struct_1(vec3<i32>(10012i, 2147483647i, -1i), true, arg_2))), !(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(20483u, ~arg_1, countOneBits(arg_1)), 3u)] != _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] - -396f)));
    global1 = array<bool, 18>();
    global0 = array<f32, 3>();
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-arg_2 >> (_wgslsmith_sub_u32(arg_1, arg_1) % 32u), ~(-60213i) >> (abs(arg_1) % 32u), min(var_1.x, _wgslsmith_mod_i32(arg_3.x, 5523i))), ~(vec3<i32>(-1i) * -vec3<i32>(2128i, -7135i, -1i))), false, -16966i >> (arg_1 % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 18u)])))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43369u, 3u)]), global0[_wgslsmith_index_u32(~1u, 3u)], -1093f)))))));
    var var_3 = firstTrailingBit(~(~vec4<u32>(12664u, 6721u, 1u, 265u) << ((firstTrailingBit(vec4<u32>(50570u, 4294967295u, 19418u, 0u)) >> (vec4<u32>(4294967295u, 0u, 0u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_1 = u_input.b;
    return func_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(~u_input.c, abs(u_input.a.x)), u_input.a.zx), 0u, i32(-1i) * -1i, reverseBits(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(1i, -14413i) ^ u_input.a.zy), firstTrailingBit(vec2<i32>(-8450i, -58498i)) & u_input.a.xz)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = min(-1i, -func_1().c);
    let var_1 = (firstLeadingBit(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(26045u, 16753u, 1u), vec3<u32>(25854u, 69476u, 20627u)))) == ~0u) || arg_0.b;
    global1 = array<bool, 18>();
    var var_2 = -_wgslsmith_div_vec4_i32(countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -26474i, arg_0.c, u_input.c), vec4<i32>(arg_0.a.x, -1i, arg_1.c.a.x, 1i), vec4<i32>(-22008i, arg_0.c, u_input.a.x, var_0))), vec4<i32>(~(~(-1i)), 0i, _wgslsmith_sub_i32(-arg_1.d.c, -arg_0.a.x), _wgslsmith_mult_i32(1i, 1i)));
    var var_3 = select(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), firstTrailingBit(select(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(select(vec2<u32>(12383u, 7106u), vec2<u32>(45735u, 91795u), true), ~vec2<u32>(4294967295u, 30235u)), select(select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 18u)], false), vec2<bool>(arg_0.b, var_1)), vec2<bool>(var_1, global1[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(arg_1.e, false)))), any(!(!select(vec3<bool>(false, true, arg_1.d.b), vec3<bool>(arg_1.d.b, false, var_1), var_1))));
    return func_2(~var_2.zy, countOneBits(10191u) | _wgslsmith_mult_u32(var_3.x, var_3.x), 2147483647i, vec2<i32>(_wgslsmith_add_i32(u_input.c, _wgslsmith_mult_i32(min(u_input.a.x, -20161i), 0i)), func_2(~vec2<i32>(var_0, var_2.x), var_3.x, _wgslsmith_dot_vec2_i32(~u_input.a.xx, vec2<i32>(34000i, 0i)), firstLeadingBit(~vec2<i32>(-2147483647i, arg_0.c))).c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(~_wgslsmith_add_vec3_i32(vec3<i32>(42446i, -1i, 60993i), u_input.a), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 3u)] - global0[_wgslsmith_index_u32(~4294967295u, 3u)]) < -499f, ~u_input.b), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(962f, 371f, 431f, 1208f), vec4<f32>(global0[_wgslsmith_index_u32(45328u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], -1339f, global0[_wgslsmith_index_u32(4294967295u, 3u)]))))), Struct_1(max(countOneBits(u_input.a), -vec3<i32>(u_input.b, 32727i, u_input.c)), !global1[_wgslsmith_index_u32(firstLeadingBit(4869u), 18u)], ~_wgslsmith_mod_i32(u_input.a.x, u_input.b)), Struct_1(vec3<i32>(-u_input.b, reverseBits(u_input.a.x), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -638f) != _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(9977u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), 1i), func_1(), false));
    global1 = array<bool, 18>();
    var var_1 = select(!vec4<bool>(global1[_wgslsmith_index_u32(~0u, 18u)], ~3106i <= max(-2285i, var_0.a.x), all(vec3<bool>(true, true, var_0.b)), any(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 18u)], false))), !(!vec4<bool>(var_0.b, true, var_0.b, var_0.b)), !func_1().b);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, global0[_wgslsmith_index_u32(min(~1u, 0u), 3u)], 488f, _wgslsmith_f_op_f32(select(512f, 107f, all(vec2<bool>(var_0.b, var_0.b))))))), Struct_1(vec3<i32>(var_0.a.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 6590i, u_input.b), vec4<i32>(u_input.a.x, u_input.b, -11906i, 0i))) >> (firstLeadingBit(~vec3<u32>(17589u, 69658u, 4294967295u)) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 26812u, 1u), vec3<u32>(35595u, 13801u, 12900u))) <= ~(~22512u), ~u_input.c), Struct_1(-vec3<i32>(0i << (1u % 32u), ~66564i, abs(0i)), any(select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(88464u, 18u)]), !var_1.xww, select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_1.x, true, global1[_wgslsmith_index_u32(44946u, 18u)]), var_1.wwx))), ~u_input.c), func_4(Struct_1(var_0.a, var_0.b & (true && var_1.x), -2147483647i), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(668f, global0[_wgslsmith_index_u32(12376u, 3u)], 1341f, global0[_wgslsmith_index_u32(4294967295u, 3u)])))), Struct_1(var_0.a, true, u_input.c), Struct_1(-var_0.a, func_4(Struct_1(vec3<i32>(u_input.c, var_0.a.x, var_0.a.x), var_0.b, var_0.a.x), Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], -1000f, global0[_wgslsmith_index_u32(47337u, 3u)]), Struct_1(vec3<i32>(u_input.b, u_input.c, var_0.a.x), true, 0i), Struct_1(var_0.a, var_0.b, var_0.a.x), Struct_1(u_input.a, var_1.x, u_input.c), true)).b, u_input.c), func_4(func_1(), Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], -2976f, 334f), Struct_1(u_input.a, var_0.b, 53i), Struct_1(vec3<i32>(var_0.a.x, u_input.b, 27097i), var_0.b, u_input.a.x), Struct_1(u_input.a, var_0.b, u_input.c), true)), false)), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(55521u, 62666u), _wgslsmith_clamp_u32(4294967295u, 1u, 866u)), 4294967295u), 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 68206u), 1u), ~(~0u), reverseBits(_wgslsmith_mod_u32(97961u, 1u)))));
}

