struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<u32> {
    return ~vec4<u32>(1u, ~(~1u), ~u_input.d, ~(0u >> (u_input.d % 32u)) | ~(2323u ^ u_input.d));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> bool {
    global0 = array<vec3<f32>, 32>();
    let var_0 = arg_1.x;
    var var_1 = Struct_3(vec4<bool>(arg_0 <= _wgslsmith_f_op_f32(floor(1000f)), arg_1.x, !(!arg_1.x), arg_1.x), ~_wgslsmith_mult_vec4_u32(func_3(), firstTrailingBit(vec4<u32>(u_input.b, 1u, u_input.d, 55821u))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.d, 0u, 1u)), vec4<u32>(4294967295u, 15125u, 4294967295u, u_input.d), ~vec4<u32>(u_input.d, 24483u, u_input.b, 1u)), ~(~vec4<u32>(u_input.b, u_input.d, 40311u, u_input.b)), _wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, 30466u, u_input.b, u_input.d), vec4<u32>(u_input.b, 0u, u_input.b, u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 33572u, u_input.d, u_input.d), vec4<u32>(89958u, 4294967295u, 41366u, 17454u)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1061f, -999f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1068f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1092f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))))))), vec3<bool>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, u_input.d, u_input.b)) <= reverseBits(u_input.b >> (u_input.b % 32u)), var_0, all(!vec4<bool>(true, false, true, arg_1.x))));
    global0 = array<vec3<f32>, 32>();
    let var_2 = false;
    return all(select(!vec2<bool>(var_0, !var_0), vec2<bool>(true, true), any(!(!var_1.a))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    global0 = array<vec3<f32>, 32>();
    var var_0 = _wgslsmith_mod_i32(u_input.c, -36538i);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.c.x - -1000f), arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(190f, 233f)) - -978f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.c.x) - vec2<f32>(-661f, -1090f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.c - vec2<f32>(arg_0.c.x, arg_0.c.x)))))), arg_1.c)));
    let var_2 = Struct_1(~max(vec2<u32>(24831u, 68869u), vec2<u32>(23257u, 4294967295u) << (select(arg_1.b.wy, arg_0.b.zw, arg_0.a.x) % vec2<u32>(32u))), select(select(arg_1.a.wx, vec2<bool>(!arg_1.d.x, true), select(arg_0.d.yx, vec2<bool>(true, true), false)), vec2<bool>(any(arg_1.a.zw), true | (arg_1.c.x == 383f)), !select(vec2<bool>(true, true), select(arg_0.a.yw, arg_1.d.xz, vec2<bool>(true, arg_0.a.x)), vec2<bool>(true, true))), _wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(2147483647i, 7374i, u_input.c), u_input.c), ~vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.c, 0i))), select(arg_0.a, vec4<bool>(arg_0.a.x, arg_1.d.x, arg_0.d.x, !(!arg_0.d.x)), !select(arg_0.a, arg_1.a, select(arg_0.a, arg_1.a, true))));
    var_0 = ~(-_wgslsmith_sub_i32(var_2.c.x, u_input.a | -1i));
    return arg_0;
}

fn func_1() -> Struct_3 {
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    var var_0 = abs(1i);
    return func_4(Struct_3(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, select(false, u_input.d <= u_input.b, u_input.d >= 1u)), abs(~vec4<u32>(29317u, u_input.b, u_input.b, 1u)) >> ((vec4<u32>(1u, 1u, u_input.b, 16027u) >> (~vec4<u32>(0u, 1u, 119736u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 221f)), vec2<f32>(-181f, _wgslsmith_f_op_f32(f32(-1f) * -224f)))), vec3<bool>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -585f), vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), select(all(vec2<bool>(true, false)), true, true))), Struct_3(select(vec4<bool>(u_input.c < -45442i, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), any(vec2<bool>(true, true))), 1i >= -u_input.a), ~(firstTrailingBit(vec4<u32>(u_input.d, 1u, u_input.d, u_input.d)) ^ (vec4<u32>(6369u, u_input.d, 71768u, 124057u) ^ vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1624f, 1198f)))))), !select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true)));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = Struct_3(vec4<bool>(any(!(!vec3<bool>(arg_1.d.x, true, arg_1.a.x))), !(!func_2(arg_0, vec2<bool>(arg_1.a.x, arg_1.a.x))), arg_1.a.x, any(arg_1.a.yx)), vec4<u32>(_wgslsmith_dot_vec2_u32(min(arg_1.b.wy, max(vec2<u32>(u_input.d, u_input.d), arg_1.b.wy)), select(max(arg_1.b.xx, arg_1.b.xx), _wgslsmith_add_vec2_u32(vec2<u32>(41780u, u_input.b), arg_1.b.xx), true)), 1u, arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(124f + -1000f), arg_0)))), vec3<bool>(all(!func_4(Struct_3(arg_1.a, arg_1.b, arg_1.c, arg_1.d), arg_1).d.yx), arg_1.a.x && arg_1.a.x, !all(!arg_1.a.xyz)));
    let var_1 = u_input.b >> (~arg_1.b.x % 32u);
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1675f)))))));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_0.b.x, 32u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(var_0.b.x, 32u)], global0[_wgslsmith_index_u32(67846u, 32u)], vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.b, 32u)]))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_0.b.x, 32u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, var_0.c.x, var_0.c.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(round(-287f)), func_1())), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(549f, -909f, -496f) * global0[_wgslsmith_index_u32(u_input.d, 32u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1726f, -1143f, -2567f), vec3<f32>(-1000f, 612f, 515f), true)) + vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-691f, 1000f, 553f)) + vec3<f32>(1173f, -153f, 525f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -305f)), -1602f, _wgslsmith_div_f32(-2186f, 531f))))));
    var var_1 = abs(vec4<u32>(1u, u_input.d, _wgslsmith_sub_u32(firstLeadingBit(4294967295u >> (u_input.d % 32u)), ~(u_input.b >> (4294967295u % 32u))), u_input.b | (70552u >> (u_input.d % 32u))));
    var_1 = firstTrailingBit(_wgslsmith_sub_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, var_1.x), vec4<u32>(18344u, u_input.d, 1u, 6516u), vec4<u32>(31529u, u_input.d, 47426u, u_input.b)), vec4<u32>(u_input.d, 1u, var_1.x, u_input.d), true), ~abs(vec4<u32>(var_1.x, 52466u, var_1.x, 4294967295u)))) ^ ~select(vec4<u32>(46401u, select(1u, var_1.x, false), func_1().b.x, 4294967295u), countOneBits(func_1().b), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_0.yx);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(61556u, u_input.d), ~var_1.zy), 32u)];
    let var_4 = _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(~2147483647i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -7249i, 7904i, 37425i), vec4<i32>(0i, u_input.a, u_input.c, u_input.a))))), abs(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 11198i), vec2<i32>(u_input.c, 29969i)), vec2<i32>(-1i, u_input.c)), u_input.c)));
    var var_5 = -1299f;
    let var_6 = Struct_1(vec2<u32>(countOneBits(~var_1.x ^ 1u), u_input.b), func_1().d.xz, abs(select(_wgslsmith_clamp_vec2_i32(reverseBits(var_4), vec2<i32>(var_4.x, -2147483647i), var_4), vec2<i32>(u_input.c, _wgslsmith_mod_i32(-55294i, u_input.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !(!func_1().a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(1u, 1471u, 99085u) | ~var_1.wzw) & (func_1().b.xyz ^ _wgslsmith_clamp_vec3_u32(var_1.wyz, firstLeadingBit(var_1.wzz), _wgslsmith_div_vec3_u32(var_1.xzw, vec3<u32>(1u, var_6.a.x, 1u)))));
}

