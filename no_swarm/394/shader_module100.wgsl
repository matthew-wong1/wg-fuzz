struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<bool, 8>;

var<private> global2: array<Struct_2, 15>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = abs(4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 450f, arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1360f, -269f, -1289f) + vec3<f32>(-381f, -700f, -520f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, arg_0.x, arg_0.x) + vec3<f32>(-763f, -157f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1558f, arg_0.x)), vec3<bool>(global1[_wgslsmith_index_u32(91784u, 8u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)]))))), select(vec2<bool>(all(vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(u_input.b.x | 4294967295u, 8u)]), vec2<bool>(!global1[_wgslsmith_index_u32(7713u, 8u)], any(vec3<bool>(true, global1[_wgslsmith_index_u32(45876u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)]))), !vec2<bool>(!global1[_wgslsmith_index_u32(0u, 8u)], true)), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(~u_input.a, 8u)]), vec2<bool>(!global1[_wgslsmith_index_u32(40691u, 8u)], false)), !vec2<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 8u)], false, global1[_wgslsmith_index_u32(6430u, 8u)]), true), !global1[_wgslsmith_index_u32(0u, 8u)] && true), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(5514i, -10238i, 2147483647i, 1i), vec4<i32>(1i, 44684i, 2147483647i, 66474i), vec4<i32>(23605i, 0i, -14530i, 27292i)), select(vec4<i32>(-6177i, 34087i, 37577i, 1i), vec4<i32>(13626i, 19876i, -26811i, 35131i), vec4<bool>(false, false, global1[_wgslsmith_index_u32(18156u, 8u)], false))), ~firstLeadingBit(-2147483647i), -min(-44127i, -1i), 0i), _wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, 1i, 1i, -2147483647i), vec4<i32>(2147483647i, 0i, 1i, 18508i) >> (u_input.c % vec4<u32>(32u))) << (vec4<u32>(reverseBits(0u), ~u_input.b.x, ~u_input.b.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -1i, -2147483647i, _wgslsmith_add_i32(-12317i, -31375i), _wgslsmith_mod_i32(-13529i, -22680i)) & max(vec4<i32>(-644i, 2147483647i, 26901i, 2147483647i), select(vec4<i32>(1i, 1i, -2147483647i, 8007i), vec4<i32>(2147483647i, 1i, 7996i, -3290i), global1[_wgslsmith_index_u32(36285u, 8u)]))));
    global0 = array<Struct_2, 5>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(1617f, _wgslsmith_f_op_f32(round(var_1.a.x))), var_1.a.x)), var_1.b, vec2<bool>(any(vec4<bool>(true, var_1.c.x, 1183f != var_1.a.x, u_input.b.x == 4391u)), false), vec4<i32>(-2147483647i, firstLeadingBit(93854i), var_1.d.x, ~firstTrailingBit(var_1.d.x)));
    let var_3 = select(vec2<bool>(global1[_wgslsmith_index_u32(30199u, 8u)], u_input.b.x == u_input.a), !vec2<bool>((1u ^ u_input.b.x) < ~41351u, var_1.c.x), vec2<bool>(all(vec4<bool>(true, var_2.b.x, global1[_wgslsmith_index_u32(~4294967295u, 8u)], all(vec4<bool>(var_1.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true, true)))), var_2.c.x));
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-923f * var_2.a.x)), 436f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-264f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(294f, 1525f)))))), arg_0.x);
}

fn func_2() -> u32 {
    var var_0 = Struct_2(true, u_input.c.zzz, Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1013f, -759f, -828f)), _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(523f, -297f)))), _wgslsmith_div_vec3_f32(vec3<f32>(387f, 1297f, -775f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1195f, 108f, -768f)))))), vec2<bool>(false, true), vec2<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(4923u, 8u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)])), !global1[_wgslsmith_index_u32(10058u, 8u)]), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(0i, -4146i, 0i, 50475i)), vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(2147483647i, -61773i, -1i, 0i)), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, -2147483647i, -15929i), vec4<i32>(1i, 1i, -2147483647i, 29676i), vec4<i32>(2147483647i, 24176i, -52271i, 0i))))), vec3<i32>(countOneBits(24550i), max(_wgslsmith_clamp_i32(1i, 1i, ~(-4683i)), max(i32(-1i) * -2147483647i, -2372i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(~0i, max(30453i, 0i)), abs(26781i))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(-382f, _wgslsmith_f_op_f32(f32(-1f) * -1676f), true)), -202f, -396f, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-521f, -1958f) * vec2<f32>(-240f, -1000f)))).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1093f, -1906f, 503f, 1908f), vec4<f32>(-385f, 155f, 1000f, 1098f), global1[_wgslsmith_index_u32(11951u, 8u)])))))));
    var var_1 = Struct_2(false, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), reverseBits(0u), u_input.a << (27704u % 32u)), vec3<u32>(~var_0.b.x, ~114920u, var_0.b.x | u_input.c.x)), (u_input.c.xyw | firstLeadingBit(var_0.b)) ^ select(~var_0.b, countOneBits(vec3<u32>(var_0.b.x, 4294967295u, 0u)), true || global1[_wgslsmith_index_u32(1u, 8u)])), var_0.c, var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_f_op_f32(floor(var_0.c.a.x)))), var_0.c.a.x, 858f, -340f)));
    global2 = array<Struct_2, 15>();
    var var_2 = var_1.b ^ ~_wgslsmith_clamp_vec3_u32(var_0.b, firstLeadingBit(max(vec3<u32>(13384u, 89630u, 53914u), vec3<u32>(1u, var_0.b.x, 0u))), u_input.c.wyz);
    let var_3 = -1i;
    return var_0.b.x >> (38520u % 32u);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = vec2<u32>(u_input.c.x, ~reverseBits(_wgslsmith_mod_u32(113827u, u_input.c.x << (1u % 32u))));
    global2 = array<Struct_2, 15>();
    var var_1 = select(global1[_wgslsmith_index_u32(func_2(), 8u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 39017u, 26153u), u_input.c.xyx), reverseBits(vec3<u32>(1u, 1u, 1u))), 8u)], global1[_wgslsmith_index_u32(var_0.x, 8u)] == false);
    global0 = array<Struct_2, 5>();
    let var_2 = vec3<bool>(true, select(true & global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 138044u, 4294967295u, 1u)), ~vec4<u32>(0u, 1u, var_0.x, var_0.x)), 8u)], false, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)] | false, global1[_wgslsmith_index_u32(var_0.x, 8u)] & true, any(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], true, global1[_wgslsmith_index_u32(1u, 8u)]))))), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f + 458f) - _wgslsmith_f_op_f32(-238f + -659f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f + -563f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    global2 = array<Struct_2, 15>();
    global1 = array<bool, 8>();
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(arg_1.c.a.x + arg_3.e.x);
    global0 = array<Struct_2, 5>();
    return StorageBuffer(80752u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1897f)), _wgslsmith_f_op_f32(-arg_2.a.x), false && any(arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(func_1(vec2<i32>(~6404i, -5113i))) == _wgslsmith_f_op_f32(func_1(vec2<i32>(1i, 1i))), global2[_wgslsmith_index_u32(select(firstTrailingBit(75491u), u_input.c.x | (u_input.b.x ^ ~u_input.c.x), false), 15u)], Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(326f, 262f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(757f - 1171f) * 564f)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], false), !(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 8u)]), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(30077u, 8u)], false))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(42524i, 1i), select(vec2<i32>(1i, -1i), vec2<i32>(10444i, -2147483647i), global1[_wgslsmith_index_u32(u_input.a, 8u)])), ~_wgslsmith_add_i32(-1i, -2147483647i), countOneBits(-2147483647i), -2147483647i)), global0[_wgslsmith_index_u32(~u_input.b.x, 5u)]);
}

