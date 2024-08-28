struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_2, 24>;

var<private> global2: Struct_3 = Struct_3(19561u, Struct_1(vec2<u32>(59635u, 30295u), 476f, vec4<u32>(562u, 35169u, 0u, 17157u), vec3<f32>(-454f, 1125f, 979f), true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = !(!select(select(!vec4<bool>(true, arg_0.e, true, arg_0.e), select(vec4<bool>(global2.c.x, global2.b.e, global2.c.x, true), vec4<bool>(false, true, global2.b.e, arg_0.e), arg_0.e), arg_0.e), select(vec4<bool>(global2.b.e, arg_0.e, arg_0.e, true), vec4<bool>(arg_0.e, global2.b.e, true, true), select(vec4<bool>(false, arg_0.e, arg_0.e, global2.c.x), vec4<bool>(arg_0.e, arg_0.e, global2.b.e, arg_0.e), false)), select(select(vec4<bool>(global2.c.x, global2.c.x, global2.c.x, global2.b.e), vec4<bool>(arg_0.e, global2.c.x, true, true), arg_0.e), vec4<bool>(global2.b.e, arg_0.e, arg_0.e, true), true == global2.b.e)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global2.b.d, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-627f, arg_0.d.x, arg_0.d.x), vec3<f32>(1490f, 506f, arg_0.b)), global2.b.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, arg_0.d.x, global2.b.d.x))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, -1474f, var_0.x)) * global2.b.b) * _wgslsmith_f_op_f32(step(global2.b.b, -274f))), _wgslsmith_f_op_f32(floor(-337f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-451f, _wgslsmith_f_op_f32(f32(-1f) * -274f)))));
    global0 = vec4<i32>(16285i, 1i, 1i, ~_wgslsmith_mult_i32(2147483647i >> (u_input.b.x % 32u), _wgslsmith_sub_i32(16238i, global0.x)) | global0.x);
    let var_3 = arg_0.c;
    return var_0.yw;
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_3(~(~firstLeadingBit(u_input.b.x) >> (_wgslsmith_dot_vec4_u32(countOneBits(global2.b.c), vec4<u32>(u_input.d, global2.a, 976u, 1u)) % 32u)), global2.b, func_3(global2.b));
    let var_1 = ~((vec3<u32>(var_0.a, ~0u, 1u) << (_wgslsmith_div_vec3_u32(~var_0.b.c.yxw, _wgslsmith_div_vec3_u32(global2.b.c.xyz, vec3<u32>(global2.b.c.x, 1u, 10354u))) % vec3<u32>(32u))) & ~firstLeadingBit(vec3<u32>(1u, 24285u, 0u)));
    let var_2 = var_0;
    global1 = array<Struct_2, 24>();
    var var_3 = select(~abs(u_input.c), ~vec4<i32>(min(min(21027i, -2147483647i), ~global0.x), (876i & u_input.a.x) ^ 1i, abs(0i), _wgslsmith_mod_i32(u_input.c.x, 14390i) ^ (global0.x & global0.x)), select(false, !var_0.b.e, true) || true);
    return var_0.b.c;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(func_2(), ~vec4<u32>(_wgslsmith_add_u32(~arg_1.x, 1u << (arg_1.x % 32u)), 9890u, global2.b.a.x, _wgslsmith_mult_u32(u_input.b.x, 1u)));
    global2 = Struct_3(_wgslsmith_dot_vec3_u32(global2.b.c.yzz, _wgslsmith_sub_vec3_u32(vec3<u32>(min(0u, global2.a), ~global2.a, 25576u), vec3<u32>(arg_1.x, 127468u, global2.a))), Struct_1(~(~arg_1.yw ^ abs(vec2<u32>(var_0, 1u))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(global2.b.d.x))), abs(abs(~vec4<u32>(10856u, 58618u, 2486u, global2.b.a.x))), _wgslsmith_f_op_vec3_f32(global2.b.d - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global2.b.d + vec3<f32>(global2.b.d.x, -1000f, 891f))))), !any(vec3<bool>(global2.c.x, false, global2.b.e)) | !all(vec4<bool>(global2.b.e, global2.b.e, true, true))), !func_3(Struct_1(~vec2<u32>(4294967295u, u_input.b.x), global2.b.b, func_2(), _wgslsmith_f_op_vec3_f32(floor(global2.b.d)), global2.b.a.x > 0u)));
    global1 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(global2.b.d));
    global0 = vec4<i32>(i32(-1i) * -38536i, min(~(~1i), -(~_wgslsmith_add_i32(-1i, arg_0))), u_input.a.x, 1i);
    return select(vec4<bool>(all(global2.c), !global2.b.e, global2.c.x, !(!(false | global2.b.e))), !vec4<bool>(all(vec4<bool>(true, global2.c.x, false, global2.b.e)), !(global2.b.e && true), any(select(vec4<bool>(true, false, true, global2.b.e), vec4<bool>(false, false, global2.b.e, global2.c.x), true)), !all(vec4<bool>(global2.c.x, global2.c.x, true, global2.c.x))), vec4<bool>(true, !func_3(Struct_1(global2.b.c.zw, 542f, vec4<u32>(u_input.d, arg_1.x, 4294967295u, 1u), var_1, global2.c.x)).x, global2.b.e, !(true & !global2.b.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 24>();
    global2 = Struct_3(_wgslsmith_clamp_u32(_wgslsmith_div_u32(9562u, max(4294967295u, ~u_input.d)), 31361u, ~_wgslsmith_add_u32(u_input.e.x >> (u_input.d % 32u), 1u)), Struct_1(~vec2<u32>(reverseBits(u_input.e.x), 408u), _wgslsmith_f_op_f32(f32(-1f) * -262f), select(vec4<u32>(25858u, ~4294967295u, 123623u, _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u)), select(vec4<u32>(1u, 1u, 1u, u_input.b.x) << (global2.b.c % vec4<u32>(32u)), ~global2.b.c, select(vec4<bool>(global2.b.e, false, global2.b.e, global2.b.e), vec4<bool>(global2.c.x, global2.b.e, true, false), vec4<bool>(global2.b.e, global2.c.x, true, global2.b.e))), global2.b.e), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, 2037f, -1554f)))), u_input.b.x == 1u), global2.c);
    let var_0 = global1[_wgslsmith_index_u32(~u_input.b.x, 24u)];
    let var_1 = func_1(countOneBits(~(-48544i)), vec4<u32>(1u, u_input.b.x, 18710u, 0u));
    global1 = array<Struct_2, 24>();
    var var_2 = true;
    global2 = Struct_3(u_input.e.x, global2.b, global2.c);
    global1 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(abs(-316f))), var_0.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, 288f, global2.c.x)), 1251f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) - _wgslsmith_f_op_f32(abs(629f))), global2.b.d.x) * var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.b.c.zzz, ~global2.b.c.yyy, vec3<u32>(56187u, u_input.e.x & u_input.b.x, u_input.e.x & u_input.e.x)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(0u, u_input.b.x, 1u)), global2.b.c.zxz) >> (abs(global2.b.c.www) % vec3<u32>(32u))));
}

