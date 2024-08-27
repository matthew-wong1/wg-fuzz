struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(1i, 46522i, -33718i), vec3<i32>(27915i, 1i, 996i), true));

var<private> global2: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1127f, 1000f, 579f, 709f), vec4<f32>(-1554f, 893f, -1123f, -110f), vec4<f32>(-317f, -2251f, 158f, 100f), vec4<f32>(150f, -345f, 1160f, -1250f), vec4<f32>(1168f, 889f, -279f, 2122f));

var<private> global3: array<u32, 31>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(599i, -14932i, 1i), true);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = arg_2.a.x;
    let var_1 = _wgslsmith_mod_u32(~u_input.a, u_input.a);
    let var_2 = Struct_1(!arg_1.a, vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(-39955i, arg_2.b.x)), countOneBits((global4.c.x << (47384u % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(3531u, 1u)) % 32u)), _wgslsmith_mod_i32(arg_2.b.x, _wgslsmith_mult_i32(~arg_1.c.x, 1i))), global4.c, any(arg_1.a.zx) != select(arg_2.d, all(!arg_1.a), arg_1.d));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(76503u, 24u)]) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1632f + -1140f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(939f, arg_0) * -1707f)))));
    let var_4 = var_2.b.x;
    return abs(-select(_wgslsmith_add_vec3_i32(arg_1.b, vec3<i32>(arg_2.b.x, global4.b.x, 0i)) ^ vec3<i32>(6107i, -1i, 5435i), abs(arg_2.b) ^ ~vec3<i32>(-21218i, 2147483647i, 0i), !select(global4.a.zww, vec3<bool>(false, false, global4.a.x), true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> vec2<bool> {
    var var_0 = Struct_1(global4.a, -min(global4.c, ~func_3(1856f, Struct_1(global4.a, global4.b, global4.c, true), Struct_1(global4.a, vec3<i32>(arg_1, global4.b.x, 1i), vec3<i32>(global4.c.x, global4.b.x, -52671i), global4.a.x), global4.b)), abs(_wgslsmith_mult_vec3_i32(max(-global4.b, vec3<i32>(1i, global4.b.x, -2147483647i)), vec3<i32>(-1i) * -global4.c)), true);
    var var_1 = global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(max(max(vec4<u32>(4294967295u, 0u, u_input.a, arg_0.x), vec4<u32>(arg_0.x, u_input.a, global3[_wgslsmith_index_u32(30823u, 31u)], u_input.a)), ~vec4<u32>(83709u, global3[_wgslsmith_index_u32(4294967295u, 31u)], 24479u, u_input.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(arg_0.x, 31u)], 1u, global3[_wgslsmith_index_u32(u_input.a, 31u)]), ~vec4<u32>(33045u, 54495u, 1u, u_input.a))) | 1u), 1u)];
    var var_2 = -func_3(1f, global1[_wgslsmith_index_u32(arg_0.x, 1u)], Struct_1(var_1.a, -var_0.c, min(vec3<i32>(arg_1, var_1.c.x, global4.c.x), global4.b), global4.d == var_0.a.x), select(firstLeadingBit(global4.c), vec3<i32>(17627i, arg_1, arg_1), !global4.a.wzw)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.yy, (vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(1u, arg_0.x)) & ~arg_0.zy), _wgslsmith_sub_u32(u_input.a, 77967u), 4294967295u) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(889f, -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1183f, -382f)))))))));
    var_3 = vec2<f32>(-508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))))));
    return select(vec2<bool>((abs(0u) == (arg_0.x & global3[_wgslsmith_index_u32(arg_0.x, 31u)])) && true, true), var_0.a.zz, !(var_0.a.x && false));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(max(0u, ~(~reverseBits(u_input.a))), 1u)];
    let var_1 = ~vec4<u32>(93891u, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(75796u, 26227u, u_input.a)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 31u)], global3[_wgslsmith_index_u32(12566u, 31u)], 4294967295u), vec3<u32>(u_input.a, u_input.a, 55874u)), select(vec3<u32>(4294967295u, 59459u, u_input.a), vec3<u32>(1u, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 31u)]), arg_0.yxx))), _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(u_input.a, 31u)])), select(vec3<u32>(u_input.a, 13229u, 6310u), ~vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 5839u), 4294967295u < u_input.a)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(414u, 31u)] | firstLeadingBit(u_input.a)), 31u)], 31u)]);
    global2 = array<vec4<f32>, 5>();
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, var_1.x), 1u)];
    var var_3 = firstLeadingBit(countOneBits(var_2.b.x));
    return Struct_1(!select(select(select(var_2.a, arg_0, var_0.a), !var_2.a, all(vec4<bool>(true, var_0.d, global4.a.x, arg_0.x))), vec4<bool>(true, true, false, var_0.d), vec4<bool>(all(vec3<bool>(true, true, var_2.d)), true & global4.a.x, global4.a.x, !var_2.d)), var_2.b, var_2.b, true);
}

fn func_1() -> vec3<i32> {
    let var_0 = reverseBits(~(firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60303u, 31u)], 31u)], 0u)) | ~(~vec3<u32>(1u, global3[_wgslsmith_index_u32(119715u, 31u)], u_input.a))));
    global4 = func_4(vec4<bool>(all(select(global4.a.xy, select(vec2<bool>(true, global4.a.x), vec2<bool>(true, false), false), func_2(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3868u, 31u)], 31u)], var_0.x, 4294967295u), global4.b.x))), global4.d || global4.a.x, any(!global4.a.zw), true));
    global0 = array<vec4<f32>, 24>();
    global2 = array<vec4<f32>, 5>();
    global4 = Struct_1(select(select(global4.a, global4.a, !(!global4.a)), func_4(select(vec4<bool>(true, false, global4.a.x, true), !global4.a, global4.a)).a, global4.d && all(global4.a)), global4.b, abs(~global4.b), true);
    return ~global4.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(false, true, true, true), -abs(-global4.b) & vec3<i32>(-2147483647i, ~(~global4.b.x), _wgslsmith_sub_i32(reverseBits(global4.b.x), _wgslsmith_mult_i32(15034i, 1i))), _wgslsmith_div_vec3_i32(select(vec3<i32>(-1i, global4.c.x, -2147483647i) & (global4.c ^ vec3<i32>(global4.b.x, global4.b.x, global4.b.x)), vec3<i32>(select(global4.c.x, global4.c.x, global4.d), select(global4.c.x, 2147483647i, true), global4.b.x ^ global4.b.x), any(select(global4.a.zyz, global4.a.wwy, global4.a.x))), global4.b), true);
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(func_1(), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, global4.b.x, 15292i), -(global4.b >> (vec3<u32>(u_input.a, 0u, global3[_wgslsmith_index_u32(1u, 31u)]) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(func_3(270f, Struct_1(global4.a, vec3<i32>(global4.c.x, var_0.b.x, 26262i), vec3<i32>(global4.c.x, 0i, 15573i), var_0.a.x), Struct_1(vec4<bool>(false, global4.d, var_0.a.x, true), var_0.c, vec3<i32>(-1i, 19006i, global4.b.x), var_0.d), vec3<i32>(-57226i, 12660i, -1i)), vec3<i32>(global4.c.x, var_0.b.x, 19872i)))), -min(-1i, 30349i), _wgslsmith_dot_vec2_i32(abs(-_wgslsmith_add_vec2_i32(vec2<i32>(-371i, 29907i), global4.c.zx)), func_1().yx << (~(~vec2<u32>(107089u, global3[_wgslsmith_index_u32(29824u, 31u)])) % vec2<u32>(32u))), 1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-604f, 471f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-978f, -472f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(329f, -507f) + vec2<f32>(182f, 213f))), func_4(!var_0.a).a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(997f, _wgslsmith_f_op_f32(abs(554f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -540f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-765f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1818f, -683f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1661f), _wgslsmith_f_op_f32(1605f + 1604f)))));
    let var_3 = func_4(vec4<bool>(global4.d, global4.d, all(!vec3<bool>(global4.a.x, var_0.a.x, true)), global4.a.x));
    global3 = array<u32, 31>();
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(reverseBits(vec3<u32>(1u, global3[_wgslsmith_index_u32(28162u, 31u)], 12379u))), var_2, select(min(select(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)]), vec2<bool>(var_3.a.x, var_3.d)), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24490u, 31u)], 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37456u, 31u)], 31u)]) & max(vec2<u32>(33756u, u_input.a), vec2<u32>(4294967295u, u_input.a))), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(global3[_wgslsmith_index_u32(94292u, 31u)], 18381u)))), !(!(var_2.x < -1077f))), var_2.x);
}

