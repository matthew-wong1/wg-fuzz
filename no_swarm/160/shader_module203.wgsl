struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 93996i;

var<private> global1: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: f32;

var<private> global3: array<vec4<bool>, 17>;

var<private> global4: array<f32, 5> = array<f32, 5>(330f, -844f, -1000f, 106f, -338f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec2<u32>(~arg_1.c, ~7416u);
    global4 = array<f32, 5>();
    var var_1 = global3[_wgslsmith_index_u32(var_0.x, 17u)];
    let var_2 = var_1.yw;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1453f + _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) - _wgslsmith_f_op_f32(select(-621f, arg_1.a.x, var_1.x))), var_1.x))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + 122f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3, global4[_wgslsmith_index_u32(4294967295u, 5u)])) * _wgslsmith_f_op_f32(f32(-1f) * -568f))), _wgslsmith_div_f32(var_3, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 1u, arg_0.c, arg_1.c), vec4<u32>(54515u, var_0.x, 37194u, 1u)), 5u)])), _wgslsmith_f_op_f32(-arg_1.a.x), -2147483647i, vec2<i32>(-10121i, _wgslsmith_div_i32(abs(i32(-1i) * -14625i), 50100i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_1(1f, 695f, arg_0.x, u_input.a.zy >> (arg_3.xy % vec2<u32>(32u)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1000f) - vec2<f32>(global4[_wgslsmith_index_u32(arg_1, 5u)], var_0.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-959f, global4[_wgslsmith_index_u32(1u, 5u)]))), vec2<bool>(arg_2, true))))), _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.a.x, -arg_0.x, -var_0.d.x, -var_0.d.x), ~u_input.a), _wgslsmith_add_u32(abs(arg_3.x), max(1u, arg_3.x & arg_1)), select(arg_0.xzw, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 27195i, 0i) | vec3<i32>(1i, arg_0.x, -2147483647i), reverseBits(vec3<i32>(-2147483647i, var_0.d.x, -6448i))), !arg_2), -(~_wgslsmith_sub_i32(31488i, 2147483647i))), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(arg_1, 5u)], -311f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(957f, global4[_wgslsmith_index_u32(0u, 5u)]) * vec2<f32>(-711f, var_0.b))))), ~_wgslsmith_mult_vec4_i32(max(u_input.a, vec4<i32>(-2147483647i, 1i, 0i, -12963i)), vec4<i32>(var_0.c, u_input.a.x, -40561i, 17974i)), ~15987u << (arg_3.x % 32u), u_input.a.yzw, _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(~arg_0.x, -22812i, _wgslsmith_mult_i32(0i, arg_0.x)), var_0.c)));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~var_1.b.c), _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1, var_1.b.c, arg_3.x, 4294967295u), vec4<u32>(0u, 1u, arg_1, var_1.b.c), vec4<bool>(false, arg_2, false, arg_2)), ~vec4<u32>(62165u, 1u, 1679u, 4294967295u)), ~(~0u)) | arg_3, vec3<u32>(39543u, arg_3.x, ~arg_1));
    global0 = -4429i;
    let var_3 = var_1.a;
    return vec3<bool>(false, arg_2, any(!vec3<bool>(arg_2, true, 2147483647i <= u_input.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: bool) -> vec4<f32> {
    global4 = array<f32, 5>();
    let var_0 = 1u;
    global3 = array<vec4<bool>, 17>();
    var var_1 = vec4<bool>(!all(func_3(vec4<i32>(0i, u_input.a.x, -1i, arg_0.c), _wgslsmith_add_u32(arg_2, var_0), true, ~vec3<u32>(21438u, 4294967295u, arg_2))), any(select(vec3<bool>(arg_3, false, arg_3), !vec3<bool>(true, arg_3, arg_3), all(global3[_wgslsmith_index_u32(var_0, 17u)]))), true, false);
    let var_2 = func_1(Struct_2(vec2<f32>(966f, arg_0.a), min(u_input.a, u_input.a), 4294967295u, firstTrailingBit(~u_input.a.xwz), func_1(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 979f) - vec2<f32>(382f, global4[_wgslsmith_index_u32(28011u, 5u)])), u_input.a, arg_2, arg_1 << (vec3<u32>(arg_2, arg_2, 10519u) % vec3<u32>(32u)), _wgslsmith_mod_i32(u_input.a.x, arg_1.x)), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(713f, -2371f) + vec2<f32>(1618f, global4[_wgslsmith_index_u32(arg_2, 5u)])), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-86582i, u_input.a.x, arg_0.d.x, -10290i)), 4294967295u, vec3<i32>(u_input.a.x, u_input.a.x, 3937i), -arg_0.c)).d.x), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(120f, -569f), -410f) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(abs(arg_0.a)))), u_input.a, ~(~(~23893u)), u_input.a.xyz, select(_wgslsmith_div_i32(arg_1.x, -1i), u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, var_0), vec3<u32>(4294967295u, arg_2, var_0)) % 32u), select(var_1.x, true, true))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-626f, -301f, -165f, arg_0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(9997u, 5u)], var_2.b, 158f, global4[_wgslsmith_index_u32(15687u, 5u)]) + vec4<f32>(-1416f, 1057f, 429f, arg_0.a)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b, 176f, -257f, -1648f)))))))), vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -823f))), 576f, -2512f)));
}

fn func_4(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xy + vec2<f32>(global4[_wgslsmith_index_u32(16942u, 5u)], 1118f)) + arg_0.yw))), vec4<i32>(u_input.a.x, ~(1i | u_input.a.x), -max(u_input.a.x, u_input.a.x), -2147483647i), _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 1u), ~4294967295u), ~_wgslsmith_mod_u32(78578u, 1u)), min(~u_input.a.xxw, u_input.a.zwy), i32(-1i) * -(u_input.a.x & -42004i)), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xw) + _wgslsmith_f_op_vec2_f32(trunc(arg_0.zw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -140f))))), _wgslsmith_div_vec4_i32(u_input.a, countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 14781i))), 1u, vec3<i32>(u_input.a.x, reverseBits(-1i), u_input.a.x), ~abs(u_input.a.x) << (~1u % 32u)));
    var var_1 = _wgslsmith_add_u32(~0u & _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), reverseBits(~vec4<u32>(58379u, 1u, 0u, 0u))), 67242u);
    global3 = array<vec4<bool>, 17>();
    let var_2 = Struct_2(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(57812u, 5u)]), -928f))), ~vec4<i32>(-abs(6966i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, var_0.c, 1i), u_input.a), firstLeadingBit(1i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.d.x, 2147483647i), ~var_0.d.x), u_input.a.x & _wgslsmith_sub_i32(u_input.a.x, var_0.c)), reverseBits(~_wgslsmith_div_u32(abs(0u), 1u)), min(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, 0i) << (min(4294967295u, 4294967295u) % 32u), _wgslsmith_mod_i32(var_0.c, var_0.c), _wgslsmith_clamp_i32(firstLeadingBit(2147483647i), abs(u_input.a.x), ~2147483647i)), _wgslsmith_mult_vec3_i32(~u_input.a.yzw, -_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.d.x, 1i, u_input.a.x), vec3<i32>(var_0.d.x, var_0.c, var_0.c)))), 21555i);
    global4 = array<f32, 5>();
    return Struct_3(var_2, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(35448u, 5u)], 152f, global4[_wgslsmith_index_u32(0u, 5u)], global4[_wgslsmith_index_u32(1u, 5u)]))), vec4<f32>(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(12966u, 5u)], global4[_wgslsmith_index_u32(94908u, 5u)])), -354f, _wgslsmith_f_op_f32(select(-1563f, global4[_wgslsmith_index_u32(4294967295u, 5u)], false)), 274f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(func_1(Struct_2(vec2<f32>(global4[_wgslsmith_index_u32(190u, 5u)], global4[_wgslsmith_index_u32(37999u, 5u)]), vec4<i32>(15874i, -23247i, u_input.a.x, var_0), 1u, u_input.a.xyy, -27639i), Struct_2(vec2<f32>(global4[_wgslsmith_index_u32(35180u, 5u)], 1256f), vec4<i32>(var_0, -40318i, var_0, var_0), 20278u, vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), 20661i)), _wgslsmith_sub_vec3_i32(u_input.a.yzz, vec3<i32>(-1i, 31888i, var_0)), 1u, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1512f, 731f, 1579f, 520f)) * _wgslsmith_f_op_vec4_f32(func_2(Struct_1(global4[_wgslsmith_index_u32(140092u, 5u)], -1000f, u_input.a.x, u_input.a.xx), vec3<i32>(6697i, -1i, -1i), 18433u, false))))));
    var var_2 = vec3<bool>(false, true, false);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), _wgslsmith_f_op_f32(-835f * global4[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(floor(897f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(25992u, 5u)])))));
    let var_4 = var_1.a;
    let var_5 = !var_2.yy;
    var var_6 = Struct_2(_wgslsmith_div_vec2_f32(var_4.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 5u)], _wgslsmith_f_op_f32(var_3.x * var_3.x))))), max(~var_1.b.b, ~_wgslsmith_div_vec4_i32(var_1.a.b, vec4<i32>(var_4.d.x, var_0, -50955i, var_4.d.x))), var_1.a.c, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, ~var_4.b.x, _wgslsmith_mod_i32(~var_1.b.b.x, 0i)), ~vec3<i32>(firstLeadingBit(u_input.a.x), 47607i, _wgslsmith_sub_i32(55015i, 32507i))), i32(-1i) * -28709i);
    let var_7 = select(_wgslsmith_div_vec2_u32(countOneBits(~vec2<u32>(43634u, var_6.c)), vec2<u32>(78378u, _wgslsmith_div_u32(var_1.a.c, _wgslsmith_add_u32(var_6.c, var_4.c)))), ~countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(25226u, var_4.c), vec2<u32>(4294967295u, var_6.c)) << (vec2<u32>(14177u, var_4.c) % vec2<u32>(32u))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(select(var_1.b.c, var_7.x, var_2.x), var_7.x | var_7.x, reverseBits(var_1.b.c))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a.x, 1000f, var_6.a.x, var_1.a.a.x) + var_3), _wgslsmith_f_op_vec4_f32(max(var_3, var_3)))))).a.b, _wgslsmith_f_op_vec4_f32(func_2(func_1(Struct_2(vec2<f32>(1000f, -189f), -var_4.b, ~1u, _wgslsmith_clamp_vec3_i32(var_6.d, var_1.b.b.xxx, vec3<i32>(0i, -13296i, var_0)), _wgslsmith_mod_i32(1i, -3409i)), var_1.b), max(vec3<i32>(var_0, -38661i | var_1.a.d.x, 84229i), ~(-vec3<i32>(var_6.d.x, var_1.b.d.x, var_6.b.x))), 4294967295u, ~firstLeadingBit(var_4.c) >= firstTrailingBit(_wgslsmith_add_u32(var_4.c, var_1.b.c)))).zyx, _wgslsmith_f_op_vec2_f32(-func_4(var_3).b.a), 10786i);
}

