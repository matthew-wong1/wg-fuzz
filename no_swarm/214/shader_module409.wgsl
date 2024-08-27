struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec4<f32> {
    let var_0 = abs(~(~(~arg_0.x)));
    var var_1 = Struct_2(min(firstTrailingBit(abs(max(arg_0.wyz, vec3<u32>(4294967295u, 0u, u_input.a)))), reverseBits(select(arg_0.wzz, arg_0.xwz, global0.x)) ^ ~arg_0.xzx), min(arg_0.zwz, vec3<u32>(~var_0, arg_0.x, 1u)), abs(arg_0.x), !(!vec4<bool>(all(global1[_wgslsmith_index_u32(var_0, 18u)]), global0.x | global0.x, true, global0.x)));
    let var_2 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-123f - 1900f), arg_1, _wgslsmith_f_op_f32(select(-601f, _wgslsmith_f_op_f32(abs(-273f)), all(!select(global0.yx, vec2<bool>(true, var_1.d.x), global0.x)))));
    let var_3 = 64332u;
    var var_4 = Struct_1(select(!select(select(vec2<bool>(global0.x, true), var_1.d.ww, global0.x), !var_1.d.xw, global0.x), !select(vec2<bool>(true, true), vec2<bool>(false, false), var_1.d.xx), (global0.x | all(vec3<bool>(var_1.d.x, true, true))) | var_1.d.x), countOneBits(~(~(~var_1.b.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(select(var_2.x, 1288f, ((1i >> (0u % 32u)) ^ ~u_input.d.x) == (5518i ^ u_input.e.x))), _wgslsmith_f_op_f32(-var_2.x), -637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: vec4<u32>) -> vec2<bool> {
    global0 = !vec3<bool>(true, true, select(!any(global0.yz), any(select(vec2<bool>(arg_2.a.x, false), global0.xy, vec2<bool>(arg_2.a.x, arg_2.a.x))), arg_2.a.x));
    let var_0 = arg_2.a;
    var var_1 = -reverseBits(5217i);
    var var_2 = -917f;
    let var_3 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + 720f))), -432f, _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true)));
    return !vec2<bool>(global0.x & !global0.x, true);
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_1(func_4(firstTrailingBit(vec2<u32>(arg_0, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 16286u, 0u, 70578u), vec4<u32>(1u, 51636u, u_input.c.x, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1442f)))), Struct_5(select(vec2<bool>(true, true), vec2<bool>(true, false), global0.x)), max(~vec4<u32>(u_input.c.x, arg_0, u_input.c.x, arg_0), ~vec4<u32>(arg_0, 1u, 33149u, 1u)) >> (~abs(vec4<u32>(1u, 177388u, arg_0, 31280u)) % vec4<u32>(32u))), select(_wgslsmith_mod_u32(0u << (0u % 32u), 11863u), 1u ^ ~u_input.c.x, select(!global0.x, !global0.x, -1i < u_input.d.x)) ^ select(~u_input.a, abs(~0u), true));
    var var_1 = u_input.e.x;
    let var_2 = abs(8352i);
    let var_3 = !var_0.a.x;
    var var_4 = vec3<bool>(true, true, select(!(!var_3), var_0.a.x, select(true, select(var_0.a.x && true, false, true && var_3), any(global0.xz))));
    return Struct_3(~vec4<u32>(4294967295u, firstLeadingBit(countOneBits(39228u)), _wgslsmith_dot_vec2_u32(~u_input.c, countOneBits(u_input.c)), 41165u), vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(5218i, 27749i)), -141i, ~_wgslsmith_div_i32(~1i, u_input.b), -1i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, firstTrailingBit(u_input.a)), (vec3<u32>(var_0.b, 89004u, arg_0) >> (vec3<u32>(66271u, u_input.c.x, 9328u) % vec3<u32>(32u))) & ~vec3<u32>(0u, var_0.b, u_input.a)), ~vec3<u32>(u_input.a, ~u_input.c.x, ~u_input.c.x), ~33056u, vec4<bool>(~u_input.a >= ~var_0.b, all(vec4<bool>(false, global0.x, false, true)) & (1u > u_input.a), any(vec3<bool>(var_3, var_4.x, var_4.x)) && (false == var_0.a.x), true)), max(_wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_2, 0i, u_input.e.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2, u_input.e.x, 57120i, 0i), vec4<i32>(3794i, var_2, u_input.e.x, u_input.b))), -_wgslsmith_mod_i32(1i, -1i)), u_input.e.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_5) -> vec2<bool> {
    global1 = array<vec3<bool>, 18>();
    global1 = array<vec3<bool>, 18>();
    global1 = array<vec3<bool>, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_0.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - _wgslsmith_f_op_f32(f32(-1f) * -946f)))));
    let var_1 = Struct_4(arg_0.d.d.x);
    return arg_0.d.d.zx;
}

fn func_6(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = vec4<u32>(~4294967295u, 34674u, _wgslsmith_mult_u32(firstLeadingBit(func_2(70627u).a.x), 4294967295u), firstTrailingBit(u_input.a));
    let var_1 = u_input.d.yy;
    let var_2 = abs(u_input.b);
    let var_3 = global0.x;
    global1 = array<vec3<bool>, 18>();
    return Struct_1(!global0.yy, 1u & _wgslsmith_div_u32(var_0.x, abs(_wgslsmith_div_u32(13718u, arg_0))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: i32) -> f32 {
    var var_0 = func_6(u_input.c.x, func_5(func_2(u_input.c.x), ~min(vec4<u32>(u_input.a, 38364u, u_input.c.x, u_input.a), vec4<u32>(0u, 84164u, 0u, 4294967295u)) >> (~vec4<u32>(u_input.a, 11458u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), ~(~u_input.c), Struct_5(!(!global0.xx))), arg_0);
    global1 = array<vec3<bool>, 18>();
    let var_1 = func_5(func_2(66998u), firstLeadingBit(~vec4<u32>(var_0.b, u_input.a, 3513u, u_input.a)) & (~(~vec4<u32>(u_input.a, 74180u, var_0.b, var_0.b)) | firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, 10649u, 1u, 0u), vec4<u32>(u_input.c.x, 22489u, var_0.b, u_input.a), vec4<u32>(40483u, 0u, 5694u, var_0.b)))), vec2<u32>(13725u, ~var_0.b), arg_1);
    let var_2 = _wgslsmith_sub_u32(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_0.b, u_input.c.x), vec3<u32>(var_0.b, u_input.a, var_0.b)) & 153135u) | var_0.b;
    global0 = vec3<bool>(var_0.a.x || global0.x, 1062f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1731f + _wgslsmith_f_op_f32(sign(415f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -630f)), _wgslsmith_f_op_f32(f32(-1f) * -516f)))), !(~3649u >= func_2(u_input.c.x).d.c) == true);
    return -322f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1806f, _wgslsmith_div_f32(-2458f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-692f)) - -531f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f) * _wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.b, 2292i), Struct_5(vec2<bool>(global0.x, true)), u_input.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2632f))), _wgslsmith_f_op_f32(min(1118f, 1773f))));
    let var_1 = u_input.c;
    global0 = vec3<bool>(true, global0.x, global0.x);
    let var_2 = func_2(~var_1.x).d;
    let var_3 = ~firstLeadingBit(var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(407f, vec2<i32>(_wgslsmith_add_i32(u_input.e.x & 9303i, -u_input.e.x), firstLeadingBit(-68188i)) >> (firstTrailingBit(~var_2.b.xy >> (firstTrailingBit(var_1) % vec2<u32>(32u))) % vec2<u32>(32u)), -abs(i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(1u), 4294967295u), ~abs(4294967295u), firstTrailingBit(~45718u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 36405u, 90981u), vec3<u32>(var_3, 31220u, 22386u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f - -1068f)))).x);
}

