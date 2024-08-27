struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(576f, 1729f), vec2<f32>(716f, 368f), vec2<f32>(1330f, 359f), vec2<f32>(430f, -3174f), vec2<f32>(-646f, -180f), vec2<f32>(1000f, 1089f), vec2<f32>(-1000f, 420f), vec2<f32>(-687f, 369f), vec2<f32>(-1113f, 881f), vec2<f32>(-968f, 474f), vec2<f32>(807f, 1751f), vec2<f32>(1164f, 657f), vec2<f32>(-750f, 638f), vec2<f32>(-570f, -368f), vec2<f32>(-749f, 1283f), vec2<f32>(163f, -1468f), vec2<f32>(198f, -248f), vec2<f32>(-277f, -1289f), vec2<f32>(-801f, 224f));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(23994u, 1u, 80937u, 9482u), vec3<i32>(1i, 28850i, 2147483647i), vec4<bool>(true, true, false, true), vec3<u32>(46629u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec3<i32>(22247i, 51582i, -1i), vec4<bool>(true, false, true, false), vec3<u32>(31593u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(38452u, 1652u, 37451u, 73622u), vec3<i32>(2147483647i, -47285i, 19853i), vec4<bool>(true, false, false, false), vec3<u32>(81684u, 12597u, 0u)), Struct_1(vec4<u32>(11645u, 0u, 3229u, 18911u), vec3<i32>(0i, -36064i, -16940i), vec4<bool>(true, false, true, false), vec3<u32>(86988u, 14973u, 2174u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 24968u, 4294967295u), vec3<i32>(-1i, -22274i, 0i), vec4<bool>(true, false, false, false), vec3<u32>(71322u, 73553u, 42134u)), Struct_1(vec4<u32>(1u, 93097u, 59258u, 42964u), vec3<i32>(8933i, -35434i, -22677i), vec4<bool>(false, true, true, true), vec3<u32>(1u, 40571u, 9742u)), Struct_1(vec4<u32>(42683u, 101455u, 1u, 149861u), vec3<i32>(2147483647i, 2147483647i, -4236i), vec4<bool>(false, true, false, true), vec3<u32>(1u, 4294967295u, 50435u)), Struct_1(vec4<u32>(51484u, 1901u, 42063u, 90028u), vec3<i32>(-51643i, 65628i, 21446i), vec4<bool>(false, false, true, false), vec3<u32>(4294967295u, 4294967295u, 62u)), Struct_1(vec4<u32>(1u, 13190u, 0u, 4294967295u), vec3<i32>(26154i, i32(-2147483648), -440i), vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 1u, 70710u, 37879u), vec3<i32>(53814i, 11066i, 825i), vec4<bool>(true, true, true, false), vec3<u32>(76505u, 1u, 9901u)), Struct_1(vec4<u32>(71980u, 126870u, 1u, 103254u), vec3<i32>(30108i, -68109i, 25315i), vec4<bool>(true, false, false, true), vec3<u32>(30978u, 1u, 1u)));

var<private> global2: vec4<bool>;

var<private> global3: array<f32, 17>;

var<private> global4: array<i32, 7> = array<i32, 7>(-1i, 1i, 3938i, 0i, 21998i, 0i, -9570i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, max(arg_1.x, arg_1.x), _wgslsmith_add_u32(min(24039u >> (arg_1.x % 32u), ~arg_1.x), ~(arg_1.x << (arg_1.x % 32u)))), 4294967295u);
    var var_1 = -1330f;
    let var_2 = arg_0;
    global0 = array<vec2<f32>, 19>();
    var var_3 = abs(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(23582u, arg_1.x), vec2<u32>(0u, 0u) << (arg_1.yz % vec2<u32>(32u))), reverseBits(~vec2<u32>(arg_1.x, arg_1.x)))) != ~(~(~arg_1.x));
    return global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(0u | select(arg_1.x, arg_1.x, global2.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(5682u, 15360u), vec2<u32>(59112u, arg_1.x))) & arg_1.x), 11u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = var_0;
    var var_3 = Struct_1(vec4<u32>(~countOneBits(1u), _wgslsmith_dot_vec3_u32(arg_0.a.zyz, vec3<u32>(arg_1.a.x, ~var_0.a.x, ~0u)), var_1.d.x, 4294967295u), _wgslsmith_add_vec3_i32(arg_0.b, ~vec3<i32>(-2147483647i, _wgslsmith_div_i32(1698i, u_input.a), ~23605i)), select(arg_1.c, var_1.c, select(vec4<bool>(all(vec4<bool>(true, var_2.c.x, false, true)), all(var_2.c), false, false), select(vec4<bool>(false, var_0.c.x, arg_1.c.x, true), var_1.c, false), arg_0.c.x)), abs(vec3<u32>(firstTrailingBit(1u), 42431u, var_1.d.x)));
    let var_4 = select(true, 71884u <= max(~_wgslsmith_dot_vec3_u32(var_3.a.yzy, vec3<u32>(30505u, 4294967295u, arg_1.d.x)), _wgslsmith_mod_u32(~51920u, arg_0.d.x << (4294967295u % 32u))), false & var_2.c.x);
    return var_3.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = 1u;
    var var_1 = Struct_1(vec4<u32>(~1u, select(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(104611u, arg_1.d.x), func_3(arg_1, global1[_wgslsmith_index_u32(15661u, 11u)])), ~(~arg_1.d.x), !all(arg_0.c.zyx)), ~arg_0.a.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(47872u, arg_1.a.x), _wgslsmith_clamp_u32(42812u, arg_0.d.x, arg_0.d.x)), _wgslsmith_dot_vec4_u32(arg_0.a, arg_1.a))), _wgslsmith_add_vec3_i32(abs(u_input.c.wxz), countOneBits(vec3<i32>(-arg_1.b.x, 97968i, ~11230i))), !select(select(arg_1.c, !vec4<bool>(global2.x, true, global2.x, global2.x), true), !arg_0.c, all(func_1(2147483647i, vec3<u32>(53943u, arg_0.d.x, arg_1.a.x)).c)), arg_1.a.yxy);
    var var_2 = vec3<f32>(434f, global3[_wgslsmith_index_u32(max(35449u, ~_wgslsmith_mod_u32(arg_1.a.x, var_1.a.x)) | ~1u, 17u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(54219u, 17u)], global3[_wgslsmith_index_u32(14783u, 17u)])))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.d.x, 17u)])))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 96143u, 4294967295u), ~var_1.d), ~(~var_1.d)), 17u)]));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, firstTrailingBit(arg_1.d.x), ~var_1.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.a.xwz, vec3<u32>(arg_1.d.x, arg_1.d.x, 52737u)), vec3<u32>(1u, 1u, 1u) >> (arg_0.a.zwy % vec3<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~countOneBits(~vec4<u32>(4294967295u, var_1.a.x, arg_0.a.x, 4294967295u)), _wgslsmith_mult_vec4_u32(arg_1.a, arg_0.a ^ var_1.a) | arg_1.a, arg_0.a)), 11u)];
    global2 = !select(func_1(~var_3.b.x, abs(arg_0.a.wzw)).c, !func_1(~1i, ~var_3.a.xzz).c, !(!all(vec3<bool>(arg_0.c.x, false, arg_0.c.x))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~func_2(global1[_wgslsmith_index_u32(max(95137u, 4294967295u), 11u)], func_1(global4[_wgslsmith_index_u32(27537u, 7u)], vec3<u32>(77369u, 1u, 3503u)))), abs(_wgslsmith_mult_vec3_i32(abs(reverseBits(vec3<i32>(u_input.b.x, 2147483647i, -49796i))), u_input.c.xzz)), func_1(max(1i, global4[_wgslsmith_index_u32(13760u, 7u)]), vec3<u32>(57977u, max(1u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), 1u)).c, ~(~abs(vec3<u32>(1u, 1u, 1u))));
    global0 = array<vec2<f32>, 19>();
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(var_0.d.x), 1u), 969u, ~(~89566u), ~(~var_0.d.x)), abs(func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 42644u), 11u)], var_0))), select(firstLeadingBit(~(u_input.b >> (var_0.d % vec3<u32>(32u)))), -var_0.b, vec3<bool>(var_0.c.x, true, true)), var_0.c, vec3<u32>(var_0.d.x, var_0.a.x, 1u));
    var var_2 = func_1(45378i, var_1.d).b;
    var var_3 = ~var_1.d.x > (~var_1.a.x << (_wgslsmith_div_u32(var_1.d.x << (~1u % 32u), func_1(~var_0.b.x, vec3<u32>(9067u, var_0.d.x, 4294967295u)).a.x) % 32u));
    let var_4 = func_1(~(~_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(68962i, -33306i, -31608i, u_input.c.x), vec4<i32>(44784i, u_input.c.x, 0i, -4003i)))), ~var_1.a.wxw);
    var var_5 = !select(var_4.c, !select(var_0.c, var_0.c, !var_1.c), var_1.c.x);
    var var_6 = Struct_1(vec4<u32>(var_0.a.x, var_4.a.x, _wgslsmith_add_u32(var_0.d.x, ~var_4.d.x << (var_4.a.x % 32u)), abs(max(var_0.a.x, _wgslsmith_add_u32(0u, var_1.d.x)))), u_input.b, func_1(-_wgslsmith_div_i32(-1i, func_1(1i, vec3<u32>(var_1.d.x, 34477u, 68608u)).b.x), abs(var_0.a.xyy)).c, vec3<u32>(var_4.a.x, 34511u << (~var_1.d.x % 32u), var_0.a.x));
    global2 = vec4<bool>(select(var_5.x, var_1.c.x, global3[_wgslsmith_index_u32(~(~var_6.a.x), 17u)] != _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(86515u, 17u)])), select(true, true, true) && !(!any(var_5.zx)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-967i, ~firstLeadingBit(-2147483647i)) >> (~var_1.a.x % 32u), max(~1u, ~4294967295u), var_2.x);
}

