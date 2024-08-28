struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(9686u, 0u, 30024u, 50103u, 4348u, 0u, 1u, 48751u, 36565u, 1u, 0u, 6539u, 74806u, 57053u, 2596u, 47381u, 4294967295u, 12126u, 4294967295u, 0u, 60287u);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(1i, 37136i)), Struct_1(vec2<i32>(-28582i, -58271i)), vec4<f32>(1205f, -134f, 2710f, 602f), Struct_1(vec2<i32>(1i, 15515i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)));

var<private> global2: vec3<f32> = vec3<f32>(2105f, -2317f, 1514f);

var<private> global3: vec2<f32>;

var<private> global4: f32 = -720f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global1 = arg_3;
    let var_0 = -456f;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-394f, 806f, 1560f) + arg_3.c.yzw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.wyw * vec3<f32>(arg_3.c.x, -1415f, var_0))), !any(vec3<bool>(false, false, true)))))));
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1305f, -1043f, global1.c.x), global1.c.yyx) + vec3<f32>(arg_1.x, -1209f, -1561f))) + arg_3.c.xxw)));
    global0 = array<u32, 21>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x + global2.x) - _wgslsmith_div_f32(808f, global3.x)) + -2498f), _wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(abs(global2.x)))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_sub_u32(~(~u_input.b), 67414u);
    global2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(func_3(vec2<u32>(0u, arg_0.b), _wgslsmith_div_vec2_f32(vec2<f32>(-1224f, 687f), vec2<f32>(910f, -1660f)), arg_0, Struct_2(arg_1.a, arg_0.a, global1.c, Struct_1(global1.a.a), global1.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-745f, _wgslsmith_f_op_f32(-218f - -877f), true)), _wgslsmith_f_op_f32(f32(-1f) * -177f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.xyx)), !(~_wgslsmith_dot_vec2_i32(arg_2.yz, arg_1.a.a) < ~(-2147483647i))));
    let var_1 = Struct_1(vec2<i32>(~firstLeadingBit(min(-1i, global1.e.a.x)), -_wgslsmith_mult_i32(arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a.x, 33746i, 0i, 29863i), vec4<i32>(arg_2.x, -42936i, -33163i, 64783i)))));
    let var_2 = Struct_4(arg_0.a.a, global1.c.zxw, 31265u);
    var_0 = firstLeadingBit(select(16363u, 0u, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    return (abs(firstTrailingBit(arg_1.c) ^ _wgslsmith_mod_i32(-7891i, 40075i)) ^ _wgslsmith_div_i32(_wgslsmith_add_i32(var_2.a.x >> (var_2.c % 32u), ~(-1i)), (var_1.a.x & -48761i) >> (abs(arg_0.b) % 32u))) ^ -32150i;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = any(vec2<bool>(all(vec3<bool>(true, false, true)), false));
    return Struct_1(vec2<i32>(firstTrailingBit(min(-global1.a.a.x, func_2(Struct_3(global1.d, 1u, -14797i), Struct_3(Struct_1(vec2<i32>(arg_0.a.x, arg_0.a.x)), arg_0.c, arg_0.a.x), vec3<i32>(45780i, -9056i, -2147483647i)))), ~(-(-34440i ^ global1.d.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = abs(arg_0.a.x);
    var var_1 = ~(~abs(~vec3<u32>(48017u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68952u, 21u)], 21u)], 21u)], arg_3) | firstLeadingBit(vec3<u32>(101913u, arg_2, 2071u))));
    var var_2 = select(!vec3<bool>(true, false, any(vec2<bool>(false, true))), vec3<bool>(!(_wgslsmith_f_op_f32(arg_1.x + -1052f) < 673f), ((var_1.x | arg_3) < ~4294967295u) && false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), !(-1031f != arg_1.x));
    var_2 = !select(select(!select(vec3<bool>(var_2.x, true, false), vec3<bool>(true, var_2.x, var_2.x), var_2.x), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), !vec3<bool>(var_2.x, var_2.x, false)), select(any(var_2.zz), var_2.x | var_2.x, all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)))), vec3<bool>(select(true, all(vec3<bool>(false, false, var_2.x)), true), all(!vec2<bool>(var_2.x, var_2.x)), firstLeadingBit(arg_2) < 52779u), vec3<bool>(var_2.x, !(arg_3 != 1u), any(!vec3<bool>(true, var_2.x, var_2.x))));
    var var_3 = Struct_3(global1.b, ~4294967295u, firstLeadingBit(global1.b.a.x));
    return Struct_1(var_3.a.a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = Struct_3(Struct_1(-vec2<i32>(-arg_0.d.a.x, ~arg_1.a.a.x)), _wgslsmith_div_u32(~(_wgslsmith_add_u32(arg_1.b, 4294967295u) ^ 0u), ~firstLeadingBit(~arg_1.b)), global1.b.a.x);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.c.xxx))) * _wgslsmith_f_op_vec3_f32(-global1.c.wzx));
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(var_0.a.a.x, -1i, 0i)) << (firstLeadingBit(vec3<u32>(1u, 82182u, 1u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, -2147483647i, arg_2), abs(vec3<i32>(-1i, 29386i, arg_1.c))), vec3<i32>(-23709i, select(-17965i, 0i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.a.a.x, var_0.c, 32756i), vec4<i32>(arg_1.c, arg_1.a.a.x, arg_1.c, 4755i))))), ~(-reverseBits(vec3<i32>(arg_3.a.x, arg_2, arg_3.a.x))));
    global1 = arg_0;
    var var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-929f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f + 323f)))) + global1.c.wx);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_5(Struct_2(global1.b, Struct_1(max(global1.a.a, global1.a.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, global1.c.x, global3.x, 1385f) * vec4<f32>(-407f, global1.c.x, -1000f, -155f))), Struct_1(vec2<i32>(global1.b.a.x, global1.e.a.x)), func_4(func_1(Struct_4(global1.a.a, vec3<f32>(-1000f, 850f, -316f), global0[_wgslsmith_index_u32(4294967295u, 21u)])), vec2<f32>(1539f, -540f), global0[_wgslsmith_index_u32(49073u, 21u)] >> (2273u % 32u), ~0u)), Struct_3(Struct_1(global1.e.a & vec2<i32>(global1.a.a.x, 1i)), 17488u, global1.a.a.x >> ((global0[_wgslsmith_index_u32(u_input.b, 21u)] | 1u) % 32u)), global1.a.a.x, Struct_1(global1.b.a & global1.b.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.xz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global3.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2513f, 2461f)))))));
    global1 = Struct_2(global1.e, Struct_1(vec2<i32>(1i, select(_wgslsmith_div_i32(-2147483647i, 2147483647i), abs(global1.e.a.x), any(vec2<bool>(true, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-918f + global2.x), _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(-649f + global3.x), _wgslsmith_f_op_f32(max(global3.x, -1358f))))) * _wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(_wgslsmith_div_f32(global3.x, 613f), global1.c.x, _wgslsmith_f_op_f32(step(1163f, -453f)), _wgslsmith_f_op_f32(min(global3.x, 1000f))))), global1.e, global1.b);
    global0 = array<u32, 21>();
    global1 = Struct_2(global1.d, Struct_1(~vec2<i32>(~global1.b.a.x, _wgslsmith_mod_i32(0i, global1.d.a.x))), vec4<f32>(-878f, 322f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-179f)))))), _wgslsmith_f_op_vec2_f32(func_5(Struct_2(func_4(global1.e, global2.zz, 75212u, global0[_wgslsmith_index_u32(34029u, 21u)]), func_4(global1.d, global1.c.xy, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1370f, 982f, 523f)), global1.e, Struct_1(vec2<i32>(global1.d.a.x, 22915i))), Struct_3(global1.e, 41192u >> (global0[_wgslsmith_index_u32(43881u, 21u)] % 32u), func_1(Struct_4(global1.b.a, vec3<f32>(-434f, global2.x, -1000f), global0[_wgslsmith_index_u32(u_input.b, 21u)])).a.x), global1.e.a.x, global1.e)).x), global1.e, func_1(Struct_4(global1.d.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.c.x, _wgslsmith_f_op_f32(global1.c.x * 173f)), u_input.a)));
    let var_0 = -44865i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(countOneBits(countOneBits(1i)), global1.d.a.x), ~0i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1036f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f - 191f) * global1.c.x)), true & (any(vec3<bool>(false, true, true)) && true))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-566f)), _wgslsmith_f_op_f32(-2043f - -1967f)));
}

