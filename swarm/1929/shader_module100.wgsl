struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 37566u;

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: array<vec4<f32>, 4>;

var<private> global3: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1122f, 2439f), -1671f), 1024f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<i32>) -> i32 {
    let var_0 = all(vec2<bool>(69495u >= ~u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_1.x, _wgslsmith_sub_u32(arg_1.x, 27515u)), vec3<u32>(_wgslsmith_add_u32(0u, u_input.b.x), arg_1.x, arg_1.x)), 1u)]));
    global1 = array<bool, 1>();
    global4 = Struct_2(Struct_1(arg_0.a, arg_0.b), _wgslsmith_f_op_f32(-arg_0.a.x));
    var var_1 = Struct_2(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-120f))));
    let var_2 = select(vec3<i32>(max(~arg_2.x, -1i), _wgslsmith_dot_vec2_i32(u_input.a.yz, select(arg_2.zy, arg_2.zz, global1[_wgslsmith_index_u32(77896u, 1u)])), -(arg_2.x >> (1u % 32u))) << (_wgslsmith_div_vec3_u32(arg_1.xxx, ~vec3<u32>(1u, arg_1.x, 55857u)) % vec3<u32>(32u)), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(~u_input.a, vec3<i32>(-57997i, 0i, 1529i)), vec3<bool>(true, true, (arg_2.x == 2147483647i) & true));
    return ~(~1i);
}

fn func_2() -> vec2<f32> {
    var var_0 = ~u_input.c;
    var var_1 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(_wgslsmith_sub_i32(24232i, 0i), 0i, func_3(Struct_1(vec2<f32>(-1255f, global4.b), global4.a.a.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 81753u), u_input.a), select(u_input.a.x, u_input.a.x, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 27845i, u_input.a.x), vec4<i32>(u_input.a.x, -26745i, -2147483647i, -42274i)) | vec4<i32>(u_input.a.x, -23480i, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(~u_input.b.x, 1u)]) ^ vec4<i32>(u_input.a.x, -27582i, abs(u_input.a.x), -57042i), _wgslsmith_sub_vec4_i32(~countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) & _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, u_input.a.x, u_input.a.x, -32913i), -vec4<i32>(2982i, u_input.a.x, 1i, -2147483647i)), ~vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(28371i, u_input.a.x)), _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(-22205i, 35084i)), ~u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.a.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global1[_wgslsmith_index_u32(~select(~u_input.c, countOneBits(1u), -988f >= global4.b) & _wgslsmith_clamp_u32(u_input.c, max(1u, ~56577u), _wgslsmith_sub_u32(32766u, u_input.b.x)), 1u)]));
    global4 = Struct_2(Struct_1(vec2<f32>(648f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.b, 2032f))), _wgslsmith_f_op_f32(-626f - -1378f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1752f), global4.a.b))));
    var var_3 = Struct_2(global4.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global4.b)))));
    return global4.a.a;
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    global0 = ~min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, ~32642u), _wgslsmith_mod_u32(4294967295u, countOneBits(4294967295u))), abs(_wgslsmith_sub_u32(4294967295u, u_input.c) & abs(4294967295u)));
    var var_1 = ~(~48597u);
    var var_2 = global4.a;
    var var_3 = firstTrailingBit(~_wgslsmith_div_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)), vec3<u32>(0u, 0u, u_input.c) >> (u_input.b % vec3<u32>(32u))), ~countOneBits(vec3<u32>(1u, 1u, u_input.b.x))));
    return !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, var_3.x), abs(var_3.xx)), var_3.zz) >> ((~u_input.c & 21337u) % 32u), 1u)];
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    global1 = array<bool, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(global4.a.a)))));
    var var_1 = Struct_1(global4.a.a, _wgslsmith_div_f32(var_0.x, var_0.x));
    let var_2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(210f + -991f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1593f + global4.b)))));
    let var_3 = (~(~_wgslsmith_mod_u32(28428u, 28297u)) >> (0u % 32u)) & (_wgslsmith_div_u32(~34513u, ~0u) | _wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b));
    return Struct_2(global4.a, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.a;
    let var_1 = -vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, 33531i), 44486i), u_input.a.x, -u_input.a.x);
    global4 = func_4(select(vec4<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)])), any(!vec3<bool>(global1[_wgslsmith_index_u32(40148u, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)], true)), false, any(vec4<bool>(global1[_wgslsmith_index_u32(10400u, 1u)], global1[_wgslsmith_index_u32(17346u, 1u)], global1[_wgslsmith_index_u32(41148u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]))), !select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 1u)], false, false, false), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], false, true), global1[_wgslsmith_index_u32(u_input.b.x, 1u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(22468u, 1u)], global1[_wgslsmith_index_u32(30159u, 1u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], false, false, global1[_wgslsmith_index_u32(20280u, 1u)]), func_1(vec3<f32>(965f, global4.b, var_0.a.x))), vec4<bool>(true, all(vec3<bool>(false, true, false)), all(global3[_wgslsmith_index_u32(69398u, 11u)]), any(vec3<bool>(false, true, false))), global1[_wgslsmith_index_u32(abs(~u_input.b.x), 1u)])));
    global3 = array<vec2<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_0.b);
}

