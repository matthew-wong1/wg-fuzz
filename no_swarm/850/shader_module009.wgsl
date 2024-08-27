struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(50238i, -1i, -50796i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(0u, 25u)], Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -11750i, u_input.a), vec3<i32>(global2.a.x, u_input.c.x, 13573i))), Struct_1(abs(u_input.c.yyz))));
    var var_1 = arg_0.x == arg_0.x;
    let var_2 = Struct_2(Struct_1(vec3<i32>(abs(~u_input.c.x), -_wgslsmith_sub_i32(global2.a.x, 10693i), 20735i >> (~u_input.b.x % 32u))), global0[_wgslsmith_index_u32(~arg_0.x, 25u)], Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(3554i, -12652i), _wgslsmith_dot_vec2_i32(global2.a.zy, var_0.a.b.a.yy), firstLeadingBit(global2.a.x)), vec3<i32>(~(-39891i), -var_0.a.b.a.x, _wgslsmith_sub_i32(39977i, var_0.a.b.a.x)))));
    let var_3 = !(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1717f) + vec4<f32>(-433f, -548f, 321f, 427f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-614f, arg_1.x, -2005f, 1755f))))) * vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(f32(-1f) * -191f), arg_1.x)))));
    return var_3;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_4) -> f32 {
    let var_0 = firstLeadingBit(-u_input.c.yxy);
    let var_1 = (vec3<i32>(1i, arg_2.a.c.a.x, i32(-1i) * -2147483647i) << (max(u_input.b.zyx, vec3<u32>(19941u, u_input.b.x, 4294967295u)) % vec3<u32>(32u))) ^ arg_2.a.a.a;
    let var_2 = max(u_input.c.zww, _wgslsmith_div_vec3_i32(countOneBits(countOneBits(~vec3<i32>(global2.a.x, -2147483647i, -6223i))), arg_2.a.a.a));
    var var_3 = Struct_4(Struct_2(Struct_1(-vec3<i32>(u_input.e, 0i, global2.a.x) | var_2), arg_2.a.b, global0[_wgslsmith_index_u32(~62969u & _wgslsmith_clamp_u32(max(u_input.d.x, u_input.d.x), 1u, _wgslsmith_sub_u32(35043u, arg_2.c.x)), 25u)]), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(true, arg_1.x, arg_1.x, false)), select(vec4<u32>(u_input.d.x, u_input.b.x, 1u, arg_2.c.x), u_input.b, vec4<bool>(arg_0.x, arg_0.x, arg_1.x, arg_0.x))), _wgslsmith_dot_vec2_u32(~arg_2.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(10297u, 1u), arg_2.c, arg_2.c)))), ~_wgslsmith_mod_vec2_u32(~countOneBits(arg_2.c), vec2<u32>(abs(arg_2.c.x), reverseBits(1u))));
    let var_4 = !(arg_1.x && ((var_3.a.b.a.x ^ ~var_3.a.a.a.x) >= -1i));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(1126f + 1568f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -938f));
}

fn func_2() -> u32 {
    var var_0 = select(!vec2<bool>(false, any(vec4<bool>(false, false, true, true))), vec2<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)))), !(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), func_3(vec4<u32>(u_input.d.x, 33447u, 2733u, 4294967295u), vec2<f32>(1000f, 102f)), Struct_4(Struct_2(Struct_1(vec3<i32>(u_input.c.x, 202i, u_input.e)), global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), 27735u, vec2<u32>(u_input.d.x, 0u)))) >= 1f));
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, u_input.c), vec4<i32>(u_input.c.x, 18702i, 1i, 43891i)), abs(u_input.c) ^ u_input.c);
    var var_2 = u_input.c.yz;
    let var_3 = _wgslsmith_clamp_u32(u_input.d.x & ~u_input.b.x, 1u, 53784u) ^ _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), ~vec2<u32>(u_input.d.x, 0u), !vec2<bool>(var_0.x, false)), (_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(0u, u_input.d.x)) >> ((u_input.b.yy & u_input.d) % vec2<u32>(32u))) | ((u_input.b.zy << (u_input.b.wx % vec2<u32>(32u))) >> (abs(u_input.d) % vec2<u32>(32u))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-833f * -1215f)))))) - _wgslsmith_f_op_f32(trunc(-399f)));
    return 29584u;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = vec3<u32>(u_input.b.x, u_input.b.x >> (4294967295u % 32u), 32377u) >> (vec3<u32>(1u, func_2(), u_input.d.x) % vec3<u32>(32u));
    var var_1 = !select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, select(true, false, false), all(vec4<bool>(false, true, false, false))), !(var_0.x > u_input.b.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, arg_0.x == arg_0.x), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, true, false), 2147483647i <= global2.a.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, false, false), true)));
    var var_2 = 16566u;
    var var_3 = ~u_input.b << (u_input.b % vec4<u32>(32u));
    var var_4 = vec4<bool>(false, any(var_1.yxx), any(select(!vec3<bool>(false, var_1.x, var_1.x), !var_1.xww, func_3(max(vec4<u32>(0u, var_0.x, 4294967295u, 39278u), u_input.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, arg_0.x)))))), !all(select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(false, true, var_1.x, var_1.x), !vec4<bool>(var_1.x, false, var_1.x, false))));
    return abs(-_wgslsmith_mod_i32(global2.a.x, -countOneBits(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.d.x, firstLeadingBit(u_input.b.x << (u_input.b.x % 32u)));
    let var_1 = ~(-vec3<i32>(select(global2.a.x, func_1(vec2<f32>(360f, -150f)), true), _wgslsmith_dot_vec3_i32(-global2.a, firstTrailingBit(vec3<i32>(u_input.a, global2.a.x, 27924i))), ~(-21831i)));
    global0 = array<Struct_1, 25>();
    let var_2 = Struct_3(Struct_2(Struct_1(u_input.c.xzx), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~16023u, 1u), 25u)], Struct_1(var_1)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(389f - -885f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-196f)) - -2149f), _wgslsmith_f_op_f32(-448f - -1057f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, false, true), vec3<bool>(false, false, false), Struct_4(Struct_2(Struct_1(vec3<i32>(u_input.a, 0i, var_1.x)), global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)]), var_0.x, var_0))) + 385f)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f + -167f) * -1000f), 1f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1270f, 712f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(422f, -1634f, 979f, 1925f) - vec4<f32>(-932f, -751f, 380f, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1167f, 779f, -222f, -1000f), vec4<f32>(-120f, 601f, -1321f, 513f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, 964f, -552f, -2045f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_div_f32(2314f, -579f), _wgslsmith_div_f32(1000f, -167f), _wgslsmith_f_op_f32(floor(-1111f)))))));
    let var_4 = Struct_3(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(countOneBits(global2.a.x), firstTrailingBit(-64278i) ^ countOneBits(18352i), -21811i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + -1726f));
}

