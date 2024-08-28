struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec3<i32>(i32(-2147483648), 7927i, -12292i), false, vec2<u32>(1u, 1u), true));

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: array<u32, 32> = array<u32, 32>(26850u, 57753u, 1u, 4294967295u, 59285u, 4294967295u, 1908u, 34427u, 35834u, 59860u, 25069u, 7119u, 0u, 74329u, 4715u, 27301u, 62381u, 8554u, 0u, 66804u, 3063u, 22485u, 4294967295u, 21730u, 41602u, 0u, 1u, 74323u, 4045u, 0u, 14834u, 1u);

var<private> global3: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(i32(-2147483648), -48337i, -1i), vec3<i32>(-10837i, 1i, 0i), vec3<i32>(0i, -1i, -1i), vec3<i32>(62632i, 60725i, 2147483647i), vec3<i32>(12843i, 2147483647i, 1i), vec3<i32>(0i, -1414i, -15725i), vec3<i32>(i32(-2147483648), -32245i, i32(-2147483648)), vec3<i32>(-25013i, i32(-2147483648), -21403i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(2147483647i, 3158i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = vec4<u32>(select(_wgslsmith_add_u32(reverseBits(~u_input.c), u_input.a), 1u, global0.a.e), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.d.x, 4294967295u, 37513u, global2[_wgslsmith_index_u32(0u, 32u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.a.x, global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)], 43857u) << (vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.d.x, 32u)], 32u)], 32u)], 1u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(global0.a.d.x, 0u, global0.a.a.x, 23718u), vec4<u32>(50346u, 107225u, 1u, 4294967295u) ^ vec4<u32>(u_input.a, u_input.e.x, 4294967295u, 4294967295u))) | ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 32u)], 1u), global0.a.d), select(global0.a.a.zy, vec2<u32>(global0.a.d.x, global2[_wgslsmith_index_u32(24620u, 32u)]), global0.a.c)), 32u)], ~min(~(~4294967295u), _wgslsmith_mult_u32(1u, 1u)), global0.a.d.x);
    global1 = array<vec3<bool>, 13>();
    global1 = array<vec3<bool>, 13>();
    let var_1 = 1000f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f));
    return ~vec3<u32>(4559u, 0u, ~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, countOneBits(u_input.c)), 32u)]);
}

fn func_2() -> vec2<u32> {
    global3 = array<vec3<i32>, 11>();
    global3 = array<vec3<i32>, 11>();
    global1 = array<vec3<bool>, 13>();
    global2 = array<u32, 32>();
    global0 = Struct_3(Struct_1(func_3(), vec3<i32>(2638i, u_input.b, 2147483647i) ^ firstTrailingBit(vec3<i32>(2147483647i, global0.a.b.x, 497i) >> (vec3<u32>(global2[_wgslsmith_index_u32(67692u, 32u)], global2[_wgslsmith_index_u32(54824u, 32u)], global0.a.d.x) % vec3<u32>(32u))), any(select(select(global1[_wgslsmith_index_u32(11184u, 13u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 32u)], 13u)], global0.a.e), select(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(global0.a.a.x, 13u)], vec3<bool>(true, global0.a.c, global0.a.c)), true)), _wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(0u, 0u)), abs(vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 32u)], 95527u)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(global0.a.d.x, 28953u), u_input.e.zx)), global0.a.e));
    return vec2<u32>(global2[_wgslsmith_index_u32(1u, 32u)], u_input.a & reverseBits(16505u << (u_input.a % 32u))) >> (firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec3<u32>(0u, arg_2.d.x << (~51245u % 32u), 0u), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.b.x, arg_2.b.x, global0.a.b.x), firstLeadingBit(vec3<i32>(-43397i, 0i, arg_2.b.x))), _wgslsmith_dot_vec2_i32(global0.a.b.zx, arg_2.b.yz << (vec2<u32>(u_input.a, arg_2.a.x) % vec2<u32>(32u))), 2147483647i) ^ -vec3<i32>(u_input.d ^ arg_2.b.x, global0.a.b.x, global0.a.b.x), !all(vec2<bool>(true, true)), vec2<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~arg_2.d.x, arg_2.d.x), 32u)], u_input.e.x), arg_2.e);
    let var_1 = Struct_3(global0.a);
    let var_2 = vec2<bool>(true, !var_0.c);
    global0 = Struct_3(var_1.a);
    var var_3 = select(!vec4<bool>(false, !arg_2.e, true, true), select(!(!select(vec4<bool>(false, true, true, arg_2.e), vec4<bool>(arg_2.e, true, global0.a.e, false), vec4<bool>(true, global0.a.e, true, var_1.a.c))), vec4<bool>(var_0.e, all(vec2<bool>(true, true)), any(!global1[_wgslsmith_index_u32(arg_2.d.x, 13u)]), any(global1[_wgslsmith_index_u32(83158u | var_0.a.x, 13u)])), false), true);
    return abs(arg_2.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> Struct_3 {
    global3 = array<vec3<i32>, 11>();
    global1 = array<vec3<bool>, 13>();
    global1 = array<vec3<bool>, 13>();
    global1 = array<vec3<bool>, 13>();
    global1 = array<vec3<bool>, 13>();
    return Struct_3(global0.a);
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    global1 = array<vec3<bool>, 13>();
    let var_0 = func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.d.x, global0.a.d.x, 33144u), func_4(global0.a.e, _wgslsmith_f_op_f32(abs(arg_0.x)), Struct_1(vec3<u32>(2882u, global2[_wgslsmith_index_u32(u_input.c, 32u)], 0u), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.a.b.x, -15140i, u_input.b), vec3<i32>(14987i, -2147483647i, 4618i)), global0.a.e & global0.a.e, func_2(), global0.a.e))), global1[_wgslsmith_index_u32(~4294967295u, 13u)], countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global0.a.b.zz, global0.a.b.zz), ~(-61014i)), vec2<i32>(_wgslsmith_clamp_i32(u_input.d, global0.a.b.x, 0i), ~40394i))), vec4<f32>(_wgslsmith_f_op_f32(1119f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(arg_0.x + -508f)))), -561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), all(vec4<bool>(global0.a.c, false, global0.a.c, true)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), arg_0.x));
    let var_1 = all(vec3<bool>(!(arg_0.x >= arg_0.x), false, global0.a.c));
    return StorageBuffer(vec2<i32>(global0.a.b.x, global0.a.b.x), ~(firstTrailingBit(u_input.d) & (_wgslsmith_mult_i32(u_input.b, 1i) | min(28332i, -62080i))), _wgslsmith_sub_vec3_i32(global3[_wgslsmith_index_u32(~u_input.c, 11u)] << (reverseBits(vec3<u32>(4294967295u, 1u, global2[_wgslsmith_index_u32(0u, 32u)])) % vec3<u32>(32u)), ~vec3<i32>(var_0.a.b.x, min(0i, 30929i), ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 13>();
    global3 = array<vec3<i32>, 11>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(845f)), _wgslsmith_f_op_f32(round(-1339f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1653f)) * -270f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(694f - -627f), _wgslsmith_div_f32(926f, -1011f), !global0.a.c)))));
}

