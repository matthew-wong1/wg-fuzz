struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-33084i, -1i));

var<private> global4: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(1u, 3937u, 1u, 4294967295u), vec4<u32>(1u, 0u, 73554u, 33263u), vec4<u32>(85327u, 37965u, 14496u, 15109u), vec4<u32>(62259u, 0u, 18021u, 341u), vec4<u32>(1u, 0u, 48269u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 17562u), vec4<u32>(1u, 53094u, 0u, 0u), vec4<u32>(19969u, 4294967295u, 0u, 4294967295u), vec4<u32>(60951u, 1u, 1u, 38721u), vec4<u32>(1u, 0u, 1u, 74302u), vec4<u32>(97755u, 1592u, 4294967295u, 4294967295u), vec4<u32>(85013u, 34573u, 10466u, 4294967295u), vec4<u32>(62737u, 12221u, 0u, 20141u), vec4<u32>(1u, 28120u, 14956u, 45403u), vec4<u32>(18861u, 1u, 25167u, 4294967295u), vec4<u32>(26914u, 0u, 1u, 59766u), vec4<u32>(20129u, 0u, 60831u, 23756u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2674f, 307f, arg_1.b.x)))) * arg_1.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(576f, arg_1.b.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0, arg_1.b)))));
    let var_2 = Struct_2(Struct_1(firstLeadingBit(global3.a)), Struct_1(~firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(14123u, 31u)], -1i))), Struct_1(global3.a), Struct_1(min(firstTrailingBit(-u_input.b), vec2<i32>(select(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 6365i, false), min(2147483647i, u_input.b.x)))));
    let var_3 = var_2;
    let var_4 = var_2;
    return select(~(~vec3<u32>(127453u, countOneBits(u_input.c.x), countOneBits(10913u))), ~max(countOneBits(vec3<u32>(u_input.c.x, 119415u, u_input.c.x)), vec3<u32>(~u_input.c.x, u_input.c.x, ~33703u)), !global1[_wgslsmith_index_u32(abs(u_input.c.x) ^ ~(~4294967295u), 1u)]);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> vec2<bool> {
    let var_0 = !select(!(!arg_2), true, !(!global1[_wgslsmith_index_u32(u_input.c.x, 1u)])) && !(!any(vec4<bool>(false, global2.x, false, global1[_wgslsmith_index_u32(32267u, 1u)])));
    var var_1 = Struct_4(false);
    global2 = vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(vec3<bool>(!var_0, global1[_wgslsmith_index_u32(1u, 1u)], true), Struct_3(vec3<bool>(var_0, true, global1[_wgslsmith_index_u32(36807u, 1u)]), vec3<f32>(393f, -907f, 1662f), -11835i)), (vec3<u32>(arg_1, u_input.c.x, u_input.c.x) | vec3<u32>(arg_1, u_input.c.x, 4294967295u)) | vec3<u32>(~arg_1, 24253u, firstLeadingBit(arg_1))), 1u)], false);
    global3 = arg_0.b;
    let var_2 = Struct_3(select(select(!select(vec3<bool>(var_0, true, global2.x), vec3<bool>(false, var_0, var_1.a), vec3<bool>(true, var_0, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, var_1.a, true), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 1u)], true), arg_2), !vec3<bool>(true, true, var_1.a), all(vec2<bool>(var_1.a, global1[_wgslsmith_index_u32(4294967295u, 1u)])))), vec3<bool>(true, !global1[_wgslsmith_index_u32(~0u, 1u)], global2.x), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1303f)), _wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(select(-159f, -561f, global1[_wgslsmith_index_u32(arg_1, 1u)]))))), vec3<bool>(true, false, var_1.a))), -global0[_wgslsmith_index_u32(37305u, 31u)]);
    return vec2<bool>(true, !var_0);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(reverseBits(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(70249u, 31u)]), vec2<i32>(u_input.a, global3.a.x), vec2<i32>(u_input.b.x, arg_2.d.a.x)), u_input.d, func_2(arg_2, u_input.c.x, global2.x)))), arg_1.c, arg_1.a, Struct_1(~(vec2<i32>(-1i) * -vec2<i32>(1i, 0i))));
    let var_2 = Struct_3(select(!(!vec3<bool>(true, global2.x, global1[_wgslsmith_index_u32(1u, 1u)])), vec3<bool>(true, all(vec3<bool>(var_0, var_0, true)), true), all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(31596u, 1u)], global2.x), vec3<bool>(false, false, false), select(vec3<bool>(true, true, var_0), vec3<bool>(false, true, false), var_0)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(2008f, 214f)))), 2147483647i);
    var var_3 = Struct_3(vec3<bool>(!all(!vec3<bool>(global2.x, var_0, false)), u_input.c.x >= ~_wgslsmith_add_u32(u_input.c.x, 22940u), true | (-var_2.c > global3.a.x)), var_2.b, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mult_i32(1i, 0i)), _wgslsmith_add_i32(arg_2.b.a.x ^ _wgslsmith_mult_i32(-1i, global3.a.x), reverseBits(15903i))));
    var var_4 = Struct_1(~vec2<i32>(~1i, -12187i));
    return Struct_1(vec2<i32>(~abs(0i), ~reverseBits(_wgslsmith_mult_i32(var_3.c, 1i))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = Struct_4(true);
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f) - 546f), Struct_2(Struct_1(-(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], -46588i))), arg_0, func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-430f + 1000f))), Struct_2(arg_0, arg_0, func_1(2368f, Struct_2(Struct_1(vec2<i32>(u_input.b.x, 18637i)), arg_0, arg_0, arg_0), Struct_2(arg_0, arg_0, arg_0, Struct_1(vec2<i32>(global3.a.x, 25157i)))), arg_0), Struct_2(arg_0, arg_0, Struct_1(global3.a), Struct_1(arg_0.a))), func_1(429f, Struct_2(Struct_1(vec2<i32>(-2147483647i, -1i)), Struct_1(u_input.b), func_1(1120f, Struct_2(arg_0, arg_0, Struct_1(arg_0.a), arg_0), Struct_2(Struct_1(arg_0.a), arg_0, Struct_1(vec2<i32>(arg_2.x, 2147483647i)), Struct_1(arg_0.a))), func_1(1055f, Struct_2(Struct_1(vec2<i32>(global3.a.x, global0[_wgslsmith_index_u32(arg_3.x, 31u)])), arg_0, Struct_1(vec2<i32>(-10929i, -18491i)), arg_0), Struct_2(arg_0, Struct_1(arg_0.a), arg_0, arg_0))), Struct_2(Struct_1(arg_0.a), arg_0, Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], global3.a.x)), func_1(-708f, Struct_2(arg_0, arg_0, Struct_1(u_input.b), arg_0), Struct_2(arg_0, Struct_1(global3.a), arg_0, Struct_1(vec2<i32>(1i, 0i))))))), Struct_2(Struct_1(arg_0.a), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_2.x) << (vec2<u32>(29577u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(-48493i, global0[_wgslsmith_index_u32(1u, 31u)]))), Struct_1(vec2<i32>(-2147483647i, -36952i) >> (vec2<u32>(u_input.c.x, 75920u) % vec2<u32>(32u))), arg_0));
    global3 = Struct_1(vec2<i32>(1i, var_1.a.x ^ arg_0.a.x) & arg_2);
    let var_2 = ~(~global4[_wgslsmith_index_u32(~arg_3.x, 17u)]);
    global3 = var_1;
    return firstLeadingBit(61339i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 17>();
    let var_0 = max(1u, u_input.c.x ^ ~(~1u)) & ~17357u;
    let var_1 = Struct_3(!select(vec3<bool>(true, true, true), !select(vec3<bool>(global1[_wgslsmith_index_u32(47487u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], true), vec3<bool>(global2.x, true, true), vec3<bool>(true, global2.x, false)), any(!vec3<bool>(true, false, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f - _wgslsmith_f_op_f32(f32(-1f) * -1135f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-727f * _wgslsmith_f_op_f32(floor(1731f)))), 1141f), -_wgslsmith_sub_i32(func_4(func_1(1777f, Struct_2(Struct_1(u_input.b), Struct_1(vec2<i32>(-30382i, 2147483647i)), Struct_1(u_input.b), Struct_1(global3.a)), Struct_2(Struct_1(global3.a), Struct_1(u_input.b), Struct_1(u_input.b), Struct_1(u_input.d))), any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(var_0, 1u)], true)), _wgslsmith_sub_vec2_i32(global3.a, global3.a), _wgslsmith_add_vec3_u32(vec3<u32>(11182u, 4294967295u, var_0), vec3<u32>(var_0, 0u, var_0))), global3.a.x));
    var var_2 = firstTrailingBit(0i);
    var var_3 = _wgslsmith_add_vec3_u32(min(vec3<u32>(min(u_input.c.x, 1u), 0u >> (u_input.c.x % 32u), 1u), vec3<u32>(var_0, u_input.c.x, 1u)) ^ ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(18914u, var_0, var_0), vec3<u32>(u_input.c.x, 0u, u_input.c.x))), ~vec3<u32>(4294967295u, 20539u, _wgslsmith_dot_vec3_u32(vec3<u32>(11121u, u_input.c.x, u_input.c.x), max(vec3<u32>(var_0, 14388u, 17314u), vec3<u32>(4294967295u, 48544u, 1u)))));
    var var_4 = var_1.b.zy;
    let var_5 = Struct_2(Struct_1(-reverseBits(~vec2<i32>(u_input.d.x, u_input.a))), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f) - _wgslsmith_f_op_f32(floor(var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), Struct_2(Struct_1(func_1(-164f, Struct_2(Struct_1(global3.a), Struct_1(vec2<i32>(u_input.b.x, global3.a.x)), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(u_input.a, -33626i))), Struct_2(Struct_1(global3.a), Struct_1(global3.a), Struct_1(vec2<i32>(32908i, global0[_wgslsmith_index_u32(16023u, 31u)])), Struct_1(vec2<i32>(2147483647i, var_1.c)))).a), func_1(_wgslsmith_f_op_f32(ceil(var_4.x)), Struct_2(Struct_1(vec2<i32>(global3.a.x, u_input.b.x)), Struct_1(global3.a), Struct_1(u_input.d), Struct_1(vec2<i32>(global3.a.x, 2147483647i))), Struct_2(Struct_1(global3.a), Struct_1(vec2<i32>(global3.a.x, global3.a.x)), Struct_1(u_input.b), Struct_1(global3.a))), Struct_1(vec2<i32>(0i, global3.a.x)), Struct_1(~global3.a)), Struct_2(func_1(var_1.b.x, Struct_2(Struct_1(u_input.d), Struct_1(global3.a), Struct_1(vec2<i32>(0i, global0[_wgslsmith_index_u32(1u, 31u)])), Struct_1(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(25607u, 31u)]))), Struct_2(Struct_1(vec2<i32>(15042i, u_input.a)), Struct_1(global3.a), Struct_1(global3.a), Struct_1(vec2<i32>(u_input.a, -101139i)))), Struct_1(global3.a), Struct_1(global3.a), Struct_1(~vec2<i32>(var_1.c, global0[_wgslsmith_index_u32(var_3.x, 31u)])))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -541f)))), Struct_2(Struct_1(vec2<i32>(-28824i, global0[_wgslsmith_index_u32(0u, 31u)])), func_1(var_4.x, Struct_2(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], global3.a.x)), Struct_1(vec2<i32>(global3.a.x, -2147483647i)), Struct_1(vec2<i32>(u_input.d.x, 9411i)), Struct_1(vec2<i32>(var_1.c, u_input.a))), Struct_2(Struct_1(global3.a), Struct_1(global3.a), Struct_1(vec2<i32>(52837i, global0[_wgslsmith_index_u32(67305u, 31u)])), Struct_1(u_input.d))), Struct_1(u_input.d), func_1(_wgslsmith_f_op_f32(step(-1019f, var_4.x)), Struct_2(Struct_1(u_input.d), Struct_1(vec2<i32>(global3.a.x, var_1.c)), Struct_1(vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(var_1.c, -1i))), Struct_2(Struct_1(global3.a), Struct_1(vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.c.x, 31u)])), Struct_1(u_input.b), Struct_1(u_input.b)))), Struct_2(func_1(_wgslsmith_div_f32(370f, 230f), Struct_2(Struct_1(vec2<i32>(u_input.a, var_1.c)), Struct_1(vec2<i32>(u_input.b.x, 77349i)), Struct_1(global3.a), Struct_1(u_input.b)), Struct_2(Struct_1(global3.a), Struct_1(vec2<i32>(var_1.c, 0i)), Struct_1(global3.a), Struct_1(vec2<i32>(u_input.a, global3.a.x)))), func_1(_wgslsmith_f_op_f32(exp2(var_4.x)), Struct_2(Struct_1(vec2<i32>(global3.a.x, -32745i)), Struct_1(vec2<i32>(var_1.c, -1i)), Struct_1(vec2<i32>(-1i, -2147483647i)), Struct_1(global3.a)), Struct_2(Struct_1(u_input.d), Struct_1(u_input.d), Struct_1(vec2<i32>(u_input.b.x, -1i)), Struct_1(vec2<i32>(45686i, var_1.c)))), Struct_1(global3.a | vec2<i32>(1i, var_1.c)), func_1(-702f, Struct_2(Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(u_input.d.x, global0[_wgslsmith_index_u32(1u, 31u)])), Struct_1(u_input.b), Struct_1(global3.a)), Struct_2(Struct_1(vec2<i32>(12986i, var_1.c)), Struct_1(u_input.d), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], 46254i)), Struct_1(u_input.d))))), Struct_1(u_input.d));
    global0 = array<i32, 31>();
    var var_6 = vec2<u32>(abs(~17969u), ~10566u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -reverseBits(vec3<i32>(global3.a.x, -2147483647i, 0i)), abs(~(~(~var_6.x))));
}

