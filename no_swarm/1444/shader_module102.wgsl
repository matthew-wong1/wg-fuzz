struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~abs(u_input.b), u_input.b), select(max(vec2<u32>(15557u, global0.b), vec2<u32>(23312u, global0.b)) & vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, ~u_input.b), true | all(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(13516u, 17u)])))), global0.b, global0.b);
    let var_1 = vec3<i32>(global0.a.x, 39557i, u_input.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(365f - global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f * global0.d.x) * -1210f)))));
    global1 = array<bool, 17>();
    let var_3 = global0.c.zz;
    return select(arg_0, select(vec4<bool>(any(arg_0.wyw), false, global1[_wgslsmith_index_u32(1u, 17u)], min(-2147483647i, var_1.x) <= select(var_1.x, u_input.d, global1[_wgslsmith_index_u32(4294967295u, 17u)])), !arg_0, arg_0), select(select(arg_0, vec4<bool>(global1[_wgslsmith_index_u32(89718u, 17u)] | global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.b), 17u)], !arg_0.x, false), !all(vec3<bool>(false, global1[_wgslsmith_index_u32(62630u, 17u)], arg_0.x))), vec4<bool>((var_0 > 47930u) | !arg_0.x, true, arg_0.x, true == arg_0.x), arg_0));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<f32> {
    global1 = array<bool, 17>();
    let var_0 = !global1[_wgslsmith_index_u32(0u, 17u)];
    global1 = array<bool, 17>();
    var var_1 = ~u_input.b;
    let var_2 = !select(!func_3(vec4<bool>(var_0, global1[_wgslsmith_index_u32(global0.b, 17u)], true, var_0)), vec4<bool>(false, false, any(!arg_1.a), true), select(!(!vec4<bool>(true, false, false, arg_1.a.x)), func_3(!vec4<bool>(false, var_0, false, var_0)), !vec4<bool>(true, var_0, var_0, false)));
    return global0.c.wwy;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.b) ^ vec2<u32>(32424u, global0.b), min(arg_0, arg_0)), 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 1u, 21399u), ~max(vec3<u32>(39744u, arg_0.x, u_input.b), vec3<u32>(4294967295u, u_input.b, 1u))), 17u)], !global1[_wgslsmith_index_u32(u_input.b, 17u)]), abs(global0.a.xy), Struct_2(func_3(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], true, global1[_wgslsmith_index_u32(0u, 17u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)], false, false)), vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(arg_0.x, 17u)], global1[_wgslsmith_index_u32(19726u, 17u)]))).ww), global0.a.x);
    var var_1 = Struct_3(select(var_0.a, var_0.a, !select(true, var_0.c.a.x, false) & all(vec3<bool>(var_0.a.x, var_0.c.a.x, var_0.c.a.x))), vec2<i32>(_wgslsmith_sub_i32(global0.a.x, _wgslsmith_clamp_i32(countOneBits(global0.a.x), ~var_0.b.x, -var_0.d)), u_input.d), Struct_2(!vec2<bool>(global1[_wgslsmith_index_u32(global0.b, 17u)], all(vec4<bool>(global1[_wgslsmith_index_u32(global0.b, 17u)], false, false, true)))), global0.a.x);
    global1 = array<bool, 17>();
    let var_2 = 211f;
    return select(select(vec3<bool>(false || var_1.a.x, true, true), !var_1.a.wyz, var_0.c.a.x), select(select(!var_0.a.zxy, !select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], true, global1[_wgslsmith_index_u32(46872u, 17u)]), var_1.a.zww, vec3<bool>(var_1.c.a.x, true, false)), false), select(vec3<bool>(func_3(var_0.a).x, global0.b > 0u, true), vec3<bool>(false, true, var_1.c.a.x), _wgslsmith_f_op_f32(-1195f - arg_1.x) == arg_1.x), !(_wgslsmith_f_op_f32(f32(-1f) * -982f) != _wgslsmith_f_op_f32(max(var_2, global0.c.x)))), all(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), global1[_wgslsmith_index_u32(6300u, 17u)]), var_0.a.ww)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = max(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a.x, 1u, 0u), vec3<u32>(57451u, arg_2.a.x, global0.b)), arg_2.a.xxw >> (vec3<u32>(0u, u_input.b, global0.b) % vec3<u32>(32u))), vec3<u32>(global0.b, ~37832u, reverseBits(109964u))), _wgslsmith_div_vec3_u32(select(min(vec3<u32>(18421u, 4294967295u, 0u), _wgslsmith_add_vec3_u32(arg_2.a.wyy, arg_2.a.zxx)), vec3<u32>(1u, 59275u, 12055u) << (vec3<u32>(100405u, u_input.b, 119584u) % vec3<u32>(32u)), func_4(_wgslsmith_div_vec2_u32(arg_2.a.xz, vec2<u32>(1u, 30399u)), _wgslsmith_f_op_vec3_f32(func_2(global0.c.wy, Struct_2(vec2<bool>(false, false)))))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(29028u, 1u, arg_2.a.x), ~vec3<u32>(global0.b, 1u, u_input.b))));
    var var_1 = arg_2;
    let var_2 = Struct_2(!select(vec2<bool>(global0.c.x < 138f, !global1[_wgslsmith_index_u32(46594u, 17u)]), vec2<bool>(false, !arg_0.a.x), func_3(vec4<bool>(true, arg_0.c.a.x, arg_0.a.x, false)).wx));
    var_1 = arg_2;
    let var_3 = arg_2.a.zy;
    return Struct_4(_wgslsmith_div_vec4_i32(select(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, -2147483647i), arg_1), global0.a, func_3(arg_0.a)), vec4<i32>(-2147483647i, _wgslsmith_add_i32(-2147483647i, u_input.d), global0.a.x, -62951i), vec4<bool>(true, true, global0.c.x != 895f, !var_2.a.x)), vec4<i32>(arg_1.x, 1i >> (var_3.x % 32u), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, global0.a.x), arg_1.yx))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(21434u, 7026u), vec2<u32>(4294967295u, 22997u)), countOneBits(vec2<u32>(17915u, 0u))), 1u), var_3.x & 1u), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1976f - 1045f))), global0.d.x, _wgslsmith_f_op_f32(step(623f, global0.c.x)) <= _wgslsmith_f_op_f32(global0.d.x + global0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(floor(1855f)))), -1982f, _wgslsmith_f_op_f32(floor(-1041f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1287f), global0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 17>();
    global0 = func_1(Struct_3(vec4<bool>(false, false, false, true), vec2<i32>(-1i, _wgslsmith_clamp_i32(~0i, -u_input.c, 0i)), Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(~4294967295u, 17u)], true)), -1i), global0.a, Struct_1(reverseBits(reverseBits(vec4<u32>(global0.b, global0.b, global0.b, global0.b))) | reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, global0.b, global0.b, global0.b), vec4<u32>(global0.b, 60717u, global0.b, 0u)))));
    global0 = func_1(Struct_3(!vec4<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), 17u)], !global1[_wgslsmith_index_u32(66259u, 17u)], true), vec2<i32>(i32(-1i) * -3648i, min(52834i, _wgslsmith_sub_i32(-31067i, u_input.a))), Struct_2(func_4(select(vec2<u32>(global0.b, 27625u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(522f, 1458f, global0.d.x), vec3<f32>(349f, 514f, global0.d.x), vec3<bool>(false, false, global1[_wgslsmith_index_u32(1946u, 17u)])))).yx), 17985i), vec4<i32>(global0.a.x, 1i, -global0.a.x, u_input.d), Struct_1(select(vec4<u32>(u_input.b, global0.b, u_input.b, global0.b), ~vec4<u32>(0u, 29085u, global0.b, 1u), vec4<bool>(true, global1[_wgslsmith_index_u32(global0.b, 17u)], global1[_wgslsmith_index_u32(27691u, 17u)], true)) >> (~(~vec4<u32>(u_input.b, 32152u, 56924u, u_input.b)) % vec4<u32>(32u))));
    var var_0 = ~(~func_1(Struct_3(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(17372u, 17u)]), global0.a.yz << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_div_i32(1i, -2147483647i)), vec4<i32>(-6181i, u_input.a, -17796i, ~1i), Struct_1(vec4<u32>(0u, 1u, 20754u, u_input.b))).b);
    var var_1 = Struct_2(select(func_3(vec4<bool>(true, !global1[_wgslsmith_index_u32(global0.b, 17u)], true, global0.d.x > global0.d.x)).ww, !select(!vec2<bool>(global1[_wgslsmith_index_u32(global0.b, 17u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(global0.b, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(false, true)), vec2<bool>((4294967295u & u_input.b) != _wgslsmith_add_u32(global0.b, u_input.b), true)));
    let var_2 = select(!(!vec4<bool>(true, !var_1.a.x, var_1.a.x, false)), vec4<bool>(any(!select(var_1.a, vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], var_1.a.x), var_1.a.x)), var_1.a.x, true, select(true, _wgslsmith_f_op_f32(step(global0.c.x, global0.c.x)) == 1f, true)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -682f) > global0.d.x, all(select(var_1.a, vec2<bool>(global1[_wgslsmith_index_u32(0u, 17u)], true), vec2<bool>(false, true))), true, !(!var_1.a.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.d.x))))) * global0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3), global0.b, global0.a.xxw, -firstTrailingBit(reverseBits(min(vec2<i32>(-21507i, u_input.d), vec2<i32>(global0.a.x, u_input.a)))));
}

