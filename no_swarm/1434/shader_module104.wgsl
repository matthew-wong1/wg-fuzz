struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 30>;

var<private> global3: Struct_3 = Struct_3(vec2<bool>(false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-828f, -269f, _wgslsmith_f_op_f32(round(arg_0))))) + vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(-976f - _wgslsmith_f_op_f32(max(arg_0, -1000f))), arg_0)));
    return global3.a;
}

fn func_2(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_2(1i, max(~abs(vec4<i32>(arg_0.x, 0i, arg_0.x, -22273i)), select(global1.b, global1.b, true)), Struct_1(all(vec2<bool>(true, true)), abs(_wgslsmith_clamp_u32(select(23924u, global1.d, true), abs(37189u), min(51592u, global0[_wgslsmith_index_u32(1u, 17u)])))), ~4294967295u);
    global3 = Struct_3(select(select(select(select(global3.a, global3.a, global3.a.x), !vec2<bool>(global3.a.x, global1.c.a), vec2<bool>(true, false)), !vec2<bool>(false, var_0.c.a), !select(global3.a, vec2<bool>(false, global3.a.x), global1.c.a)), !(!func_3(-514f, vec4<i32>(var_0.b.x, var_0.a, 2147483647i, global1.a))), global3.a));
    global1 = var_0;
    global3 = Struct_3(!global3.a);
    global1 = var_0;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(143f, -237f)), _wgslsmith_f_op_f32(select(-495f, _wgslsmith_f_op_f32(f32(-1f) * -1746f), true)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1923f - 1049f) * 569f), _wgslsmith_f_op_f32(-2365f - _wgslsmith_f_op_f32(f32(-1f) * -719f))))), -840f, _wgslsmith_f_op_f32(round(-1079f)), 1f);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(-global1.b.ww)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1045f, 1448f, -162f, 843f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, 1768f, 523f, -3753f))))));
    var var_1 = Struct_1(true, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~(~4294967295u), 17u)], 47490u));
    let var_2 = Struct_2(global1.a, ~global1.b, Struct_1(-global1.a != min(global1.b.x, 2147483647i ^ global1.a), ~u_input.b.x), 1u);
    let var_3 = _wgslsmith_f_op_vec3_f32(var_0.yzy * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec4_f32(func_2(abs(vec2<i32>(var_2.a, -1i)) ^ min(global1.b.xz, vec2<i32>(global1.a, global1.b.x)))).xww, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(1075f)), 1917f)));
    let var_4 = var_2;
    return Struct_3(select(!(!vec2<bool>(global3.a.x, var_1.a)), !(!(!global3.a)), select(vec2<bool>(var_1.a, false), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_mod_vec4_i32(var_2.b, vec4<i32>(global1.b.x, var_4.b.x, -1i, -8557i))), !select(false, var_1.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    let var_0 = Struct_1(false, 4294967295u);
    let var_1 = func_1();
    global3 = var_1;
    global0 = array<u32, 17>();
    global1 = Struct_2(-(~abs(0i)), _wgslsmith_div_vec4_i32(global1.b, vec4<i32>(min(global1.a, 1i), abs(1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.b.x, global1.b.x), firstTrailingBit(-2147483647i)), _wgslsmith_div_i32(global1.a, 1i))), var_0, ~(~global0[_wgslsmith_index_u32(96035u, 17u)]));
    global2 = array<vec3<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global1.b.x, global1.b.x) & min(vec2<i32>(global1.a, 0i), global1.b.zx)), vec2<i32>(firstTrailingBit(-49772i), 1i >> (~var_0.b % 32u))), vec2<i32>(firstLeadingBit(-max(25508i, global1.b.x)), global1.a), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-30297i, global1.b.x, global1.b.x, global1.b.x), vec4<i32>(-1i, global1.b.x, 12297i, global1.b.x) & global1.b), vec4<i32>(max(70049i, -1819i), _wgslsmith_mod_i32(global1.a, global1.a), -46837i, max(2147483647i, global1.b.x)), abs(vec4<i32>(0i, global1.b.x, -1i, global1.b.x))) >> (vec4<u32>(4294967295u, ~(global1.c.b ^ var_0.b), ~firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(u_input.b.zz, ~vec2<u32>(4706u, global0[_wgslsmith_index_u32(u_input.a, 17u)]))) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-16023i, global1.a, _wgslsmith_dot_vec3_i32(global1.b.xww, vec3<i32>(global1.a, 0i, 2147483647i)), _wgslsmith_dot_vec3_i32(global1.b.wyx, global1.b.wzz)), -_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, 1i, global1.b.x), vec4<i32>(-26037i, 4070i, global1.b.x, 47864i)), true), max(global1.b, abs(_wgslsmith_div_vec4_i32(global1.b, vec4<i32>(global1.a, 48783i, global1.b.x, 50692i))))), -997f);
}

