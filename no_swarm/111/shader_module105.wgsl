struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(478f, vec3<bool>(false, false, false), vec2<bool>(false, true), vec4<f32>(-1087f, 2204f, 1000f, 1099f), vec3<u32>(4294967295u, 0u, 1u));

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 19>;

var<private> global3: vec3<bool>;

var<private> global4: array<f32, 4> = array<f32, 4>(525f, 564f, 836f, -1639f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: i32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(1u, 19u)];
    global2 = array<Struct_2, 19>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.b, -2238f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + global0.d.wxx))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a - global0.d.xxz))), global0.d.xwx)), 817f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-892f)))))));
    var var_2 = select(!(!vec4<bool>(true, all(global0.b), global1.e, !global3.x)), !select(select(select(vec4<bool>(global1.d, var_0.d, global0.c.x, false), vec4<bool>(false, true, global0.c.x, true), global1.d), select(vec4<bool>(true, var_0.d, global3.x, false), vec4<bool>(global3.x, true, global0.b.x, false), false), true), select(!vec4<bool>(true, var_0.d, true, global0.c.x), select(vec4<bool>(true, var_0.d, false, global0.b.x), vec4<bool>(false, false, true, var_0.d), vec4<bool>(true, true, true, global1.d)), vec4<bool>(true, true, true, true)), true), 1i > _wgslsmith_clamp_i32(arg_3, select(49719i, arg_1.x, all(vec4<bool>(false, true, true, global1.e))), max(-u_input.b, abs(-1i))));
    var var_3 = max(vec2<i32>(u_input.b, 2147483647i), -arg_0);
    return any(select(var_2.zxw, var_2.xxx, true));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_div_f32(-503f, -1024f), !vec3<bool>(global1.e, true, global3.x), global0.c, global0.d, _wgslsmith_mod_vec3_u32(~global1.c, reverseBits(vec3<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(global0.e, vec3<u32>(global1.c.x, 45017u, 28066u))))));
    global4 = array<f32, 4>();
    var var_1 = global0.d.zzy;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-912f))), vec3<bool>(!func_3(-vec2<i32>(-8291i, 41996i), vec4<i32>(1i, u_input.b, 2147483647i, -2147483647i), vec2<u32>(1u, u_input.a), u_input.b), true, false), select(!vec2<bool>(!global3.x, true), select(vec2<bool>(var_0.b.x, true), select(!global0.c, vec2<bool>(true, global3.x), vec2<bool>(global3.x, true)), vec2<bool>(all(vec4<bool>(false, false, global3.x, true)), global0.b.x == true)), vec2<bool>(!select(global0.b.x, false, global1.e), global0.e.x > ~8147u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - var_1.x), -309f, global0.b.x))), 777f, 1f, -186f), global0.e);
    var var_3 = var_2;
    return vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f * var_0.d.x) * _wgslsmith_f_op_f32(floor(var_1.x))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(141f * global4[_wgslsmith_index_u32(global1.c.x, 4u)]), global1.a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(global1.b * global4[_wgslsmith_index_u32(global1.c.x, 4u)]))), u_input.b != _wgslsmith_add_i32(min(13172i, u_input.b), ~_wgslsmith_div_i32(u_input.b, 15305i)), all(var_3.c), !all(var_3.c));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)), _wgslsmith_f_op_f32(-642f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_mult_vec3_u32(min(~(vec3<u32>(u_input.a, 63347u, global1.c.x) ^ vec3<u32>(4294967295u, 0u, u_input.a)), vec3<u32>(global1.c.x, 28780u, u_input.a)), global1.c), all(global3.zy), _wgslsmith_sub_u32(u_input.a, ~(~u_input.a)) < 4294967295u);
    global2 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_f_op_f32(global1.a.x * -2459f);
    global2 = array<Struct_2, 19>();
    let var_1 = -64756i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global0.d.xxx, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_mult_vec3_u32(countOneBits(~countOneBits(global0.e)), ~vec3<u32>(_wgslsmith_mult_u32(u_input.a, 1u), global0.e.x, global0.e.x)), select(global0.b.x, all(!func_1(global0.b.x)), global1.d), !(global1.c.x == ~(~global0.e.x)));
    global3 = global0.b;
    global0 = Struct_1(global0.a, vec3<bool>(global0.b.x, all(select(!global0.b, func_1(true).yyy, true)), !all(select(vec4<bool>(true, global0.c.x, false, global0.b.x), vec4<bool>(global3.x, false, global0.b.x, global3.x), global0.c.x))), vec2<bool>(all(!global0.b), true | any(!vec4<bool>(true, true, global1.e, true))), vec4<f32>(512f, _wgslsmith_f_op_f32(global1.b + 1002f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.c.x, global1.c.x), 4u)]))), 213f), firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(abs(global0.e.yz), ~vec2<u32>(global0.e.x, global1.c.x)), ~min(global0.e.x, global1.c.x), 14451u)));
    let var_0 = Struct_1(-626f, !vec3<bool>(false, func_3(vec2<i32>(u_input.b, u_input.b) >> (global0.e.xy % vec2<u32>(32u)), reverseBits(vec4<i32>(-7218i, u_input.b, u_input.b, -2147483647i)), max(global1.c.xx, vec2<u32>(u_input.a, global0.e.x)), 2147483647i), true), vec2<bool>(global3.x && global3.x, false), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.b * global0.d.x), 346f, _wgslsmith_f_op_f32(step(-807f, global0.d.x)), 1f)))), firstLeadingBit((vec3<u32>(1u, u_input.a, global1.c.x) >> (global0.e % vec3<u32>(32u))) | select(vec3<u32>(global1.c.x, global1.c.x, 1u), vec3<u32>(4294967295u, 28074u, global0.e.x), global1.d)) & vec3<u32>(66421u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 0u, u_input.a), vec4<u32>(global0.e.x, global0.e.x, global1.c.x, u_input.a)), vec4<u32>(13787u, u_input.a, global0.e.x, 147u) ^ vec4<u32>(0u, 5322u, 34437u, 4294967295u)), abs(global0.e.x)));
    var var_1 = var_0.c;
    var var_2 = -firstLeadingBit(-2147483647i);
    var var_3 = !vec4<bool>(!all(var_0.b), all(func_2().wxw), var_1.x, !(_wgslsmith_add_i32(u_input.b, u_input.b) > u_input.b));
    global1 = global2[_wgslsmith_index_u32(global0.e.x << (~(~global0.e.x) % 32u), 19u)];
    var_3 = !vec4<bool>(global0.c.x || func_3(vec2<i32>(u_input.b, 60757i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 1203i, u_input.b), vec4<i32>(1i, -16123i, -15423i, u_input.b)), reverseBits(global1.c.zz), 2147483647i), all(!vec3<bool>(var_0.c.x, global1.e, global0.c.x)), true, 30230u > abs(~global1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.zx * vec2<f32>(-1398f, global4[_wgslsmith_index_u32(var_0.e.x, 4u)])) - vec2<f32>(var_0.a, 1269f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4[_wgslsmith_index_u32(var_0.e.x, 4u)], 1637f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -869f), global4[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + -1060f) - 521f), _wgslsmith_f_op_f32(min(global0.a, global1.b)))));
}

