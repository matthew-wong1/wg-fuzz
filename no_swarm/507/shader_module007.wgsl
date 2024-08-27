struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(true, true, false, true)));

var<private> global1: vec3<i32> = vec3<i32>(-977i, -1i, -1622i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(u_input.a.xx, abs(~(vec2<u32>(u_input.a.x, 1u) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)));
    var var_1 = _wgslsmith_add_u32(firstTrailingBit(0u), var_0.x ^ _wgslsmith_div_u32(u_input.a.x, 1u));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    global1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x) << (vec3<u32>(u_input.a.x, 15123u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(global1.x, global1.x, global1.x) | vec3<i32>(global1.x, global1.x, -1i))), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-22335i, 28564i, 1i) & vec3<i32>(global1.x, 2147483647i, global1.x), vec3<i32>(global1.x, global1.x, global1.x), countOneBits(vec3<i32>(global1.x, global1.x, global1.x))), max(vec3<i32>(global1.x, 1i, global1.x) & vec3<i32>(2147483647i, global1.x, -19994i), select(vec3<i32>(21954i, global1.x, -43103i), vec3<i32>(9695i, global1.x, global1.x), var_2.a.zxx))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(20131u, _wgslsmith_clamp_u32(var_0.x, 4294967295u, 0u), ~var_0.x), ~vec3<u32>(16231u, 7567u, 0u)) % vec3<u32>(32u)), reverseBits(abs(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(global1.x, 23671i, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 12843i, global1.x), vec3<i32>(2147483647i, global1.x, -35711i), vec3<i32>(1i, global1.x, global1.x))))));
    global0 = array<Struct_2, 8>();
    return vec2<bool>(var_2.a.x, any(select(!var_2.a.wyy, var_2.a.yww, all(var_2.a.wz))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 8u)];
    var var_1 = var_0.a.xy;
    let var_2 = vec4<u32>(~94420u, 1u, _wgslsmith_div_u32(100522u, _wgslsmith_mult_u32(4294967295u, u_input.a.x)), 1u);
    global0 = array<Struct_2, 8>();
    var var_3 = select(!var_0.a.xxy, var_0.a.zyy, false);
    return 1u;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(reverseBits(u_input.a.x)), func_4(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.x < 388f), select(func_3(), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), true)), countOneBits(u_input.a) << (select(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), countOneBits(u_input.a), true) % vec3<u32>(32u)), !((39960u & u_input.a.x) != 0u), Struct_1(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 42775u), select(u_input.a.x, 58764u, true), ~55554u), vec3<i32>(24279i, global1.x, global1.x) ^ -vec3<i32>(global1.x, global1.x, global1.x), vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -2405f), -521f), 36439i))), 8u)];
    return 4294967295u;
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 8>();
    let var_0 = ~reverseBits(select(~vec4<u32>(arg_3.a.x, 11869u, 4294967295u, arg_3.a.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3.a.x, arg_3.a.x, u_input.a.x, 123173u), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, arg_3.a.x, 1u))), arg_2.x));
    var var_1 = (vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(8789i, 1i), ~2147483647i, -1653i), ~arg_3.d, ~_wgslsmith_add_i32(arg_3.b.x, -1i), -1i) >> (select(var_0, firstTrailingBit(vec4<u32>(58998u, arg_3.a.x, arg_3.a.x, 4294967295u)), vec4<bool>(true, arg_3.b.x > arg_3.b.x, arg_2.x, true)) % vec4<u32>(32u))) << (~abs(vec4<u32>(447u, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u));
    var_1 = vec4<i32>(global1.x, _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(var_1.xww ^ vec3<i32>(-1i, 17168i, -105950i), arg_3.b), 1i), _wgslsmith_mod_i32(global1.x, _wgslsmith_div_i32(arg_1, min(reverseBits(global1.x), -8355i >> (0u % 32u)))), (_wgslsmith_dot_vec2_i32(-var_1.zy, ~var_1.zy) >> ((_wgslsmith_sub_u32(arg_3.a.x, var_0.x) | var_0.x) % 32u)) << (abs(1u) % 32u));
    let var_2 = var_1.xx;
    return Struct_1(select(~max(var_0.wzw, vec3<u32>(arg_3.a.x, var_0.x, 0u)), ~select(~u_input.a, select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, true), vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), vec3<bool>(u_input.a.x < ~var_0.x, arg_2.x, true)), ~var_1.yzy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.yyw))), 1i);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, _wgslsmith_f_op_f32(round(-209f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(212f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) - -613f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(step(-1000f, 236f)), -344f, -410f) * vec4<f32>(_wgslsmith_f_op_f32(1317f * -540f), _wgslsmith_f_op_f32(f32(-1f) * -344f), -1250f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 0i << (select(func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-199f, 410f)))), abs(u_input.a.x), all(arg_3.a)) % 32u), vec2<bool>(select(true, !all(arg_3.a.zzw), arg_3.a.x), false), Struct_1(vec3<u32>(_wgslsmith_mod_u32(min(18752u, 31836u), ~u_input.a.x), firstLeadingBit(arg_1), arg_2.x), abs(vec3<i32>(_wgslsmith_div_i32(0i, global1.x), 21521i, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1246f)), -1020f, _wgslsmith_f_op_f32(787f + -410f))), ~(~(2973i << (arg_2.x % 32u)))));
    global0 = array<Struct_2, 8>();
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_0.c.x, -491f, var_0.c.x), vec4<f32>(1138f, var_0.c.x, var_0.c.x, -1000f))))) + vec4<f32>(var_0.c.x, -439f, 1829f, _wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x)))))), -2147483647i, arg_0, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(step(-1134f, 1785f)), var_0.c.x, _wgslsmith_f_op_f32(exp2(var_0.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, -804f, var_0.c.x, 349f)))), var_0.d, arg_0, Struct_1(~vec3<u32>(0u, var_0.a.x, arg_1), -(~vec3<i32>(-60986i, 7628i, 2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.c)) - _wgslsmith_f_op_vec3_f32(select(var_0.c, vec3<f32>(1109f, var_0.c.x, var_0.c.x), vec3<bool>(arg_0.x, false, true)))), -2147483647i)));
    global1 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(abs(~vec3<i32>(global1.x, global1.x, 0i) | ~vec3<i32>(global1.x, global1.x, 2147483647i)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-10675i, -2147483647i, global1.x)), vec3<i32>(2147483647i, var_0.b.x, 481i) & var_0.b), min(func_5(vec4<f32>(-508f, 982f, var_0.c.x, -1481f), -48393i, vec2<bool>(arg_0.x, true), Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x), global1.x)).b, var_0.b))), -vec3<i32>(~0i, _wgslsmith_sub_i32(var_0.d, 1i), 1i) | vec3<i32>(-39318i, var_0.d, global1.x));
    global1 = vec3<i32>(abs(2147483647i), _wgslsmith_sub_i32(-abs(i32(-1i) * -1i), min(-global1.x, i32(-1i) * -var_0.b.x)), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -28948i, var_0.b.x), firstLeadingBit(var_0.b)), reverseBits(func_5(vec4<f32>(-732f, var_0.c.x, var_0.c.x, -426f), 14475i, vec2<bool>(true, arg_0.x), Struct_1(arg_2.zyw, var_0.b, var_0.c, global1.x)).b.x)));
    return vec3<bool>(any(!(!vec3<bool>(arg_3.a.x, false, arg_0.x))), arg_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, all(vec4<bool>(true, all(func_1(vec2<bool>(false, false), u_input.a.x, vec4<u32>(4294967295u, 4473u, 3898u, u_input.a.x), Struct_2(vec4<bool>(true, false, true, false)))), true, 1u > _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(1u, u_input.a.x)))));
    global0 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(-631f, -167f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(624f, 913f) - _wgslsmith_f_op_f32(round(-983f)))))), vec3<u32>(u_input.a.x, firstLeadingBit(u_input.a.x) ^ _wgslsmith_mod_u32(~29479u, ~74217u), 4294967295u));
}

