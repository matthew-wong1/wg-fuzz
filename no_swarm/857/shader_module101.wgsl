struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<u32>(15502u, 109672u, 1u, 1u), 1u, 4161u, 1309f), Struct_1(vec4<u32>(4294967295u, 1u, 8757u, 71980u), 120004u, 90923u, 1434f), Struct_1(vec4<u32>(8030u, 15221u, 48900u, 16649u), 4294967295u, 4294967295u, 648f), Struct_1(vec4<u32>(37148u, 1u, 10075u, 1u), 0u, 4294967295u, 2261f), Struct_1(vec4<u32>(31484u, 35945u, 4294967295u, 53434u), 52590u, 33330u, 1148f));

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 32> = array<bool, 32>(false, false, false, false, false, false, false, true, true, true, false, true, false, true, true, false, false, false, false, false, true, true, true, true, false, false, true, true, false, false, false, true);

var<private> global3: u32 = 150818u;

var<private> global4: array<u32, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(f32(-1f) * -1220f)), _wgslsmith_f_op_f32(-1203f * -158f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global1.x)));
    global3 = ~min(reverseBits(_wgslsmith_sub_u32(u_input.b.x, abs(u_input.b.x))), abs(firstLeadingBit(global4[_wgslsmith_index_u32(94040u, 25u)]) | 36623u));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(~u_input.b, ~vec4<u32>(1u, global4[_wgslsmith_index_u32(11220u, 25u)], 4294967295u, select(u_input.a.x, global4[_wgslsmith_index_u32(u_input.b.x, 25u)], arg_0.a)), u_input.a), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(global4[_wgslsmith_index_u32(17092u, 25u)], u_input.b.x)), u_input.b.yx), u_input.b.xw), firstLeadingBit(~108544u), global1.x);
    let var_2 = arg_0;
    var var_3 = -(~(-2147483647i)) >> ((var_1.a.x | u_input.b.x) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1668f)));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_2(any(vec3<bool>(!global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(50984u, 25u)], 32u)], false || global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 25u)], 32u)], select(true, global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)]))) != !(!(true | global2[_wgslsmith_index_u32(38749u, 32u)])));
    let var_1 = Struct_1(abs(u_input.b) >> (vec4<u32>(58911u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(45979u, 55506u, global4[_wgslsmith_index_u32(u_input.a.x, 25u)]), u_input.b.xwx, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(133361u, 32u)], var_0.a)), u_input.a.zwx), abs(1u), ~95196u) % vec4<u32>(32u)), ~global4[_wgslsmith_index_u32(1u, 25u)], 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 258f, global1.x) * vec4<f32>(global1.x, -773f, -1000f, -261f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -976f))) * _wgslsmith_div_f32(-1000f, var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) - _wgslsmith_f_op_f32(f32(-1f) * -1053f)) - _wgslsmith_f_op_f32(max(-2352f, _wgslsmith_f_op_f32(f32(-1f) * -440f))))));
    var var_3 = var_0;
    let var_4 = 4294967295u;
    return select(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(45006u, 4294967295u), reverseBits(vec2<u32>(u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.c, 25u)], 25u)])))), global4[_wgslsmith_index_u32(39708u, 25u)], !global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 25u)], 32u)]) ^ u_input.b.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(9146u, 22399u, global4[_wgslsmith_index_u32(arg_1.c, 25u)], u_input.a.x) << (vec4<u32>(1u, 4294967295u, 62235u, u_input.b.x) % vec4<u32>(32u)), arg_1.a)) | ((u_input.a >> (countOneBits(select(u_input.b, u_input.a, vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(54707u, 32u)]))) % vec4<u32>(32u))) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b, 17392u, 1u, 36345u), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(arg_1.b, 33966u, 4294967295u, arg_1.a.x)), vec4<u32>(0u, arg_1.a.x, 41475u, global4[_wgslsmith_index_u32(u_input.b.x, 25u)])));
    global2 = array<bool, 32>();
    global0 = array<Struct_1, 5>();
    global4 = array<u32, 25>();
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstLeadingBit(arg_1.b), _wgslsmith_sub_u32(~33788u, countOneBits(arg_1.a.x)), _wgslsmith_dot_vec3_u32(arg_1.a.zxy, vec3<u32>(arg_1.b, ~u_input.b.x, ~4294967295u))), 32u)]);
    return Struct_2(true);
}

fn func_1() -> i32 {
    let var_0 = func_4(select(!(!global2[_wgslsmith_index_u32(func_2(vec2<i32>(-43137i, -2147483647i)), 32u)]), !(true || any(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(75308u, 32u)]))), global1.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f) + _wgslsmith_f_op_f32(global1.x - -2638f))), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], !(global2[_wgslsmith_index_u32(abs(u_input.a.x), 32u)] && true) || !(u_input.b.x > global4[_wgslsmith_index_u32(1u, 25u)]));
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 19248u, u_input.b.x), vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)], 4294967295u, 0u)), max(~vec4<u32>(1u, global4[_wgslsmith_index_u32(u_input.b.x, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)], 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(59974u, u_input.b.x, global4[_wgslsmith_index_u32(u_input.b.x, 25u)], 0u), vec4<u32>(u_input.b.x, 24646u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(56209u, 25u)], 25u)], u_input.b.x))))), _wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_mod_u32(4294967295u, global4[_wgslsmith_index_u32(u_input.a.x, 25u)])), select(u_input.a.x, reverseBits(_wgslsmith_add_u32(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 25u)])), select(true, all(vec2<bool>(var_0.a, true)), global2[_wgslsmith_index_u32(~4294967295u, 32u)]))), u_input.a.x, -439f);
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1011f, -532f, 826f), vec3<f32>(822f, 767f, var_1.d))))));
    var var_4 = !(!select(vec2<bool>(var_0.a, global2[_wgslsmith_index_u32(~4294967295u, 32u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(29758u, 32u)], true), vec2<bool>(false, false), true), select(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)], false), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 25u)], 25u)], 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(58012u, 32u)])), true)));
    return ~(~_wgslsmith_add_i32(~(-10811i | var_2), 6146i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!any(vec2<bool>(true, true)));
    let var_1 = vec4<i32>(~(-40580i), _wgslsmith_dot_vec4_i32(vec4<i32>((0i << (global4[_wgslsmith_index_u32(6799u, 25u)] % 32u)) & -2147483647i, _wgslsmith_mod_i32(firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-29314i, -26688i, -1i), vec3<i32>(0i, 0i, 10313i))), firstLeadingBit(1i), ~2147483647i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(2147483647i, -1i, -39244i)) & firstLeadingBit(22969i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-11222i, -16262i, 0i, -16952i), vec4<i32>(-1i, 1i, -29005i, -1i))), min(-637i, 25605i), 2147483647i)), ~_wgslsmith_clamp_i32(func_1() & _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -2147483647i, 0i), vec4<i32>(2692i, 0i, -29345i, -22691i)), firstTrailingBit(min(-12142i, 1i)), _wgslsmith_mod_i32(0i, ~(-54610i))), countOneBits(min(2147483647i << (u_input.b.x % 32u), 0i) | 1i));
    var var_2 = vec3<u32>(global4[_wgslsmith_index_u32(firstTrailingBit(0u), 25u)], _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, ~_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], global4[_wgslsmith_index_u32(u_input.a.x, 25u)])), 4294967295u), 20322u);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, -993f, global1.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1000f, -1754f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -730f), -908f, _wgslsmith_f_op_f32(-930f * 981f)))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-908f, _wgslsmith_div_f32(480f, 1204f), _wgslsmith_f_op_f32(floor(341f))))));
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1076f, 2195f) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)), _wgslsmith_div_f32(var_3.x, var_3.x)), var_3.x)));
}

