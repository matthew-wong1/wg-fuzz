struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(24406u, 58506u, 123958u), vec3<u32>(8406u, 8894u, 1u), vec3<u32>(32446u, 30013u, 18725u), vec3<u32>(80445u, 69749u, 1u), vec3<u32>(41070u, 48209u, 0u), vec3<u32>(52817u, 11835u, 1396u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 38102u, 13971u), vec3<u32>(4294967295u, 1u, 5852u), vec3<u32>(47189u, 1u, 1u), vec3<u32>(0u, 4294967295u, 27152u), vec3<u32>(22743u, 0u, 0u), vec3<u32>(23200u, 4294967295u, 32632u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 25359u, 0u), vec3<u32>(44419u, 12517u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(9782u, 46799u, 1u));

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 24>;

var<private> global3: array<vec4<u32>, 25>;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(550f - _wgslsmith_f_op_f32(f32(-1f) * -559f)), -1583f, Struct_2(_wgslsmith_add_i32(~(u_input.a ^ global4.a), global4.a), global4.b), global1.a.x, _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(global4.a, -22223i), vec2<i32>(-36132i, u_input.a)), select(vec2<i32>(reverseBits(global4.a), abs(global4.a)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, global4.a)), global1.c.x && false)));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(1u, ~(u_input.b & global1.b.x) & var_0.c.b.b.x), 1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-528f, var_0.a, var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -208f, -1339f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1498f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, 1956f)) * _wgslsmith_f_op_f32(round(-1220f))), var_0.a) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 526f, -356f) * vec3<f32>(-755f, -410f, var_0.a)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1898f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-160f, var_0.a) + _wgslsmith_f_op_f32(-135f + var_2.x)))))));
    var var_4 = !var_0.c.b.c.wwx;
    return vec4<bool>(global1.a.x, false, true, false);
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global1 = global4.b;
    global2 = array<vec2<bool>, 24>();
    let var_0 = !(!(!select(global2[_wgslsmith_index_u32(abs(global4.b.b.x), 24u)], vec2<bool>(global1.c.x, global1.a.x), all(global4.b.c))));
    let var_1 = Struct_3(-747f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -993f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -366f))))), Struct_2(global4.a, global4.b), arg_0, firstTrailingBit(_wgslsmith_mult_vec2_i32(~(vec2<i32>(41381i, 23611i) | vec2<i32>(0i, global4.a)), -max(vec2<i32>(-37885i, global4.a), vec2<i32>(-1i, global4.a)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, 820f))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.b) - vec2<f32>(-320f, var_1.b)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a, -761f)))), vec2<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(abs(var_1.a))))))));
    return vec4<bool>(_wgslsmith_mod_i32(-11348i, -var_1.e.x) >= var_1.e.x, true, true, !any(func_3()) & false);
}

fn func_4(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = global4.b.a.x;
    let var_1 = ~55372u;
    global1 = global4.b;
    let var_2 = !(!(!(!global4.b.c.zxy)));
    global4 = Struct_2(u_input.a, Struct_1(vec2<bool>(false, global1.c.x), abs(global1.b), global4.b.c));
    return global4.b;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<f32> {
    var var_0 = Struct_2(arg_0, func_4(all(func_2(false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1153f)))));
    global3 = array<vec4<u32>, 25>();
    var var_1 = func_4(0i <= (u_input.a | 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1153f, 1234f))))));
    var var_2 = vec3<bool>(var_1.c.x, any(select(!var_0.b.c.zyw, vec3<bool>(true, func_4(global1.c.x, -418f).c.x, arg_2.c.x | var_0.b.c.x), arg_2.b.x <= firstLeadingBit(arg_3.x))), var_0.b.a.x);
    var_2 = func_4(select(global1.a.x & (!global1.a.x && global1.a.x), var_2.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(104f - -175f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1563f)) + -744f)))).c.wwz;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(floor(-820f)), -344f, _wgslsmith_f_op_f32(-937f + 2391f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -920f, 765f) * _wgslsmith_div_vec3_f32(vec3<f32>(610f, 141f, 312f), vec3<f32>(208f, -269f, -571f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-344f, 826f, -131f))), _wgslsmith_div_vec3_f32(vec3<f32>(1401f, 1000f, 1251f), vec3<f32>(-573f, 3047f, -1000f))), true))), all(!vec3<bool>(all(vec2<bool>(var_1.a.x, true)), true, arg_1 < -22944i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-721f, 399f)) * _wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f))), -1000f), _wgslsmith_f_op_vec3_f32(func_1(u_input.a, global4.a, global4.b, ~vec3<u32>(~u_input.b, ~0u, abs(global4.b.b.x)))), any(global4.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1.b.yz << (~global4.b.b.xy % vec2<u32>(32u))), 82479u, reverseBits(~103505u), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(max(abs(vec3<i32>(-179i, -1i, -1i)), -vec3<i32>(u_input.a, 37276i, -41073i)), select(vec3<i32>(2147483647i, global4.a, 0i), vec3<i32>(u_input.a, u_input.a, global4.a), global1.c.zyw) | vec3<i32>(u_input.a, -1i, global4.a)), vec3<i32>(select(min(global4.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a, global4.a), vec2<i32>(u_input.a, u_input.a)), global4.b.c.x), -8339i, ~(-34397i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zy), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.zy)) - _wgslsmith_f_op_vec2_f32(var_0.yx * vec2<f32>(-1966f, var_0.x)))))));
}

