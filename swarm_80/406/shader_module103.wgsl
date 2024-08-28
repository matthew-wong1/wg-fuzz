struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
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

var<private> global0: u32;

var<private> global1: array<u32, 13> = array<u32, 13>(1u, 4294967295u, 6448u, 85709u, 31091u, 56155u, 87428u, 1u, 113566u, 4294967295u, 2666u, 57678u, 41874u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(1u, 59119u), ~global1[_wgslsmith_index_u32(1u << (global1[_wgslsmith_index_u32(53288u, 13u)] % 32u), 13u)], _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(arg_0, arg_0), arg_0.x), reverseBits(~vec2<u32>(7108u, 1u))));
    var_0 = select(~(~select(vec3<u32>(arg_0.x, 4509u, 1u), vec3<u32>(0u, 1u, 0u), true)) | ~(~max(vec3<u32>(1u, var_0.x, 0u), vec3<u32>(43672u, 50742u, 47518u))), _wgslsmith_div_vec3_u32(~abs(vec3<u32>(global1[_wgslsmith_index_u32(0u, 13u)], 0u, 16062u)), min(~vec3<u32>(1u, 46415u, 79177u), countOneBits(vec3<u32>(1u, 1u, global1[_wgslsmith_index_u32(4294967295u, 13u)])))) | reverseBits(vec3<u32>(~var_0.x, arg_0.x, _wgslsmith_clamp_u32(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)]))), select(true, any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true))), select(any(vec3<bool>(true, true, true)), true, !(u_input.a <= u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1079f - -464f)))))));
    var_0 = ~(~(~vec3<u32>(4294967295u, arg_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)]) << (_wgslsmith_div_vec3_u32(~vec3<u32>(1u, arg_0.x, global1[_wgslsmith_index_u32(0u, 13u)]), firstLeadingBit(vec3<u32>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(1u, 13u)]))) % vec3<u32>(32u))));
    var var_2 = (~min(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, 0i)) << ((~abs(arg_0) << (_wgslsmith_mult_vec2_u32(abs(vec2<u32>(17372u, 4294967295u)), vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 13u)]) | vec2<u32>(var_0.x, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u))) << (vec2<u32>(global1[_wgslsmith_index_u32(~60201u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]) % vec2<u32>(32u));
    return _wgslsmith_div_vec3_u32(select(vec3<u32>(48503u, _wgslsmith_mod_u32(1u, 4294967295u), global1[_wgslsmith_index_u32(1u, 13u)]), vec3<u32>(1u, max(abs(4294967295u), var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 6062u, 1u) >> (vec4<u32>(var_0.x, 1u, var_0.x, 66699u) % vec4<u32>(32u)), vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 13u)], 0u, 0u, 0u))), true && !(arg_0.x < arg_0.x)), max(~(select(vec3<u32>(132645u, var_0.x, global1[_wgslsmith_index_u32(1u, 13u)]), vec3<u32>(29381u, 1u, global1[_wgslsmith_index_u32(arg_0.x, 13u)]), true) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), vec3<u32>(121091u, arg_0.x, arg_0.x)) % vec3<u32>(32u))), ~vec3<u32>(var_0.x, ~1u, arg_0.x)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = func_3(vec2<u32>(4294967295u, ~firstTrailingBit(arg_3.d)));
    var var_1 = arg_3;
    return _wgslsmith_add_i32(~(-1i) << (countOneBits(6u) % 32u), arg_2.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = ~(4294967295u | ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20906u, 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(105662u, 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(116868u, 13u)], 13u)]), vec3<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 1u, 1u)), 13u)], 4294967295u));
    let var_0 = vec4<i32>(0i, min(-1i, 2147483647i), ~abs(0i), arg_0.x);
    global0 = 80998u;
    var var_1 = Struct_1(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(125485u, 13u)], 17107u), 13u)], 13u)], 13u)]) > 52654u, _wgslsmith_mult_i32(~countOneBits(arg_0.x), ~(-43727i)) | _wgslsmith_div_i32(_wgslsmith_mult_i32(func_2(arg_0.x, vec4<f32>(183f, -2105f, -791f, -260f), arg_0.xx, Struct_1(false, 18059i, vec2<bool>(false, true), global1[_wgslsmith_index_u32(15850u, 13u)], vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(0u, 13u)], 64302u))), _wgslsmith_mod_i32(u_input.a, 14469i)), _wgslsmith_add_i32(0i, abs(-1i))), !select(vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(true, any(vec3<bool>(false, false, false))), any(vec4<bool>(false, true, true, false))), 55612u, firstTrailingBit(countOneBits(firstLeadingBit(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 29876u, 4294967295u, 59571u)))));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(1065f - _wgslsmith_f_op_f32(f32(-1f) * -969f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1273f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1336f))), Struct_1(true, countOneBits(-1i), vec2<bool>(true, var_1.c.x), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 13u)], 4294967295u), 13u)], 11081u) & 45740u, var_1.e), vec3<bool>(true, true & !(var_1.c.x & true), true));
    return var_2.b;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> vec2<bool> {
    let var_0 = max(vec2<i32>(_wgslsmith_mult_i32(~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(arg_1.b, u_input.a))) >> (1u % 32u), u_input.a), vec2<i32>(0i, arg_0));
    var var_1 = arg_1;
    var var_2 = true;
    var_2 = any(select(select(vec3<bool>(arg_1.a & arg_1.a, all(vec2<bool>(false, false)), !var_1.c.x), vec3<bool>(!arg_1.c.x, func_1(vec3<i32>(2147483647i, arg_1.b, var_0.x)).a, arg_1.c.x), !(!vec3<bool>(false, arg_1.a, arg_1.a))), vec3<bool>(true, true, true), vec3<bool>(false, false, !(!arg_1.c.x))));
    global1 = array<u32, 13>();
    return vec2<bool>(true, arg_1.a == all(!vec3<bool>(var_1.a, true, arg_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 20068u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1391f, 351f, -1000f) + vec3<f32>(1441f, 1876f, -186f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-247f, 1815f, -410f) * vec3<f32>(2328f, 1000f, -1336f))), true)), Struct_1(false, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), u_input.a), func_4(2147483647i, func_1(vec3<i32>(1731i, u_input.a, u_input.a)), vec3<u32>(abs(global1[_wgslsmith_index_u32(29365u, 13u)]), func_3(vec2<u32>(global1[_wgslsmith_index_u32(19594u, 13u)], 22216u)).x, 4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(665f))))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(48185u, 4294967295u), ~vec2<u32>(0u, var_0)), (vec2<u32>(0u, var_0) & vec2<u32>(global1[_wgslsmith_index_u32(var_0, 13u)], var_0)) << (vec2<u32>(104222u, var_0) % vec2<u32>(32u))), ~countOneBits(countOneBits(vec4<u32>(272u, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80235u, 13u)], 13u)], var_0)))), !select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, all(vec2<bool>(false, false)), true)));
    let var_2 = func_1(vec3<i32>(1i, 11640i ^ _wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(1i, 20403i)), var_1.b.b));
    var var_3 = vec2<u32>(var_2.e.x, var_1.b.e.x);
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

