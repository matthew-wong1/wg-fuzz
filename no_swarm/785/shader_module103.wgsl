struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<u32>, 32>;

var<private> global2: vec3<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = ~(~u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = abs(-countOneBits(reverseBits(~vec3<i32>(global0.x, 1i, 0i))));
    var_0 = u_input.a.x;
    return i32(-1i) * -((_wgslsmith_add_i32(global0.x, 0i) & -14520i) >> (~u_input.a.x % 32u));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_div_i32(func_3(), global0.x), arg_0, _wgslsmith_dot_vec2_i32(-min(vec2<i32>(18666i, -25114i), vec2<i32>(arg_1.x, -1i)), global0.zy), ~(i32(-1i) * -1i)));
    var var_1 = vec3<bool>(!any(!(!vec3<bool>(global2.x, false, true))), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(296f * 862f), _wgslsmith_f_op_f32(f32(-1f) * -1402f))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1795f)))), true);
    var var_2 = vec2<u32>(4294967295u, ~arg_2.x);
    global0 = vec3<i32>(-arg_0, 22126i, ~(-9581i));
    global1 = array<vec4<u32>, 32>();
    return var_0;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-270f)), -897f)), -_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 1i, arg_0.a.x) >> (vec3<u32>(103666u, u_input.a.x, 4294967295u) % vec3<u32>(32u)), min(arg_0.a.wyy, vec3<i32>(arg_0.a.x, 34914i, global0.x))) & vec3<i32>(1i, -37611i, global0.x));
}

fn func_1() -> bool {
    let var_0 = func_4(func_2(~12902i, (-vec4<i32>(global0.x, global0.x, 3589i, global0.x) & abs(vec4<i32>(2147483647i, global0.x, 15936i, 1i))) << (_wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 32u)], reverseBits(vec4<u32>(4294967295u, 14609u, 28434u, u_input.a.x))) % vec4<u32>(32u)), _wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a.x, u_input.a.x, 19857u), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), u_input.a)));
    var var_1 = Struct_2(var_0.a, ~var_0.b);
    global0 = vec3<i32>(var_1.b.x, i32(-1i) * -2147483647i, ~18445i);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(var_0.a - var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -848f)))));
    global1 = array<vec4<u32>, 32>();
    return any(!(!vec2<bool>(global2.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-3066f, 320f) - vec2<f32>(1000f, 292f)))))))));
    global1 = array<vec4<u32>, 32>();
    global2 = vec3<bool>(all(vec4<bool>(any(vec2<bool>(global2.x, global2.x)) == false, !(!global2.x), any(select(global2.xx, vec2<bool>(global2.x, false), false)), true)), select(all(global2.yz), false, func_1()), all(global2.xy));
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, global0.x, global0.x), ~vec3<i32>(global0.x, global0.x, global0.x)), global0.x, -func_2(_wgslsmith_mult_i32(global0.x, 1i), -vec4<i32>(global0.x, global0.x, -2147483647i, 1i), vec3<u32>(0u, 14244u, u_input.a.x)).a.x, _wgslsmith_mod_i32(global0.x, -(~61129i))));
    let var_2 = func_4(func_2(2147483647i, _wgslsmith_mod_vec4_i32(var_1.a >> (global1[_wgslsmith_index_u32(min(1u, 1u), 32u)] % vec4<u32>(32u)), var_1.a), u_input.a));
    let var_3 = u_input.a.x;
    var var_4 = !global2.zz;
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, var_2.a, var_2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1840f, -713f, var_0.x) * vec3<f32>(-1000f, var_2.a, var_2.a)))) * vec3<f32>(_wgslsmith_f_op_f32(-430f - var_2.a), _wgslsmith_f_op_f32(450f + var_2.a), -327f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(-268f + -105f)), _wgslsmith_f_op_f32(round(1f)), 1880f) - vec3<f32>(-1043f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -137f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_5.yy, vec2<f32>(2261f, var_5.x)))), _wgslsmith_f_op_vec2_f32(select(var_5.zz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-920f, -1303f), vec2<f32>(-1211f, var_0.x), global2.x)), !global2.zz))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), -149f, _wgslsmith_f_op_f32(ceil(-571f)), 1378f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_5.x, 1216f, var_5.x))))))))), 786f, var_3, (abs(var_2.b.x) | -2147483647i) << (~abs(~var_3) % 32u));
}

