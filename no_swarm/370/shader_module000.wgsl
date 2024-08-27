struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_3, 23>;

var<private> global2: vec4<u32>;

var<private> global3: array<f32, 25> = array<f32, 25>(523f, -1269f, -587f, 2973f, 1000f, 122f, 1054f, 711f, 160f, 2784f, 704f, -1176f, 208f, 571f, -925f, 806f, -1303f, 951f, -166f, 1000f, -397f, -738f, 1132f, 978f, -660f);

var<private> global4: array<Struct_1, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(698f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(295f - arg_2.d)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 25u)]))));
    let var_0 = ~62806u;
    var var_1 = arg_2.a.x;
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global2.x, 25u)], 969f)), _wgslsmith_f_op_f32(f32(-1f) * -1253f))) * _wgslsmith_f_op_f32(arg_2.d + 1700f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1317f))))), -877f, _wgslsmith_f_op_f32(min(1426f, _wgslsmith_f_op_f32(567f * _wgslsmith_f_op_f32(-arg_0.x)))))));
    return firstTrailingBit(reverseBits(arg_2.c));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32(select(min(4294967295u, 4294967295u), 65252u, any(vec3<bool>(true, false, true))), _wgslsmith_mult_u32(1u, 39479u), global2.x), 1u, global2.x));
    global1 = array<Struct_3, 23>();
    let var_1 = vec3<bool>(true == any(vec2<bool>(1u <= global2.x, -73475i != u_input.b.x)), select(global3[_wgslsmith_index_u32(global2.x, 25u)] < _wgslsmith_f_op_f32(f32(-1f) * -1129f), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), true) | (u_input.b.x > ~firstTrailingBit(u_input.a.x)), !all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), all(vec4<bool>(false, false, true, false)))));
    var var_2 = Struct_4(reverseBits(_wgslsmith_dot_vec2_u32(var_0.a.xx, vec2<u32>(16751u, var_0.a.x) & vec2<u32>(0u, var_0.a.x)) & ~(~0u)), _wgslsmith_mult_i32(~u_input.d, i32(-1i) * -_wgslsmith_sub_i32(-8586i, 19115i)), _wgslsmith_mod_u32(11385u, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(742f, 196f)), Struct_4(global2.x, -4949i, var_0.a.x, u_input.c.zy, vec3<i32>(0i, 56318i, u_input.a.x)), Struct_1(var_1.yz, vec2<u32>(4823u, 4524u), var_0.a.x, 484f), vec4<u32>(global2.x, global2.x, 4294967295u, var_0.a.x))) | 5084u, max(vec2<i32>(_wgslsmith_clamp_i32(-23844i, u_input.a.x, -42487i), _wgslsmith_clamp_i32(u_input.c.x, -2147483647i, u_input.b.x)), reverseBits(-u_input.c.xy)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u & var_0.a.x, var_0.a.x), vec2<u32>(28487u, ~var_0.a.x), vec2<u32>(_wgslsmith_clamp_u32(global2.x, 1u, 17574u), _wgslsmith_mult_u32(28392u, global2.x))) % vec2<u32>(32u)), vec3<i32>(countOneBits(_wgslsmith_mult_i32(countOneBits(-13949i), 1i << (var_0.a.x % 32u))), -2147483647i, (-u_input.a.x >> (495u % 32u)) >> ((firstLeadingBit(40059u) >> (~var_0.a.x % 32u)) % 32u)));
    global3 = array<f32, 25>();
    return reverseBits(vec3<i32>(~var_2.b, var_2.d.x << (53790u % 32u), var_2.e.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1071f, 775f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1808f, -560f))) + vec2<f32>(_wgslsmith_f_op_f32(1248f * -484f), global3[_wgslsmith_index_u32(arg_1, 25u)]))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.x, global2.x, func_2(vec2<f32>(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(global2.x, 25u)]), Struct_4(35761u, arg_3.x, arg_2.x, arg_3, u_input.c.wyx), Struct_1(vec2<bool>(true, false), global2.wz, 38247u, -2858f), vec4<u32>(arg_1, arg_1, 4294967295u, 0u))), 25u)])));
    var var_1 = Struct_4(0u >> ((_wgslsmith_div_u32(_wgslsmith_div_u32(48180u, global2.x), 4294967295u) >> (4294967295u % 32u)) % 32u), u_input.c.x ^ ~u_input.d, 93180u, ~vec2<i32>(-17734i, -(-39350i & arg_3.x)), func_3());
    global3 = array<f32, 25>();
    let var_2 = vec3<u32>(~(~(~global2.x) ^ countOneBits(countOneBits(764u))), _wgslsmith_clamp_u32(4294967295u, 1u, arg_0), reverseBits(0u << (_wgslsmith_clamp_u32(14464u, arg_0, ~var_1.c) % 32u)));
    var var_3 = var_1.c;
    return global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(var_2.zy, ~arg_2.yx) >> (abs(arg_1) % 32u)), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.x, global2.x, ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global2.x, 1u, 10052u), vec4<u32>(global2.x, global2.x, global2.x, 72591u))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-19450i), _wgslsmith_sub_i32(-36246i, u_input.c.x)), u_input.a | max(vec2<i32>(u_input.c.x, -2147483647i), u_input.b), abs(vec2<i32>(2147483647i, 21209i))), vec2<i32>(-1i, u_input.c.x)));
    var var_1 = all(!(!vec3<bool>(true, all(vec3<bool>(false, var_0.a.a.x, var_0.a.a.x)), false)));
    let var_2 = var_0.a.a;
    let var_3 = 4294967295u;
    global1 = array<Struct_3, 23>();
    var var_4 = Struct_1(vec2<bool>(!var_0.a.a.x & all(!vec3<bool>(var_2.x, var_2.x, var_2.x)), select(true, true, !(var_2.x != false))), ~(~vec2<u32>(4294967295u, global2.x)) >> (max(func_1(4294967295u, _wgslsmith_clamp_u32(1u, 7670u, 45321u), ~vec4<u32>(25257u, 4294967295u, 1u, 4294967295u), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.c.x), u_input.c.wy)).b.zy, vec2<u32>(0u, var_0.b.x)) % vec2<u32>(32u)), var_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-298f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(func_2(vec2<f32>(-493f, -939f), Struct_4(var_3, var_0.d, var_0.b.x, u_input.b, vec3<i32>(-2199i, var_0.d, -11479i)), Struct_1(var_0.a.a, var_0.b.yx, global2.x, 891f), vec4<u32>(var_3, var_3, 84637u, 662u)), 25u)], _wgslsmith_f_op_f32(step(595f, global3[_wgslsmith_index_u32(var_0.a.c, 25u)])), true)))));
    var var_5 = abs(vec3<i32>((u_input.d ^ 2147483647i) << ((var_3 ^ select(4294967295u, 39411u, false)) % 32u), var_0.d, ~(~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.zw ^ var_5.zx, u_input.c.x);
}

