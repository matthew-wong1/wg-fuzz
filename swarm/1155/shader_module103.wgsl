struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-476f, -107f), vec2<f32>(-1000f, 1309f), vec2<f32>(152f, 1062f), vec2<f32>(360f, -2536f), vec2<f32>(174f, -857f), vec2<f32>(339f, -1000f), vec2<f32>(1356f, 344f), vec2<f32>(824f, 305f), vec2<f32>(-511f, -1063f), vec2<f32>(922f, 966f), vec2<f32>(442f, 221f), vec2<f32>(1306f, 628f), vec2<f32>(1973f, -306f), vec2<f32>(1196f, -1209f), vec2<f32>(1000f, 530f), vec2<f32>(1266f, -174f), vec2<f32>(-603f, 474f), vec2<f32>(396f, -457f), vec2<f32>(741f, -1000f));

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<f32>(249f, 361f), vec2<f32>(-111f, -2321f))), Struct_2(Struct_1(vec2<f32>(-1000f, -276f), vec2<f32>(-574f, -162f))), Struct_2(Struct_1(vec2<f32>(-395f, -531f), vec2<f32>(-401f, 346f))), Struct_2(Struct_1(vec2<f32>(-1590f, -418f), vec2<f32>(-126f, 381f))), Struct_2(Struct_1(vec2<f32>(-1004f, 415f), vec2<f32>(563f, -299f))), Struct_2(Struct_1(vec2<f32>(-670f, -887f), vec2<f32>(-1464f, 344f))), Struct_2(Struct_1(vec2<f32>(650f, 635f), vec2<f32>(1000f, -1498f))), Struct_2(Struct_1(vec2<f32>(335f, -578f), vec2<f32>(770f, -579f))));

var<private> global2: bool = false;

var<private> global3: array<i32, 18> = array<i32, 18>(-1i, 7972i, -40570i, i32(-2147483648), 1i, 4178i, 0i, 1i, 2147483647i, 2147483647i, -7793i, 24617i, 0i, -25014i, 50957i, 19748i, 2147483647i, 71312i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: i32) -> vec4<i32> {
    return ~vec4<i32>(abs(7892i), 2147483647i, u_input.a, arg_2);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_sub_u32(1u, ~(~(74209u << (arg_1 % 32u))));
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    return 1i;
}

fn func_1() -> vec2<f32> {
    let var_0 = ~func_3(_wgslsmith_mult_vec4_i32(func_2(true, vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], 1i, -46163i), global3[_wgslsmith_index_u32(u_input.c.x, 18u)]), ~abs(vec4<i32>(u_input.a, 1i, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], -20234i))), abs(4294967295u), firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.c.x), vec4<u32>(87529u, 44573u, 4294967295u, u_input.d), true), vec4<u32>(u_input.b, 15840u, u_input.c.x, 0u))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1156f, 160f)), _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)]))));
    global3 = array<i32, 18>();
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    var var_1 = !(!any(vec3<bool>(true, false, true)) | any(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(abs(1u), 19u)]))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 19u)]))))), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(max(u_input.c.x, max(33935u, abs(u_input.d))), 19u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-312f, _wgslsmith_f_op_f32(719f + 1296f)) - _wgslsmith_f_op_vec2_f32(func_1())) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(15225u, 19u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.d, u_input.d)), 19u)]))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-199f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1216f)) * 227f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2060f, 1000f))))));
    global0 = array<vec2<f32>, 19>();
    let var_1 = all(select(select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), true), vec3<bool>(false, select(false, false, true), true), true), vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(max(1306f, 1337f)) >= _wgslsmith_f_op_f32(-var_0.a.x), true, any(vec2<bool>(true, true)))));
    var var_2 = select(select(!vec2<bool>(var_1, !var_1), !vec2<bool>(any(vec3<bool>(false, var_1, true)), true), 0i >= ((2497i ^ u_input.a) & -2147483647i)), vec2<bool>(true, any(vec2<bool>(true, true))), select(select(vec2<bool>(true, !var_1), !(!vec2<bool>(var_1, var_1)), vec2<bool>(true, true)), select(select(vec2<bool>(var_1, true), !vec2<bool>(var_1, true), var_1), !vec2<bool>(true, var_1), _wgslsmith_sub_u32(u_input.d, 46679u) != _wgslsmith_add_u32(u_input.b, u_input.c.x)), select(select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), var_1), vec2<bool>(true, true), !vec2<bool>(false, var_1)), vec2<bool>(true, select(var_1, var_1, var_1)), any(vec4<bool>(true, var_1, var_1, var_1)))));
    var var_3 = any(vec4<bool>(~(~u_input.d) > _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16402u), u_input.c), any(!(!vec4<bool>(false, false, var_1, false))), var_2.x, func_2(true, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(u_input.d, 18u)]), vec3<i32>(-11047i, -18298i, -2147483647i)), global3[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 18u)]).x >= global3[_wgslsmith_index_u32(~1u, 18u)]));
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 35965u, _wgslsmith_mult_u32(39777u, u_input.c.x), 4294967295u ^ abs(_wgslsmith_clamp_u32(u_input.b, u_input.c.x, u_input.d))), reverseBits(~vec4<u32>(u_input.d, 4294967295u, u_input.b, 32914u)) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 1u, 1u, u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 0u, u_input.b), vec4<u32>(4294967295u, 60841u, u_input.d, 96047u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.b), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 43617u))) % vec4<u32>(32u)));
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x + -1230f))))), var_0.b.x, 2081f, _wgslsmith_f_op_f32(-var_0.b.x)));
    var var_6 = ~var_4.xw;
    var var_7 = Struct_2(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i >> (u_input.d % 32u));
}

