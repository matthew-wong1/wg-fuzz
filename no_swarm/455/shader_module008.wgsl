struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: vec2<bool>;

var<private> global2: vec3<u32>;

var<private> global3: u32;

var<private> global4: array<Struct_4, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    global4 = array<Struct_4, 6>();
    global1 = select(select(vec2<bool>(true, true && all(vec3<bool>(true, true, global1.x))), vec2<bool>(true, !all(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), !vec2<bool>(global1.x, global1.x)), select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global1.x, true, false, global1.x)), select(vec4<bool>(global1.x, false, true, true), vec4<bool>(false, true, false, false), global1.x)))), any(!vec2<bool>(true == global1.x, true)));
    let var_0 = ~select(abs(max(vec4<u32>(u_input.c.x, 0u, 107040u, 66715u) << (vec4<u32>(27222u, arg_0.x, 1u, 0u) % vec4<u32>(32u)), vec4<u32>(34755u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 7u)], 7u)], u_input.e.x, 12688u))), ~vec4<u32>(arg_0.x, 1u, 4294967295u, 0u) & ~firstTrailingBit(vec4<u32>(9427u, u_input.b, arg_0.x, 92542u)), select(vec4<bool>(!global1.x, !global1.x, global1.x || true, true), !select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, global1.x, global1.x, false)), !select(vec4<bool>(true, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, false, false))));
    var var_1 = -1483f;
    global1 = !vec2<bool>(true || all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x))), select(!(!global1.x), any(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), true)), true));
    return vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(0i), u_input.d.x), u_input.d.yx), _wgslsmith_dot_vec4_i32(-countOneBits(max(vec4<i32>(u_input.d.x, 32926i, u_input.d.x, -6240i), vec4<i32>(-2147483647i, 0i, u_input.d.x, u_input.a))), vec4<i32>(abs(u_input.a) << (~40973u % 32u), -u_input.a, max(-45192i, u_input.a) | -2147483647i, ~u_input.d.x)), u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_mult_i32(2147483647i, arg_3.d.x);
    let var_1 = abs(func_3(arg_0.a.zxz));
    let var_2 = arg_3.a;
    var var_3 = arg_0;
    let var_4 = Struct_1(countOneBits(vec4<u32>(20209u, var_3.a.x, ~(~12991u), ~0u)), var_3.b, -2208f, arg_0.e, i32(-1i) * -8933i);
    return 62930u;
}

fn func_1() -> Struct_3 {
    let var_0 = true;
    global0 = array<u32, 7>();
    let var_1 = 1075f;
    global2 = vec3<u32>(func_2(Struct_1(min(vec4<u32>(u_input.b, global2.x, u_input.b, 45313u) ^ vec4<u32>(global0[_wgslsmith_index_u32(global2.x, 7u)], 1u, 4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(5718u, 7u)], global2.x, u_input.c.x)), var_0, _wgslsmith_f_op_f32(ceil(var_1)), -u_input.a, 12922i), vec2<f32>(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-var_1)), 870f), Struct_2(any(select(vec2<bool>(var_0, global1.x), vec2<bool>(true, var_0), vec2<bool>(false, false))), false), global4[_wgslsmith_index_u32(1u, 6u)]), ~(func_2(Struct_1(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global2.x, 7u)], 1930u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), true, 1139f, -43195i, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -827f)), Struct_2(var_0, true), global4[_wgslsmith_index_u32(abs(global2.x), 6u)]) << (8432u % 32u)), 15836u);
    let var_2 = Struct_1(~max(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 0u, 1u, u_input.e.x), vec4<u32>(global2.x, global2.x, u_input.c.x, 16717u), vec4<bool>(true, true, var_0, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(60957u, 7813u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global2.x, 7u)]), vec4<u32>(u_input.b, u_input.b, u_input.c.x, 10694u)), vec4<u32>(24621u, global0[_wgslsmith_index_u32(u_input.b, 7u)], 1u, 1u) >> (vec4<u32>(global2.x, 1u, 0u, u_input.e.x) % vec4<u32>(32u))), ~abs(vec4<u32>(0u, 4294967295u, u_input.c.x, 34738u))), var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1462f + _wgslsmith_f_op_f32(round(var_1)))))), min(firstTrailingBit(select(u_input.d.x, u_input.a, select(false, var_0, true))), u_input.a), max(-2147483647i, u_input.d.x));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c, var_2.c)) + _wgslsmith_f_op_f32(var_1 - var_2.c)), _wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = firstTrailingBit(select(-1i, u_input.d.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_0.a)) > _wgslsmith_f_op_f32(-var_0.a)));
    global1 = !vec2<bool>(global1.x, ~abs(7488u) > _wgslsmith_sub_u32(~4294967295u, ~global2.x));
    let var_2 = Struct_4(Struct_2(true, global1.x), func_1(), select(select(vec2<bool>(true, true), select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, true), vec2<bool>(true, false), vec2<bool>(global1.x, global1.x)), vec2<bool>(false, global1.x)), select(!vec2<bool>(global1.x, true), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x)), !vec2<bool>(global1.x, false))), select(!(!vec2<bool>(global1.x, global1.x)), select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), global1.x), global1.x | global1.x), _wgslsmith_f_op_f32(step(var_0.a, var_0.a)) <= _wgslsmith_f_op_f32(trunc(1657f))), global1.x), _wgslsmith_clamp_vec2_i32(~vec2<i32>(select(9817i, -26332i, false), -u_input.a), u_input.d.yy ^ u_input.d.xy, u_input.d.yy), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.a, u_input.d.x, 0i, 19564i)), vec4<i32>(u_input.d.x, -1i, u_input.a, 28386i) & -vec4<i32>(-1i, u_input.d.x, u_input.a, u_input.d.x)) ^ -(~vec4<i32>(u_input.a, 1i, -1442i, u_input.d.x)));
    let var_3 = vec3<u32>(global0[_wgslsmith_index_u32(min(32575u, 54049u), 7u)], 83382u, ~(u_input.c.x >> (select(0u, ~1u, global1.x) % 32u)));
    var var_4 = Struct_2(true, true);
    let x = u_input.a;
    s_output = StorageBuffer((~var_2.e.x << (u_input.b % 32u)) >> (19473u % 32u), 4294967295u, select(reverseBits(vec2<u32>(var_3.x, func_2(Struct_1(vec4<u32>(u_input.e.x, global2.x, var_3.x, u_input.b), false, var_2.b.a, -22868i, var_2.e.x), vec2<f32>(var_2.b.a, var_2.b.a), var_2.a, Struct_4(var_2.a, var_2.b, var_2.c, vec2<i32>(var_2.e.x, var_2.d.x), var_2.e)))), vec2<u32>(1u, 0u), vec2<bool>(global1.x & (var_2.b.a > -1000f), var_2.a.b | global1.x)));
}

