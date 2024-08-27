struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<f32> = vec4<f32>(869f, -439f, -1000f, -1170f);

var<private> global2: array<Struct_3, 29>;

var<private> global3: Struct_3;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> u32 {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.d.a), _wgslsmith_f_op_f32(step(arg_1.b.x, arg_1.b.x)), -833f, -335f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -334f, arg_0.d.b.x, 431f), vec4<f32>(-732f, arg_0.d.b.x, arg_0.d.a, arg_0.d.a), vec4<bool>(arg_2, false, true, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-911f, -117f, 539f, 2547f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(-603f, 684f, 132f, arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 803f, global1.x, 626f))))));
    var var_0 = arg_2 | arg_2;
    var var_1 = true & global0.b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(global3.e)))))) * _wgslsmith_f_op_vec3_f32(global0.d.b - vec3<f32>(_wgslsmith_f_op_f32(abs(global1.x)), global3.b.x, _wgslsmith_f_op_f32(min(-1209f, global1.x)))))));
    var var_3 = Struct_3(countOneBits(~(~_wgslsmith_add_vec4_u32(u_input.b, global3.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1263f, global1.x)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.b.x, -376f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.yy)) * global1.xw)), ~995u, _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(~global3.d.x, _wgslsmith_add_i32(global3.d.x, 2147483647i))), vec2<i32>(min(global3.d.x, -19317i), 0i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1208f), -294f) + global1.zzw));
    return reverseBits(~_wgslsmith_mult_u32(4294967295u, global3.c));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = global0.b.x;
    global3 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(func_3(Struct_4(global0.a, global0.b, true, global0.d), Struct_2(arg_1.a, global1.wzz), false), ~reverseBits(global0.a.x))) ^ 1u, 29u)];
    global3 = Struct_3((u_input.b << (vec4<u32>(u_input.b.x, global0.a.x ^ global0.a.x, global0.a.x, u_input.a.x) % vec4<u32>(32u))) << ((global3.a | ~_wgslsmith_sub_vec4_u32(global3.a, u_input.b)) % vec4<u32>(32u)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -695f) + _wgslsmith_f_op_f32(arg_0 - -907f))), vec2<f32>(_wgslsmith_f_op_f32(global0.d.a * 242f), _wgslsmith_div_f32(1000f, global0.d.b.x))), u_input.a.x, vec2<i32>(abs(u_input.c), u_input.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1882f, global3.e.x, 318f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-927f, 1000f)), global0.d.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), 211f)), vec3<bool>(global0.c, true, true))));
    global3 = Struct_3(vec4<u32>(~(~max(u_input.d.x, 52159u)), global0.a.x, ~_wgslsmith_clamp_u32(4294967295u, ~global3.a.x, _wgslsmith_div_u32(global3.c, 45166u)), firstTrailingBit(_wgslsmith_mod_u32(func_3(Struct_4(vec3<u32>(global0.a.x, 38069u, 1u), global0.b, global0.c, arg_1), arg_1, global0.b.x), _wgslsmith_sub_u32(1u, u_input.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.x) + arg_1.b.yy)) + global3.b)), _wgslsmith_div_u32(78174u, 1u), _wgslsmith_mod_vec2_i32(-select(-vec2<i32>(global3.d.x, global3.d.x), -vec2<i32>(global3.d.x, -10544i), select(vec2<bool>(global0.c, false), global0.b, global0.b)), ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), countOneBits(global3.d))), vec3<f32>(global0.d.b.x, -771f, _wgslsmith_f_op_f32(trunc(1095f))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.x)), -1569f, _wgslsmith_f_op_f32(-890f - global3.b.x), -307f) - vec4<f32>(_wgslsmith_f_op_f32(min(global0.d.a, 1471f)), arg_0, arg_0, 175f))));
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.a.x, 4294967295u) ^ (~u_input.a.x ^ 4294967295u), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, global3.c, 41928u), abs(vec3<u32>(4294967295u, global3.a.x, global0.a.x))), ~1u))), 29u)];
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = u_input.d.x;
    var var_1 = func_2(global0.d.b.x, Struct_2(_wgslsmith_f_op_f32(-659f + global0.d.b.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global0.d.b.x, _wgslsmith_f_op_f32(global0.d.a * global0.d.b.x))));
    var var_2 = (2147483647i > var_1.d.x) == all(vec4<bool>(global0.b.x, true, true, global0.b.x));
    global2 = array<Struct_3, 29>();
    return Struct_1(_wgslsmith_div_vec4_u32(func_2(global3.b.x, Struct_2(global3.b.x, _wgslsmith_f_op_vec3_f32(global1.wxw + vec3<f32>(-371f, -127f, 1000f)))).a, vec4<u32>(~(~1u), ~_wgslsmith_div_u32(var_1.a.x, 0u), ~global3.a.x | ~global0.a.x, global3.c << ((arg_0.x >> (0u % 32u)) % 32u))), global0.c, global0.d.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.a.wyw);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + -1000f) - var_0.c), global3.b.x, _wgslsmith_div_f32(-1002f, 529f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-490f - global3.b.x) * _wgslsmith_f_op_f32(-446f + global1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + -1803f)))));
    global2 = array<Struct_3, 29>();
    global0 = Struct_4(select(firstTrailingBit(u_input.b.xyx | select(u_input.b.zwy, vec3<u32>(4294967295u, 38815u, global3.a.x), false)), ~vec3<u32>(var_0.a.x, _wgslsmith_mod_u32(u_input.b.x, 48285u), 27848u), vec3<bool>((global0.b.x || false) && var_0.b, global0.b.x, var_0.b)), !(!global0.b), false, global0.d);
    var var_1 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0.a.xzz).a.xz, max(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global3.d, vec2<i32>(global3.d.x, u_input.c)), u_input.c << (8255u % 32u), abs(1i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(global3.d.x, global3.d.x, -2147483647i), reverseBits(vec3<i32>(1i, -3770i, -43268i)))), ~(-(vec3<i32>(0i, u_input.c, -8103i) | vec3<i32>(27144i, global3.d.x, 6816i)))), func_1(global0.a).a.x, 26058u, 20594u);
}

