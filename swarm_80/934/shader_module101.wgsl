struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: Struct_3;

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: f32;

var<private> global3: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    let var_0 = -455f;
    let var_1 = Struct_2(select(select(arg_0, global3[_wgslsmith_index_u32(global0.c ^ global0.c, 7u)], select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 29721u), vec3<u32>(31948u, u_input.a, 106372u)), 7u)], !global0.b, var_0 >= -358f)), !global3[_wgslsmith_index_u32(u_input.a, 7u)], !global0.b.x), u_input.c.x);
    let var_2 = ~(-(vec4<i32>(select(-67508i, u_input.c.x, var_1.a.x), abs(11620i), -1i << (1u % 32u), -var_1.b) << (~(~vec4<u32>(u_input.a, global0.c, u_input.a, 0u)) % vec4<u32>(32u))));
    var var_3 = vec3<i32>(1i, _wgslsmith_div_i32(-13236i, -25964i), 10808i);
    return _wgslsmith_clamp_vec3_i32(-_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, 4320i, 2147483647i), global0.a), _wgslsmith_mod_vec3_i32(var_2.zwy, vec3<i32>(global0.a.x, var_1.b, var_3.x)) | global0.a), (_wgslsmith_sub_vec3_i32(var_2.wyz >> (vec3<u32>(0u, u_input.a, global0.c) % vec3<u32>(32u)), var_2.wyx) & countOneBits(vec3<i32>(25852i, -1i, 1i))) << (vec3<u32>(firstLeadingBit(21314u), 34353u, 1u) % vec3<u32>(32u)), vec3<i32>(~abs(-var_1.b), var_1.b, 2147483647i));
}

fn func_2() -> vec2<f32> {
    global0 = Struct_3(min(_wgslsmith_add_vec3_i32((vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i) ^ global0.a) & abs(vec3<i32>(-34198i, 2147483647i, -9210i)), func_3(select(global3[_wgslsmith_index_u32(global0.c, 7u)], vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), global1[_wgslsmith_index_u32(138055u, 1u)]))), global0.a), !vec4<bool>(any(select(vec3<bool>(global0.b.x, true, false), vec3<bool>(global0.b.x, global1[_wgslsmith_index_u32(93301u, 1u)], global0.b.x), vec3<bool>(global0.b.x, false, global0.b.x))), all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(global0.c, 1u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], true), global0.b.zx)), true, ~4294967295u != ~global0.c), ~global0.c);
    let var_0 = Struct_1(-(-vec2<i32>(18106i, -1i) << (_wgslsmith_div_vec2_u32(~vec2<u32>(global0.c, global0.c), ~vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))), -497f);
    let var_1 = Struct_2(select(vec4<bool>(true && global1[_wgslsmith_index_u32(4294967295u, 1u)], !any(vec2<bool>(true, global0.b.x)), all(vec2<bool>(global0.b.x, global1[_wgslsmith_index_u32(u_input.a, 1u)])), any(vec2<bool>(global1[_wgslsmith_index_u32(global0.c, 1u)], true))), vec4<bool>(!global0.b.x, 1u >= u_input.a, !(u_input.a == u_input.a), global0.b.x), false && global1[_wgslsmith_index_u32(global0.c, 1u)]), 0i);
    var var_2 = vec2<bool>(!var_1.a.x, (u_input.a > _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 88711u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a))) | true);
    let var_3 = false;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1029f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) * vec2<f32>(142f, 508f))))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, -168f)))), var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1141f, var_0.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b))))), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], all(!vec4<bool>(true, var_1.a.x, false, false))), vec2<bool>(true, all(global0.b)), global0.b.yz)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1455f, -1311f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1554f, -129f), vec2<f32>(-1295f, -1020f))), vec2<f32>(-310f, -150f)))), true)));
    let var_1 = u_input.c >> (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0.c) << (vec2<u32>(4294967295u, 8414u) % vec2<u32>(32u)), ~vec2<u32>(global0.c, 21719u))) % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(round(1128f)))), var_0.x))));
    global0 = Struct_3(vec3<i32>(i32(-1i) * -13460i, _wgslsmith_clamp_i32(global0.a.x, global0.a.x, global0.a.x), ~(~(-1i))), select(select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 1u)], global0.b.x), global0.b, select(vec4<bool>(false, false, false, false), global0.b, vec4<bool>(true, global0.b.x, false, global1[_wgslsmith_index_u32(u_input.a, 1u)]))), select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 1u)], false), select(global0.b, vec4<bool>(global0.b.x, true, global1[_wgslsmith_index_u32(4294967295u, 1u)], global0.b.x), global3[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(23835u, 1u)], true, global0.b.x)), all(vec2<bool>(false, false))), vec4<bool>(true, false, all(global3[_wgslsmith_index_u32(~54794u, 7u)]), global1[_wgslsmith_index_u32(global0.c, 1u)]), vec4<bool>(!(global0.b.x && true), max(global0.a.x, -53523i) >= u_input.b.x, !all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0.c, 1u)], false)), all(vec2<bool>(true, global0.b.x)))), (~(global0.c << (global0.c % 32u)) << (~select(0u, 1u, false) % 32u)) | global0.c);
    let var_2 = true;
    return Struct_3(_wgslsmith_clamp_vec3_i32((vec3<i32>(-1i) * -global0.a) | -_wgslsmith_clamp_vec3_i32(global0.a, vec3<i32>(14659i, 58893i, var_1.x), global0.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 4913i, var_1.x), global0.a, vec3<i32>(2147483647i, u_input.c.x, -1i)) | ~abs(global0.a), (vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, -2147483647i, global0.a.x)) >> (_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.a, global0.c)), _wgslsmith_add_vec3_u32(vec3<u32>(global0.c, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u))) % vec3<u32>(32u))), vec4<bool>(true, global0.c >= 54583u, var_0.x != 392f, (~44588u >> ((global0.c ^ u_input.a) % 32u)) < global0.c), select(u_input.a, global0.c, false));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_2.zwz;
    let var_1 = arg_2.x;
    global0 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -2147483647i), _wgslsmith_div_i32(-2147483647i, -13110i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 9709i, 1i), global0.a)), global0.b, 2889u);
    global1 = array<bool, 1>();
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.xzx);
    return _wgslsmith_div_u32(4294967295u, abs(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.x;
    var var_1 = select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.c, func_4(vec4<bool>(global1[_wgslsmith_index_u32(abs(19971u), 1u)], false || global1[_wgslsmith_index_u32(global0.c, 1u)], all(global3[_wgslsmith_index_u32(global0.c, 7u)]), false), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, 1192f, 1143f, 1459f) * vec4<f32>(2302f, -594f, -1165f, -122f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1053f, 644f, -270f, 823f))), func_1())), 7u)], global0.b, false);
    let var_2 = vec4<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, 1431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -1361f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1160f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1188f, 1515f) - _wgslsmith_div_f32(177f, _wgslsmith_div_f32(1000f, -1022f))))));
    var var_3 = -select(34i | ((-13442i >> (u_input.a % 32u)) >> (~1u % 32u)), 12057i, true);
    let var_4 = firstLeadingBit(u_input.a);
    var var_5 = !vec3<bool>(!var_1.x, false, func_1().b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global0.a, ~vec3<i32>(34858i, 0i, global0.a.x)), global0.a) << (~u_input.a % 32u));
}

