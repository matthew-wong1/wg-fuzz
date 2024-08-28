struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<u32> = vec3<u32>(73934u, 4294967295u, 4294967295u);

var<private> global2: vec3<f32>;

var<private> global3: array<f32, 20> = array<f32, 20>(-1781f, 303f, 1000f, -885f, -1000f, -536f, -1277f, 616f, 723f, 464f, 683f, 1000f, 711f, 538f, -308f, -4012f, 733f, -150f, -889f, -128f);

var<private> global4: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(4294967295u, 64290u, 0u), vec3<u32>(1u, 31313u, 7128u), vec3<u32>(33221u, 3604u, 68269u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 34508u, 0u), vec3<u32>(1u, 1u, 17364u), vec3<u32>(4294967295u, 21774u, 4294967295u), vec3<u32>(5783u, 32575u, 1u), vec3<u32>(19237u, 4294967295u, 4774u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 47821u, 78031u), vec3<u32>(8308u, 1u, 0u), vec3<u32>(1737u, 11662u, 4294967295u), vec3<u32>(0u, 4294967295u, 14490u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 83074u, 0u), vec3<u32>(4294967295u, 1u, 12258u), vec3<u32>(1u, 62652u, 9472u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = -812f;
    global1 = vec3<u32>(~global0.a.a, 1u, ~_wgslsmith_mod_u32(~_wgslsmith_add_u32(global0.a.a, 19703u), global1.x));
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(188f, 250f, 1680f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, global2.x, 1141f)), vec3<f32>(global2.x, _wgslsmith_f_op_f32(429f + global2.x), _wgslsmith_f_op_f32(select(-1492f, -1212f, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3[_wgslsmith_index_u32(1u, 20u)], global0.c, 291f)))) * vec3<f32>(_wgslsmith_f_op_f32(-global2.x), -397f, 1524f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(849f, global0.c, _wgslsmith_f_op_f32(f32(-1f) * -927f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(global1.x, 20u)], global3[_wgslsmith_index_u32(global0.a.a, 20u)], 957f), vec3<f32>(451f, global2.x, -504f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global2.zx * _wgslsmith_f_op_vec2_f32(-global2.yx))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-1011f, global2.x), global2.x, _wgslsmith_f_op_f32(max(global2.x, global3[_wgslsmith_index_u32(0u, 20u)])))))));
    return ~global0.b.yy;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = func_3();
    let var_1 = vec4<f32>(119f, arg_1.d.x, _wgslsmith_f_op_f32(global0.c * -254f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-952f, _wgslsmith_div_f32(235f, global3[_wgslsmith_index_u32(arg_1.c, 20u)])) * _wgslsmith_f_op_f32(-arg_0.c)))));
    let var_2 = -2687f;
    var_0 = vec2<i32>(-_wgslsmith_dot_vec2_i32(arg_0.b.zx, select(global0.b.wx & vec2<i32>(u_input.d.x, -2147483647i), -vec2<i32>(-51580i, 9350i), vec2<bool>(true, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, _wgslsmith_mult_i32(0i, arg_1.e)), arg_1.b, var_0.x), ~vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(-2147483647i, global0.a.c, u_input.d.x, -21182i)), -18886i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, arg_1.b, 47609i), arg_0.b.xzx))));
    var var_3 = Struct_1(_wgslsmith_sub_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 22920u, 58441u, 19339u), vec4<u32>(0u, 9398u, 468u, arg_0.a.a))), arg_1.a), var_0.x, _wgslsmith_mult_u32(firstLeadingBit(firstTrailingBit(firstTrailingBit(u_input.b))), ~arg_1.a.x & ~select(4294967295u, global1.x, true)), vec3<f32>(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-368f)) + _wgslsmith_f_op_f32(-896f * _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.e, 20u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(99908u, 20u)], arg_0.c))), arg_0.c)), -abs(~(-7904i)));
    return !vec2<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), true);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global2.yy, vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(global0.c, global2.x, false))), 377f), select(vec2<bool>(all(vec3<bool>(true, false, true)), any(vec3<bool>(false, true, true))), func_2(Struct_3(Struct_2(global1.x, -3557i, u_input.a.x), vec4<i32>(global0.a.b, 24462i, -1i, u_input.c.x), global0.c), Struct_1(vec4<u32>(64104u, 7145u, 6425u, u_input.b), -1i, u_input.e, vec3<f32>(555f, global0.c, global3[_wgslsmith_index_u32(19353u, 20u)]), u_input.a.x)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xx)))));
    let var_1 = (vec4<i32>(-1i) * -global0.b) << (vec4<u32>(global1.x, u_input.e, _wgslsmith_dot_vec4_u32(select(vec4<u32>(global1.x, 3939u, 4294967295u, global0.a.a), vec4<u32>(u_input.e, arg_1.x, global0.a.a, 35791u), true) >> (select(vec4<u32>(59529u, 1u, 9901u, 1u), vec4<u32>(global1.x, arg_1.x, global0.a.a, arg_1.x), vec4<bool>(true, false, false, false)) % vec4<u32>(32u)), ~vec4<u32>(48984u, u_input.e, 5808u, global1.x)), ~(~global1.x) >> ((12979u | _wgslsmith_dot_vec4_u32(vec4<u32>(8313u, 23741u, 4294967295u, global0.a.a), vec4<u32>(28351u, global0.a.a, arg_1.x, global0.a.a))) % 32u)) % vec4<u32>(32u));
    global3 = array<f32, 20>();
    var var_2 = Struct_3(Struct_2(~_wgslsmith_clamp_u32(45588u >> (1u % 32u), global1.x, global1.x), var_1.x, _wgslsmith_clamp_i32(select(var_1.x, var_1.x, false), 67311i >> (u_input.b % 32u), ~(-12892i)) >> (global1.x % 32u)), -reverseBits(_wgslsmith_clamp_vec4_i32(var_1, ~vec4<i32>(var_1.x, arg_0.x, var_1.x, -1i), vec4<i32>(-44122i, 13309i, 2147483647i, u_input.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -159f)))));
    let var_3 = ~abs(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, global1.x, var_2.a.a), global4[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<u32>(global1.x, 50453u, 71042u) ^ global4[_wgslsmith_index_u32(global0.a.a, 18u)]), vec3<u32>(~4294967295u, u_input.e, global1.x)));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(858f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-598f, var_2.c, true)) + _wgslsmith_f_op_f32(269f * global3[_wgslsmith_index_u32(arg_1.x, 20u)])), 692f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, 1000f, -793f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, 467f, global3[_wgslsmith_index_u32(global0.a.a, 20u)], 1000f)) + vec4<f32>(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_div_f32(-202f, global3[_wgslsmith_index_u32(global0.a.a, 20u)]), _wgslsmith_div_f32(-1000f, global3[_wgslsmith_index_u32(u_input.e, 20u)]), -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-650f, global2.x, global0.c, 661f)))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true)))));
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-451f, _wgslsmith_div_f32(1768f, _wgslsmith_f_op_f32(f32(-1f) * -224f)), global3[_wgslsmith_index_u32(1u, 20u)]) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(u_input.d.x, global0.b.x, u_input.d.x), _wgslsmith_mod_vec2_u32(global1.xz, vec2<u32>(43283u, global0.a.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, var_0.x, 703f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(456f, -1271f, global0.c) + vec3<f32>(757f, global0.c, global3[_wgslsmith_index_u32(1u, 20u)]))) + var_0.yyx))));
    var var_1 = countOneBits(~global4[_wgslsmith_index_u32(global1.x, 18u)]);
    var var_2 = Struct_3(global0.a, ~(-(~vec4<i32>(u_input.a.x, -2147483647i, 1i, global0.a.c)) << (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 121249u, var_1.x, 4294967295u), vec4<u32>(3879u, global0.a.a, 4294967295u, u_input.e), vec4<u32>(global1.x, u_input.b, 4294967295u, 4191u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)))));
    var_1 = max(vec3<u32>(~(_wgslsmith_mod_u32(global1.x, u_input.e) & ~global0.a.a), firstTrailingBit(var_2.a.a & ~global1.x), 0u), _wgslsmith_sub_vec3_u32(global4[_wgslsmith_index_u32(var_1.x, 18u)], vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(19915u, global0.a.a, 4294967295u, global0.a.a), vec4<u32>(1u, 1u, 46279u, 4294967295u))), max(1u, var_2.a.a) | abs(1u), u_input.e)));
    let var_3 = false;
    var var_4 = vec2<bool>(true, false);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(global0.a.a, 20u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(-4830i);
}

