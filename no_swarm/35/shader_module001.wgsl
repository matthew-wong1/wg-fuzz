struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: bool;

var<private> global2: array<u32, 11> = array<u32, 11>(63605u, 0u, 0u, 0u, 19431u, 57211u, 21824u, 1u, 1u, 56627u, 22926u);

var<private> global3: vec2<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(-(countOneBits(u_input.a.x) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.x, 53290u), 126103u) % 32u)), vec3<u32>(~arg_0.x, ~arg_0.x, ~(global2[_wgslsmith_index_u32(4294967295u, 11u)] & min(4294967295u, 291u))));
    var var_1 = true;
    var var_2 = global3.x;
    var_1 = false;
    return Struct_2(arg_0.x << (79962u % 32u), vec2<bool>(true, true), var_0, Struct_1(~u_input.a.x ^ -(6373i ^ var_0.a), arg_0.xzy), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true))), vec4<bool>(_wgslsmith_clamp_i32(-2147483647i, 0i, 0i) > _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), true, select(false, true, true), true), false));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = abs(u_input.a.x);
    var var_1 = -507f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.x, 103f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-602f, 1000f))))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1715f, -380f)));
    return 71335u;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> vec4<u32> {
    global0 = array<vec3<bool>, 13>();
    var var_0 = func_2(~firstTrailingBit(max(vec4<u32>(global2[_wgslsmith_index_u32(26112u, 11u)], 55193u, 41937u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(83960u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(48289u, 11u)], 4294967295u) | vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(10079u, 11u)], 44329u, 1u))));
    var_0 = Struct_2(((func_3(vec4<i32>(u_input.a.x, 118i, 0i, var_0.c.a), Struct_2(global2[_wgslsmith_index_u32(76339u, 11u)], var_0.b, Struct_1(u_input.a.x, var_0.d.b), var_0.d, vec4<bool>(var_0.b.x, true, arg_1, false))) ^ ~140u) & global2[_wgslsmith_index_u32(26882u, 11u)]) << (0u % 32u), vec2<bool>(var_0.b.x, false), var_0.d, func_2(~vec4<u32>(1u, var_0.c.b.x, 0u, var_0.d.b.x) ^ ((vec4<u32>(var_0.d.b.x, 4668u, 66839u, 114295u) & vec4<u32>(1u, 0u, var_0.c.b.x, 39078u)) & ~vec4<u32>(31375u, 46172u, 4294967295u, global2[_wgslsmith_index_u32(1u, 11u)]))).d, !select(!(!var_0.e), var_0.e, select(!var_0.e, var_0.e, !var_0.e)));
    var_0 = Struct_2(global2[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(38683u, 0u, 43324u, 4294967295u)), vec4<u32>(4294967295u, var_0.d.b.x, var_0.a, 58230u)) >> (9129u % 32u)) | func_2(~vec4<u32>(42636u, 1u, var_0.c.b.x, 29648u)).d.b.x, 11u)], var_0.e.wz, func_2(max(vec4<u32>(0u, var_0.c.b.x, var_0.c.b.x, 25190u), vec4<u32>(var_0.d.b.x, global2[_wgslsmith_index_u32(var_0.d.b.x, 11u)], 70277u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a, 11u)], 11u)], 11u)])) >> (~(vec4<u32>(var_0.a, 35521u, 37121u, 89219u) | vec4<u32>(0u, 1u, 1u, global2[_wgslsmith_index_u32(1u, 11u)])) % vec4<u32>(32u))).d, var_0.c, vec4<bool>(arg_1, any(var_0.e.yx), all(vec2<bool>(true, true)), any(var_0.b)));
    var_0 = func_2(_wgslsmith_sub_vec4_u32(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_0.a, 11u)], 4294967295u, global2[_wgslsmith_index_u32(1u, 11u)], var_0.a), vec4<u32>(var_0.d.b.x, 23669u, 15677u, global2[_wgslsmith_index_u32(var_0.a, 11u)]))), ~(~vec4<u32>(1u, var_0.d.b.x, var_0.c.b.x, global2[_wgslsmith_index_u32(4294967295u, 11u)])) | reverseBits(select(vec4<u32>(31075u, 59768u, 4294967295u, var_0.c.b.x), vec4<u32>(global2[_wgslsmith_index_u32(var_0.a, 11u)], 462u, var_0.d.b.x, 1u), var_0.e.x))));
    return vec4<u32>(var_0.a & global2[_wgslsmith_index_u32(~10231u, 11u)], abs(firstLeadingBit(32463u)), ~0u, var_0.d.b.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    return func_2(vec4<u32>(max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 11u)], 11u)], global2[_wgslsmith_index_u32(0u, 11u)], 1u), vec4<u32>(0u, global2[_wgslsmith_index_u32(arg_1.x, 11u)], global2[_wgslsmith_index_u32(arg_1.x, 11u)], arg_1.x)) >> (global2[_wgslsmith_index_u32(arg_1.x, 11u)] % 32u), 11u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)]), 1u, ~(~0u) | (global2[_wgslsmith_index_u32(~19576u, 11u)] | 72331u), 43821u)).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-u_input.a, (firstLeadingBit(~vec4<u32>(28375u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(757u, 11u)], 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46816u, 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9069u, 11u)], 11u)])) << (vec4<u32>(min(17798u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10970u, 11u)], 11u)]), 4294967295u, select(4294967295u, 1u, true), global2[_wgslsmith_index_u32(countOneBits(40753u), 11u)]) % vec4<u32>(32u))) | ~(func_1(vec4<f32>(-1000f, global3.x, global3.x, -601f), true) >> ((vec4<u32>(23116u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48800u, 11u)], 11u)], global2[_wgslsmith_index_u32(1u, 11u)], 49610u) ^ vec4<u32>(0u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 7433u)) % vec4<u32>(32u))), ~abs(func_2(vec4<u32>(7970u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25337u, 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(18681u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)])).d.a) | u_input.a.x);
    var_0 = Struct_1(-u_input.a.x, func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, global3.x)))), !(-1i != _wgslsmith_sub_i32(-28092i, u_input.a.x))).xyx);
    let var_1 = global3.x;
    var var_2 = u_input.a.x;
    let var_3 = func_2(countOneBits(~((vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(var_0.b.x, 11u)], global2[_wgslsmith_index_u32(var_0.b.x, 11u)]) >> (vec4<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 11u)], 1u, 25006u) % vec4<u32>(32u))) & vec4<u32>(1u, var_0.b.x, 79268u, var_0.b.x))));
    let var_4 = var_3.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x * global3.x))), global3.x)), vec3<i32>(-1i, var_3.c.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(16168i, func_4(vec2<i32>(-2671i, -1i), vec4<u32>(var_3.c.b.x, var_3.a, 1u, 0u), var_0.a).a), var_3.d.a)));
}

