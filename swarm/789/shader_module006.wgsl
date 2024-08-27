struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<i32>(2147483647i, 31367i)), Struct_2(vec2<i32>(-1i, -1i)), Struct_2(vec2<i32>(-1i, -1i)), Struct_2(vec2<i32>(22034i, 95838i)), Struct_2(vec2<i32>(-1i, -2611i)), Struct_2(vec2<i32>(2147483647i, 1i)), Struct_2(vec2<i32>(-186i, -1i)), Struct_2(vec2<i32>(24964i, -36317i)), Struct_2(vec2<i32>(23808i, -1i)), Struct_2(vec2<i32>(1i, 0i)));

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<f32, 2>;

var<private> global3: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(Struct_1(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), -42969i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(true, false, true), vec2<i32>(0i, 1i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(false, false, true), vec2<i32>(10237i, 1i), vec2<bool>(true, true))), Struct_4(Struct_1(vec3<bool>(false, true, false), vec2<i32>(-21898i, -10462i), vec2<bool>(false, true))), Struct_4(Struct_1(vec3<bool>(false, true, false), vec2<i32>(-12196i, 3636i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(true, true, false), vec2<i32>(0i, -39944i), vec2<bool>(true, true))), Struct_4(Struct_1(vec3<bool>(true, false, false), vec2<i32>(-1i, -7705i), vec2<bool>(true, false))), Struct_4(Struct_1(vec3<bool>(true, false, false), vec2<i32>(1i, -1i), vec2<bool>(true, false))), Struct_4(Struct_1(vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 33073i), vec2<bool>(true, true))), Struct_4(Struct_1(vec3<bool>(false, true, true), vec2<i32>(-65536i, 11571i), vec2<bool>(true, false))), Struct_4(Struct_1(vec3<bool>(false, true, true), vec2<i32>(-3i, 2147483647i), vec2<bool>(true, false))), Struct_4(Struct_1(vec3<bool>(true, true, false), vec2<i32>(119100i, 0i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(true, true, false), vec2<i32>(1i, 15031i), vec2<bool>(true, true))), Struct_4(Struct_1(vec3<bool>(true, false, true), vec2<i32>(-5934i, i32(-2147483648)), vec2<bool>(true, false))), Struct_4(Struct_1(vec3<bool>(false, false, true), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(false, true, true), vec2<i32>(-12160i, 24226i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(false, true, true), vec2<i32>(39410i, 21559i), vec2<bool>(false, true))), Struct_4(Struct_1(vec3<bool>(true, false, false), vec2<i32>(95740i, i32(-2147483648)), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(false, true, false), vec2<i32>(2147483647i, 0i), vec2<bool>(true, false))), Struct_4(Struct_1(vec3<bool>(false, false, false), vec2<i32>(-28389i, -2835i), vec2<bool>(true, false))), Struct_4(Struct_1(vec3<bool>(false, true, true), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(false, true, false), vec2<i32>(-29615i, 0i), vec2<bool>(true, false))), Struct_4(Struct_1(vec3<bool>(true, false, true), vec2<i32>(1i, 20262i), vec2<bool>(false, true))), Struct_4(Struct_1(vec3<bool>(false, false, true), vec2<i32>(2147483647i, 44736i), vec2<bool>(false, false))), Struct_4(Struct_1(vec3<bool>(true, false, false), vec2<i32>(-21978i, i32(-2147483648)), vec2<bool>(true, false))));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> u32 {
    global1 = array<Struct_2, 22>();
    let var_0 = !(!all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(vec3<bool>(true, var_0, any(select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, var_0, false), true)) || !var_0), vec2<i32>(u_input.a.x, abs(u_input.d.x)), select(!vec2<bool>(var_0, any(vec2<bool>(false, var_0))), !vec2<bool>(all(vec2<bool>(var_0, var_0)), true), !all(vec4<bool>(true, true, true, true))));
    global1 = array<Struct_2, 22>();
    global0 = array<Struct_2, 10>();
    return 27389u;
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 22>();
    let var_0 = arg_0;
    var var_1 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec2_i32(u_input.d.xx, ~var_0.a) ^ ((vec2<i32>(u_input.a.x, var_0.a.x) >> (vec2<u32>(45732u, 9459u) % vec2<u32>(32u))) << (vec2<u32>(4294967295u, min(u_input.b.x, u_input.c)) % vec2<u32>(32u))), vec2<bool>(false, true));
    var var_2 = 48988u;
    var_2 = 84673u;
    return Struct_1(vec3<bool>(any(!vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)), min(u_input.a.x, arg_0.a.x & 37651i) <= abs(0i & u_input.a.x), true), select(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(2147483647i, 45667i)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.x, 2147483647i), vec2<i32>(-45084i, var_1.b.x))), vec2<i32>(-50117i, -2147483647i) ^ vec2<i32>(30906i & arg_0.a.x, firstLeadingBit(-2147483647i)), select(var_1.c, vec2<bool>(false & var_1.c.x, all(var_1.a.zz)), var_1.c)), !var_1.c);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = vec4<u32>(abs(1u), 22116u << (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b.x, u_input.c), firstTrailingBit(firstLeadingBit(~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.e)))), ~u_input.b.x);
    let var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 26u)];
    let var_2 = func_3(global1[_wgslsmith_index_u32(~(u_input.b.x | func_2()), 22u)]);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(16272u, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 765f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(574f, global2[_wgslsmith_index_u32(1u, 2u)], 1376f, -1049f))))), vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30307u, 0u, var_0.x), u_input.b), 2u)], _wgslsmith_f_op_f32(f32(-1f) * -1666f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 2u)] + global2[_wgslsmith_index_u32(var_0.x, 2u)]), _wgslsmith_f_op_f32(-369f + global2[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(13543u, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(u_input.e, 2u)], -128f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_0.x, 2u)], 685f, global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)])))))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(385f, -1850f, global2[_wgslsmith_index_u32(12143u, 2u)], global2[_wgslsmith_index_u32(u_input.e, 2u)]))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 604f, 454f) - vec4<f32>(global2[_wgslsmith_index_u32(3409u, 2u)], -938f, var_3.x, -863f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1291f, var_3.x, var_3.x, global2[_wgslsmith_index_u32(4294967295u, 2u)]) * vec4<f32>(784f, var_3.x, -250f, global2[_wgslsmith_index_u32(u_input.e, 2u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, -193f, -1473f, -1456f)) * vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(31069u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], -1000f)))) - vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 2u)] + 102f))), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(26582u, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)])) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 2u)] * -1851f))))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(!func_1(1i, vec2<i32>(0i, 5301i), vec4<i32>(-38581i, 10294i, 13401i, 31182i) << (vec4<u32>(u_input.e, 4294967295u, u_input.c, 0u) % vec4<u32>(32u))), u_input.a, !vec2<bool>(any(vec3<bool>(false, false, true)), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1440f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(12544u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)])) * 1336f))), 1054f)));
    var var_2 = Struct_3(min(u_input.b.zx, _wgslsmith_sub_vec2_u32(u_input.b.xy, u_input.b.xz)));
    let var_3 = ~firstLeadingBit(abs(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yx, u_input.b.zz), min(var_2.a, var_2.a))));
    global1 = array<Struct_2, 22>();
    var_2 = Struct_3(~select(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, var_3.x) & u_input.b.zz, u_input.b.zx >> (var_2.a % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(34732u, var_2.a.x)), true));
    let var_4 = Struct_3(_wgslsmith_mod_vec2_u32(select(max(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a.x, 1u), u_input.b.zy), abs(vec2<u32>(1u, 4165u))), vec2<u32>(~4294967295u, firstTrailingBit(u_input.e)), var_1.x < var_1.x), _wgslsmith_div_vec2_u32(var_2.a, ~(~u_input.b.zy))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(25980u), -u_input.d.x, vec3<f32>(-1538f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 1u, 0u), func_2()), 2u)] - -3208f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -127f)))), var_2.a.x, countOneBits(u_input.d));
}

