struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = u_input.c.x;
    var var_1 = abs(~u_input.c);
    global0 = 735f;
    var var_2 = Struct_2(var_1.x, Struct_1(0i), Struct_1(~1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x - -712f)))), vec3<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), -1421f, 311f));
    var var_3 = global1.x & !(global1.x && any(select(vec2<bool>(global1.x, false), vec2<bool>(true, false), global1.yy)));
    return ~(~(u_input.c >> (u_input.c % vec2<u32>(32u)))) ^ ~u_input.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec2<i32> {
    var var_0 = Struct_3(vec3<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-2147483647i, -41337i, u_input.b)), vec3<i32>(-52171i, 61354i, global2.a)), -global2.a, u_input.a), ~select(~vec2<u32>(u_input.c.x, 1u), abs(func_3(vec2<f32>(825f, 811f))), vec2<bool>(true, true)), ~countOneBits(1i) << (min(abs(u_input.c.x), _wgslsmith_sub_u32(u_input.c.x << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(19110u, arg_1.x, 5772u), vec3<u32>(43559u, arg_1.x, u_input.c.x)))) % 32u));
    global2 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.a, -var_0.a)));
    global2 = Struct_1(global2.a);
    let var_1 = Struct_5(Struct_1(firstLeadingBit(reverseBits(var_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1928f), !any(global1.yw));
    global1 = select(!select(vec4<bool>(!var_1.c, false, true, all(vec2<bool>(true, true))), vec4<bool>(any(vec2<bool>(arg_0.x, false)), true, arg_0.x, 63370i > u_input.a), var_1.b <= _wgslsmith_f_op_f32(ceil(431f))), vec4<bool>(!(!all(vec3<bool>(true, var_1.c, arg_0.x))), (_wgslsmith_f_op_f32(trunc(var_1.b)) <= _wgslsmith_f_op_f32(sign(327f))) | (var_1.c & (-26334i < var_1.a.a)), var_1.c, all(!vec2<bool>(global1.x, var_1.c))), select(any(!(!vec4<bool>(var_1.c, true, true, arg_0.x))), global1.x, true));
    return ~max(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_0.c), -vec2<i32>(0i, 2147483647i), vec2<i32>(var_1.a.a, global2.a) << (vec2<u32>(11009u, 1u) % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c, 0i), var_0.a.yx));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(func_2(global1.zx, vec2<u32>(u_input.c.x, 41548u)), (_wgslsmith_mod_vec2_i32(vec2<i32>(31359i, 1i), vec2<i32>(-22494i, u_input.a)) | (vec2<i32>(1i, global2.a) << (vec2<u32>(1750u, 3520u) % vec2<u32>(32u)))) ^ vec2<i32>(u_input.b & 16388i, global2.a)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f - -487f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1878f + 1000f), _wgslsmith_f_op_f32(min(-769f, -899f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1150f - _wgslsmith_f_op_f32(-294f + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1072f, -552f))))));
    var var_1 = Struct_5(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1542f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-181f, 615f, false)) - _wgslsmith_div_f32(-953f, -1458f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f + 1031f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f) + -480f))), true);
    return Struct_5(var_0, -973f, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -629f;
    let var_0 = func_1();
    global1 = vec4<bool>(true, any(!global1.yx), any(vec4<bool>(false, !global1.x, -1333f != var_0.b, global1.x)) || any(!(!vec4<bool>(var_0.c, false, var_0.c, var_0.c))), global1.x);
    let var_1 = Struct_3(vec3<i32>(-1i) * -vec3<i32>(func_1().a.a, 36071i, 1i), select(vec2<u32>(abs(4294967295u), 91491u), select(~vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_div_vec2_u32(vec2<u32>(14194u, u_input.c.x), u_input.c), vec2<bool>(false, global1.x)), global1.x) << (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -var_0.a.a, u_input.a) ^ select(select(vec3<i32>(global2.a, 1i, 1i), vec3<i32>(-2147483647i, -17446i, 1i), global1.xzx), vec3<i32>(u_input.b, global2.a, -579i), global1.yzy), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, var_0.a.a, -5168i), vec3<i32>(global2.a, -16591i, u_input.a) | vec3<i32>(global2.a, 13638i, global2.a)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.a, -2147483647i, var_0.a.a), -vec3<i32>(u_input.a, 0i, u_input.b)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(global2.a, var_0.a.a, var_0.a.a), vec3<i32>(global2.a, 6566i, u_input.a), false), firstLeadingBit(vec3<i32>(u_input.b, 2147483647i, 16467i))))));
    let var_2 = var_0.b;
    var var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.b.x, var_1.b.x, 71417u), min(~(~vec3<u32>(u_input.c.x, var_1.b.x, 44541u)), select(~vec3<u32>(4294967295u, u_input.c.x, 0u), abs(vec3<u32>(1u, 40823u, 4294967295u)), !global1.xwy))), ~0u, max(1u, reverseBits(1u)));
    global0 = 480f;
    global2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(35575i, 1i, -10790i)), select(vec3<i32>(var_1.c, global2.a, -10205i), var_1.a, all(vec3<bool>(var_0.c, global1.x, false))), var_1.a), vec3<i32>(select(~(-1i), global2.a, true), ~var_1.a.x | var_1.c, 44095i)), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-445f, _wgslsmith_f_op_f32(665f - 1236f), _wgslsmith_f_op_f32(select(var_2, var_2, true)))))), vec3<i32>(var_0.a.a, global2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(2147483647i), var_1.a.x), vec2<i32>(2147483647i, var_1.a.x >> (var_1.b.x % 32u)))), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(208f)), var_2) - vec2<f32>(330f, var_0.b))).x);
}

