struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: Struct_3 = Struct_3(933f, vec3<u32>(4294967295u, 4294967295u, 41876u), -21273i, vec3<bool>(true, false, false), 9558u);

var<private> global2: bool;

var<private> global3: Struct_3 = Struct_3(-1000f, vec3<u32>(4899u, 13692u, 0u), 1i, vec3<bool>(true, true, false), 107584u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, 1636f, global1.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global3.a, 1291f)) + vec3<f32>(1146f, global3.a, global3.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a) + vec3<f32>(global1.a, global1.a, 372f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(799f, global3.a, global1.a) - vec3<f32>(global1.a, global1.a, global1.a)))), abs(-21352i) <= _wgslsmith_clamp_i32(-global3.c, 1i, ~u_input.a.x))));
    let var_1 = _wgslsmith_mod_i32(countOneBits(~(-abs(u_input.a.x))), global3.c);
    var var_2 = countOneBits(vec4<u32>(1u, 34051u, global3.b.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.x, global3.e, 78568u), ~global1.b))));
    let var_3 = -925f;
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3, _wgslsmith_f_op_f32(var_3 * -1000f), 1073f, _wgslsmith_f_op_f32(round(global1.a))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a, _wgslsmith_f_op_f32(-var_3), global1.a, _wgslsmith_f_op_f32(-var_0.x)))), vec4<bool>(true, _wgslsmith_dot_vec3_i32(u_input.a.wxw, arg_0.xyy) < _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 1i, arg_0.x), arg_0.yxw), global3.d.x, global1.d.x))));
    return _wgslsmith_f_op_vec4_f32(-var_4.a);
}

fn func_2() -> Struct_3 {
    global2 = global1.d.x;
    var var_0 = global3.d;
    let var_1 = _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(firstTrailingBit(6997i), global3.c)), u_input.a.zz, u_input.a.yy);
    var var_2 = u_input.a;
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(-25046i, 52971i, -75473i, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, global1.a, 570f, global3.a) - vec4<f32>(global3.a, 818f, global1.a, 359f)))))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(func_3(reverseBits(_wgslsmith_add_vec4_i32(reverseBits(u_input.a), max(u_input.a, vec4<i32>(2147483647i, 11871i, -2147483647i, 1i)))))).x, global3.b, var_2.x, !global3.d, _wgslsmith_sub_u32(select(global3.b.x >> (abs(13953u) % 32u), _wgslsmith_dot_vec2_u32(global3.b.xy, global1.b.yy) ^ firstLeadingBit(global1.b.x), all(vec3<bool>(true, false, false)) && global3.d.x), ~(~abs(global1.b.x))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> i32 {
    let var_0 = func_2();
    global3 = var_0;
    var var_1 = vec3<u32>(global3.b.x, max(firstLeadingBit(arg_0 | var_0.e), _wgslsmith_clamp_u32(~global3.e, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.e, 1u, var_0.e), vec4<u32>(global3.b.x, global3.b.x, 0u, arg_0)))) << (0u % 32u), arg_0);
    var var_2 = u_input.a;
    var var_3 = global1.a;
    return global3.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    return Struct_4(vec4<f32>(-666f, _wgslsmith_f_op_f32(arg_1.a - -102f), _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(245f)))), -534f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(u_input.a.yzy, vec3<i32>(_wgslsmith_clamp_i32(min(-2147483647i, -2147483647i), global3.c, 0i), -func_1(global3.e, global1.d.yy), 0i), func_2().d.x || (1000f != _wgslsmith_f_op_f32(-global1.a))), func_2(), -global1.c);
    var var_1 = Struct_1(global3.e, countOneBits(countOneBits(max(u_input.a, u_input.a))), global1.d.zy, -global1.c, vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(global3.c, 0i)), u_input.a.wz), abs(u_input.a.x)));
    let var_2 = global1.b.zx;
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-1122f + 681f), -1000f, global3.a)))));
    global2 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))), _wgslsmith_f_op_f32(min(1568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.x, 385f, global1.d.x)) - _wgslsmith_f_op_f32(f32(-1f) * -349f))))), (global1.c & global1.c) & _wgslsmith_dot_vec4_i32((u_input.a | vec4<i32>(global1.c, 0i, u_input.a.x, var_1.b.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(43281u, 0u, 26956u, 30099u), vec4<u32>(global1.b.x, global3.b.x, 4294967295u, 63905u)) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(var_1.b, u_input.a)), -1i);
}

