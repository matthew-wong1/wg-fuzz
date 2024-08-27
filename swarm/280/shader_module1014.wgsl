struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 6>;

var<private> global2: array<u32, 19>;

var<private> global3: array<i32, 13>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = firstTrailingBit(~(~1u));
    return arg_1.b.c;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    let var_0 = true;
    var var_1 = vec3<i32>(~global4.d.c, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(3979u >> (u_input.a % 32u), 13u)], -14575i, ~1i), -9118i), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(global4.d.a.x), 19u)], 13u)]);
    var var_2 = -27100i | func_1(vec3<bool>(var_0 || !global4.c.b.x, var_0, false), Struct_3(global4.b.yy, global4.c, ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.b.x, 19114u), 19u)]));
    global1 = array<f32, 6>();
    global4 = Struct_2(global4.d.d, global4.b, Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 21535u), global4.d.a), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(1u, 19u)], 114612u)) << (_wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, 0u)), max(global4.b.xz, global4.b.xy)) % vec2<u32>(32u)), !global4.c.b, _wgslsmith_sub_i32(reverseBits(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 19u)], 13u)], 2147483647i, -46474i)), -2147483647i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global4.d.d))), _wgslsmith_f_op_f32(f32(-1f) * -455f)), global4.d, 1u);
    return 4294967295u;
}

fn func_2() -> i32 {
    var var_0 = min(vec3<i32>(global4.d.c, firstLeadingBit(i32(-1i) * -u_input.b.x), 1i), max(vec3<i32>(_wgslsmith_div_i32(global4.d.c, global4.c.c), -u_input.b.x, global3[_wgslsmith_index_u32(~22307u, 13u)]) << (vec3<u32>(4294967295u, func_3(global4.d.d.x, vec4<f32>(-1000f, -983f, -860f, -1000f)), 50482u) % vec3<u32>(32u)), vec3<i32>(1i, u_input.b.x << (1u % 32u), u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global4.b.x, 6u)]));
    let var_2 = global4.d.b;
    var var_3 = 1i;
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.zxx, global0.ywy) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1368f, -1640f, -1261f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.e, -358f, -104f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global4.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(5160u, 6u)])), 1042f, _wgslsmith_f_op_f32(global4.c.d.x + global1[_wgslsmith_index_u32(global4.d.a.x, 6u)])))), global4.b, Struct_1(~global4.c.a, select(!(!vec3<bool>(global4.d.b.x, false, true)), global4.d.b, select(global4.d.b, global4.d.b, global4.d.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-20642i, global4.c.c) ^ _wgslsmith_div_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global4.c.a.x, 13u)], global4.c.c), var_0.zz), var_0.zz), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.wwz))))), _wgslsmith_f_op_f32(-336f + -2088f)), Struct_1(max(_wgslsmith_mult_vec2_u32(~global4.b.yy, global4.d.a), firstLeadingBit(~global4.b.xy)), !(!global4.d.b), abs(global4.c.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xyx) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -707f, global4.a.x) - vec3<f32>(-284f, 565f, 2018f))) + vec3<f32>(_wgslsmith_div_f32(677f, -877f), _wgslsmith_f_op_f32(floor(402f)), _wgslsmith_f_op_f32(global4.a.x + -313f))), -550f), 6725u);
    return reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(~global4.c.c, func_1(global4.c.b, Struct_3(vec2<u32>(u_input.a, 53390u), Struct_1(vec2<u32>(global4.c.a.x, 4294967295u), global4.c.b, global4.d.c, global4.a, global0.x), 38789u)), _wgslsmith_dot_vec3_i32(vec3<i32>(global4.c.c, -1i, global3[_wgslsmith_index_u32(u_input.a, 13u)]) >> (global4.b.wxy % vec3<u32>(32u)), vec3<i32>(-1i, global4.d.c, var_0.x))), -abs(abs(vec3<i32>(var_0.x, -673i, -40774i)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(arg_3.d.a, _wgslsmith_sub_vec2_u32(~(arg_2.a & vec2<u32>(0u, arg_0.x)), arg_2.a), arg_3.c.a));
    let var_1 = 1000f;
    var var_2 = vec4<u32>(~4294967295u, var_0.x, 57010u, global4.e >> (arg_2.a.x % 32u));
    var var_3 = firstTrailingBit(vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(-12901i, arg_3.c.c), _wgslsmith_mod_i32(arg_1, 1i)), -6701i), 0i ^ abs(global4.d.c & 2147483647i), -20038i));
    let var_4 = reverseBits(var_2.x);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-665f - -204f), global4.a.x, global1[_wgslsmith_index_u32(firstLeadingBit(0u), 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -530f)))), vec3<i32>(func_2(), _wgslsmith_dot_vec3_i32(~var_3.xwx ^ -var_3.wwy, vec3<i32>(global4.d.c, -u_input.b.x, ~(-81474i))), ~var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(global4.c.b);
    global2 = array<u32, 19>();
    global1 = array<f32, 6>();
    let x = u_input.a;
    s_output = func_4(global4.b.yyw, min(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i & u_input.b.x, func_1(global4.c.b, Struct_3(vec2<u32>(10856u, global2[_wgslsmith_index_u32(1u, 19u)]), Struct_1(vec2<u32>(u_input.a, 39271u), vec3<bool>(global4.d.b.x, false, global4.c.b.x), global3[_wgslsmith_index_u32(4294967295u, 13u)], vec3<f32>(-1081f, 655f, 734f), global1[_wgslsmith_index_u32(1u, 6u)]), global2[_wgslsmith_index_u32(global4.d.a.x, 19u)]))), 3344i), func_2()), Struct_1(~(global4.b.ww | ~vec2<u32>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)])), vec3<bool>(4249u >= global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(1u, 19u)]), 19u)], u_input.b.x >= _wgslsmith_mult_i32(global4.d.c, global4.d.c), select(!global4.d.b.x, global1[_wgslsmith_index_u32(global4.e, 6u)] != 1269f, !global4.d.b.x)), abs(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 13u)]), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 6u)], -503f), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(46019u, 19u)], 6u)]), global1[_wgslsmith_index_u32(u_input.a, 6u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(749f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f * -736f)))), Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.d.e, _wgslsmith_f_op_f32(global4.c.d.x * global0.x), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.e, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), 6u)]))), ~global4.b, Struct_1(global4.c.a, global4.c.b, u_input.b.x, _wgslsmith_f_op_vec3_f32(global4.a + _wgslsmith_div_vec3_f32(vec3<f32>(global4.c.d.x, global0.x, 1000f), global4.d.d)), _wgslsmith_f_op_f32(floor(global0.x))), global4.c, 4294967295u));
}

