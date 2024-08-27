struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_3(Struct_2(vec4<bool>(false, false, arg_0, all(!vec4<bool>(arg_0, false, arg_0, arg_0))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(100f))), i32(-1i) * -1i), ~firstTrailingBit(reverseBits(0u)), Struct_1(-1574f, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -234f)), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(-2147483647i), 1i, -7279i), select(vec3<i32>(-28420i, 21706i, 0i), vec3<i32>(-2147483647i, -2147483647i, -4696i), vec3<bool>(arg_0, true, arg_0)) | countOneBits(vec3<i32>(2147483647i, -2219i, 2832i)))));
    var var_1 = Struct_5(true, Struct_4(var_0.a.e, select(vec2<i32>(-1i) * -var_0.b.xy, var_0.b.xz, var_0.a.a.x)));
    var var_2 = var_0.a.d;
    var var_3 = var_0.a.a.x;
    let var_4 = Struct_3(Struct_2(vec4<bool>(all(vec2<bool>(true, true)), var_1.a, true, var_0.a.a.x), var_0.a.b, var_0.a.c, Struct_1(-169f, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(147f)))), var_0.b);
    return !var_1.a;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    var var_0 = all(arg_2.a.a.wyw);
    var_0 = !all(vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_f_op_f32(sign(-591f));
    var var_2 = Struct_5(!func_3(false), Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a.d.a))))), -arg_2.b.zy));
    let var_3 = Struct_4(355f, -(-(~arg_2.b.xy) | var_2.b.b));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.a), -826f)) + arg_2.a.e)));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    let var_0 = vec4<i32>(12585i, 0i, arg_0.b.b.x, -1i) ^ firstLeadingBit(abs(vec4<i32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x) | vec4<i32>(arg_0.b.b.x, arg_0.b.b.x, 1i, arg_0.b.b.x)));
    let var_1 = Struct_1(1032f, firstTrailingBit(countOneBits(var_0.x & ~var_0.x)));
    var var_2 = 32342i;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-2905f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_1.a)))))));
    var var_4 = arg_0.b.b;
    return var_1;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_4(Struct_5(false, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, vec3<f32>(147f, -1000f, -1045f), Struct_3(Struct_2(vec4<bool>(false, false, false, false), Struct_1(-1000f, arg_0), 3974u, Struct_1(961f, 11506i), 111f), vec3<i32>(1i, arg_0, arg_0)), Struct_1(-1000f, arg_0)))), (vec2<i32>(-1i, 31511i) ^ vec2<i32>(arg_0, arg_0)) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))));
    var_0 = func_4(Struct_5(!(_wgslsmith_div_i32(arg_0, arg_0) >= ~(-14930i)), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)) + _wgslsmith_f_op_f32(abs(var_0.a))), vec2<i32>(~0i, -11015i))));
    let var_1 = Struct_1(func_4(Struct_5(!all(vec2<bool>(false, false)), Struct_4(-1292f, _wgslsmith_mult_vec2_i32(vec2<i32>(11745i, arg_0), vec2<i32>(-7772i, 2147483647i))))).a, -1i);
    var_0 = Struct_1(239f, (-1i | arg_0) << ((~(~1u) >> ((u_input.a.x & firstLeadingBit(u_input.a.x)) % 32u)) % 32u));
    var var_2 = -9878i;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(vec4<bool>(all(vec2<bool>(false, true)), true, true, true), func_1(~(1i << (1u % 32u))), max(36935u, countOneBits(4294967295u)), func_1(_wgslsmith_sub_i32(~0i, ~13598i)), _wgslsmith_f_op_f32(round(1278f))), ~vec3<i32>(firstLeadingBit(~(-1i)), _wgslsmith_sub_i32(-1i, 39125i) >> (0u % 32u), -(17634i >> (1u % 32u))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) - 359f)) - -1587f), _wgslsmith_f_op_f32(-1f)));
    var_1 = -659f;
    let x = u_input.a;
    s_output = StorageBuffer(-19138i, abs(16587u), u_input.a.xy, abs(~max(vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.a.wyy)) >> ((firstTrailingBit(u_input.a.wzw) & abs(min(u_input.a.ywz, vec3<u32>(var_0.a.c, 56588u, var_0.a.c)))) % vec3<u32>(32u)));
}

