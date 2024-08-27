struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<bool>) -> bool {
    global1 = select(arg_2, arg_1, !all(global1.zw));
    var var_0 = ~(~vec4<u32>(arg_0.b.a, 90122u, arg_0.d.e.x, arg_0.d.a)) & firstLeadingBit(~(~(~vec4<u32>(8509u, arg_0.b.a, 94018u, arg_0.b.a))));
    let var_1 = arg_0.c;
    let var_2 = ~(-_wgslsmith_clamp_i32(min(countOneBits(63254i), firstLeadingBit(-1i)), 2147483647i, arg_0.a.b));
    var var_3 = 72029u;
    return !global1.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> i32 {
    global0 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1615f, _wgslsmith_f_op_f32(f32(-1f) * -1564f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-382f)), -836f)))));
    global1 = vec4<bool>(arg_1, true, !all(global1.xyx) || false, !(arg_0.x | any(vec2<bool>(arg_0.x, false))));
    global1 = vec4<bool>(!(!all(vec3<bool>(true, false, global1.x))), !all(!vec4<bool>(false, true, arg_1, true)), false, 22328i <= u_input.c);
    var var_1 = Struct_1(1u, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x ^ 1i, -24484i, countOneBits(u_input.c)), firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(-1059i, 5776i), max(-2147483647i, -35779i), -1i, u_input.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1107f, -1166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(211f + -262f) + _wgslsmith_f_op_f32(-993f - 242f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, var_0)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -562f, var_0, var_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -1000f) - vec4<f32>(var_0, 531f, 490f, var_0))) - vec4<f32>(1007f, var_0, -422f, -1597f))), 0u <= min(13735u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 96739u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(0u, 89472u, 4294967295u, 0u), vec4<u32>(1u, 0u, 4294967295u, 1u)))), vec3<u32>(1u, 1u, 1u));
    return 1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    var var_0 = arg_1.b.e.xz ^ arg_1.b.e.xz;
    let var_1 = vec2<u32>(arg_1.a.a, arg_1.b.a);
    var var_2 = _wgslsmith_clamp_u32(var_1.x, ~min(arg_1.b.a, var_0.x), ~(~var_1.x));
    var var_3 = Struct_1(1u, _wgslsmith_clamp_i32(func_4(vec2<bool>(true, true), !func_3(arg_1, vec4<bool>(true, false, false, arg_1.d.d), vec4<bool>(arg_1.a.d, arg_1.d.d, false, arg_1.d.d))), firstLeadingBit(arg_3.x), _wgslsmith_mult_i32(i32(-1i) * -arg_0.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, 38176i, 38775i, -2147483647i), vec4<i32>(u_input.c, 27953i, -1i, arg_1.d.b), vec4<bool>(global1.x, arg_1.d.d, global1.x, global1.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -1i, arg_1.d.b, -35888i), vec4<i32>(arg_3.x, u_input.c, u_input.a.x, arg_0.x))))), arg_1.d.c, all(!vec4<bool>(global1.x, arg_1.b.d | arg_1.a.d, all(global1.zw), all(vec2<bool>(false, false)))), ~(~max(abs(vec3<u32>(var_1.x, 0u, 17043u)), abs(vec3<u32>(29139u, 1u, 0u)))));
    var_3 = Struct_1(var_1.x << (~39142u % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(select(-arg_0.zz, u_input.a, global1.yw), ~(arg_0.xz << (var_1 % vec2<u32>(32u))))), arg_1.d.c, !(max(~(-44698i), var_3.b) == ((arg_1.d.b & 1i) & select(-2147483647i, -14571i, var_3.d))), select(vec3<u32>(var_1.x, 1u, ~4294967295u << (_wgslsmith_dot_vec3_u32(var_3.e, vec3<u32>(var_1.x, var_1.x, 5794u)) % 32u)), var_3.e, vec3<bool>(true, firstLeadingBit(arg_1.a.a) <= _wgslsmith_sub_u32(4294967295u, arg_1.b.e.x), true)));
    return 14125i;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a.a, func_2(arg_2.xyy, arg_1, arg_1.d.c.x, firstLeadingBit(_wgslsmith_sub_vec2_i32(arg_2.yx, u_input.a)) >> (_wgslsmith_mod_vec2_u32(~arg_1.b.e.xx, vec2<u32>(arg_1.a.e.x, 4294967295u) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(715f + 718f) + arg_1.b.c.x), _wgslsmith_f_op_f32(arg_1.b.c.x + _wgslsmith_f_op_f32(-arg_1.b.c.x)), _wgslsmith_f_op_f32(-arg_1.c), 707f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1003f, 277f, 842f, arg_1.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, arg_1.c, 161f))))), all(!select(vec2<bool>(arg_1.d.d, true), vec2<bool>(arg_1.b.d, arg_1.d.d), global1.x)), vec3<u32>(firstTrailingBit(4294967295u), 4294967295u, 90926u) & arg_1.d.e);
    let var_1 = ~(vec4<u32>(12636u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 12842u), arg_1.b.e.xz), arg_1.a.e.yz), var_0.a, var_0.e.x) | _wgslsmith_sub_vec4_u32(abs(vec4<u32>(43937u, var_0.a, 25828u, arg_1.a.e.x)) ^ abs(vec4<u32>(arg_1.a.e.x, arg_1.a.e.x, 0u, var_0.a)), min(~vec4<u32>(64586u, var_0.e.x, arg_1.a.e.x, var_0.e.x), vec4<u32>(23093u, 10659u, arg_1.d.e.x, 0u) ^ vec4<u32>(var_0.a, 57388u, 59274u, arg_1.b.e.x))));
    let var_2 = _wgslsmith_div_vec3_f32(var_0.c.zxz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-763f - _wgslsmith_f_op_f32(-1791f - 2481f)))), _wgslsmith_f_op_f32(arg_1.b.c.x * _wgslsmith_f_op_f32(sign(var_0.c.x)))));
    let var_3 = -arg_2;
    global1 = select(vec4<bool>(true, true, false, all(select(vec3<bool>(arg_1.a.d, true, true), global1.ywx, !global1.x))), !vec4<bool>(func_3(arg_1, !vec4<bool>(false, false, true, var_0.d), select(vec4<bool>(arg_1.d.d, true, arg_1.d.d, true), vec4<bool>(true, true, false, arg_1.a.d), vec4<bool>(true, true, true, true))), arg_1.a.d, func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 4u)], Struct_1(arg_1.d.e.x, arg_2.x, arg_1.b.c, false, var_1.wzz), arg_1.b.c.x, Struct_1(var_1.x, arg_0, vec4<f32>(arg_1.a.c.x, -1768f, var_2.x, 1357f), false, arg_1.a.e)), !vec4<bool>(var_0.d, arg_1.a.d, var_0.d, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, var_0.d), vec4<bool>(var_0.d, true, true, false))), !(arg_1.b.d && true)), !select(!select(vec4<bool>(true, false, var_0.d, arg_1.d.d), vec4<bool>(false, true, global1.x, false), global1.x), !select(vec4<bool>(arg_1.b.d, true, var_0.d, true), vec4<bool>(true, false, arg_1.d.d, arg_1.d.d), vec4<bool>(global1.x, true, true, var_0.d)), !(!vec4<bool>(true, global1.x, arg_1.d.d, true))));
    return Struct_1(abs(69459u), i32(-1i) * -(-4311i ^ _wgslsmith_div_i32(-48892i, arg_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_0.c + var_0.c))))), var_0.d, countOneBits(_wgslsmith_add_vec3_u32(~var_0.e | vec3<u32>(var_1.x, arg_1.b.a, var_1.x), ~vec3<u32>(1u, 4294967295u, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~4294967295u), 1u) << (1u % 32u), 4u)], Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(~1u, 0u, ~60076u)), 49936i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(794f, -1548f, 215f, 761f), vec4<f32>(232f, 1325f, 1000f, 687f))))), true, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(8410u, 1u), 1u, ~0u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 13495u, 1u), ~vec3<u32>(1u, 0u, 62990u)))), 1000f, func_1(reverseBits(i32(-1i) * -u_input.b), Struct_2(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(19283u, 51828u, 4294967295u))), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1332f, 447f)), global0[_wgslsmith_index_u32(~countOneBits(1u), 4u)]), vec4<i32>(firstLeadingBit(u_input.a.x), firstTrailingBit(u_input.c), 1i, 22257i ^ (u_input.b << (4294967295u % 32u)))));
    global0 = array<Struct_1, 4>();
    let var_1 = vec3<f32>(var_0.b.c.x, _wgslsmith_f_op_f32(1736f + -1733f), 787f);
    var var_2 = var_0.a;
    let var_3 = max(vec4<i32>(-12951i, var_2.b, abs(81598i), u_input.b), firstTrailingBit((abs(vec4<i32>(var_0.a.b, -1i, -1i, var_0.b.b)) >> (abs(vec4<u32>(var_2.a, var_0.b.e.x, 0u, 70573u)) % vec4<u32>(32u))) | reverseBits(-vec4<i32>(-1i, u_input.c, u_input.c, u_input.a.x))));
    let var_4 = var_3;
    let var_5 = Struct_2(global0[_wgslsmith_index_u32(var_0.b.a >> (~(~(~var_0.a.a)) % 32u), 4u)], Struct_1(~(~0u), var_0.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.d.c), _wgslsmith_f_op_vec4_f32(-var_0.d.c)))), any(global1.zwy) && !global1.x, vec3<u32>(var_0.d.a | var_2.a, ~54619u, 18804u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_2.c.x)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(808f * 2213f)))))), global0[_wgslsmith_index_u32(min(~_wgslsmith_clamp_u32(1u, ~61254u, var_2.a), 1u), 4u)]);
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(36906i, var_2.e.x >> (_wgslsmith_mult_u32(~var_2.e.x, select(_wgslsmith_dot_vec2_u32(var_6.a.e.yx, vec2<u32>(var_0.a.a, var_0.d.a)), _wgslsmith_div_u32(var_6.b.a, 4294967295u), true)) % 32u), var_2.c.xw, _wgslsmith_f_op_vec4_f32(-var_5.a.c), 1u);
}

