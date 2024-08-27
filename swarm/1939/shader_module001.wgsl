struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<i32, 18>;

var<private> global2: array<Struct_2, 11>;

var<private> global3: Struct_2;

var<private> global4: array<vec3<f32>, 12>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: f32) -> i32 {
    let var_0 = Struct_1(arg_0, global3.c.x, ~(abs(global3.a.x) >> (_wgslsmith_mult_u32(arg_1.a.x, ~u_input.a.x) % 32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1f)), -648f)));
    var var_1 = u_input.c | 4294967295u;
    var var_2 = Struct_3(u_input.b, countOneBits(vec4<i32>(~global1[_wgslsmith_index_u32(var_0.c, 18u)] << (4294967295u % 32u), _wgslsmith_clamp_i32(-12916i, 1i, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, global1[_wgslsmith_index_u32(10152u, 18u)]), max(arg_1.b.x, global3.b.x)), 25614i >> (arg_1.a.x % 32u))));
    let var_3 = vec3<f32>(arg_0, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-635f))))));
    var var_4 = Struct_3(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(-arg_1.b.x, 21672i)), _wgslsmith_clamp_vec4_i32(-max(vec4<i32>(-2147483647i, -2147483647i, -19153i, global1[_wgslsmith_index_u32(0u, 18u)]), -vec4<i32>(-102281i, -19496i, 8748i, -2147483647i)), select(var_2.b, var_2.b, select(false, global0[_wgslsmith_index_u32(u_input.d, 4u)], true)) | var_2.b, ~vec4<i32>(u_input.b, global3.b.x, _wgslsmith_mod_i32(u_input.b, arg_1.b.x), 1i)));
    return -1i | var_2.b.x;
}

fn func_2() -> Struct_3 {
    let var_0 = false;
    global2 = array<Struct_2, 11>();
    var var_1 = Struct_3(func_3(-278f, Struct_2(vec4<u32>(1u, ~0u, global3.a.x, ~45960u), vec3<i32>(global3.b.x, global1[_wgslsmith_index_u32(60273u, 18u)], u_input.b) << (vec3<u32>(global3.a.x, u_input.e.x, 29888u) % vec3<u32>(32u)), vec4<bool>(global3.c.x, !global0[_wgslsmith_index_u32(global3.a.x, 4u)], !global3.c.x, !global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), vec4<bool>(!(!var_0), true, true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(617f + -1013f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-666f)), 1f)))), vec4<i32>(global1[_wgslsmith_index_u32(1u, 18u)], max(-(-20157i << (u_input.d % 32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(34859i, global1[_wgslsmith_index_u32(global3.a.x, 18u)]))), 22589i, 1i));
    let var_2 = 73464u;
    var_1 = Struct_3(abs(35329i), -vec4<i32>((36402i >> (u_input.c % 32u)) & global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global3.a, global3.a), 18u)], -(~global3.b.x), global1[_wgslsmith_index_u32(min(29259u, u_input.e.x) ^ _wgslsmith_div_u32(0u, 13990u), 18u)], 2147483647i));
    return Struct_3(-2147483647i, var_1.b);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = func_2();
    let var_1 = true;
    var var_2 = arg_2.c.wzw;
    let var_3 = var_0;
    var var_4 = arg_0;
    return !(!(!select(arg_2.c.yx, select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 4u)], arg_2.c.x), var_2.xy, global3.c.wx), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(23272u, ~27876u), global3.a.zx << ((vec2<u32>(u_input.a.x, 4294967295u) ^ u_input.a) % vec2<u32>(32u)));
    let var_1 = abs(-1i);
    let var_2 = u_input.a;
    global1 = array<i32, 18>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), -1168f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1625f)), 1755f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(994f, 1860f) - vec2<f32>(-594f, -300f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-167f, 385f))))))));
    var_0 = ~(~(~(~(~global3.a.xy))));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.a.x, abs(1u)), ~select(vec2<u32>(var_2.x, u_input.c), vec2<u32>(global3.a.x, global3.a.x), func_1(Struct_3(global1[_wgslsmith_index_u32(0u, 18u)], vec4<i32>(76303i, u_input.b, -1i, u_input.b)), Struct_3(19746i, vec4<i32>(0i, 1i, 2147483647i, 18496i)), Struct_2(global3.a, global3.b, global3.c)))), ~_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(var_0.x, var_0.x)), countOneBits(firstLeadingBit(vec2<u32>(var_0.x, u_input.c))))), 11u)];
    var_4 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(((1u ^ var_4.a.x) << (u_input.a.x % 32u)) << (var_4.a.x % 32u), 42116u), ~37071u), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_div_u32(reverseBits(4294967295u), _wgslsmith_add_u32(firstLeadingBit(1u << (global3.a.x % 32u)), 96066u)), countOneBits(~vec3<u32>(~0u, ~0u, 1u)), ~abs(select(vec2<u32>(u_input.d, var_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, global3.a.x), global3.a.ww), false || global3.c.x)));
}

