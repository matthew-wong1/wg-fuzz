struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec3<i32>(2147483647i, 16734i, -1i), 11068u, vec4<f32>(1304f, -898f, -480f, -2052f)), Struct_2(vec3<i32>(23897i, -1i, i32(-2147483648)), 1u, vec4<f32>(720f, -2214f, -2339f, 354f)), Struct_2(vec3<i32>(27085i, 2816i, 13765i), 1u, vec4<f32>(-698f, 339f, -2032f, -1601f)), Struct_2(vec3<i32>(1i, i32(-2147483648), -50854i), 1u, vec4<f32>(754f, 983f, 342f, -498f)), Struct_2(vec3<i32>(-1i, 160i, 2147483647i), 217u, vec4<f32>(-2682f, 929f, -2804f, -382f)), Struct_2(vec3<i32>(1i, 15934i, i32(-2147483648)), 1u, vec4<f32>(1275f, -773f, 466f, -780f)), Struct_2(vec3<i32>(1i, 10298i, 2147483647i), 13234u, vec4<f32>(305f, 1417f, -1240f, -1091f)), Struct_2(vec3<i32>(0i, -59784i, -1299i), 0u, vec4<f32>(784f, 368f, -606f, -939f)), Struct_2(vec3<i32>(2147483647i, -13729i, 0i), 5696u, vec4<f32>(563f, 397f, 1000f, 870f)), Struct_2(vec3<i32>(53279i, -1i, 9136i), 1u, vec4<f32>(-1317f, -607f, 1000f, 696f)), Struct_2(vec3<i32>(0i, 37084i, 0i), 4294967295u, vec4<f32>(834f, -827f, -1262f, 1000f)));

var<private> global2: Struct_1 = Struct_1(1i, vec2<bool>(true, true), vec2<f32>(1269f, -135f), true, vec2<u32>(31566u, 21952u));

var<private> global3: array<f32, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, global3[_wgslsmith_index_u32(global2.e.x, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], -964f), vec4<f32>(global3[_wgslsmith_index_u32(37278u, 31u)], global3[_wgslsmith_index_u32(1032u, 31u)], global2.c.x, global3[_wgslsmith_index_u32(4294967295u, 31u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 31u)], -139f, global3[_wgslsmith_index_u32(u_input.b, 31u)], 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), 831f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.e.x, 31u)]))), global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-709f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(335f)), 2344f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d, 31u)] + global2.c.x), _wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], -1000f, -397f))))) - vec4<f32>(_wgslsmith_f_op_f32(abs(-631f)), -1547f, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global2.e.x, 4294967295u), global2.e.x, 4294967295u), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)))), !vec4<bool>(all(select(vec3<bool>(false, global2.d, false), vec3<bool>(global2.d, false, false), vec3<bool>(false, true, global2.d))), (global2.d && global2.b.x) | true, global2.d, global2.b.x)));
    var var_1 = Struct_3(select(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, 2147483647i), ~vec3<i32>(global2.a, global2.a, 11649i)), 35783i), 2147483647i, abs(u_input.c.x) <= u_input.c.x), global2.a, Struct_1(u_input.a.x, global2.b, global2.c, global2.b.x, abs(vec2<u32>(22654u, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.yyw))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, -919f, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, var_0.x, var_0.x) * var_0.zyx))) + var_0.wyy));
    let var_2 = var_1.c;
    let var_3 = var_2.e.x;
    global2 = var_1.c;
    return ~vec3<i32>(global2.a, _wgslsmith_sub_i32(var_1.c.a, u_input.a.x), _wgslsmith_mult_i32(-1i, ~1i));
}

fn func_2() -> Struct_1 {
    global3 = array<f32, 31>();
    var var_0 = Struct_2(func_3(), ~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, -909f, global3[_wgslsmith_index_u32(36077u, 31u)], global3[_wgslsmith_index_u32(u_input.b, 31u)]) + vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], 1536f, global3[_wgslsmith_index_u32(global2.e.x, 31u)])))));
    global2 = Struct_1(abs(-2147483647i), !(!global2.b), _wgslsmith_div_vec2_f32(var_0.c.zx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + 379f), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(65538u ^ var_0.b, 5270u, 1u), 31u)])), !global2.b.x || (!(!global2.b.x) & true), global2.e);
    var var_1 = Struct_3(u_input.c.x, -(-27191i >> (global2.e.x % 32u)), Struct_1(abs(_wgslsmith_mult_i32(~(-1i), global2.a)), select(select(vec2<bool>(true, true), select(global2.b, vec2<bool>(false, false), global2.d), all(vec2<bool>(false, true))), !(!global2.b), !global2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3[_wgslsmith_index_u32(25616u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)]))), global2.c)) + global2.c), !global2.b.x, _wgslsmith_mult_vec2_u32(global2.e, abs(global2.e))), var_0.c.wxx);
    let var_2 = Struct_3(0i, -34859i, var_1.c, var_1.d);
    return var_1.c;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = abs(min(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global2.a, global2.a), -36497i), u_input.c.zx), vec2<i32>(reverseBits(0i) & u_input.c.x, -2147483647i)));
    let var_1 = global1[_wgslsmith_index_u32(global2.e.x, 11u)];
    var var_2 = 61626u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(global2.a >= firstLeadingBit(-26213i));
    global0 = global2.a;
    var var_1 = func_1(true);
    global2 = Struct_1(countOneBits(global2.a), var_1.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.c + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1156f, var_1.c.x)))))))), !(!any(select(vec4<bool>(true, var_1.b.x, var_1.b.x, false), vec4<bool>(true, false, var_1.b.x, true), vec4<bool>(global2.b.x, false, true, true)))), ~(global2.e | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), var_1.e >> (vec2<u32>(10913u, global2.e.x) % vec2<u32>(32u)))));
    var var_2 = ~(~(~vec3<u32>(u_input.d & u_input.d, reverseBits(28758u), _wgslsmith_add_u32(global2.e.x, 21278u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_1.c.x)));
}

