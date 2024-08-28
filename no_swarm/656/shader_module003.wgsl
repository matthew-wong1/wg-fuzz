struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14>;

var<private> global1: array<i32, 26> = array<i32, 26>(-13368i, -70618i, 1697i, 20218i, 1i, 35148i, 0i, 54619i, 5993i, 20120i, -85895i, -1i, 19891i, 2147483647i, 1i, 0i, 62012i, 5721i, 2147483647i, -1i, -50408i, 0i, 1i, -44418i, -24322i, -45205i);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<f32>(280f, -1086f), vec4<bool>(true, true, true, true), -249f, vec2<f32>(660f, -254f), false), Struct_1(vec2<f32>(671f, -947f), vec4<bool>(true, true, true, false), -1132f, vec2<f32>(735f, 1231f), true), Struct_1(vec2<f32>(-1452f, 328f), vec4<bool>(true, false, false, true), 537f, vec2<f32>(779f, 1452f), true), Struct_1(vec2<f32>(828f, 798f), vec4<bool>(true, false, true, false), -431f, vec2<f32>(-1250f, -688f), false), Struct_1(vec2<f32>(-236f, 1000f), vec4<bool>(false, true, false, true), -1000f, vec2<f32>(868f, 710f), false), Struct_1(vec2<f32>(-1561f, -742f), vec4<bool>(false, true, false, false), -1128f, vec2<f32>(3655f, -481f), false), Struct_1(vec2<f32>(-1348f, 631f), vec4<bool>(true, false, false, true), -662f, vec2<f32>(-708f, -578f), true), Struct_1(vec2<f32>(-1562f, 1000f), vec4<bool>(false, true, false, true), -540f, vec2<f32>(1152f, -1123f), true), Struct_1(vec2<f32>(261f, 1734f), vec4<bool>(true, true, true, true), 208f, vec2<f32>(514f, 156f), true), Struct_1(vec2<f32>(623f, -665f), vec4<bool>(false, true, false, true), 1825f, vec2<f32>(773f, -858f), true), Struct_1(vec2<f32>(-831f, 758f), vec4<bool>(true, false, true, true), 110f, vec2<f32>(-203f, -154f), true), Struct_1(vec2<f32>(-1074f, 1186f), vec4<bool>(true, true, false, false), -1116f, vec2<f32>(1084f, 1277f), true), Struct_1(vec2<f32>(-282f, -393f), vec4<bool>(true, false, true, true), 198f, vec2<f32>(-621f, 2638f), false), Struct_1(vec2<f32>(-1117f, 958f), vec4<bool>(true, false, false, false), 308f, vec2<f32>(1477f, -634f), true), Struct_1(vec2<f32>(1116f, -815f), vec4<bool>(false, false, false, true), -1272f, vec2<f32>(-713f, -210f), true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> bool {
    global2 = arg_1;
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c, 1000f), arg_0.a, vec2<bool>(arg_1.b.x, true)))) + vec2<f32>(-377f, _wgslsmith_f_op_f32(789f + arg_0.d.x))))), vec4<bool>(false, arg_1.e, !all(arg_0.b), true), _wgslsmith_f_op_f32(ceil(arg_0.d.x)), _wgslsmith_f_op_vec2_f32(abs(global2.a)), any(global2.b.yx));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1959f, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_1.a.x)), 395f, arg_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1058f, arg_1.c, -636f, arg_1.d.x))))))));
    global0 = array<vec2<i32>, 14>();
    global1 = array<i32, 26>();
    return _wgslsmith_f_op_f32(-arg_1.a.x) >= _wgslsmith_f_op_f32(f32(-1f) * -149f);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 26u)], 0i, 56863i), vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 26u)], 0i, global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)])) << (firstTrailingBit(vec4<u32>(6252u, arg_0, 12140u, u_input.b)) % vec4<u32>(32u))), vec4<i32>(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 4294967295u), 26u)], ~(-33775i), 16487i, u_input.c)), u_input.d);
    var var_1 = global2.c;
    let var_2 = arg_1;
    global1 = array<i32, 26>();
    let var_3 = firstTrailingBit(~u_input.c);
    return global2.a;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    global1 = array<i32, 26>();
    let var_0 = 0i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(1u, Struct_1(global2.d, vec4<bool>(true, true, false, arg_1.e), global2.d.x, _wgslsmith_f_op_vec2_f32(abs(arg_1.d)), func_3(global3[_wgslsmith_index_u32(u_input.b, 15u)], arg_1, vec2<f32>(arg_1.c, -249f), global1[_wgslsmith_index_u32(4294967295u, 26u)]))))), !vec4<bool>(true, false, !any(arg_1.b.zzz), arg_1.b.x), 1f, vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -208f)))), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, arg_1.d.x) + global2.a), global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) * _wgslsmith_f_op_f32(step(1515f, arg_1.a.x))), vec2<f32>(-1767f, 158f), !arg_0 & true), arg_1, arg_1.a, -3540i));
    let var_2 = -var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1244f, -218f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-104f)) - _wgslsmith_f_op_f32(f32(-1f) * -519f)), 1000f)));
    return select(global2.b, global2.b, !var_1.b);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(arg_0.d)), select(!func_2(!arg_0.b.x, global3[_wgslsmith_index_u32(u_input.b ^ 0u, 15u)]), !vec4<bool>(-9143i > arg_1.x, true, any(vec2<bool>(false, arg_0.b.x)), false & global2.e), all(!global2.b.wxz) || !(!arg_0.e)), global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) * global2.d), global2.b.x);
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(arg_2.yzx, _wgslsmith_div_vec3_u32(vec3<u32>(min(arg_2.x, 4294967295u), u_input.b, 31836u), vec3<u32>(39383u, 0u, 4294967295u))), u_input.b);
    global0 = array<vec2<i32>, 14>();
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(3545i, global1[_wgslsmith_index_u32(arg_2.x, 26u)], -2147483647i, arg_1.x), -vec4<i32>(u_input.d, -2147483647i, global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(9693u, 26u)])), countOneBits(select(vec4<i32>(u_input.c, 0i, arg_1.x, arg_1.x), vec4<i32>(-33891i, -8901i, 1i, u_input.c), global2.b.x))), (25065i | _wgslsmith_sub_i32(-29474i, global1[_wgslsmith_index_u32(u_input.b, 26u)])) << (_wgslsmith_mod_u32(arg_2.x >> (u_input.b % 32u), _wgslsmith_add_u32(1u, 80329u)) % 32u), 1i), 17815i, firstTrailingBit(firstTrailingBit(arg_1.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1477f), _wgslsmith_f_op_f32(abs(var_0.d.x))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(22112u, u_input.b);
    var var_1 = all(!select(global2.b.zzz, vec3<bool>(global2.b.x, all(vec4<bool>(global2.e, true, true, false)), func_1(Struct_1(global2.d, global2.b, 753f, global2.d, global2.e), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a, global1[_wgslsmith_index_u32(var_0.x, 26u)]), vec4<u32>(u_input.b, u_input.b, 4419u, 1u))), global2.e));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(907f, 1f)))), !select(global2.b, !vec4<bool>(global2.e, false, global2.e, true), !global2.b), global2.a.x, global2.a, !global2.e);
    var var_3 = global3[_wgslsmith_index_u32(20839u, 15u)];
    let var_4 = abs(vec4<u32>(var_0.x, ~(~1u) ^ ~(~u_input.b), _wgslsmith_dot_vec3_u32(max(~vec3<u32>(1u, 0u, var_0.x), vec3<u32>(u_input.b, 0u, u_input.b) << (vec3<u32>(var_0.x, u_input.b, 28269u) % vec3<u32>(32u))), vec3<u32>(var_0.x | u_input.b, 6980u << (u_input.b % 32u), _wgslsmith_sub_u32(var_0.x, u_input.b))), _wgslsmith_div_u32(abs(~var_0.x), reverseBits(0u))));
    var var_5 = var_4.yyy;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.ywx, firstTrailingBit(_wgslsmith_add_vec3_u32(var_4.xyw, vec3<u32>(var_4.x, 4294967295u, 4294967295u)) << (~var_4.wyy % vec3<u32>(32u)))), vec3<u32>(~var_0.x, ~(~1u), ~(var_5.x << (abs(var_4.x) % 32u))), vec3<i32>(_wgslsmith_sub_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.d, 43473i, u_input.c) << (var_4 % vec4<u32>(32u)), -vec4<i32>(-21590i, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(24194u, 26u)], -56410i))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(min(var_0.x, var_4.x), 23224u), 26u)] | -84206i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.d, 2147483647i, u_input.d), vec4<i32>(2147483647i, -27464i, u_input.d, u_input.a)) << (4294967295u % 32u), ~2147483647i | _wgslsmith_mod_i32(-1i, u_input.d))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f + global2.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)), var_2.c))));
}

