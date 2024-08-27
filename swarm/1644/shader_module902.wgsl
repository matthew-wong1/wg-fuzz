struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(1i, false, vec2<bool>(true, true));

var<private> global2: array<Struct_2, 7>;

var<private> global3: vec2<f32> = vec2<f32>(-796f, -1473f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    let var_0 = ~vec4<u32>(~_wgslsmith_clamp_u32(arg_2.x, 1u, u_input.c), _wgslsmith_sub_u32(arg_2.x, _wgslsmith_clamp_u32(4294967295u, u_input.b, 21166u)), _wgslsmith_mod_u32(31131u << (u_input.b % 32u), ~arg_2.x), 50580u) ^ ~select(countOneBits(firstLeadingBit(arg_2)), _wgslsmith_div_vec4_u32(arg_2, ~arg_2), global1.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), -658f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))) + global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 1000f)), _wgslsmith_f_op_f32(-2484f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - 1f))));
    global2 = array<Struct_2, 7>();
    let var_2 = 211f;
    var var_3 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-322f)))));
    return u_input.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(func_3(vec3<f32>(136f, -327f, global3.x), arg_1.c.x, vec4<u32>(u_input.b, u_input.b, arg_2.b.x, arg_2.b.x)), ~4294967295u), func_3(vec3<f32>(global3.x, 1254f, global3.x), select(true, false, global0.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, 1u, 57419u, arg_0.x), vec4<u32>(arg_2.b.x, u_input.c, 0u, u_input.c))), ~countOneBits(1u), u_input.b), ~vec4<u32>(34732u, min(~arg_3, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0.x), vec3<u32>(arg_2.b.x, 38837u, arg_3))), ~62348u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.x, 18343u, 34381u), vec3<u32>(arg_3, arg_2.b.x, 31074u)), _wgslsmith_mod_vec3_u32(arg_2.b, vec3<u32>(arg_0.x, 0u, arg_0.x))))), 7u)];
    global3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-414f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-436f)) * global3.x)))));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xx >> (abs(vec2<u32>(arg_0.x, 12881u)) % vec2<u32>(32u)), select(~vec2<i32>(global1.a, -1i) | ~u_input.a.zw, _wgslsmith_div_vec2_i32(u_input.a.ww, _wgslsmith_mod_vec2_i32(u_input.a.wy, u_input.a.xz)), global1.c)), _wgslsmith_sub_i32(global1.a, -global0.a) & ~18910i, _wgslsmith_add_i32(global1.a, ~(-13396i)));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.yy, vec2<u32>(4294967295u, 25601u)), _wgslsmith_sub_u32(arg_2.b.x, u_input.c)) >> (arg_0.x % 32u)), firstTrailingBit(_wgslsmith_mult_u32(~arg_3, ~5509u))), 7u)];
    let var_2 = Struct_2(~(-(_wgslsmith_sub_i32(-2147483647i, global1.a) | -65351i)), var_0.b & (false | arg_1.c.x), select(vec2<bool>(all(vec2<bool>(false, var_0.c.x)), select(!arg_1.c.x, true, true)), !(!global0.c), select(vec2<bool>(true, any(vec4<bool>(true, true, var_0.b, true))), global1.c, any(vec3<bool>(arg_1.b, true, arg_1.c.x)))));
    return Struct_2(-8268i, global1.b, global0.c);
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = arg_0;
    let var_0 = _wgslsmith_mult_u32(u_input.b, select(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 1u, u_input.b, u_input.b) << (vec4<u32>(18324u, u_input.b, u_input.c, u_input.c) % vec4<u32>(32u))), reverseBits(vec4<u32>(u_input.b, 25650u, u_input.b, u_input.b))), u_input.b, true));
    var var_1 = func_2(firstLeadingBit(~(~(vec3<u32>(u_input.b, 4294967295u, 0u) & vec3<u32>(50616u, var_0, 0u)))), arg_0, Struct_1(-2147483647i, ~vec3<u32>(u_input.b, abs(u_input.c), var_0)), ~firstLeadingBit(1u));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-414f, global3.x, global3.x, global3.x) - vec4<f32>(global3.x, 1205f, 304f, global3.x)))) * vec4<f32>(_wgslsmith_f_op_f32(min(global3.x, global3.x)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-271f - -638f), _wgslsmith_f_op_f32(abs(global3.x))))));
    global0 = Struct_2(~46916i, func_2(max(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 26195u), vec3<u32>(4179u, var_0, 42528u))), countOneBits(~vec3<u32>(73252u, u_input.c, 62561u))), Struct_2(-(~global0.a), any(!arg_0.c), vec2<bool>(select(true, global0.c.x, var_1.c.x), var_1.b == true)), Struct_1(0i, vec3<u32>(4294967295u, _wgslsmith_sub_u32(var_0, 3295u), min(var_0, 42631u))), 21680u).b, arg_0.c);
    return _wgslsmith_mod_u32(57205u, firstLeadingBit(u_input.b));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(0i, _wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, 9230u, u_input.b), vec3<u32>(1u, ~arg_0, arg_0 << (u_input.c % 32u)), global1.c.x), _wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(1u, 1u, 20149u)), firstTrailingBit(~vec3<u32>(0u, 4294967295u, u_input.c)))));
    let var_1 = Struct_1(_wgslsmith_mult_i32(0i, -_wgslsmith_clamp_i32(-23896i, u_input.a.x, -2147483647i)) | ~(-1i), var_0.b);
    var var_2 = arg_1;
    global1 = Struct_2(_wgslsmith_mod_i32(global0.a, global1.a), true, vec2<bool>(any(vec2<bool>(false, global1.b)) || global1.c.x, !(max(5095i, var_0.a) > -1i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1875f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-679f)) + global3.x), arg_1));
    return var_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(arg_0.b, global2[_wgslsmith_index_u32(func_4(select(~70311u, 42288u, false), 1000f, abs(arg_0.b.x)).b.x, 7u)], arg_0, _wgslsmith_add_u32(reverseBits(min(u_input.c, 0u)), ~u_input.c) ^ ~4294967295u);
    global1 = var_0;
    var var_1 = global3.x;
    var var_2 = select(!vec3<bool>(true, any(select(vec4<bool>(true, false, true, global1.b), vec4<bool>(false, var_0.b, true, global0.b), var_0.b)), !global0.c.x), select(select(vec3<bool>(any(global1.c), select(global0.c.x, false, global1.c.x), false), !select(vec3<bool>(false, false, true), vec3<bool>(true, global1.c.x, true), vec3<bool>(global1.c.x, false, true)), global0.c.x), !(!(!vec3<bool>(false, true, var_0.c.x))), any(vec2<bool>(global0.c.x, true))), true);
    let var_3 = Struct_2(~(arg_0.a << (u_input.c % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-240f)), -222f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.x, global3.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1343f)) - global3.x)), vec2<bool>(!(!any(vec3<bool>(var_2.x, global0.b, global1.c.x))), true & any(vec4<bool>(var_0.c.x, false, var_0.b, true))));
    return func_4(countOneBits(reverseBits(max(50357u, 1u))), -1361f, _wgslsmith_clamp_u32(arg_0.b.x, 1u, arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mod_i32(0i, global1.a), !global1.c.x, !(!(!global1.c)));
    var var_1 = func_5(func_4(24822u & ~func_1(Struct_2(2147483647i, global1.c.x, vec2<bool>(global1.c.x, global1.b))), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(select(-117f, global3.x, true))), global3.x), u_input.c));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a.zzy, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -1i), -1i, _wgslsmith_sub_i32(u_input.a.x, global0.a)), _wgslsmith_add_vec3_i32(-u_input.a.xww, _wgslsmith_sub_vec3_i32(u_input.a.wyx, vec3<i32>(198i, 1i, var_1.a))))), abs(global1.a));
    var var_3 = u_input.a;
    global2 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~func_4(66769u, 377f, _wgslsmith_dot_vec2_u32(var_1.b.zx, vec2<u32>(var_1.b.x, u_input.b))).b.x, reverseBits(_wgslsmith_sub_u32(var_1.b.x, 36574u)) ^ 20229u));
}

