struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: array<vec2<f32>, 22>;

var<private> global2: Struct_1 = Struct_1(46375i, vec3<u32>(90213u, 87507u, 0u), vec4<f32>(-904f, 717f, -2682f, 468f), 945f, vec2<f32>(1718f, 1000f));

var<private> global3: array<Struct_2, 23>;

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(467f, global2.e.x)), _wgslsmith_f_op_f32(ceil(global2.d)));
    let var_1 = var_0 > 151f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0, var_0, var_1)), _wgslsmith_f_op_f32(ceil(201f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, -103f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), -1331f), _wgslsmith_f_op_vec2_f32(-global2.e))));
    let var_3 = Struct_1(19257i, firstTrailingBit(countOneBits(vec3<u32>(4294967295u, global2.b.x, 1u))), global2.c, _wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 994f) - global2.c.zx)))))));
    let var_4 = vec3<i32>(~firstTrailingBit(_wgslsmith_div_i32(-26620i, 55052i)), global2.a, global2.a) << (global2.b % vec3<u32>(32u));
    return var_1;
}

fn func_2() -> Struct_2 {
    let var_0 = global2.b;
    var var_1 = Struct_3(Struct_2(Struct_1(abs(global2.a), vec3<u32>(var_0.x, 40958u, _wgslsmith_mult_u32(56522u, 32713u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(449f, global2.d, global2.d, -351f), vec4<f32>(global2.c.x, global2.c.x, global2.c.x, 517f))), global2.e.x, global1[_wgslsmith_index_u32(global2.b.x, 22u)]), vec4<bool>(true, func_3(), any(!vec2<bool>(global4.x, true)), global4.x), max(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 32968u, var_0.x), ~vec3<u32>(1u, 63436u, global2.b.x)), global2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(global2.c.x - -385f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, global2.e.x))))), ~global2.b.zy), u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.c.x, 100f, false)), global2.c.x), _wgslsmith_f_op_f32(-1965f - global2.c.x))), Struct_1(1i, abs(global2.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-163f, global2.c.x, -1000f, global2.c.x), global2.c)) + global2.c))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.e.x, _wgslsmith_f_op_f32(ceil(global2.d))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(671f, -144f) * _wgslsmith_f_op_f32(-global2.e.x)))), global2.c.yw));
    var var_2 = abs(33582u);
    global0 = array<vec3<bool>, 28>();
    global0 = array<vec3<bool>, 28>();
    return Struct_2(Struct_1(select(_wgslsmith_div_i32(global2.a, select(-67342i, u_input.a, global4.x)), 2147483647i >> (select(1u, 4294967295u, global4.x) % 32u), var_1.a.b.x && true), reverseBits(_wgslsmith_add_vec3_u32(global2.b, _wgslsmith_add_vec3_u32(global2.b, vec3<u32>(4294967295u, 4294967295u, var_1.d.b.x)))), var_1.a.a.c, -186f, _wgslsmith_f_op_vec2_f32(floor(global2.c.zx))), vec4<bool>(!all(global4.zw), all(select(global4.xzz, global0[_wgslsmith_index_u32(~var_0.x, 28u)], !vec3<bool>(false, true, var_1.a.b.x))), false, var_1.a.b.x), ~(~min(countOneBits(var_1.a.a.b), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1.d.b.x, 7612u), vec3<u32>(21168u, global2.b.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(select(global2.c.yz, vec2<f32>(_wgslsmith_f_op_f32(floor(787f)), -1000f), all(vec3<bool>(all(var_1.a.b.zw), !var_1.a.b.x, var_1.a.b.x)))), vec2<u32>(13992u, 30012u & ~(global2.b.x >> (0u % 32u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = !arg_1.b;
    let var_1 = -vec4<i32>(1i, -countOneBits(u_input.a), -(~(-37985i)), reverseBits(5573i));
    var var_2 = func_2().a;
    var_2 = func_2().a;
    global1 = array<vec2<f32>, 22>();
    return !arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = Struct_3(Struct_2(arg_0.a, select(vec4<bool>(false, false, arg_0.b.x, false), func_4(vec4<bool>(global4.x, true, true, global4.x), func_2(), Struct_3(Struct_2(Struct_1(10439i, vec3<u32>(arg_0.a.b.x, 14106u, global2.b.x), vec4<f32>(-1020f, 1000f, -765f, 163f), global2.d, vec2<f32>(global2.e.x, -315f)), vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x), global2.b, global2.c.xw, vec2<u32>(0u, arg_0.a.b.x)), -31476i, -742f, arg_0.a)), vec4<bool>(global4.x, global4.x, global4.x, arg_0.b.x)), vec3<u32>(~arg_0.a.b.x, max(4294967295u, global2.b.x), firstLeadingBit(61160u)) << (vec3<u32>(reverseBits(global2.b.x), 58617u, 4294967295u << (global2.b.x % 32u)) % vec3<u32>(32u)), global2.e, ~vec2<u32>(_wgslsmith_dot_vec3_u32(global2.b, vec3<u32>(global2.b.x, arg_0.e.x, arg_0.a.b.x)), ~88978u)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(global2.a, 0i, -24328i, global2.a), vec4<i32>(2147483647i, -1i, 1i, u_input.a)), vec4<i32>(_wgslsmith_div_i32(u_input.a, arg_0.a.a), -38423i, ~u_input.a, arg_0.a.a)), global2.e.x, func_2().a);
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(global2.b.x, arg_0.e.x), 11392u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) ^ arg_0.e, vec2<u32>(global2.b.x, global2.b.x))) << (vec3<u32>(2846u, arg_0.e.x, ~_wgslsmith_mod_u32(var_0.a.a.b.x, 4294967295u)) % vec3<u32>(32u)), ~vec3<u32>(global2.b.x, 78789u, _wgslsmith_dot_vec3_u32(~var_0.a.a.b, var_0.d.b)));
    var var_2 = func_2().a;
    global4 = !select(!select(func_4(vec4<bool>(false, var_0.a.b.x, true, false), Struct_2(var_0.a.a, arg_0.b, vec3<u32>(4294967295u, 4294967295u, arg_0.c.x), vec2<f32>(-675f, 742f), var_2.b.xx), var_0), arg_0.b, true), arg_0.b, u_input.a >= var_0.a.a.a);
    var var_3 = arg_0;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_add_i32(i32(-1i) * -(6610i << (global2.b.x % 32u)), ~1i), ~vec3<u32>(1u, countOneBits(_wgslsmith_sub_u32(global2.b.x, 8459u)), 1u), global2.c, global2.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(664f, -748f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1383f, global2.e.x), global2.c.xz)))))));
    var var_0 = vec4<u32>(_wgslsmith_div_u32(global2.b.x, _wgslsmith_dot_vec3_u32(global2.b, vec3<u32>(~4294967295u, ~1u, _wgslsmith_mult_u32(57508u, global2.b.x)))), (1u << (_wgslsmith_sub_u32(func_1(Struct_2(Struct_1(u_input.a, global2.b, global2.c, global2.e.x, global2.e), vec4<bool>(true, global4.x, global4.x, false), vec3<u32>(global2.b.x, 41815u, global2.b.x), vec2<f32>(1633f, -998f), global2.b.yy), -492f), ~0u) % 32u)) ^ global2.b.x, 1u, ~min(global2.b.x, ~(~global2.b.x)));
    let var_1 = !vec3<bool>(!global4.x, !(!(global4.x | false)), !all(vec2<bool>(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-593f, _wgslsmith_f_op_f32(796f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.e.x))) * global2.d)), abs(~(var_0.ywz >> (~var_0.yyy % vec3<u32>(32u)))));
}

