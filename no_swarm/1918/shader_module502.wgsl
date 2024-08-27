struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<bool>(false, false, false, true), -705f, -188f, 2147483647i), 4294967295u, vec3<bool>(true, false, false), -10335i);

var<private> global1: bool;

var<private> global2: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    global0 = Struct_4(arg_0.a, global0.b, select(vec3<bool>(any(vec3<bool>(arg_2.a.a.x, true, global0.a.a.x)) & (arg_2.a.a.x | arg_1.a.a.x), !any(arg_2.a.a.wzw), !(false & global0.c.x)), vec3<bool>(false, arg_0.c.x, all(!global0.a.a)), !select(!arg_2.a.a.xyx, select(global0.c, vec3<bool>(false, global0.c.x, arg_0.a.a.x), vec3<bool>(true, false, false)), select(vec3<bool>(arg_2.a.a.x, false, false), vec3<bool>(false, arg_1.a.a.x, arg_0.c.x), true))), 32156i);
    var var_0 = !vec3<bool>(all(select(!vec4<bool>(global0.a.a.x, true, true, false), vec4<bool>(global0.a.a.x, arg_1.a.a.x, global0.a.a.x, arg_1.a.a.x), false)), abs(global0.a.d) > arg_0.d, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.b, arg_2.a.c, -2805f, -2219f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.c, arg_1.a.b, -1000f, -2015f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.b, -2849f, global0.a.b, arg_2.a.b), vec4<f32>(arg_2.a.b, -683f, global0.a.c, 1550f))), vec4<f32>(arg_1.a.b, global0.a.b, global0.a.b, 721f))))));
    global0 = Struct_4(arg_1.a, abs(~global0.b), select(arg_0.c, arg_1.a.a.yyw, !arg_2.a.a.www), global0.a.d);
    let var_2 = Struct_4(arg_0.a, arg_0.b, select(!(!(!arg_0.c)), select(arg_0.c, select(global0.c, !arg_2.a.a.xzw, var_0.x), select(!arg_0.c, select(arg_1.a.a.wwz, vec3<bool>(global0.c.x, true, true), vec3<bool>(arg_2.a.a.x, true, true)), !arg_0.a.a.zzw)), true), abs(u_input.a.x));
    return vec3<bool>(any(var_0.xx), !(!(!(!var_0.x))), var_0.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_4(Struct_1(arg_0.a, global0.a.b, arg_1.x, _wgslsmith_add_i32(u_input.a.x, -19842i & (u_input.a.x ^ 1i))), global0.b >> (global0.b % 32u), arg_0.a.wxy, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(-u_input.a.zyw), vec3<i32>(global0.d, arg_0.b, -u_input.a.x)), vec3<i32>(_wgslsmith_clamp_i32(1i, arg_3.x, global0.d), ~arg_0.b, _wgslsmith_div_i32(-8773i, 44095i))));
    global0 = Struct_4(global0.a, var_0.b, select(var_0.c, func_3(var_0, Struct_3(var_0.a), Struct_3(Struct_1(arg_0.a, global0.a.c, 162f, arg_0.b))), vec3<bool>(!arg_2 | (arg_1.x < 230f), all(!global0.a.a), _wgslsmith_f_op_f32(-arg_1.x) != 405f)), countOneBits(-2147483647i << (global0.b % 32u)));
    var var_1 = arg_0.b;
    var var_2 = Struct_3(Struct_1(vec4<bool>(global0.c.x, true, select(!var_0.a.a.x, arg_2, !arg_0.a.x), var_0.a.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -779f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * var_0.a.c) * _wgslsmith_f_op_f32(min(-379f, var_0.a.b)))), i32(-1i) * -(arg_3.x & global0.d)));
    var var_3 = global0.a.a.xy;
    return 72063u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(vec4<bool>(true, any(vec2<bool>(true, any(vec4<bool>(false, arg_0.c, global0.c.x, global0.a.a.x)))), false, (i32(-1i) * -11450i) < _wgslsmith_div_i32(-1i << (global0.b % 32u), abs(1i))), u_input.a.x, true);
    let var_1 = vec2<i32>(_wgslsmith_div_i32(~firstLeadingBit(arg_0.b) << (func_2(Struct_2(vec4<bool>(false, arg_1.a.x, true, var_0.c), -4811i, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, arg_1.b)), global0.a.c < 717f, vec2<i32>(arg_1.d, -1i)) % 32u), global0.a.d), u_input.a.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.b, 1000f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1461f * global0.a.c))))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(round(global0.a.c)))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1438f, _wgslsmith_f_op_f32(sign(arg_1.c)))))));
    var var_3 = min(vec2<u32>(reverseBits(global0.b), 0u) | vec2<u32>(global0.b, abs(1u)), ~(firstLeadingBit(vec2<u32>(global0.b, 0u) >> (vec2<u32>(0u, 68420u) % vec2<u32>(32u))) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0.b), vec2<u32>(55421u, 12816u))));
    let var_4 = _wgslsmith_f_op_f32(trunc(global0.a.b));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4, global0.a.b, var_0.a.x)) - _wgslsmith_f_op_f32(var_2.x - 1826f)), -2318f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(true, global0.a.a.x, false, global0.c.x), 0i, true), Struct_1(global0.a.a, global0.a.c, global0.a.c, 2147483647i))), _wgslsmith_f_op_f32(func_1(Struct_2(global0.a.a, u_input.a.x, false), global0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2036f * global0.a.b), _wgslsmith_f_op_f32(-937f + 481f))), _wgslsmith_f_op_f32(global0.a.c - 1260f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.b, global0.a.b, global0.a.c, -1447f), vec4<f32>(global0.a.b, 1000f, global0.a.b, -1076f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(625f, 177f, -1382f, 348f) * vec4<f32>(global0.a.b, 1583f, global0.a.c, global0.a.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.c, 1056f, 587f, 414f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b, 507f, -729f, global0.a.b)), vec4<f32>(1608f, global0.a.c, 1000f, -1000f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.b, 134f, 614f, global0.a.c))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * global0.a.c))), _wgslsmith_f_op_f32(-global0.a.c), -1000f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.c, -179f, 1043f, global0.a.b), vec4<f32>(-933f, -1696f, global0.a.c, -1000f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(751f, var_0.x, var_0.x, global0.a.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, global0.a.c, var_0.x, global0.a.c))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b, var_0.x, global0.a.b, -1377f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b, global0.a.b, global0.a.c, var_0.x) + vec4<f32>(-743f, -841f, var_0.x, -519f)))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-279f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-351f, -936f), _wgslsmith_f_op_f32(ceil(global0.a.c))))), -1647f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.a.b)))) + global0.a.b));
    let var_2 = !func_3(Struct_4(Struct_1(global0.a.a, _wgslsmith_f_op_f32(round(-462f)), -1047f, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~(~1u), vec3<bool>(true, false, 4294967295u < global0.b), global0.d), Struct_3(Struct_1(!global0.a.a, _wgslsmith_div_f32(-972f, 274f), global0.a.c, u_input.a.x | -2147483647i)), Struct_3(global0.a));
    var var_3 = 1u;
    var var_4 = vec3<bool>(all(select(func_3(Struct_4(global0.a, 1u, var_2, -21785i), Struct_3(global0.a), Struct_3(Struct_1(global0.a.a, 616f, -361f, global0.d))), vec3<bool>(all(vec4<bool>(global0.c.x, global0.c.x, false, var_2.x)), global0.c.x, global0.c.x), select(var_2.x, var_2.x != var_2.x, !var_2.x))), !all(!(!vec4<bool>(global0.a.a.x, false, var_2.x, global0.c.x))), !any(global0.a.a.wwx));
    var var_5 = Struct_3(Struct_1(vec4<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.b), vec2<u32>(13138u, global0.b)) != ~34663u, true, var_4.x), _wgslsmith_f_op_f32(-1705f - global0.a.c), var_0.x, ~(reverseBits(global0.d) | _wgslsmith_dot_vec3_i32(u_input.a.ywz, vec3<i32>(u_input.a.x, u_input.a.x, 3081i)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(19654u, 33313u & ~global0.b), _wgslsmith_sub_i32(_wgslsmith_sub_i32(min(24068i, var_5.a.d), ~global0.d), 0i) >> (reverseBits(0u) % 32u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(54910u, 117410u, global0.b, global0.b), ~vec4<u32>(global0.b, 1u, global0.b, 1u)) & select(min(countOneBits(vec4<u32>(global0.b, global0.b, 64620u, global0.b)), vec4<u32>(global0.b, global0.b, 1u, global0.b) << (vec4<u32>(359u, 37185u, 11366u, global0.b) % vec4<u32>(32u))), max(abs(vec4<u32>(global0.b, 1u, 4294967295u, 43197u)), vec4<u32>(1u, global0.b, global0.b, global0.b)), !select(vec4<bool>(true, global0.a.a.x, var_5.a.a.x, false), vec4<bool>(var_2.x, true, false, global0.a.a.x), var_5.a.a)));
}

