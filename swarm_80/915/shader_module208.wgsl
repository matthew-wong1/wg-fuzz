struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 14>;

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_2(4515u, vec4<i32>(22639i, 0i, 19004i, i32(-2147483648)), vec4<i32>(13049i, 6662i, i32(-2147483648), 1i), vec4<u32>(4294967295u, 0u, 78599u, 31037u))), Struct_3(Struct_2(95957u, vec4<i32>(-58908i, 39911i, -34636i, -41058i), vec4<i32>(25659i, 1i, 1i, -14574i), vec4<u32>(0u, 0u, 18355u, 0u))));

var<private> global3: array<Struct_3, 5>;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(false, false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global0 = Struct_2(_wgslsmith_sub_u32(min(4240u, u_input.b ^ ~global0.d.x), _wgslsmith_mult_u32(~global0.a << (~global0.a % 32u), global0.a)), global0.c, ~vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, u_input.a.x, u_input.a.x)), global0.c.x, ~(-global0.b.x), i32(-1i) * -global0.c.x), abs(global0.d));
    global1 = array<f32, 14>();
    let var_0 = vec3<bool>(true, !global4.a.x, true);
    var var_1 = -1000f;
    let var_2 = var_0;
    return _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(74105u, -vec4<i32>(firstLeadingBit(~(-38989i)), func_3(), -2147483647i, 1i), -vec4<i32>(1i, -global0.b.x | firstTrailingBit(0i), u_input.a.x, global0.c.x), ~firstTrailingBit(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b, 58466u, 5685u, 4294967295u), global0.d, vec4<bool>(global4.a.x, global4.a.x, false, true)), vec4<u32>(54223u, global0.a, u_input.b, u_input.b))));
    return ~u_input.b << (1u % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1.x;
    global3 = array<Struct_3, 5>();
    var var_1 = vec3<i32>(abs(_wgslsmith_dot_vec2_i32(u_input.a.xx, _wgslsmith_div_vec2_i32(~global0.b.xw, arg_2.b.yz))), 1i, i32(-1i) * -(~arg_2.c.x));
    global2 = array<Struct_3, 2>();
    var_0 = ~u_input.b | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u >> ((arg_2.a ^ arg_0.a) % 32u), func_2(), 6365u, 4294967295u), arg_0.d);
    return Struct_1(global4.a);
}

fn func_1() -> u32 {
    var var_0 = vec4<i32>(57123i, abs(-_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, 2147483647i), 2147483647i)), ~(~(-_wgslsmith_dot_vec2_i32(global0.c.yy, global0.b.yy))), abs(-37037i << (_wgslsmith_sub_u32(12404u, _wgslsmith_dot_vec2_u32(vec2<u32>(57089u, u_input.b), global0.d.wz)) % 32u)));
    var var_1 = func_4(Struct_2(~func_2(), select(global0.b ^ vec4<i32>(1i, -2147483647i, 0i, 28511i), firstTrailingBit(-global0.b), select(!vec4<bool>(global4.a.x, false, true, true), !vec4<bool>(false, global4.a.x, true, global4.a.x), !global4.a.x)), -global0.c, ~vec4<u32>(_wgslsmith_mult_u32(4294967295u, global0.a), func_2(), u_input.b << (global0.d.x % 32u), 0u)), global0.d.ywx, Struct_2(u_input.b, vec4<i32>(-1153i, -var_0.x | ~(-1i), 1i, 1i), global0.c, global0.d));
    var var_2 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.x, u_input.a.x, -2147483647i ^ ~global0.c.x, func_3()), -vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, 58646i), vec2<i32>(-3600i, var_0.x))), i32(-1i) * -51737i, countOneBits(var_0.x), var_0.x), _wgslsmith_mod_vec4_i32(-(_wgslsmith_div_vec4_i32(vec4<i32>(20329i, 48696i, global0.c.x, 0i), global0.c) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 10941u, global0.d.x, 8896u), global0.d) % vec4<u32>(32u))), vec4<i32>(-7956i, -19331i, global0.c.x, -37551i)));
    let var_3 = vec2<u32>(reverseBits(~u_input.b | u_input.b) & u_input.b, _wgslsmith_dot_vec2_u32(global0.d.wx, vec2<u32>(~34857u, _wgslsmith_add_u32(~u_input.b, global0.d.x))));
    var_0 = vec4<i32>(select(-2147483647i, firstLeadingBit(-2191i), global1[_wgslsmith_index_u32(~(74802u >> (u_input.b % 32u)), 14u)] == _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_3.x, 14u)], -744f)), func_3(), u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -global0.c, vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(43396i, global0.c.x), 2147483647i, _wgslsmith_sub_i32(2147483647i, global0.c.x))));
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_div_u32(~18729u, u_input.b), func_1()), global0.b, vec4<i32>(u_input.a.x, _wgslsmith_div_i32(~global0.c.x, ~u_input.a.x), 1i, func_3() | ~u_input.a.x) & global0.c, ~global0.d);
    var var_0 = global3[_wgslsmith_index_u32(global0.d.x, 5u)];
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~global0.d, global0.d >> (select(global0.d, vec4<u32>(var_0.a.d.x, global0.a, 66022u, 0u), select(select(vec4<bool>(global4.a.x, true, global4.a.x, false), vec4<bool>(false, global4.a.x, global4.a.x, false), true), vec4<bool>(true, global4.a.x, global4.a.x, global4.a.x), true)) % vec4<u32>(32u))), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~0u, _wgslsmith_mod_u32(0u, global0.a), var_0.a.a, _wgslsmith_clamp_u32(74309u, 4294967295u, var_0.a.a))), ~var_1.a.d), global0.c.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~1i, var_0.a.b.x), _wgslsmith_clamp_i32(var_1.a.c.x & 2147483647i, firstLeadingBit(global0.b.x), _wgslsmith_mod_i32(-2147483647i, var_0.a.c.x))), -reverseBits(-2147483647i)), vec4<u32>(~_wgslsmith_add_u32(1u, u_input.b) ^ firstTrailingBit(~global0.d.x), var_1.a.d.x, _wgslsmith_mod_u32(global0.a, _wgslsmith_sub_u32(global0.d.x, var_0.a.a)) >> (global0.a % 32u), u_input.b), min(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.c.x, 0i), vec2<i32>(var_0.a.b.x | global0.b.x, global0.c.x)), firstTrailingBit(-vec2<i32>(66058i, 35296i))));
}

