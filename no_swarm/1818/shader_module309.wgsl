struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: array<f32, 16>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(17164u, 0u, 30575u, 14665u), vec2<bool>(true, true));

var<private> global3: array<bool, 26>;

var<private> global4: array<vec4<i32>, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(48973u, 20560u), 7560u), 23u)];
    var_0 = global1[_wgslsmith_index_u32(4936u, 23u)];
    var var_1 = ~vec3<u32>(u_input.b, ~_wgslsmith_add_u32(u_input.b | u_input.b, 4294967295u & u_input.b), ~_wgslsmith_dot_vec3_u32(~global2.a.wyx, ~vec3<u32>(4294967295u, u_input.b, u_input.b)));
    let var_2 = Struct_1(1i, vec4<u32>(global2.a.x, min(~(11946u << (var_1.x % 32u)), var_1.x >> ((global2.a.x << (u_input.b % 32u)) % 32u)), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_1.x, var_0.b.x, u_input.b, 75394u)), _wgslsmith_add_vec4_u32(~global2.a, ~vec4<u32>(3642u, 77460u, var_1.x, global2.a.x))), var_1.x), -u_input.a.x, global0[_wgslsmith_index_u32(global2.a.x, 16u)], vec4<u32>(4294967295u, firstLeadingBit(global2.a.x), _wgslsmith_div_u32(11815u, _wgslsmith_dot_vec2_u32(var_1.zy, _wgslsmith_mult_vec2_u32(vec2<u32>(6686u, 1u), global2.a.yz))), ~(~global2.a.x)));
    global3 = array<bool, 26>();
    return var_2.e.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(global2.a.x, _wgslsmith_div_u32(func_3(false), ~arg_1.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global2.a.x, u_input.b, global2.a.x), ~arg_1.a), min(arg_1.a, vec4<u32>(u_input.b, 105960u, 61862u, global2.a.x)))), 16u)];
    let var_1 = select(arg_2.a.wyz, arg_2.a.wxw, vec3<bool>(!any(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 26u)])), global2.b.x, any(vec2<bool>(false & arg_1.b.x, false | global2.b.x))));
    global0 = array<f32, 16>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.xy);
    let var_3 = Struct_1(u_input.a.x << (_wgslsmith_mod_u32(45965u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global2.a.x, 16833u, 1u), vec4<u32>(1u, u_input.b, 1u, 4294967295u) & vec4<u32>(132999u, arg_1.a.x, global2.a.x, global2.a.x))) % 32u), vec4<u32>(min(4294967295u, ~1u) | reverseBits(firstLeadingBit(global2.a.x)), 31905u, ~(~firstTrailingBit(global2.a.x)), ~23104u), u_input.a.x, _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.x) * 543f)), global2.a);
    return false;
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_3(Struct_2(vec4<bool>(true, 269f < global0[_wgslsmith_index_u32(4294967295u, 16u)], (u_input.a.x & u_input.a.x) != max(u_input.a.x, -26789i), any(vec4<bool>(false, global2.b.x, global2.b.x, false)) | !global3[_wgslsmith_index_u32(u_input.b, 26u)])), true, vec3<bool>(false, global2.b.x, select(!func_2(vec4<f32>(282f, global0[_wgslsmith_index_u32(19722u, 16u)], -2586f, 670f), Struct_4(vec4<u32>(u_input.b, u_input.b, 0u, global2.a.x), vec2<bool>(global3[_wgslsmith_index_u32(global2.a.x, 26u)], global3[_wgslsmith_index_u32(u_input.b, 26u)])), Struct_2(vec4<bool>(false, global2.b.x, true, true)), global0[_wgslsmith_index_u32(u_input.b, 16u)]), global2.b.x, global2.a.x != 0u)));
    let var_1 = 0u << (min(u_input.b, _wgslsmith_add_u32(52770u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 61883u) ^ vec2<u32>(global2.a.x, 0u), global2.a.yw))) % 32u);
    var var_2 = !any(select(vec2<bool>(all(var_0.a.a), global2.b.x), global2.b, !select(false, global3[_wgslsmith_index_u32(45862u, 26u)], global2.b.x)));
    global1 = array<Struct_1, 23>();
    return Struct_4(~vec4<u32>(1u, abs(~global2.a.x), u_input.b, 4294967295u), !select(vec2<bool>(!var_0.a.a.x, all(var_0.c)), select(global2.b, !var_0.a.a.zx, !vec2<bool>(var_0.c.x, false)), true));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_2(vec4<bool>(global2.b.x, true, !(u_input.a.x < -1i), arg_0.b.x));
    var var_1 = false;
    var var_2 = -select(firstLeadingBit(u_input.a.x), ~(_wgslsmith_clamp_i32(4103i, 1i, 2147483647i) << (countOneBits(u_input.b) % 32u)), all(!select(arg_2, vec3<bool>(global3[_wgslsmith_index_u32(arg_1.a.x, 26u)], arg_2.x, true), arg_2)));
    global1 = array<Struct_1, 23>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2624f, global0[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], 1434f), vec2<f32>(global0[_wgslsmith_index_u32(0u, 16u)], -1000f)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1203f * global0[_wgslsmith_index_u32(arg_1.a.x, 16u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1400f)))), _wgslsmith_f_op_f32(min(781f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(315f)))))));
    return Struct_4(global2.a, select(vec2<bool>(global2.b.x, true), select(!select(vec2<bool>(arg_0.b.x, var_0.a.x), vec2<bool>(var_0.a.x, true), var_0.a.x), !vec2<bool>(global2.b.x, global3[_wgslsmith_index_u32(u_input.b, 26u)]), (global2.b.x & false) & global2.b.x), !select(vec2<bool>(false, arg_0.b.x), vec2<bool>(true, global2.b.x), arg_0.b.x)));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = 1u ^ u_input.b;
    let var_1 = countOneBits(vec2<i32>(abs(firstLeadingBit(-58609i)), _wgslsmith_mult_i32(1i, reverseBits(min(u_input.a.x, u_input.a.x)))));
    let var_2 = Struct_3(Struct_2(vec4<bool>(all(!vec3<bool>(false, arg_2.b.x, arg_2.b.x)), true, false, true)), false, arg_0.xxw);
    var var_3 = vec2<u32>(~(~select(101385u, u_input.b, arg_0.x) << (global2.a.x % 32u)), 1u);
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(59740u << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(9393u), arg_2.a.x, 0u, 43139u), _wgslsmith_mod_vec4_u32(vec4<u32>(~global2.a.x, arg_2.a.x, _wgslsmith_sub_u32(u_input.b, 50310u), 1u), vec4<u32>(~arg_2.a.x, var_0, 0u, _wgslsmith_sub_u32(global2.a.x, global2.a.x))))), 26u)];
    return func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 16u)]) + 192f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1300f, global0[_wgslsmith_index_u32(global2.a.x, 16u)])) * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 16u)], 153f, false))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 24082u), 16u)], -1000f) - global0[_wgslsmith_index_u32(~(global2.a.x << (18216u % 32u)), 16u)]), global2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<bool>(!(!global2.b.x), true, false, true), reverseBits(vec4<u32>(~15102u, 65760u, ~(~global2.a.x), u_input.b)), func_4(func_1(global0[_wgslsmith_index_u32(33848u, 16u)]), Struct_4(~vec4<u32>(0u, global2.a.x, 9523u, 0u), !global2.b), vec3<bool>(func_1(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(3994u, 16u)], 194f))).b.x, false, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(37214u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]) > _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global2.a.x, 16u)])))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1277f, global0[_wgslsmith_index_u32(1u, 16u)]), vec2<f32>(global0[_wgslsmith_index_u32(31086u, 16u)], -1421f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1612f, -1407f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-370f, global0[_wgslsmith_index_u32(global2.a.x, 16u)]))))))));
    let var_2 = Struct_3(Struct_2(select(!select(vec4<bool>(true, var_0.b.x, false, global2.b.x), vec4<bool>(global2.b.x, false, false, true), vec4<bool>(true, true, global2.b.x, true)), !(!vec4<bool>(true, global2.b.x, var_0.b.x, false)), false)), true, !(!(!vec3<bool>(false, false, global2.b.x))));
    var var_3 = select(vec4<bool>(all(var_2.a.a), any(global2.b), false, global2.b.x), vec4<bool>(true, true, true, true), !(!var_0.b.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - _wgslsmith_f_op_f32(step(-642f, var_1.x))), _wgslsmith_f_op_f32(-1879f * global0[_wgslsmith_index_u32(~4898u, 16u)]))) - vec2<f32>(var_1.x, _wgslsmith_f_op_f32(floor(1044f))));
    var var_5 = var_3.yyy;
    let var_6 = global2.a.yzz;
    var var_7 = -u_input.a;
    let var_8 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(-873f);
}

