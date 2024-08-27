struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: vec4<i32> = vec4<i32>(0i, 0i, 91633i, -19543i);

var<private> global3: f32;

var<private> global4: array<u32, 11> = array<u32, 11>(16486u, 66816u, 69670u, 0u, 1u, 5089u, 4294967295u, 1u, 153244u, 931u, 1u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> bool {
    var var_0 = Struct_4(1u, abs(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(-u_input.b, ~u_input.b), _wgslsmith_mod_vec4_i32(u_input.b, -vec4<i32>(u_input.c.x, arg_0, -20793i, arg_0)))), Struct_1(~_wgslsmith_sub_u32(abs(u_input.a.x), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(186f, -1230f, -2514f, -1165f), vec4<f32>(-1000f, 257f, -384f, 696f))))), u_input.b), vec4<i32>(-22017i, 30345i, -1i, u_input.b.x));
    var var_1 = vec2<u32>(countOneBits(2190u), u_input.a.x);
    global4 = array<u32, 11>();
    global1 = Struct_3(!(!(true | !global1.a)));
    global4 = array<u32, 11>();
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = Struct_2(vec3<bool>(global1.a, global1.a, true == func_3(0i >> (global4[_wgslsmith_index_u32(1u, 11u)] % 32u), select(vec3<bool>(true, false, false), vec3<bool>(global1.a, false, global1.a), vec3<bool>(true, global1.a, global1.a)))), Struct_1(~(~u_input.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1010f, -344f, _wgslsmith_f_op_f32(ceil(641f)), _wgslsmith_f_op_f32(696f - 2805f)), vec4<f32>(-412f, 1f, _wgslsmith_f_op_f32(floor(1470f)), _wgslsmith_div_f32(-1919f, -1605f))), select(u_input.b, min(u_input.b, vec4<i32>(global2.x, -1790i, arg_2, global2.x)), select(vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(false, global1.a, true, true), vec4<bool>(false, global1.a, global1.a, true))) & -u_input.b), -global2.zy, _wgslsmith_f_op_f32(max(733f, 464f)));
    var var_1 = firstTrailingBit(max(_wgslsmith_mult_vec3_i32(global2.zzw, vec3<i32>(firstTrailingBit(-2147483647i), u_input.b.x << (0u % 32u), _wgslsmith_mod_i32(arg_2, -2147483647i))), vec3<i32>(_wgslsmith_sub_i32(arg_2, _wgslsmith_mod_i32(7254i, 5309i)), -_wgslsmith_mult_i32(33403i, var_0.b.c.x), -2147483647i)));
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.b.x, 103f, var_0.d)))), vec3<f32>(1336f, _wgslsmith_f_op_f32(step(-601f, var_0.b.b.x)), -1065f))));
    global3 = _wgslsmith_f_op_f32(sign(193f));
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    global0 = select(global1.a, (!global1.a && global1.a) && all(select(vec3<bool>(global1.a, true, true), !vec3<bool>(false, global1.a, global1.a), false)), func_2(_wgslsmith_div_u32(4294967295u, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)] & (4294967295u << (arg_1.a % 32u))), ~(~u_input.a.yzz), global2.x, 4294967295u));
    let var_0 = firstTrailingBit(-_wgslsmith_dot_vec2_i32(min(u_input.c, global2.zx), _wgslsmith_div_vec2_i32(min(vec2<i32>(arg_1.d.x, arg_1.d.x), vec2<i32>(global2.x, -21702i)), vec2<i32>(2147483647i, arg_1.d.x) >> (u_input.a.ww % vec2<u32>(32u)))));
    global0 = (var_0 > 2147483647i) || global1.a;
    var var_1 = arg_2;
    var var_2 = arg_1;
    return Struct_2(select(vec3<bool>((arg_1.d.x | -57707i) > arg_1.c.c.x, global1.a, global1.a), vec3<bool>(true, false, any(vec2<bool>(false, global1.a))), global1.a), arg_1.c, vec2<i32>(-select(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), -36125i, func_2(4294967295u, u_input.a.xyw, -2147483647i, arg_0)), -(1i & u_input.b.x) >> (u_input.a.x % 32u)), 435f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (global1.a || true) | select(global1.a, false, global1.a);
    var var_1 = u_input.a.xwx;
    var var_2 = global2.x;
    var var_3 = func_1(~1u, Struct_4(u_input.a.x, _wgslsmith_mod_vec4_i32(~(-u_input.b), vec4<i32>(19774i, _wgslsmith_clamp_i32(1i, -48541i, 17526i), _wgslsmith_mod_i32(1i, 21887i), -u_input.b.x)), Struct_1(select(1u, global4[_wgslsmith_index_u32(0u, 11u)], !global1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(328f, -1061f, -795f, 2250f) + vec4<f32>(1000f, 458f, 608f, 429f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-233f, 653f, -1852f, -1000f), vec4<f32>(2033f, -808f, -1030f, 893f), global1.a))), abs(-vec4<i32>(2147483647i, 26196i, -2147483647i, global2.x))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, 6869i), firstTrailingBit(26250i), -4544i), ~vec4<i32>(-28064i, global2.x, -64471i, 2147483647i))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f), -741f)))));
    let var_4 = Struct_2(!var_3.a, Struct_1(var_1.x ^ (reverseBits(global4[_wgslsmith_index_u32(var_3.b.a, 11u)]) >> ((var_1.x ^ 176268u) % 32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, var_3.d, var_3.b.b.x, var_3.b.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, var_3.b.b.x, 780f, 1336f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.d, var_3.d, -527f, -1141f)))))), var_3.b.c), ~u_input.c, -1066f);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-189f, 853f)));
    global2 = var_4.b.c;
    var var_6 = var_3.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~4294967295u), ~reverseBits(1u), max(countOneBits(~var_4.b.a), ~(~u_input.a.x))), var_3.c, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.b.x, -806f, var_0))))), -245f), var_4.b.b.xyx, vec3<f32>(var_3.d, var_5, var_3.b.b.x));
}

