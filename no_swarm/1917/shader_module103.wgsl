struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 5790i), vec2<i32>(i32(-2147483648), -29708i), vec2<i32>(26564i, 1i), vec2<i32>(-26938i, -10534i), vec2<i32>(2147483647i, 70956i), vec2<i32>(-80778i, 0i), vec2<i32>(37373i, i32(-2147483648)), vec2<i32>(0i, -23766i), vec2<i32>(-58676i, 3227i), vec2<i32>(7734i, 34297i), vec2<i32>(2147483647i, -42146i), vec2<i32>(-59774i, 0i), vec2<i32>(0i, 27885i), vec2<i32>(0i, 328i), vec2<i32>(-1i, -16166i), vec2<i32>(-44891i, 17774i), vec2<i32>(-55998i, -22606i), vec2<i32>(2147483647i, -1i), vec2<i32>(1745i, -59401i), vec2<i32>(1756i, 49371i), vec2<i32>(1i, 70685i), vec2<i32>(-1i, -62896i), vec2<i32>(0i, 32758i), vec2<i32>(-55076i, 0i), vec2<i32>(10048i, 11801i), vec2<i32>(-19768i, 14613i));

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = arg_0;
    global1 = array<vec2<i32>, 27>();
    let var_1 = var_0;
    let var_2 = vec4<u32>(15246u, 62358u, ~countOneBits(var_1.a), ~(reverseBits(~var_0.a) << (~(~0u) % 32u)));
    let var_3 = !global2.xz;
    return vec3<bool>(select(var_3.x, global2.x, (countOneBits(arg_1.x) << (firstLeadingBit(4294967295u) % 32u)) <= -29073i), !var_3.x, true);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(32324u);
    global2 = !(!func_2(Struct_1(34976u), vec4<i32>(u_input.a.x, u_input.c, -11016i, 10769i) | vec4<i32>(u_input.a.x, -67417i, u_input.b, u_input.b)));
    var var_1 = Struct_1(45118u);
    var var_2 = ~arg_2.a;
    global3 = array<Struct_2, 3>();
    return !select(!(!vec4<bool>(global2.x, global2.x, false, global2.x)), !(!select(vec4<bool>(true, arg_0.x, true, true), vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, true, global2.x, global2.x))), true);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_2 {
    global3 = array<Struct_2, 3>();
    global2 = !func_2(Struct_1(u_input.d), vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, -2147483647i, -2147483647i), vec4<i32>(arg_1.x, arg_1.x, u_input.c, -22632i)), arg_1.x, 39951i | _wgslsmith_add_i32(u_input.b, 1i)));
    global0 = _wgslsmith_f_op_f32(-527f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f - -300f)))));
    var var_0 = select(select(vec4<bool>(true, !arg_0, false, _wgslsmith_f_op_f32(sign(233f)) == 592f), vec4<bool>(arg_0, (true | global2.x) & global2.x, arg_0, true), true), vec4<bool>(!(!global2.x), !(!select(true, false, true)), global2.x, global2.x), func_3(vec3<bool>(global2.x, !arg_0, true), abs(~max(vec2<u32>(arg_2.x, 31711u), vec2<u32>(u_input.e.x, 54894u))), global3[_wgslsmith_index_u32(1u, 3u)]));
    var var_1 = ~21989u;
    return global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d, 0u, min(arg_2.x, ~46191u), 1u), _wgslsmith_clamp_vec4_u32(max(countOneBits(vec4<u32>(arg_2.x, u_input.d, u_input.d, 66162u)), abs(vec4<u32>(1u, 4294967295u, arg_2.x, 61360u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(27703u, 27031u, 4894u, 1u), vec4<u32>(0u, 62504u, 24164u, u_input.e.x)), ~(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 51647u) | vec4<u32>(arg_2.x, arg_2.x, 39754u, 1u))))), 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-840f - 816f);
    var var_0 = func_1(true, vec4<i32>(u_input.c, u_input.b, u_input.a.x, 1i), ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.e.x, 25963u), ~u_input.e.x, ~47107u), ~(~vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-2015f, _wgslsmith_f_op_f32(floor(-1000f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1074f))))) - _wgslsmith_f_op_f32(f32(-1f) * -233f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1268f * _wgslsmith_f_op_f32(abs(747f))), 1244f))));
    let var_2 = 2147483647i;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-602f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2210f, -304f))) * -1012f)), -1668f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2144f, -858f)) - _wgslsmith_f_op_f32(-765f + 773f))))));
    let var_4 = Struct_2(4294967295u << ((0u ^ _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(39609u, var_0.a), u_input.e), u_input.e)) % 32u));
    var var_5 = Struct_2(51132u);
    let var_6 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(~max(var_4.a, 4294967295u), func_1(any(vec4<bool>(global2.x, true, false, global2.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, var_2, var_2), vec4<i32>(2147483647i, u_input.a.x, 61597i, -1i)), vec3<u32>(var_5.a, 136284u, var_0.a)).a, firstLeadingBit(countOneBits(7268u)), var_4.a), vec4<u32>(u_input.e.x | 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a, 15756u, var_5.a), vec3<u32>(0u, 0u, var_5.a)), 6569u, func_1(false, vec4<i32>(1i, 14690i, var_2, var_2), vec3<u32>(var_0.a, 72657u, 21600u)).a) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(83970u, var_0.a, 65488u, var_4.a), ~vec4<u32>(5997u, var_0.a, 1u, u_input.d)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(49571u, var_5.a, 1u, u_input.d), vec4<u32>(1u, 0u, var_0.a, 4294967295u)), vec4<u32>(func_1(global2.x, vec4<i32>(u_input.c, -38792i, var_2, 2147483647i), vec3<u32>(13631u, var_0.a, var_0.a)).a, var_4.a >> (0u % 32u), ~var_5.a, 24239u), ~max(vec4<u32>(var_0.a, 1u, var_4.a, 0u), vec4<u32>(42435u, 4294967295u, 59944u, var_0.a))), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.d, 0u, 1u, var_0.a)), ~(~vec4<u32>(1u, u_input.e.x, 34550u, 26061u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~30547u), max(4294967295u, u_input.e.x & ~49514u)), ~var_6.zxw);
}

