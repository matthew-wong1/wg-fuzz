struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(1616f, -1101f), Struct_1(vec2<bool>(false, false), -16068i, vec2<u32>(65481u, 1u), 35729i), -1i, 30304i, vec3<bool>(false, false, true));

var<private> global1: array<Struct_4, 3>;

var<private> global2: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-829f, _wgslsmith_f_op_f32(abs(214f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(981f + -1414f) - 325f), global0.a.x))));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1725f) - _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f + _wgslsmith_div_f32(-950f, arg_0.a.x)) + -1852f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))) + 2274f)));
    let var_1 = -1i;
    let var_2 = 1u;
    var var_3 = Struct_2(var_0.yz, arg_0.b, firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.c, _wgslsmith_mod_i32(global0.d, var_1)), ~(-arg_0.b.b), ~(2147483647i ^ arg_0.d))), _wgslsmith_sub_i32(u_input.a, -arg_0.b.d), vec3<bool>(false, (_wgslsmith_mult_u32(0u, 4294967295u) ^ ~u_input.c) >= arg_1, !(!(!arg_0.e.x))));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a) * _wgslsmith_f_op_vec2_f32(var_0.yx + arg_0.a)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(round(var_3.a.x))) + var_0.xy))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<f32>(-793f, global0.a.x), global0.b, global0.b.b >> (0u % 32u), global0.c, select(global0.e, vec3<bool>(arg_0, true, true), arg_0)), arg_1)))), Struct_1(select(select(select(global0.b.a, vec2<bool>(false, arg_0), vec2<bool>(arg_0, false)), !vec2<bool>(true, arg_0), global0.b.a), vec2<bool>(!global0.e.x, all(vec4<bool>(false, global0.b.a.x, global0.b.a.x, true))), all(vec2<bool>(false, arg_0)) | !arg_0), -(-global0.c >> (u_input.c % 32u)), global0.b.c, max(_wgslsmith_add_i32(29956i, global0.b.d), reverseBits(global0.c)) >> (~global0.b.c.x % 32u)), 28760i, 29023i, select(global0.e, select(!vec3<bool>(true, arg_0, true), !select(global0.e, vec3<bool>(arg_0, true, false), global0.e), all(vec4<bool>(arg_0, false, true, arg_0))), !(!select(global0.e, vec3<bool>(global0.e.x, false, arg_0), false))));
    var var_1 = global0.b;
    let var_2 = Struct_5(~firstLeadingBit(-vec2<i32>(17358i, 20878i)), _wgslsmith_f_op_f32(1118f * arg_2), Struct_4(Struct_3(Struct_2(vec2<f32>(var_0.a.x, var_0.a.x), Struct_1(vec2<bool>(var_1.a.x, arg_0), var_1.d, vec2<u32>(u_input.b, 24091u), 18278i), firstLeadingBit(0i), -42029i, vec3<bool>(true, var_1.a.x, global0.b.a.x)), ~u_input.d, vec4<i32>(~(-21754i), countOneBits(1035i), ~u_input.a, -global0.d), _wgslsmith_f_op_f32(f32(-1f) * -1084f)), _wgslsmith_f_op_f32(-155f - -1147f)), global0.b);
    global1 = array<Struct_4, 3>();
    let var_3 = Struct_4(var_2.c.a, global0.a.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), var_0.b.a.x == true))));
}

fn func_1() -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(global0.b.c.x, 3u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-533f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(166f, global0.a.x), 740f))))), _wgslsmith_f_op_f32(func_2(all(global0.e), min(var_0.a.b, 1u), _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_f_op_f32(-global0.a.x)))));
    var var_2 = global0.b.c.x;
    let var_3 = !vec4<bool>(select(false, !global0.e.x, !(true || global0.b.a.x)), !(u_input.a < 2147483647i) && all(vec3<bool>(false, false, false)), true, _wgslsmith_add_u32(1u, var_0.a.a.b.c.x) < 21531u);
    var var_4 = 1i;
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)), 2639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + 1082f) + _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1416f, var_0.a.x, -168f) * vec3<f32>(var_0.a.x, var_0.a.x, global0.a.x))))), true)));
    var var_3 = (vec2<i32>(abs(u_input.a), 20314i) ^ ~vec2<i32>(u_input.a | global0.d, _wgslsmith_mult_i32(-5065i, 17593i))) << (((((global0.b.c << (global0.b.c % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.x, 0u), global0.b.c)) ^ select(vec2<u32>(7896u, 0u), _wgslsmith_clamp_vec2_u32(var_1.c, vec2<u32>(var_1.c.x, var_0.b.c.x), global0.b.c), vec2<bool>(true, false))) ^ _wgslsmith_clamp_vec2_u32(global0.b.c, ~var_0.b.c, ~global0.b.c)) % vec2<u32>(32u));
    global1 = array<Struct_4, 3>();
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -136f, -819f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, -2496f, -104f)), var_0.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1484f, -377f, var_2.x) - vec3<f32>(var_2.x, 1000f, -958f)), select(select(vec3<bool>(true, false, var_1.a.x), global0.e, vec3<bool>(false, global0.e.x, var_0.b.a.x)), var_0.e, !global0.e))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 144f, var_2.x)), vec3<f32>(-819f, -112f, var_2.x))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1171f, -1482f, global0.a.x) - vec3<f32>(var_0.a.x, 193f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 394f, 1100f)), var_0.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.x), 13387u);
}

