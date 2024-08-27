struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec4<bool>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global1 = !select(vec4<bool>(false, true, true, global1.x), !vec4<bool>(false || global1.x, !global1.x, true, false), vec4<bool>(true, false, all(vec2<bool>(true, global1.x)), true));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(2881f + _wgslsmith_f_op_f32(f32(-1f) * -542f)), -213f, i32(-1i) * -32011i), global0[_wgslsmith_index_u32(countOneBits(1u), 15u)], global0[_wgslsmith_index_u32(~u_input.b, 15u)], ~(-firstTrailingBit(u_input.a.xy)));
    global0 = array<Struct_1, 15>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(-1047f, -1095f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.c.a, _wgslsmith_f_op_f32(var_0.c.b - var_0.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b - 247f))))));
    var_0 = Struct_2(Struct_1(var_0.c.a, _wgslsmith_f_op_f32(sign(530f)), 1515i), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~select(33466u, 39552u, global1.x), ~(~u_input.b)) >> (abs(4294967295u) % 32u), 15u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-807f + -785f)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-11472i, 2147483647i, 0i, var_0.c.c) | vec4<i32>(2147483647i, -1i, u_input.a.x, 13957i), vec4<i32>(var_0.c.c, 1i, 3443i, 10423i)), _wgslsmith_sub_i32(39772i, u_input.a.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(abs(select(0i, u_input.a.x, global1.x)), -(~0i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.c.c, -12752i), var_0.d)));
    return 1542f;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(353f * 129f))), 1456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 1f), arg_0.x), Struct_1(1f, 1f, -10905i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f - _wgslsmith_f_op_f32(f32(-1f) * -1661f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-157f)) + _wgslsmith_f_op_f32(trunc(-1960f))) + -1525f), u_input.a.x), arg_0.yz >> (_wgslsmith_sub_vec2_u32(countOneBits(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 12602u), true)), ~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)));
    var var_1 = var_0.c;
    global1 = select(vec4<bool>(global1.x, true, true, global1.x), select(vec4<bool>(true, any(vec3<bool>(true, true, true)), var_1.b > _wgslsmith_f_op_f32(-398f * var_0.c.a), true), vec4<bool>(global1.x, all(global1.zwz), global1.x, any(vec4<bool>(global1.x, global1.x, global1.x, false))), !vec4<bool>(true, false, true || global1.x, global1.x)), select(!(!select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, false, false, true), global1.x)), vec4<bool>(false, u_input.b >= _wgslsmith_add_u32(55414u, u_input.b), true, 39584u < ~u_input.b), global1.x | global1.x));
    var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-250f, _wgslsmith_f_op_f32(sign(var_0.a.a))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -957f), _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-var_1.a))) + _wgslsmith_f_op_f32(-var_0.c.a)), abs(arg_0.x));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, u_input.b & ~u_input.b), ~u_input.b), 15u)];
    return 1u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(11082u >> (arg_1 % 32u), 49755u, u_input.b, 35195u) ^ ((vec4<u32>(0u, 4294967295u, 1u, 4294967295u) & vec4<u32>(arg_1, arg_1, 1u, 4294967295u)) | ~vec4<u32>(u_input.b, 21753u, u_input.b, u_input.b)), select(vec4<u32>(4195u, func_2(vec3<i32>(u_input.c, arg_2, arg_3)), arg_1, arg_1), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 19121u, 44184u, 4294967295u), vec4<u32>(u_input.b, u_input.b, arg_1, arg_1)), !arg_0 || !global1.x));
    global2 = 35825u;
    global2 = ~u_input.b;
    let var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, var_0.x), min(_wgslsmith_div_vec2_u32(var_0.yx, var_0.zy), ~vec2<u32>(min(4294967295u, 1u), ~var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-183f))));
    return arg_1;
}

fn func_1() -> Struct_2 {
    global2 = _wgslsmith_sub_u32(u_input.b, func_4(true, _wgslsmith_div_u32(_wgslsmith_sub_u32(78522u, 32327u), func_2(u_input.a)), select(-u_input.c, u_input.c, all(vec4<bool>(global1.x, false, global1.x, global1.x))), 2147483647i) << (_wgslsmith_div_u32(4294967295u, ~reverseBits(u_input.b)) % 32u));
    let var_0 = _wgslsmith_div_vec4_i32(-vec4<i32>(0i, -11580i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), u_input.c), u_input.c | _wgslsmith_mult_i32(40638i, u_input.c)), -vec4<i32>(45749i, u_input.a.x, abs(_wgslsmith_sub_i32(u_input.c, u_input.c)), select(-26020i, 1i, true)));
    global0 = array<Struct_1, 15>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_2 = _wgslsmith_f_op_f32(-var_1.b);
    return Struct_2(Struct_1(var_1.a, var_1.a, max(-13551i | _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, -51431i, var_0.x), vec3<i32>(var_0.x, var_1.c, var_0.x)), 14884i)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(vec3<i32>(~u_input.c, ~11931i, min(var_1.c, 1019i))), ~51196u), 15u)], Struct_1(-1000f, 1f, 2147483647i), firstLeadingBit(u_input.a.zz));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.c.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), arg_0.a.b)), _wgslsmith_f_op_f32(-arg_2.x), -791f));
    var var_1 = all(global1.wx);
    var var_2 = arg_0;
    let var_3 = arg_3;
    var var_4 = vec2<i32>(arg_0.d.x, -46224i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1256f, -330f) - vec3<f32>(1117f, -1373f, 210f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(896f, 467f, 1438f) - vec3<f32>(-1871f, 1624f, -991f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(670f, 1376f, -189f)))))));
    let var_1 = global0[_wgslsmith_index_u32(60785u, 15u)];
    let var_2 = Struct_2(Struct_1(-1477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(616f))), _wgslsmith_add_i32(~(~var_1.c), min(-var_1.c, -2147483647i))), Struct_1(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(441f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.b))))), _wgslsmith_mult_i32(1i, func_5(func_1(), u_input.a.x, _wgslsmith_f_op_vec2_f32(-var_0.yz), Struct_2(Struct_1(-985f, -682f, u_input.a.x), Struct_1(894f, var_0.x, u_input.c), Struct_1(259f, -539f, -23629i), u_input.a.zy)))), global0[_wgslsmith_index_u32(~(~(~(u_input.b << (33030u % 32u)))), 15u)], max(u_input.a.yy, vec2<i32>(u_input.c, -min(var_1.c, u_input.a.x))));
    let var_3 = ~_wgslsmith_add_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 95219u, u_input.b), vec3<u32>(u_input.b, 0u, 12702u)), ~vec3<u32>(u_input.b, 489u, 11326u)) & reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(u_input.b, 1u, 0u))), ~(~vec3<u32>(10708u, 41726u, u_input.b) & ~vec3<u32>(0u, u_input.b, u_input.b)));
    var var_4 = Struct_2(func_1().b, func_1().a, func_1().a, vec2<i32>(-17652i, -select(u_input.c, var_2.d.x, global1.x)));
    var var_5 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, ~18741u), vec2<u32>(4294967295u, ~var_3.x));
    var var_6 = -(~_wgslsmith_mult_i32(0i, -11684i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1879f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) - _wgslsmith_f_op_f32(abs(var_2.c.b))))), min(~vec2<u32>(48248u, 4294967295u), vec2<u32>(abs(1u), var_5.x)));
}

