struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<bool>(true, false, true, false), Struct_2(408f, 65993u, Struct_1(true, vec4<i32>(1i, -78201i, 30872i, 6557i))), Struct_1(true, vec4<i32>(-1i, 0i, 27769i, 0i)), Struct_3(Struct_1(false, vec4<i32>(2147483647i, -17167i, 0i, -4146i)), vec4<f32>(-1000f, -1216f, -1299f, 975f)));

var<private> global1: array<Struct_1, 28>;

var<private> global2: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = max(vec4<i32>(~_wgslsmith_div_i32(31341i, -1i), abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.b.b.zww), _wgslsmith_clamp_vec3_i32(global0.c.b.zwy, vec3<i32>(0i, 0i, arg_0.b.b.x), global0.d.a.b.xxy))), -28083i, global0.b.c.b.x), vec4<i32>(_wgslsmith_add_i32(-4003i, u_input.d), _wgslsmith_clamp_i32(-(2147483647i ^ arg_0.b.b.x), _wgslsmith_clamp_i32(1i, arg_0.b.b.x, 2147483647i), _wgslsmith_dot_vec3_i32(arg_0.b.b.xyy, -vec3<i32>(arg_0.b.b.x, -1i, -47795i))), arg_0.b.b.x, -1i));
    let var_1 = false;
    global2 = reverseBits(u_input.a);
    var var_2 = Struct_3(arg_0.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.d.b.x, global0.d.b.x, arg_0.c.x, -683f)))), _wgslsmith_f_op_vec4_f32(floor(global0.d.b))))));
    var var_3 = 4294967295u;
    return 6591u;
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, func_3(Struct_4(global0.d.b.x, global1[_wgslsmith_index_u32(~global0.b.b, 28u)], _wgslsmith_div_vec3_f32(global0.d.b.yxw, vec3<f32>(367f, -1508f, 745f)))), 0u, 26837u), vec4<u32>(global2.x, 22923u & _wgslsmith_sub_u32(func_3(Struct_4(1000f, Struct_1(global0.b.c.a, vec4<i32>(-12538i, 53476i, -21958i, global0.c.b.x)), global0.d.b.wzz)), ~20800u), firstLeadingBit(0u), arg_0), ~countOneBits(~vec4<u32>(5063u, global0.b.b, global2.x, global0.b.b)));
    let var_1 = firstTrailingBit(global0.b.c.b.wy) & global0.d.a.b.xy;
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-577f, -332f)) + global0.d.b.x), _wgslsmith_f_op_f32(-global0.d.b.x)), vec3<f32>(_wgslsmith_f_op_f32(940f - 2562f), global0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.b.a, -890f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.b.x, global0.b.a) * _wgslsmith_f_op_f32(-478f + 637f)))));
    global1 = array<Struct_1, 28>();
    let var_3 = Struct_1(global0.c.a, firstTrailingBit(~(~select(global0.d.a.b, vec4<i32>(-9777i, var_1.x, 2147483647i, -19442i), true))));
    return Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1225f)), -2316f), -967f, !var_3.a)))), Struct_1(false, var_3.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.b.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-1215f * global0.d.b.x)), var_2.x)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(2070f + -1000f), _wgslsmith_f_op_f32(arg_1 + global0.d.b.x), 228f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * 861f)), -1041f), false));
    let var_1 = Struct_1(!all(vec2<bool>(select(true, global0.b.c.a, false), !global0.c.a)), reverseBits(vec4<i32>(min(1i, arg_0.b.b.x) | 2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, 1i), arg_3.x ^ 30806i), _wgslsmith_add_i32(global0.b.c.b.x, 1i) << ((47500u & arg_2) % 32u), arg_0.b.b.x)));
    let var_2 = min(~abs(-37106i), -2147483647i);
    var var_3 = _wgslsmith_div_vec4_i32(firstTrailingBit(select(select(vec4<i32>(var_2, -16895i, u_input.d, arg_3.x) | var_1.b, var_1.b, global0.a.x), vec4<i32>(1i, 13017i, u_input.c, -18479i) << (~vec4<u32>(0u, arg_2, global0.b.b, global0.b.b) % vec4<u32>(32u)), !(!global0.a))), vec4<i32>(abs(_wgslsmith_add_i32(1i, arg_3.x ^ 26024i)), -var_2, var_2, u_input.d));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 27124u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, 36185u, global0.b.b, 3899u)), ~vec4<u32>(u_input.b, u_input.b, 4294967295u, arg_2)) >> (vec4<u32>(46501u, global0.b.b, 4294967295u, u_input.a.x) % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, global0.b.b, 4294967295u), vec4<u32>(0u, 48800u, 4294967295u, 0u))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(arg_0.c.xx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_1)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(global0.d.b.xz)), vec2<f32>(-398f, 362f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(196f, _wgslsmith_f_op_f32(f32(-1f) * -597f))))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.b.x, 505f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-732f, arg_1.a) * global0.d.b.zy))), _wgslsmith_f_op_vec2_f32(func_4(func_2(abs(15800u)), _wgslsmith_f_op_f32(global0.b.a * global0.b.a), ~_wgslsmith_add_u32(1u, global2.x), vec2<i32>(-u_input.d, 0i ^ u_input.d))))));
    let var_1 = vec3<i32>(global0.d.a.b.x, min(_wgslsmith_dot_vec4_i32(arg_1.c.b, vec4<i32>(29143i, select(45022i, 0i, global0.d.a.a), 2147483647i, arg_1.c.b.x)), arg_1.c.b.x), abs(-17382i));
    var_0 = global0.d.b.xw;
    var var_2 = vec4<bool>(0u > ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_1.b), vec2<u32>(u_input.b, 24850u))), any(global0.a.xxw), global0.b.c.a && !((global0.a.x || global0.c.a) && any(global0.a)), true);
    global1 = array<Struct_1, 28>();
    return !var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d.a.b.xy;
    let var_1 = global0.b;
    var var_2 = global0.b.b;
    let var_3 = vec4<bool>(!func_1(1u, global0.b) && (true || all(global0.a.wy)), var_1.c.a, !(global0.d.b.x >= -1633f), !var_1.c.a);
    global1 = array<Struct_1, 28>();
    global2 = countOneBits(vec2<u32>(var_1.b, 0u));
    let var_4 = ~(vec3<u32>(global2.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 4294967295u, global0.b.b), vec3<u32>(1u, 20458u, global2.x)), var_1.b) ^ _wgslsmith_clamp_vec3_u32(min(vec3<u32>(65317u, var_1.b, global0.b.b), vec3<u32>(77627u, 22244u, u_input.b)), max(vec3<u32>(var_1.b, 0u, 1u), vec3<u32>(0u, global0.b.b, global2.x)) << (max(vec3<u32>(global0.b.b, global0.b.b, 1u), vec3<u32>(0u, 0u, global2.x)) % vec3<u32>(32u)), ~vec3<u32>(var_1.b, global0.b.b, global2.x)));
    var var_5 = Struct_5(vec4<bool>(true, var_3.x, !var_1.c.a, any(vec3<bool>(var_1.c.a, 52785u > u_input.b, var_3.x))), global0.b, global0.c, Struct_3(global0.b.c, global0.d.b));
    var_2 = (1u >> (firstTrailingBit(~_wgslsmith_add_u32(45953u, var_4.x)) % 32u)) << (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((-global0.d.a.b.x << (var_1.b % 32u)) << (~(~62822u) % 32u), -1i, max(countOneBits(u_input.d), var_0.x), -581i));
}

