struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: array<bool, 25>;

var<private> global3: array<Struct_1, 23>;

var<private> global4: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    let var_0 = -38446i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1725f)));
    global2 = array<bool, 25>();
    let var_2 = global1.d;
    var var_3 = Struct_4(Struct_2(14740u, !select(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(global1.a, 25u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 25u)], global1.b.x, global2[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 25u)], false, true)), global3[_wgslsmith_index_u32((_wgslsmith_mult_u32(83224u, 6349u) ^ (u_input.b ^ global1.a)) << (~u_input.b % 32u), 23u)], ~(-(~global1.d))));
    return vec4<u32>(_wgslsmith_mult_u32(var_3.a.a, firstLeadingBit(_wgslsmith_div_u32(1372u, global1.a) | abs(global1.a))), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.a.a, var_3.a.a) << (~global1.a % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(35421u, 18186u), 6812u), ~(~global1.a)), global1.a, u_input.b ^ ~1u);
}

fn func_2() -> vec2<u32> {
    global4 = array<vec4<bool>, 23>();
    let var_0 = Struct_5(vec4<u32>(~(~0u ^ u_input.b), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b << (u_input.b % 32u), u_input.b, abs(0u)), firstTrailingBit(~0u)), 48948u), Struct_1(true, select(global1.c.b, !(!vec3<bool>(global1.b.x, global2[_wgslsmith_index_u32(u_input.b, 25u)], false)), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(68991u, 25u)]))), max(max(global1.a, 25075u), _wgslsmith_dot_vec4_u32(func_3(), ~(vec4<u32>(u_input.b, global1.a, 6531u, u_input.b) << (vec4<u32>(u_input.b, global1.a, 74523u, 4294967295u) % vec4<u32>(32u))))), !global1.b, Struct_1(!(true && global1.b.x), global1.c.b));
    let var_1 = any(select(!(!(!global4[_wgslsmith_index_u32(12336u, 23u)])), !(!select(global4[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(var_0.a.x, 23u)], global4[_wgslsmith_index_u32(global1.a, 23u)])), select(true, true, (-1i != u_input.a) == true)));
    let var_2 = global1.c.b;
    var var_3 = Struct_3(_wgslsmith_add_vec4_u32(~var_0.a, ~max(_wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(10952u, u_input.b, 0u, 1u)), var_0.a)));
    return select(_wgslsmith_mult_vec2_u32(func_3().wx, vec2<u32>(u_input.b, ~27384u) & vec2<u32>(countOneBits(4123u), 1u)), var_3.a.yx, ~(select(4294967295u, var_3.a.x, global2[_wgslsmith_index_u32(global1.a, 25u)]) | 17089u) <= ~global1.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> i32 {
    let var_0 = func_2();
    let var_1 = -firstLeadingBit(global1.d.x);
    let var_2 = Struct_5(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(31425u, 5484u, var_0.x, 11694u)) ^ ~vec4<u32>(u_input.b, global1.a, global1.a, global1.a), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0, var_0), ~37282u, global1.a, 29615u)), _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(0u, 4294967295u, 4294967295u, 7324u)), vec4<u32>(arg_2, ~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 56419u, 1u, u_input.b), vec4<u32>(0u, 0u, 17916u, var_0.x)), ~var_0.x))), global3[_wgslsmith_index_u32(~u_input.b, 23u)], 8381u, select(!(!select(arg_3.a.b, vec3<bool>(true, global1.b.x, global2[_wgslsmith_index_u32(4294967295u, 25u)]), true)), !vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 25u)], global2[_wgslsmith_index_u32(arg_3.a.a, 25u)] || global1.c.a, !arg_3.a.b.x), arg_3.a.b), global1.c);
    let var_3 = var_2.a;
    var var_4 = var_2.a;
    return max(_wgslsmith_sub_i32(-(~7683i), -1i) >> ((1u << (func_2().x % 32u)) % 32u), 25625i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 23>();
    let var_0 = !all(!global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, ~90930u), 23u)]);
    var var_1 = (-170f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(311f)))))) && var_0;
    let var_2 = Struct_4(Struct_2(36159u, vec3<bool>(false, false, true), Struct_1(all(vec3<bool>(false, global1.b.x, global1.c.a)), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.b), 25u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a, global1.a), 25u)], false)), vec2<i32>(-1371i, firstTrailingBit(~52592i))));
    var var_3 = Struct_1(true, vec3<bool>(!(global1.d.x > ~var_2.a.d.x), any(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, 33372u >> (var_2.a.a % 32u)), 23u)]), !(~u_input.a <= func_1(vec2<f32>(-1356f, 942f), -283f, global1.a, var_2))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)), _wgslsmith_f_op_f32(sign(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, abs(global1.d.x), reverseBits(max(var_2.a.d.x, 0i))) | ~(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 1i, -2147483647i), vec3<i32>(2147483647i, var_2.a.d.x, 32679i))), _wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(10242u, 4294967295u))), ~vec2<u32>(~45123u, var_2.a.a)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, ~(-2147483647i), -var_2.a.d.x), vec3<i32>(-1i, 6014i, _wgslsmith_add_i32(-2147483647i, var_2.a.d.x) | _wgslsmith_sub_i32(-2147483647i, u_input.a))), 30118u, _wgslsmith_f_op_f32(sign(var_4.x)));
}

