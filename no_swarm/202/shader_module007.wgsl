struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: i32;

var<private> global2: Struct_3;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-801f)), -645f)));
    let var_1 = select(firstLeadingBit(vec4<i32>(~(~global2.b), _wgslsmith_mult_i32(1i << (u_input.a % 32u), _wgslsmith_mult_i32(global2.b, -41145i)), global2.b, global2.b)), abs(vec4<i32>(1i, firstTrailingBit(-4582i), -30976i, u_input.b) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.b.x, u_input.a, global2.a.b.x, 4294967295u), vec4<u32>(1u, global2.a.a.x, 38477u, u_input.a)) % vec4<u32>(32u))), vec4<bool>(any(select(vec4<bool>(global2.a.c.x, false, global2.a.c.x, true), !vec4<bool>(true, global2.a.c.x, false, false), !vec4<bool>(global2.a.c.x, global2.a.c.x, true, false))), var_0.x >= _wgslsmith_f_op_f32(var_0.x - var_0.x), global2.a.c.x, global2.a.c.x));
    var var_2 = Struct_3(global2.a, ~_wgslsmith_div_i32(_wgslsmith_add_i32(1i, -2147483647i), 11658i));
    global2 = Struct_3(var_2.a, _wgslsmith_add_i32(-3903i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global2.b, _wgslsmith_mult_i32(65377i, u_input.b)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(var_1.yzw, vec3<i32>(0i, -24111i, global2.b)), var_1.zwy, var_1.xyx))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1176f, var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1452f, var_0.x)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-643f, var_0.x), vec2<f32>(var_0.x, var_0.x), vec2<bool>(true, var_2.a.c.x)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-3291f, _wgslsmith_f_op_f32(239f - -186f)) + vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), 1992f)))));
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(max(_wgslsmith_div_u32(var_2.a.a.x, ~u_input.a), countOneBits(u_input.a | 4294967295u)), global2.a.b.x), ~_wgslsmith_mod_u32(var_2.a.a.x, abs(_wgslsmith_mod_u32(global2.a.a.x, 0u))));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_3(global2.a, 0i);
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_4(abs(vec3<u32>(1u, ~abs(1u), 21126u)), !vec4<bool>(var_0.a.c.x, true, false, all(!vec3<bool>(var_0.a.c.x, true, true))), ~(func_3() | var_0.a.b.x), Struct_3(Struct_2(vec3<u32>(max(u_input.a, 0u), 1u, firstLeadingBit(0u)), vec3<u32>(_wgslsmith_sub_u32(global2.a.b.x, u_input.a), 4794u, u_input.a), !select(vec2<bool>(var_0.a.c.x, false), vec2<bool>(false, var_0.a.c.x), global2.a.c.x)), i32(-1i) * -_wgslsmith_div_i32(var_0.b, 11915i)));
    global2 = Struct_3(global2.a, _wgslsmith_dot_vec3_i32(~arg_0, ~vec3<i32>(-74704i, -1i, u_input.b) & vec3<i32>(abs(-2147483647i), _wgslsmith_mult_i32(u_input.b, 2147483647i), global2.b << (4294967295u % 32u))));
    return _wgslsmith_div_f32(2597f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-743f)))) + 337f), 422f));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1189f - 507f)))) + _wgslsmith_f_op_f32(func_2(~vec3<i32>(u_input.b, u_input.b, global2.b))))));
    global2 = Struct_3(global2.a, min(_wgslsmith_mult_i32(~u_input.b & 1i, countOneBits(-global2.b)), abs(_wgslsmith_mult_i32(global2.b, u_input.b) >> (global2.a.a.x % 32u))));
    global1 = -2147483647i;
    global2 = Struct_3(global2.a, -1i);
    global2 = Struct_3(global2.a, global2.b);
    return 32646u;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(~arg_3.a.a, !vec4<bool>(global2.a.c.x, any(vec2<bool>(false, arg_3.a.c.x)), arg_3.a.c.x, false), arg_0.b.x, Struct_3(arg_0, _wgslsmith_dot_vec3_i32(countOneBits(firstLeadingBit(vec3<i32>(1214i, 11056i, global2.b))), ~abs(vec3<i32>(-1i, 2147483647i, arg_3.b)))));
    var var_1 = Struct_4(~arg_2.zzw, select(!vec4<bool>(any(vec4<bool>(true, true, var_0.b.x, arg_1.x)), !arg_3.a.c.x, any(vec4<bool>(arg_3.a.c.x, false, true, arg_0.c.x)), any(vec4<bool>(arg_1.x, var_0.d.a.c.x, false, true))), !select(select(var_0.b, var_0.b, var_0.b), select(var_0.b, arg_1, var_0.d.a.c.x), var_0.b), all(arg_1.zxy) || (all(var_0.b) == true)), firstLeadingBit(5526u), Struct_3(Struct_2(min(~vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.a, arg_2.x, 0u)), _wgslsmith_div_vec3_u32(select(vec3<u32>(var_0.c, 6021u, arg_0.b.x), vec3<u32>(u_input.a, 0u, arg_0.a.x), false), ~vec3<u32>(arg_2.x, 0u, 23947u)), !select(arg_1.xx, vec2<bool>(false, false), vec2<bool>(arg_0.c.x, true))), abs(1i)));
    let var_2 = reverseBits(~0i);
    global2 = var_1.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-410f + _wgslsmith_f_op_f32(-1428f + 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(global2.b, -34658i, 1i), vec3<i32>(-8632i, arg_3.b, arg_3.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(504f)) - _wgslsmith_f_op_f32(-876f * 728f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1986f, 1937f, -761f)))))));
    return Struct_3(Struct_2(arg_3.a.a, ~max(abs(vec3<u32>(4294967295u, var_1.a.x, 13006u)), select(vec3<u32>(arg_3.a.b.x, u_input.a, arg_0.b.x), vec3<u32>(var_0.d.a.a.x, global2.a.b.x, arg_0.b.x), vec3<bool>(var_0.b.x, false, var_0.d.a.c.x))), vec2<bool>(all(global2.a.c), arg_0.c.x)), 21198i);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = vec3<i32>(u_input.b, -1i, min(global2.b, firstLeadingBit(-2427i)));
    var var_1 = func_4(func_4(func_4(func_4(Struct_2(vec3<u32>(12289u, 0u, 1u), vec3<u32>(global2.a.b.x, 38747u, 0u), vec2<bool>(global2.a.c.x, false)), select(vec4<bool>(true, false, false, global2.a.c.x), vec4<bool>(false, true, true, arg_0.a.c.x), true), vec4<u32>(global2.a.a.x, u_input.a, global2.a.b.x, arg_0.a.a.x), arg_0).a, select(!vec4<bool>(arg_0.a.c.x, global2.a.c.x, global2.a.c.x, false), vec4<bool>(arg_0.a.c.x, global2.a.c.x, arg_0.a.c.x, false), select(vec4<bool>(global2.a.c.x, arg_0.a.c.x, true, global2.a.c.x), vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, false, arg_0.a.c.x))), ~vec4<u32>(0u, arg_0.a.b.x, 4294967295u, 89853u), Struct_3(func_4(arg_0.a, vec4<bool>(false, true, global2.a.c.x, false), vec4<u32>(40357u, 4294967295u, 9580u, 4294967295u), arg_0).a, -arg_0.b)).a, select(vec4<bool>(global2.a.c.x, false, any(vec2<bool>(true, global2.a.c.x)), !global2.a.c.x), vec4<bool>(!global2.a.c.x, arg_0.a.c.x, true, select(true, true, arg_0.a.c.x)), false), firstLeadingBit(vec4<u32>(global2.a.a.x, ~0u, ~global2.a.a.x, u_input.a)), arg_0).a, select(!(!(!vec4<bool>(global2.a.c.x, true, false, arg_0.a.c.x))), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a.c.x, global2.a.c.x, true, false), vec4<bool>(false, arg_0.a.c.x, global2.a.c.x, global2.a.c.x)), !vec4<bool>(false, arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x), any(vec4<bool>(arg_0.a.c.x, true, false, global2.a.c.x))), !select(!vec4<bool>(false, false, global2.a.c.x, global2.a.c.x), select(vec4<bool>(true, arg_0.a.c.x, global2.a.c.x, true), vec4<bool>(false, false, false, false), arg_0.a.c.x), !vec4<bool>(true, arg_0.a.c.x, true, arg_0.a.c.x))), vec4<u32>(~u_input.a, ~_wgslsmith_add_u32(~0u, ~arg_0.a.a.x), arg_0.a.a.x, 30510u), func_4(func_4(arg_0.a, !(!vec4<bool>(global2.a.c.x, global2.a.c.x, false, global2.a.c.x)), vec4<u32>(min(u_input.a, u_input.a), ~global2.a.b.x, global2.a.a.x, ~global2.a.b.x), arg_0).a, !vec4<bool>(true, true, !arg_0.a.c.x, true), ~((vec4<u32>(0u, 12178u, 39490u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, arg_0.a.b.x, arg_0.a.b.x) % vec4<u32>(32u))) << ((vec4<u32>(4294967295u, global2.a.b.x, global2.a.a.x, 38026u) | vec4<u32>(u_input.a, u_input.a, global2.a.b.x, arg_0.a.b.x)) % vec4<u32>(32u))), arg_0));
    var var_2 = Struct_4(arg_0.a.b, select(vec4<bool>(true && !arg_0.a.c.x, (arg_0.b > arg_2.x) != global2.a.c.x, false, false), !vec4<bool>(all(vec3<bool>(var_1.a.c.x, false, false)), arg_0.a.c.x && var_1.a.c.x, arg_0.a.c.x, global2.a.a.x >= global2.a.b.x), select(!select(vec4<bool>(global2.a.c.x, global2.a.c.x, false, false), vec4<bool>(true, arg_0.a.c.x, var_1.a.c.x, true), vec4<bool>(true, var_1.a.c.x, true, true)), vec4<bool>(true, !var_1.a.c.x, var_1.a.c.x, u_input.b == arg_1), select(select(vec4<bool>(false, arg_0.a.c.x, var_1.a.c.x, true), vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, false, true), vec4<bool>(false, true, var_1.a.c.x, arg_0.a.c.x)), !vec4<bool>(false, global2.a.c.x, true, true), select(vec4<bool>(global2.a.c.x, false, true, true), vec4<bool>(global2.a.c.x, true, true, true), true)))), select(firstLeadingBit(~var_1.a.b.x), arg_0.a.b.x ^ 97442u, global2.a.c.x), func_4(Struct_2(global2.a.b, _wgslsmith_clamp_vec3_u32(~arg_0.a.a, reverseBits(var_1.a.a), ~vec3<u32>(101115u, 1u, 6891u)), vec2<bool>(global2.a.c.x || var_1.a.c.x, global2.a.c.x)), !vec4<bool>(true, var_1.a.c.x, true, any(vec4<bool>(var_1.a.c.x, false, var_1.a.c.x, true))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global2.a.b.x, global2.a.b.x, arg_0.a.b.x), vec4<u32>(global2.a.a.x, 0u, u_input.a, var_1.a.a.x))), func_4(func_4(Struct_2(vec3<u32>(global2.a.a.x, var_1.a.b.x, 37911u), var_1.a.a, var_1.a.c), vec4<bool>(true, true, false, var_1.a.c.x), max(vec4<u32>(22284u, u_input.a, 0u, global2.a.b.x), vec4<u32>(8408u, global2.a.a.x, global2.a.b.x, arg_0.a.b.x)), func_4(Struct_2(arg_0.a.b, vec3<u32>(u_input.a, arg_0.a.b.x, var_1.a.b.x), vec2<bool>(arg_0.a.c.x, global2.a.c.x)), vec4<bool>(true, arg_0.a.c.x, false, var_1.a.c.x), vec4<u32>(u_input.a, 4294967295u, arg_0.a.a.x, arg_0.a.b.x), Struct_3(Struct_2(vec3<u32>(1703u, var_1.a.a.x, 12293u), vec3<u32>(83893u, 1u, var_1.a.b.x), arg_0.a.c), var_0.x))).a, !vec4<bool>(false, global2.a.c.x, false, arg_0.a.c.x), vec4<u32>(var_1.a.b.x, u_input.a | u_input.a, ~arg_0.a.a.x, _wgslsmith_add_u32(430u, 23724u)), func_4(func_4(Struct_2(global2.a.b, global2.a.a, global2.a.c), vec4<bool>(true, global2.a.c.x, var_1.a.c.x, var_1.a.c.x), vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, 12033u, 58900u), Struct_3(Struct_2(vec3<u32>(global2.a.a.x, 102267u, 24894u), arg_0.a.a, vec2<bool>(false, global2.a.c.x)), 0i)).a, vec4<bool>(true, true, true, true), vec4<u32>(u_input.a, arg_0.a.b.x, arg_0.a.a.x, 50931u) | vec4<u32>(10682u, 31825u, 64282u, 79582u), arg_0))));
    let var_3 = firstTrailingBit(max(~(~firstLeadingBit(vec4<u32>(75297u, u_input.a, 14292u, global2.a.b.x))), vec4<u32>(~func_3(), 21219u, _wgslsmith_add_u32(~global2.a.b.x, abs(22952u)), _wgslsmith_dot_vec4_u32(vec4<u32>(58958u, global2.a.b.x, 36336u, 1u), vec4<u32>(u_input.a, var_2.a.x, arg_0.a.b.x, 0u)) >> (select(var_1.a.a.x, 3421u, var_1.a.c.x) % 32u))));
    global2 = func_4(Struct_2(var_3.xxz, ~arg_0.a.a, func_4(var_2.d.a, vec4<bool>(true, false, false | arg_0.a.c.x, arg_0.a.c.x | false), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, global2.a.a.x, 1u, 45584u)), ~var_3), var_2.d).a.c), vec4<bool>(false, var_2.b.x, !(any(var_2.b.zxz) && var_2.d.a.c.x), true), var_3, Struct_3(var_2.d.a, 0i));
    return Struct_3(func_4(global2.a, vec4<bool>(false, arg_0.a.c.x, !global2.a.c.x, all(var_2.b)), firstLeadingBit(vec4<u32>(min(1u, 1u), 88770u >> (global2.a.b.x % 32u), 4294967295u, _wgslsmith_sub_u32(var_3.x, var_2.d.a.a.x))), arg_0).a, -37552i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    var var_0 = func_5(func_4(Struct_2(global2.a.b, vec3<u32>(func_1(), global2.a.b.x, ~global2.a.a.x), global2.a.c), vec4<bool>(true, false, any(vec3<bool>(true, true, true)), -1i >= u_input.b), ~select(vec4<u32>(1u, u_input.a, u_input.a, global2.a.a.x) & vec4<u32>(4294967295u, 1u, global2.a.b.x, 1u), ~vec4<u32>(global2.a.b.x, 31313u, 19381u, 0u), vec4<bool>(global2.a.c.x, false, true, global2.a.c.x)), Struct_3(global2.a, _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global2.b, u_input.b, -1i), vec4<i32>(global2.b, -74197i, global2.b, global2.b))))), ~(_wgslsmith_mod_i32(0i, -global2.b) >> (max(countOneBits(8147u), _wgslsmith_mod_u32(u_input.a, 4294967295u)) % 32u)), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, 12700i, 53777i), -vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), abs(vec4<i32>(0i, 31358i, global2.b, global2.b)))) & _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(1i, u_input.b, global2.b, global2.b), vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.b)), vec4<i32>(global2.b, 2847i, u_input.b, u_input.b)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-6462i, global2.b, 32604i, u_input.b), vec4<i32>(global2.b, -2147483647i, 23189i, global2.b)))));
    var var_1 = global0[_wgslsmith_index_u32(~(~func_3()), 6u)];
    let var_2 = Struct_3(var_0.a, 0i);
    var var_3 = ~4294967295u;
    var var_4 = countOneBits(min(select(_wgslsmith_div_vec2_u32(~var_2.a.b.zz, vec2<u32>(1u, var_0.a.b.x)), ~var_2.a.a.zz, func_5(Struct_3(var_2.a, 2147483647i), var_2.b ^ var_2.b, select(vec4<i32>(u_input.b, var_1.a, global2.b, -2147483647i), vec4<i32>(-2147483647i, var_2.b, 1i, 2147483647i), false)).a.c), ~(~func_4(var_2.a, vec4<bool>(true, var_0.a.c.x, true, var_0.a.c.x), vec4<u32>(var_2.a.a.x, 0u, 1u, var_0.a.b.x), var_2).a.a.xx)));
    var var_5 = var_2.b < var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<i32>(countOneBits(firstTrailingBit(var_0.b) >> (~4294967295u % 32u)), u_input.b, 8812i, ~global2.b));
}

