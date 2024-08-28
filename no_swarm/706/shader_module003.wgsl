struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: i32,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(32275u, 0u, -13291i, Struct_4(0i, Struct_1(false), vec3<f32>(1551f, 988f, 1080f), Struct_3(vec3<i32>(285i, 30089i, -10293i), Struct_1(true), Struct_2(true, Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true)), true, vec3<u32>(0u, 0u, 0u))), -629f);

var<private> global1: vec3<f32>;

var<private> global2: array<u32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    global2 = array<u32, 13>();
    let var_0 = Struct_5(u_input.a, firstTrailingBit(~(global0.a ^ ~1u)), -2147483647i >> (firstLeadingBit(_wgslsmith_clamp_u32(~u_input.b, global0.a << (u_input.b % 32u), 1u)) % 32u), global0.d, _wgslsmith_f_op_f32(global0.d.c.x - global0.d.c.x));
    var var_1 = Struct_1(21563u >= ~u_input.a);
    global0 = Struct_5(max(global0.b, firstLeadingBit(global0.a)), max(global2[_wgslsmith_index_u32(~select(global0.d.d.e.x, global0.a, !var_0.d.d.d), 13u)], _wgslsmith_div_u32(u_input.b, abs(global0.d.d.e.x) | countOneBits(global0.a))), var_0.d.d.a.x, Struct_4(-1i, Struct_1(var_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 367f)) * _wgslsmith_f_op_vec3_f32(-var_0.d.c)), global0.d.d), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.e, global0.d.c.x)), var_0.e)), -1795f), 543f)));
    var_1 = global0.d.d.c.b;
    return ~_wgslsmith_dot_vec2_u32(global0.d.d.e.xy, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), var_0.d.d.e.yy, var_0.d.d.e.yx), select(var_0.d.d.e.zy, abs(var_0.d.d.e.yx), select(vec2<bool>(global0.d.b.a, true), vec2<bool>(false, var_0.d.d.c.c.a), false)), firstLeadingBit(var_0.d.d.e.yz)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>) -> u32 {
    let var_0 = vec3<i32>(global0.c << (firstLeadingBit(arg_0.d.e.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(arg_0.d.a.x, arg_0.d.a.x)), -_wgslsmith_add_i32(global0.d.d.a.x, 1i), 6056i & abs(global0.c)), arg_0.d.a), _wgslsmith_div_i32(global0.d.d.a.x, -6762i));
    var var_1 = true;
    let var_2 = Struct_5(_wgslsmith_add_u32(abs(~1u), global2[_wgslsmith_index_u32(global0.d.d.e.x, 13u)]), ~(~func_3(Struct_1(global0.d.d.d), var_0.zx)) ^ ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(global0.a), _wgslsmith_mod_u32(u_input.b, arg_0.d.e.x)), 13u)], 1i, global0.d, _wgslsmith_f_op_f32(-global1.x));
    var var_3 = var_2;
    var_3 = var_2;
    return _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(firstTrailingBit(~global0.a), 13u)], u_input.b);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global0.d.d.e.xx, ~(_wgslsmith_add_vec2_u32(vec2<u32>(39243u, u_input.b), vec2<u32>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)])) & ~global0.d.d.e.xy)), _wgslsmith_mod_vec2_u32(countOneBits((global0.d.d.e.yx << (vec2<u32>(global0.a, 49141u) % vec2<u32>(32u))) >> ((vec2<u32>(51576u, u_input.b) ^ vec2<u32>(u_input.a, 10009u)) % vec2<u32>(32u))), global0.d.d.e.zy));
    var_0 = max(10589u, 0u << (func_2(global0.d, vec2<f32>(1005f, global0.d.c.x)) % 32u));
    var_0 = global0.d.d.e.x;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.c), _wgslsmith_f_op_vec3_f32(trunc(global0.d.c))) - global0.d.c) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d.c.x, global0.d.c.x, global1.x), global0.d.c, false)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1802f, -799f, global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global0.e)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, 911f, 581f))), global0.d.b.a))) * global0.d.c);
    global2 = array<u32, 13>();
    return Struct_2(global0.d.d.b.a, Struct_1(global0.d.b.a), Struct_1(false), global0.d.d.c.d, Struct_1(!global0.d.d.b.a));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 13u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d.c * global0.d.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, _wgslsmith_f_op_f32(global0.e * 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.e + global0.e), _wgslsmith_div_f32(1644f, global0.e))))));
    global1 = vec3<f32>(global0.e, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -160f) - global0.e));
    global0 = Struct_5(_wgslsmith_add_u32(_wgslsmith_mult_u32(firstLeadingBit(func_2(global0.d, global0.d.c.yy)), (global2[_wgslsmith_index_u32(0u, 13u)] << (65511u % 32u)) ^ global0.b), abs(reverseBits(u_input.a)) << (80725u % 32u)), ~17751u, -2147483647i, Struct_4(-global0.c, global0.d.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(global0.d.c, _wgslsmith_f_op_vec3_f32(-var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 493f, global0.d.c.x)))), Struct_3(abs(vec3<i32>(0i, global0.c, 4598i)), arg_0.e, Struct_2(global0.d.a != global0.d.d.a.x, func_1().c, func_1().b, arg_0.b, func_1().b), func_1().e.a, _wgslsmith_add_vec3_u32(~global0.d.d.e, min(global0.d.d.e, global0.d.d.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.d.c.x)) * _wgslsmith_f_op_f32(-global1.x))))));
    var var_2 = 0u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(887f, 972f, arg_0.a)) - _wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(select(global0.e, 1142f, u_input.a == global0.a)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(global0.e, 543f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e - _wgslsmith_f_op_f32(abs(global0.d.c.x)))));
    global2 = array<u32, 13>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d.c.x))), -1254f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_1())), _wgslsmith_f_op_f32(func_4(global0.d.d.c)))))), _wgslsmith_f_op_f32(select(2502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1201f - 1312f))), !select(global0.d.b.a, global0.d.d.d, global0.d.b.a) | func_1().b.a)), _wgslsmith_div_f32(global1.x, global0.e));
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(global0.d.d.e), global0.d.d.e), vec3<u32>(31537u, ~4294967295u, _wgslsmith_clamp_u32(42611u, 1u, 28086u)) >> (~(global0.d.d.e & global0.d.d.e) % vec3<u32>(32u))), vec3<u32>(31478u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, global0.a)), vec2<u32>(u_input.b, global0.b) | ~global0.d.d.e.zz), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global0.d.d.e.x, 13u)], global0.d.d.e.x), global0.a), global2[_wgslsmith_index_u32(~(4294967295u & u_input.b), 13u)])));
    global0 = Struct_5(~min(u_input.a, firstTrailingBit(~var_0)), _wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(~var_0, var_0 & 29891u)), global0.c, global0.d, global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(global1.xy, 324f);
}

