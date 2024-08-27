struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec4<u32>, 32>;

var<private> global2: vec3<f32> = vec3<f32>(-2660f, -650f, -488f);

var<private> global3: Struct_1;

var<private> global4: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec4<i32>(29198i, 2147483647i, 15024i, -1i), vec2<f32>(1218f, -110f), vec3<u32>(4294967295u, 0u, 0u)), Struct_4(vec4<i32>(-2515i, -1i, -1i, -27432i), vec2<f32>(-1000f, 1000f), vec3<u32>(1193u, 2073u, 3666u)), Struct_4(vec4<i32>(-1i, -55313i, -42787i, 2147483647i), vec2<f32>(-288f, 298f), vec3<u32>(36420u, 22882u, 0u)), Struct_4(vec4<i32>(-19201i, 1i, 56690i, -9869i), vec2<f32>(-114f, 1185f), vec3<u32>(31056u, 4294967295u, 1u)), Struct_4(vec4<i32>(-11828i, 23084i, -1i, 60403i), vec2<f32>(-549f, -1429f), vec3<u32>(0u, 4294967295u, 0u)), Struct_4(vec4<i32>(-1i, 1i, 0i, -36027i), vec2<f32>(649f, 1477f), vec3<u32>(0u, 37744u, 1u)), Struct_4(vec4<i32>(i32(-2147483648), 472i, 23730i, -28375i), vec2<f32>(-123f, -1012f), vec3<u32>(0u, 20707u, 1u)), Struct_4(vec4<i32>(0i, 2147483647i, 16433i, 1i), vec2<f32>(1000f, 932f), vec3<u32>(0u, 0u, 41719u)), Struct_4(vec4<i32>(-6900i, i32(-2147483648), i32(-2147483648), 2147483647i), vec2<f32>(-1128f, -1132f), vec3<u32>(1u, 1u, 1u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(40011u, 4294967295u, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c.yz), ~u_input.d.xx)), ~vec3<u32>(~u_input.c.x, u_input.c.x, ~u_input.d.x)), abs(~4294967295u));
    var var_1 = Struct_4(abs(-u_input.e & arg_0.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global3.c.yy, global2.zz), _wgslsmith_f_op_vec2_f32(-arg_0.c.a.zw))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, 355f)) + global3.a.ww), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global3.c.xz + vec2<f32>(global2.x, global2.x)))))), ~(_wgslsmith_add_vec3_u32(min(u_input.c, vec3<u32>(0u, u_input.d.x, u_input.d.x)), vec3<u32>(1u, var_0, 0u)) | max(~u_input.b.zwz, firstLeadingBit(u_input.d.zww))));
    global0 = array<Struct_2, 16>();
    var var_2 = Struct_3(arg_0.a, false, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(global3.c.x - arg_0.a.b.c.x), 519f, _wgslsmith_f_op_f32(602f - arg_0.a.c.a.x)) + arg_0.a.c.a), 37129i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + var_1.b.x)), _wgslsmith_f_op_f32(floor(1836f)), _wgslsmith_f_op_f32(var_1.b.x * -1525f)), select(select(select(arg_0.c.d, vec3<bool>(true, global3.d.x, global3.d.x), vec3<bool>(true, false, false)), select(vec3<bool>(arg_0.a.b.d.x, true, true), arg_0.c.d, false), !global3.d), vec3<bool>(true, !arg_0.c.d.x, !global3.d.x), all(arg_0.a.a))), -u_input.e);
    let var_3 = Struct_2(var_2.a.c.d, arg_0.c, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -584f), -1000f)), var_1.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.c.c), global3.a.yxz), select(!(!arg_0.a.c.d), vec3<bool>(true, var_1.a.x < 9812i, var_2.b), true || all(var_2.a.c.d.yy))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.x))) * -1479f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    global3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) - 532f)), _wgslsmith_f_op_f32(f32(-1f) * -1439f), _wgslsmith_f_op_f32(min(351f, _wgslsmith_f_op_f32(f32(-1f) * -895f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1401f, arg_0.a.b.c.x) - 168f), _wgslsmith_f_op_f32(func_2(arg_0)))), countOneBits(abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.a.b.b, global3.b, arg_2.x, arg_2.x)), vec4<i32>(u_input.e.x, 0i, -27892i, arg_2.x)))), _wgslsmith_f_op_vec3_f32(arg_0.c.c - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-126f, 248f, global3.a.x), vec3<f32>(global2.x, global2.x, global3.c.x), select(vec3<bool>(global3.d.x, true, global3.d.x), arg_0.a.a, vec3<bool>(false, arg_0.b, global3.d.x))))))), select(vec3<bool>(all(arg_0.a.a), true, all(!global3.d.zx)), !(!select(vec3<bool>(global3.d.x, false, true), vec3<bool>(true, arg_0.a.c.d.x, global3.d.x), global3.d)), vec3<bool>(select(any(arg_0.a.c.d.xx), global3.d.x, u_input.e.x >= -1i), any(!vec4<bool>(arg_1.x, false, arg_1.x, true)), arg_1.x)));
    global2 = global3.a.xwx;
    var var_0 = abs(min(u_input.d.ww, vec2<u32>(select(abs(0u), u_input.b.x ^ 0u, all(vec3<bool>(false, true, arg_0.b))), 34890u)));
    var_0 = ~u_input.c.yy;
    var var_1 = !(!global3.d.x);
    return _wgslsmith_f_op_f32(-1097f - global3.a.x);
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], arg_0.d.x, Struct_1(global3.a, u_input.e.x, vec3<f32>(global2.x, 2422f, global3.a.x), global3.d), vec4<i32>(arg_0.b, 0i, -50069i, -51879i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1103f - -2135f) - _wgslsmith_f_op_f32(abs(arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(472f, -1684f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a.zzy), _wgslsmith_f_op_vec3_f32(arg_0.c * _wgslsmith_f_op_vec3_f32(select(arg_0.a.yzy, arg_0.a.ywz, vec3<bool>(arg_0.d.x, false, false))))))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], arg_0.d.x, arg_0, u_input.e), vec2<bool>(false, false), vec4<i32>(arg_0.b, arg_0.b, -2147483647i, -1i)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(684f, 1077f, 1370f < global3.a.x)) * global2.x), global2.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(675f, global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -360f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.xzx + global3.a.yxw) + vec3<f32>(1646f, global2.x, arg_0.c.x)), _wgslsmith_f_op_vec3_f32(arg_0.a.xwx - vec3<f32>(216f, arg_0.c.x, var_0))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), global2.x, -503f))));
    let var_3 = arg_0.c.x;
    return vec3<bool>(min(0u, u_input.c.x) > 4294967295u, false, (arg_0.b == global3.b) == all(global3.d));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = 2147483647i >> (_wgslsmith_sub_u32((25795u ^ arg_2.c.x) << (arg_2.c.x % 32u), 4294967295u) % 32u);
    global0 = array<Struct_2, 16>();
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(319f, arg_2.b.x, false)))), -1727f))), i32(-1i) * -78513i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-528f, -363f, global3.c.x)))), !vec3<bool>(!arg_3.x, all(select(vec2<bool>(arg_0, global3.d.x), vec2<bool>(false, true), global3.d.xx)), u_input.d.x >= reverseBits(u_input.b.x)));
    var var_1 = 0i;
    let var_2 = firstLeadingBit(global3.b);
    return ~vec4<u32>(firstTrailingBit(35291u) >> (0u % 32u), u_input.d.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(19284u, arg_2.c.x, 0u, 4294967295u), global1[_wgslsmith_index_u32(arg_2.c.x, 32u)]) ^ arg_2.c.x, arg_2.c.x & u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(func_4(global3.d.x, global3.c.x, global4[_wgslsmith_index_u32(63721u, 9u)], func_1(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(554f, -538f, global3.a.x, global2.x))), -2128i ^ u_input.e.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, global3.a.x, global2.x)), global3.d))));
    var var_1 = ~vec4<u32>(4294967295u, _wgslsmith_mod_u32(27616u, max(68772u, _wgslsmith_dot_vec2_u32(vec2<u32>(49208u, 42776u), u_input.c.zy))), _wgslsmith_dot_vec3_u32(var_0.wzx, firstTrailingBit(firstLeadingBit(var_0.wyw))), _wgslsmith_dot_vec4_u32(vec4<u32>(43451u, u_input.b.x, var_0.x, 101279u) >> (_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], vec4<u32>(46246u, var_0.x, 85641u, var_0.x)) % vec4<u32>(32u)), abs(~vec4<u32>(4294967295u, 4294967295u, var_0.x, u_input.b.x))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, var_1.x), 1u, _wgslsmith_mult_u32(var_1.x, 0u), _wgslsmith_div_u32(u_input.c.x, 53908u)), select(u_input.b, u_input.b, vec4<bool>(global3.d.x, global3.d.x, false, false))), 0u ^ _wgslsmith_add_u32(abs(76569u), ~u_input.b.x)), 0u), 16u)];
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(global3.b, reverseBits(u_input.e.x), global3.b >> (1u % 32u)), max(vec3<i32>(countOneBits(192i), -24499i, global3.b), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, -1i), u_input.e.yxz), -2147483647i, var_2.b.b)) << (vec3<u32>(_wgslsmith_mod_u32(func_4(false, -854f, Struct_4(u_input.e, vec2<f32>(var_2.c.c.x, global2.x), vec3<u32>(1029u, var_0.x, u_input.b.x)), var_2.c.d).x, 27424u), ~5113u, 7962u) % vec3<u32>(32u)));
    let var_4 = Struct_2(!global3.d, Struct_1(var_2.c.a, max(global3.b, abs(-1i)), global3.a.zxz, global3.d), var_2.c);
    var var_5 = Struct_1(vec4<f32>(-978f, 916f, _wgslsmith_f_op_f32(1643f * 263f), global2.x), countOneBits(-1i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)), var_2.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(global0[_wgslsmith_index_u32(var_1.x, 16u)], global3.d.x, var_4.c, u_input.e), global3.d.zx, vec4<i32>(1i, u_input.a, 29036i, var_3.x))) + _wgslsmith_f_op_f32(step(-1236f, var_4.c.a.x))))), func_1(var_2.c));
    let var_6 = ~(~(-(~global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b), var_3);
}

