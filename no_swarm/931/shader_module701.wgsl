struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(i32(-2147483648), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -13245i, 1i, -1i)), Struct_1(23751i, vec2<bool>(true, false), vec4<i32>(5045i, 8351i, 20464i, -88101i)), Struct_1(-10997i, vec2<bool>(false, false), vec4<i32>(-10186i, -55802i, -52876i, 1i)), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec4<i32>(2147483647i, -30445i, 5217i, -14374i)), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec4<i32>(35454i, 2147483647i, 1i, -1i)), Struct_1(20518i, vec2<bool>(true, true), vec4<i32>(0i, -20625i, 1i, 28226i)), Struct_1(i32(-2147483648), vec2<bool>(false, false), vec4<i32>(0i, -9798i, -1i, i32(-2147483648))), Struct_1(7063i, vec2<bool>(false, false), vec4<i32>(25080i, 9670i, 1i, -18617i)), Struct_1(-18650i, vec2<bool>(true, true), vec4<i32>(35303i, 2147483647i, 28609i, 42951i)), Struct_1(38641i, vec2<bool>(true, false), vec4<i32>(-13343i, i32(-2147483648), -3518i, 18769i)), Struct_1(0i, vec2<bool>(false, true), vec4<i32>(41571i, 2147483647i, -9514i, 105596i)), Struct_1(-1i, vec2<bool>(false, false), vec4<i32>(-39566i, 48527i, 2147483647i, 0i)), Struct_1(0i, vec2<bool>(true, false), vec4<i32>(37530i, 6236i, 25814i, -14487i)), Struct_1(1i, vec2<bool>(true, true), vec4<i32>(-7705i, 1i, 1i, -11104i)));

var<private> global3: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(4294967295u, 7346u, 4294967295u), vec3<u32>(52540u, 26600u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = ~(-arg_1.a) <= arg_2.a.a;
    global0 = array<vec3<i32>, 20>();
    global3 = array<vec3<u32>, 2>();
    let var_1 = max(abs(vec3<i32>(~25902i, 9985i, arg_2.a.c.x) | vec3<i32>(-13513i, select(arg_1.a, 51416i, true), ~(-2147483647i))), ~arg_1.c.xyx ^ -(_wgslsmith_sub_vec3_i32(arg_2.a.c.yzy, vec3<i32>(arg_2.a.a, arg_2.a.a, arg_1.c.x)) ^ vec3<i32>(arg_2.a.c.x, 2147483647i, -21021i)));
    global2 = array<Struct_1, 14>();
    return _wgslsmith_clamp_i32(arg_1.a, i32(-1i) * -2147483647i, arg_1.c.x);
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = array<vec3<i32>, 20>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 20u)];
    let var_1 = -_wgslsmith_div_i32(~(~func_3(vec2<bool>(true, arg_0.a), Struct_1(9156i, vec2<bool>(true, true), vec4<i32>(61957i, 2147483647i, 19930i, var_0.x)), Struct_2(Struct_1(-1i, vec2<bool>(false, arg_0.a), vec4<i32>(0i, var_0.x, var_0.x, 24530i)), u_input.d.x))), var_0.x);
    let var_2 = Struct_1(var_1, vec2<bool>(true, arg_0.a), -(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, var_0.x, 22644i), vec4<i32>(43422i, var_1, var_1, 2147483647i)), vec4<i32>(var_0.x, 0i, 958i, var_1)) & -(vec4<i32>(-12322i, var_1, var_0.x, -2147483647i) & vec4<i32>(1i, -44894i, var_1, 1i))));
    global1 = array<Struct_1, 16>();
    return _wgslsmith_mult_u32(0u, 1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    global1 = array<Struct_1, 16>();
    let var_0 = u_input.a.x;
    return Struct_1(countOneBits(arg_2.a), arg_2.e.b, vec4<i32>(firstTrailingBit(arg_2.b) ^ arg_2.a, arg_2.b, max(firstTrailingBit(arg_2.b), arg_2.a), arg_2.b));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = ~(-9908i ^ _wgslsmith_sub_i32(-19478i, ~(-arg_0.a)));
    var var_1 = 89515i;
    var var_2 = Struct_4(all(select(!(!vec3<bool>(arg_0.b.x, arg_0.b.x, true)), vec3<bool>(false, arg_0.b.x | arg_0.b.x, false), vec3<bool>(any(vec3<bool>(arg_0.b.x, true, arg_0.b.x)), true, false))));
    let var_3 = _wgslsmith_add_u32(59905u, ~111692u);
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(32331u, _wgslsmith_add_u32(abs(41792u), u_input.a.x) >> (reverseBits(~1u) % 32u)), 16u)], ~max(~_wgslsmith_mult_u32(12716u, 52028u), ~1u));
}

fn func_1() -> Struct_1 {
    var var_0 = ~(-((vec2<i32>(1i, 8597i) << (u_input.a % vec2<u32>(32u))) >> (u_input.d.zx % vec2<u32>(32u)))) ^ vec2<i32>(1i, 1i);
    let var_1 = func_5(func_4(vec4<u32>(_wgslsmith_mult_u32(func_2(Struct_4(false)), u_input.b.x), ~(~u_input.d.x), u_input.d.x, u_input.a.x), Struct_4(select(false, true, false) | select(true, false, true)), Struct_3(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.c, 20u)], vec3<i32>(var_0.x, -26597i, var_0.x)), -7750i, reverseBits(vec3<u32>(0u, u_input.a.x, u_input.a.x)), Struct_2(Struct_1(73813i, vec2<bool>(true, true), vec4<i32>(-1i, var_0.x, var_0.x, var_0.x)), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(36700u, u_input.d.x, 100431u, 1u))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(888u, 38873u, u_input.a.x), 14u)])));
    var_0 = _wgslsmith_add_vec2_i32(var_1.a.c.ww, vec2<i32>(-1i, firstTrailingBit(var_0.x << (~33810u % 32u))));
    var_0 = vec2<i32>(_wgslsmith_mod_i32(max(func_5(func_4(vec4<u32>(4294967295u, 36660u, u_input.d.x, 43507u), Struct_4(true), Struct_3(-2147483647i, -2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 2u)], var_1, var_1.a))).a.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, var_0.x, 1i, var_0.x), var_1.a.c | vec4<i32>(var_1.a.c.x, var_1.a.a, 8842i, var_0.x))), -7583i << (1u % 32u)), -var_1.a.c.x);
    global1 = array<Struct_1, 16>();
    return func_5(func_5(var_1.a).a).a;
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global0 = array<vec3<i32>, 20>();
    let var_0 = Struct_4(arg_2.a.b.x);
    var var_1 = 4294967295u;
    var var_2 = Struct_1(-65432i, vec2<bool>(arg_0, ~(~60931u) <= arg_2.b), arg_2.a.c);
    var_2 = Struct_1(-60011i, arg_2.a.b, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(35385i, 53579i, select(arg_2.a.c.x, arg_3, true)), _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(arg_2.b, 20u)], abs(var_2.c.wzw))), select(i32(-1i) * -2147483647i, arg_1, var_0.a) >> (_wgslsmith_mult_u32(~arg_2.b, ~arg_2.b) % 32u), arg_3, 1i));
    return func_5(global1[_wgslsmith_index_u32(arg_2.b, 16u)]);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = -(~(~(abs(2147483647i) >> (~arg_0.b % 32u))));
    let var_1 = u_input.d.zyw;
    let var_2 = Struct_3(reverseBits(-38632i), -2147483647i, vec3<u32>(~(~60936u), _wgslsmith_add_u32(19293u >> (firstTrailingBit(46693u) % 32u), _wgslsmith_sub_u32(arg_0.b, 22697u)), 18251u), Struct_2(global1[_wgslsmith_index_u32(1u, 16u)], u_input.b.x), Struct_1(_wgslsmith_mult_i32(arg_1.a, arg_1.a), arg_0.a.b, -arg_0.a.c));
    let var_3 = func_5(var_2.d.a);
    global1 = array<Struct_1, 16>();
    return var_2.d;
}

fn func_8(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = arg_0.b;
    global3 = array<vec3<u32>, 2>();
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    let var_1 = ~firstTrailingBit(select(firstTrailingBit(u_input.d.xz ^ vec2<u32>(arg_1.x, arg_1.x)), ~(vec2<u32>(arg_1.x, 23759u) & vec2<u32>(u_input.c, 1u)), vec2<bool>(true, any(vec4<bool>(false, false, true, false)))));
    return Struct_2(func_7(arg_0, func_7(arg_0, func_1(), ~u_input.b.x > 111129u, func_1().a).a, true, ~_wgslsmith_sub_i32(-20759i, arg_0.a.c.x) >> (arg_0.b % 32u)).a, ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(func_6(false, -2147483647i, Struct_2(func_1(), ~30690u), 1i ^ func_1().a), Struct_1(abs(-4980i), func_6(true, i32(-1i) * -2147483647i, func_5(Struct_1(10788i, vec2<bool>(false, false), vec4<i32>(25690i, -2147483647i, -2147483647i, -47065i))), 0i).a.b, _wgslsmith_mult_vec4_i32(select(vec4<i32>(0i, 4197i, 2147483647i, 50545i), vec4<i32>(15444i, -1i, 2147483647i, 11923i), true), vec4<i32>(-14229i, 17633i, -1i, 1i))), true != func_5(Struct_1(32034i, vec2<bool>(false, true), vec4<i32>(-2147483647i, 39530i, -28006i, 41359i))).a.b.x, ~(-23040i)), firstLeadingBit(vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.d.zz), ~(~u_input.c))));
    var var_1 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c << (func_7(func_6(var_0.a.b.x, var_0.a.a, Struct_2(Struct_1(var_0.a.c.x, vec2<bool>(var_0.a.b.x, true), vec4<i32>(var_0.a.c.x, 1i, 6167i, var_0.a.a)), u_input.a.x), -16313i), Struct_1(var_0.a.c.x, vec2<bool>(false, false), vec4<i32>(var_0.a.c.x, var_0.a.c.x, -2147483647i, 29471i)), !var_0.a.b.x, _wgslsmith_dot_vec4_i32(var_0.a.c, vec4<i32>(var_0.a.c.x, var_0.a.a, 0i, var_0.a.a))).b % 32u), func_8(Struct_2(var_0.a, 49156u), ~vec2<u32>(1u, var_0.b)).b | u_input.d.x), 16u)]).a.a;
    let var_2 = vec4<u32>(var_0.b >> ((~abs(u_input.d.x) ^ 15906u) % 32u), 4294967295u << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 36778u), vec2<u32>(u_input.b.x, 0u)), 0u) % 32u), var_0.b, _wgslsmith_dot_vec4_u32(u_input.d >> (~vec4<u32>(var_0.b, u_input.c, 1u, 6830u) % vec4<u32>(32u)), firstTrailingBit(reverseBits(u_input.d))));
    var var_3 = var_0.a.a;
    let var_4 = !select(func_6(var_0.a.b.x, -1i, Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b, u_input.c), 16u)], 1u), -5159i).a.b.x, !any(!vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)), var_0.a.b.x);
    var_0 = Struct_2(var_0.a, 0u);
    let var_5 = -max(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b, 4294967295u), 20u)], vec3<i32>(~var_0.a.c.x | ~(-33940i), ~var_0.a.a, ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(6551i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 919f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(815f, -1311f))), var_0.a.b)))))), func_8(Struct_2(Struct_1(func_6(true, 0i, Struct_2(Struct_1(-2147483647i, vec2<bool>(var_0.a.b.x, true), vec4<i32>(-52258i, var_5.x, var_5.x, var_5.x)), var_2.x), var_5.x).a.a, vec2<bool>(true, true), func_1().c), _wgslsmith_mult_u32(_wgslsmith_sub_u32(7415u, var_0.b), ~u_input.d.x)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(var_0.b, 102321u)), u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, u_input.c), u_input.d.yw)) ^ firstTrailingBit(max(var_2.yw, vec2<u32>(16281u, 20996u)))).b);
}

