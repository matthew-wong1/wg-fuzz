struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(2147483647i);

var<private> global2: vec4<f32>;

var<private> global3: vec2<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(global3.x);
    var var_1 = Struct_1(~1i);
    return vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u & _wgslsmith_clamp_u32(u_input.c.x, 0u, 94034u), max(_wgslsmith_mult_u32(1u, u_input.c.x), 27389u)), u_input.b.x), firstLeadingBit(u_input.b.x));
}

fn func_2() -> vec2<i32> {
    global3 = ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, global3.x), reverseBits(u_input.a.yw)), -countOneBits(vec2<i32>(-8585i, -1i))) << (func_3() % vec2<u32>(32u));
    global3 = min(countOneBits(-vec2<i32>(global0.a, global3.x)), u_input.a.xy);
    global1 = Struct_1(global0.a);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-global2.x))))))));
    var_0 = global2.x;
    return abs(_wgslsmith_add_vec2_i32(-abs(vec2<i32>(25581i, u_input.e)), vec2<i32>(global1.a, global1.a))) << (((vec2<u32>(~26338u, _wgslsmith_add_u32(u_input.c.x, 59332u)) << (u_input.c.ww % vec2<u32>(32u))) >> (u_input.b.yy % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = 1u;
    global3 = -func_2() ^ firstLeadingBit(vec2<i32>(-16694i, -2147483647i));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(select(vec4<i32>(firstTrailingBit(global1.a), _wgslsmith_sub_i32(global0.a, -1i), reverseBits(global1.a), _wgslsmith_clamp_i32(global0.a, global3.x, 24249i)), vec4<i32>(32731i, _wgslsmith_sub_i32(-29428i, 14693i), 0i, global0.a), true), reverseBits(vec4<i32>(-32240i, select(-36747i, global1.a, false), _wgslsmith_div_i32(u_input.e, u_input.d), global1.a))));
    global1 = Struct_1(_wgslsmith_clamp_i32(func_2().x ^ var_1.a, 24079i >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, 1u), u_input.b.zz, true), u_input.b.zz) % 32u), -26i));
    var_0 = u_input.b.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2.zxx, _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 660f, 1692f), vec3<f32>(global2.x, -1000f, -779f)))) - global2.xwx), _wgslsmith_f_op_vec3_f32(-global2.yyx))));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2049f, global2.x, global2.x, global2.x)), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), 903f, _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_div_f32(230f, global2.x)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-449f - 1058f), global2.x)), 439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1146f)), _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1056f)))));
    let var_1 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.wzy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.zzx) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(973f, 707f, global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(171f, global2.x, global2.x) - vec3<f32>(-399f, -1045f, global2.x)))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(global2.x));
    var var_3 = Struct_1(34884i);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(global2.x - 986f), _wgslsmith_f_op_f32(-1279f - global2.x))))));
    let var_5 = u_input.c;
    var var_6 = select(vec2<bool>(true, true), vec2<bool>(true, true), true);
    let var_7 = func_2().x << (u_input.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global2.wzx).a, vec4<u32>(var_5.x, ~var_5.x, 0u, ~(~15440u)));
}

