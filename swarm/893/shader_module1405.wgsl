struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<bool, 17>;

var<private> global2: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1565f);
    global2 = ~(-1i) != _wgslsmith_clamp_i32(reverseBits(~global0.x) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(207u, 1u), vec2<u32>(40680u, 9272u)) << (_wgslsmith_div_u32(71018u, u_input.b) % 32u)) % 32u), ~arg_1.a.a, -global0.x);
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.c));
    let var_3 = Struct_5(vec3<i32>(global0.x, -14038i, var_1.a.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.c, -700f) + vec2<f32>(-477f, -808f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-474f, -768f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.c, -689f) + vec2<f32>(1332f, 340f))))), false)), select(arg_1.c | any(var_1.b.yxy), true, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.a.b.d.zx, vec2<i32>(var_1.a.a, global0.x)), arg_1.a.b.d.yz) < reverseBits(_wgslsmith_mult_i32(27240i, 32644i))));
    return vec3<i32>(~var_3.a.x, ~(-(~21836i)), countOneBits(var_3.a.x));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = true;
    global0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~func_3(select(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)], false), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(0u, 17u)], false), var_0), Struct_4(Struct_2(global0.x, Struct_1(1000f, global0.x, -1093f, vec3<i32>(1i, 2147483647i, -46286i))), vec4<bool>(var_0, global1[_wgslsmith_index_u32(u_input.a, 17u)], arg_0, false), true), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 17u)], var_0), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(74107u, 17u)]))), vec3<i32>(-14018i, global0.x >> ((0u << (u_input.b % 32u)) % 32u), global0.x)), vec3<i32>(-1i, global0.x, 8724i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1582f) * _wgslsmith_f_op_f32(max(1061f, -1021f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(782f))))), _wgslsmith_clamp_i32(min(-_wgslsmith_div_i32(global0.x, global0.x), max(global0.x, 2147483647i)), (~(-2147483647i) ^ global0.x) << ((u_input.b | u_input.a) % 32u), 20306i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, -870f))), vec3<i32>(~(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(-67418i, -2147483647i, -1i)) & _wgslsmith_mult_i32(global0.x, global0.x)), min(global0.x, _wgslsmith_add_i32(~global0.x, -global0.x)), -global0.x));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-866f - _wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(var_1.c * var_1.c))))));
    var var_3 = true;
    return ~_wgslsmith_mod_vec3_u32(vec3<u32>(14607u, u_input.a, _wgslsmith_clamp_u32(43518u, ~4294967295u, 6536u)), firstLeadingBit(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.a, 70132u, 4294967295u)))));
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec3_u32(func_2(!arg_0.x), firstTrailingBit(vec3<u32>(1u, 1u, 1u)) >> ((_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 0u, u_input.a), vec3<u32>(4294967295u, u_input.a, 36401u) << (vec3<u32>(u_input.a, 65220u, u_input.a) % vec3<u32>(32u))) ^ vec3<u32>(46587u, u_input.a, ~u_input.a)) % vec3<u32>(32u)));
    global2 = !(!(!(!arg_0.x)) && true);
    var var_1 = Struct_5(-abs(countOneBits(vec3<i32>(1i, -11844i, 0i))) << ((var_0 & max(_wgslsmith_mod_vec3_u32(var_0, vec3<u32>(var_0.x, u_input.b, u_input.a)), vec3<u32>(1u, u_input.b, 52821u))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_div_f32(825f, _wgslsmith_f_op_f32(968f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1224f)), _wgslsmith_f_op_f32(-917f + 886f))))), all(!select(!vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(var_0.x, 17u)], false, global1[_wgslsmith_index_u32(4305u, 17u)]), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 17u)], false), false)));
    global0 = var_1.a;
    var var_2 = var_0.x;
    return ~countOneBits(_wgslsmith_mod_vec4_u32(abs(firstTrailingBit(vec4<u32>(u_input.b, 19071u, 52842u, var_0.x))), min(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.x, 0u, var_0.x), vec4<u32>(1u, 44248u, u_input.a, u_input.a)), vec4<u32>(var_0.x, u_input.b, 1u, 41730u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(abs(50659u), u_input.a), arg_0.yw), arg_0.ww << (countOneBits(min(~arg_0.yx, ~arg_0.yx)) % vec2<u32>(32u)));
    global0 = select(vec3<i32>(arg_2.x, firstTrailingBit(~_wgslsmith_clamp_i32(2147483647i, arg_2.x, -24527i)), global0.x), -arg_2.xzw, !select(!arg_1.wzw, vec3<bool>(global0.x > global0.x, !arg_1.x, arg_1.x), arg_1.xxy));
    let var_1 = Struct_1(478f, _wgslsmith_dot_vec2_i32(arg_2.xz, abs(firstLeadingBit(vec2<i32>(arg_2.x, 58035i)) >> (~var_0 % vec2<u32>(32u)))), arg_3, -vec3<i32>(~0i, ~(0i << (var_0.x % 32u)), ~(-59662i) << (~arg_0.x % 32u)));
    let var_2 = Struct_5(_wgslsmith_sub_vec3_i32(firstTrailingBit(arg_2.zyy), _wgslsmith_div_vec3_i32(max(vec3<i32>(global0.x, 55214i, 2147483647i), ~arg_2.xyw), max(-vec3<i32>(arg_2.x, -1i, 2147483647i), var_1.d))), vec2<f32>(_wgslsmith_f_op_f32(max(-1090f, var_1.a)), var_1.c), all(select(arg_1, arg_1, select(select(arg_1, arg_1, vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], false, global1[_wgslsmith_index_u32(var_0.x, 17u)], true)), arg_1, arg_1))));
    let var_3 = arg_0;
    return Struct_2(firstTrailingBit(reverseBits(-1i)) & 30794i, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~firstLeadingBit(func_1(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 17u)]))), !vec4<bool>(global1[_wgslsmith_index_u32(~firstTrailingBit(0u), 17u)], u_input.b > reverseBits(u_input.b), global1[_wgslsmith_index_u32(~9345u, 17u)] | global1[_wgslsmith_index_u32(1u >> (u_input.a % 32u), 17u)], true | all(vec2<bool>(true, true))), abs(~(~firstTrailingBit(vec4<i32>(16739i, global0.x, 2147483647i, global0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1178f + 2062f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(958f)) * _wgslsmith_f_op_f32(ceil(935f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1359f + 1000f), -1804f)), true)), (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 24371u), 17u)] || false) | true)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.b.a);
    let var_2 = 50067u;
    let var_3 = Struct_2(select(-33596i, global0.x & 1i, all(!(!vec3<bool>(global1[_wgslsmith_index_u32(var_2, 17u)], global1[_wgslsmith_index_u32(var_2, 17u)], true)))), func_4(~vec4<u32>(51773u, u_input.b, ~u_input.a, ~0u), !(!vec4<bool>(global1[_wgslsmith_index_u32(866u, 17u)], true, global1[_wgslsmith_index_u32(24559u, 17u)], false)), abs(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, -3411i, global0.x, global0.x), vec4<i32>(2147483647i, -42804i, -46420i, 0i)))), var_0.b.c).b);
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-133f, _wgslsmith_f_op_f32(-var_3.b.c))));
    global1 = array<bool, 17>();
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a, ~(~51606u));
}

