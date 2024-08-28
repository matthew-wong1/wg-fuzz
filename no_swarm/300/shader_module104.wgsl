struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(1944u, 39527u, 72106u, 1u, 1u, 0u, 1u, 36784u, 11112u, 19877u, 36665u, 37883u, 19991u, 4294967295u, 4294967295u, 0u, 4294967295u, 45889u, 1u, 5666u, 77478u, 13682u, 1118u, 0u, 602u, 1u, 18737u, 48519u, 4294967295u, 4294967295u, 86105u, 6049u);

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(110840u), Struct_2(4294967295u), Struct_2(1u), Struct_2(1u), Struct_2(28425u), Struct_2(11287u), Struct_2(1u), Struct_2(0u), Struct_2(1u), Struct_2(9932u), Struct_2(4294967295u), Struct_2(0u), Struct_2(1u), Struct_2(0u), Struct_2(4049u), Struct_2(4294967295u), Struct_2(9186u), Struct_2(60899u), Struct_2(57341u), Struct_2(21241u), Struct_2(1u));

var<private> global2: vec3<bool>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> vec4<bool> {
    global2 = select(!select(arg_2.b, arg_2.b, true), select(vec3<bool>(u_input.a.x > countOneBits(u_input.a.x), arg_3.a, !(global2.x || global2.x)), !vec3<bool>(arg_2.b.x, all(vec4<bool>(false, false, global2.x, arg_2.b.x)), !arg_3.a), vec3<bool>(true, true && (u_input.c > arg_1.a), any(!arg_2.b.yy))), true);
    global0 = array<u32, 32>();
    var var_0 = 7321u;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -128f), arg_2.a, -550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d + arg_2.d))) + vec4<f32>(130f, 251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1340f - 425f) - -233f), -717f)) * vec4<f32>(-582f, 1f, _wgslsmith_f_op_f32(-arg_2.d), -3457f));
    global1 = array<Struct_2, 21>();
    return vec4<bool>(true, true, true, any(vec4<bool>(!any(vec4<bool>(true, true, global2.x, false)), any(select(vec4<bool>(false, false, false, arg_2.b.x), vec4<bool>(global2.x, false, arg_3.d, global2.x), vec4<bool>(true, true, true, arg_2.b.x))), all(global2.zz), true)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_3(min(1u, ~countOneBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 32u)], 4294967295u))));
    var_0 = Struct_3(64301u);
    var var_1 = Struct_2(~u_input.d);
    var_0 = Struct_3(29670u);
    var var_2 = !(!func_3(Struct_3(var_1.a), global1[_wgslsmith_index_u32(1u, 21u)], Struct_1(421f, vec3<bool>(true, global2.x, false), vec2<u32>(32083u, u_input.c), -1435f, 0u), Struct_4(any(vec3<bool>(global2.x, global2.x, true)), all(vec2<bool>(global2.x, false)), reverseBits(20629u), global2.x)));
    return Struct_4((arg_0.x << (24590u % 32u)) < -1i, select(false, any(var_2.wxy) && true, !global2.x) & true, ~(~var_1.a), true);
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    global2 = vec3<bool>(global2.x, true, true);
    let var_0 = max(reverseBits(~abs(vec2<u32>(5664u, 0u)) >> (~(~vec2<u32>(19576u, u_input.b)) % vec2<u32>(32u))), vec2<u32>(global0[_wgslsmith_index_u32(~u_input.c, 32u)] & select(1343u << (u_input.d % 32u), u_input.d, false), u_input.b));
    return func_2(-vec2<i32>(-36148i, reverseBits(-11146i)));
}

fn func_4(arg_0: Struct_4) -> StorageBuffer {
    let var_0 = select(vec4<bool>(u_input.a.x >= 1i, global2.x, arg_0.b, !arg_0.a), !vec4<bool>(arg_0.a, !select(global2.x, arg_0.b, true), (arg_0.c | arg_0.c) == ~u_input.c, func_2(u_input.a.xy).d), !(!(!vec4<bool>(false, arg_0.b, true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1358f)) - _wgslsmith_f_op_f32(f32(-1f) * -1337f))))));
    let var_2 = vec4<i32>(-1i) * -(firstTrailingBit(u_input.a) | vec4<i32>(u_input.e.x, ~u_input.e.x, -2147483647i, countOneBits(u_input.e.x)));
    var var_3 = Struct_3(~1u);
    var var_4 = var_0.www;
    return StorageBuffer(vec2<i32>(var_2.x, _wgslsmith_sub_i32(max(-8162i, max(-9969i, var_2.x)), 0i)), max(1u, 0u), _wgslsmith_add_vec4_i32(~vec4<i32>(firstTrailingBit(var_2.x), -u_input.a.x, ~0i, 1i), var_2 << (abs(~vec4<u32>(6484u, arg_0.c, u_input.b, arg_0.c)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(select(u_input.e, vec4<i32>(17240i, 38053i, u_input.e.x, u_input.a.x), global2.x) ^ countOneBits(u_input.e))));
    var var_1 = vec2<i32>(min(_wgslsmith_mod_i32(u_input.a.x, -1i) & 1i, _wgslsmith_add_i32(firstLeadingBit(-33119i), -1i)), 1i) >> (vec2<u32>(0u, ~1u) % vec2<u32>(32u));
    var var_2 = global1[_wgslsmith_index_u32(39348u, 21u)];
    let var_3 = global0[_wgslsmith_index_u32(u_input.d, 32u)];
    let var_4 = 14503i;
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_mod_vec2_i32(var_0.xy, var_0.xz)));
}

