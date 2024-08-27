struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-708f), Struct_1(130f), Struct_1(-1329f), Struct_1(986f), Struct_1(339f), Struct_1(-657f), Struct_1(564f), Struct_1(825f), Struct_1(627f), Struct_1(473f));

var<private> global2: array<bool, 23>;

var<private> global3: Struct_1 = Struct_1(131f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_1 {
    global2 = array<bool, 23>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(global3.a)));
    global2 = array<bool, 23>();
    var var_1 = _wgslsmith_clamp_i32(-12322i, 1i, u_input.c);
    var var_2 = Struct_2(~11731u, _wgslsmith_div_i32(-2147483647i, arg_0.b), vec3<i32>(_wgslsmith_div_i32(~u_input.c, arg_0.b), _wgslsmith_add_i32(1i, i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.c, arg_0.c.x, u_input.c), vec4<i32>(arg_0.b, arg_0.b, -1i, u_input.c)) & arg_0.c.x), true);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = (vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, 2147483647i, -2147483647i), -vec3<i32>(u_input.c, u_input.c, 1i)), 0i)) << (select(~min(vec3<u32>(4294967295u, 77515u, u_input.b.x), u_input.b.ywx), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, u_input.a), abs(u_input.a)), 1u, _wgslsmith_mod_u32(35182u, u_input.b.x ^ 1u)), select(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(44168u, 23u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 23u)], false, false), false), vec3<bool>(any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 23u)])), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(14712u, 23u)])), false), all(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], false)))) % vec3<u32>(32u));
    var var_1 = abs(_wgslsmith_dot_vec4_u32(u_input.b, ~(~(~u_input.b))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -458f))))))));
    let var_3 = vec3<u32>(46431u, ~18107u, 57949u) | u_input.b.xyx;
    global2 = array<bool, 23>();
    return 1i;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_mod_u32(0u, arg_0.a));
    var var_1 = 1189f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.a))) + _wgslsmith_f_op_f32(step(1880f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global3.a, -1000f)))))))));
    let var_3 = func_2(Struct_2(u_input.a, -1i, _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, -15140i), vec3<i32>(-36643i, -2147483647i, 3429i)), vec3<i32>(~(-474i), arg_0.c.x | u_input.c, -2147483647i)), true || (u_input.b.x <= arg_0.a)), abs(max(0u, var_0)), -537f);
    let var_4 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_1.zyx, min(vec3<i32>(arg_1.x, arg_1.x, 4257i), vec3<i32>(arg_0.c.x, -2147483647i, u_input.c))) | arg_1.x, arg_0.c.x) >> (4294967295u % 32u);
    return func_2(arg_0, ~u_input.a, -486f);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_sub_u32(~u_input.a, 5842u), -14741i, -vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, arg_0, 2147483647i), vec3<i32>(0i, arg_0, u_input.c) & vec3<i32>(-1i, arg_0, arg_0)), u_input.c), global2[_wgslsmith_index_u32(u_input.a, 23u)] || (any(!global0[_wgslsmith_index_u32(u_input.b.x, 17u)]) & (u_input.a != abs(u_input.b.x))));
    global2 = array<bool, 23>();
    var var_1 = func_2(Struct_2(~1u, i32(-1i) * -_wgslsmith_div_i32(0i, -2147483647i), var_0.c, all(select(select(vec2<bool>(var_0.d, global2[_wgslsmith_index_u32(26757u, 23u)]), vec2<bool>(global2[_wgslsmith_index_u32(3146u, 23u)], false), true), !vec2<bool>(var_0.d, var_0.d), true))), _wgslsmith_add_u32(var_0.a, var_0.a), global3.a);
    global3 = func_4(Struct_2(var_0.a, 3486i, vec3<i32>(reverseBits(abs(2147483647i)), 1i, -reverseBits(-7086i)), global2[_wgslsmith_index_u32(1u, 23u)]), ~(vec4<i32>(-35931i << (var_0.a % 32u), 96570i, func_3(2088f), -u_input.c) << (select(u_input.b, u_input.b ^ u_input.b, !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(var_0.a, 23u)], var_0.d, false)) % vec4<u32>(32u))));
    global1 = array<Struct_1, 10>();
    return Struct_2(0u, i32(-1i) * -var_0.c.x, firstTrailingBit(var_0.c), false);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = func_1(_wgslsmith_clamp_i32(-30185i, arg_0.c.x ^ arg_1.b, ~(-5362i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a));
    let var_2 = u_input.b;
    var var_3 = global1[_wgslsmith_index_u32(arg_1.a, 10u)];
    global1 = array<Struct_1, 10>();
    return var_0.c.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 23>();
    let var_0 = u_input.b.x;
    let var_1 = 25354u;
    let var_2 = !all(vec2<bool>(true, true));
    let var_3 = vec2<bool>(true, false);
    var var_4 = _wgslsmith_mod_i32(u_input.c << (~(~0u) % 32u), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i & u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c)), 13538i)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1 | u_input.b.x, ~u_input.b.x, 1u), select(reverseBits(vec3<u32>(u_input.a, u_input.b.x, var_1)), ~_wgslsmith_mod_vec3_u32(u_input.b.xwx, u_input.b.wyy), !vec3<bool>(false, var_3.x, global2[_wgslsmith_index_u32(35699u, 23u)]))) % 32u);
    global3 = global1[_wgslsmith_index_u32(u_input.b.x, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u, func_5(func_1(-1i), Struct_2(1u, _wgslsmith_mod_i32(~2147483647i, u_input.c), firstTrailingBit(vec3<i32>(-15097i, 20686i, u_input.c)), var_2)), _wgslsmith_mod_u32(func_1(countOneBits(firstLeadingBit(49919i))).a, 2956u), global3.a, ~1u);
}

