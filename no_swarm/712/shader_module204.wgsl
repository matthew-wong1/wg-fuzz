struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, false, true))), vec3<bool>(true, 10651u > u_input.e, any(vec2<bool>(true, false)))), select(vec3<bool>(true, 0u >= u_input.d, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, false)), false), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1278f - 451f), _wgslsmith_f_op_f32(ceil(1541f)))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(1094f, 138f))), _wgslsmith_f_op_f32(-var_1.x))), Struct_1(4294967295u, ~(~vec3<u32>(16717u, 4294967295u, u_input.e)) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(30489u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 27481u, 81163u)), select(select(var_0, !var_0, any(vec3<bool>(false, false, false))), var_0, !vec3<bool>(true, var_0.x, var_0.x)), vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.b & -7977i), _wgslsmith_dot_vec4_i32(-vec4<i32>(15755i, u_input.b, u_input.c.x, -13860i), ~u_input.c), u_input.b)));
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-(var_2.b.d ^ abs(vec3<i32>(u_input.b, -13522i, 16955i))), abs(select(vec3<i32>(0i, u_input.b, -1614i), vec3<i32>(var_2.b.d.x, -2147483647i, -3229i), var_0) >> (var_2.b.b % vec3<u32>(32u)))), -firstTrailingBit(firstTrailingBit(vec3<i32>(1i, var_2.b.d.x, 2147483647i))));
    var_1 = var_2.a;
    return var_2.b.d.x;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(45514i, -1i);
    var_0 = _wgslsmith_div_i32(-_wgslsmith_mod_i32(~u_input.c.x, 2147483647i << ((15915u << (u_input.e % 32u)) % 32u)), func_3());
    var var_1 = !(false == any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    var var_2 = Struct_3(~(~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.e, u_input.d))) & vec4<u32>(u_input.d, 22388u, u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.a.x), ~vec3<u32>(u_input.e, u_input.a.x, 4294967295u))), i32(-1i) * -38662i, select(_wgslsmith_dot_vec3_i32(u_input.c.wwz, -vec3<i32>(u_input.c.x, u_input.c.x, u_input.b)) ^ 2147483647i, firstTrailingBit(select(u_input.c.x, -14150i, true)), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), false))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), 1635f, 1324f, _wgslsmith_f_op_f32(abs(890f))), vec2<f32>(-1839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-989f, 1066f, false)))), Struct_1(1u, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(76588u, u_input.a.x, 28126u) % vec3<u32>(32u)), vec3<bool>(true, true, true), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 31425i, u_input.c.x), firstLeadingBit(vec3<i32>(u_input.c.x, -27854i, 8863i)))), Struct_1(~(~u_input.e), vec3<u32>(1u, ~u_input.e, 63803u), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true), abs(select(u_input.c.xxw, u_input.c.zyy, true)))));
    let var_3 = Struct_1(~min(1u, max(u_input.e, 4294967295u) | reverseBits(2507u)), ~var_2.d.d.b, vec3<bool>(true, var_2.d.c.c.x, false), var_2.d.d.d);
    return var_2.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>) -> bool {
    let var_0 = func_2();
    let var_1 = Struct_3(arg_1, u_input.b, 30551i, Struct_2(var_0.a, vec2<f32>(100f, var_0.a.x), var_0.d, func_2().c));
    var var_2 = var_0.b;
    let var_3 = firstTrailingBit(arg_1.x);
    var var_4 = vec2<bool>(arg_0.x, var_2.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(var_2.x - 165f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)))));
    return !(!arg_0.x && var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(4294967295u, ~(_wgslsmith_add_u32(1u, u_input.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 51817u), vec4<u32>(4821u, u_input.a.x, u_input.e, 1731u)) % 32u)), false);
    let var_1 = vec3<bool>(true, func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), min(~vec4<u32>(var_0, u_input.e, 35571u, 6982u), vec4<u32>(4418u, 0u, var_0, 77809u))) | !(!all(vec3<bool>(true, true, true))), any(func_2().d.c.xx) && true);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(135f)), 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1346f))), _wgslsmith_f_op_f32(min(-782f, _wgslsmith_f_op_f32(1000f + -1026f))), _wgslsmith_f_op_f32(ceil(-1204f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-654f, -1942f, 1839f, -1202f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-791f, -1759f, 1000f, 1224f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-759f + 1624f), _wgslsmith_f_op_f32(780f - -1168f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-892f, 419f)))), func_2().c, func_2().c);
    var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)));
    var var_4 = Struct_4(var_2.b, var_2.c);
    var var_5 = -25514i;
    var_5 = abs(u_input.b);
    let var_6 = Struct_3(vec4<u32>(~(~(~18853u)), max(_wgslsmith_sub_u32(countOneBits(var_4.b.b.x), ~var_2.d.a), ~_wgslsmith_dot_vec2_u32(var_4.b.b.yy, vec2<u32>(18333u, u_input.d))), ~var_2.c.a, var_0), ~_wgslsmith_add_i32(-8756i, var_4.b.d.x << (var_4.b.b.x % 32u)), -32557i, func_2());
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_div_i32(-35659i, firstTrailingBit(-2147483647i)) & (26858i ^ (u_input.b >> (var_0 % 32u)))) | var_6.d.c.d.x);
}

