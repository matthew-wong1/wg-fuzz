struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<Struct_1, 13>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<vec3<bool>, 27>();
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(arg_0.a), 13u)];
    return select(!vec4<bool>(true, any(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(arg_0.c * 2235f) <= _wgslsmith_f_op_f32(select(326f, 1922f, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(~var_0.b.x < firstLeadingBit(107808u), all(vec4<bool>(false, true, true, false)) == true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(-arg_0.c) == -528f), (_wgslsmith_f_op_f32(trunc(arg_0.c)) >= 1495f) & any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, any(vec4<bool>(false, false, true, true)), arg_0.c == 1779f, any(global2[_wgslsmith_index_u32(u_input.a.x, 27u)])), true));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 13>();
    return Struct_1(10420u, vec4<u32>(1u, 0u, ~(1u >> (global1.b.x % 32u)), 4294967295u), -1345f, reverseBits(select(u_input.a, _wgslsmith_mult_vec4_u32(~global1.d, global1.d), func_3(Struct_1(arg_0.x, global1.d, -1293f, global1.d)))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    global1 = func_2(~vec2<u32>(select(global1.b.x, 48087u, arg_1), u_input.a.x), abs(vec4<i32>(~(1i << (1u % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-16991i, -1i, 2147483647i, 9078i), vec4<i32>(0i, -3776i, -25939i, -1i)), ~vec4<i32>(-53851i, 13508i, 25130i, 5043i)), 836i, abs(-2147483647i << (u_input.a.x % 32u)))), !select(select(vec3<bool>(arg_1, true, true), !global2[_wgslsmith_index_u32(global1.b.x, 27u)], vec3<bool>(false, arg_1, arg_1)), !(!global2[_wgslsmith_index_u32(1u, 27u)]), !(!global2[_wgslsmith_index_u32(0u, 27u)])), global1.b.x);
    global1 = func_2(abs(vec2<u32>(~19102u, ~_wgslsmith_clamp_u32(33379u, u_input.a.x, global1.b.x))), ~(-(~vec4<i32>(-2147483647i, 1i, 1i, 1i)) << (abs(firstLeadingBit(global1.b)) % vec4<u32>(32u))), select(vec3<bool>(arg_1, !arg_1, true), select(global2[_wgslsmith_index_u32(u_input.a.x ^ reverseBits(47238u), 27u)], func_3(global0[_wgslsmith_index_u32(u_input.a.x, 13u)]).zzy, arg_1), arg_1), _wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), countOneBits(u_input.a.x)));
    let var_0 = Struct_1(global1.a, min(vec4<u32>(_wgslsmith_dot_vec2_u32(~global1.d.ww, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), global1.d.xy)), global1.a, ~1u, 1u), vec4<u32>(1u, 4294967295u, global1.d.x, ~_wgslsmith_div_u32(4294967295u, u_input.a.x))), global1.c, ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1.d.wx, vec2<u32>(63976u, 54389u)), 0u), ~(~global1.a), u_input.a.x, ~global1.d.x));
    global0 = array<Struct_1, 13>();
    let var_1 = select(vec3<u32>(_wgslsmith_div_u32(50483u, func_2(global1.b.wy, -vec4<i32>(37079i, -2147483647i, 1i, -13285i), global2[_wgslsmith_index_u32(16060u, 27u)], 0u).d.x), u_input.a.x, u_input.a.x), vec3<u32>(~(~(~0u)), var_0.a, ~1u), !select(select(func_3(var_0).xwz, vec3<bool>(true, true, arg_1), global2[_wgslsmith_index_u32(min(1u, global1.a), 27u)]), global2[_wgslsmith_index_u32(u_input.a.x, 27u)], false));
    return var_0;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(52245u, global1.b, global1.c, vec4<u32>(14615u, 0u >> (_wgslsmith_sub_u32(reverseBits(1u), ~u_input.a.x) % 32u), ~_wgslsmith_mod_u32(arg_0.d.x, _wgslsmith_div_u32(global1.b.x, 4294967295u)), countOneBits(global1.b.x)));
    let var_1 = _wgslsmith_f_op_f32(global1.c - 2065f);
    global0 = array<Struct_1, 13>();
    let var_2 = select(vec4<u32>(1u, global1.a, _wgslsmith_add_u32(global1.b.x, global1.d.x), firstLeadingBit(arg_0.d.x)) >> (max(~u_input.a, ~global1.b) % vec4<u32>(32u)), vec4<u32>(~arg_0.b.x | ~17615u, global1.d.x, _wgslsmith_dot_vec2_u32(var_0.b.yz, global1.b.zw) >> (~36240u % 32u), arg_0.d.x), vec4<bool>(true, false, false, true)) >> (~vec4<u32>(~_wgslsmith_clamp_u32(global1.d.x, arg_0.d.x, 31657u), abs(83384u), 1u, ~arg_0.a) % vec4<u32>(32u));
    var var_3 = ~4294967295u;
    return func_2(u_input.a.yw, vec4<i32>(2147483647i, 72767i, 15342i, -2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.a, _wgslsmith_mult_u32(~6566u, var_0.a | global1.d.x)), 1u), 27u)], u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-272f)), _wgslsmith_f_op_f32(-1236f * global1.c)))), false, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.c, 1459f)), vec3<f32>(-517f, global1.c, global1.c))))));
    global1 = global0[_wgslsmith_index_u32(31491u, 13u)];
    let var_1 = global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c))), (-8894i | (_wgslsmith_mod_i32(-59010i, 1i) >> (var_0.b.x % 32u))) < -(~select(2147483647i, 1i, true)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1282f, var_0.c))), var_0.c)), global1.c, -664f)).b.x, 13u)];
    var var_2 = global0[_wgslsmith_index_u32(var_1.d.x, 13u)];
    var_2 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.d.x, 13249u, var_2.a)), var_0.d.ywy << (vec3<u32>(var_0.d.x, u_input.a.x, 1u) % vec3<u32>(32u))), reverseBits(_wgslsmith_mult_u32(24494u, select(var_1.d.x, var_1.a, false)))), 13u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.yyz);
}

