struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, false, true, true, true, true, false, true, false, true, true, true, true, false, false, false, true, false, true, true, false, false, false, true, false, true, false, true, true, true, false);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: u32 = 1u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = vec2<bool>(false, true);
    return all(!select(vec4<bool>(global1.x, true, true, true || arg_0.c.x), vec4<bool>(all(vec4<bool>(true, global1.x, arg_0.c.x, true)), global0[_wgslsmith_index_u32(u_input.c, 31u)] && false, any(arg_0.c), arg_0.c.x), !any(arg_0.c)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = ~max(min(arg_2.b.xx >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)), arg_2.b.xz), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, 0u), _wgslsmith_div_vec2_u32(arg_2.b.yy, arg_2.b.ww)));
    var var_2 = Struct_3(Struct_2(arg_0.a.a, arg_0.a.b, u_input.c), vec4<bool>(arg_3, (21472u != arg_2.b.x) || all(!var_0.b), func_3(Struct_1(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(21987u, 31u)], arg_0.b.x), arg_0.b.ywx, true), u_input.b, var_0.b.zy, vec3<i32>(var_0.c.x, u_input.d.x, u_input.e.x) ^ vec3<i32>(u_input.d.x, arg_1, u_input.d.x))), false), vec4<i32>(var_0.c.x, 1i, -1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, 2147483647i), var_0.c.yx))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.c.xzx, u_input.d.wxz << (vec3<u32>(1u, 26099u, arg_2.b.x) % vec3<u32>(32u))), abs(-1i) & _wgslsmith_dot_vec3_i32(u_input.d.zzw, u_input.a.xxz), firstTrailingBit(u_input.e.x), ~8775i & _wgslsmith_mult_i32(var_0.c.x, 2147483647i)));
    var var_3 = var_0.b;
    var var_4 = _wgslsmith_sub_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a.b.x, 0u), vec2<u32>(u_input.b.x, arg_2.c)) | firstTrailingBit(vec2<u32>(19709u, 28432u))), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(var_2.a.c, 1u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 110121u), vec2<u32>(arg_2.b.x, 79208u), vec2<u32>(arg_0.a.b.x, u_input.b.x)))) | firstTrailingBit(abs(firstLeadingBit(abs(vec2<u32>(var_2.a.c, arg_2.b.x)))));
    return u_input.d;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_3(arg_1, !vec4<bool>(21665u >= u_input.c, any(vec3<bool>(global1.x, true, global1.x)) && false, !(global0[_wgslsmith_index_u32(13441u, 31u)] | global0[_wgslsmith_index_u32(4294967295u, 31u)]), true), vec4<i32>(u_input.d.x, arg_2.x, abs(-1i), _wgslsmith_dot_vec4_i32(u_input.a, func_4(Struct_3(arg_1, vec4<bool>(true, global1.x, global1.x, global0[_wgslsmith_index_u32(arg_1.b.x, 31u)]), vec4<i32>(16722i, arg_2.x, u_input.a.x, arg_2.x)), -31381i & u_input.a.x, arg_1, func_3(Struct_1(vec3<bool>(false, false, false), arg_1.b.wzz, vec2<bool>(false, true), vec3<i32>(-2147483647i, 26087i, -10669i)))))));
    global1 = vec2<bool>(!global1.x, true);
    global2 = ~arg_1.c;
    var var_1 = arg_0;
    let var_2 = Struct_3(Struct_2(775f, select(arg_1.b, arg_1.b, false), 4294967295u), vec4<bool>(all(select(vec3<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], false), vec3<bool>(var_0.b.x, true, true), var_0.b.x)), global0[_wgslsmith_index_u32(~4294967295u, 31u)], var_0.b.x, any(!select(vec3<bool>(true, false, false), var_0.b.zxz, false))), ~vec4<i32>(~(u_input.a.x << (var_0.a.b.x % 32u)), 1i, ~firstLeadingBit(var_0.c.x), reverseBits(u_input.e.x & u_input.d.x)));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(52367u, arg_1.b.x), 31u)];
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = Struct_1(vec3<bool>(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1000f)))) != var_0.a, !any(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0.c, 31u)]), vec3<bool>(global1.x, global1.x, false), true))), u_input.b, select(vec2<bool>(global0[_wgslsmith_index_u32(277u, 31u)], global1.x), vec2<bool>(true, false), vec2<bool>(select(func_2(vec2<f32>(var_0.a, arg_1.a), arg_1, u_input.d.xyx), u_input.a.x > -2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c, 91720u), 31u)]), global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 41911u), vec2<u32>(arg_1.c, 2059u)), u_input.b.x), 31u)])), _wgslsmith_sub_vec3_i32(vec3<i32>(~(43687i | u_input.a.x), arg_0, ~0i | firstLeadingBit(u_input.d.x)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_0, arg_0, -47147i)), ~u_input.d.zzx) | _wgslsmith_div_vec3_i32(vec3<i32>(-38845i, -28130i, -30433i), abs(u_input.a.xwz))));
    global2 = ~var_0.c;
    let var_2 = vec2<i32>(0i, _wgslsmith_dot_vec2_i32(var_1.d.xx, u_input.a.zz >> (vec2<u32>(arg_1.c, 1u) % vec2<u32>(32u))) | _wgslsmith_mult_i32(-abs(19701i), select(firstLeadingBit(var_1.d.x), var_1.d.x, global1.x)));
    var var_3 = var_1.d;
    return Struct_1(var_1.a, select(arg_1.b.wxx >> (arg_1.b.wyw % vec3<u32>(32u)), var_0.b.yzw, !(!(global1.x || var_1.c.x))), var_1.a.yy, u_input.e.yyw);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> Struct_2 {
    global2 = arg_0.b.x;
    var var_0 = _wgslsmith_clamp_vec3_i32(-u_input.a.zxx, _wgslsmith_mult_vec3_i32(~func_1(_wgslsmith_add_i32(-51818i, -33014i), Struct_2(-1730f, vec4<u32>(108985u, u_input.c, u_input.c, 4472u), u_input.b.x)).d, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.d, vec3<i32>(-1i, 2147483647i, -17570i)), reverseBits(vec3<i32>(u_input.a.x, -57106i, -1i)) | _wgslsmith_mult_vec3_i32(u_input.a.xxx, arg_0.d))), _wgslsmith_div_vec3_i32(max(vec3<i32>(countOneBits(11354i), firstLeadingBit(arg_0.d.x), u_input.e.x), -reverseBits(u_input.a.zyy)), -vec3<i32>(1i, u_input.d.x >> (4294967295u % 32u), arg_0.d.x)));
    var_0 = ~vec3<i32>(u_input.e.x, -(~u_input.d.x) ^ _wgslsmith_add_i32(var_0.x, abs(u_input.d.x)), -40421i);
    global2 = arg_0.b.x;
    var var_1 = ~(~_wgslsmith_add_vec2_i32(vec2<i32>(select(-2147483647i, 25571i, false), -var_0.x), min(_wgslsmith_clamp_vec2_i32(arg_0.d.zx, arg_0.d.xz, arg_0.d.yz), vec2<i32>(var_0.x, 0i))));
    return Struct_2(-774f, vec4<u32>(~(arg_0.b.x << (31632u % 32u)) << (19352u % 32u), 4294967295u, arg_0.b.x, ~abs(u_input.c << (arg_0.b.x % 32u))), 1u);
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(1060f - arg_1.a);
    let var_2 = ~func_5(Struct_1(vec3<bool>(true, any(vec2<bool>(false, true)), !global0[_wgslsmith_index_u32(arg_1.c, 31u)]), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, arg_1.b.x, 1u, var_0), vec4<u32>(4294967295u, u_input.b.x, 9253u, var_0)), var_0 ^ 0u, u_input.b.x), vec2<bool>(true, true), ~u_input.a.zzx & u_input.d.xwy), global0[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 123588u, var_0, 41596u), vec4<u32>(var_0, u_input.b.x, 29516u, 0u)) ^ u_input.b.x) & countOneBits(~1u), 31u)], !select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 31u)], true, false), select(vec4<bool>(false, global1.x, true, global0[_wgslsmith_index_u32(var_0, 31u)]), vec4<bool>(global1.x, false, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(67388u, 31u)], global1.x, false)), true)).c;
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, arg_1.a, arg_1.a)))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -110f), 1989f)));
    return true;
}

fn func_7(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> vec2<i32> {
    return select(~vec2<i32>(u_input.d.x, firstLeadingBit(51250i)), _wgslsmith_sub_vec2_i32(u_input.e.xx, firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.e.xz | vec2<i32>(u_input.a.x, u_input.d.x), -vec2<i32>(u_input.d.x, u_input.a.x)))), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstLeadingBit(u_input.c);
    let var_0 = func_7(global1.x, vec3<f32>(1f, 1f, 1f), func_6(u_input.e.x, func_5(func_1(-u_input.a.x, Struct_2(1012f, vec4<u32>(0u, 0u, 0u, u_input.c), 0u)), !(true | global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), !(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(14877u, 31u)])))));
    var var_1 = !vec4<bool>(global1.x | !(!global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), !global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x) >> (u_input.c % 32u), 31u)], global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(u_input.c, 29166u) ^ ~u_input.b.x), 31u)], global1.x & true);
    var var_2 = func_1(-25260i, Struct_2(-635f, ~(~vec4<u32>(1u, 1626u, u_input.b.x, u_input.c) ^ abs(vec4<u32>(13627u, u_input.b.x, u_input.c, 24386u))), u_input.c));
    var_1 = !vec4<bool>(all(select(vec3<bool>(false, var_1.x, var_2.a.x), vec3<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 31u)], false, false), true)), any(select(vec4<bool>(false, var_2.c.x, global0[_wgslsmith_index_u32(3360u, 31u)], var_2.c.x), vec4<bool>(true, true, global1.x, false), !global0[_wgslsmith_index_u32(50770u, 31u)])), ~func_5(Struct_1(vec3<bool>(false, var_2.a.x, false), u_input.b, vec2<bool>(global1.x, true), var_2.d), global0[_wgslsmith_index_u32(0u, 31u)], vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(1u, 31u)], true, true)).b.x >= (countOneBits(u_input.b.x) >> (max(31246u, 20332u) % 32u)), !func_6(i32(-1i) * -16750i, func_5(Struct_1(vec3<bool>(true, false, global0[_wgslsmith_index_u32(9262u, 31u)]), u_input.b, vec2<bool>(true, false), vec3<i32>(var_0.x, 1i, 8292i)), false, vec4<bool>(global1.x, true, true, global0[_wgslsmith_index_u32(var_2.b.x, 31u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, -854f, firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(51286i, -30595i, var_0.x), firstTrailingBit(var_2.d))), ~_wgslsmith_dot_vec4_i32(u_input.d, ~(~u_input.e)), 26337u);
}

