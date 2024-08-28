struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 10>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = global0.d;
    let var_1 = _wgslsmith_clamp_vec2_i32(select(~_wgslsmith_div_vec2_i32(select(vec2<i32>(arg_0.d.x, -1i), vec2<i32>(0i, -27753i), global0.d.e), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.c, -1i), arg_0.d.yy)), arg_0.d.yw, any(select(!vec2<bool>(arg_0.e.x, false), select(vec2<bool>(var_0.e.x, global1[_wgslsmith_index_u32(5032u, 10u)]), vec2<bool>(true, arg_0.e.x), arg_0.e), true))), select(vec2<i32>(var_0.c, 1i), vec2<i32>(_wgslsmith_add_i32(global0.d.d.x, -1i), max(23839i, -arg_0.c)), select(var_0.e, global0.d.e, !any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 10u)], arg_0.e.x)))), var_0.d.yw);
    return arg_0.e;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: u32, arg_3: u32) -> u32 {
    global1 = array<bool, 10>();
    var var_0 = i32(-1i) * -(min(22772i, 21946i) | (-1i & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), arg_1)));
    let var_1 = global0.d.d;
    let var_2 = global0.d;
    let var_3 = ~(~vec3<i32>(_wgslsmith_sub_i32(var_2.d.x, ~arg_1.x), _wgslsmith_div_i32(_wgslsmith_div_i32(var_2.c, arg_1.x), i32(-1i) * -41156i), -2147483647i));
    return ~u_input.a.x;
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - global0.d.b.x) - _wgslsmith_f_op_f32(global0.a.x - -670f)), 346f, global0.a.x, arg_0.x)), _wgslsmith_div_i32(0i, abs(global0.b)), firstLeadingBit(~firstTrailingBit(firstTrailingBit(vec3<i32>(global0.c.x, -2147483647i, -37934i)))), Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.b.x, _wgslsmith_f_op_f32(max(1000f, 393f)))), global0.b, global0.d.d, !vec2<bool>(true, arg_0.x < arg_0.x)));
    let var_0 = firstLeadingBit(_wgslsmith_add_u32(u_input.b, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 75971u) >> (u_input.a.xz % vec2<u32>(32u)), vec2<u32>(u_input.a.x, u_input.b) | vec2<u32>(u_input.b, u_input.a.x)))));
    global0 = Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + 907f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f))), -438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 155f) + 965f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))) - 734f)), global0.d.c, abs(~global0.d.d.zzw), Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xx + _wgslsmith_f_op_vec2_f32(-global0.a.yx)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, -293f))), global0.d.d.x, abs(abs(vec4<i32>(global0.b, -33284i, global0.c.x, global0.b))), !(!vec2<bool>(global0.d.e.x, false))));
    global1 = array<bool, 10>();
    global0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(1f * arg_0.x), -1173f, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -558f)), abs(~countOneBits(-13474i)), vec3<i32>(67838i, _wgslsmith_mult_i32(-global0.d.d.x, _wgslsmith_clamp_i32(i32(-1i) * -8797i, global0.d.d.x, -2147483647i)), -1510i), global0.d);
    return vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(26567u, 16863u), _wgslsmith_dot_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), u_input.a ^ u_input.a)), min(~abs(52922u), var_0)), countOneBits(countOneBits(35027u)), ~abs(1u), u_input.a.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<i32> {
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.a.x, -844f)), global0.a.x, _wgslsmith_f_op_f32(trunc(arg_1.b.x)), global0.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1056f, global0.a.x, global0.a.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1010f, global0.d.b.x, -1686f, arg_1.b.x))))));
    global0 = Struct_2(arg_1.a, _wgslsmith_mult_i32(~(-25466i), global0.d.d.x << (1u % 32u)), -vec3<i32>(min(select(global0.b, -32654i, false), firstLeadingBit(1938i)), _wgslsmith_sub_i32(-32822i, 1i >> (u_input.a.x % 32u)), global0.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(624f, -1975f, 1582f, global0.d.b.x) * _wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(-133f, -440f, global0.d.b.x, var_0.x))) * var_0), var_0.wy, 0i, _wgslsmith_mod_vec4_i32(~min(arg_1.d, arg_1.d), global0.d.d), select(vec2<bool>(u_input.a.x >= 1852u, true | global0.d.e.x), func_1(global0.d), !(!arg_1.e.x))));
    global0 = Struct_2(global0.d.a, 2147483647i, _wgslsmith_sub_vec3_i32(vec3<i32>(-global0.d.d.x, global0.d.d.x, ~arg_1.c), vec3<i32>(_wgslsmith_dot_vec4_i32(global0.d.d, vec4<i32>(global0.d.c, -887i, -1i, global0.d.d.x)), _wgslsmith_sub_i32(-40838i, arg_1.d.x), global0.b)) | arg_1.d.zzz, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-233f, -431f, _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(-arg_1.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(-655f + var_0.x), _wgslsmith_f_op_f32(ceil(-1390f)), _wgslsmith_f_op_f32(select(arg_1.a.x, var_0.x, false)), 943f)), arg_1.a.wz, arg_1.c, firstTrailingBit(~(~vec4<i32>(27717i, -20740i, 24512i, global0.b))), !vec2<bool>(global1[_wgslsmith_index_u32(~u_input.a.x, 10u)], all(arg_1.e))));
    return vec3<i32>(arg_1.c, abs(global0.d.c), ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    let var_0 = !vec3<bool>(!select(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], false, global0.d.e.x) | !any(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], true, global1[_wgslsmith_index_u32(u_input.b, 10u)])), !(global0.a.x <= global0.d.a.x) || (!global0.d.e.x | all(vec4<bool>(false, true, true, global0.d.e.x))), global1[_wgslsmith_index_u32(func_2(select(global0.d.e, func_1(Struct_1(vec4<f32>(-573f, 546f, 873f, 1450f), global0.d.b, 0i, vec4<i32>(0i, global0.b, global0.b, 26107i), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], true))), func_1(Struct_1(global0.a, vec2<f32>(global0.d.b.x, global0.a.x), global0.c.x, vec4<i32>(-1i, -32803i, global0.c.x, global0.c.x), global0.d.e))), ~global0.d.d.zz, 409u, _wgslsmith_clamp_u32(select(1u, 4294967295u, global1[_wgslsmith_index_u32(33564u, 10u)]), ~111030u, ~u_input.a.x)), 10u)]);
    global1 = array<bool, 10>();
    var var_1 = Struct_3(~(~_wgslsmith_mod_u32(99860u, ~8147u)));
    global1 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.a))) - vec4<f32>(-1613f, _wgslsmith_f_op_f32(ceil(global0.d.b.x)), _wgslsmith_div_f32(-592f, global0.a.x), _wgslsmith_f_op_f32(sign(global0.a.x))))), min(func_4(func_3(vec3<f32>(1963f, global0.a.x, global0.a.x)), global0.d), select(vec3<i32>(-25065i, global0.d.c, global0.b) << (firstTrailingBit(vec3<u32>(var_1.a, var_1.a, u_input.b)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(firstLeadingBit(global0.c), abs(global0.c)), true)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 0u | var_1.a, var_1.a, u_input.a.x), countOneBits(u_input.a << (u_input.a % vec4<u32>(32u))), !vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(1u, 10u)])), ~min(u_input.a, u_input.a) >> (~select(vec4<u32>(u_input.b, u_input.b, var_1.a, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), global1[_wgslsmith_index_u32(u_input.a.x, 10u)]) % vec4<u32>(32u))));
}

