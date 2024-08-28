struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(i32(-2147483648), 250f), Struct_1(15839i, -1342f), Struct_1(i32(-2147483648), -1377f), Struct_1(1i, 355f), Struct_1(-18588i, -1992f), Struct_1(-21116i, 217f), Struct_1(-7263i, -409f), Struct_1(-5752i, -1318f));

var<private> global1: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-32187i, 35992i, -33444i, -1i), vec4<i32>(2147483647i, 880i, 0i, i32(-2147483648)));

var<private> global2: array<Struct_2, 29>;

var<private> global3: array<u32, 30>;

var<private> global4: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = reverseBits(global4.a) >> ((32704u | arg_1) % 32u);
    let var_1 = Struct_2(~(~u_input.a.yy), arg_0, abs(~vec3<i32>(-1i, 2147483647i, ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(385f, -179f, 312f, global4.b) - vec4<f32>(-1223f, global4.b, -167f, global4.b)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.c.b, 338f, -305f, -106f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.b, -1326f, -211f, global4.c.b)))));
    global0 = array<Struct_1, 8>();
    let var_2 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19970u, 30u)], 29u)];
    let var_3 = var_1.a.x;
    return (var_1.a.x >> ((var_3 & (var_3 & _wgslsmith_mult_u32(var_1.a.x, 0u))) % 32u)) >> (1u % 32u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = true;
    global0 = array<Struct_1, 8>();
    return -204f;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_4 {
    let var_0 = vec4<bool>(any(vec2<bool>(false, true)) || true, abs(0u ^ arg_0.x) < 32920u, !(_wgslsmith_f_op_f32(-1651f + _wgslsmith_f_op_f32(ceil(global4.b))) >= 1243f), true);
    let var_1 = global2[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(~(4294967295u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(74323u, 30u)], 30u)] % 32u)), 30u)]) & global4.d, 29u)];
    let var_2 = ~abs(arg_2);
    global1 = array<vec4<i32>, 2>();
    let var_3 = Struct_4(var_2.x & abs(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.d, vec4<u32>(_wgslsmith_add_u32(arg_0.x, 1u), var_1.a.x, u_input.d, global4.d), vec4<u32>(max(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.d), ~global4.d, func_2(var_0.x, arg_1), arg_1)))), Struct_1(reverseBits(select(0i, i32(-1i) * -23801i, true)), global4.c.b), arg_0.x);
    return var_3;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, arg_3.a), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_3.a.x, arg_1.d), vec4<u32>(10957u, 9236u, global3[_wgslsmith_index_u32(u_input.a.x, 30u)], 10140u))), global3[_wgslsmith_index_u32(arg_2.d, 30u)]) & max(arg_3.a, ~(~vec2<u32>(arg_2.d, arg_2.d))));
    let var_1 = Struct_3(0u, true, 57100u);
    var var_2 = Struct_2(u_input.a.zz, select(arg_3.b, var_1.b || var_1.b, false), vec3<i32>(_wgslsmith_mod_i32(1i, -18284i), ~min(arg_2.a, global4.a), ~472i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.b, -799f, -739f, arg_1.c.b) - vec4<f32>(377f, arg_0.x, arg_0.x, 596f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(452f, arg_2.b, arg_3.d.x, arg_2.b), vec4<f32>(2214f, arg_1.c.b, 861f, -555f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -515f, -388f, 974f), arg_3.d)))))));
    global2 = array<Struct_2, 29>();
    var var_3 = arg_2.a;
    return _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.c.b, arg_2.b, arg_2.b, arg_2.c.b), var_2.d)), vec4<u32>(arg_2.d, 0u, 1u, global3[_wgslsmith_index_u32(0u, 30u)]), vec4<u32>(global4.d, u_input.a.x, global4.d, arg_2.d) ^ vec4<u32>(4294967295u, 9948u, var_1.c, global3[_wgslsmith_index_u32(arg_3.a.x, 30u)]))), global4.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -144f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1532f)) + global4.c.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1077f, 251f))))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-656f, global4.c.b)), -1222f)), func_1(_wgslsmith_sub_vec2_u32(~u_input.a.yz, ~u_input.a.zy), ~(~1u), max(vec4<i32>(2147483647i, global4.a, -38400i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, global4.a, u_input.b.x, u_input.b.x), vec4<i32>(global4.a, global4.c.a, -25821i, u_input.b.x)))), func_1(u_input.a.yz, 41968u ^ _wgslsmith_clamp_u32(0u, global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(0u, 30u)]), vec4<i32>(~u_input.c, u_input.c, -16745i, u_input.e)), Struct_2(abs(_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.zx)), any(vec3<bool>(false, false, false)), u_input.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, global4.b, -134f, -2158f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.c.b, -1147f, -1000f, -246f), vec4<f32>(global4.c.b, global4.b, global4.b, global4.b), vec4<bool>(false, false, true, true)))))))), _wgslsmith_f_op_f32(floor(-236f)));
    var var_1 = Struct_4(0i, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)), _wgslsmith_f_op_f32(func_4(var_0.yx, func_1(vec2<u32>(global3[_wgslsmith_index_u32(13835u, 30u)], 29449u), 16444u, global1[_wgslsmith_index_u32(0u, 2u)]), func_1(u_input.a.yx, u_input.a.x, vec4<i32>(global4.a, global4.c.a, u_input.b.x, global4.a)), global2[_wgslsmith_index_u32(firstLeadingBit(global4.d), 29u)]))))), func_1(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, ~38657u), firstLeadingBit(~global3[_wgslsmith_index_u32(global4.d, 30u)])), ~min(global3[_wgslsmith_index_u32(1u, 30u)] << (33881u % 32u), u_input.d), min(global1[_wgslsmith_index_u32(48730u, 2u)], _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], 2u)])) | ~global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global4.d, 30u)], 2u)]).c, global3[_wgslsmith_index_u32(~(~7225u | max(global4.d, u_input.a.x)), 30u)] << (~1u % 32u));
    global3 = array<u32, 30>();
    var var_2 = vec4<bool>(any(!vec3<bool>(any(vec3<bool>(false, true, true)), true, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false))), vec2<bool>(true, true))), true, all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))) && false);
    var var_3 = reverseBits(_wgslsmith_mod_vec3_u32(u_input.a, countOneBits(u_input.a)));
    var var_4 = select(select(vec2<bool>((global4.c.b == global4.b) || all(vec3<bool>(var_2.x, var_2.x, false)), var_2.x & (var_1.c.b > global4.c.b)), vec2<bool>(true, true), vec2<bool>(false, _wgslsmith_f_op_f32(1929f - 177f) > _wgslsmith_f_op_f32(min(var_1.c.b, 362f)))), select(vec2<bool>(_wgslsmith_sub_u32(48418u, u_input.a.x) == var_1.d, var_2.x), select(!(!vec2<bool>(var_2.x, var_2.x)), select(select(var_2.xz, var_2.wy, false), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, false), vec2<bool>(var_2.x, false)), !var_2.yz), !select(var_2.ww, var_2.zw, true)), !select(select(var_2.ww, var_2.xw, var_2.zz), var_2.xx, select(vec2<bool>(var_2.x, false), var_2.wy, var_2.yy))), var_2.zy);
    var var_5 = 12629u;
    let var_6 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~reverseBits(~var_3.x << (~27472u % 32u))), 29u)];
    let var_7 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(1u >> (_wgslsmith_mod_u32(1455u, global3[_wgslsmith_index_u32(var_3.x, 30u)]) % 32u)), firstLeadingBit(~_wgslsmith_add_u32(0u, global4.d))));
}

