struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, false, false, false), vec2<f32>(-333f, 1000f), Struct_1(vec3<f32>(1000f, 1159f, -665f), -1i, true, 30855i), vec3<f32>(935f, 2124f, -926f), -34233i);

var<private> global2: i32;

var<private> global3: u32 = 11598u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = false;
    let var_1 = -global1.e;
    var var_2 = max(-(~_wgslsmith_clamp_vec2_i32(max(vec2<i32>(var_1, global1.c.b), vec2<i32>(22365i, -12219i)), vec2<i32>(-2147483647i, var_1) ^ vec2<i32>(var_1, 11158i), -vec2<i32>(var_1, var_1))), firstLeadingBit(vec2<i32>(-1i, _wgslsmith_mod_i32(var_1, 2147483647i))) << (~(u_input.e << (vec2<u32>(u_input.b, u_input.d.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_2 = ~vec2<i32>(var_1, ~global1.c.d << (~u_input.c % 32u));
    let var_3 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global1.c.a.x, global1.b.x))), _wgslsmith_f_op_vec3_f32(max(global1.d, _wgslsmith_f_op_vec3_f32(min(global1.c.a, vec3<f32>(493f, -444f, 242f)))))), var_1, true, reverseBits(_wgslsmith_mult_i32(var_1, _wgslsmith_clamp_i32(var_2.x, -16964i, -2147483647i)))));
    return abs(min(~(~vec3<u32>(u_input.d.x, u_input.a.x, 14785u)), ~countOneBits(firstLeadingBit(u_input.a))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = ~(~(vec3<u32>(u_input.e.x, 0u, 30623u) ^ func_3())) ^ u_input.a;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(542f, 403f, global1.d.x)), -26247i, arg_1, ~firstTrailingBit(reverseBits(global1.e) ^ global1.c.b));
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = global1.a.zxz;
    let var_1 = func_2(select(global1.a.xyz, global1.a.xzx, global1.a.x), any(!(!global1.a.yyz)));
    global1 = Struct_2(select(vec4<bool>(global1.a.x, var_1.c, any(!global1.a), global1.c.c), select(select(select(vec4<bool>(false, var_1.c, var_1.c, var_0.x), global1.a, global1.a.x), !global1.a, vec4<bool>(global1.a.x, false, false, true)), select(!vec4<bool>(true, global1.c.c, var_0.x, global1.c.c), global1.a, vec4<bool>(var_1.c, false, false, var_1.c)), global1.a), false), vec2<f32>(_wgslsmith_f_op_f32(-func_2(vec3<bool>(global1.a.x, true, var_1.c), false).a.x), _wgslsmith_f_op_f32(-func_2(vec3<bool>(var_0.x, global1.c.c, global1.c.c), true).a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), 7372i, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-868f * var_1.a.x)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -514f))), max(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, -1i), ~2147483647i, 1i), _wgslsmith_sub_i32(i32(-1i) * -9887i, max(global1.e, var_1.d)))), vec3<f32>(_wgslsmith_f_op_f32(min(746f, _wgslsmith_f_op_f32(select(func_2(global1.a.zxw, var_1.c).a.x, _wgslsmith_div_f32(var_1.a.x, arg_0.x), global1.a.x)))), 280f, arg_0.x), firstLeadingBit(global1.c.b));
    global3 = u_input.c;
    return vec4<u32>(~u_input.a.x >> (_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(6761u, u_input.d.x, 4294967295u)), select(vec3<u32>(2116u, u_input.c, u_input.a.x), ~u_input.d, !global1.a.xyy)) % 32u), min(u_input.b, min(func_3().x, ~func_3().x)), max(u_input.a.x, u_input.c >> (u_input.a.x % 32u)), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.e.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -866f);
    let var_2 = 0i;
    var var_3 = reverseBits(func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a.x, var_1, global1.c.a.x, global1.b.x))))));
    var var_4 = global1.a;
    var_3 = ~vec4<u32>(u_input.d.x, abs(u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(52734u, var_0, var_3.x), vec3<u32>(var_0, var_3.x, 5772u) >> (vec3<u32>(1482u, var_0, 25618u) % vec3<u32>(32u))) | func_3().x, _wgslsmith_mod_u32(1u, 1u));
    global3 = 54126u;
    let var_5 = firstTrailingBit(28657u);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2261f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.a.x, 362f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -525f), _wgslsmith_f_op_f32(1000f - var_1))))));
}

