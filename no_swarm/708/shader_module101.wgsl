struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_1(vec2<u32>(~firstTrailingBit(1u), 1368u), _wgslsmith_f_op_f32(-1881f - _wgslsmith_f_op_f32(f32(-1f) * -1241f)), select(arg_2 >> (abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, 0u), arg_2)) % vec3<u32>(32u)), ~vec3<u32>(min(u_input.d.x, 11953u), abs(13188u), _wgslsmith_div_u32(50943u, u_input.b)), true));
    let var_1 = Struct_4(vec2<bool>(arg_1.x, !(select(1i, u_input.c.x, true) == arg_0)), (vec4<i32>(1i, 1i, 1i, 1i) & _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c.x, arg_0, 50479i, u_input.c.x), vec4<i32>(arg_0, u_input.c.x, u_input.c.x, u_input.c.x))) & firstTrailingBit(vec4<i32>(44002i, min(1i, 13218i), 1i, -arg_0)), Struct_3(true));
    var var_2 = u_input.c.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, -410f) - vec4<f32>(1281f, var_0.b, -2767f, var_0.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b) - vec4<f32>(var_0.b, 499f, 2214f, var_0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, 195f, var_0.b) + vec4<f32>(-1199f, 841f, 664f, var_0.b))))))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, var_3.x)) + -641f))) - -2135f), -624f);
    return 9611u;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    let var_0 = u_input.b;
    var var_1 = Struct_4(arg_1.zz, vec4<i32>(arg_0, ~arg_0, select(u_input.c.x, 36797i, -2147483647i > _wgslsmith_mod_i32(32323i, arg_0)), reverseBits(max(-u_input.c.x, 1i))), Struct_3(arg_1.x));
    let var_2 = ~arg_0;
    let var_3 = Struct_4(!(!var_1.a), var_1.b, Struct_3(true));
    let var_4 = vec4<u32>(u_input.d.x, reverseBits(~_wgslsmith_mult_u32(var_0, 0u)) << (max(firstLeadingBit(4294967295u & var_0), select(abs(35392u), u_input.e, var_0 != var_0)) % 32u), (firstLeadingBit(func_3(1i, arg_1, u_input.d.wwz)) | countOneBits(var_0)) << (0u % 32u), 4294967295u);
    return ~45764u;
}

fn func_1() -> bool {
    let var_0 = ~min(~(~u_input.a.yx), _wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.zy)) << (~(~vec2<u32>(u_input.e, u_input.a.x >> (0u % 32u))) % vec2<u32>(32u));
    var var_1 = Struct_1(~(~vec2<u32>(func_2(u_input.c.x, vec4<bool>(true, false, true, false)), u_input.d.x << (72636u % 32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1151f)))))))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a & vec3<u32>(u_input.e, 4294967295u, var_0.x), vec3<u32>(1u, 13647u, 1u)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.x, 4294967295u), u_input.a))));
    let var_2 = !(true & select(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), false, true));
    var_1 = Struct_1(vec2<u32>(37199u, var_1.a.x), _wgslsmith_div_f32(var_1.b, var_1.b), var_1.c);
    var var_3 = 1u;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(abs(u_input.c.x), 10650i), firstLeadingBit(abs(u_input.c.x))), reverseBits(~vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x) << ((vec3<u32>(35777u, u_input.e, u_input.a.x) & u_input.d.yww) % vec3<u32>(32u))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2490f)), Struct_3(func_1()), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1431f - 283f)))) + 1f));
    var var_2 = false;
    var var_3 = vec3<f32>(-259f, _wgslsmith_f_op_f32(-1035f + var_1.d), _wgslsmith_f_op_f32(var_1.a * -1201f));
    var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, 795f, _wgslsmith_f_op_f32(var_1.a + var_1.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_3.x, 1302f)), vec3<f32>(-2221f, var_1.d, -126f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, var_1.a, var_1.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(560f, var_1.d, 503f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, var_3.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_1.d, -1435f))))), any(vec2<bool>(true, true))))));
    var var_4 = vec4<i32>(-_wgslsmith_mult_i32(var_1.c, -43180i), -(~var_1.c), ~7508i, max(-firstTrailingBit(u_input.c.x), u_input.c.x ^ var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(var_4.x), _wgslsmith_f_op_f32(round(-1498f)), _wgslsmith_mult_u32(4294967295u, firstLeadingBit(reverseBits(25693u))));
}

