struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: u32;

var<private> global2: bool = true;

var<private> global3: vec3<i32> = vec3<i32>(-1i, 0i, 41545i);

var<private> global4: i32 = 57717i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    return 528f;
}

fn func_3() -> vec4<u32> {
    var var_0 = !vec4<bool>(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)), any(vec2<bool>(true, true)), any(vec2<bool>(true, false)), (_wgslsmith_sub_u32(u_input.e, 7609u) ^ 87372u) == 62036u);
    let var_1 = Struct_1(_wgslsmith_add_u32(u_input.c, ~_wgslsmith_mult_u32(3401u, u_input.e) ^ countOneBits(u_input.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(429f, 1075f, -162f), _wgslsmith_f_op_vec3_f32(vec3<f32>(451f, -705f, -1080f) * vec3<f32>(1111f, -1258f, -1107f)), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(338f, 1178f, -1000f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1024f, -1342f, -179f)))))), ~(reverseBits(vec4<i32>(0i, -1388i, global3.x, global3.x) & vec4<i32>(u_input.d.x, global3.x, global3.x, 27279i)) & min(vec4<i32>(u_input.d.x, 9851i, global3.x, 2147483647i) >> (vec4<u32>(u_input.b, u_input.a, u_input.b, 0u) % vec4<u32>(32u)), -vec4<i32>(7029i, -19246i, global3.x, -56803i))), !var_0.yz);
    var var_2 = var_0.wzx;
    global3 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(~var_1.c, -_wgslsmith_div_vec4_i32(vec4<i32>(61283i, 0i, -2147483647i, var_1.c.x), vec4<i32>(u_input.d.x, 2147483647i, global3.x, -2147483647i))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, 12497i), vec4<i32>(-2147483647i, -1i, 1i, global3.x)), 2147483647i), -max(1i, -9791i), -firstLeadingBit(var_1.c.x)), 57301i << (firstLeadingBit(~14060u) % 32u));
    var var_3 = _wgslsmith_f_op_f32(trunc(var_1.b.x));
    return min(min(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(13162u, var_1.a, u_input.a, var_1.a) >> (vec4<u32>(var_1.a, 0u, 0u, 0u) % vec4<u32>(32u)), ~vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a))), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, var_1.a, 51352u, var_1.a), vec4<u32>(var_1.a, 87129u, var_1.a, var_1.a), vec4<u32>(1u, 53383u, u_input.e, 24536u)), ~vec4<u32>(0u, 0u, var_1.a, var_1.a), vec4<bool>(false, var_1.d.x, var_1.d.x, var_1.d.x))), (vec4<u32>(~10687u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.a), vec2<u32>(44052u, 0u)), ~1u, 65406u) << (_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4597u, u_input.b, 1u, u_input.b), vec4<u32>(var_1.a, u_input.b, u_input.a, 6583u)), reverseBits(vec4<u32>(124517u, u_input.b, var_1.a, var_1.a))) % vec4<u32>(32u))) ^ firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_1.a, 0u, var_1.a), abs(vec4<u32>(4294967295u, u_input.b, 1u, u_input.a)), vec4<u32>(u_input.c, u_input.e, 25069u, 1u) & vec4<u32>(27664u, var_1.a, var_1.a, var_1.a))));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> bool {
    return (-(~(19350i | global3.x)) > abs(~(global3.x | 0i))) && false;
}

fn func_2(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = any(vec3<bool>(true, true, func_4(func_3(), 1u, 6002i)));
    let var_1 = _wgslsmith_f_op_f32(298f - 1128f);
    global2 = false;
    global3 = max(countOneBits(~vec3<i32>(1i, -u_input.d.x, _wgslsmith_sub_i32(-47510i, global3.x))), u_input.d);
    global3 = _wgslsmith_div_vec3_i32(vec3<i32>(23300i, reverseBits(-19268i), _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, global3.x, global3.x), u_input.d, vec3<i32>(global3.x, 6398i, 1i))) >> (countOneBits(u_input.a ^ 4294967295u) % 32u)), vec3<i32>(1i, countOneBits(-_wgslsmith_mult_i32(global3.x, 37421i)), -61047i));
    return !vec4<bool>(!(!(global3.x < global3.x)), var_0, true, false);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.e.c.x;
    let var_1 = _wgslsmith_f_op_f32(trunc(1008f));
    global4 = global3.x;
    global4 = firstTrailingBit(~(u_input.d.x & global3.x) >> (~_wgslsmith_mult_u32(~arg_2.a.a, u_input.c >> (1u % 32u)) % 32u));
    var var_2 = arg_2;
    return arg_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~4271u, 18u)];
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1025f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(var_0.a.a, 18u)], ~var_0.e.a, Struct_2(Struct_1(var_0.a.a, var_0.e.b, var_0.a.c, var_0.a.d), vec2<bool>(var_0.b.x, true), -19829i, vec2<f32>(var_0.e.b.x, var_0.d.x), Struct_1(var_0.e.a, vec3<f32>(var_0.e.b.x, -101f, -2102f), var_0.a.c, vec2<bool>(var_0.a.d.x, var_0.a.d.x))), _wgslsmith_div_vec4_i32(var_0.a.c, vec4<i32>(u_input.d.x, u_input.d.x, -1i, var_0.c)))))), any(!vec2<bool>(var_0.b.x || var_0.b.x, all(vec4<bool>(var_0.e.d.x, true, var_0.a.d.x, var_0.e.d.x))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_div_f32(var_0.d.x, var_0.d.x)));
    var var_2 = func_5(var_0.a, !any(!func_2(vec2<u32>(var_0.e.a, 54950u))), Struct_2(var_0.a, !var_0.a.d, min(var_0.a.c.x, _wgslsmith_dot_vec4_i32(abs(var_0.e.c), ~vec4<i32>(-1i, var_0.c, var_0.a.c.x, var_0.e.c.x))), var_0.e.b.yz, var_0.a));
    var var_3 = Struct_2(func_5(Struct_1(u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b.x, 953f, var_0.d.x), vec3<f32>(var_0.d.x, 1000f, var_0.e.b.x)) - vec3<f32>(var_0.e.b.x, var_0.d.x, 958f)), -min(var_0.a.c, vec4<i32>(var_2.c.x, 0i, var_2.c.x, -4283i)), vec2<bool>(var_0.e.d.x && var_0.a.d.x, any(vec3<bool>(var_2.d.x, var_2.d.x, false)))), all(!vec2<bool>(var_2.d.x, var_2.d.x)) || !var_2.d.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.e.a, var_0.e.a, 16851u, 12497u), select(vec4<u32>(u_input.e, var_0.a.a, 0u, var_0.a.a), vec4<u32>(var_2.a, u_input.c, 52485u, 56307u), var_0.e.d.x)) >> (u_input.b % 32u), 18u)]), var_0.e.d, ~_wgslsmith_mult_i32(-31516i, abs(var_0.c) >> (firstLeadingBit(var_0.e.a) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.zx) * var_2.b.zx)), var_0.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1715f, var_2.b.x, -140f, var_0.a.b.x) + vec4<f32>(var_3.a.b.x, var_0.a.b.x, var_3.a.b.x, var_0.e.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_3.d.x, -1563f, var_2.b.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1150f, 817f, 892f, var_0.a.b.x) + vec4<f32>(823f, 100f, -344f, var_0.d.x)))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-936f, 557f, -281f, var_2.b.x), vec4<f32>(-1249f, var_3.a.b.x, -180f, var_0.e.b.x)))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(func_1(Struct_2(var_0.e, var_3.a.d, u_input.d.x, var_0.e.b.xx, var_0.e), u_input.b, Struct_2(Struct_1(0u, vec3<f32>(2665f, var_3.d.x, -714f), var_3.a.c, vec2<bool>(var_2.d.x, var_3.b.x)), vec2<bool>(false, true), u_input.d.x, vec2<f32>(var_3.e.b.x, var_2.b.x), var_3.e), vec4<i32>(global3.x, var_2.c.x, 5229i, -18731i))), _wgslsmith_div_f32(-607f, var_0.e.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(849f, -1219f, var_3.d.x, var_0.d.x))))))));
    let var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xx, _wgslsmith_mod_vec2_u32(reverseBits(countOneBits(vec2<u32>(5481u, 25947u))) >> (firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(120u, 37290u), vec2<u32>(u_input.e, var_5))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(0u, u_input.b)), vec2<u32>(u_input.b, 4294967295u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(18872u, var_5), vec2<u32>(var_2.a, 1u)) % vec2<u32>(32u)))), -firstTrailingBit(var_3.e.c.xzz) | _wgslsmith_mod_vec3_i32(var_0.a.c.xzx, -_wgslsmith_clamp_vec3_i32(var_0.a.c.yxx, u_input.d, vec3<i32>(0i, 7110i, global3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, 2578f)))) + vec2<f32>(var_0.d.x, var_0.d.x)));
}

