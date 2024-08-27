struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-910f, vec2<u32>(37550u, 8642u), vec4<u32>(20218u, 10375u, 1601u, 0u));

var<private> global1: vec4<i32> = vec4<i32>(0i, i32(-2147483648), -1i, i32(-2147483648));

var<private> global2: Struct_2 = Struct_2(vec4<u32>(4294967295u, 4294967295u, 32552u, 0u), vec2<bool>(true, true), vec2<f32>(175f, 1000f));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> u32 {
    let var_0 = global1.x;
    var var_1 = 1921u;
    return select(1u, _wgslsmith_sub_u32((20615u ^ reverseBits(u_input.a.x)) & u_input.a.x, global2.a.x), false);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(~global0.c, !(!(!(!global2.b))), _wgslsmith_f_op_vec2_f32(exp2(global2.c)));
    var_0 = Struct_2(~(~vec4<u32>(global3.c.x, _wgslsmith_mult_u32(u_input.a.x, 12310u), 18212u, ~global2.a.x)), !global2.b, _wgslsmith_f_op_vec2_f32(sign(global2.c)));
    var_0 = Struct_2(vec4<u32>(countOneBits(global2.a.x >> (var_0.a.x % 32u)) & 1945u, ~(~abs(global0.c.x)), ~countOneBits(select(global3.c.x, global3.b.x, true)), global2.a.x), var_0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(global2.c.x)), global3.a), vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_f32(trunc(var_0.c.x))), any(!vec2<bool>(var_0.b.x, global2.b.x)))), var_0.c));
    var var_1 = select(!(!global2.b), vec2<bool>(all(select(!vec3<bool>(false, var_0.b.x, global2.b.x), !vec3<bool>(var_0.b.x, true, false), !global2.b.x)), all(!(!var_0.b))), select(var_0.b, vec2<bool>(all(vec3<bool>(global2.b.x, var_0.b.x, false)), var_0.b.x), _wgslsmith_f_op_f32(step(-579f, _wgslsmith_f_op_f32(min(global0.a, 487f)))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global0.a))));
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * 322f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(493f + -611f))))), vec2<u32>(_wgslsmith_clamp_u32(select(~u_input.a.x, _wgslsmith_add_u32(global2.a.x, global0.c.x), true), ~(4294967295u << (global2.a.x % 32u)), _wgslsmith_mult_u32(~66700u, var_0.a.x)), 85611u), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.a.x, abs(var_0.a.x), global3.c.x, 8673u), ~global3.c));
    return 4294967295u ^ max(abs(var_0.a.x), 0u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> u32 {
    var var_0 = ~reverseBits(func_2() << ((countOneBits(arg_0.x) | (u_input.a.x << (44664u % 32u))) % 32u));
    global0 = Struct_1(global3.a, arg_0.xw, firstTrailingBit(~select(~vec4<u32>(arg_2, arg_0.x, global0.c.x, 11702u), vec4<u32>(31593u, 58134u, 51467u, 44874u), select(vec4<bool>(global2.b.x, arg_1.b.x, true, global2.b.x), vec4<bool>(arg_1.b.x, global2.b.x, true, global2.b.x), arg_1.b.x))));
    let var_1 = countOneBits(vec3<i32>(-_wgslsmith_mult_i32(global1.x, global1.x) & -reverseBits(u_input.b.x), 0i, ~(~585i)));
    return reverseBits(global3.b.x);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    global0 = arg_0;
    var var_0 = ~54810u & reverseBits(~(~arg_0.b.x));
    global2 = Struct_2(global0.c | _wgslsmith_clamp_vec4_u32(vec4<u32>(63398u, u_input.a.x ^ 18802u, ~global0.c.x, global0.b.x & u_input.a.x), _wgslsmith_div_vec4_u32(abs(global0.c), reverseBits(global0.c)), _wgslsmith_clamp_vec4_u32(~global0.c, abs(vec4<u32>(3493u, arg_1, global0.b.x, global3.b.x)), vec4<u32>(26822u, global3.c.x, global3.c.x, u_input.a.x))), !select(select(vec2<bool>(true, true), !vec2<bool>(global2.b.x, global2.b.x), true), vec2<bool>(true, !global2.b.x), global2.b), vec2<f32>(-290f, 319f));
    var_0 = arg_0.b.x;
    var var_1 = arg_0;
    return Struct_2(reverseBits(firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(1u, arg_1), 19025u, select(arg_0.b.x, var_1.c.x, false), 1u))), !vec2<bool>(global2.b.x && false, global2.b.x & global2.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-524f, _wgslsmith_f_op_f32(-326f + global3.a)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a, -1000f))), _wgslsmith_f_op_vec2_f32(global2.c + global2.c)))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global3 = Struct_1(_wgslsmith_f_op_f32(floor(global0.a)), vec2<u32>(abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, global3.c.x, 4294967295u), global3.c.wwx), global2.a.x, ~global2.a.x)), _wgslsmith_div_u32(51784u, ~global0.b.x)), global3.c);
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(global0.c, ~min(global0.c, global3.c)), global2.b, global2.c);
    global2 = func_5(Struct_1(global0.a, ~global2.a.yz, vec4<u32>(~func_2(), ~4294967295u, (u_input.a.x & 4294967295u) << (~var_0.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 0u, 1u, 43672u), ~global2.a))), reverseBits(func_4(min(vec4<u32>(var_0.a.x, var_0.a.x, global2.a.x, var_0.a.x), ~global2.a), Struct_2(~global3.c, vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(min(global2.c, vec2<f32>(1106f, -945f)))), ~func_3(), 276f)));
    var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-602f + 1355f))), abs(vec2<u32>(global2.a.x, 12707u) & select(vec2<u32>(global0.b.x, var_0.a.x), vec2<u32>(u_input.a.x, 117508u), vec2<bool>(global2.b.x, true))), var_0.a), var_0.a.x);
    global2 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, 0u), select(vec4<u32>(global0.c.x, 1u, 23322u, global0.b.x), var_0.a, vec4<bool>(false, true, global2.b.x, true))), var_0.a << (var_0.a % vec4<u32>(32u))) ^ (global0.c ^ vec4<u32>(17878u, 1u, 47732u, _wgslsmith_mult_u32(global2.a.x, 24085u))), var_0.b, vec2<f32>(1653f, _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(max(1418f, global2.c.x))))));
    return Struct_1(_wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(-858f * _wgslsmith_div_f32(1134f, -1276f))), min(vec2<u32>(4294967295u, max(1u, min(var_0.a.x, 0u))), countOneBits(vec2<u32>(36082u, global3.b.x))), ~select(global3.c, global3.c, !vec4<bool>(true, global2.b.x, true, global2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(select(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(global0.c, vec4<u32>(0u, 41831u, global0.c.x, u_input.a.x)), vec4<u32>(66210u, global3.b.x, 5376u, global2.a.x) ^ global3.c) | abs(~global3.c), vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(0u, global2.a.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c.x, global3.b.x, global3.b.x), _wgslsmith_sub_vec3_u32(global0.c.zwx, global3.c.ywx)), 7556u, 29912u), true), !select(select(global2.b, !global2.b, select(global2.b, vec2<bool>(false, true), global2.b)), !global2.b, vec2<bool>(global2.b.x, !global2.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-759f, _wgslsmith_f_op_f32(step(-406f, 1000f)))));
    global2 = Struct_2(global0.c, !vec2<bool>(true, (0u < global2.a.x) & all(global2.b)), vec2<f32>(163f, global3.a));
    global3 = func_1(min(-54625i, global1.x));
    var var_0 = func_1(-select(min(-global1.x, -420i), global1.x, !any(vec3<bool>(global2.b.x, true, true))));
    let var_1 = global2.c.x;
    let var_2 = vec4<u32>(global2.a.x | 1u, var_0.c.x | ~_wgslsmith_sub_u32(4294967295u, 41685u), firstTrailingBit(u_input.a.x), ~4294967295u);
    let var_3 = global2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), vec4<u32>(1u, global3.c.x, select(var_0.b.x, var_0.c.x, global2.b.x), func_3()));
}

