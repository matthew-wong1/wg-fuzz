struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)));

var<private> global3: f32 = 484f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(~abs(select(vec4<i32>(1i, u_input.a.x, 2748i, 28920i) << (vec4<u32>(4294967295u, 42266u, global0[_wgslsmith_index_u32(1u, 7u)], 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, -20536i, -7642i), vec4<i32>(u_input.a.x, -44524i, u_input.a.x, u_input.a.x)), vec4<bool>(true, false, false, false))), _wgslsmith_mult_i32(-(~reverseBits(1i)), ~u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.xy + _wgslsmith_f_op_vec2_f32(-global1.a.yy)));
    let var_2 = select(vec3<u32>(4294967295u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46009u, 7u)], 7u)], 7u)] % 32u), 7u)], 1u) ^ ~0u, ((53956u ^ global0[_wgslsmith_index_u32(50237u, 7u)]) ^ global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(33347u, 7u)], 7u)]) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(35934u, 59266u), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43400u, 7u)], 7u)], 7u)])) % 32u)), abs(~(~vec3<u32>(0u, 95750u, 33594u))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5302u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 36437u) != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59742u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)])));
    var var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1424f)) * _wgslsmith_div_f32(1377f, global1.a.x)));
    var var_4 = -278f;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(~(-u_input.a.x), max(470i, _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zz)) | var_0.a.x), reverseBits(select(firstLeadingBit(vec2<i32>(2147483647i, 28068i)) | u_input.a.yz, vec2<i32>(2147483647i, -48726i), !(var_2.x <= 0u))));
}

fn func_2() -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.a.x)) - _wgslsmith_f_op_vec2_f32(trunc(global1.a.yz))), vec4<i32>(~func_3(), i32(-1i) * -reverseBits(u_input.a.x), var_0, firstLeadingBit(~u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(global1.b * global1.b), _wgslsmith_f_op_f32(select(769f, global1.b, true)), _wgslsmith_f_op_f32(global1.b + global1.a.x))))), !any(vec4<bool>(true, true, true, true)), ~(-vec4<i32>(abs(var_0), var_0, i32(-1i) * -44060i, -var_0)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)), -1000f);
    global2 = array<Struct_2, 11>();
    let var_3 = 28779i | ((_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_1.e, vec4<i32>(var_0, u_input.a.x, -16459i, var_1.b.x), var_1.b), _wgslsmith_mult_vec4_i32(var_1.b, var_1.b)) | u_input.a.x) | u_input.a.x);
    return select(~14370u, _wgslsmith_mult_u32(84640u, ~(~global0[_wgslsmith_index_u32(4294967295u, 7u)])), !(3644i < var_0) || !(!var_1.d)) & _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(53321u, 7u)], 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(43529u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34411u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 10696u) & reverseBits(vec3<u32>(47298u, 26050u, 3979u)), select(select(vec3<u32>(21583u, 33505u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(59922u, 7u)], 57427u, global0[_wgslsmith_index_u32(24947u, 7u)]), vec3<bool>(var_1.d, true, false)), ~vec3<u32>(global0[_wgslsmith_index_u32(14692u, 7u)], 4294967295u, 4294967295u), var_2.b < global1.b)));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    var var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(40726u, 74547u, ~abs(0u), global0[_wgslsmith_index_u32(func_2(), 7u)]), firstLeadingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40119u, 7u)], 7u)], global0[_wgslsmith_index_u32(6091u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(8868u, 7u)], 42945u, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38486u, 7u)], 7u)], global0[_wgslsmith_index_u32(28467u, 7u)], global0[_wgslsmith_index_u32(36234u, 7u)], 16327u)))));
    let var_1 = Struct_1(firstLeadingBit(vec4<i32>(arg_0, arg_0, ~arg_0, u_input.a.x)), _wgslsmith_sub_i32((arg_0 << (4294967295u % 32u)) & _wgslsmith_add_i32(firstTrailingBit(u_input.a.x), arg_0), arg_0));
    global1 = Struct_4(vec3<f32>(-1562f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.x - global1.a.x))), _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(998f * 1252f))), arg_1.a.x), _wgslsmith_f_op_f32(sign(1817f)));
    var var_2 = 4294967295u;
    var_2 = _wgslsmith_mod_u32(firstTrailingBit(64842u), var_0.x) << (0u % 32u);
    return arg_3;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    global3 = global1.b;
    global2 = array<Struct_2, 11>();
    global0 = array<u32, 7>();
    global2 = array<Struct_2, 11>();
    global2 = array<Struct_2, 11>();
    return abs(select(vec4<u32>(0u, abs(1u), firstTrailingBit(global0[_wgslsmith_index_u32(12274u, 7u)]), global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1313u, 7u)], 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), 7u)]) << (~select(vec4<u32>(4294967295u, 17453u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(37944u, 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(479u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7818u, 7u)], 7u)], 7u)], 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 7u)]), true) % vec4<u32>(32u)), vec4<u32>(abs(0u), 1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(8698u, 7u)], 4294967295u), 26220u), select(78343u, ~global0[_wgslsmith_index_u32(0u, 7u)], true)), !vec4<bool>(arg_1.a.x, u_input.a.x < arg_2.b, !arg_1.a.x, arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), vec2<bool>(select(false, true, true), true)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(max(21611u, ~18941u), ~select(global0[_wgslsmith_index_u32(4323u, 7u)] << (global0[_wgslsmith_index_u32(0u, 7u)] % 32u), 1u, 933f < global1.b)), ~global0[_wgslsmith_index_u32(~(~(1u << (0u % 32u))), 7u)]);
    let var_2 = ~(func_4(func_1(u_input.a.x, Struct_4(global1.a, -1082f), global2[_wgslsmith_index_u32(12330u, 11u)], Struct_3(u_input.a)), Struct_2(vec2<bool>(false, false)), Struct_1(vec4<i32>(2147483647i, u_input.a.x, 2980i, u_input.a.x), 34307i)) ^ min(vec4<u32>(36668u, var_1, 0u, var_1), vec4<u32>(51395u, 80951u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 7u)], 7u)], 0u))) << (abs((vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 7u)], 7u)], 7u)], 7u)], 8461u, 15860u, 4294967295u) << (~vec4<u32>(4294967295u, 72347u, 0u, 43642u) % vec4<u32>(32u))) & ~(~vec4<u32>(4294967295u, 69688u, 32959u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 7u)], 7u)], 7u)]))) % vec4<u32>(32u));
    global0 = array<u32, 7>();
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zzx);
}

