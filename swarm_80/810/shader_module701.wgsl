struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: u32) -> vec2<f32> {
    var var_0 = global0.a.a;
    let var_1 = global1[_wgslsmith_index_u32(min(u_input.a.x, 4294967295u), 12u)];
    var var_2 = select(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(552u, u_input.a.x, u_input.d) >> (vec3<u32>(arg_3, u_input.d, 4294967295u) % vec3<u32>(32u)), vec3<u32>(0u, u_input.d, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 52181u) % vec3<u32>(32u)))) & vec3<u32>(~2348u & min(u_input.a.x, 1u), _wgslsmith_sub_u32(~0u, max(arg_3, u_input.a.x)), select(~u_input.a.x, abs(30832u), !global0.a.a)), vec3<u32>(_wgslsmith_add_u32(1u, arg_3), _wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.d, 3276u >> (u_input.a.x % 32u)), _wgslsmith_mult_u32(~arg_3, _wgslsmith_div_u32(arg_3, 4294967295u))), u_input.d & u_input.a.x), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(374f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(25936u, 12u)], global1[_wgslsmith_index_u32(13310u, 12u)])), -916f, _wgslsmith_f_op_f32(f32(-1f) * -829f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1633f, global1[_wgslsmith_index_u32(41423u, 12u)], global1[_wgslsmith_index_u32(var_2.x, 12u)], -2253f)))))));
    var_0 = select(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, u_input.d) >> (1u % 32u)) < arg_3, !global0.a.a, any(!vec3<bool>(var_2.x != 90656u, all(vec4<bool>(global0.a.a, global0.a.a, global0.a.a, true)), 40913u > var_2.x)));
    return vec2<f32>(global1[_wgslsmith_index_u32(~(~(~(~var_2.x))), 12u)], -456f);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    global1 = array<f32, 12>();
    global0 = Struct_4(arg_1.a);
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.d, u_input.d) >> (abs(select(vec2<u32>(4294967295u, 42192u), countOneBits(vec2<u32>(22870u, 6308u)), select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(global0.a.a, arg_1.a.a), vec2<bool>(global0.a.a, false)))) % vec2<u32>(32u)), ~(vec2<u32>(1u, abs(u_input.a.x)) ^ select(u_input.a, u_input.a, all(vec3<bool>(false, false, true)))), _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(54525u & u_input.a.x), 4068u), ~u_input.a));
    global1 = array<f32, 12>();
    let var_1 = Struct_1(true, _wgslsmith_div_i32(_wgslsmith_sub_i32(-45524i, -u_input.b), _wgslsmith_dot_vec2_i32(-reverseBits(vec2<i32>(16571i, 26619i)), arg_0)));
    return 2147483647i;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    global1 = array<f32, 12>();
    let var_0 = func_4(u_input.c.zy, Struct_2(global0.a, arg_0.d, global0.a.b, arg_0.d, global0.a), _wgslsmith_f_op_vec2_f32(func_3(-_wgslsmith_add_i32(global0.a.b << (0u % 32u), _wgslsmith_sub_i32(22263i, global0.a.b)), 2147483647i, arg_0.c, ~reverseBits(115248u))));
    let var_1 = !select(vec4<bool>(global0.a.a, arg_0.b.a, _wgslsmith_div_f32(arg_1, -199f) != _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), arg_0.d.a), vec4<bool>(arg_0.a.a, true, all(!vec2<bool>(arg_0.d.a, arg_0.d.a)), true), any(!vec4<bool>(global0.a.a, global0.a.a, true, arg_0.a.a)) | select(true, true, true));
    var var_2 = Struct_2(Struct_1(all(vec2<bool>(true, true)), -1i), Struct_1(true, _wgslsmith_mult_i32(~min(var_0, 0i), ~_wgslsmith_div_i32(1i, 1i))), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, 12002i), u_input.c.zzx)) >> (reverseBits(~vec3<u32>(u_input.d, 0u, u_input.d)) % vec3<u32>(32u)), vec3<i32>(~_wgslsmith_add_i32(2147483647i, var_0), i32(-1i) * -13575i, ~reverseBits(global0.a.b))), arg_0.a, Struct_1(global0.a.a, 1i));
    var var_3 = global0.a.a;
    return Struct_3(firstLeadingBit(-(vec3<i32>(2147483647i, -9113i, arg_0.b.b) & u_input.c.wyw) << ((reverseBits(vec3<u32>(u_input.d, 1u, 4294967295u)) ^ vec3<u32>(u_input.d, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<f32> {
    global1 = array<f32, 12>();
    var var_0 = func_2(arg_1, -794f);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 12u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~arg_0.x, 12u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))))));
    var var_2 = -53394i;
    var var_3 = Struct_1(-1i > arg_1.d.b, abs(_wgslsmith_sub_i32(u_input.c.x, select(_wgslsmith_clamp_i32(2147483647i, u_input.e, 2147483647i), func_2(arg_1, -1772f).a.x, arg_2.x && false))));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1763f), -1098f), 834f, _wgslsmith_f_op_f32(-var_1), 249f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2608f, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], -488f, global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, -966f, 464f, global1[_wgslsmith_index_u32(u_input.a.x, 12u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1(countOneBits(vec4<u32>(15588u, 69309u, u_input.d, u_input.d)), Struct_2(Struct_1(true, -2147483647i), global0.a, -67830i, Struct_1(global0.a.a, 2147483647i), global0.a), !vec3<bool>(global0.a.a, true, global0.a.a)))))), 26219u > _wgslsmith_add_u32(u_input.d, _wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(12696u)))));
    let var_1 = Struct_2(global0.a, Struct_1(((u_input.b >> (7017u % 32u)) >> (0u % 32u)) <= countOneBits(u_input.c.x | global0.a.b), global0.a.b), _wgslsmith_div_i32(-1459i, 1i), global0.a, Struct_1(!any(select(vec2<bool>(global0.a.a, false), vec2<bool>(true, global0.a.a), vec2<bool>(true, global0.a.a))), 4201i));
    var var_2 = global0.a;
    var var_3 = select(select(!(!select(vec3<bool>(false, false, global0.a.a), vec3<bool>(false, true, var_1.d.a), vec3<bool>(global0.a.a, var_2.a, true))), vec3<bool>((64910u ^ u_input.d) > ~5068u, true, any(vec3<bool>(false, global0.a.a, var_1.e.a))), vec3<bool>(!all(vec4<bool>(var_2.a, var_1.d.a, false, var_2.a)), var_2.a, all(select(vec4<bool>(global0.a.a, false, false, false), vec4<bool>(false, true, false, var_2.a), vec4<bool>(global0.a.a, false, true, global0.a.a))))), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, global0.a.a, var_2.a), false), vec3<bool>(!all(vec4<bool>(global0.a.a, var_1.a.a, false, false)), var_1.a.a, false), select(select(select(vec3<bool>(false, false, global0.a.a), vec3<bool>(global0.a.a, global0.a.a, global0.a.a), vec3<bool>(true, var_1.b.a, var_2.a)), select(vec3<bool>(var_1.e.a, var_2.a, var_1.d.a), vec3<bool>(true, var_2.a, var_1.b.a), false), !global0.a.a), vec3<bool>(true, false, true), vec3<bool>(global0.a.a, false, u_input.a.x < u_input.d))), select(vec3<bool>(global0.a.a, _wgslsmith_mult_u32(u_input.d, 64557u) != u_input.a.x, true), select(vec3<bool>(false, var_1.b.a, any(vec4<bool>(var_2.a, false, var_1.d.a, global0.a.a))), select(!vec3<bool>(false, false, global0.a.a), vec3<bool>(true, var_2.a, var_1.a.a), !vec3<bool>(var_2.a, true, var_1.b.a)), vec3<bool>(var_1.b.a, all(vec2<bool>(true, var_1.a.a)), any(vec3<bool>(false, false, false)))), all(!vec4<bool>(true, true, var_1.b.a, var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.d, 3908u, 4294967295u, 95099u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.d)), vec4<u32>(1u, 0u, u_input.a.x, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -526f))))) * var_0.x), u_input.d, global0.a.b);
}

