struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1210f, 231f), vec2<f32>(1000f, -988f), vec3<f32>(816f, -1923f, -1000f)), vec4<f32>(-585f, -1308f, -416f, -1710f), Struct_1(vec2<f32>(-1000f, 1303f), vec2<f32>(-301f, -567f), vec3<f32>(-291f, 1000f, -282f)), -9051i, Struct_1(vec2<f32>(351f, -375f), vec2<f32>(-322f, 1000f), vec3<f32>(-162f, 1889f, -310f)));

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(882f, -1000f));

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<vec3<u32>, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = Struct_3(u_input.c, vec4<u32>(1u, ~(arg_1.x << (arg_1.x % 32u)), ~4294967295u, _wgslsmith_clamp_u32(countOneBits(~u_input.a.x), 4294967295u, abs(_wgslsmith_add_u32(3170u, 57386u)))));
    var var_1 = countOneBits(19044u);
    var var_2 = arg_2;
    return ~(~(~reverseBits(~var_0.b)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(~(~u_input.a.x), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(func_3(u_input.b.yx, u_input.a, Struct_4(global0.c.b, global0.e)), firstLeadingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.c)))));
    global2 = array<Struct_3, 3>();
    global2 = array<Struct_3, 3>();
    var var_1 = false;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(global0.e.c.xy)), Struct_1(global0.b.yy, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~47742u, _wgslsmith_dot_vec3_u32(vec3<u32>(14067u, 14893u, u_input.c), select(vec3<u32>(u_input.a.x, 0u, 6617u), global3[_wgslsmith_index_u32(4294967295u, 1u)], vec3<bool>(true, false, false)))), 1u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.c + global0.a.c)))));
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2.b.a.x, -1743f)))), _wgslsmith_f_op_f32(-163f + _wgslsmith_f_op_f32(-934f + 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-743f + var_2.a.x), -184f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.b.a.x, 1000f, global0.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(521f, -1157f, var_2.b.c.x), vec3<f32>(658f, -1000f, var_2.b.c.x)))))), _wgslsmith_f_op_vec4_f32(-global0.b), global0.a, firstTrailingBit(18424i) & global0.d, global0.c);
}

fn func_1() -> vec4<bool> {
    global0 = func_2();
    let var_0 = global2[_wgslsmith_index_u32(~u_input.c, 3u)];
    global1 = array<vec2<f32>, 1>();
    var var_1 = ~var_0.b;
    let var_2 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, -1i > global0.d), true & (599f >= global0.b.x)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true)));
    return select(vec4<bool>(true, all(select(select(vec4<bool>(false, var_2, var_2, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, var_2, false), vec4<bool>(var_2, var_2, false, true), var_2), select(vec4<bool>(false, var_2, true, var_2), vec4<bool>(var_2, false, var_2, false), var_2))), !var_2, var_2), vec4<bool>(true, true, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.b.wy, vec2<u32>(49379u, var_1.x)), 17668u) < (~var_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(6052u, 36927u, u_input.c, 0u), var_0.b) % 32u)), all(!vec2<bool>(var_2, true))), !vec4<bool>(any(select(vec3<bool>(var_2, var_2, true), vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, true, var_2))), all(!vec3<bool>(var_2, false, false)), var_2, var_2 | !var_2));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_2 {
    global2 = array<Struct_3, 3>();
    let var_0 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.b.x), func_2().c.a.x), _wgslsmith_f_op_f32(-1201f * _wgslsmith_f_op_f32(round(global0.b.x))), global0.a.b.x, -258f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1511f, global0.b.x, global0.c.c.x, global0.c.a.x), global0.b)))), func_2().c, firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(1i, -30070i)), vec2<i32>(arg_1.x, u_input.d >> (u_input.c % 32u)))), global0.e);
    var var_1 = global0.a.c.x;
    let var_2 = u_input.b;
    let var_3 = ((_wgslsmith_mult_vec3_i32(~u_input.b, vec3<i32>(0i, global0.d, -4982i)) >> (select(vec3<u32>(100012u, u_input.a.x, 6212u) << (global3[_wgslsmith_index_u32(u_input.a.x, 1u)] % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(9664u, 5144u, u_input.c), vec3<u32>(28317u, u_input.a.x, 4294967295u)), false) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, u_input.a.x), global3[_wgslsmith_index_u32(u_input.c, 1u)])), vec3<u32>(func_3(u_input.b.xy, vec2<u32>(32507u, u_input.c), Struct_4(global0.c.a, var_0.c)).x, u_input.a.x << (32596u % 32u), u_input.c & 1u)) % vec3<u32>(32u))) << (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 34073u, u_input.a.x), func_3(var_2.zz, vec2<u32>(u_input.c, 62595u), Struct_4(global1[_wgslsmith_index_u32(4294967295u, 1u)], var_0.c))), ~(u_input.a.x << (u_input.a.x % 32u)), max(u_input.c, u_input.a.x)) % vec3<u32>(32u));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(func_1(), !vec4<bool>(true, select(true, true, false), true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)), vec2<i32>(~_wgslsmith_mult_i32(global0.d, global0.d << (u_input.a.x % 32u)), u_input.b.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(firstTrailingBit(14379u) ^ u_input.a.x, 1u)], vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(-1029f * -296f))) - vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -823f) - _wgslsmith_f_op_f32(2228f * var_0.e.b.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(973f, -1816f)))))), var_0.c.c);
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(max(global3[_wgslsmith_index_u32(u_input.c, 1u)] & global3[_wgslsmith_index_u32(u_input.a.x, 1u)], _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c, 5503u), global3[_wgslsmith_index_u32(u_input.a.x, 1u)])), ~vec3<u32>(1u, 1u, u_input.a.x), global3[_wgslsmith_index_u32(0u, 1u)]), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(u_input.a.x), u_input.c), 1u)]) > (u_input.c & min(select(~32569u, reverseBits(45359u), true), 1u));
    var var_3 = false;
    var var_4 = global0.e.c.x;
    var var_5 = -1i;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1104f) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0.b.x)))), _wgslsmith_f_op_f32(772f - _wgslsmith_f_op_f32(select(func_2().a.a.x, _wgslsmith_f_op_f32(-var_0.a.a.x), true)))));
    let var_6 = 0u;
    var var_7 = Struct_3(4294967295u, vec4<u32>(~min(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(11752u, 0u, 4002u, 20896u), vec4<u32>(var_6, u_input.a.x, u_input.c, 4294967295u))), ~u_input.a.x >> (~_wgslsmith_div_u32(0u, u_input.c) % 32u), ~var_6, 78160u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.c + global0.a.c), global0.b.zyy)))), ~(~u_input.a.x), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(trunc(global0.c.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -648f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1596f)), global0.c.a.x));
}

