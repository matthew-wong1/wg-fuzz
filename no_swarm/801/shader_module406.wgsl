struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    return firstTrailingBit(_wgslsmith_add_vec3_u32(~(vec3<u32>(arg_0.b, arg_0.b, arg_0.b) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(u_input.b.x, 68820u, u_input.b.x))), vec3<u32>(_wgslsmith_mult_u32(u_input.c << (58045u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9711u, 27253u, arg_0.b), vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))), _wgslsmith_mod_u32(firstLeadingBit(22957u), u_input.b.x), u_input.b.x)));
}

fn func_2() -> vec3<u32> {
    var var_0 = u_input.c;
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(u_input.a.xx), vec2<i32>(-2147483647i, -2147483647i)), u_input.c);
    let var_2 = _wgslsmith_add_vec3_u32(countOneBits(~(~vec3<u32>(u_input.c, 3723u, 6389u)) | func_3(Struct_1(vec2<i32>(var_1.a.x, 0i), u_input.c), any(vec3<bool>(false, false, true)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, var_1.b, 0u) << (_wgslsmith_div_vec3_u32(vec3<u32>(51375u, var_1.b, u_input.b.x), vec3<u32>(53024u, 43672u, u_input.c)) % vec3<u32>(32u)), ~func_3(global0[_wgslsmith_index_u32(var_1.b, 15u)], false)) | vec3<u32>(select(~48661u, 4294967295u | var_1.b, true), ~u_input.b.x, func_3(Struct_1(vec2<i32>(var_1.a.x, 2147483647i), var_1.b), false).x));
    global0 = array<Struct_1, 15>();
    let var_3 = Struct_3(Struct_1(~(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.wz) >> (u_input.b % vec2<u32>(32u))), min(~(~43780u), 49315u)), Struct_2(Struct_1(~vec2<i32>(var_1.a.x, var_1.a.x) & ~vec2<i32>(-10589i, -2147483647i), 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -496f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(733f, -2210f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(322f, 1013f))))), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec4<bool>(true, false, false, true))), vec2<bool>(true, true), false), 47267u > max(var_2.x, abs(9393u))), !all(vec4<bool>(var_1.a.x != 20664i, true, false, var_1.a.x >= -16847i)));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_4 {
    global0 = array<Struct_1, 15>();
    let var_0 = vec3<i32>(abs(-1i), 2147483647i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, u_input.a.x, u_input.a.x), arg_2))) << (~max(func_2() << (_wgslsmith_sub_vec3_u32(vec3<u32>(40305u, arg_3.a.b, u_input.c), vec3<u32>(arg_3.a.b, arg_3.a.b, 1u)) % vec3<u32>(32u)), vec3<u32>(~u_input.c, u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.b, u_input.c), u_input.b))) % vec3<u32>(32u));
    global0 = array<Struct_1, 15>();
    var var_1 = 0u;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(2129f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(644f)))))), ~arg_2.xz, arg_3, Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x) & ~arg_3.a.b, 15u)]), u_input.c);
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a * -894f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, var_2.a, true))) * var_2.a)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a.x, -1i), ~(-vec2<i32>(-42782i, 2147483647i)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zz, -arg_3.a.a, ~vec2<i32>(2147483647i, 2147483647i)), u_input.a.yw)), var_2.d, Struct_2(var_2.c.a), u_input.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    var var_0 = -1045f >= _wgslsmith_f_op_f32(2522f - arg_2.c.x);
    var_0 = all(select(vec3<bool>(true, false, true || arg_2.d.x), !(!select(vec3<bool>(arg_2.d.x, false, arg_2.e), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), arg_2.d.x)), select(!select(vec3<bool>(true, arg_2.d.x, true), vec3<bool>(false, false, true), arg_2.d.x), !vec3<bool>(arg_2.e, true, arg_2.d.x), arg_2.d.x)));
    var var_1 = func_1(true, select(vec4<bool>(true, true, false, arg_2.d.x), vec4<bool>(any(arg_2.d), !all(arg_2.d), !arg_2.e, arg_0.a.a.x <= u_input.a.x), select(vec4<bool>(!arg_2.e, arg_2.e, all(vec4<bool>(false, arg_2.d.x, true, arg_2.d.x)), true), select(!vec4<bool>(true, false, arg_2.d.x, arg_2.d.x), vec4<bool>(arg_2.d.x, false, false, true), arg_2.e), select(vec4<bool>(arg_2.d.x, arg_2.d.x, false, arg_2.e), vec4<bool>(true, false, true, false), select(vec4<bool>(false, arg_2.e, true, arg_2.d.x), vec4<bool>(false, arg_2.d.x, arg_2.d.x, true), vec4<bool>(false, true, arg_2.d.x, false))))), u_input.a.xzz, func_1(arg_2.e, vec4<bool>(false, true, false, -arg_0.a.a.x > _wgslsmith_dot_vec3_i32(u_input.a.zxx, u_input.a.zxx)), vec3<i32>(arg_2.b.a.a.x, u_input.a.x, arg_1.c.a.a.x) ^ abs(u_input.a.xyz), Struct_2(func_1(false, !vec4<bool>(false, arg_2.e, false, arg_2.e), -vec3<i32>(arg_2.a.a.x, 1i, arg_1.c.a.a.x), arg_2.b).d.a)).d).c;
    var_0 = select(all(vec3<bool>(all(!vec4<bool>(false, arg_2.d.x, true, arg_2.d.x)), arg_2.d.x, u_input.b.x >= _wgslsmith_mult_u32(45612u, 72470u))), true, arg_2.d.x);
    return var_1.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = select(select(vec3<bool>(!arg_2.e && arg_2.e, arg_2.d.x, !(!arg_2.d.x)), !select(select(vec3<bool>(false, arg_2.e, true), vec3<bool>(arg_2.e, true, arg_2.d.x), false), select(vec3<bool>(arg_2.d.x, true, true), vec3<bool>(true, false, false), arg_2.d.x), false), !select(!vec3<bool>(arg_2.d.x, false, false), !vec3<bool>(false, arg_2.d.x, arg_2.e), vec3<bool>(arg_2.e, true, arg_2.d.x))), vec3<bool>(all(vec4<bool>(true, true, arg_2.e, true)), any(vec2<bool>(any(vec3<bool>(true, true, arg_2.e)), true)), arg_2.e), arg_2.d.x);
    var var_1 = select(select(var_0.xy, var_0.xx, false), arg_2.d, arg_2.e);
    var var_2 = vec4<i32>(10262i | u_input.a.x, -(~_wgslsmith_mod_i32(u_input.a.x << (1u % 32u), func_4(Struct_2(arg_2.b.a), Struct_4(arg_0.x, arg_2.a.a, arg_2.b, Struct_2(arg_2.b.a), u_input.c), Struct_3(Struct_1(arg_2.b.a.a, arg_1.x), Struct_2(global0[_wgslsmith_index_u32(arg_2.a.b, 15u)]), vec2<f32>(-1000f, 1342f), var_0.xx, arg_2.e)).a.x)), arg_2.a.a.x, firstTrailingBit(29845i));
    var var_3 = func_1(any(vec4<bool>(arg_2.e, (arg_2.d.x | false) | true, true, true)), vec4<bool>(any(!vec3<bool>(true, false, var_1.x)), arg_2.d.x, any(select(vec3<bool>(var_1.x, true, var_0.x), vec3<bool>(var_0.x, arg_2.e, false), vec3<bool>(arg_2.e, false, true))) || false, firstTrailingBit(arg_2.b.a.a.x & arg_2.b.a.a.x) == _wgslsmith_add_i32(reverseBits(-53382i), min(14123i, 2147483647i))), vec3<i32>(arg_2.a.a.x, arg_2.b.a.a.x, -9898i) << (~reverseBits(~vec3<u32>(4690u, u_input.c, arg_1.x)) % vec3<u32>(32u)), arg_2.b).c.a.a.x;
    var var_4 = any(vec3<bool>(true || !all(var_0.xz), true, !((1i & arg_2.b.a.a.x) >= (i32(-1i) * -1i))));
    return global0[_wgslsmith_index_u32(~(~(~arg_1.x)), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~0u);
    let var_1 = _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
    let var_2 = Struct_2(func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(874f, 110f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1765f, 2043f))) + vec2<f32>(602f, 283f))), ~firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 30715u, u_input.c)), Struct_3(func_4(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 15u)]), func_1(true, vec4<bool>(false, true, false, false), vec3<i32>(u_input.a.x, -30905i, 2841i), Struct_2(global0[_wgslsmith_index_u32(1u, 15u)])), Struct_3(global0[_wgslsmith_index_u32(53309u, 15u)], Struct_2(Struct_1(u_input.a.yw, u_input.c)), vec2<f32>(-259f, 296f), vec2<bool>(true, true), false)), Struct_2(global0[_wgslsmith_index_u32(~4294967295u, 15u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1969f, -1143f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1545f, -310f) * vec2<f32>(341f, -1416f))), vec2<bool>(all(vec2<bool>(true, false)), var_1 > var_1), !(1u >= u_input.b.x))));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-6803i, 0i, 0i, var_2.a.a.x), abs(vec4<i32>(-1i, 3429i, u_input.a.x, 2147483647i)))), _wgslsmith_mult_i32(var_1, 0i) | var_2.a.a.x, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(u_input.a.xyw, u_input.a.xyz)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.wwz, vec3<i32>(-13835i, var_2.a.a.x, u_input.a.x), u_input.a.zzy), -vec3<i32>(var_2.a.a.x, 1i, 0i))), -(~25729i)), abs(u_input.a << (countOneBits(~vec4<u32>(0u, u_input.b.x, 1u, 34888u)) % vec4<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_mod_vec2_i32(~func_4(Struct_2(var_2.a), Struct_4(601f, var_2.a.a, Struct_2(var_2.a), var_2, var_2.a.b), Struct_3(global0[_wgslsmith_index_u32(1u, 15u)], Struct_2(var_2.a), vec2<f32>(357f, -1308f), vec2<bool>(false, true), true)).a, var_2.a.a), 0u);
    var var_5 = !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_6 = !var_5.zz;
    global0 = array<Struct_1, 15>();
    var var_7 = Struct_1(~func_1(all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, var_5.x), vec3<bool>(true, var_6.x, var_6.x))), vec4<bool>(!var_6.x, false, all(vec4<bool>(false, var_6.x, var_6.x, false)), true), firstLeadingBit(vec3<i32>(-6394i, u_input.a.x, 0i)), func_1(!var_6.x, !vec4<bool>(var_6.x, true, true, true), ~u_input.a.xwy, func_1(false, vec4<bool>(var_5.x, var_5.x, var_6.x, false), vec3<i32>(-13458i, var_3, var_4.a.x), var_2).d).c).d.a.a, ~_wgslsmith_sub_u32(~(~var_2.a.b), func_1(var_5.x, select(vec4<bool>(true, var_6.x, var_5.x, false), vec4<bool>(true, var_6.x, var_5.x, false), true), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a.a.x, 21119i, var_4.a.x), u_input.a.zyz), Struct_2(Struct_1(var_2.a.a, u_input.c))).e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-342f, _wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2060f - -1685f))))), ~vec3<u32>(abs(_wgslsmith_div_u32(u_input.c, 4294967295u)), firstLeadingBit(59687u) >> (abs(var_2.a.b) % 32u), func_5(vec2<f32>(-887f, 1362f), vec4<u32>(var_4.b, 4294967295u, 4294967295u, u_input.c), Struct_3(global0[_wgslsmith_index_u32(6803u, 15u)], Struct_2(global0[_wgslsmith_index_u32(0u, 15u)]), vec2<f32>(663f, -1365f), var_6, false)).b >> ((79813u >> (0u % 32u)) % 32u)), func_1(any(select(vec3<bool>(true, var_6.x, false), select(vec3<bool>(var_5.x, true, var_6.x), vec3<bool>(true, false, var_5.x), var_6.x), false)), vec4<bool>(!var_5.x, var_6.x, true, all(select(vec2<bool>(var_6.x, var_5.x), var_5.xz, false))), select(-min(u_input.a.xwy, vec3<i32>(-1i, 2147483647i, var_2.a.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(var_4.a.x, 37112i, var_1), u_input.a.www), vec3<bool>(true, true, true)), func_1(true, vec4<bool>(var_6.x, var_5.x, var_6.x, true), vec3<i32>(var_1, abs(1i), -1i), func_1(var_5.x, vec4<bool>(false, var_5.x, var_5.x, var_6.x), vec3<i32>(var_7.a.x, 0i, var_4.a.x) | u_input.a.zww, func_1(var_6.x, vec4<bool>(var_6.x, var_5.x, true, var_5.x), u_input.a.wzz, Struct_2(Struct_1(u_input.a.zy, var_7.b))).d).d).d).e, _wgslsmith_f_op_f32(f32(-1f) * -1178f));
}

