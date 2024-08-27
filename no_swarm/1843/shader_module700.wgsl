struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-207f, -2339f);

var<private> global1: Struct_2;

var<private> global2: i32 = 1i;

var<private> global3: u32 = 26977u;

var<private> global4: array<Struct_2, 18>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) * _wgslsmith_f_op_f32(global1.a * global1.a)) * arg_0.a) == _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-148f, _wgslsmith_f_op_f32(arg_1.a - 2992f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-3452f + 694f))), true)));
    var var_1 = firstTrailingBit(54931u);
    let var_2 = Struct_1(arg_0.b, vec4<f32>(196f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(217f + global1.a) - _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), all(vec2<bool>(true, true)))), arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x)))), u_input.d);
    var var_3 = Struct_1(_wgslsmith_mult_vec4_i32(~arg_0.b, ~select(arg_1.b, arg_0.b, all(vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(var_2.b, var_2.b, false)))), var_2.b)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(arg_0.a - -1600f), true)), 1022f, arg_1.a, _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(round(global0.x)))))), abs(countOneBits(var_2.c)));
    var var_4 = 44208u;
    return ~_wgslsmith_div_u32(var_2.c, ~_wgslsmith_div_u32(select(4294967295u, u_input.e.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(43188u, u_input.c, 1u), u_input.e.xyy)));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, ~(vec2<u32>(arg_0.x, 4294967295u) << (~vec2<u32>(0u, u_input.b) % vec2<u32>(32u)))), ~func_3(global4[_wgslsmith_index_u32(firstTrailingBit(~arg_0.x), 18u)], global4[_wgslsmith_index_u32(arg_0.x, 18u)]), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(max(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(u_input.d, 68421u)), firstLeadingBit(u_input.e.yx)), arg_0.xz), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~arg_0.x), 0u), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.wy, u_input.a) & u_input.e.ww, u_input.a, select(firstLeadingBit(vec2<u32>(arg_0.x, arg_0.x)), vec2<u32>(4294967295u, 72896u), select(vec2<bool>(false, false), vec2<bool>(true, false), true)))));
    var_0 = vec4<u32>(arg_0.x, ~(~var_0.x), u_input.a.x, var_0.x);
    let var_1 = Struct_1(global1.b, vec4<f32>(262f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-150f * 694f), _wgslsmith_f_op_f32(floor(-1337f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-342f, global0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-486f, 295f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -685f)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e.wzx << (min(var_0.zzw, var_0.wzy) % vec3<u32>(32u)), ~u_input.e.yzx), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(var_0.x, var_0.x, var_0.x) & vec3<u32>(u_input.b, arg_0.x, arg_0.x)), ~vec3<u32>(17934u, 0u, 12745u))));
    global2 = 10971i;
    let var_2 = _wgslsmith_clamp_i32(abs(~(_wgslsmith_mult_i32(19016i, 26603i) ^ select(-17916i, global1.c.x, true))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, global1.b.x, -2147483647i, -16216i) ^ vec4<i32>(var_1.a.x, global1.b.x, var_1.a.x, 62091i), vec4<i32>(-17076i, var_1.a.x, 28375i, -1i) | vec4<i32>(global1.b.x, 15607i, -1i, var_1.a.x)), countOneBits(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(-2147483647i, ~2147483647i))));
    return 1201f;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4, arg_3: vec3<u32>) -> vec2<f32> {
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, arg_3.zz), 13796u, arg_3.x, ~u_input.d)))), vec4<i32>(1i, arg_1 << (0u % 32u), global1.c.x ^ ~(global1.b.x | arg_0.b.x), arg_0.c.x), vec3<i32>(-arg_1, -4203i, 25761i));
    let var_0 = Struct_1(-(arg_0.b ^ _wgslsmith_clamp_vec4_i32(global1.b, vec4<i32>(arg_1, 26738i, global1.b.x, 27667i), ~global1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-505f, global0.x, global1.a, global1.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, -1844f, -798f, 2463f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, arg_0.a, arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)))), u_input.b);
    global2 = 17888i;
    var var_1 = Struct_1((select(~arg_0.b, _wgslsmith_clamp_vec4_i32(arg_0.b, arg_0.b, arg_0.b), all(vec4<bool>(arg_2.a, arg_2.a, false, arg_2.a))) >> ((u_input.e & ~u_input.e) % vec4<u32>(32u))) | global1.b, var_0.b, ~arg_3.x);
    global2 = -16889i;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0.x, -929f, false)))))), _wgslsmith_f_op_f32(func_2(u_input.e >> (u_input.e % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(global4[_wgslsmith_index_u32(u_input.d, 18u)], max(-2147483647i, -firstTrailingBit(26923i)), Struct_4(true & (global1.b.x == global1.c.x), 47843u), u_input.e.www)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a, 1099f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-798f, global0.x), vec2<f32>(985f, global1.a))))));
    let var_0 = !(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-391f)), global1.a, false)) >= _wgslsmith_f_op_vec2_f32(func_1(global4[_wgslsmith_index_u32(6696u, 18u)], global1.b.x, Struct_4(false, u_input.a.x), u_input.e.wxy)).x));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 360f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, -1176f)))));
    global4 = array<Struct_2, 18>();
    global2 = global1.b.x;
    global4 = array<Struct_2, 18>();
    let var_2 = !(_wgslsmith_f_op_f32(f32(-1f) * -787f) > var_1.x);
    let var_3 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~global1.b.yy, global1.b.zzy, _wgslsmith_div_i32(_wgslsmith_div_i32(global1.b.x, 1i), 24526i));
}

