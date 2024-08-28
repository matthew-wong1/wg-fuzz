struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<u32>) -> u32 {
    return u_input.b.x;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 7>();
    let var_0 = 1u;
    var var_1 = vec2<bool>(any(vec2<bool>(all(vec4<bool>(false, false, false, arg_0.a)), all(select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(false, arg_0.a, false), arg_0.a)))), any(vec3<bool>(max(arg_0.b.x, var_0) >= ~u_input.b.x, any(vec2<bool>(arg_0.a, true)) || select(arg_0.a, arg_0.a, arg_0.a), arg_0.a)));
    var_1 = select(vec2<bool>(true, (_wgslsmith_f_op_f32(floor(1455f)) == _wgslsmith_f_op_f32(arg_0.c * 340f)) & true), vec2<bool>(true, true), !vec2<bool>(arg_0.a, max(u_input.a, 26286i) >= ~(-22708i)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-411f * _wgslsmith_f_op_f32(trunc(1962f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))))))) - -705f);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-1039f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - -1112f)))) > _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x) & 100849u, 7u)])), any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, any(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)))));
    let var_1 = (vec4<u32>(arg_2, ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), reverseBits(1u | arg_2), reverseBits(abs(0u))) << (vec4<u32>(arg_2, _wgslsmith_sub_u32(~1781u, 56711u), 1u, firstTrailingBit(~arg_2)) % vec4<u32>(32u))) << ((~(~(~vec4<u32>(4294967295u, 0u, arg_2, 42894u))) | _wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(17459u, 128591u, arg_2, arg_2)), vec4<u32>(u_input.b.x >> (4294967295u % 32u), u_input.b.x, 1u, arg_2))) % vec4<u32>(32u));
    var var_2 = firstTrailingBit(~_wgslsmith_sub_vec2_u32(var_1.zy, _wgslsmith_add_vec2_u32(select(u_input.b.xz, u_input.b.xz, vec2<bool>(true, true)), ~var_1.zw)));
    var_0 = vec3<bool>(!var_0.x, false, all(!vec2<bool>(!var_0.x, all(vec4<bool>(true, var_0.x, false, false)))));
    var_0 = select(vec3<bool>(!var_0.x, var_0.x, true), select(vec3<bool>(true, (52205i << (0u % 32u)) <= reverseBits(arg_3.x), all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x)))), !(!(!vec3<bool>(var_0.x, var_0.x, false))), false), true);
    return global0[_wgslsmith_index_u32(4294967295u, 7u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = (_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(0u, reverseBits(1u))) >> (26168u % 32u)) & u_input.b.x;
    global1 = _wgslsmith_f_op_f32(trunc(-228f));
    var var_1 = vec3<bool>(any(select(vec3<bool>(any(vec2<bool>(false, arg_0.a)), u_input.a > 2147483647i, u_input.a <= u_input.a), !vec3<bool>(arg_2.a, false, false), arg_2.a)), all(select(select(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), select(vec4<bool>(arg_2.a, arg_0.a, true, arg_2.a), vec4<bool>(true, arg_0.a, false, true), arg_0.a), !arg_0.a), !select(vec4<bool>(false, true, arg_0.a, arg_2.a), vec4<bool>(true, arg_0.a, arg_0.a, false), arg_2.a), any(select(vec2<bool>(false, arg_0.a), vec2<bool>(false, false), vec2<bool>(false, arg_0.a))))), ~_wgslsmith_mult_i32(u_input.a << (arg_0.b.x % 32u), -11536i) <= -2147483647i);
    let var_2 = Struct_1(!(!(_wgslsmith_f_op_f32(f32(-1f) * -410f) <= arg_2.c)), vec4<u32>(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c, arg_2.c, arg_2.c))), ~u_input.a, ~1u, ~(~vec3<i32>(u_input.a, u_input.a, u_input.a))).b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 91344u, arg_0.b.x, 4294967295u) << (arg_0.b % vec4<u32>(32u)), vec4<u32>(arg_2.b.x, u_input.b.x, arg_0.b.x, u_input.b.x)) | ~arg_2.b.x, _wgslsmith_mult_u32(u_input.b.x, arg_2.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, arg_2.b.x), ~abs(arg_2.b.zy))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -1208f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.c))))), arg_0.c, arg_2.a)));
    var var_3 = vec2<f32>(arg_2.c, -1394f);
    return !(!(!vec4<bool>(arg_1 < 0u, 1257f <= var_2.c, var_2.c == -652f, 2137f >= var_3.x)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> i32 {
    var var_0 = Struct_1(arg_1.x, (vec4<u32>(4294967295u, 1u, 1u, 0u) | (~vec4<u32>(arg_0.x, 12442u, arg_0.x, 4294967295u) >> (~vec4<u32>(1u, 4294967295u, u_input.b.x, 17528u) % vec4<u32>(32u)))) << ((vec4<u32>(42192u, arg_0.x, abs(arg_0.x), u_input.b.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 10385u, u_input.b.x, u_input.b.x), vec4<u32>(arg_0.x, u_input.b.x, u_input.b.x, 1u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2341f, arg_2.x, 1835f)), min(-40795i, -1i), arg_0.x >> (4294967295u % 32u), abs(vec3<i32>(u_input.a, -1i, 37839i))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-390f)) - 1000f), _wgslsmith_div_f32(_wgslsmith_div_f32(-881f, arg_2.x), -230f)))));
    var var_1 = true;
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1114f, var_0.c, 1782f), vec3<f32>(var_0.c, 243f, 1346f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -142f, 368f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-218f * arg_2.x) + _wgslsmith_f_op_f32(min(arg_2.x, var_0.c))), _wgslsmith_f_op_f32(var_0.c - 289f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-741f + -1467f)))))), -1i, abs(~25800u), vec3<i32>(u_input.a, min(~(0i | u_input.a), -u_input.a), _wgslsmith_dot_vec2_i32(~vec2<i32>(12471i, u_input.a), ~vec2<i32>(-14831i, 0i))));
    var_0 = Struct_1(2147483647i == (~(u_input.a & 1i) >> (u_input.b.x % 32u)), ~vec4<u32>(max(_wgslsmith_sub_u32(var_0.b.x, var_2.b.x), 4367u), 57989u, _wgslsmith_div_u32(6906u, _wgslsmith_sub_u32(var_0.b.x, 23460u)), var_2.b.x), _wgslsmith_f_op_f32(-arg_2.x));
    var var_3 = func_4(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, 200f, var_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, var_0.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, 2311f, var_2.c)) + _wgslsmith_div_vec3_f32(vec3<f32>(-412f, -2200f, -1235f), vec3<f32>(-299f, var_0.c, var_0.c))))), u_input.a, ~33910u, vec3<i32>(~(-2147483647i), -1i, ~_wgslsmith_div_i32(u_input.a, u_input.a))), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.b.yy, arg_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(31620u, var_2.b.x & var_0.b.x), countOneBits(arg_0) ^ var_0.b.wy, abs(max(u_input.b.xz, vec2<u32>(var_2.b.x, var_0.b.x))))), Struct_1(!all(vec4<bool>(true, false, true, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(~arg_0.x, _wgslsmith_div_u32(var_0.b.x, var_2.b.x), _wgslsmith_add_u32(37679u, 0u), max(var_0.b.x, 1u)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 1u, 24348u, arg_0.x)), _wgslsmith_mod_vec4_u32(var_0.b, var_0.b))), -1543f));
    return -u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(21409u >> (~abs(u_input.b.x ^ u_input.b.x) % 32u), min(u_input.b.x, 4294967295u));
    global0 = array<Struct_1, 7>();
    let var_1 = 777f;
    let var_2 = ~(~(-(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(0i, 18178i)) >> (~vec2<u32>(53905u, 0u) % vec2<u32>(32u))));
    global1 = _wgslsmith_f_op_f32(trunc(var_1));
    var var_3 = !(!(!vec4<bool>(true, true, select(true, false, false), false)));
    let var_4 = ~_wgslsmith_sub_u32(~19604u, 0u);
    var var_5 = ~func_5(u_input.b.zx, !func_4(global0[_wgslsmith_index_u32(func_1(var_1, global0[_wgslsmith_index_u32(4294967295u, 7u)], vec2<f32>(var_1, 220f), u_input.b), 7u)], reverseBits(var_4), func_2(vec3<f32>(var_1, var_1, var_1), -671i, var_0.x, vec3<i32>(12281i, -56052i, var_2.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, var_1)))))));
    let var_6 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, -1579f), vec3<f32>(var_1, var_1, 906f)))))), -1i, ~var_0.x, ~(-select(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, var_2.x, 54301i), vec3<i32>(2147483647i, u_input.a, var_2.x)), -vec3<i32>(var_2.x, u_input.a, -22435i), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1909f * var_1), -603f, -1992f), vec3<f32>(var_1, _wgslsmith_f_op_f32(-909f + var_1), _wgslsmith_f_op_f32(var_1 - 271f)), select(select(var_3.zzw, var_3.yzz, vec3<bool>(var_6.a, true, true)), select(var_3.wyw, var_3.yzz, var_3.yyz), any(vec4<bool>(var_3.x, var_3.x, var_3.x, false))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, 1000f, -156f))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, abs(var_6.b.yyy << (u_input.b % vec3<u32>(32u)))), max(firstTrailingBit(_wgslsmith_add_vec3_u32(var_6.b.zzz, u_input.b)), ~(~vec3<u32>(0u, 4294967295u, 0u)))), -2937i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.c, 534f, var_1, -140f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-449f, var_1, 743f, var_1)))))));
}

