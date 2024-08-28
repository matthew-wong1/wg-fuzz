struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = vec2<u32>(4294967295u, ~select(0u, ~arg_0.e.x << (_wgslsmith_dot_vec3_u32(arg_2.e, arg_0.e) % 32u), !any(arg_0.d)));
    let var_1 = ~vec2<u32>(select(u_input.c.x, var_0.x, all(vec4<bool>(arg_2.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x)) != all(vec3<bool>(false, arg_3, false))), arg_2.e.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_2.b))))) + _wgslsmith_f_op_f32(-323f - arg_2.b));
    var_0 = ~_wgslsmith_mult_vec2_u32(var_1 << (_wgslsmith_add_vec2_u32(u_input.c, ~vec2<u32>(0u, var_0.x)) % vec2<u32>(32u)), arg_0.e.xy);
    let var_2 = arg_2.b;
    return _wgslsmith_f_op_f32(abs(439f));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1072f, 202f, -1482f) + vec3<f32>(-641f, 1564f, -324f)) - vec3<f32>(1f, 1f, 1f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-779f, -1721f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-512f)))), _wgslsmith_f_op_f32(-818f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1094f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(u_input.b, 15u)], u_input.a.x, global2[_wgslsmith_index_u32(4099u, 15u)], true)), -2807f, any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-var_0.x)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)));
    global0 = array<i32, 15>();
    var var_1 = u_input.a;
    return Struct_1(u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 978f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1448f, var_0.x, true)) - var_0.x))), var_1.x, !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), ~vec3<u32>(u_input.b, 1u, 1u));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_add_u32(0u, 1u) >> (abs(arg_0.a) % 32u);
    let var_1 = func_1();
    return _wgslsmith_dot_vec2_i32(u_input.a, max(u_input.a, firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))))) | 1i;
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec3_i32(arg_0.xyx, _wgslsmith_div_vec3_i32(-min(arg_0.xxy & arg_0.zzz, max(vec3<i32>(arg_0.x, 20482i, arg_0.x), vec3<i32>(arg_0.x, 26790i, -43936i))), countOneBits(select(-vec3<i32>(arg_0.x, 2147483647i, -37236i), vec3<i32>(u_input.a.x, arg_0.x, 2147483647i) | vec3<i32>(u_input.a.x, arg_0.x, 0i), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))))));
    var_0 = _wgslsmith_add_vec3_i32(arg_0.xyy, vec3<i32>(~(~arg_0.x), -u_input.a.x ^ min(6646i, global0[_wgslsmith_index_u32(4294967295u, 15u)]), u_input.a.x)) & (_wgslsmith_div_vec3_i32(min(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], u_input.a.x, u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], 0i, arg_0.x)), arg_0.wwx) & arg_0.xxy);
    let var_1 = -2182i;
    let var_2 = (_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(0u, 5862u, 10978u, u_input.d.x)), vec4<u32>(abs(u_input.d.x), ~34597u, _wgslsmith_sub_u32(u_input.c.x, u_input.d.x), u_input.c.x)) >> ((countOneBits(abs(vec4<u32>(u_input.b, u_input.d.x, u_input.c.x, u_input.d.x))) & vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.c.x, 0u), u_input.b & u_input.d.x, 1u, u_input.c.x)) % vec4<u32>(32u))) | (reverseBits(~vec4<u32>(4294967295u, u_input.b, u_input.c.x, u_input.d.x)) >> ((~vec4<u32>(u_input.b, 12072u, 50193u, 1u) | min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.b, 47219u, 68306u), vec4<u32>(u_input.d.x, 7004u, u_input.b, u_input.c.x)), ~vec4<u32>(21932u, u_input.d.x, u_input.c.x, u_input.d.x))) % vec4<u32>(32u)));
    var var_3 = -932f;
    return _wgslsmith_clamp_vec2_i32(arg_0.zy >> (min(~(vec2<u32>(31344u, u_input.d.x) | var_2.yw), ~(~vec2<u32>(var_2.x, var_2.x))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(-u_input.a >> (u_input.d % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(-vec2<i32>(-17749i, u_input.a.x), u_input.a) & countOneBits(firstLeadingBit(arg_0.xy))), ~vec2<i32>(-abs(var_0.x), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    var var_0 = global2[_wgslsmith_index_u32(~(~(~(~u_input.c.x)) << (1u % 32u)), 15u)];
    let var_1 = func_1();
    var var_2 = func_1().d.x;
    var_0 = func_1();
    let var_3 = func_4(vec4<i32>(~(-u_input.a.x), func_3(Struct_1(var_0.e.x, 1188f, u_input.a.x, var_0.d, var_0.e), !var_0.d.x, var_1.b, i32(-1i) * -18248i), i32(-1i) * -12166i, ~func_3(var_1, true, -245f, global0[_wgslsmith_index_u32(27960u, 15u)])) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1932i, u_input.a.x), reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(34053u, 15u)], 82712i, var_0.c, var_0.c))), _wgslsmith_mod_vec4_i32(~vec4<i32>(-13128i, 1i, u_input.a.x, global0[_wgslsmith_index_u32(var_0.e.x, 15u)]), vec4<i32>(0i, global0[_wgslsmith_index_u32(var_1.e.x, 15u)], -1i, global0[_wgslsmith_index_u32(57171u, 15u)])), vec4<i32>(var_1.c, func_3(global2[_wgslsmith_index_u32(119979u, 15u)], true, -746f, 1i), _wgslsmith_add_i32(var_1.c, var_0.c), -1i)));
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-567f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(step(1348f, var_1.b)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(623f, 754f, var_0.b, var_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-379f, -1867f, -1062f, 380f))) - vec4<f32>(148f, 672f, 1135f, 882f))))))));
    let var_5 = func_1();
    var var_6 = _wgslsmith_f_op_f32(-var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_sub_i32(1i << (var_0.a % 32u), i32(-1i) * -25520i)), _wgslsmith_dot_vec2_u32(firstLeadingBit(abs(vec2<u32>(u_input.c.x, u_input.c.x))), countOneBits(u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -_wgslsmith_sub_vec4_i32(reverseBits(select(vec4<i32>(-27967i, 6018i, 0i, -21495i), vec4<i32>(-2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 15u)], -2147483647i), true)), ~vec4<i32>(u_input.a.x, var_1.c, 2147483647i, global0[_wgslsmith_index_u32(1u, 15u)]) >> (vec4<u32>(22062u, var_1.e.x, var_1.a, 1u) % vec4<u32>(32u))));
}

