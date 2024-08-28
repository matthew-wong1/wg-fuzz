struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(2306f, -1139f, -916f, -638f, 973f, 1450f, -656f, 772f, 666f, -121f, 394f, 295f, 518f, -553f);

var<private> global1: vec3<u32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    var var_0 = vec3<i32>(firstLeadingBit(u_input.a.x), ~abs(_wgslsmith_clamp_i32(reverseBits(arg_1.b.x), arg_1.b.x ^ -15413i, -89061i)), ~(-2147483647i));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~abs(max(select(vec4<u32>(11283u, arg_0, 25181u, 8978u), vec4<u32>(0u, 0u, arg_1.c, u_input.b), vec4<bool>(true, false, arg_1.d.a, false)), vec4<u32>(9125u, 24566u, 73142u, 0u))), ~vec4<u32>(_wgslsmith_mult_u32(countOneBits(arg_0), _wgslsmith_div_u32(22630u, u_input.b)), arg_0, ~1u, u_input.b)), 14u)];
    global0 = array<f32, 14>();
    var_0 = vec3<i32>(44595i, _wgslsmith_div_i32(i32(-1i) * -1i, 40995i), select(u_input.a.x, firstTrailingBit(2147483647i), true));
    global0 = array<f32, 14>();
    return ~(var_0.x ^ 0i) ^ arg_1.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(countOneBits(global1.x), global1.x)), vec2<u32>(~0u, 93936u)), -vec2<i32>(u_input.a.x, min(select(u_input.a.x, u_input.a.x, false), u_input.a.x)), ~global1.x, Struct_1(false), func_3(u_input.b, Struct_2(u_input.b, -(vec2<i32>(u_input.a.x, -2147483647i) << (global1.yz % vec2<u32>(32u))), 1u, Struct_1(true), ~0i >> (u_input.b % 32u))));
    global0 = array<f32, 14>();
    global1 = select(select(~firstLeadingBit(vec3<u32>(global1.x, var_0.c, 1u)) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(2117u, global1.x, var_0.a), vec3<u32>(u_input.b, global1.x, var_0.c)), reverseBits(vec3<u32>(4294967295u, 7094u, 112862u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(8390u, u_input.b, 34843u), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(411u, global1.x, 4294967295u), vec3<u32>(var_0.a, 50476u, global1.x)))), false), vec3<u32>(abs(var_0.c), var_0.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(7927u, 94738u, 10936u), vec3<u32>(var_0.a, 115990u, 10153u), ~vec3<u32>(u_input.b, 12684u, var_0.c)), max(vec3<u32>(0u, 1u, 0u) | vec3<u32>(global1.x, 58782u, var_0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 100716u, global1.x), vec3<u32>(u_input.b, 0u, u_input.b))))), vec3<bool>(var_0.d.a, !(!var_0.d.a), true));
    var var_1 = ~(~vec4<i32>(abs(u_input.a.x), -1i, _wgslsmith_div_i32(1i, var_0.e), _wgslsmith_dot_vec3_i32(-vec3<i32>(-24917i, var_0.e, -21231i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, var_0.e, u_input.a.x), vec3<i32>(1i, u_input.a.x, -62101i)))));
    let var_2 = Struct_2(82961u >> (_wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.b, 4294967295u, 50533u), ~_wgslsmith_mod_u32(var_0.a, 95350u)) % 32u), var_1.xw, _wgslsmith_dot_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, var_0.a), vec3<u32>(4294967295u, u_input.b, global1.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(15874u, u_input.b, 84805u), vec3<u32>(global1.x, 1890u, var_0.a))), vec3<u32>(var_0.c & u_input.b, var_0.a, ~u_input.b)) >> (_wgslsmith_mult_u32(u_input.b, ~(~74781u)) % 32u), Struct_1(var_0.d.a), var_1.x);
    return var_2;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2().d;
    let var_1 = ~(~(((vec4<u32>(arg_0.a, arg_0.c, 1u, arg_0.c) >> (vec4<u32>(0u, arg_0.a, u_input.b, global1.x) % vec4<u32>(32u))) | vec4<u32>(31699u, 0u, arg_0.c, global1.x)) << (vec4<u32>(arg_0.a, ~u_input.b, 1u, global1.x) % vec4<u32>(32u))));
    var_0 = arg_0.d;
    let var_2 = func_2().d;
    let var_3 = func_2().d;
    return var_3;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: i32) -> vec4<bool> {
    var var_0 = func_4(func_2());
    global1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global1.yz, global1.yx) << (0u % 32u), _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(global1.x >> (arg_1 % 32u), firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(90752u, 0u, 4294967295u), vec3<u32>(arg_2, 32740u, 35858u)) ^ arg_1), _wgslsmith_add_u32(arg_2 & arg_1, 73942u & arg_2) >> (u_input.b % 32u)), firstLeadingBit(~select(~vec3<u32>(arg_1, u_input.b, arg_0), firstLeadingBit(vec3<u32>(0u, arg_2, global1.x)), vec3<bool>(true, var_0.a, false))), max(_wgslsmith_mod_vec3_u32(vec3<u32>(67157u, 106717u, 4294967295u) & firstLeadingBit(vec3<u32>(global1.x, arg_0, 4294967295u)), ~(~vec3<u32>(global1.x, 1u, 0u))), vec3<u32>(arg_2, 1u, func_2().a)));
    var var_1 = firstLeadingBit(_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(4294967295u, global1.x)), arg_2));
    var var_2 = func_2().d;
    let var_3 = Struct_2(global1.x, u_input.a | max(vec2<i32>(arg_3, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), ~vec2<i32>(1i, arg_3)), 1u, Struct_1(!select(any(vec2<bool>(true, var_0.a)), select(false, var_0.a, true), func_2().d.a)), arg_3);
    return select(select(vec4<bool>(all(vec2<bool>(true, true)), !(var_2.a == var_3.d.a), all(vec2<bool>(true, false)), var_2.a || true), select(!(!vec4<bool>(var_3.d.a, var_2.a, var_3.d.a, var_0.a)), select(!vec4<bool>(var_3.d.a, false, var_2.a, false), !vec4<bool>(true, var_0.a, true, var_2.a), !vec4<bool>(var_2.a, var_2.a, var_3.d.a, true)), select(!vec4<bool>(var_3.d.a, var_3.d.a, var_3.d.a, var_0.a), select(vec4<bool>(true, false, var_0.a, true), vec4<bool>(var_2.a, true, var_3.d.a, true), vec4<bool>(var_2.a, var_0.a, false, var_0.a)), !vec4<bool>(true, var_2.a, false, var_2.a))), select(!vec4<bool>(var_0.a, false, false, false), vec4<bool>(true, any(vec4<bool>(var_0.a, var_0.a, false, false)), false, !var_3.d.a), var_2.a)), select(!(!select(vec4<bool>(var_3.d.a, true, false, true), vec4<bool>(var_3.d.a, var_2.a, var_0.a, false), vec4<bool>(var_2.a, true, var_0.a, false))), select(select(!vec4<bool>(true, true, var_2.a, var_3.d.a), !vec4<bool>(false, false, false, var_0.a), select(vec4<bool>(var_3.d.a, var_2.a, true, var_3.d.a), vec4<bool>(var_0.a, false, true, true), vec4<bool>(var_3.d.a, true, true, true))), select(select(vec4<bool>(var_3.d.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, false, var_0.a, var_3.d.a), false), select(vec4<bool>(true, var_2.a, var_2.a, false), vec4<bool>(var_3.d.a, var_2.a, false, var_0.a), var_0.a), var_3.d.a), vec4<bool>(!var_2.a, !var_0.a, any(vec3<bool>(true, false, var_2.a)), true)), vec4<bool>(var_2.a, true, func_4(var_3).a, !var_0.a)), select(select(select(!vec4<bool>(var_3.d.a, var_0.a, var_3.d.a, var_0.a), vec4<bool>(false, true, false, var_2.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true)), select(vec4<bool>(true, var_0.a, true, var_0.a), !vec4<bool>(var_3.d.a, true, false, var_3.d.a), any(vec2<bool>(true, false))), var_2.a), select(select(vec4<bool>(true, var_0.a, false, var_0.a), select(vec4<bool>(false, false, true, false), vec4<bool>(var_3.d.a, true, false, true), true), !vec4<bool>(var_0.a, var_0.a, var_0.a, true)), select(select(vec4<bool>(true, true, false, var_3.d.a), vec4<bool>(false, false, true, false), false), select(vec4<bool>(var_3.d.a, false, var_0.a, true), vec4<bool>(true, false, var_0.a, var_2.a), vec4<bool>(true, var_3.d.a, var_3.d.a, var_0.a)), true), var_0.a), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_2.a, var_2.a, var_0.a), vec4<bool>(var_3.d.a, var_3.d.a, var_2.a, false), true), select(vec4<bool>(var_2.a, false, true, false), vec4<bool>(var_3.d.a, true, false, false), false)), select(vec4<bool>(true, var_2.a, var_0.a, var_2.a), select(vec4<bool>(var_2.a, var_3.d.a, var_0.a, var_2.a), vec4<bool>(false, var_3.d.a, true, var_0.a), var_2.a), any(vec2<bool>(var_3.d.a, var_2.a))), all(vec3<bool>(var_0.a, var_3.d.a, var_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    var var_1 = select(vec3<bool>(!(!any(vec2<bool>(false, true))), false, all(!func_1(u_input.b, u_input.b, 0u, var_0))), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.x, global1.x), global1.x), 14u)] <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global1.x, 14u)])), global0[_wgslsmith_index_u32(reverseBits(u_input.b), 14u)], false)), false, _wgslsmith_f_op_f32(f32(-1f) * -778f) != global0[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1.x, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)])) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-374f, global0[_wgslsmith_index_u32(u_input.b, 14u)]) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(45804u, global1.x), 14u)])) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f), global0[_wgslsmith_index_u32(~1u << (firstLeadingBit(global1.x) % 32u), 14u)]));
    global0 = array<f32, 14>();
    var var_2 = func_2();
    var var_3 = false;
    var var_4 = var_1.yz;
    let var_5 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -916f));
}

