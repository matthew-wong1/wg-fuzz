struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(26769u, 1u), vec2<u32>(44795u, 30358u), vec2<u32>(1u, 19131u), vec2<u32>(1u, 37124u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(59553u, 1u), vec2<u32>(0u, 1u), vec2<u32>(23371u, 52902u), vec2<u32>(0u, 69667u), vec2<u32>(0u, 28661u), vec2<u32>(4294967295u, 6527u), vec2<u32>(19828u, 0u), vec2<u32>(16061u, 66107u), vec2<u32>(73173u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(77486u, 24079u), vec2<u32>(60410u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(8148u, 1u), vec2<u32>(94074u, 0u), vec2<u32>(0u, 67447u), vec2<u32>(4294967295u, 23581u), vec2<u32>(39544u, 0u), vec2<u32>(106569u, 1u), vec2<u32>(4294967295u, 15044u));

var<private> global1: vec2<i32>;

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 37583u, 4294967295u), vec3<u32>(7270u, 52126u, 6251u), vec3<u32>(0u, 30071u, 86810u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(23496u, 1u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 67100u, 33936u), vec3<u32>(82486u, 7642u, 89136u), vec3<u32>(1u, 1u, 37860u), vec3<u32>(4026u, 0u, 84430u), vec3<u32>(44729u, 20393u, 25481u), vec3<u32>(66929u, 156013u, 1u), vec3<u32>(90733u, 4294967295u, 55084u), vec3<u32>(0u, 1u, 12237u), vec3<u32>(39749u, 36852u, 4294967295u), vec3<u32>(0u, 70219u, 16037u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(72191u, 4294967295u, 53345u), vec3<u32>(0u, 0u, 0u));

var<private> global3: vec2<f32>;

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) - _wgslsmith_f_op_f32(arg_1.b.b.a - -2868f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1271f - arg_0.x))))), arg_1.b.b.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1806f, -1439f, 535f), vec3<f32>(-1077f, 1264f, -755f))))), vec3<f32>(_wgslsmith_f_op_f32(-432f + arg_0.x), _wgslsmith_f_op_f32(-844f + -1000f), 1222f), !(!(-24184i >= arg_1.b.a)))));
    let var_1 = Struct_3(arg_1.b.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(310f, _wgslsmith_div_f32(var_0.x, 359f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-850f)), _wgslsmith_f_op_f32(arg_1.b.b.a + 1256f)))))), 915f);
    global4 = array<Struct_2, 9>();
    let var_2 = arg_1;
    global2 = array<vec3<u32>, 21>();
    return !select(!var_2.b.e.xyz, var_2.b.e.zzw, select(!select(arg_1.b.e.wwz, vec3<bool>(arg_1.b.e.x, var_2.b.e.x, arg_1.b.e.x), false), var_2.b.e.xzw, select(vec3<bool>(true, true, arg_1.b.e.x), var_2.b.e.zzz, select(arg_1.b.e.yxx, arg_1.b.e.yxy, vec3<bool>(true, true, false)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = -146f;
    var var_1 = arg_1.d.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 790f) + vec3<f32>(1065f, arg_2.x, 244f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) + arg_2)))) - _wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(1f, -887f, -513f)));
    global1 = u_input.a.xx >> (reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_1.d.x, countOneBits(22415u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d.x, 1u), _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(50646u, 29u)], vec2<u32>(23189u, arg_1.d.x))))) % vec2<u32>(32u));
    var var_3 = global1.x;
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-209f, _wgslsmith_f_op_f32(f32(-1f) * -770f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(295f, -684f, arg_0.x)), _wgslsmith_f_op_f32(-global3.x), arg_0.x != true))))));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_4(select(vec3<bool>(true, true, true), func_3(vec2<f32>(-302f, global3.x), Struct_4(1u, Struct_2(u_input.b, Struct_1(global3.x, 44727i, 2147483647i), u_input.a.ywy, vec3<u32>(0u, 24756u, 88480u), vec4<bool>(false, true, false, true)))), true), global4[_wgslsmith_index_u32(firstTrailingBit(23523u), 9u)], vec3<f32>(_wgslsmith_f_op_f32(floor(global3.x)), 1f, global3.x)))))));
    global2 = array<vec3<u32>, 21>();
    global0 = array<vec2<u32>, 29>();
    global1 = u_input.a.yz;
    global4 = array<Struct_2, 9>();
    return Struct_4(143635u, Struct_2(1i << (0u % 32u), Struct_1(global3.x, _wgslsmith_mod_i32(u_input.b, global1.x) | 36790i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.zyx, u_input.a.yyz), -vec3<i32>(0i, u_input.a.x, u_input.b))), vec3<i32>(-(i32(-1i) * -5707i), global1.x, ~global1.x), global2[_wgslsmith_index_u32(countOneBits(1u), 21u)], select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4) -> vec4<bool> {
    global1 = max(u_input.a.zz, countOneBits(func_2().b.c.yx));
    global1 = arg_1.b.c.zx;
    global0 = array<vec2<u32>, 29>();
    global1 = vec2<i32>(~abs(-2147483647i & arg_1.b.a), -6136i | -(~u_input.b & arg_1.b.b.c));
    var var_0 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(~arg_1.b.d.x, ~64765u, arg_1.a, 19636u), abs(~vec4<u32>(4294967295u, arg_1.a, 41672u, arg_1.b.d.x))));
    return !arg_1.b.e;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = vec4<bool>(arg_1.x, -1984f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), global3.x, !(!arg_1.x))), arg_1.x, !(!arg_1.x));
    global1 = ~u_input.a.wz;
    global2 = array<vec3<u32>, 21>();
    var var_1 = Struct_3(~(~1u), arg_0.a, arg_0.a);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(3828u >> (var_1.a % 32u), min(max(62111u, select(var_1.a, var_1.a, arg_1.x)), 47418u)) & var_1.a, 21u)];
    return reverseBits(var_2.x);
}

fn func_1(arg_0: Struct_4) -> Struct_5 {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x))) + -1570f), -4814i, global1.x), func_5(!arg_0.b.e.zyz, func_2()));
    global3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(511f, 645f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1091f, global3.x), vec2<f32>(arg_0.b.b.a, global3.x), arg_0.b.e.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1307f, global3.x))), vec2<f32>(-775f, -1666f), arg_0.b.e.x)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-474f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b.a - arg_0.b.b.a) + 477f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1611f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-230f, arg_0.b.b.a) * vec2<f32>(-1135f, 116f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)) * vec2<f32>(global3.x, arg_0.b.b.a))), !arg_0.b.e.wz))));
    let var_1 = -23908i;
    let var_2 = Struct_3(~arg_0.b.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.b.b.a, _wgslsmith_f_op_f32(sign(722f)))), -331f))), -140f);
    var var_3 = 31783i;
    return Struct_5(func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global3.x)), func_2().b.b.a, 563f, _wgslsmith_div_f32(-597f, 1284f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2034f, _wgslsmith_f_op_f32(-1913f * 1000f), -1080f, _wgslsmith_f_op_f32(min(arg_0.b.b.a, var_2.b)))))), var_1);
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec3<i32>) -> Struct_4 {
    global1 = vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.a.b.c.yy, arg_1.a.b.c.yy) | vec2<i32>(5208i, arg_0.x), abs(u_input.a.zw));
    global4 = array<Struct_2, 9>();
    var var_0 = func_2().b.b;
    global1 = _wgslsmith_clamp_vec2_i32(arg_2.yy, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(func_2().b.b.c, ~arg_2.x, arg_0.x), vec3<i32>(1i, -37456i, _wgslsmith_mod_i32(1i, -2147483647i))), max(2147483647i, firstLeadingBit(arg_1.c) | -253i)), _wgslsmith_mult_vec2_i32(vec2<i32>(~(-42431i), arg_2.x), arg_2.xy) >> (max(global0[_wgslsmith_index_u32(~arg_1.a.b.d.x, 29u)], global0[_wgslsmith_index_u32(arg_1.a.a, 29u)]) % vec2<u32>(32u)));
    global1 = firstLeadingBit(select(firstTrailingBit(u_input.a.yy), firstLeadingBit(abs(-vec2<i32>(arg_0.x, var_0.b))), arg_1.a.b.d.x <= 2464u));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, 691f, global3.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1144f, -1996f, 1025f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1000f, global3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 693f, 2379f) * vec3<f32>(-1492f, 1060f, 671f)), vec3<bool>(false, select(false, false, true), all(vec2<bool>(true, true)))))) * vec3<f32>(global3.x, _wgslsmith_div_f32(global3.x, global3.x), 518f));
    var var_2 = global4[_wgslsmith_index_u32(1u, 9u)];
    let var_3 = vec3<f32>(global3.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b.a + var_2.b.a)))));
    global4 = array<Struct_2, 9>();
    let var_4 = func_7(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(u_input.b), 1i, 1i), var_2.c ^ (vec3<i32>(var_0.x, 1i, global1.x) & var_0.zzy))), func_1(Struct_4(var_2.d.x | _wgslsmith_sub_u32(var_2.d.x, var_2.d.x), global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_2.d.zy, vec2<u32>(4294967295u, var_2.d.x))), 9u)])), vec3<i32>((-1i | u_input.a.x) ^ ~(var_0.x << (var_2.d.x % 32u)), _wgslsmith_dot_vec3_i32(func_2().b.c, _wgslsmith_mult_vec3_i32(countOneBits(var_0.xyz), -var_2.c)), max(var_2.a, -1i)));
    var var_5 = _wgslsmith_f_op_f32(-var_3.x);
    let var_6 = ~1i;
    var var_7 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.a, var_3.x))), _wgslsmith_f_op_f32(step(302f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(917f - -749f), _wgslsmith_f_op_f32(1044f * -1614f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-335f, -568f, !var_2.e.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-24604i, abs(_wgslsmith_div_i32(2147483647i, -2147483647i)), var_6, ~global1.x), ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(456f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-972f))))), var_0.x, var_1.yx);
}

