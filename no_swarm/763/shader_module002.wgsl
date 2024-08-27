struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(112512u, 0u, 4294967295u, 1u);

var<private> global1: f32 = 485f;

var<private> global2: array<Struct_2, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    var var_0 = arg_0.d;
    let var_1 = vec4<bool>(arg_0.a.x, all(arg_0.a.xyw), arg_0.e.x, arg_0.a.x);
    global2 = array<Struct_2, 16>();
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(max(-1819f, 433f)), true));
    global0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 72215u), ~4294967295u, _wgslsmith_dot_vec2_u32(arg_0.d.c, vec2<u32>(40440u, arg_1.x)), firstTrailingBit(var_0.d.x)), _wgslsmith_mod_vec4_u32(arg_0.c.d << (arg_0.c.d % vec4<u32>(32u)), vec4<u32>(1u, u_input.a, u_input.a, 1u))) ^ var_0.d;
    return ~arg_0.c.c.x >> (arg_0.d.a.x % 32u);
}

fn func_2() -> u32 {
    global0 = ~vec4<u32>(func_3(Struct_2(vec4<bool>(true, true, true, true), -vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.b.x), Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<i32>(15533i, 14780i, u_input.b.x), vec2<u32>(global0.x, 77262u), vec4<u32>(u_input.a, 25438u, 4382u, 1786u), vec4<f32>(-559f, -765f, -899f, 1000f)), Struct_1(vec3<u32>(global0.x, 8563u, 29114u), vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec2<u32>(1u, global0.x), vec4<u32>(global0.x, global0.x, 0u, 1u), vec4<f32>(1676f, -1392f, -901f, 1138f)), vec3<bool>(true, true, true)), vec3<u32>(abs(global0.x), 0u, u_input.a)), global0.x, u_input.a, 41282u);
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -u_input.b.x, (35738i >> (global0.x % 32u)) << (~u_input.a % 32u)), u_input.b.x, u_input.b.x), -(~(-vec3<i32>(u_input.b.x, 76684i, 0i) & vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))));
    let var_1 = -110f;
    let var_2 = ~select(u_input.a, 1u, !all(vec2<bool>(true, false)) || !all(vec2<bool>(true, true)));
    global0 = firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u | var_2, 0u, 1u, _wgslsmith_add_u32(u_input.a, 14914u)), _wgslsmith_div_vec4_u32(select(max(vec4<u32>(global0.x, 9391u, 11816u, var_2), vec4<u32>(var_2, u_input.a, 1u, 1u)), ~vec4<u32>(u_input.a, u_input.a, global0.x, 0u), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 12036u, var_2, 73818u), vec4<u32>(0u, 1u, 62109u, 17266u)), reverseBits(vec4<u32>(28617u, 15189u, u_input.a, 11129u))))));
    return abs(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a, var_2, 4294967295u)), ~global0.zzx >> ((global0.ywz | vec3<u32>(0u, u_input.a, 0u)) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(1u, var_2, var_2))), vec3<u32>(global0.x, var_2, 32048u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_3 {
    global2 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_mult_u32(~(~0u), 0u);
    var var_1 = ~8807u;
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(19560u, arg_0.x) & 0u, countOneBits(firstTrailingBit(1u)), 21012u) & ~global0.xxx, u_input.b, vec2<u32>(~(_wgslsmith_add_u32(arg_1, arg_0.x) | abs(22133u)), ~(~1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(~12828u, _wgslsmith_add_u32(34124u, arg_1), func_2(), _wgslsmith_mod_u32(13229u, 4294967295u)), ~(~(vec4<u32>(arg_0.x, arg_0.x, global0.x, 0u) ^ vec4<u32>(4294967295u, 15590u, 1742u, 31921u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(109f, -375f, -2118f, -695f), vec4<f32>(1000f, 495f, -365f, -2799f), vec4<bool>(true, false, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(round(280f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(774f - 350f), -2156f), select(true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1697f * 509f), -281f)), _wgslsmith_f_op_f32(min(-1236f, _wgslsmith_f_op_f32(sign(-275f)))), _wgslsmith_f_op_f32(trunc(-232f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-939f - -368f))), select(vec4<bool>(-30280i == u_input.b.x, true, true, true), vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, true))), select(true, all(vec3<bool>(false, false, false)), all(vec2<bool>(true, false)))))));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_2.e.x, 126f, true)), var_2.e.x, true | (true & !(-2147483647i <= u_input.b.x))));
    return Struct_3(~(~reverseBits(u_input.a)) > (arg_0.x << (1u % 32u)), global2[_wgslsmith_index_u32(var_0, 16u)], any(vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)), all(vec2<bool>(true, true)), true)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> f32 {
    global0 = arg_1.b.c.d << ((arg_1.b.d.d ^ ~_wgslsmith_add_vec4_u32(arg_1.b.d.d, arg_1.b.c.d)) % vec4<u32>(32u));
    var var_0 = arg_1;
    var var_1 = func_1(~((abs(vec2<u32>(arg_2, arg_1.b.d.d.x)) >> (_wgslsmith_sub_vec2_u32(arg_1.b.d.c, arg_1.b.c.d.zw) % vec2<u32>(32u))) | arg_1.b.d.d.wz), 19948u).b.d;
    var_1 = func_1(arg_1.b.c.a.yx, global0.x).b.c;
    let var_2 = select(!(!all(!vec4<bool>(arg_1.a, true, arg_1.a, var_0.c))), func_1(reverseBits(global0.wy), global0.x >> (firstTrailingBit(~u_input.a) % 32u)).b.e.x, true);
    return -600f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 16>();
    global0 = vec4<u32>(4294967295u, firstLeadingBit(countOneBits(_wgslsmith_clamp_u32(~7864u, 1u, 38350u ^ u_input.a))), countOneBits(u_input.a), ~_wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.a, 55213u, 1u), min(vec3<u32>(43165u, 12500u, global0.x), global0.wzx), vec3<bool>(true, true, true)), vec3<u32>(~u_input.a, 1u, ~global0.x)));
    global2 = array<Struct_2, 16>();
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), func_1(~(~global0.zz), ~_wgslsmith_mod_u32(1u, 4294967295u)), 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1125f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f))))));
    global2 = array<Struct_2, 16>();
    var var_0 = Struct_1(global0.yzx, abs(vec3<i32>(u_input.b.x & u_input.b.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, 22670i), 3863i), u_input.b.x)), global0.yz, ~(~(~(~vec4<u32>(67093u, global0.x, 0u, global0.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(func_1(global0.zw, 0u).b.c.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(302f)) * _wgslsmith_f_op_f32(1032f - -263f)), -1329f, _wgslsmith_f_op_f32(ceil(-1026f))))));
    var var_1 = func_1(max(reverseBits(vec2<u32>(24878u, 80236u)), ~global0.wz), ~_wgslsmith_add_u32(max(_wgslsmith_sub_u32(4607u, global0.x), ~4294967295u), min(abs(global0.x), 1u))).b;
    let var_2 = Struct_3(var_1.a.x, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_1.c.a.x), 16u)], true);
    global1 = func_1(~var_1.c.c, 48350u).b.d.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_dot_vec3_i32(~(-var_0.b), vec3<i32>(-5217i, _wgslsmith_mod_i32(var_1.b.x, 1071i), -var_0.b.x))), ~vec4<u32>(var_2.b.d.d.x, ~var_1.c.c.x, var_2.b.c.c.x, 5925u), 1u);
}

