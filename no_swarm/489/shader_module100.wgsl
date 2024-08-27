struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<i32, 16> = array<i32, 16>(37418i, -1i, -30863i, -29121i, -24251i, -4121i, 15891i, -29135i, 31165i, 25120i, 2147483647i, 19471i, 32434i, 4588i, -25796i, 38162i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = select(vec2<bool>(true, true), !vec2<bool>(!arg_0.c || (arg_0.d <= 4294967295u), firstTrailingBit(158u) == _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, u_input.e.x, 0u, u_input.e.x), u_input.e)), arg_0.c);
    let var_1 = arg_0;
    return var_1.d;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    global1 = ~_wgslsmith_add_u32(0u, 4294967295u);
    var var_0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(~(-15374i), 2147483647i) | _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.c.a.a, vec2<i32>(-67944i, u_input.d) | vec2<i32>(3402i, 2153i)), vec2<i32>(~global2[_wgslsmith_index_u32(4626u, 16u)], abs(global2[_wgslsmith_index_u32(105286u, 16u)]))), arg_1.c.a.a, arg_2.c.a.a);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-851f))))));
    global1 = firstTrailingBit(arg_1.c.d);
    global2 = array<i32, 16>();
    return arg_1.c.c;
}

fn func_4(arg_0: Struct_3) -> f32 {
    global0 = 22976i;
    let var_0 = Struct_3(arg_0.a, abs(26425i) << (max(~func_1(arg_0.c, 1009f), _wgslsmith_dot_vec2_u32(select(u_input.e.xy, vec2<u32>(54182u, 55293u), arg_0.a), firstLeadingBit(vec2<u32>(arg_0.d, 1u)))) % 32u), arg_0.c, reverseBits(u_input.a));
    global0 = var_0.b;
    let var_1 = _wgslsmith_mult_i32(~(var_0.c.a.a.x >> (18827u % 32u)), firstLeadingBit(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(arg_0.d, 16u)], 1i, global2[_wgslsmith_index_u32(1u, 16u)], arg_0.c.a.a.x), vec4<i32>(global2[_wgslsmith_index_u32(1u, 16u)], -1i, var_0.b, global2[_wgslsmith_index_u32(28388u, 16u)]))))) ^ 0i;
    var var_2 = !func_3(true, Struct_3(!(!vec2<bool>(arg_0.a.x, false)), -2147483647i, Struct_2(Struct_1(vec2<i32>(global2[_wgslsmith_index_u32(var_0.c.d, 16u)], global2[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.b.x, -919f, var_0.c.b.x)), arg_0.c.a.a.x <= global2[_wgslsmith_index_u32(0u, 16u)], 60243u), ~(~u_input.e.x)), Struct_3(!(!arg_0.a), ~2147483647i, var_0.c, 4294967295u));
    return var_0.c.b.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1134f);
    var var_1 = 1377f;
    global2 = array<i32, 16>();
    var var_2 = arg_2.c;
    var_1 = _wgslsmith_f_op_f32(func_4(Struct_3(vec2<bool>(arg_2.c.c, !func_3(var_2.c, Struct_3(vec2<bool>(false, true), 1i, Struct_2(Struct_1(vec2<i32>(arg_2.c.a.a.x, 72237i)), vec3<f32>(arg_2.c.b.x, arg_0, var_2.b.x), arg_2.a.x, arg_3.d), 0u), Struct_3(arg_2.a, -1i, arg_3.c, u_input.c))), max(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 16u)], 2147483647i) & (arg_2.c.a.a.x | var_2.a.a.x), -37887i), arg_3.c, firstLeadingBit(arg_3.d))));
    return _wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(39169u, ~firstTrailingBit(u_input.e.x << (arg_3.d % 32u)), _wgslsmith_clamp_u32(var_2.d, 5367u, _wgslsmith_div_u32(~arg_3.c.d, ~1u)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    global2 = array<i32, 16>();
    let var_0 = !select(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, global2[_wgslsmith_index_u32(~u_input.c, 16u)] > firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 16u)]), true), !vec4<bool>(false, false, all(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), false));
    global1 = _wgslsmith_div_u32(36582u, _wgslsmith_dot_vec4_u32(vec4<u32>(~(~60364u), func_1(Struct_2(Struct_1(vec2<i32>(global2[_wgslsmith_index_u32(0u, 16u)], 26262i)), vec3<f32>(-1316f, 1137f, -721f), true, 1u), _wgslsmith_f_op_f32(1000f * -575f)), ~(~u_input.e.x), 0u), ~(~func_2(-1000f, 554f, Struct_3(var_0.yz, global2[_wgslsmith_index_u32(u_input.a, 16u)], Struct_2(Struct_1(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], u_input.d)), vec3<f32>(-2556f, -1157f, 1000f), var_0.x, 4294967295u), u_input.e.x), Struct_3(var_0.zy, global2[_wgslsmith_index_u32(u_input.e.x, 16u)], Struct_2(Struct_1(vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 16u)])), vec3<f32>(-626f, -496f, -642f), true, 73138u), u_input.e.x)))));
    global0 = -38321i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -1i, u_input.b), vec3<i32>(u_input.b, global2[_wgslsmith_index_u32(1u, 16u)], 1i)) >> (vec3<u32>(u_input.e.x, u_input.a, u_input.e.x) % vec3<u32>(32u)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-414f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1891f, -2021f)))), Struct_3(var_0.xy, 1i & min(global2[_wgslsmith_index_u32(1u, 16u)], u_input.b), Struct_2(Struct_1(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<f32>(-1000f, -519f, 312f), true, ~90267u), ~select(24395u, 4294967295u, var_0.x)), Struct_3(vec2<bool>(false, !var_0.x), _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.b, u_input.d, 21821i), vec3<i32>(-2147483647i, -2147483647i, u_input.b)), vec3<i32>(-2147483647i, 1i, 2147483647i)), Struct_2(Struct_1(vec2<i32>(u_input.d, global2[_wgslsmith_index_u32(1u, 16u)])), vec3<f32>(-1505f, 1393f, -1000f), var_0.x, u_input.a), _wgslsmith_mod_u32(~19281u, ~23514u))).x, reverseBits(_wgslsmith_div_vec4_u32(u_input.e, ~u_input.e | vec4<u32>(31656u, 0u, 1u, u_input.e.x))), u_input.e.x);
}

