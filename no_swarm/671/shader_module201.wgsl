struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1684i;

var<private> global1: Struct_1;

var<private> global2: array<Struct_4, 1>;

var<private> global3: vec3<f32> = vec3<f32>(786f, -675f, -248f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    global2 = array<Struct_4, 1>();
    var var_0 = global3.x;
    global2 = array<Struct_4, 1>();
    let var_1 = Struct_2(arg_2, arg_0);
    let var_2 = arg_0;
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> i32 {
    var var_0 = true;
    let var_1 = arg_1.a.a.b;
    var var_2 = var_1;
    let var_3 = var_2.b.x;
    var var_4 = _wgslsmith_dot_vec2_i32(u_input.a & _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(16038i), 8406i), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(31443i, 24132i))), _wgslsmith_div_vec2_i32(u_input.a, u_input.a));
    return select(_wgslsmith_mod_i32(~(-26931i), ~_wgslsmith_mod_i32(1i, ~36880i)), -firstLeadingBit(_wgslsmith_dot_vec2_i32(select(u_input.a, u_input.a, true), firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)))), false);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32) -> Struct_4 {
    global0 = -(_wgslsmith_mult_i32(-35923i, _wgslsmith_add_i32(-1i, 34678i)) ^ -(~u_input.a.x)) | (func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), global2[_wgslsmith_index_u32(arg_0.b.a, 1u)], func_3(Struct_1(1u, vec3<bool>(global1.b.x, false, false), false), -vec3<i32>(u_input.a.x, -25920i, 48356i), arg_0.a, countOneBits(1i))) | -16i);
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1399f, _wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global3.x, global3.x)), vec3<f32>(global3.x, global3.x, global3.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-182f, 1222f, -231f) + vec3<f32>(global3.x, global3.x, global3.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-265f, global3.x, 1522f), vec3<f32>(global3.x, 1569f, 2082f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1121f, global3.x, -157f))))));
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global1.a, arg_0.b.a, 18826u, 87580u), ~vec4<u32>(arg_0.a.a, 0u, 1u, global1.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 92280u, global1.a, arg_0.a.a), vec4<u32>(0u, 58538u, 4632u, 1u)) ^ select(vec4<u32>(u_input.b, 1u, 0u, 0u), vec4<u32>(arg_0.b.a, 1u, arg_0.a.a, global1.a), true)), ~1u);
    var var_2 = arg_0.a;
    let var_3 = vec4<f32>(-145f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, global3.x))), _wgslsmith_f_op_f32(min(287f, var_0.x)));
    return global2[_wgslsmith_index_u32(arg_2, 1u)];
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = func_2(func_2(arg_0.a.a, vec3<i32>(_wgslsmith_sub_i32(-u_input.a.x, 45501i), -(u_input.a.x ^ u_input.a.x), -45520i), arg_0.b.x).a.a, select(select(-vec3<i32>(-7672i, u_input.a.x, u_input.a.x), ~(vec3<i32>(u_input.a.x, -65431i, u_input.a.x) << (arg_0.b % vec3<u32>(32u))), vec3<bool>(all(vec4<bool>(false, arg_0.a.d, global1.c, false)), all(arg_0.a.a.b.b.xy), arg_1)), min(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), arg_1), -vec3<i32>(-1i, 0i, u_input.a.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, 0i, -7361i), vec3<i32>(-23357i, u_input.a.x, -1i))), any(arg_0.a.c.b)), 33569u).a.a;
    var var_1 = _wgslsmith_div_u32(~func_2(arg_0.a.a, firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (arg_0.b % vec3<u32>(32u)), ~(~19596u)).a.c.a, _wgslsmith_dot_vec4_u32(min(vec4<u32>(func_3(Struct_1(global1.a, var_0.b.b, var_0.b.c), vec3<i32>(u_input.a.x, u_input.a.x, 0i), Struct_1(0u, arg_0.a.c.b, true), -2147483647i), global1.a, 0u, 23136u), ~(vec4<u32>(u_input.b, u_input.b, 81799u, arg_0.b.x) ^ vec4<u32>(arg_0.b.x, arg_0.a.c.a, 1u, 3755u))), vec4<u32>(firstTrailingBit(var_0.b.a), ~u_input.b, var_0.a.a, firstTrailingBit(u_input.b) & 0u)));
    var var_2 = var_0.a;
    var var_3 = func_2(arg_0.a.a, abs(-vec3<i32>(-u_input.a.x, 6771i, -28210i)), 34799u).a;
    var var_4 = Struct_3(var_3.a, all(vec2<bool>(true, var_3.c.b.x)), Struct_1(_wgslsmith_mult_u32(~(~global1.a), ~(~2861u)), vec3<bool>(arg_2 >= _wgslsmith_f_op_f32(global3.x + arg_0.c.x), arg_0.a.d, !any(vec4<bool>(false, var_3.c.c, var_2.c, arg_0.a.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-765f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1168f)))), any(select(vec3<bool>(false, func_2(Struct_2(var_3.c, arg_0.a.a.a), vec3<i32>(u_input.a.x, u_input.a.x, 7746i), 10215u).a.c.b.x, var_3.a.b.c), !vec3<bool>(true, arg_0.a.c.c, var_3.c.b.x), vec3<bool>(arg_0.a.d, false, true))));
    return 457f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1124f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1198f)), global3.x)) - global3.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<i32>, arg_3: i32) -> bool {
    global2 = array<Struct_4, 1>();
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 + global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global3.x)), -1487f)) * -352f), arg_1));
    var var_0 = Struct_2(Struct_1(4294967295u, vec3<bool>(global1.c, true | (arg_3 != 24766i), false), func_5(func_2(Struct_2(Struct_1(arg_0.x, vec3<bool>(global1.b.x, global1.c, global1.c), global1.c), Struct_1(0u, vec3<bool>(true, global1.c, true), global1.c)), firstTrailingBit(vec3<i32>(arg_3, 2147483647i, arg_3)), global1.a), any(global1.b.zx), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(582f * -1070f))))), Struct_1(16418u, select(!vec3<bool>(true, global1.b.x, true), vec3<bool>(true, arg_0.x == arg_0.x, all(vec3<bool>(global1.c, global1.c, global1.b.x))), select(!vec3<bool>(global1.c, true, false), vec3<bool>(false, false, global1.c), -230f <= arg_1)), (abs(arg_3) ^ _wgslsmith_div_i32(arg_3, 2147483647i)) <= ~(-12520i ^ arg_3)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1, arg_1)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1, -304f)), _wgslsmith_f_op_f32(-arg_1))), func_2(func_2(Struct_2(var_0.b, Struct_1(var_0.a.a, global1.b, global1.c)), vec3<i32>(arg_2.x, arg_2.x, 1i), var_0.b.a).a.a, abs(vec3<i32>(u_input.a.x, 34157i, arg_2.x)), 18447u).c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, -1223f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(721f, arg_1, -1132f, arg_1))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, arg_1, -221f, arg_1), vec4<f32>(1676f, 1563f, global3.x, -164f), vec4<bool>(global1.c, false, false, false)))))));
    global0 = _wgslsmith_dot_vec2_i32(arg_2, reverseBits(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -20037i) << (vec2<u32>(32440u, arg_0.x) % vec2<u32>(32u)), max(arg_2, u_input.a)), _wgslsmith_div_vec2_i32(u_input.a, min(vec2<i32>(0i, 1i), arg_2)))));
    return global1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(246f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x))))));
    var var_1 = vec4<bool>(global1.b.x, false, func_1(vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1741f)))), reverseBits(~u_input.a), abs(_wgslsmith_sub_i32(u_input.a.x, 2147483647i) | 18376i)), global1.b.x);
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(~(min(global1.a, u_input.b) << (~64028u % 32u)), global1.a), ~global1.a, ~(~global1.a) & 0u, 0u);
    var var_3 = true;
    var_2 = ~vec4<u32>(var_2.x, _wgslsmith_mod_u32(~0u, u_input.b) | var_2.x, reverseBits(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_2.x, var_2.x, u_input.b)), abs(var_2.ywy))), ~1u);
    var_3 = !var_1.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.xx - vec2<f32>(233f, 852f)), _wgslsmith_f_op_vec2_f32(-var_0.xx)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.yx))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -1351f), vec2<f32>(894f, 1052f))) - _wgslsmith_f_op_vec2_f32(global3.zx * global3.xy)))), _wgslsmith_f_op_vec2_f32(select(global3.zy, _wgslsmith_f_op_vec2_f32(-func_2(Struct_2(Struct_1(var_2.x, global1.b, false), Struct_1(39941u, vec3<bool>(true, var_1.x, true), global1.b.x)), min(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i)), reverseBits(41451u)).c.yx), func_2(Struct_2(func_2(Struct_2(Struct_1(u_input.b, vec3<bool>(false, true, var_1.x), var_1.x), Struct_1(0u, vec3<bool>(true, true, global1.b.x), true)), vec3<i32>(44965i, u_input.a.x, -9282i), var_2.x).a.c, Struct_1(29142u, global1.b, var_1.x)), vec3<i32>(16463i, -19581i, countOneBits(u_input.a.x)), _wgslsmith_div_u32(~global1.a, global1.a)).a.c.b.xy)), true));
    var_1 = !(!(!select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(false, false, var_1.x, global1.c), vec4<bool>(true, var_1.x, var_1.x, true), false), false)));
    var var_5 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(276f + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.x)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-210f, 431f, global3.x, -110f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -1072f, var_4.x, 720f) + vec4<f32>(var_4.x, global3.x, var_0.x, 1783f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-962f, 1526f, -727f, 1000f), vec4<f32>(global3.x, -1133f, var_0.x, global3.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(1911f, 1018f, var_0.x, var_0.x), vec4<f32>(438f, global3.x, var_4.x, -3248f))), !vec4<bool>(global1.c, true, var_1.x, global1.c))), vec4<f32>(var_4.x, global3.x, -926f, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.zwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_4.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x + var_0.x), var_5.x))))), countOneBits(vec2<i32>(-2147483647i >> (abs(u_input.b) % 32u), _wgslsmith_div_i32(2147483647i ^ u_input.a.x, 2147483647i))), u_input.a.x ^ u_input.a.x, global3.x);
}

