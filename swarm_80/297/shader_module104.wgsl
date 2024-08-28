struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<bool>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(vec4<u32>(0u, 4294967295u, ~(~(~u_input.d)), _wgslsmith_div_u32(~4294967295u, u_input.d)), ~u_input.b.x, 5360i);
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.a.x, select(1u, 4294967295u, false), ~u_input.a.x, u_input.d), min(abs(firstTrailingBit(var_0.a)), countOneBits(firstTrailingBit(var_0.a)))), !global0.d.b.x);
    var var_2 = vec2<u32>(~var_1.a.x & reverseBits(countOneBits(25680u)), ~22168u) >> (select(~min(~vec2<u32>(var_0.a.x, var_1.a.x), var_0.a.yz), vec2<u32>(~u_input.d, 44435u ^ var_1.a.x), global0.a.b.x != select(false, true, true)) % vec2<u32>(32u));
    global2 = var_2.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(step(global0.b, global0.b));
    return select(countOneBits(~vec4<i32>(_wgslsmith_div_i32(0i, -66211i), u_input.c, ~(-47083i), var_0.b)), max(-vec4<i32>(34017i, 26398i, var_0.c, 15004i) & (vec4<i32>(1i, 78206i, u_input.e, var_0.c) >> (var_1.a % vec4<u32>(32u))), select(vec4<i32>(-u_input.e, var_0.c ^ 1253i, -42370i, 3769i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c, var_0.c, 102714i), max(vec4<i32>(1i, -1i, 0i, -39092i), vec4<i32>(2147483647i, u_input.b.x, -876i, 25838i))), global0.d.b)), true);
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    global0 = Struct_4(Struct_3(524f, vec4<bool>(arg_0.b.x, global1.x || (u_input.b.x >= -1i), true, !global1.x)), vec2<f32>(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-757f, global0.d.a, false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -591f)))), 1i, global0.a);
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.a), _wgslsmith_div_f32(global0.d.a, arg_0.a), !arg_0.b.x)), vec4<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(16110u, u_input.a.x)) > 34595u) || !all(vec2<bool>(true, false)), !arg_0.b.x, false, _wgslsmith_dot_vec4_i32(func_3(), vec4<i32>(u_input.e, u_input.b.x, 2147483647i, global0.c)) >= global0.c));
    let var_1 = 1u;
    return (countOneBits(reverseBits(vec4<i32>(-11643i, global0.c, 1i, global0.c))) ^ abs(firstLeadingBit(vec4<i32>(global0.c, global0.c, global0.c, -26184i)) << (firstTrailingBit(vec4<u32>(u_input.a.x, 15290u, var_1, 35262u)) % vec4<u32>(32u)))) >> (vec4<u32>(_wgslsmith_add_u32(1u >> (_wgslsmith_mult_u32(54503u, var_1) % 32u), _wgslsmith_div_u32(var_1 >> (1u % 32u), ~1u)), u_input.a.x, var_1, u_input.d) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = !any(vec3<bool>(global1.x, 0i > _wgslsmith_div_i32(-10021i, u_input.c), ~arg_1 >= 0u));
    let var_1 = 18629i;
    return Struct_2(vec4<u32>(u_input.d, ~17360u, ~u_input.d, 26149u), 1246i | (_wgslsmith_mod_i32(-u_input.e, -2147483647i << (u_input.d % 32u)) >> (_wgslsmith_sub_u32(u_input.d, 3146u) % 32u)), u_input.b.x);
}

fn func_1(arg_0: bool) -> Struct_3 {
    global2 = 0u;
    var var_0 = vec4<u32>(reverseBits(firstTrailingBit(_wgslsmith_sub_u32(max(u_input.a.x, 30632u), u_input.d | u_input.a.x))), u_input.d, 0u, u_input.a.x);
    global2 = 35106u;
    global1 = vec3<bool>(!(~(~(-31513i)) > _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, -1i, -1i), vec4<i32>(-2147483647i, 0i, u_input.b.x, -35028i)), abs(2147483647i), -26002i)), true, !(arg_0 | false));
    var var_1 = func_4(select(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.c, -44021i, u_input.b.x, global0.c), ~vec4<i32>(134i, global0.c, 19252i, 45090i)), ~(-vec4<i32>(-1i, 2147483647i, u_input.e, 0i))), func_2(global0.d) << ((select(vec4<u32>(1u, u_input.a.x, 670u, u_input.d), vec4<u32>(var_0.x, 29599u, 32538u, 2889u), arg_0) & reverseBits(vec4<u32>(var_0.x, 49676u, 43659u, u_input.a.x))) % vec4<u32>(32u)), select(vec4<bool>(true, any(global0.d.b.xwz), all(vec4<bool>(arg_0, arg_0, true, false)), u_input.c != 1i), vec4<bool>(all(vec4<bool>(false, global1.x, true, global0.d.b.x)), all(global0.a.b), global1.x, true), false)), ~firstLeadingBit(4294967295u));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-643f * -682f), _wgslsmith_div_f32(global0.b.x, -323f))))), select(vec4<bool>(global1.x, true, true, all(global0.a.b.xz)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), global0.d.b, vec4<bool>(global1.x, arg_0, global0.a.b.x, false)), select(global0.a.b, global0.d.b, select(vec4<bool>(global1.x, arg_0, global0.d.b.x, arg_0), vec4<bool>(arg_0, global1.x, false, arg_0), global1.x))), !(u_input.d != var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec3<bool>(any(select(global0.d.b.yw, global0.d.b.wy, vec2<bool>(global1.x, global1.x))), false, false);
    var var_0 = global0.a;
    let var_1 = Struct_4(func_1(all(vec4<bool>(!global1.x, true, all(vec3<bool>(global0.d.b.x, var_0.b.x, true)), global1.x))), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), abs(u_input.b.x), Struct_3(_wgslsmith_f_op_f32(-1503f + _wgslsmith_f_op_f32(f32(-1f) * -235f)), !func_1(false).b));
    var var_2 = global0.a;
    let var_3 = func_4(reverseBits(vec4<i32>(u_input.e, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(4659i, -2147483647i, var_1.c, 2147483647i), vec4<i32>(u_input.b.x, 26016i, 7714i, -26267i))), firstTrailingBit(-u_input.b.x), _wgslsmith_div_i32(u_input.c, 1i >> (u_input.a.x % 32u)))), u_input.d);
    var_2 = func_1(false);
    let var_4 = 4294967295u << (~func_4(vec4<i32>(~var_3.b, u_input.e, u_input.b.x, ~global0.c), 4294967295u).a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(max(countOneBits(~99411u), u_input.d), 1u), var_3.a ^ select(vec4<u32>(~u_input.a.x, ~var_3.a.x, 4294967295u, 1u), abs(var_3.a), true));
}

