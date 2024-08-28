struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<f32>, 18>;

var<private> global3: array<Struct_1, 17>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(min(vec4<i32>(u_input.c.x, i32(-1i) * -35437i, max(0i, 198i), global0[_wgslsmith_index_u32(8650u, 19u)] & -1i), firstTrailingBit(~vec4<i32>(u_input.a.x, 8483i, global0[_wgslsmith_index_u32(74522u, 19u)], 20531i))) & ((-vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(40494u, 19u)], -17813i) & vec4<i32>(global0[_wgslsmith_index_u32(1u, 19u)], 34634i, -1i, u_input.c.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x), vec4<i32>(37649i, 10970i, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 19u)]), reverseBits(vec4<i32>(0i, 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(3574u, 19u)])))), select(vec2<bool>(true, all(vec4<bool>(true, false, false, true))), !vec2<bool>(any(vec3<bool>(true, true, true)), true), false));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.b, 4446u, 54586u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u ^ u_input.b, _wgslsmith_div_u32(4294967295u, 3591u), u_input.b), vec3<u32>(~u_input.b, u_input.b | u_input.b, 36152u)) % vec3<u32>(32u)), ~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 39801u, 13738u), vec3<u32>(u_input.b, 0u, 1u))) ^ firstTrailingBit(firstTrailingBit(abs(vec3<u32>(u_input.b, u_input.b, u_input.b))))), 19u)];
    let var_2 = (u_input.a >> (~(~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) | -(u_input.a | var_0.a.ww);
    let var_3 = Struct_1(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, 0i, 1i, var_2.x), reverseBits(vec4<i32>(var_2.x, 1i, u_input.a.x, var_0.a.x))), ~vec4<i32>(-2147483647i, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 19u)], var_0.a.x)), !vec2<bool>(any(!vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), false == all(vec2<bool>(var_0.b.x, var_0.b.x))));
    global0 = array<i32, 19>();
    return firstTrailingBit(var_2.x);
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 19>();
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -34487i, u_input.c.x), vec3<i32>(-57250i, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 19u)])) | -global0[_wgslsmith_index_u32(u_input.b, 19u)]), -func_3(), reverseBits(u_input.a.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~8355i, firstLeadingBit(-2147483647i), 51377i), ~vec3<i32>(2147483647i, 7650i, global0[_wgslsmith_index_u32(60479u, 19u)])), vec3<i32>(global0[_wgslsmith_index_u32(~4294967295u, 19u)] | global0[_wgslsmith_index_u32(u_input.b & 4294967295u, 19u)], ~9537i, -_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(23441u, 19u)], u_input.a.x)), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 0i, 44848i) ^ vec3<i32>(u_input.c.x, u_input.c.x, 66501i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1679u, 19u)], u_input.c.x, 39815i), vec3<i32>(u_input.a.x, -21811i, u_input.a.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, 4294967295u)) % vec3<u32>(32u)))));
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(select(51387u, u_input.b, false)), 17u)];
    global0 = array<i32, 19>();
    var var_2 = select(!vec2<bool>(all(select(vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(var_1.b.x, true, true), vec3<bool>(var_1.b.x, false, var_1.b.x))), !var_1.b.x), vec2<bool>((~4294967295u >= ~u_input.b) | !(!var_1.b.x), any(select(vec4<bool>(var_1.b.x, false, false, var_1.b.x), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), var_1.b.x), select(vec4<bool>(var_1.b.x, false, var_1.b.x, false), vec4<bool>(false, true, var_1.b.x, false), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x))))), var_1.b);
    return Struct_1(var_1.a, !vec2<bool>(true, all(!vec2<bool>(var_2.x, var_2.x))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global2 = array<vec3<f32>, 18>();
    var var_0 = (~(vec2<u32>(1u, 68647u) & ~vec2<u32>(u_input.b, 31549u)) ^ firstTrailingBit(vec2<u32>(u_input.b, u_input.b))) | _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, 0u), vec2<u32>(5374u, countOneBits(firstLeadingBit(u_input.b))));
    var var_1 = _wgslsmith_sub_u32(1u, u_input.b);
    var var_2 = func_2();
    var var_3 = _wgslsmith_mod_vec3_i32(max(var_2.a.zwy, vec3<i32>(1i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a), var_2.a.x & (var_2.a.x & global0[_wgslsmith_index_u32(u_input.b, 19u)]), u_input.c.x)), var_2.a.yxz);
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(29109i, i32(-1i) * -41426i), u_input.c);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(37437u, u_input.b, u_input.b, 42076u))), vec4<u32>(~u_input.b, u_input.b, ~(~17397u), _wgslsmith_clamp_u32(1u, 28437u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, 7764u, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 30532u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 9164u, 1u)))))), 18u)];
    var var_1 = global0[_wgslsmith_index_u32(~u_input.b >> (select(u_input.b, ~(~u_input.b), true) % 32u), 19u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1508f, global1.x, global1.x) + vec3<f32>(global1.x, global1.x, 1181f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.b, 18u)]) - _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(4294967295u, 18u)] - vec3<f32>(156f, global1.x, global1.x)))), vec3<f32>(global1.x, -1248f, global1.x), true)));
    global2 = array<vec3<f32>, 18>();
    return ~(vec4<u32>(firstTrailingBit(~61779u), 0u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(38615u, u_input.b, 76766u), _wgslsmith_clamp_u32(4294967295u, 2826u, 17088u), 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 70650u, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, 69114u))) << (~vec4<u32>(~17373u, 59436u, 0u, _wgslsmith_sub_u32(u_input.b, 33332u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(func_4(func_1(vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 58982u, u_input.b), vec3<u32>(17593u, u_input.b, 80263u), true), select(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<bool>(true, false, false))) > u_input.b), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 74025u, 61327u, 1u), vec4<u32>(u_input.b, u_input.b, 102506u, 8182u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4196u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) ^ vec4<u32>(1u, 1u, 0u, 114002u))), reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(86521u, u_input.b), vec2<u32>(0u, 37254u)), _wgslsmith_add_u32(u_input.b, u_input.b), firstTrailingBit(1u), abs(u_input.b)))));
    var var_1 = Struct_1((countOneBits(-vec4<i32>(0i, u_input.a.x, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 19u)])) ^ _wgslsmith_mult_vec4_i32(func_1(vec2<bool>(true, true)).a, _wgslsmith_clamp_vec4_i32(vec4<i32>(-22957i, 0i, 0i, u_input.a.x), vec4<i32>(25841i, global0[_wgslsmith_index_u32(1u, 19u)], -56061i, global0[_wgslsmith_index_u32(20481u, 19u)]), vec4<i32>(46731i, 0i, 2147483647i, -2147483647i)))) | ~abs(vec4<i32>(-55102i, global0[_wgslsmith_index_u32(63904u, 19u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.b, 19u)])), vec2<bool>(true, select(true, false, any(vec3<bool>(true, false, false)))));
    global3 = array<Struct_1, 17>();
    let var_2 = global1.yx;
    global3 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1036f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -606f), var_2.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, -178f, 346f)))))));
}

