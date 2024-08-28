struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: array<u32, 4> = array<u32, 4>(77843u, 69479u, 1u, 7643u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: u32) -> vec4<u32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f * -413f), -1000f, _wgslsmith_f_op_f32(-425f * 162f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-876f, 1093f, 712f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-197f, 130f, -170f), vec3<f32>(-630f, 1076f, 172f), false)))), true, ~(-72098i) <= (-u_input.b.x >> (u_input.e % 32u)), 1i), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(-225f)), _wgslsmith_f_op_f32(ceil(592f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1562f, 1092f, 911f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2768f, -1405f, 492f))))), any(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), any(vec2<bool>(true, false)))), -arg_1.x > -reverseBits(u_input.b.x), firstLeadingBit(1i)));
    global2 = array<u32, 4>();
    global2 = array<u32, 4>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2658f, -1529f, var_0.b.a.x), vec3<f32>(var_0.a.a.x, -952f, var_0.a.a.x)))) - _wgslsmith_f_op_vec3_f32(var_0.a.a - vec3<f32>(_wgslsmith_f_op_f32(min(-495f, var_0.a.a.x)), -836f, _wgslsmith_f_op_f32(-1000f - var_0.a.a.x)))), (countOneBits(abs(arg_2)) & global2[_wgslsmith_index_u32(arg_2, 4u)]) >= 0u, var_0.b.c, -2147483647i);
    return firstLeadingBit(~abs(~vec4<u32>(36226u, 1u, 0u, u_input.d))) & (~(abs(vec4<u32>(8758u, 0u, u_input.a.x, 1u)) | (vec4<u32>(u_input.d, arg_2, 2245u, 0u) & vec4<u32>(30689u, arg_0.x, arg_2, 4294967295u))) ^ ~(abs(vec4<u32>(4294967295u, 1u, 4294967295u, 44689u)) << (~vec4<u32>(arg_2, arg_2, u_input.d, 4294967295u) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    global1 = array<vec4<bool>, 16>();
    let var_0 = -606f;
    let var_1 = max(_wgslsmith_sub_vec4_u32(vec4<u32>(28312u, 4294967295u, u_input.d, 24513u), ~vec4<u32>(arg_0.x, 11318u, u_input.e, 4118u)) << (abs(vec4<u32>(global2[_wgslsmith_index_u32(arg_0.x, 4u)], u_input.e, u_input.a.x, 1u) ^ vec4<u32>(14916u, arg_0.x, 0u, 1u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(abs(countOneBits(vec4<u32>(20869u, arg_0.x, 0u, arg_0.x))), max(vec4<u32>(global2[_wgslsmith_index_u32(5740u, 4u)], 4294967295u, 43906u, arg_0.x), func_3(vec3<u32>(2656u, 67781u, 6419u), vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17773u, 4u)], 4u)])))) >> (select(~(~max(vec4<u32>(u_input.d, 14862u, 0u, 12932u), vec4<u32>(arg_0.x, 22702u, arg_0.x, 4294967295u))), ~(~abs(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 4u)], arg_0.x, arg_0.x))), select(true, any(vec2<bool>(true, false)), arg_1.c.c) || !any(vec3<bool>(false, true, arg_1.c.c))) % vec4<u32>(32u));
    let var_2 = arg_1;
    var var_3 = 22402i;
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec2<bool>(any(select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 16u)], global0[_wgslsmith_index_u32(abs(0u), 32u)])), true), vec2<bool>(true, !any(global1[_wgslsmith_index_u32(~31242u, 16u)])), 4294967295u == u_input.a.x);
    let var_1 = Struct_2(_wgslsmith_mult_i32(u_input.b.x, -2147483647i << (u_input.e % 32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.yx, Struct_2(-33643i, vec2<f32>(-562f, -1000f), Struct_1(vec3<f32>(455f, -1000f, 781f), false, var_0.x, u_input.b.x)))), -219f)))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-173f * 643f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -493f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-901f, -1414f, 540f) - vec3<f32>(-643f, -1155f, 1033f)) - vec3<f32>(-184f, 703f, 1451f))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)) < -1811i, any(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, false), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, var_0.x))), u_input.b.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, var_1.b.x)), _wgslsmith_f_op_f32(abs(var_1.c.a.x)), _wgslsmith_f_op_f32(-844f * -168f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, -1185f) - var_1.c.a))), false, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x))), reverseBits(_wgslsmith_div_i32(_wgslsmith_add_i32(max(u_input.b.x, 28i), u_input.b.x), u_input.b.x | u_input.b.x)));
    global1 = array<vec4<bool>, 16>();
    let var_3 = var_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.c.a), vec3<f32>(var_1.b.x, var_1.b.x, var_3.b.x))), any(global1[_wgslsmith_index_u32(~u_input.d, 16u)]) & (any(vec3<bool>(var_0.x, false, var_1.c.b)) && var_0.x), select(select(false, all(vec4<bool>(true, var_0.x, false, false)), true), !var_1.c.c, ((true & var_0.x) == var_2.b) & false), var_2.d);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    let var_0 = !select(!(!select(vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(arg_1.a.c, arg_1.a.c), arg_1.b.c)), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), select(vec2<bool>(true, arg_1.b.b), vec2<bool>(true, false), vec2<bool>(true, arg_1.b.c)), arg_1.b.b), !vec2<bool>(false, arg_1.a.c)), arg_1.b.b);
    global1 = array<vec4<bool>, 16>();
    let var_1 = -abs(~min(vec4<i32>(28506i, arg_1.b.d, arg_1.a.d, u_input.b.x) | vec4<i32>(u_input.b.x, -31156i, 1i, 35476i), vec4<i32>(arg_1.a.d, arg_1.a.d, -2147483647i, -15833i)));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, u_input.a.x, u_input.a.x) ^ vec4<u32>(72585u, u_input.d, 4294967295u, 0u), ~vec4<u32>(4294967295u, 1u, 52426u, global2[_wgslsmith_index_u32(u_input.d, 4u)])), ~31590u), ~_wgslsmith_add_u32(37824u, 41287u) | _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 4u)] | 0u, 4u)], min(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)]))) | min(u_input.c, _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(0u, u_input.c, 10674u, global2[_wgslsmith_index_u32(u_input.d, 4u)])), vec4<u32>(~74191u, u_input.e, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.c, 4u)]), vec2<u32>(1u, u_input.c)))));
    let var_3 = arg_1.b;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(~((u_input.b.x ^ u_input.b.x) & -25139i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-11716i, u_input.b.x, u_input.b.x, 34492i)), ~reverseBits(vec4<i32>(-1i, -1i, u_input.b.x, u_input.b.x))), -firstTrailingBit(-50272i)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -697f))) + -1952f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-760f * 1252f))) + _wgslsmith_f_op_f32(round(-503f)))), 879f, 1788f);
    global0 = array<vec4<bool>, 32>();
    global1 = array<vec4<bool>, 16>();
    global2 = array<u32, 4>();
    var var_2 = Struct_2(35508i, vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.www, vec3<f32>(661f, var_1.x, -614f), false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2008f, var_1.x, var_1.x) + vec3<f32>(190f, var_1.x, var_1.x))), Struct_3(func_1(), Struct_1(var_1.yyw, false, true, -51319i)))), var_1.x), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 4294967295u);
}

