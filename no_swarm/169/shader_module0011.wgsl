struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<Struct_1, 21>;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, false), Struct_1(false, false), Struct_1(false, false), Struct_1(true, true), Struct_1(true, false), Struct_1(false, true), Struct_1(false, true), Struct_1(true, false), Struct_1(true, true), Struct_1(false, false), Struct_1(true, false), Struct_1(true, false), Struct_1(false, false), Struct_1(true, false), Struct_1(true, true), Struct_1(true, false), Struct_1(false, false), Struct_1(false, true), Struct_1(true, false), Struct_1(false, true), Struct_1(true, true), Struct_1(true, false), Struct_1(false, false), Struct_1(false, false), Struct_1(false, false), Struct_1(false, true), Struct_1(true, false), Struct_1(false, false), Struct_1(true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global1 = array<Struct_1, 21>();
    global3 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f), 1562f))));
    global2 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -arg_0, abs(arg_0)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(global2.x, 40542i, arg_0), vec3<i32>(59152i, 0i, global2.x), false), vec3<i32>(41202i, 2147483647i, global2.x))), ~reverseBits(vec3<i32>(-7415i, -20932i, -1i)), !vec3<bool>(arg_1.b, true, global2.x >= 0i)) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~4294967295u, u_input.b.x), firstLeadingBit(~u_input.a)), ~(~(~u_input.b.x)), 38372u) % vec3<u32>(32u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1742f * -652f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(sign(1f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(377f, 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f) + -1557f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f - -1354f)))));
    return ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, min(_wgslsmith_dot_vec3_u32(u_input.b.zzw, vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), u_input.a >> (u_input.a % 32u)), _wgslsmith_mult_u32(u_input.b.x, ~u_input.a)), u_input.b.zzw);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(~(~(1u & arg_2)), 21u)];
    var var_1 = arg_1.xzy;
    global3 = array<Struct_1, 29>();
    var var_2 = ~u_input.b.x & _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_sub_u32(arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~u_input.b.xx)));
    var var_3 = var_0.a;
    return Struct_2(arg_1.wy, global3[_wgslsmith_index_u32(abs(arg_2), 29u)], _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(func_3(-1i, global3[_wgslsmith_index_u32(112865u, 29u)], global3[_wgslsmith_index_u32(3260u, 29u)]) | ~u_input.b.www, ~u_input.b.xxw), u_input.b.yzz), select(~min(vec4<i32>(0i, global2.x, global2.x, global2.x), vec4<i32>(global2.x, global2.x, 6124i, -52791i)), vec4<i32>(-1i, abs(global2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, 47311i), vec4<i32>(global2.x, 0i, 75103i, 0i)), 1i), (0i == global2.x) & !var_0.b) >> ((select(vec4<u32>(11680u, 4294967295u, u_input.a, 77606u) & vec4<u32>(u_input.a, u_input.b.x, arg_2, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, arg_2, 0u, u_input.a), vec4<u32>(4294967295u, arg_2, arg_2, u_input.b.x)), !vec4<bool>(false, global0.x, arg_1.x, true)) >> (~u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> vec4<f32> {
    global1 = array<Struct_1, 21>();
    var var_0 = arg_1;
    global0 = select(vec3<bool>(true, all(!vec2<bool>(var_0.a.x, false)), true), !vec3<bool>(false, any(select(vec3<bool>(arg_1.a.x, true, global0.x), vec3<bool>(true, global0.x, var_0.b.a), vec3<bool>(false, false, false))), true), true);
    let var_1 = 4294967295u;
    let var_2 = countOneBits(arg_0.d.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(f32(-1f) * -1328f), -2995f, -1385f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1186f, 321f, 533f, 830f) + vec4<f32>(1647f, 2219f, 510f, -629f)))))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    global3 = array<Struct_1, 29>();
    let var_0 = vec4<bool>(any(vec4<bool>(true, (global2.x >> (4294967295u % 32u)) == _wgslsmith_sub_i32(global2.x, -44860i), any(vec3<bool>(arg_0, false, arg_2.b.b)), true)), false, any(!vec3<bool>(false, arg_3.x, global0.x)), true);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(arg_2, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-869f, 1088f, -908f))), vec4<bool>(false, var_0.x != arg_2.b.a, arg_0, arg_0), abs(firstTrailingBit(u_input.b.x))), vec2<i32>(arg_2.d.x, ~abs(global2.x)), _wgslsmith_clamp_u32(57906u, ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~arg_2.c.x))), vec4<f32>(489f, 454f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(836f + -185f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -481f)), select(any(var_0), false, true))), -1296f));
    var var_2 = Struct_2(vec2<bool>(!all(!vec3<bool>(arg_3.x, false, true)), !(!arg_3.x)), func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, 497f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))), !select(var_0, var_0, !vec4<bool>(var_0.x, arg_3.x, var_0.x, var_0.x)), 1u).b, u_input.b.yww, func_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1306f), var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x)), var_0, firstTrailingBit(_wgslsmith_clamp_u32(~arg_2.c.x, countOneBits(arg_2.c.x), 18611u))).d);
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.yxx))), !var_0, arg_2.c.x).b;
    return firstTrailingBit(reverseBits(-18114i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(firstTrailingBit(_wgslsmith_mult_vec3_i32(max(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(0i, global2.x, global2.x)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global2.x, global2.x), vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(global2.x, global2.x, -28964i)), vec3<i32>(27771i ^ global2.x, global2.x, -2147483647i))), firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(-30702i, -33295i), 1i, func_1(true, global2.zy, Struct_2(global0.zx, global3[_wgslsmith_index_u32(26489u, 29u)], vec3<u32>(u_input.b.x, 3331u, u_input.a), vec4<i32>(0i, 0i, -1i, -358i)), vec3<bool>(true, global0.x, global0.x)))) << (~countOneBits(u_input.b.zzx) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(50950u), ~abs(u_input.b), vec3<u32>(22096u, 36920u, 44582u));
}

