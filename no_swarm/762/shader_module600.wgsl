struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<f32>(1482f, 280f, -410f), vec2<bool>(true, true), vec4<i32>(-1i, -37749i, -1i, -15753i), vec4<u32>(1u, 4294967295u, 32854u, 0u)), Struct_3(vec3<f32>(867f, -1512f, -787f), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -30479i, -1i, i32(-2147483648)), vec4<u32>(9633u, 0u, 6701u, 35410u)), Struct_3(vec3<f32>(2239f, 354f, 669f), vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, 16662i, -1i), vec4<u32>(36923u, 4294967295u, 0u, 3674u)), Struct_3(vec3<f32>(-1260f, -924f, -988f), vec2<bool>(true, true), vec4<i32>(-43053i, 2147483647i, i32(-2147483648), 1i), vec4<u32>(1u, 4294967295u, 1u, 3614u)), Struct_3(vec3<f32>(955f, -3032f, 1000f), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 41231i, 13384i, -1i), vec4<u32>(43147u, 56119u, 6703u, 1u)), Struct_3(vec3<f32>(1145f, 1411f, 348f), vec2<bool>(false, true), vec4<i32>(-15270i, 1i, -9864i, 0i), vec4<u32>(1u, 0u, 4294967295u, 1u)), Struct_3(vec3<f32>(-676f, -340f, -113f), vec2<bool>(false, true), vec4<i32>(-8314i, 2147483647i, -75252i, 1i), vec4<u32>(20211u, 16949u, 13166u, 23887u)), Struct_3(vec3<f32>(325f, 1000f, -1916f), vec2<bool>(false, false), vec4<i32>(-6468i, 16582i, 1i, 2147483647i), vec4<u32>(84506u, 7823u, 15542u, 33094u)), Struct_3(vec3<f32>(139f, -1459f, 3097f), vec2<bool>(false, false), vec4<i32>(1i, 0i, -1i, -42900i), vec4<u32>(68657u, 24654u, 1u, 20572u)), Struct_3(vec3<f32>(-874f, 1697f, 451f), vec2<bool>(false, true), vec4<i32>(-1i, 12863i, -20673i, 2147483647i), vec4<u32>(4294967295u, 25537u, 4294967295u, 37142u)), Struct_3(vec3<f32>(852f, 832f, 215f), vec2<bool>(false, true), vec4<i32>(-1i, 2147483647i, 2924i, -83955i), vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), Struct_3(vec3<f32>(1320f, 170f, 100f), vec2<bool>(true, false), vec4<i32>(-9189i, -46218i, 69736i, 2147483647i), vec4<u32>(4294967295u, 6174u, 0u, 48167u)));

var<private> global2: array<f32, 26> = array<f32, 26>(-389f, 417f, -278f, 609f, -629f, -1527f, 337f, 909f, 1000f, -707f, -1621f, -116f, 1000f, -122f, 116f, 186f, -142f, -458f, -1226f, -777f, -1243f, 302f, -619f, -910f, -1241f, 894f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = vec4<i32>(u_input.b, 20384i, 0i, 24266i);
    var_0 = ~vec4<i32>(1i, 2147483647i, var_0.x, u_input.b);
    var var_1 = !(!select(select(vec3<bool>(true, true, false), !vec3<bool>(true, arg_0, false), select(vec3<bool>(false, arg_0, arg_2.x), vec3<bool>(false, false, arg_2.x), false)), !vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(true, true, false)))));
    let var_2 = 728f;
    var var_3 = Struct_2(vec2<u32>(1u, 37944u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(985f, 760f, -1506f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, -498f, global2[_wgslsmith_index_u32(4294967295u, 26u)]))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(209f, 1014f, var_2) + vec3<f32>(var_2, var_2, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], 145f, global2[_wgslsmith_index_u32(arg_1.x, 26u)]))))))), ~firstTrailingBit(~vec3<u32>(arg_1.x, arg_1.x, u_input.c.x)), _wgslsmith_mod_vec3_u32(u_input.c, select(~(~vec3<u32>(51620u, arg_1.x, u_input.c.x)), u_input.c, true & !arg_0)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(var_2, -1758f)), _wgslsmith_f_op_f32(798f - var_2)))))));
    return u_input.c.x;
}

fn func_2() -> f32 {
    return global2[_wgslsmith_index_u32(~func_3(!(!any(vec2<bool>(false, true))), vec4<u32>(~u_input.c.x, 134790u, 4294967295u, _wgslsmith_mult_u32(69854u, u_input.c.x >> (u_input.c.x % 32u))), vec2<bool>(true, any(vec3<bool>(true, true, true)))), 26u)];
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = arg_1;
    var var_1 = true;
    global2 = array<f32, 26>();
    var_1 = _wgslsmith_f_op_f32(abs(330f)) >= _wgslsmith_f_op_f32(func_2());
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, -1300f, arg_3.a.x)), arg_2.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, -1763f, 1803f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.b))))), select(select(vec2<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(false, arg_2.b.x))), !arg_3.b, vec2<bool>(any(vec2<bool>(arg_2.b.x, true)), !arg_3.b.x)), select(arg_3.b, !select(arg_2.b, vec2<bool>(false, arg_3.b.x), true), vec2<bool>(!arg_3.b.x, true)), !vec2<bool>(true, !arg_2.b.x)), ~(~(-arg_3.c)), arg_2.d);
    return select(select(select(vec3<bool>(false, true, all(var_2.b)), vec3<bool>(false, true, arg_3.b.x), all(vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, arg_2.b.x))), select(vec3<bool>(arg_3.b.x, true, arg_3.b.x && arg_3.b.x), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, arg_2.b.x), false), vec3<bool>(arg_3.b.x, arg_3.b.x, arg_2.b.x), select(vec3<bool>(arg_2.b.x, var_2.b.x, true), vec3<bool>(true, arg_3.b.x, true), arg_2.b.x)), vec3<bool>(!arg_2.b.x, !arg_3.b.x, false)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 41816u), ~arg_3.d.x, min(4294967295u, var_2.d.x)) <= 4294967295u), vec3<bool>(true, !any(!vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_f32(floor(-1000f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), !(!any(vec3<bool>(false, false, var_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 12>();
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x >> (~u_input.c.x % 32u), _wgslsmith_div_u32(~4294967295u, u_input.c.x)), ~(vec2<u32>(1u, u_input.c.x) & countOneBits(u_input.c.yy)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u ^ u_input.c.x, u_input.c.x), firstTrailingBit(vec2<u32>(4294967295u, u_input.c.x)) ^ firstTrailingBit(u_input.c.xz))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~38605u, 26u)]), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.c.x, 26u)])), _wgslsmith_f_op_f32(round(-124f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 26u)] + global2[_wgslsmith_index_u32(u_input.c.x, 26u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1473f))), _wgslsmith_f_op_f32(f32(-1f) * -329f)))), select(_wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, vec3<u32>(u_input.c.x, 4294967295u, 127900u)), vec3<u32>(_wgslsmith_mod_u32(73444u, u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), _wgslsmith_mult_u32(4294967295u, u_input.c.x)), !func_1(47309i, Struct_2(vec2<u32>(4294967295u, u_input.c.x), vec3<f32>(1482f, global2[_wgslsmith_index_u32(4294967295u, 26u)], -1969f), u_input.c, u_input.c, vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], -251f)), Struct_3(vec3<f32>(1352f, 605f, -313f), vec2<bool>(true, false), vec4<i32>(-38593i, global0[_wgslsmith_index_u32(43673u, 22u)], -1i, u_input.a), vec4<u32>(80650u, 8496u, u_input.c.x, 20612u)), Struct_3(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]), vec2<bool>(true, true), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 22u)], global0[_wgslsmith_index_u32(22688u, 22u)], 32170i), vec4<u32>(u_input.c.x, 28432u, u_input.c.x, 1u)))) >> (select((vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) << (vec3<u32>(u_input.c.x, u_input.c.x, 69932u) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(1u, u_input.c.x, u_input.c.x)), ~u_input.c, any(vec2<bool>(false, true))) % vec3<u32>(32u)), ~vec3<u32>(20824u, _wgslsmith_mod_u32(u_input.c.x, ~u_input.c.x), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(277f, -1498f), vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)])) - vec2<f32>(1426f, global2[_wgslsmith_index_u32(95143u, 26u)])))));
    var var_1 = Struct_2(min(vec2<u32>(~_wgslsmith_mult_u32(u_input.c.x, var_0.a.x), var_0.d.x), vec2<u32>(1u, ~1u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.c.x, 26u)]))), vec3<f32>(var_0.e.x, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(var_0.c.x, 26u)]))), var_0.b), reverseBits(~var_0.c), ~(~abs(~var_0.c)), vec2<f32>(-832f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-350f, var_1.b.x))) * var_1.b.x));
}

