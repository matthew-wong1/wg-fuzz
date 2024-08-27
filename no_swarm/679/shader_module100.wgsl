struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = all(vec3<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-701f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f + 1000f)), any(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-723f, 646f) - vec2<f32>(-921f, 893f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(190f, -805f), vec2<f32>(1131f, 1729f)))))));
    global0 = array<u32, 10>();
    var var_2 = ~global0[_wgslsmith_index_u32(~1u, 10u)];
    var var_3 = vec3<bool>(!all(vec2<bool>(true, true)), all(vec3<bool>(!any(vec4<bool>(false, true, false, true)), all(vec4<bool>(false, false, false, false)), var_1.x > _wgslsmith_f_op_f32(var_1.x + -429f))), false);
    return global0[_wgslsmith_index_u32(~0u, 10u)] | ~(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(23010u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)] ^ 71946u, 10u)]), 10u)]);
}

fn func_2(arg_0: Struct_5) -> f32 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(1000f - -1224f), vec4<i32>(u_input.a, 45864i, firstTrailingBit(-1i), arg_0.a), vec4<bool>(arg_0.b, any(!vec2<bool>(arg_0.b, arg_0.b)), any(vec3<bool>(true, false, true)), any(vec4<bool>(true, arg_0.b, true, false)))), Struct_1(all(vec3<bool>(all(vec4<bool>(arg_0.b, arg_0.b, true, true)), arg_0.a >= 0i, true)), 1u));
    global0 = array<u32, 10>();
    let var_1 = Struct_1(true, min(func_3(), ~_wgslsmith_div_u32(var_0.b.b, var_0.b.b)) | ~0u);
    let var_2 = !all(select(!vec3<bool>(false, var_0.a.c.x, true), vec3<bool>(var_0.a.b.x <= -27389i, arg_0.b, arg_0.b), true));
    global0 = array<u32, 10>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.a.a))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: f32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2.a, arg_2.a), _wgslsmith_f_op_f32(func_2(Struct_5(-27398i, arg_2.c.x))), arg_3, _wgslsmith_f_op_f32(arg_2.a * 1093f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, 380f, arg_3)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1407f, -1133f, -2341f, 782f) - vec4<f32>(-177f, arg_2.a, 1372f, arg_3))))));
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var var_1 = Struct_1(true, _wgslsmith_div_u32(~0u, 22228u) >> (~(arg_0.b << (~68562u % 32u)) % 32u));
    global0 = array<u32, 10>();
    return Struct_5(~2147483647i, arg_0.a | any(vec3<bool>(true, all(arg_2.c), var_1.a)));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    global0 = array<u32, 10>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-305f, -369f)))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(countOneBits(arg_0.a), ~1i), 0i), -(~(~2147483647i)), -57149i, ~arg_0.a << ((_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(37556u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76326u, 10u)], 10u)], global0[_wgslsmith_index_u32(0u, 10u)]) ^ global0[_wgslsmith_index_u32(countOneBits(91837u), 10u)]) % 32u)), vec4<bool>(arg_0.b, select(arg_0.b, any(!vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b)), !(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)] >= 52923u)), arg_0.b, all(select(select(vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, false), vec2<bool>(false, arg_0.b)), !vec2<bool>(false, arg_0.b), !vec2<bool>(true, arg_0.b)))));
    let var_1 = vec2<u32>(select(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_clamp_u32(80690u, 17287u, func_3())), global0[_wgslsmith_index_u32(~8407u, 10u)], all(select(!var_0.c.xy, !vec2<bool>(var_0.c.x, var_0.c.x), var_0.c.xz))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79978u, 10u)], 10u)]);
    let var_2 = var_0.c;
    var_0 = Struct_3(-829f, vec4<i32>(-(~(~var_0.b.x)), _wgslsmith_dot_vec3_i32(var_0.b.wwx, -_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, arg_0.a), vec3<i32>(38949i, var_0.b.x, var_0.b.x))), ~_wgslsmith_mult_i32(42249i, -1i), min(firstTrailingBit(u_input.a), ~var_0.b.x << (countOneBits(global0[_wgslsmith_index_u32(61649u, 10u)]) % 32u))), var_0.c);
    return Struct_2(Struct_1(1i > max(firstTrailingBit(arg_0.a), 1i), max(firstLeadingBit(48727u) ^ var_1.x, global0[_wgslsmith_index_u32(var_1.x, 10u)])), ~vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 4294967295u, global0[_wgslsmith_index_u32(5525u, 10u)], global0[_wgslsmith_index_u32(var_1.x, 10u)])), vec4<u32>(var_1.x, var_1.x, 0u, 4294967295u)), 10u)], var_1.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = func_4(Struct_5(_wgslsmith_mult_i32(~(~1i), -2147483647i), true));
    return _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(~(~29543u), ~0u, 1399u));
}

fn func_6(arg_0: u32) -> Struct_4 {
    let var_0 = global0[_wgslsmith_index_u32(~countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(arg_0, arg_0, 1u) >> (vec3<u32>(4294967295u, 0u, arg_0) % vec3<u32>(32u))) << (~vec3<u32>(28359u, 1u, arg_0) % vec3<u32>(32u)), countOneBits(firstLeadingBit(vec3<u32>(arg_0, 19700u, 31880u)))), 10u)]), 10u)];
    let var_1 = vec2<i32>(-1i, 1i);
    return Struct_4(Struct_3(-804f, -reverseBits(-vec4<i32>(1i, 18752i, -2147483647i, 1i)), !vec4<bool>(false, true, func_4(Struct_5(-20130i, true)).a.a, any(vec2<bool>(true, true)))), Struct_1(!(u_input.a < _wgslsmith_dot_vec2_i32(var_1, vec2<i32>(u_input.a, var_1.x))), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_0, 10u)], arg_0), 10u)], 1u) & 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, 57714i)), min(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))), func_4(func_1(Struct_1(false, global0[_wgslsmith_index_u32(1u, 10u)]), vec2<i32>(20456i, u_input.a), Struct_3(269f, vec4<i32>(u_input.a, 2147483647i, 0i, 2147483647i), vec4<bool>(true, true, false, true)), 113f)), min(vec2<u32>(1u, 34935u) >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(45214u, 10744u)), func_4(Struct_5(-19432i, true)).a) ^ 45317u);
    let var_1 = ~global0[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b, 5887u, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30113u, 10u)], 10u)]), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(11894u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.b, 10u)], 10u)], global0[_wgslsmith_index_u32(var_0.b.b, 10u)])) & _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 4817u)), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(8864u, 10u)]))) >> (50768u % 32u), 10u)];
    global0 = array<u32, 10>();
    var var_2 = !(!func_6(global0[_wgslsmith_index_u32(var_0.b.b, 10u)] >> (~global0[_wgslsmith_index_u32(var_0.b.b, 10u)] % 32u)).a.c.ywx);
    let var_3 = _wgslsmith_div_i32((_wgslsmith_sub_i32(0i, -14813i) >> (func_3() % 32u)) >> (~var_1 % 32u), func_6(var_1).a.b.x) ^ ~10462i;
    var var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(var_0.a.b.yz, -vec2<i32>(37833i, var_3)));
}

