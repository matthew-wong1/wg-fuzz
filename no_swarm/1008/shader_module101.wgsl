struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1862f, 883f, 1661f, -1293f);

var<private> global1: f32;

var<private> global2: array<u32, 20>;

var<private> global3: i32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    let var_0 = arg_2.d;
    global3 = arg_2.d.c.x;
    global1 = global0.x;
    let var_1 = var_0.b;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2098f - global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -996f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1621f)))) - _wgslsmith_f_op_f32(-global0.x));
    return u_input.c.x;
}

fn func_2() -> Struct_1 {
    let var_0 = 280f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1558f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, var_0)) * _wgslsmith_f_op_f32(trunc(global0.x))) + global0.x)) + var_0);
    let var_2 = vec4<i32>(u_input.a.x, -_wgslsmith_mult_i32(-2147483647i, u_input.c.x), ~firstLeadingBit(~u_input.a.x | (u_input.c.x << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] % 32u))), func_3(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), Struct_2(u_input.a.xyz, u_input.a.x, Struct_1(_wgslsmith_div_vec3_u32(u_input.e, u_input.e), vec3<bool>(true, true, true), vec3<i32>(-1i, u_input.c.x, 1i) << (vec3<u32>(0u, 34016u, 1u) % vec3<u32>(32u)), -16255i, u_input.d), Struct_1(~vec3<u32>(global2[_wgslsmith_index_u32(0u, 20u)], 4294967295u, 41333u), vec3<bool>(true, true, true), vec3<i32>(-25979i, 25195i, u_input.a.x), -u_input.a.x, global2[_wgslsmith_index_u32(~1u, 20u)]), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true))), Struct_2(-(vec3<i32>(u_input.c.x, 2147483647i, 33168i) | vec3<i32>(1i, u_input.c.x, 1i)), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), Struct_1(vec3<u32>(1u, u_input.b, 0u) | vec3<u32>(u_input.d, 24652u, u_input.e.x), vec3<bool>(true, false, true), u_input.a.xyy, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] << (u_input.d % 32u)), Struct_1(_wgslsmith_mult_vec3_u32(u_input.e, u_input.e), vec3<bool>(true, true, true), u_input.a.xxz, -u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.e.yx, u_input.e.zx)), vec4<bool>(true, false, true, true)), vec2<i32>(u_input.c.x | ~(-1i), _wgslsmith_mod_i32(2147483647i, ~12463i))));
    var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~u_input.c, ~(-vec4<i32>(var_2.x, u_input.c.x, 666i, 17254i)) & abs(vec4<i32>(29495i, 1i, var_2.x, var_2.x))), u_input.a);
    let var_4 = select(u_input.c.x, -u_input.c.x, true);
    return Struct_1(select(abs(u_input.e), u_input.e, !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)) << (select(vec3<u32>(select(7731u, u_input.d, true), u_input.b ^ 1u, 15050u), ~(~u_input.e), false) % vec3<u32>(32u)), !vec3<bool>(any(vec3<bool>(false, true, true)) & any(vec2<bool>(false, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), !any(vec2<bool>(true, true))), vec3<i32>(countOneBits(2147483647i), -2147483647i, -firstLeadingBit(-2147483647i) >> (1u % 32u)), 1i, global2[_wgslsmith_index_u32(max(36416u, max(_wgslsmith_clamp_u32(~4294967295u, 1u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6607u, 20u)], 20u)] % 32u), _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(global2[_wgslsmith_index_u32(50632u, 20u)], 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 20u)]))), reverseBits(~u_input.b))), 20u)]);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = arg_0.d.c;
    var var_1 = arg_0.d.e;
    global3 = _wgslsmith_mult_i32(-1i, u_input.a.x) << (4294967295u % 32u);
    global3 = 56537i;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(993f + global0.x)))) + _wgslsmith_f_op_f32(ceil(566f))) + 242f);
    return Struct_3(var_0.x, Struct_1(~(arg_0.c.a | _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.c.e), arg_0.c.a)), func_2().b, -select(arg_0.a, vec3<i32>(0i, arg_0.c.d, 2147483647i), arg_0.c.b.x) | select(var_0, vec3<i32>(u_input.c.x, u_input.a.x, var_0.x), true), -12136i, select(_wgslsmith_mod_u32(u_input.d, ~4294967295u), 12671u, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.xxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.yyw)) * vec3<f32>(global0.x, global0.x, global0.x))))), arg_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(arg_2 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2))));
    let var_0 = func_4(Struct_2(vec3<i32>(firstLeadingBit(~(-40848i)), abs(max(-2147483647i, u_input.c.x)), 25754i), max(~(~u_input.c.x), _wgslsmith_mult_i32(firstTrailingBit(-45491i), ~arg_1.x)), func_2(), Struct_1(~arg_0, vec3<bool>(true, true, any(vec4<bool>(false, true, true, true))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, arg_1.x), vec3<i32>(0i, -4239i, arg_1.x) << (arg_0 % vec3<u32>(32u))), ~reverseBits(-35053i), 17998u), !vec4<bool>(all(vec2<bool>(false, true)), u_input.d < 70572u, arg_1.x > 0i, func_2().b.x)));
    return func_4(func_4(var_0.d).d).d.d;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    let var_0 = ~reverseBits(u_input.a.xxz);
    global1 = global0.x;
    var var_1 = Struct_3(var_0.x, arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, _wgslsmith_f_op_f32(sign(383f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1094f, -1062f, global0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -924f), 950f, arg_0.x))), func_4(func_4(Struct_2(vec3<i32>(var_0.x, 57715i, u_input.a.x) >> (vec3<u32>(28514u, 0u, global2[_wgslsmith_index_u32(arg_2, 20u)]) % vec3<u32>(32u)), 2147483647i, arg_1, func_1(u_input.e, arg_1.c.xz, vec4<f32>(-271f, global0.x, -1065f, -361f)), !vec4<bool>(arg_1.b.x, arg_1.b.x, true, false))).d).d);
    var var_2 = func_1(vec3<u32>(_wgslsmith_div_u32(0u, u_input.e.x) >> (arg_2 % 32u), global2[_wgslsmith_index_u32(70098u, 20u)], 64021u), arg_1.c.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global0.x, var_1.c.x, 1551f))))))));
    var var_3 = arg_2;
    return vec4<f32>(global0.x, _wgslsmith_f_op_f32(-var_1.c.x), -247f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-249f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-710f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_div_vec3_f32(global0.wxy, vec3<f32>(-418f, 294f, 152f)), func_1(vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 20u)], global2[_wgslsmith_index_u32(u_input.b, 20u)]), u_input.c.zx, vec4<f32>(global0.x, 1000f, global0.x, global0.x)), _wgslsmith_mod_u32(62743u, 27433u))))));
    var var_1 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(abs(u_input.a.x), ~0i, ~u_input.a.x) ^ vec3<i32>(1i, 1i, ~u_input.c.x), -u_input.a.wyz), -((u_input.c.x >> (min(4294967295u, 4294967295u) % 32u)) | -59913i), func_2(), Struct_1(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(76268u, 1u, 0u), vec3<u32>(u_input.e.x, 6772u, 8342u))) | _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 92473u), u_input.e), vec3<bool>(true, func_2().b.x, !(u_input.b < u_input.d)), reverseBits(u_input.a.zxz), func_4(Struct_2(vec3<i32>(22858i, 2147483647i, u_input.c.x), _wgslsmith_sub_i32(-2147483647i, u_input.a.x), func_1(u_input.e, u_input.c.wx, vec4<f32>(global0.x, var_0.x, var_0.x, 396f)), Struct_1(vec3<u32>(92937u, 61251u, 47392u), vec3<bool>(false, true, true), vec3<i32>(-2147483647i, -2147483647i, u_input.c.x), -17811i, 1u), func_4(Struct_2(vec3<i32>(-53208i, 6210i, u_input.c.x), 2147483647i, Struct_1(vec3<u32>(53646u, 4294967295u, u_input.d), vec3<bool>(true, true, false), u_input.c.wwx, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28307u, 20u)], 20u)], 20u)], 20u)]), Struct_1(u_input.e, vec3<bool>(true, false, true), u_input.a.yxw, u_input.c.x, global2[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<bool>(true, false, true, true))).d.e)).d.a.x, countOneBits(38184u)), vec4<bool>(true, any(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true)))), true, u_input.a.x >= (~u_input.a.x ^ u_input.a.x)));
    global2 = array<u32, 20>();
    global3 = ~(i32(-1i) * -1i);
    var var_2 = Struct_1(var_1.c.a, var_1.d.b, ~countOneBits(countOneBits(vec3<i32>(u_input.a.x, u_input.c.x, 20881i))), 26045i, ~u_input.e.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(60021u, 20u)], var_1.d.a.x, 0u, 1u)), ~vec4<u32>(1u, var_1.d.e, global2[_wgslsmith_index_u32(25058u, 20u)], global2[_wgslsmith_index_u32(9879u, 20u)]), vec4<u32>(u_input.b, 4294967295u, 9163u, 4294967295u)), ~vec4<u32>(u_input.e.x, global2[_wgslsmith_index_u32(54850u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(36947u, 20u)])) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d.a.xz, reverseBits(~53668i), 2314i, _wgslsmith_mult_u32(u_input.e.x, ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_1.d.e, 20u)], 34527u) << (44077u % 32u)));
}

