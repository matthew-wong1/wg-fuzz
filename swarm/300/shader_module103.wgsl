struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 11> = array<bool, 11>(true, false, false, false, false, false, false, true, true, false, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: u32) -> u32 {
    global0 = !(!(!vec3<bool>(4294967295u == arg_3, !global0.x, true)));
    let var_0 = ~reverseBits(global1.zwx << ((global1.yyy >> (~global1.wyz % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1000f - arg_0)));
    var var_2 = 17278u;
    var_2 = arg_3;
    return 33637u;
}

fn func_2(arg_0: vec4<u32>) -> vec3<f32> {
    var var_0 = u_input.a;
    var var_1 = Struct_2(-(~(~vec4<i32>(-1i, u_input.a, u_input.a, 1i))), Struct_1(select(select(!vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], true, global0.x), false), vec3<bool>(global0.x, true, global0.x)), vec3<bool>(true, true, !global2[_wgslsmith_index_u32(46596u, 11u)]), any(!vec3<bool>(true, global0.x, global2[_wgslsmith_index_u32(arg_0.x, 11u)]))), 1f, !vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 11u)], global0.x)), u_input.a > 50762i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1905f, -946f, 762f) * vec3<f32>(-1442f, 735f, 205f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, -259f, 581f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, 1638f, -322f))))), 4293i), Struct_1(vec3<bool>(true, !global0.x | global2[_wgslsmith_index_u32(global1.x, 11u)], true), -933f, !select(global0.yz, select(global0.zx, vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 11u)]), global0.zy), vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -604f), -725f, _wgslsmith_f_op_f32(floor(117f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-264f, 1434f, -526f)))), 1i));
    global2 = array<bool, 11>();
    let var_2 = (firstLeadingBit(0u) >> (firstTrailingBit(func_3(var_1.b.d.x, select(var_1.b.a, vec3<bool>(false, true, false), global0.x), u_input.a, 1u)) % 32u)) | 13319u;
    var var_3 = firstLeadingBit(_wgslsmith_mod_vec2_i32(var_1.a.yy, select(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, 2147483647i, u_input.a), _wgslsmith_clamp_i32(1i, -2147483647i, u_input.a)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, var_1.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(arg_0), max(arg_0, arg_0)), 11u)])));
    return vec3<f32>(var_1.b.d.x, 555f, var_1.b.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = !(global0.x != true) && true;
    global1 = ~(~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, 24313u), vec4<u32>(83185u, global1.x, global1.x, global1.x)) & ~vec4<u32>(global1.x, global1.x, 0u, global1.x))));
    global2 = array<bool, 11>();
    var var_1 = Struct_1(vec3<bool>(535u < firstLeadingBit(~global1.x), !arg_1.b, !arg_1.b), arg_2.c.b, vec2<bool>(!(!global2[_wgslsmith_index_u32(global1.x, 11u)]) == true, any(arg_1.a.b.a) == arg_2.c.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, global1.x, 48163u), vec4<u32>(global1.x, 68904u, global1.x, global1.x))))))), arg_0.x);
    let var_2 = vec2<f32>(arg_2.c.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(~vec4<u32>(global1.x, 1u, 5465u, 40536u))).x)));
    return _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, _wgslsmith_mod_u32(global1.x, global1.x))), select(vec2<u32>(global1.x, 64886u), global1.zy, global2[_wgslsmith_index_u32(global1.x, 11u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 11>();
    global0 = vec3<bool>(global0.x, global2[_wgslsmith_index_u32(min(28310u, ~(~0u) >> (_wgslsmith_sub_u32(global1.x, func_1(vec2<i32>(1i, u_input.a), Struct_3(Struct_2(vec4<i32>(0i, -1i, u_input.a, u_input.a), Struct_1(vec3<bool>(false, true, global0.x), 333f, vec2<bool>(false, true), vec3<f32>(-1000f, -1575f, -208f), -2147483647i), Struct_1(vec3<bool>(true, false, true), -1000f, vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 11u)], false), vec3<f32>(-686f, 1338f, 1000f), u_input.a)), global2[_wgslsmith_index_u32(1u, 11u)]), Struct_2(vec4<i32>(u_input.a, 22323i, u_input.a, u_input.a), Struct_1(vec3<bool>(global0.x, false, true), 1326f, global0.zx, vec3<f32>(1037f, -274f, 449f), u_input.a), Struct_1(vec3<bool>(global0.x, true, global2[_wgslsmith_index_u32(global1.x, 11u)]), 782f, vec2<bool>(global0.x, false), vec3<f32>(-244f, 179f, 351f), 0i)))) % 32u)), 11u)], any(select(vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 11u)], global2[_wgslsmith_index_u32(global1.x, 11u)], global1.x < global1.x, false), select(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(false, global0.x, global2[_wgslsmith_index_u32(global1.x, 11u)], global0.x), global2[_wgslsmith_index_u32(22985u, 11u)] & true), select(!vec4<bool>(global2[_wgslsmith_index_u32(8364u, 11u)], true, global0.x, global0.x), select(vec4<bool>(global2[_wgslsmith_index_u32(28713u, 11u)], global2[_wgslsmith_index_u32(31633u, 11u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 11u)], true, global2[_wgslsmith_index_u32(86549u, 11u)], false), true), global0.x))));
    global2 = array<bool, 11>();
    let var_0 = select(!global0.zx, select(!vec2<bool>(!global2[_wgslsmith_index_u32(global1.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)]), !select(global0.zx, global0.yy, vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true)), vec2<bool>(global2[_wgslsmith_index_u32(~global1.x, 11u)], (4294967295u | global1.x) > ~21554u)), true);
    global0 = !vec3<bool>(global0.x, select(var_0.x, any(var_0), !var_0.x), false);
    let var_1 = ~vec4<u32>(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2843f)), 651f)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(global1.x, 11u)], global2[_wgslsmith_index_u32(65765u, 11u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(33522u, 11u)], var_0.x, true), vec3<bool>(global0.x, false, global2[_wgslsmith_index_u32(0u, 11u)]), vec3<bool>(false, false, false)), select(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(global1.x, 11u)], var_0.x), vec3<bool>(global0.x, true, true), false)), -u_input.a | reverseBits(u_input.a), (global1.x ^ global1.x) & 4294967295u), 27813u, func_3(_wgslsmith_f_op_f32(687f + -1315f), select(vec3<bool>(global0.x, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(16875u, 11u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(global1.x, 11u)], global0.x), false), _wgslsmith_mult_i32(2147483647i, u_input.a), select(global1.x, global1.x, false)) >> ((global1.x & (5570u >> (global1.x % 32u))) % 32u), _wgslsmith_mult_u32(global1.x, _wgslsmith_mod_u32(~global1.x, ~18422u)));
    global1 = ~firstLeadingBit(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

