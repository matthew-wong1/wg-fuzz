struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(439f, 350f, -431f);

var<private> global1: i32 = -1i;

var<private> global2: Struct_1;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = -select(vec4<i32>(select(reverseBits(-9479i), -9066i, global2.b), 1i, 1i, select(1i, min(2147483647i, -3626i), false)), vec4<i32>(_wgslsmith_clamp_i32(-1i, -2147483647i, -1i), -2147483647i, -2147483647i, -15586i) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(-39182i, 27864i, -9744i, 25531i), vec4<i32>(0i, -1i, -28008i, 81223i)) << (global2.a % vec4<u32>(32u))), true);
    let var_1 = 17504u;
    let var_2 = _wgslsmith_div_f32(564f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - _wgslsmith_f_op_f32(-465f * global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2034f, global0.x)))))));
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(global2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(70085u, 4294967295u), vec2<u32>(var_1, u_input.a) ^ global2.a.zw)), (~var_1 ^ ~1u) | max(_wgslsmith_div_u32(1u, 1u), ~1u), var_1 | firstTrailingBit(~u_input.a), _wgslsmith_mult_u32(max(global2.a.x | 0u, ~1u), u_input.a)), all(vec4<bool>(true, false, all(vec4<bool>(true, true, true, true)), arg_0)));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, global0.x, -175f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1106f, var_2, global0.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-728f, var_2, var_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -232f, 1000f) * vec3<f32>(var_2, var_2, global0.x)), true))), vec3<f32>(var_2, _wgslsmith_f_op_f32(-1872f + -492f), var_2)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) + var_2);
}

fn func_2() -> Struct_2 {
    global3 = !vec2<bool>(true, global2.b);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f - -640f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1156f + global0.x) - global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1703f * global0.x), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-global0.x)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1424f, global0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.x, -999f)), -439f)), global0.x, 207f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(767f, global0.x, 363f))) * vec3<f32>(global0.x, -1414f, -602f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -271f)))));
    global2 = Struct_1(firstLeadingBit(~abs(reverseBits(global2.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 605f) + _wgslsmith_f_op_f32(func_3(true))) > 847f);
    global2 = Struct_1(select(global2.a, _wgslsmith_mult_vec4_u32(abs(firstLeadingBit(global2.a)), ~max(global2.a, vec4<u32>(u_input.a, 4294967295u, 12377u, 12923u))), false), true);
    return Struct_2(~vec4<i32>(~abs(2147483647i), ~(~41692i), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 2147483647i, -62804i), vec3<i32>(-43513i, 16838i, -1i)), firstTrailingBit(_wgslsmith_div_i32(21197i, 35906i))), global2.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 6563i), vec2<i32>(_wgslsmith_mod_i32(1i, 2147483647i), abs(-41764i))) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(34066u, u_input.a), global2.a.xy), vec2<u32>(4294967295u, 16361u)), 1u) % 32u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1201f)) + global0.x), _wgslsmith_f_op_f32(abs(global0.x))), -1042f, _wgslsmith_f_op_f32(187f * _wgslsmith_f_op_f32(-global0.x)), 527f), _wgslsmith_mod_u32(abs(u_input.a), ~abs(global2.a.x | 35728u)));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    let var_1 = global2.b;
    var var_2 = global3.x;
    var var_3 = _wgslsmith_f_op_f32(-853f - -540f);
    var_0 = Struct_2(var_0.a, vec4<u32>(27441u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(countOneBits(var_0.b.yxw), var_0.b.wyx >> (vec3<u32>(u_input.a, 87030u, var_0.b.x) % vec3<u32>(32u))), reverseBits(~var_0.e)), select(1u, max(_wgslsmith_dot_vec2_u32(global2.a.wy, global2.a.zz), var_0.b.x), ~var_0.c <= ~(-32394i)), var_0.b.x), _wgslsmith_mult_i32(1i, var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -1007f, global0.x, var_0.d.x))) * _wgslsmith_f_op_vec4_f32(-var_0.d))), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.e << (firstLeadingBit(var_0.b.x) % 32u), ~(global2.a.x << (87873u % 32u))), _wgslsmith_div_u32(var_0.e << (~0u % 32u), _wgslsmith_mult_u32(var_0.e, var_0.b.x) & (var_0.e | global2.a.x))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(u_input.a, (_wgslsmith_sub_u32(global2.a.x, 1u) >> (_wgslsmith_mod_u32(global2.a.x, global2.a.x) % 32u)) << (global2.a.x % 32u)));
    var var_1 = global0.x;
    global2 = Struct_1(global2.a ^ vec4<u32>(u_input.a, 25024u, ~1u, reverseBits(u_input.a)), !(any(select(vec3<bool>(global2.b, global3.x, global3.x), vec3<bool>(global2.b, false, global3.x), vec3<bool>(global2.b, false, global3.x))) & false));
    let var_2 = 903f;
    var var_3 = min(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-54234i, -40860i, 18532i, 0i), -vec4<i32>(48338i, 2147483647i, -24224i, -64470i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(1i, -1i, -1i, 1i), vec4<i32>(1i, -2924i, 1i, 5066i), true), vec4<i32>(-1i, 0i, -53894i, -2147483647i))) ^ (vec4<i32>(22270i >> (u_input.a % 32u), abs(-2147483647i), -2147483647i, -16474i) << (~firstLeadingBit(vec4<u32>(u_input.a, 0u, 3708u, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(1i, 1i, 1i, 1i) ^ select(~vec4<i32>(-25848i, 1i, -10011i, 67981i), vec4<i32>(1i << (global2.a.x % 32u), func_1(), 2147483647i, _wgslsmith_sub_i32(1i, 1i)), vec4<bool>(any(vec3<bool>(global2.b, false, global2.b)), any(vec3<bool>(true, global3.x, false)), global3.x & global2.b, true)));
    var var_4 = global2.a.zx;
    let var_5 = true;
    let var_6 = vec4<bool>(!any(!(!vec3<bool>(var_5, true, true))), !(var_5 && any(select(vec2<bool>(true, global3.x), vec2<bool>(var_5, global2.b), vec2<bool>(true, true)))), true && any(vec4<bool>(!global2.b, global3.x, all(vec2<bool>(true, true)), all(vec4<bool>(false, global2.b, false, true)))), ~u_input.a != ~56908u);
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.x)), -708f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), -1448f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2, var_2, var_2, 1f));
}

