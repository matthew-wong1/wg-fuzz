struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: array<vec2<u32>, 18>;

var<private> global2: array<f32, 31>;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, vec2<u32>(4294967295u, 0u), true), Struct_1(true, vec2<u32>(4294967295u, 21987u), false), Struct_1(true, vec2<u32>(1u, 44744u), false), Struct_1(true, vec2<u32>(4294967295u, 4294967295u), true), Struct_1(false, vec2<u32>(8131u, 16874u), true), Struct_1(true, vec2<u32>(46825u, 90598u), false), Struct_1(true, vec2<u32>(39459u, 47794u), false), Struct_1(true, vec2<u32>(1u, 28945u), false), Struct_1(false, vec2<u32>(0u, 1u), false), Struct_1(true, vec2<u32>(54662u, 0u), true), Struct_1(true, vec2<u32>(0u, 81456u), false), Struct_1(false, vec2<u32>(13257u, 0u), false), Struct_1(false, vec2<u32>(0u, 29081u), true), Struct_1(true, vec2<u32>(14861u, 0u), false), Struct_1(true, vec2<u32>(160383u, 0u), false), Struct_1(false, vec2<u32>(82071u, 56529u), false), Struct_1(false, vec2<u32>(1u, 0u), false), Struct_1(true, vec2<u32>(75174u, 0u), false), Struct_1(false, vec2<u32>(0u, 42281u), false), Struct_1(false, vec2<u32>(24892u, 10839u), false), Struct_1(true, vec2<u32>(0u, 18221u), true), Struct_1(false, vec2<u32>(24039u, 1u), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_u32(u_input.a, u_input.a);
    var var_1 = global3[_wgslsmith_index_u32(min(firstTrailingBit(_wgslsmith_mod_u32(var_0, var_0)) | var_0, 4294967295u) & 1u, 22u)];
    var_1 = Struct_1(_wgslsmith_f_op_f32(step(1614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1076f + -2028f)))) >= -227f, ~global1[_wgslsmith_index_u32(countOneBits(var_0), 18u)], all(select(select(select(vec2<bool>(false, false), arg_3, arg_3), vec2<bool>(true, true), select(arg_3, vec2<bool>(true, arg_3.x), arg_3.x)), !vec2<bool>(false, var_1.c), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.b.x, 31u)] - -341f) != -807f)));
    let var_2 = select(~arg_0, -abs(arg_0), all(!vec4<bool>(true, var_1.a, all(arg_3), false)));
    var var_3 = arg_0.zy;
    return !vec3<bool>(arg_3.x || true, false | (_wgslsmith_div_f32(-237f, global2[_wgslsmith_index_u32(var_1.b.x, 31u)]) >= _wgslsmith_f_op_f32(-1712f * -1606f)), any(vec3<bool>(!var_1.a, true, any(vec4<bool>(true, arg_3.x, var_1.a, arg_3.x)))));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = select(vec2<bool>(any(select(vec3<bool>(true, arg_0.c, arg_0.c), !vec3<bool>(arg_0.a, false, true), any(vec4<bool>(arg_0.c, false, false, false)))), true), !(!(!select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), false))), !vec2<bool>(true, all(func_3(vec3<i32>(1i, u_input.b, -31515i), 1i, u_input.b, vec2<bool>(true, arg_0.c)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(reverseBits(2487u), 31u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(131045u, 31u)]), any(vec3<bool>(var_0.x, arg_0.a, true)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 31u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(174f + -708f), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(10286u, 31u)], -821f), any(var_0))))));
    let var_2 = !arg_0.a;
    let var_3 = false;
    let var_4 = select(max(~(u_input.a >> (0u % 32u)), arg_0.b.x), ~(~(~4294967295u)), true);
    return func_3(_wgslsmith_div_vec3_i32(~(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_4, 1u, var_4), vec3<u32>(6056u, var_4, u_input.c)) % vec3<u32>(32u))), -(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, -55983i)))), ~(~_wgslsmith_div_i32(~u_input.b, -u_input.b)), max(-u_input.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 9956i, u_input.b, 6348i), vec4<i32>(-5297i, u_input.b, -2147483647i, -41652i)) & 1i), func_3(-(~(vec3<i32>(u_input.b, u_input.b, 26727i) >> (vec3<u32>(4294967295u, 12329u, arg_0.b.x) % vec3<u32>(32u)))), 2147483647i, (1i >> (abs(var_4) % 32u)) ^ ~59555i, var_0).xx);
}

fn func_1() -> i32 {
    global3 = array<Struct_1, 22>();
    let var_0 = ~1i;
    let var_1 = select(select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(var_0 < u_input.b, true, false), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), func_2(global3[_wgslsmith_index_u32(1u, 22u)])), true), !(any(vec2<bool>(false, false)) || true)), select(vec3<bool>(true, true, true), !vec3<bool>(select(true, true, false), any(vec2<bool>(false, true)), true), func_2(Struct_1(u_input.c == 42110u, ~vec2<u32>(u_input.a, 76304u), any(vec2<bool>(false, false))))), vec3<bool>(-203f == _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1089f, -1000f))), !(abs(var_0) != (u_input.b ^ u_input.b)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))) | true));
    var var_2 = true;
    var_2 = func_2(global3[_wgslsmith_index_u32(11269u, 22u)]).x;
    return -var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(i32(-1i) * -u_input.b);
    var var_1 = Struct_1(select(true, true, u_input.c == ~(~u_input.a)), ~_wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(0u, 18u)], vec2<u32>(u_input.c, ~110778u), vec2<u32>(~u_input.c, _wgslsmith_clamp_u32(118324u, u_input.a, 68940u))), false);
    let var_2 = !(false == !var_1.c);
    var_0 = -1i;
    var var_3 = ~_wgslsmith_clamp_vec4_i32(min(vec4<i32>(15914i, 1i, -29009i, 2147483647i), vec4<i32>(52424i, u_input.b, u_input.b, 4159i)) << (max(vec4<u32>(var_1.b.x, u_input.a, 1u, u_input.a) ^ vec4<u32>(var_1.b.x, var_1.b.x, u_input.c, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.c), vec4<u32>(u_input.c, var_1.b.x, var_1.b.x, 37602u))) % vec4<u32>(32u)), select(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.b, -6970i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(_wgslsmith_sub_i32(0i, u_input.b), 20778i, u_input.b & 2147483647i, u_input.b), !(!vec4<bool>(true, false, var_2, var_1.c))), ~min(vec4<i32>(19311i, u_input.b, u_input.b, u_input.b), vec4<i32>(-50344i, -13897i, u_input.b, u_input.b)));
    var var_4 = vec3<i32>(-_wgslsmith_clamp_i32(max(var_3.x ^ u_input.b, u_input.b), func_1(), var_3.x), select(i32(-1i) * -var_3.x, 0i, -2147483647i > var_3.x) & ~min(-18042i | var_3.x, var_3.x), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1108f * _wgslsmith_f_op_f32(f32(-1f) * -2320f)))), vec3<u32>(~(~select(u_input.a, 0u, false)), u_input.a, max(u_input.a ^ u_input.a, _wgslsmith_mult_u32(~19828u, ~u_input.a))), 38107u, u_input.b);
}

