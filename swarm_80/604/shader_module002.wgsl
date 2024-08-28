struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(20806i, -38014i));

var<private> global1: array<u32, 8> = array<u32, 8>(18544u, 6540u, 1u, 63961u, 1u, 80865u, 0u, 15725u);

var<private> global2: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(30041i, -1i, -17915i, -23676i), vec4<i32>(33621i, 1i, -31771i, 1i), vec4<i32>(-29101i, -1149i, i32(-2147483648), -30321i), vec4<i32>(-1i, -7027i, -1844i, 1i), vec4<i32>(1i, 0i, -1i, 35019i), vec4<i32>(-27351i, 2147483647i, -41241i, -1i), vec4<i32>(52841i, 0i, -20785i, -10463i), vec4<i32>(-514i, -12727i, 2147483647i, 6788i), vec4<i32>(2147483647i, 11722i, 414i, -17562i));

var<private> global3: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true));

var<private> global4: Struct_5;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global2 = array<vec4<i32>, 9>();
    let var_0 = u_input.e.x;
    return countOneBits(0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> vec4<u32> {
    var var_0 = select(vec4<bool>((global4.c.x != global4.c.x) == true, true, !global4.b.c.c.x, false), !global4.b.c.c, (16147u >> (~u_input.d.x % 32u)) >= global4.b.a);
    let var_1 = _wgslsmith_f_op_f32(select(145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)) * 750f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(254f)) + arg_1)))), false));
    global4 = Struct_5(_wgslsmith_sub_i32(global4.a, countOneBits(-5318i) | firstTrailingBit(select(arg_0.x, 14381i, var_0.x))), global4.b, global4.c);
    global0 = array<vec2<i32>, 1>();
    let var_2 = global4.b.c;
    return _wgslsmith_mult_vec4_u32(~(vec4<u32>(func_3(), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(1u, 8u)], 32744u), u_input.d), 1u, abs(1u)) ^ firstLeadingBit(u_input.d << (u_input.d % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(max(_wgslsmith_sub_vec4_u32(global4.b.b, global4.b.b) ^ reverseBits(vec4<u32>(4294967295u, global4.b.b.x, global1[_wgslsmith_index_u32(global4.b.a, 8u)], 1u)), reverseBits(abs(vec4<u32>(17828u, global4.b.b.x, u_input.c, 4294967295u)))), vec4<u32>(u_input.b, func_3(), 4294967295u, ~(~u_input.d.x)), vec4<u32>(_wgslsmith_mult_u32(~4294967295u, global4.b.a | 1u), ~(~44690u), 16254u, _wgslsmith_mod_u32(global4.b.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.b.a, 8u)], 8u)] ^ 1u))));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global4.a, 0i, arg_1.c.a, global4.a), vec4<i32>(27032i, global4.a, arg_1.c.a, global4.a)), u_input.a & u_input.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1.b.x, global1[_wgslsmith_index_u32(arg_0, 8u)], 1u), func_2(u_input.e, global4.c.x)) % vec4<u32>(32u)), u_input.a), arg_1.c, vec2<u32>(~arg_1.a, arg_0), Struct_1(-41476i, select(global4.b.c.c.yzy, arg_1.c.b, !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global4.b.a), 29u)]), vec4<bool>(!(true & arg_1.c.b.x), select(false, global4.b.c.b.x, true), global4.b.c.d >= ~1i, false), -(~(arg_1.c.a << (11138u % 32u)))));
    var var_1 = select(vec2<u32>(~var_0.c.x, global4.b.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(var_0.c.x), arg_0), ~(abs(vec2<u32>(22367u, arg_0)) >> (arg_1.b.wz % vec2<u32>(32u))), ~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 20980u), var_0.c))), global4.b.c.c.x);
    var var_2 = global4.b.c.b.x;
    global1 = array<u32, 8>();
    global3 = array<vec3<bool>, 29>();
    return (reverseBits(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -15494i), var_0.a.yw, vec2<i32>(1967i, 2147483647i)), min(vec2<i32>(u_input.a.x, global4.a), global0[_wgslsmith_index_u32(49066u, 1u)]))) << (vec2<u32>(50329u, ~1u) % vec2<u32>(32u))) | ~vec2<i32>(arg_1.c.d | global4.b.c.a, global4.b.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -39738i, min(_wgslsmith_add_i32(u_input.e.x, global4.a) & global4.b.c.d, ~select(global4.b.c.a, 62668i, false)));
    let var_1 = func_1(98657u, global4.b);
    let var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(40774u, ~4294967295u, ~4294967295u ^ _wgslsmith_sub_u32(global4.b.b.x, 21469u), ~_wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(10065u, global1[_wgslsmith_index_u32(u_input.c, 8u)]))), _wgslsmith_mult_vec4_u32(u_input.d, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 46470u, 104208u, u_input.c), vec4<u32>(49060u, global1[_wgslsmith_index_u32(u_input.c, 8u)], u_input.d.x, 0u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global4.c, vec4<f32>(global4.c.x, global4.c.x, global4.c.x, -1000f), global4.b.c.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2483f, global4.c.x, global4.c.x, global4.c.x)))))));
    global1 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.b.b);
}

