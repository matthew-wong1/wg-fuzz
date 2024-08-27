struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_4;

var<private> global2: vec2<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    return Struct_3(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, global1.a.x, 23771u)), (vec3<u32>(global1.a.x, 8847u, 0u) << (vec3<u32>(u_input.c, u_input.c, 109800u) % vec3<u32>(32u))) << (~vec3<u32>(55433u, 4294967295u, 4294967295u) % vec3<u32>(32u))));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 231f, arg_0.a.c.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_0.a.c.x, arg_0.a.c.x) + arg_0.a.c.zww))))) - _wgslsmith_f_op_vec3_f32(arg_0.a.c.wyx + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.c.xyz * _wgslsmith_f_op_vec3_f32(arg_0.a.c.yww * arg_0.a.c.yxw)))));
    var var_0 = _wgslsmith_mult_i32(global2.x, abs(abs(-17194i)));
    global2 = min(countOneBits(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, global2.x), firstTrailingBit(vec2<i32>(55941i, -1i)))), vec2<i32>(_wgslsmith_dot_vec3_i32(~max(vec3<i32>(u_input.b, -22258i, -56218i), vec3<i32>(u_input.a, 5122i, -21166i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b, -1i, global2.x), vec3<i32>(-42915i, u_input.a, u_input.b))), global2.x));
    var var_1 = !select(!vec2<bool>(arg_1 | global1.b.a.x, true), global1.b.a, true);
    global1 = Struct_4(_wgslsmith_mod_vec2_u32(min(global1.a, select(vec2<u32>(global1.a.x, arg_0.a.b), global1.a, global1.b.a.x)) >> (global1.a % vec2<u32>(32u)), vec2<u32>(global1.a.x << (~1160u % 32u), u_input.c)), global1.b, false);
    return abs(~firstTrailingBit(global1.a));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = Struct_3(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.xz | ~arg_0.a.zz, func_3(Struct_5(Struct_2(global1.a.x, 1u, vec4<f32>(587f, -389f, -2428f, global0.x))), true)), ~4294967295u, ~92593u));
    global1 = Struct_4(_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.c, 30410u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global1.a.x, 26154u), global1.a & vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(7607u, u_input.c) << (global1.a % vec2<u32>(32u)))) ^ var_0.a.zz, global1.b, !global1.b.a.x);
    let var_1 = Struct_4(global1.a, global1.b, true);
    var var_2 = Struct_4(reverseBits(~var_0.a.xy), Struct_1(!vec2<bool>(true, var_1.b.a.x)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 4294967295u, global1.a.x, 12528u), vec4<u32>(arg_1, 4294967295u, 19505u, var_0.a.x)) ^ ~42957u) < arg_0.a.x);
    var var_3 = ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -77856i, -2147483647i, -23521i), vec4<i32>(global2.x, u_input.a, u_input.b, -1i))) << (abs(vec4<u32>(14343u, _wgslsmith_div_u32(abs(4294967295u), u_input.c | global1.a.x), ~34159u, 24641u)) % vec4<u32>(32u));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(~(~(~(~vec2<u32>(20426u, 35942u)))), global1.b, ((firstLeadingBit(global1.a.x) ^ global1.a.x) >> (_wgslsmith_sub_u32(global1.a.x, u_input.c) % 32u)) <= firstTrailingBit(func_2(func_1(global0.x), 10642u)));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1620f, global0.x), vec3<f32>(-732f, global0.x, -127f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1599f, global0.x, 1027f)))))) + vec3<f32>(global0.x, 338f, _wgslsmith_f_op_f32(-global0.x)))));
    let var_0 = _wgslsmith_sub_i32(global2.x, abs(_wgslsmith_sub_i32(-2147483647i, -abs(0i))));
    global1 = Struct_4(global1.a, global1.b, !any(select(vec3<bool>(true, global1.b.a.x, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, global1.b.a.x)), vec3<bool>(true, global1.b.a.x, true))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, 871f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1066f, 422f, 441f), vec3<f32>(global0.x, 723f, global0.x), true)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(2547f, -672f, global0.x) * vec3<f32>(global0.x, 1000f, global0.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-1091f + -845f)), _wgslsmith_f_op_f32(f32(-1f) * -159f), -345f)));
    global2 = reverseBits(_wgslsmith_div_vec2_i32(max(vec2<i32>(-global2.x, var_0), _wgslsmith_div_vec2_i32(vec2<i32>(-25467i, u_input.b), countOneBits(vec2<i32>(-24376i, global2.x)))), vec2<i32>(_wgslsmith_mod_i32(var_0, max(global2.x, -19497i)), -var_0 >> (4294967295u % 32u))));
    var var_1 = Struct_3(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(6486u, 4294967295u, u_input.c)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(34373u, 4294967295u, u_input.c), vec3<u32>(global1.a.x, 29173u, 129714u))), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.c, 106268u) & vec3<u32>(global1.a.x, global1.a.x, u_input.c), ~abs(vec3<u32>(global1.a.x, 0u, 31110u))), vec3<u32>(u_input.c, global1.a.x, ~u_input.c << (u_input.c % 32u))));
    global2 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(-min(global2.x, var_0), -(~(-12716i))), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, var_0), firstLeadingBit(select(vec2<i32>(14316i, global2.x), vec2<i32>(var_0, 65738i), global1.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(select(global0.x, 1000f, global1.b.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-468f, global0.x, global0.x) * vec3<f32>(global0.x, -371f, -340f))))));
}

