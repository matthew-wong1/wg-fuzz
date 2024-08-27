struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: bool = true;

var<private> global2: i32 = -1i;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(2147483647i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(62966i), Struct_1(51771i), Struct_1(-4415i), Struct_1(2147483647i));

var<private> global4: array<Struct_4, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<u32>(9208u, ~0u ^ u_input.a, ~abs(max(1u, 110032u)), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(abs(1f));
    let var_2 = vec2<i32>(14702i, firstLeadingBit(i32(-1i) * -u_input.c));
    let var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 23369i, ~(-u_input.b)), arg_0.yyz), select(var_2.x, -arg_0.x | -arg_0.x, ~arg_1.a != -arg_1.a) ^ 16728i);
    global1 = true;
    return var_0.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_1 {
    global2 = _wgslsmith_dot_vec3_i32((vec3<i32>(firstLeadingBit(-32995i), -2147483647i, -2147483647i) << (~_wgslsmith_add_vec3_u32(vec3<u32>(15459u, arg_0.x, 1u), arg_0) % vec3<u32>(32u))) >> (arg_0 % vec3<u32>(32u)), -vec3<i32>(19216i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0.x, func_3(vec4<i32>(u_input.c, 1i, u_input.b, global0[_wgslsmith_index_u32(31985u, 17u)]), Struct_1(1i))), 17u)], -u_input.b));
    let var_0 = u_input.a;
    global0 = array<i32, 17>();
    var var_1 = Struct_2(~vec3<i32>(i32(-1i) * -48976i, countOneBits(1i), -14910i));
    global4 = array<Struct_4, 5>();
    return global3[_wgslsmith_index_u32(firstLeadingBit(select(_wgslsmith_add_u32(~arg_0.x, ~_wgslsmith_dot_vec2_u32(arg_0.zy, vec2<u32>(u_input.a, arg_0.x))), 0u, true)), 8u)];
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_5 {
    let var_0 = Struct_3(all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(false, true, false))));
    global4 = array<Struct_4, 5>();
    global2 = 25455i;
    let var_1 = arg_2;
    let var_2 = select(true, _wgslsmith_div_i32(~0i, ~(~global0[_wgslsmith_index_u32(arg_0, 17u)])) >= u_input.b, true);
    return Struct_5(arg_1.x, global0[_wgslsmith_index_u32(~0u, 17u)], vec4<i32>(-4365i, global0[_wgslsmith_index_u32(~1u, 17u)], _wgslsmith_add_i32(50495i, -2147483647i), 18270i), var_1.a, max(_wgslsmith_div_i32(_wgslsmith_mod_i32(-48036i, global0[_wgslsmith_index_u32(4294967295u, 17u)]), 2147483647i >> (u_input.a % 32u)) << (arg_0 % 32u), -52663i));
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, u_input.a) | abs(vec2<u32>(1u, 1u) | vec2<u32>(0u, u_input.a)), abs(~select(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, u_input.a), false)));
    let var_1 = vec4<bool>(any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, true)), true, false);
    global3 = array<Struct_1, 8>();
    global0 = array<i32, 17>();
    global2 = u_input.b;
    return Struct_3(!(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a, 17u)], -2147483647i, 2147483647i) >= ~firstLeadingBit(u_input.c)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4, arg_2: i32) -> vec4<f32> {
    let var_0 = reverseBits(u_input.a);
    global3 = array<Struct_1, 8>();
    global4 = array<Struct_4, 5>();
    let var_1 = func_5(func_4(0u, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.b.x - 1233f))), 1904f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a)))), func_2(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 119220u, var_0), vec3<u32>(4400u, 4294967295u, u_input.a)), !(!vec3<bool>(false, false, arg_1.a)))));
    global2 = -1i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(-125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)) - arg_0.a), -532f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.x, arg_0.a, 440f, -660f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, -386f, -261f, arg_0.a)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(arg_0.a - arg_1.b.x), arg_0.a, _wgslsmith_f_op_f32(arg_1.b.x - 735f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(-718f, _wgslsmith_f_op_f32(-879f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-597f, -1152f, true))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1241f) - _wgslsmith_f_op_f32(-398f * 1628f)))) + -304f), _wgslsmith_f_op_f32(step(1830f, _wgslsmith_f_op_f32(-1002f * _wgslsmith_f_op_f32(f32(-1f) * -793f)))));
    global3 = array<Struct_1, 8>();
    global2 = global0[_wgslsmith_index_u32(73218u, 17u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_5(-2021f, global0[_wgslsmith_index_u32(32506u, 17u)], vec4<i32>(31021i, 52827i, -12927i, u_input.b) << (vec4<u32>(u_input.a, 0u, u_input.a, 26581u) % vec4<u32>(32u)), u_input.c, global0[_wgslsmith_index_u32(u_input.a, 17u)]), global4[_wgslsmith_index_u32(~0u ^ u_input.a, 5u)], u_input.c))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 792f, 211f, 1498f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -102f, 696f, -2745f) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), any(vec4<bool>(false, false, true, false)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(192f, var_0.x, 1874f, 265f) + vec4<f32>(2172f, var_0.x, var_0.x, var_0.x))))))));
    var var_2 = func_4(~u_input.a, vec4<f32>(_wgslsmith_f_op_f32(314f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec4_f32(func_1(Struct_5(_wgslsmith_f_op_f32(var_0.x * 1000f), _wgslsmith_mult_i32(1i, u_input.c), -vec4<i32>(74818i, -1i, -2147483647i, u_input.b), countOneBits(1261i), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(37800u, 17u)], u_input.c)), Struct_4(any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(974f, -2226f, var_0.x))), _wgslsmith_dot_vec2_i32(min(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], 1i), vec2<i32>(u_input.c, 2147483647i)), vec2<i32>(u_input.c, 3211i) ^ vec2<i32>(global0[_wgslsmith_index_u32(14759u, 17u)], global0[_wgslsmith_index_u32(64586u, 17u)])))).x, _wgslsmith_f_op_f32(trunc(-607f))), global3[_wgslsmith_index_u32(1u, 8u)]);
    var var_3 = abs(vec4<u32>(abs(33186u), _wgslsmith_clamp_u32(countOneBits(reverseBits(u_input.a)), 0u, u_input.a), _wgslsmith_div_u32(~(~u_input.a), u_input.a), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), max(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, u_input.a, 4294967295u))), vec4<u32>(u_input.a, abs(u_input.a), 2569u, 14337u >> (u_input.a % 32u)))));
    global0 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a, reverseBits(firstTrailingBit(4655u)), ~var_3.x, 0u), _wgslsmith_mod_u32(~u_input.a, u_input.a), ~(~var_3.x & 79678u));
}

