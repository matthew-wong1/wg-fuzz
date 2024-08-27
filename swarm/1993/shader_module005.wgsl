struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: Struct_3 = Struct_3(vec4<i32>(-2181i, i32(-2147483648), 0i, -22716i), true, 8984u, vec2<i32>(31099i, 1059i));

var<private> global2: array<f32, 9> = array<f32, 9>(-798f, 1247f, 690f, 311f, 928f, 2365f, 539f, 737f, -2642f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 9u)], global2[_wgslsmith_index_u32(u_input.b, 9u)]))))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    global2 = array<f32, 9>();
    let var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 9u)]);
    let var_1 = true;
    let var_2 = arg_0;
    let var_3 = firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.a, arg_3.d.x, arg_0.d.x, 0i) << (u_input.e % vec4<u32>(32u))), select(_wgslsmith_add_vec4_i32(arg_2.a, vec4<i32>(arg_0.a.x, u_input.a, var_2.d.x, 2147483647i)), -global1.a, true)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(var_2.a.x, -23418i), firstLeadingBit(global1.a.x)), 1i, arg_2.a.x, countOneBits(arg_0.d.x >> (u_input.e.x % 32u)))));
    return -1i;
}

fn func_2() -> f32 {
    var var_0 = Struct_5(func_3(Struct_3(vec4<i32>(18109i, max(global1.a.x, global1.d.x), _wgslsmith_mult_i32(u_input.d.x, global1.d.x), -42205i), true, u_input.b, global1.a.yy), false, Struct_3(-vec4<i32>(-2147483647i, -1i, global1.d.x, 4827i), !(true != global1.b), _wgslsmith_div_u32(37732u, 4294967295u) ^ ~global1.c, abs(-vec2<i32>(1i, -27348i))), Struct_3(vec4<i32>(1i, -global1.d.x, global1.d.x, ~(-3596i)), global1.b, _wgslsmith_clamp_u32(global1.c << (global1.c % 32u), _wgslsmith_mult_u32(0u, 1u), _wgslsmith_div_u32(1679u, 26360u)), ~(-u_input.d.xw))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(344f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64595u, 4u)], 9u)], global2[_wgslsmith_index_u32(u_input.e.x, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]) - vec4<f32>(1000f, global2[_wgslsmith_index_u32(1u, 9u)], 1525f, global2[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(12682u, 9u)])) + global2[_wgslsmith_index_u32(~8348u, 9u)]), global1.b, _wgslsmith_add_vec2_i32(~u_input.d.xz, vec2<i32>(global1.a.x, -41044i) << (vec2<u32>(global1.c, global1.c) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(-global1.a.yx, global1.d)), u_input.e, !vec4<bool>(global1.b, global1.b, global1.a.x <= -1i, global1.b), select(!vec4<bool>(global1.b, false, true, true), select(vec4<bool>(false, false, global1.b, true), !vec4<bool>(true, false, global1.b, false), vec4<bool>(true, global1.b, global1.b, true)), true)));
    var_0 = Struct_5(i32(-1i) * -(~_wgslsmith_clamp_i32(u_input.a, u_input.d.x, 42607i)), var_0.b);
    var var_1 = Struct_4(Struct_3(-select(-global1.a, select(vec4<i32>(508i, var_0.b.a.d.x, u_input.a, u_input.d.x), global1.a, var_0.b.d.x), var_0.b.c), true, ~50811u, vec2<i32>(-70183i, i32(-1i) * -u_input.d.x)), var_0.b.d.yzz);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, !global1.b, true, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-748f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.b.b.x, 9u)] + global2[_wgslsmith_index_u32(11465u, 9u)]))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32) -> vec4<bool> {
    global0 = array<u32, 4>();
    global2 = array<f32, 9>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -375f))), 151f))));
    let var_1 = countOneBits(_wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.x, -1i), global1.d)), vec2<i32>(u_input.d.x, i32(-1i) * -19262i), vec2<i32>(u_input.d.x >> (1u % 32u), global1.d.x)) ^ firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-44864i, 5003i) | vec2<i32>(11577i, u_input.d.x), ~vec2<i32>(-1i, u_input.a))));
    var var_2 = max(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(global1.a.x, 0i, global1.a.x) << (~vec3<u32>(u_input.b, 22923u, 27231u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(global1.d.x, var_1.x, u_input.d.x), 1i), u_input.d.x, ~(u_input.a | u_input.d.x))), u_input.a);
    return !vec4<bool>(select(global1.b, u_input.a > -30286i, !(global1.b && false)), select(global1.b, true, u_input.a > ~(-2147483647i)), any(vec4<bool>(!global1.b, true, global1.b, false)), all(vec2<bool>(global1.b, global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(4294967295u, 1u, 40305u)), 9u)] + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global1.c, 9u)])), -151f))))) * _wgslsmith_f_op_f32(func_1(!(!vec4<bool>(global1.b, global1.b, true, global1.b)))));
    let var_1 = all(select(select(!vec2<bool>(false, global1.b), vec2<bool>(!global1.b, true), select(vec2<bool>(global1.b, true), vec2<bool>(false, global1.b), !global1.b)), !vec2<bool>(!global1.b, global1.b), global1.b));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f))), global2[_wgslsmith_index_u32(15763u, 9u)]);
    var var_3 = func_4(_wgslsmith_f_op_vec2_f32(max(var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(var_2.x, 792f)))))), -736f);
    global2 = array<f32, 9>();
    let var_4 = Struct_4(Struct_3(u_input.d, true, global0[_wgslsmith_index_u32(reverseBits(~(~14368u)), 4u)], _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(22699i, global1.a.x)) & ~_wgslsmith_mult_vec2_i32(global1.d, u_input.d.xz)), var_3.wzx);
    let var_5 = firstTrailingBit(u_input.d << ((vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], abs(0u), 1u, ~1u) | abs(u_input.e)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-531f, global2[_wgslsmith_index_u32(var_4.a.c >> (1u % 32u), 9u)])), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -309f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.e.wxw, vec3<u32>(_wgslsmith_mod_u32(0u, 47615u), abs(global1.c), 4294967295u)), 9u)]));
}

