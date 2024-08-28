struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(arg_1))), arg_0.x, ~(max(vec4<u32>(1u, u_input.a, 56635u, 89702u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 9u)], 35303u, arg_0.x)) | min(vec4<u32>(4294967295u, 10195u, 4294967295u, global0[_wgslsmith_index_u32(1u, 9u)]), vec4<u32>(0u, 26040u, 13240u, u_input.a))) << (~vec4<u32>(~0u, countOneBits(u_input.a), _wgslsmith_add_u32(20027u, global0[_wgslsmith_index_u32(4294967295u, 9u)]), ~arg_0.x) % vec4<u32>(32u)));
    var var_1 = ~2147483647i;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.a.a, var_0.a.a))));
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-916f)))) - arg_1)));
    let var_3 = ~4294967295u;
    return !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), select(vec2<bool>(2147483647i < u_input.d, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true);
}

fn func_2() -> Struct_1 {
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), vec2<bool>(true, any(!func_3(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 29557u, global0[_wgslsmith_index_u32(4294967295u, 9u)]), -106f))), func_3(~vec4<u32>(~1u, 1u, ~global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1568f)))));
    let var_1 = Struct_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 38966u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], 0u) & ~vec2<u32>(1u, 4294967295u), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 4348u)), false, vec2<bool>(var_0.x, var_0.x || true), _wgslsmith_f_op_f32(-1242f * _wgslsmith_f_op_f32(f32(-1f) * -112f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_2 = var_1.a.x;
    let var_3 = u_input.b;
    let var_4 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(4294967295u, 0u, 1u)), ~vec3<u32>(1u, 1u, 1u)) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, u_input.a, var_2), vec3<u32>(1u, 0u, var_1.a.x)), ~vec3<u32>(~var_2, ~28716u, 9391u), vec3<u32>(_wgslsmith_add_u32(25550u, select(1u, 1u, var_1.c.x)), _wgslsmith_mult_u32(abs(8568u), countOneBits(0u)), 0u)) & ~(~(select(vec3<u32>(u_input.a, 10812u, 4294967295u), vec3<u32>(1u, 12456u, var_1.a.x), var_1.b) << (vec3<u32>(global0[_wgslsmith_index_u32(var_1.a.x, 9u)], var_2, 1u) % vec3<u32>(32u))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = 25204u;
    var_0 = ~u_input.a;
    let var_1 = arg_3;
    var var_2 = func_2();
    var var_3 = Struct_3(func_2(), 61280u, vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), 0u), var_1.c.x | 32380u, 4294967295u, abs(1u & ~arg_3.c.x)));
    return Struct_2(min(arg_3.c.yx, vec2<u32>(arg_1.c.x, arg_3.c.x >> (1u % 32u))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(any(vec4<bool>(true, false, true, false)), arg_2.x == -46231i, all(vec3<bool>(false, true, false))), 1u < _wgslsmith_dot_vec4_u32(vec4<u32>(70236u, 1u, global0[_wgslsmith_index_u32(arg_1.c.x, 9u)], 1u), vec4<u32>(102646u, 53588u, global0[_wgslsmith_index_u32(arg_3.b, 9u)], var_1.b)))), select(vec2<bool>(true, true), select(!func_3(vec4<u32>(arg_1.b, 1u, u_input.a, u_input.a), arg_3.a.a), func_3(~vec4<u32>(4639u, 0u, 51613u, global0[_wgslsmith_index_u32(var_3.b, 9u)]), _wgslsmith_f_op_f32(-var_1.a.a)), func_3(vec4<u32>(var_3.b, global0[_wgslsmith_index_u32(6472u, 9u)], u_input.a, 14164u), _wgslsmith_f_op_f32(-var_3.a.a))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-1736f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-969f, _wgslsmith_f_op_f32(abs(863f)))), var_2.a, true))), func_2());
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(min(-48744i, min(13934i, _wgslsmith_add_i32(arg_0.x, -47552i))), -1i, -10849i, 2147483647i), u_input.c, vec4<i32>(-_wgslsmith_clamp_i32(~(-38246i), u_input.b << (arg_2.a.x % 32u), 21322i), ~arg_0.x << (0u % 32u), _wgslsmith_add_i32(~min(u_input.e, arg_0.x), arg_0.x), _wgslsmith_mod_i32(min(firstTrailingBit(u_input.b), 23950i), 22100i)));
    global0 = array<u32, 9>();
    var var_1 = 40079u << (u_input.a % 32u);
    global0 = array<u32, 9>();
    let var_2 = !select(vec2<bool>(true, (0i ^ arg_0.x) < 2147483647i), !(!func_3(vec4<u32>(global0[_wgslsmith_index_u32(109283u, 9u)], u_input.a, arg_2.a.x, u_input.a), arg_2.d)), arg_2.c);
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    var var_0 = func_1(min(u_input.d, arg_2), Struct_3(arg_1.a, 95412u, ~vec4<u32>(abs(13049u), ~1u, u_input.a >> (arg_0.a.x % 32u), ~arg_0.a.x)), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), u_input.c.ww >> (vec2<u32>(17470u, 0u) % vec2<u32>(32u))), ~(-(27062i >> (1u % 32u)))), Struct_3(func_2(), ~(_wgslsmith_dot_vec4_u32(arg_1.c, vec4<u32>(u_input.a, 40023u, 4294967295u, 4294967295u)) & func_4(u_input.c.yyx, arg_1.c, Struct_2(vec2<u32>(4294967295u, 22615u), false, arg_0.c, 973f, arg_0.e), arg_1.c).a.x), _wgslsmith_clamp_vec4_u32(firstLeadingBit(arg_1.c), arg_1.c, abs(arg_1.c)))).b;
    var var_1 = func_4(vec3<i32>((arg_2 >> (_wgslsmith_mult_u32(arg_1.b, 0u) % 32u)) << (abs(global0[_wgslsmith_index_u32(u_input.a, 9u)]) % 32u), _wgslsmith_add_i32(28464i, _wgslsmith_clamp_i32(abs(arg_2), arg_2, -2147483647i)), ~_wgslsmith_dot_vec4_i32(~u_input.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(17992i, u_input.c.x, u_input.d, -5897i), u_input.c, vec4<i32>(22849i, -1i, arg_2, 22162i)))), ~vec4<u32>(max(abs(1u), arg_1.c.x), _wgslsmith_add_u32(33610u, 0u), global0[_wgslsmith_index_u32(u_input.a, 9u)], abs(0u)), func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(~arg_2, _wgslsmith_clamp_i32(-1i, -1i, u_input.c.x), 2147483647i), _wgslsmith_div_vec3_i32(~u_input.c.yyx, ~u_input.c.zyz), u_input.c.yxw), _wgslsmith_mod_vec4_u32(arg_1.c, ~arg_1.c), Struct_2(_wgslsmith_div_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 9u)], arg_0.a.x), vec2<u32>(u_input.a, u_input.a) >> (arg_1.c.xw % vec2<u32>(32u))), false, select(func_4(u_input.c.wyx, arg_1.c, arg_0, vec4<u32>(75036u, 1u, arg_1.b, 8047u)).c, arg_0.c, false), 273f, func_2()), vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)] ^ arg_1.c.x, 37892u << (arg_0.a.x % 32u)), u_input.a, ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(12933u, arg_0.a.x, 4294967295u), 9u)], abs(1u))), arg_1.c).e;
    let var_2 = _wgslsmith_mult_vec2_u32(select(~(~_wgslsmith_clamp_vec2_u32(arg_1.c.wz, arg_0.a, vec2<u32>(global0[_wgslsmith_index_u32(0u, 9u)], arg_1.c.x))), ~firstTrailingBit(vec2<u32>(9187u, global0[_wgslsmith_index_u32(arg_0.a.x, 9u)])), arg_0.c), countOneBits(vec2<u32>(28664u, min(23637u, select(0u, arg_1.b, arg_0.c.x)))));
    let var_3 = Struct_4(Struct_3(func_2(), arg_0.a.x, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(arg_1.c & arg_1.c, ~arg_1.c), arg_1.c)), min(abs(arg_1.c.xzw), vec3<u32>(u_input.a | 4294967295u, ~_wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(0u, 9u)]), ~var_2.x)), select(~vec2<i32>(firstTrailingBit(u_input.d), _wgslsmith_sub_i32(arg_2, arg_2)), -u_input.c.zw, arg_0.c));
    let var_4 = arg_1;
    return Struct_1(331f);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<u32, 9>();
    var var_1 = select(!(!func_3(vec4<u32>(1649u, 1u, 56428u, 43098u), arg_2.a.a)), vec2<bool>(true, true), vec2<bool>(!(_wgslsmith_div_u32(1u, arg_2.b) < global0[_wgslsmith_index_u32(arg_0.c.x, 9u)]), _wgslsmith_f_op_f32(arg_2.a.a - _wgslsmith_f_op_f32(sign(738f))) >= _wgslsmith_div_f32(arg_2.a.a, _wgslsmith_f_op_f32(-arg_0.a.a))));
    var var_2 = Struct_2(firstLeadingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(32042u, var_0.b), _wgslsmith_add_vec2_u32(arg_2.c.yz, var_0.c.zx), vec2<u32>(func_1(u_input.c.x, Struct_3(arg_0.a, 0u, var_0.c), u_input.c.yw, Struct_3(arg_1, 4294967295u, arg_2.c)).a.x, u_input.a))), any(vec2<bool>(any(!vec3<bool>(var_1.x, var_1.x, false)), true)), !vec2<bool>(all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, true, true))), any(vec3<bool>(true, var_1.x, var_1.x))), var_0.a.a, func_1(-1i, Struct_3(arg_2.a, ~u_input.a, select(~vec4<u32>(global0[_wgslsmith_index_u32(arg_2.c.x, 9u)], 20813u, arg_0.b, 52790u), arg_0.c, !var_1.x)), u_input.c.wx, Struct_3(var_0.a, var_0.b, vec4<u32>(max(global0[_wgslsmith_index_u32(arg_2.c.x, 9u)], u_input.a), _wgslsmith_sub_u32(arg_0.b, global0[_wgslsmith_index_u32(arg_2.b, 9u)]), 3395u | arg_2.c.x, ~21236u))).e);
    var var_3 = var_0.c.x;
    return Struct_1(141f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(func_5(func_4(u_input.c.yyw, vec4<u32>(u_input.a, u_input.a, u_input.a, 4080u), func_1(u_input.c.x, Struct_3(Struct_1(-284f), 1u, vec4<u32>(22303u, 4294967295u, u_input.a, 2961u)), u_input.c.wx, Struct_3(Struct_1(2210f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u, 4294967295u))), ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a, 0u, u_input.a)), Struct_3(Struct_1(1836f), 49358u, firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(0u, 9u)], 0u, 0u, 73221u))), _wgslsmith_dot_vec4_i32(vec4<i32>(53274i, -1i, u_input.c.x, u_input.c.x), u_input.c ^ u_input.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(16957u, _wgslsmith_sub_u32(u_input.a, 1u), _wgslsmith_div_u32(4294967295u, 8607u)), reverseBits(~vec3<u32>(876u, 1u, 10162u))), vec4<u32>(~80284u, 4294967295u, _wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(40690u, 9u)]), ~48862u) & (~vec4<u32>(u_input.a, u_input.a, 16971u, 4294967295u) & vec4<u32>(48555u, global0[_wgslsmith_index_u32(6466u, 9u)], 25285u, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(-1907f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) * 773f))), Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-386f, 892f) + -1000f)), u_input.a, ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)] << (u_input.a % 32u), min(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 9u)]), 1u)));
    let var_1 = u_input.c.yy;
    var var_2 = firstTrailingBit(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(18075u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12903u, 9u)], 9u)])) | vec2<u32>(20438u, u_input.a)) & select(countOneBits(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], 4294967295u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(49068u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 9u)]), vec2<u32>(1u, 1u)), any(vec2<bool>(true, true))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a)))), countOneBits(var_2.x), countOneBits((vec4<u32>(0u, 14482u, 28221u, var_2.x) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12190u, 9u)], 9u)], var_2.x, u_input.a, 61851u) % vec4<u32>(32u))) >> (select(vec4<u32>(48625u, u_input.a, var_2.x, 19547u), vec4<u32>(var_2.x, global0[_wgslsmith_index_u32(var_2.x, 9u)], u_input.a, 25119u), false) % vec4<u32>(32u))) & ~abs(vec4<u32>(var_2.x, 1u, 1u, var_2.x)));
    var var_4 = func_4(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(14519i, -u_input.b, 9749i)), -reverseBits(vec3<i32>(var_1.x, -59753i, var_1.x))), ~abs(~var_3.c), func_4(u_input.c.zxy, max(~select(var_3.c, var_3.c, vec4<bool>(false, true, false, true)), vec4<u32>(var_3.c.x, ~var_2.x, var_2.x, _wgslsmith_mult_u32(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.c.x, 9u)], 9u)]))), Struct_2(~max(vec2<u32>(var_3.c.x, var_2.x), var_3.c.xx), true, vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.a.a, var_0.a))), var_3.a), abs(firstTrailingBit(var_3.c) >> (~var_3.c % vec4<u32>(32u)))), ~vec4<u32>(0u >> ((79031u | var_2.x) % 32u), var_2.x, ~(~var_3.b), 1u)).c;
    let var_5 = Struct_1(func_4(vec3<i32>(abs(~(-397i)), _wgslsmith_mult_i32(var_1.x, ~var_1.x), _wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(var_1.x, -17607i))), firstLeadingBit(var_3.c), Struct_2(select(vec2<u32>(1u, global0[_wgslsmith_index_u32(var_2.x, 9u)]), select(var_3.c.wy, var_3.c.xx, vec2<bool>(false, var_4.x)), func_3(var_3.c, -1000f)), 388f <= _wgslsmith_f_op_f32(ceil(var_3.a.a)), !select(vec2<bool>(false, false), vec2<bool>(true, var_4.x), vec2<bool>(true, true)), -494f, Struct_1(-1463f)), var_3.c).d);
    var_4 = select(func_1(~(-1i), var_3, vec2<i32>(_wgslsmith_mult_i32(abs(9278i), var_1.x), var_1.x), Struct_3(func_1(countOneBits(35743i), var_3, vec2<i32>(-41351i, -64640i), Struct_3(var_5, 8268u, var_3.c)).e, u_input.a, vec4<u32>(u_input.a, 1u, 1u, 39536u))).c, vec2<bool>(true, false), true);
    global0 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(-81220i, 22206i)), ~u_input.e, var_1.x), vec4<u32>(~(~firstLeadingBit(72735u)), u_input.a, ~_wgslsmith_dot_vec2_u32(func_1(21719i, var_3, u_input.c.yw, Struct_3(Struct_1(var_0.a), 8238u, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(6803u, 9u)], 36064u, 8028u))).a, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 9u)], 9u)], global0[_wgslsmith_index_u32(var_2.x, 9u)]) | vec2<u32>(4176u, u_input.a)), 34306u), vec2<f32>(-369f, _wgslsmith_f_op_f32(-var_3.a.a)));
}

