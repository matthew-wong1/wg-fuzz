struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool = false;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(9974u, 42202u), -618f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = !select(select(vec4<bool>(global0.x, global0.x, global0.x, !global0.x), select(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, global0.x, false, global0.x), false), vec4<bool>(false, false, global0.x, false), !global0.x), !select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, false), global0.x)), select(!select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(true, true, any(vec4<bool>(false, global0.x, false, true)), true), vec4<bool>(true, u_input.c == u_input.e, true, any(vec3<bool>(false, true, true)))), !select(vec4<bool>(global0.x, false, global0.x, false), !vec4<bool>(global0.x, true, global0.x, global0.x), any(vec4<bool>(true, false, global0.x, global0.x))));
    global1 = all(!vec3<bool>(_wgslsmith_f_op_f32(global2.b - global2.b) <= _wgslsmith_f_op_f32(-481f - global2.b), global0.x, !(global0.x & global0.x)));
    global1 = true;
    var var_0 = Struct_3(Struct_2(~u_input.a.zy, _wgslsmith_f_op_f32(step(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b, global2.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-634f, global2.b)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1700f, 357f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, -1186f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-455f, global2.b))), global0.x))));
    global0 = select(select(vec4<bool>(any(select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x))), true & all(vec4<bool>(false, global0.x, false, false)), global0.x, all(select(global0.zx, global0.ww, vec2<bool>(true, true)))), vec4<bool>(!global0.x != global0.x, false, global0.x, !(!global0.x)), select(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), any(vec4<bool>(global0.x, true, global0.x, global0.x))), !vec4<bool>(false, global0.x, global0.x, true), false)), vec4<bool>(true, true | global0.x, true, global0.x), vec4<bool>(select(global0.x, true | global0.x, !global0.x), global0.x || (true && (u_input.c == 2147483647i)), any(!global0.wwz), all(vec3<bool>(global2.a.x == var_0.a.a.x, true, global0.x == global0.x))));
    return var_0.a.a.x;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = firstLeadingBit(95572u);
    global0 = !(!vec4<bool>(global0.x & false, any(!vec4<bool>(false, global0.x, true, true)), u_input.c < ~u_input.b.x, !global0.x & all(vec3<bool>(global0.x, false, global0.x))));
    return 40228u | (~u_input.a.x | ~func_3());
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec4<bool> {
    var var_0 = vec3<i32>(min(abs(arg_1), u_input.b.x), -9463i, -2147483647i) | -_wgslsmith_mod_vec3_i32(~(-vec3<i32>(arg_1, u_input.c, arg_1)), u_input.b ^ (u_input.b << (vec3<u32>(13668u, 4294967295u, arg_0.a.a.x) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 141f, 462f) - vec3<f32>(1267f, -477f, -724f))))));
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(~(~u_input.a.yz), _wgslsmith_mod_vec2_u32(vec2<u32>(func_2(vec3<i32>(arg_1, var_0.x, -5043i)), ~global2.a.x), countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 8377u), arg_0.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b * _wgslsmith_f_op_f32(abs(-141f))) + var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + -828f)) + _wgslsmith_f_op_f32(f32(-1f) * -627f))));
    let var_3 = arg_0.a.b;
    let var_4 = arg_0.a;
    return vec4<bool>(false || global0.x, any(select(global0.wzx, !vec3<bool>(global0.x, false, false), vec3<bool>(true, true, true))), select(true, !(all(vec4<bool>(false, global0.x, global0.x, global0.x)) != global0.x), !(_wgslsmith_f_op_f32(floor(699f)) != -211f)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(select(select(!vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(false, global0.x, false, false), !vec4<bool>(global0.x, true, global0.x, global0.x)), !(!vec4<bool>(global0.x, true, global0.x, true)), true), !select(select(vec4<bool>(true, global0.x, true, false), vec4<bool>(false, global0.x, global0.x, true), global0.x), vec4<bool>(true, true, true, true), vec4<bool>(false, global0.x, false, global0.x)), !(true | select(false, true, global0.x)));
    global0 = select(!select(select(!vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), func_1(Struct_3(Struct_2(global2.a, 726f), vec2<f32>(global2.b, global2.b)), 21908i)), vec4<bool>(true, !global0.x, all(vec4<bool>(false, false, true, global0.x)), all(vec3<bool>(global0.x, global0.x, global0.x))), true), vec4<bool>(false, any(!vec4<bool>(global0.x, global0.x, true, global0.x)), u_input.b.x >= _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, 40214i, u_input.c), u_input.d.x), global0.x), global0.x);
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.b))));
    let var_1 = ~(-1272i);
    let var_2 = Struct_3(Struct_2(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b, -535f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b - global2.b))))), vec2<f32>(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b)) - _wgslsmith_f_op_f32(select(global2.b, global2.b, false))))));
    let var_3 = firstTrailingBit(reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 2164i, u_input.b.x), vec3<i32>(var_1, -2147483647i, u_input.c), select(vec3<i32>(u_input.d.x, -27189i, var_1), u_input.b, vec3<bool>(true, true, true))), ~u_input.b)));
    let var_4 = !(!global0.x) || global0.x;
    var var_5 = Struct_3(Struct_2(vec2<u32>(~global2.a.x, max(u_input.a.x, min(64921u, global2.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - global2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.b.x)), 1254f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(-473f)), 1744f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(var_3, vec3<i32>(0i, var_1, 1i)), vec3<i32>(var_1, 45634i, var_3.x)), vec3<i32>(max(u_input.e, var_1), -var_3.x, ~29306i)), 35835i), min(u_input.a, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.ww ^ var_2.a.a, ~u_input.a.xy), _wgslsmith_div_u32(0u, ~45943u), ~4294967295u, 32179u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2514f, -597f, _wgslsmith_f_op_f32(f32(-1f) * -629f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1522f, 1100f, global2.b))) + vec3<f32>(var_5.a.b, _wgslsmith_div_f32(var_5.a.b, global2.b), var_2.b.x)), select(vec3<bool>(global0.x, true, true), !global0.wwz, !(!vec3<bool>(var_4, true, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.b.x, -2037f, 247f, 544f), vec4<f32>(var_5.b.x, global2.b, var_2.a.b, var_2.a.b)))))));
}

