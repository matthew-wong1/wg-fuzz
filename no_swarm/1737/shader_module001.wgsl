struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-1000f, 202f), vec2<f32>(263f, -769f), vec2<f32>(-385f, 1000f), vec2<f32>(1388f, 1504f), vec2<f32>(-612f, -336f), vec2<f32>(2059f, 1081f), vec2<f32>(-1109f, 1148f), vec2<f32>(137f, -2297f), vec2<f32>(-216f, -257f), vec2<f32>(683f, -839f), vec2<f32>(-790f, 1045f), vec2<f32>(133f, 710f), vec2<f32>(598f, -1532f), vec2<f32>(493f, -141f), vec2<f32>(-372f, -800f), vec2<f32>(479f, -545f), vec2<f32>(-577f, 233f), vec2<f32>(-915f, -1429f), vec2<f32>(1255f, 337f), vec2<f32>(114f, 1000f), vec2<f32>(-1140f, -965f), vec2<f32>(-150f, -109f), vec2<f32>(-2245f, 1399f), vec2<f32>(167f, -190f), vec2<f32>(-1648f, 1155f), vec2<f32>(-1180f, 1202f), vec2<f32>(-1756f, -680f), vec2<f32>(134f, 917f), vec2<f32>(-1944f, -476f), vec2<f32>(863f, -1648f), vec2<f32>(-2503f, 437f));

var<private> global1: vec2<bool>;

var<private> global2: Struct_1 = Struct_1(false, false, vec4<u32>(0u, 92144u, 1u, 0u));

var<private> global3: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(true, Struct_2(Struct_1(true, true, vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), Struct_1(false, true, vec4<u32>(14571u, 0u, 42065u, 0u)), Struct_1(true, false, vec4<u32>(15454u, 1u, 25945u, 1u)), Struct_1(true, true, vec4<u32>(1u, 14813u, 0u, 28159u))), Struct_1(false, true, vec4<u32>(0u, 1u, 28254u, 1u))), Struct_5(false, Struct_2(Struct_1(true, false, vec4<u32>(4597u, 42367u, 3260u, 13663u)), Struct_1(true, true, vec4<u32>(0u, 54558u, 1u, 1u)), Struct_1(false, false, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), Struct_1(true, false, vec4<u32>(1u, 20303u, 0u, 83273u))), Struct_1(false, true, vec4<u32>(4294967295u, 1u, 4294967295u, 31433u))), Struct_5(false, Struct_2(Struct_1(true, true, vec4<u32>(47839u, 4294967295u, 55529u, 12456u)), Struct_1(false, false, vec4<u32>(9811u, 9722u, 59136u, 35893u)), Struct_1(false, false, vec4<u32>(34499u, 1u, 4294967295u, 4294967295u)), Struct_1(false, true, vec4<u32>(1u, 61579u, 89736u, 1u))), Struct_1(false, true, vec4<u32>(64108u, 1u, 58469u, 1u))), Struct_5(true, Struct_2(Struct_1(true, true, vec4<u32>(100254u, 1u, 45172u, 32800u)), Struct_1(false, false, vec4<u32>(52311u, 14132u, 1u, 18734u)), Struct_1(true, true, vec4<u32>(0u, 53216u, 1u, 1u)), Struct_1(true, false, vec4<u32>(0u, 1u, 47664u, 1u))), Struct_1(false, true, vec4<u32>(36990u, 0u, 0u, 1u))), Struct_5(true, Struct_2(Struct_1(true, false, vec4<u32>(4294967295u, 0u, 23703u, 13801u)), Struct_1(true, false, vec4<u32>(0u, 1u, 0u, 1u)), Struct_1(false, true, vec4<u32>(58053u, 0u, 47792u, 1u)), Struct_1(false, false, vec4<u32>(1u, 4294967295u, 4294967295u, 0u))), Struct_1(true, true, vec4<u32>(65038u, 4294967295u, 31340u, 9979u))));

var<private> global4: array<f32, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = Struct_2(arg_0, arg_0, arg_0, Struct_1(global1.x, all(vec3<bool>(true, true, !arg_0.b)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), select(arg_0.c, vec4<u32>(arg_0.c.x, global2.c.x, 20200u, 35017u), global2.b)), vec4<u32>(global2.c.x, u_input.a & arg_0.c.x, _wgslsmith_add_u32(global2.c.x, 1u), 0u))));
    var var_1 = select(_wgslsmith_div_vec3_u32(vec3<u32>(global2.c.x, min(firstLeadingBit(global2.c.x), 12168u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.c.x, u_input.a), arg_0.c.zw)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(26155u, global2.c.x, 1u), global2.c.ywy))), global2.c.yyw, !(!any(vec3<bool>(false, false, global1.x))));
    global2 = Struct_1(!any(vec2<bool>(true, true)), global1.x, var_0.b.c);
    let var_2 = ~arg_0.c;
    global4 = array<f32, 16>();
    return abs(65420u);
}

fn func_2() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(countOneBits(func_3(Struct_1(global2.a, global2.a, vec4<u32>(1u, global2.c.x, u_input.a, 7836u)), global4[_wgslsmith_index_u32(32760u, 16u)])) | firstTrailingBit(u_input.a & global2.c.x)), firstLeadingBit(4294967295u)), 31u)];
    var var_1 = min(~1i << (~_wgslsmith_mod_u32(~u_input.a, ~4294967295u) % 32u), ~807i);
    global2 = Struct_1(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f - -426f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1689f * 980f) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_sub_vec4_u32(~firstLeadingBit(min(global2.c, global2.c)), ~min(select(vec4<u32>(global2.c.x, 4294967295u, 4294967295u, 43135u), vec4<u32>(u_input.a, 21692u, global2.c.x, 1u), true), global2.c)));
    let var_2 = var_0.x;
    var var_3 = ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -22253i, 1i, -2147483647i) << (global2.c % vec4<u32>(32u)), countOneBits(vec4<i32>(0i, -19379i, 2147483647i, 65990i))), countOneBits(1i));
    return global4[_wgslsmith_index_u32(0u, 16u)];
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(32576u, 16u)])), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global2.c.x, 16u)]), false)) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(global2.c.x, 70577u, global2.c.x))), 16u)])), _wgslsmith_f_op_f32(min(-557f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)])))), global4[_wgslsmith_index_u32(abs(global2.c.x) >> (3710u % 32u), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + global4[_wgslsmith_index_u32(((u_input.a ^ 66077u) >> (u_input.a % 32u)) & ~(~37056u), 16u)]));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, global4[_wgslsmith_index_u32(4294967295u, 16u)])), -271f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1237f), var_0.x), _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(1u, 16u)], 1000f, !global2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f) * _wgslsmith_f_op_f32(round(-195f))))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2.c.x, 0u), 16u)]));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-170f, var_0.x), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(global2.c.x, 16u)])), global4[_wgslsmith_index_u32(43655u >> (1u % 32u), 16u)], _wgslsmith_f_op_f32(-var_0.x))))));
    global1 = arg_0.yy;
    var var_1 = select(vec4<bool>(false, true, !global1.x, global1.x), select(arg_0, select(!arg_0, vec4<bool>(true, true, true, true), true), vec4<bool>(false, !global2.b, false, true)), all(!(!select(arg_0.yy, arg_0.yy, global1.x))));
    return countOneBits(firstLeadingBit(~_wgslsmith_add_u32(global2.c.x, global2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 16>();
    var var_0 = _wgslsmith_sub_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec4_u32(global2.c, global2.c) & 0u, func_1(!vec4<bool>(global1.x, global1.x, true, global1.x)), global2.c.x, ~abs(u_input.a)), global2.c), global2.c);
    let var_1 = global2.c.x;
    let var_2 = global4[_wgslsmith_index_u32(global2.c.x, 16u)];
    var var_3 = 46042u;
    global4 = array<f32, 16>();
    var var_4 = Struct_2(Struct_1(reverseBits(_wgslsmith_add_u32(0u, global2.c.x)) != 0u, global1.x, vec4<u32>(u_input.a, _wgslsmith_sub_u32(14376u, 12388u), u_input.a, ~21641u) >> (((global2.c << (global2.c % vec4<u32>(32u))) & ~vec4<u32>(global2.c.x, 48225u, 0u, global2.c.x)) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_i32(abs(-56162i), select(-22321i, -25759i, false)) != _wgslsmith_mult_i32(~(-2147483647i), 0i << (global2.c.x % 32u)), global1.x, global2.c), Struct_1(true, !global1.x, ~global2.c), Struct_1(any(!select(vec4<bool>(false, false, true, global2.b), vec4<bool>(global1.x, false, true, false), vec4<bool>(global1.x, global1.x, global2.a, global1.x))), true, global2.c));
    var var_5 = -2147483647i;
    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-530f, global4[_wgslsmith_index_u32(64364u, 16u)]) * _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_4.c.c.x, 31u)])))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global2.c.x, 16u)]), _wgslsmith_f_op_f32(f32(-1f) * -1350f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(72006u, 16u)], global4[_wgslsmith_index_u32(38001u, 16u)]) * global4[_wgslsmith_index_u32(_wgslsmith_add_u32(var_4.c.c.x, global2.c.x), 16u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-802f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(0u, 16u)], -1000f))))) + global4[_wgslsmith_index_u32(4294967295u, 16u)]));
}

