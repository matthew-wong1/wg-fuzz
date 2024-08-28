struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 15>;

var<private> global3: array<vec4<f32>, 30>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global1 = Struct_2(global1.a);
    var var_0 = vec2<f32>(global2[_wgslsmith_index_u32(abs(u_input.c.x), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], ~vec4<u32>(select(u_input.c.x, 4294967295u, false), u_input.c.x, 49972u, u_input.c.x)), 15u)]);
    var var_1 = !select(vec3<bool>(true, u_input.c.x >= max(u_input.c.x, u_input.c.x), false), vec3<bool>(_wgslsmith_f_op_f32(-var_0.x) <= global2[_wgslsmith_index_u32(u_input.c.x, 15u)], (var_0.x >= global2[_wgslsmith_index_u32(u_input.c.x, 15u)]) && true, any(vec2<bool>(false, true))), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))) != false);
    global0 = array<vec4<u32>, 27>();
    var_1 = !select(!(!(!vec3<bool>(var_1.x, false, true))), vec3<bool>(false, !any(vec3<bool>(false, false, false)), true), all(!vec4<bool>(true, var_1.x, true, var_1.x)));
    return ~_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, u_input.c.x)), u_input.c));
}

fn func_2() -> u32 {
    global2 = array<f32, 15>();
    var var_0 = false;
    global3 = array<vec4<f32>, 30>();
    let var_1 = Struct_1(_wgslsmith_clamp_i32(-1i, _wgslsmith_mult_i32(global1.a.x, global1.a.x), global1.a.x), global2[_wgslsmith_index_u32(0u, 15u)]);
    var var_2 = ~min(func_3() ^ 1u, u_input.c.x);
    return max(8983u, u_input.c.x) ^ 80675u;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = -1109f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, global2[_wgslsmith_index_u32(16348u, 15u)]) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -1172f), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.c.x ^ _wgslsmith_mult_u32(u_input.c.x, 0u), 15u)])))));
    let var_2 = -1066f;
    global0 = array<vec4<u32>, 27>();
    return Struct_2(vec2<i32>(-1i) * -abs(~vec2<i32>(var_0.a.x, u_input.a)));
}

fn func_1(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = global1.a.x;
    global2 = array<f32, 15>();
    global2 = array<f32, 15>();
    global1 = func_4(_wgslsmith_mod_u32(_wgslsmith_mult_u32(31241u, 1u), 1u) != abs(func_2()), _wgslsmith_f_op_vec3_f32(vec3<f32>(245f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(~1u, 15u)], all(vec3<bool>(true, false, false)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-1372f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(993f, global2[_wgslsmith_index_u32(u_input.c.x, 15u)], -2386f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 15u)], -1558f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_0.x, 15u)], -562f, global2[_wgslsmith_index_u32(4294967295u, 15u)])))))), Struct_2(vec2<i32>(-16731i, (i32(-1i) * -2147483647i) ^ (u_input.b | 1i))), Struct_1(global1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 15u)])))));
    let var_1 = select(all(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), false)), !((~4294967295u ^ arg_0.x) >= ~func_2()), any(vec2<bool>(true, true)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f * -499f)), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, 61272u), 15u)], _wgslsmith_f_op_f32(abs(103f))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_i32(~(-vec2<i32>(global1.a.x, 32430i)), global1.a));
    var var_1 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a, 78844i, u_input.b, -15348i), vec4<i32>(-global1.a.x, 0i, func_4(true, arg_2, var_0, Struct_1(u_input.b, 592f)).a.x, -1i), select(~vec4<i32>(var_0.a.x, var_0.a.x, -2147483647i, 13115i), reverseBits(vec4<i32>(u_input.a, -24061i, -43849i, u_input.a)) ^ -vec4<i32>(0i, -1i, -1i, var_0.a.x), true));
    var var_2 = Struct_1(~1i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(803f, -278f)) * _wgslsmith_f_op_f32(-2267f + global2[_wgslsmith_index_u32(arg_0.x, 15u)]))))));
    var var_3 = Struct_1(global1.a.x, _wgslsmith_f_op_vec3_f32(func_1(~firstLeadingBit(global0[_wgslsmith_index_u32(0u, 27u)] >> (vec4<u32>(1u, 105630u, 64949u, arg_0.x) % vec4<u32>(32u))))).x);
    var_1 = ~(min(-firstLeadingBit(vec4<i32>(-7196i, var_0.a.x, 17884i, u_input.a)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-15784i, 4845i, var_1.x, var_0.a.x), vec4<i32>(1i, var_3.a, 15204i, 16982i))) << (global0[_wgslsmith_index_u32(33342u, 27u)] % vec4<u32>(32u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(_wgslsmith_sub_vec2_u32(u_input.c, abs(countOneBits(vec2<u32>(u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(190f, global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 15u)])), true)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-135f, global2[_wgslsmith_index_u32(u_input.c.x, 15u)], 176f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1702f, -534f, -955f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], -269f, -713f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2334f, global2[_wgslsmith_index_u32(7807u, 15u)], -737f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(58111u, 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 15u)], 1007f) * vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], 927f, 717f)) + vec3<f32>(global2[_wgslsmith_index_u32(40273u, 15u)], 1000f, 678f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, -547f, -1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(50602u, 15u)], -1000f, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -1235f, global2[_wgslsmith_index_u32(2419u, 15u)]), vec3<f32>(871f, -917f, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]))), false)), vec3<bool>(true, select(true, false, true), false))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 15u)]))), global2[_wgslsmith_index_u32(47655u, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 15u)] + 913f) * -547f))));
    var var_0 = global2[_wgslsmith_index_u32(~u_input.c.x, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, -min(reverseBits(firstTrailingBit(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a))), vec4<i32>(u_input.a, 1i, 70863i, select(66383i, -33302i, false))), _wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-873f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))), _wgslsmith_div_vec4_i32(reverseBits(-(~vec4<i32>(2147483647i, 1i, 1i, u_input.b))), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(func_4(false, vec3<f32>(global2[_wgslsmith_index_u32(1u, 15u)], -994f, -229f), Struct_2(global1.a), Struct_1(58998i, global2[_wgslsmith_index_u32(u_input.c.x, 15u)])).a.x, u_input.b), 30740i, u_input.b)));
}

