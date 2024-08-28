struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec4<u32>(1u, 705u, 17271u, 4294967295u), vec4<bool>(true, false, true, true), 2147483647i), vec4<u32>(44307u, 26113u, 0u, 1u), 35752i, vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 0u, 0u), vec4<bool>(false, false, false, false), 22643i), vec4<u32>(94783u, 13132u, 1u, 1u), 11527i, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<u32>(60705u, 1u, 5416u, 1u), vec4<bool>(true, true, false, false), -16546i), vec4<u32>(0u, 4294967295u, 106404u, 1u), -24519i, vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<u32>(0u, 36063u, 63579u, 4294967295u), vec4<bool>(true, true, false, true), i32(-2147483648)), vec4<u32>(0u, 4294967295u, 4294967295u, 22491u), 57576i, vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<u32>(58787u, 98508u, 4294967295u, 1u), vec4<bool>(true, true, true, false), -2223i), vec4<u32>(44156u, 0u, 1u, 32664u), -1i, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<u32>(1u, 9951u, 14510u, 124585u), vec4<bool>(false, true, true, false), 36537i), vec4<u32>(0u, 32167u, 0u, 4294967295u), 11957i, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<bool>(false, true, false, false), -1i), vec4<u32>(1477u, 22928u, 10336u, 13035u), 0i, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<u32>(4294967295u, 22314u, 12027u, 16454u), vec4<bool>(true, false, false, false), 20273i), vec4<u32>(1u, 17277u, 1u, 54907u), 8064i, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<u32>(52697u, 0u, 47726u, 18967u), vec4<bool>(true, true, true, true), -51020i), vec4<u32>(11335u, 4294967295u, 1u, 34198u), 35948i, vec3<bool>(true, true, false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = arg_1.b.x;
    var var_1 = Struct_1(arg_0.a.a, !arg_1.b, ~arg_0.a.c);
    var_1 = arg_1;
    var_1 = Struct_1(~var_1.a, select(vec4<bool>(select(var_1.b.x, false, any(vec3<bool>(true, var_1.b.x, true))), true, var_1.b.x, reverseBits(u_input.a) != var_1.a.x), select(select(select(arg_1.b, var_1.b, var_1.b), !arg_1.b, !vec4<bool>(var_1.b.x, var_1.b.x, true, true)), !select(arg_1.b, vec4<bool>(arg_1.b.x, false, true, false), vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x)), !var_0 == arg_1.b.x), !vec4<bool>(0i < u_input.e, all(arg_1.b.xwx), var_0 | arg_1.b.x, var_1.b.x)), _wgslsmith_clamp_i32(firstLeadingBit(select(~var_1.c, 0i, u_input.c > 9521u)), u_input.e, arg_0.c));
    let var_2 = global0[_wgslsmith_index_u32(~var_1.a.x, 9u)];
    return var_2.a.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(func_3(Struct_2(Struct_1(vec4<u32>(u_input.d.x, u_input.a, u_input.a, u_input.a), vec4<bool>(false, true, true, false), u_input.e), vec4<u32>(u_input.a, u_input.a, u_input.d.x, u_input.a), 42313i, vec3<bool>(true, false, false)), Struct_1(vec4<u32>(u_input.c, 4294967295u, 63052u, u_input.a), vec4<bool>(true, false, false, true), u_input.b.x), -907f), 12827u, 1u, select(4294967295u, 0u, true)), vec4<u32>(~u_input.d.x, ~u_input.a, 1u, ~u_input.a)), vec4<bool>(select(true, true, true), true | (u_input.e != u_input.e), true, true), max(27859i, -31684i) << (u_input.c % 32u)), vec4<u32>(_wgslsmith_clamp_u32(max(u_input.d.x, u_input.c), u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), u_input.d), min(25067u, u_input.a))), u_input.c << ((select(u_input.a, u_input.d.x, false) ^ 53152u) % 32u), 0u, u_input.d.x), firstLeadingBit(~_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), vec3<bool>(any(vec4<bool>(all(vec3<bool>(true, true, true)), false, any(vec2<bool>(true, false)), true)), true, -505f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(391f))))));
    let var_1 = var_0;
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_2 = ~(-1i & -min(u_input.e, 12847i));
    return var_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec4<u32> {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_0 = func_2();
    let var_1 = ~arg_0.zy;
    global0 = array<Struct_2, 9>();
    return ~select(countOneBits(var_0.a.a), _wgslsmith_mod_vec4_u32(reverseBits(var_0.b), vec4<u32>(var_0.b.x, 10467u ^ arg_1.a.x, countOneBits(arg_2), 25791u >> (u_input.d.x % 32u))), vec4<bool>(arg_3, false, false, !(!arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_0 = _wgslsmith_sub_vec4_i32(u_input.b << (func_1(reverseBits(vec4<i32>(-26398i, -2147483647i, u_input.b.x, u_input.e)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<bool>(true, false, false, true), u_input.b.x), u_input.d.x, true) % vec4<u32>(32u)), u_input.b);
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_1 = select(!(!func_2().a.b), vec4<bool>(true, func_2().a.b.x, all(vec2<bool>(false, true)), false || any(func_2().a.b.wzy)), !func_2().a.b);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b ^ _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-35734i, u_input.e, -34742i, var_0.x)) | max(u_input.b, vec4<i32>(var_0.x, var_0.x, 63772i, u_input.e)), _wgslsmith_add_vec4_i32(vec4<i32>(35301i, 14471i, u_input.b.x, var_0.x), vec4<i32>(u_input.b.x, var_0.x, -2147483647i, var_0.x))), vec3<u32>(4294967295u, ~firstTrailingBit(~1u), _wgslsmith_mod_u32(reverseBits(u_input.d.x), _wgslsmith_mult_u32(u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.d.x)))), max(u_input.b.x & abs(reverseBits(u_input.e)), countOneBits(i32(-1i) * -22642i)), u_input.d.yx, -1283f);
}

