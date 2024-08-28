struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

var<private> global1: array<f32, 12>;

var<private> global2: vec4<i32> = vec4<i32>(-54092i, 1i, 7528i, -14536i);

var<private> global3: array<Struct_4, 8>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> vec2<f32> {
    let var_0 = firstLeadingBit(u_input.c);
    var var_1 = !vec3<bool>(true, false, any(vec4<bool>(true, true, true, true)));
    var var_2 = var_1.x;
    let var_3 = ~countOneBits(var_0.x);
    global0 = array<vec3<bool>, 2>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], -905f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, -574f))), var_1.x))))));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global2 = vec4<i32>(arg_0.x, -31490i, -2147483647i | _wgslsmith_div_i32(~global2.x, select(u_input.b, arg_0.x, true) >> ((4294967295u & u_input.a.x) % 32u)), -(_wgslsmith_mod_i32(countOneBits(arg_0.x), firstLeadingBit(1i)) << (select(1u, 29866u, true) % 32u)));
    global1 = array<f32, 12>();
    global1 = array<f32, 12>();
    var var_0 = Struct_2(3722f, ~(~arg_0.x), global2.x);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 12u)])))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1564f * var_1)) - 1975f);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    var var_0 = !vec4<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), any(vec4<bool>(true, true, true, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)), _wgslsmith_div_f32(260f, _wgslsmith_f_op_f32(arg_1 + 478f)) >= global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), ~u_input.a.x, ~u_input.c.x), 12u)]);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_add_i32(select(-(i32(-1i) * -36493i), 1638i, !all(vec4<bool>(var_0.x, var_0.x, false, true))), u_input.b), max(-1i >> (u_input.c.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, arg_0.b, u_input.b, arg_0.c), vec4<i32>(22253i, global2.x, -1i, -1i)), ~vec4<i32>(15587i, arg_0.c, arg_0.b, u_input.b)) | firstTrailingBit(u_input.b >> (26796u % 32u))));
    global2 = -vec4<i32>(13985i, 1i, firstTrailingBit(-15661i), select(i32(-1i) * -38346i, select(u_input.b, 41080i, false), var_0.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, ~(-19586i), _wgslsmith_sub_i32(global2.x, global2.x >> (u_input.a.x % 32u)), ~_wgslsmith_mult_i32(u_input.b, arg_0.c)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -8313i, 2147483647i), firstLeadingBit(vec3<i32>(global2.x, arg_0.c, -2147483647i))), var_1.c, global2.x, _wgslsmith_clamp_i32(-6957i, 6117i, -6757i) ^ _wgslsmith_add_i32(global2.x, arg_0.b)));
    var var_2 = Struct_4(select(vec2<bool>(true, true), vec2<bool>(true, any(var_0.wzw)), vec2<bool>(var_0.x, true)));
    return (~vec4<u32>(u_input.a.x, u_input.c.x, 1289u, _wgslsmith_mult_u32(u_input.a.x, 1343u)) | ~(vec4<u32>(38419u, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, u_input.c.x, u_input.a.x, 41232u) % vec4<u32>(32u)))) ^ u_input.c;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = abs(~func_4(arg_2, _wgslsmith_f_op_f32(func_3(vec2<i32>(global2.x, arg_2.b) >> (vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u))))));
    global3 = array<Struct_4, 8>();
    var var_1 = 1168u << (~((0u | select(0u, 4294967295u, false)) | ~_wgslsmith_mult_u32(16141u, arg_1.x)) % 32u);
    let var_2 = ~(countOneBits(_wgslsmith_mult_vec2_u32(arg_1, arg_1)) >> (vec2<u32>(_wgslsmith_clamp_u32(1u, 1u, _wgslsmith_mult_u32(0u, 32867u)), func_4(Struct_2(arg_2.a, global2.x, arg_0), _wgslsmith_div_f32(arg_2.a, arg_2.a)).x) % vec2<u32>(32u)));
    let var_3 = global2.x;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-313f, global1[_wgslsmith_index_u32(4294967295u, 12u)]) + vec2<f32>(238f, -541f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(30635u, 12u)]) * vec2<f32>(-817f, 562f))))), select(vec4<bool>(all(vec3<bool>(true, false, true)), select(false, true, true), true, 0u <= var_0.x), vec4<bool>(true, any(vec2<bool>(false, true)), false, any(global0[_wgslsmith_index_u32(var_2.x, 2u)])), true), select(vec3<bool>(false, false, global2.x != 44990i), vec3<bool>(false, true, all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<bool>) -> f32 {
    global0 = array<vec3<bool>, 2>();
    global1 = array<f32, 12>();
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(select(1i, i32(-1i) * -1i, !(arg_2.x | false)), global2.x), select(4762i, 0i, true));
    var var_1 = Struct_4(select(!vec2<bool>(arg_0.a.b.x, arg_1.a.x), arg_2, false));
    let var_2 = 0u ^ u_input.a.x;
    return 760f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(abs(~(u_input.c.x << (87304u % 32u))), 12u)];
    let var_1 = vec2<bool>(true, !(~firstTrailingBit(0i) > _wgslsmith_sub_i32(u_input.b << (57998u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, global2.x, 15251i), vec4<i32>(u_input.b, u_input.b, global2.x, 5210i)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(~abs(vec4<i32>(0i, -2147483647i, u_input.b, u_input.b)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x << (u_input.a.x % 32u), 12u)] + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(7285u, 12u)], 609f)))) * vec2<f32>(_wgslsmith_f_op_f32(func_5(func_2(-20612i, u_input.a.zz, Struct_2(-884f, global2.x, 2147483647i)), Struct_4(var_1), func_2(global2.x, vec2<u32>(u_input.c.x, 93218u), Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], -15747i, u_input.b)).a.b.yw)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, -1215f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(0u, 12u)])))))), !vec4<bool>(!(!var_1.x), any(!var_1), all(vec4<bool>(var_1.x, true, var_1.x, false)) != !var_1.x, any(global0[_wgslsmith_index_u32(60092u & u_input.c.x, 2u)])), vec3<bool>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xz), 12u)]) >= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(59868u ^ u_input.c.x, 12u)] - 1000f), all(vec3<bool>(true, true, any(vec3<bool>(true, false, true)))), false));
    var var_3 = _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(12074u, ~_wgslsmith_clamp_u32(~4294967295u, u_input.a.x, 4294967295u << (u_input.a.x % 32u))));
    global2 = vec4<i32>(global2.x ^ _wgslsmith_dot_vec2_i32(min(abs(vec2<i32>(0i, u_input.b)), _wgslsmith_div_vec2_i32(global2.xx, global2.xx)), ~vec2<i32>(u_input.b, u_input.b) & global2.zw), u_input.b, firstTrailingBit(_wgslsmith_div_i32(abs(global2.x), _wgslsmith_div_i32(abs(-54287i), _wgslsmith_dot_vec3_i32(global2.xyx, global2.zzz)))), -global2.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1323f, _wgslsmith_f_op_f32(-func_2(~u_input.b, vec2<u32>(1u, u_input.a.x) | vec2<u32>(u_input.a.x, u_input.a.x), Struct_2(-1696f, -1i, 2147483647i)).a.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1812f)), _wgslsmith_f_op_f32(func_5(Struct_3(Struct_1(var_2.a, vec4<bool>(true, false, var_2.c.x, var_2.c.x), var_2.c)), Struct_4(vec2<bool>(var_1.x, var_2.b.x)), !var_1))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.x))), var_2.a.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1341f, 1439f, -1000f)))));
    global3 = array<Struct_4, 8>();
    let var_5 = u_input.c.x;
    let var_6 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_5, var_5, ~73702u), 12u)])), firstLeadingBit(countOneBits(u_input.b)), _wgslsmith_dot_vec2_i32(max(-global2.xy, global2.xy), global2.xw) >> (max(_wgslsmith_sub_u32(~36300u, abs(21333u)), u_input.a.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(6914u, ~vec4<i32>(~(~0i), global2.x, global2.x, global2.x), (i32(-1i) * -u_input.b) & ~abs(~var_6.b), vec2<i32>(_wgslsmith_add_i32(var_6.b, ~(-8076i) >> (u_input.a.x % 32u)), -19237i), vec4<u32>(countOneBits(1u), 5410u, var_5, _wgslsmith_add_u32(var_5, ~u_input.a.x)));
}

