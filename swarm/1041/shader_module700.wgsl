struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -26828i;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<vec4<u32>, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(429f)) * 793f)), _wgslsmith_f_op_f32(f32(-1f) * -1035f), 1605f, arg_0.d);
    global1 = array<Struct_1, 17>();
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 7u)] | u_input.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(838f)), -562f))));
    let var_3 = Struct_3(Struct_2(2147483647i, Struct_1(countOneBits(vec2<i32>(u_input.b.x, 1i)), arg_0.a.x, ~_wgslsmith_div_u32(91338u, arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), 1003f))), vec3<u32>(2910u, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + var_0)), vec4<f32>(_wgslsmith_f_op_f32(294f * -191f), var_2, arg_0.d, var_2))), 88663i);
    return ~(~vec2<u32>(var_3.a.b.c << (var_3.a.b.c % 32u), 0u));
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = vec4<i32>(-12308i, firstLeadingBit(~0i), _wgslsmith_div_i32(reverseBits(~u_input.b.x), -_wgslsmith_clamp_i32(1i, arg_0.a.a, 1i >> (arg_0.b.x % 32u))), ~firstTrailingBit(u_input.b.x) | min(2147483647i, -10419i));
    var var_1 = func_3(arg_0.a.b);
    var var_2 = select(vec2<bool>(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), !(!(-23388i <= u_input.b.x))), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, (arg_0.c.x != arg_0.a.b.d) & (var_0.x != u_input.b.x)), true), !select(!select(true, true, true), all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))));
    let var_3 = arg_0.c.x;
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(424f * arg_0.a.b.d)));
    return u_input.c.xzz;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_3(Struct_2(-30292i, global1[_wgslsmith_index_u32(u_input.c.x, 17u)]), ~(firstLeadingBit(vec3<u32>(u_input.c.x, 53251u, u_input.a.x)) | (vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x) << (u_input.c.yzy % vec3<u32>(32u)))) >> (~_wgslsmith_sub_vec3_u32(func_2(Struct_3(Struct_2(arg_0.x, global1[_wgslsmith_index_u32(22575u, 17u)]), u_input.c.zzy, vec4<f32>(-1265f, -1157f, 1000f, -965f), -31417i)), vec3<u32>(0u, 1u, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-276f, 1614f, -973f, 756f), _wgslsmith_div_vec4_f32(vec4<f32>(-1076f, -1058f, -985f, -982f), vec4<f32>(-111f, -803f, -1148f, -545f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1155f, -584f, 1279f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1000f, -578f, 1184f), vec4<f32>(-121f, -1471f, 103f, -141f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(353f, -977f, -214f, -647f))))))), countOneBits(~arg_0.x) & abs(-arg_0.x));
    global2 = array<vec4<u32>, 7>();
    var var_1 = u_input.c;
    var var_2 = Struct_2(2147483647i, var_0.a.b);
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-606f * var_2.b.d), _wgslsmith_f_op_f32(-var_0.a.b.d))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    global0 = 0i;
    global0 = ~1i;
    global2 = array<vec4<u32>, 7>();
    var var_0 = Struct_1(arg_0, countOneBits(_wgslsmith_add_i32(~arg_2.a.b.a.x, max(arg_0.x << (0u % 32u), firstLeadingBit(u_input.b.x)))), 79699u, arg_2.a.b.d);
    global0 = -7815i;
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: i32) -> f32 {
    global0 = _wgslsmith_mult_i32(-(i32(-1i) * -37037i) & _wgslsmith_add_i32(2147483647i, -(~arg_2)), i32(-1i) * -1i);
    let var_0 = u_input.b.yy;
    let var_1 = arg_0.a;
    let var_2 = var_1.b;
    global1 = array<Struct_1, 17>();
    return _wgslsmith_div_f32(1085f, arg_0.a.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(func_5(func_4(vec2<i32>(1i, u_input.b.x), false, Struct_3(Struct_2(u_input.b.x ^ u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x), 17u)]), ~u_input.c.ywx, vec4<f32>(_wgslsmith_f_op_f32(floor(2271f)), -1050f, _wgslsmith_f_op_f32(step(826f, 126f)), _wgslsmith_f_op_f32(func_1(u_input.b.zx, u_input.b.yz))), 0i)), ~((u_input.b.x ^ u_input.b.x) >> (67860u % 32u)) >> (1u % 32u), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_3(func_4(vec2<i32>(u_input.b.x, 0i), true, Struct_3(Struct_2(1i, global1[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec3<u32>(112636u, u_input.a.x, u_input.a.x), vec4<f32>(915f, -144f, -255f, -1234f), 0i)).a, vec3<u32>(18124u, u_input.c.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-629f, -1000f, -791f, -1000f))), select(-63686i, u_input.b.x, var_0)), u_input.b.x, u_input.b.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-207f * _wgslsmith_f_op_f32(max(743f, 1240f))), _wgslsmith_f_op_f32(-2017f + _wgslsmith_f_op_f32(floor(-1286f))))), abs(0u ^ _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(1u, u_input.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_4(vec2<i32>(14329i, u_input.b.x), true, Struct_3(Struct_2(u_input.b.x, Struct_1(u_input.b.yz, u_input.b.x, 36399u, -1004f)), vec3<u32>(32475u, u_input.a.x, 1u), vec4<f32>(574f, -314f, 1000f, 1000f), -18831i)).a.b.d), _wgslsmith_f_op_f32(-1f), var_0)))), 9589i);
}

