struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<u32> {
    global1 = arg_3;
    return global1.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    global3 = array<Struct_1, 14>();
    let var_0 = arg_2;
    var var_1 = select(global1.c.x, var_0.c.x, true);
    let var_2 = global0[_wgslsmith_index_u32(~var_0.b.x, 9u)];
    var var_3 = vec3<bool>(!(select(global1.c.x, var_0.c.x, !var_2.c.x) && arg_0.x), var_0.c.x, !any(select(vec3<bool>(true, true, true), select(arg_0, arg_0, true), select(arg_0, arg_0, vec3<bool>(arg_2.c.x, global1.c.x, arg_1)))));
    return !var_3.xy;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.b.xz, ~global1.b.xw), 9u)];
    let var_1 = Struct_1(~firstTrailingBit(arg_2.x), vec4<u32>(~1u, select(~_wgslsmith_dot_vec4_u32(arg_0.b, var_0.b), var_0.b.x ^ 18949u, !any(arg_0.c)), _wgslsmith_mod_u32(18643u, u_input.d), arg_0.b.x & min(82978u, u_input.c.x)), select(vec2<bool>(var_0.c.x, false), select(arg_0.c, select(vec2<bool>(arg_0.c.x, global1.c.x), !var_0.c, false), arg_0.c), !global1.c));
    global3 = array<Struct_1, 14>();
    var var_2 = Struct_1(global1.a, var_1.b, !func_4(!select(vec3<bool>(global1.c.x, global1.c.x, global1.c.x), vec3<bool>(false, true, var_0.c.x), true), !(var_1.a > -8976i), Struct_1(-59689i, func_3(global1.b.x, arg_1.x, vec4<bool>(global1.c.x, true, true, arg_0.c.x), Struct_1(1i, var_0.b, global1.c)), !global1.c)));
    var_0 = Struct_1(countOneBits(abs(~var_1.a)) << (22851u % 32u), vec4<u32>(_wgslsmith_add_u32(~1u, ~_wgslsmith_mult_u32(22978u, var_2.b.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 27148u), global1.b.wx) & 11933u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.b.x, global1.b.x), var_0.b.x)), var_0.b.x, countOneBits(max(21330u, var_2.b.x) ^ abs(0u))), func_4(vec3<bool>(arg_0.c.x, any(!vec3<bool>(var_0.c.x, true, var_2.c.x)), any(vec4<bool>(true, true, true, true))), global1.c.x, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, -1i), vec2<i32>(1i, var_2.a)), var_2.b, arg_0.c)));
    return 14546u;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = u_input.c.x;
    let var_0 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(global1.b.zx, vec2<u32>(_wgslsmith_mult_u32(func_2(Struct_1(0i, vec4<u32>(53794u, u_input.d, 1u, 66285u), vec2<bool>(global1.c.x, global1.c.x)), vec2<f32>(arg_0, 1000f), vec4<i32>(global1.a, -2147483647i, global1.a, u_input.a.x)), 4294967295u), u_input.c.x)), firstLeadingBit(global1.b.x), _wgslsmith_clamp_u32(~66741u, global1.b.x << (select(~34461u, 1u, all(vec3<bool>(false, global1.c.x, false))) % 32u), 1u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0));
    global2 = ~0u;
    global1 = Struct_1(max(u_input.b.x, 1i), var_0, vec2<bool>(!all(select(global1.c, global1.c, global1.c.x)), false));
    return Struct_1(global1.a, vec4<u32>(1u, min(~global1.b.x, _wgslsmith_sub_u32(74956u, global1.b.x)), ~38985u, 13468u) & _wgslsmith_sub_vec4_u32(var_0, max(vec4<u32>(u_input.c.x, 1u, 2130u, 0u), global1.b >> (global1.b % vec4<u32>(32u)))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(!vec3<bool>(global1.c.x, global1.c.x, global1.c.x), vec3<bool>(true, true, global1.c.x), !global1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 14>();
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, global1.a, global1.a, u_input.e.x), select(vec4<i32>(492i, u_input.b.x, u_input.e.x, global1.a) ^ vec4<i32>(u_input.e.x, global1.a, 2147483647i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(17171i, -2147483647i, 28464i, u_input.a.x), vec4<i32>(-1i, 0i, 1i, -1i)), select(vec4<bool>(global1.c.x, true, global1.c.x, false), vec4<bool>(global1.c.x, true, global1.c.x, false), vec4<bool>(global1.c.x, true, global1.c.x, true))));
    var var_1 = func_1(-866f);
    global1 = global0[_wgslsmith_index_u32(firstTrailingBit(84088u), 9u)];
    let var_2 = Struct_1(~(-global1.a), ~var_1.b, select(vec2<bool>(all(vec4<bool>(true, false, var_1.c.x, true)), true), global1.c, !global1.c));
    global0 = array<Struct_1, 9>();
    global1 = global0[_wgslsmith_index_u32(countOneBits(1u), 9u)];
    let var_3 = _wgslsmith_div_vec2_u32(func_1(249f).b.wx, vec2<u32>(~abs(var_1.b.x), 4294967295u)) >> (select(abs(min(vec2<u32>(0u, 19563u), var_1.b.zx)) & min(~global1.b.zw, vec2<u32>(10086u, u_input.c.x)), global1.b.xy, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(127f + 2072f))).c) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~select(i32(-1i) * -24966i, u_input.e.x >> (var_2.b.x % 32u), global1.c.x) & _wgslsmith_clamp_i32(1222i, var_2.a, -23307i));
}

