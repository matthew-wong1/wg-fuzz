struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global2 = array<vec4<bool>, 8>();
    return any(select(!global0[_wgslsmith_index_u32(1u, 8u)], select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4381u, _wgslsmith_dot_vec2_u32(u_input.e.xy, u_input.e.xz)), 8u)], vec3<bool>(true, true, true), true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, global1.x, global1.x), vec4<i32>(-47303i, -93909i, u_input.a, global1.x)) == countOneBits(-52485i)));
}

fn func_2() -> Struct_5 {
    global2 = array<vec4<bool>, 8>();
    var var_0 = !func_3();
    global2 = array<vec4<bool>, 8>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f + _wgslsmith_f_op_f32(-603f * _wgslsmith_f_op_f32(step(-2053f, 234f)))) * -1455f) + 839f);
    let var_2 = -abs(-2147483647i);
    return Struct_5(-999f, (countOneBits(1u) >> (~(u_input.b.x << (u_input.e.x % 32u)) % 32u)) & u_input.e.x, Struct_4(Struct_1(false, 740f, ~vec4<u32>(1u, u_input.c, u_input.d, 54310u) | u_input.e, firstTrailingBit(vec4<i32>(u_input.a, 2147483647i, var_2, 1i)) & vec4<i32>(34129i, var_2, var_2, var_2), _wgslsmith_f_op_f32(-1f)), Struct_2(Struct_1(true, -1194f, ~vec4<u32>(u_input.c, 0u, 0u, u_input.c), reverseBits(vec4<i32>(u_input.a, global1.x, global1.x, 327i)), 594f), max(~var_2, -18611i), Struct_1(false, _wgslsmith_f_op_f32(-1695f * 1000f), u_input.e, ~vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1500f)), 16449i), Struct_2(Struct_1(all(vec2<bool>(true, true)), 235f, ~vec4<u32>(u_input.e.x, 103392u, u_input.c, u_input.e.x), ~vec4<i32>(-8480i, var_2, -1725i, u_input.a), -775f), 2147483647i, Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -443f), reverseBits(u_input.e), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2, -14835i, global1.x, 9364i), vec4<i32>(29033i, 2147483647i, -5806i, 2147483647i)), _wgslsmith_f_op_f32(floor(-748f))), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f) + -734f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(193f - 1055f), _wgslsmith_f_op_f32(f32(-1f) * -810f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1041f - 1190f)))), _wgslsmith_f_op_f32(-390f * -249f)), u_input.d);
}

fn func_1() -> Struct_1 {
    var var_0 = 1u;
    let var_1 = vec2<bool>(true, true);
    let var_2 = func_2();
    var var_3 = vec2<u32>(select(var_2.b, var_2.c.c.a.c.x, !var_2.c.c.c.a), reverseBits(4294967295u)) | (~u_input.b & ~(~_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(u_input.d, 13878u))));
    let var_4 = -(var_2.c.b.d | _wgslsmith_add_i32(-70317i, ~_wgslsmith_sub_i32(global1.x, 1i)));
    return func_2().c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(), func_2().c.b, func_2().c.c);
    var_0 = func_2().c;
    let var_1 = ~countOneBits(~_wgslsmith_mult_u32(0u, u_input.c) << (_wgslsmith_div_u32(4294967295u, 46563u) % 32u));
    global0 = array<vec3<bool>, 8>();
    let var_2 = Struct_5(1755f, ~(firstTrailingBit(~0u) << (firstLeadingBit(abs(u_input.b.x)) % 32u)), Struct_4(Struct_1(-228i > var_0.c.d, func_1().b, var_0.a.c, ~reverseBits(vec4<i32>(-1i, var_0.a.d.x, var_0.c.a.d.x, u_input.a)), _wgslsmith_f_op_f32(select(-474f, _wgslsmith_div_f32(var_0.a.e, 707f), var_0.b.c.a))), func_2().c.c, Struct_2(Struct_1(true, _wgslsmith_f_op_f32(2075f * var_0.b.c.e), vec4<u32>(1u, 27106u, var_0.a.c.x, 33530u), _wgslsmith_sub_vec4_i32(vec4<i32>(27368i, 2147483647i, global1.x, global1.x), var_0.c.a.d), var_0.a.e), ~firstLeadingBit(var_0.c.c.d.x), func_1(), func_2().c.b.b)), vec4<f32>(var_0.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.a.e * var_0.b.a.e))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.e, _wgslsmith_div_f32(var_0.a.e, -535f)) + var_0.c.c.e), _wgslsmith_div_f32(var_0.b.c.b, var_0.b.a.b)), 10063u);
    var var_3 = Struct_4(func_2().c.a, var_2.c.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_0.c.a.e)) >= _wgslsmith_f_op_f32(select(var_0.c.a.e, -531f, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-972f)), _wgslsmith_f_op_f32(-788f + var_0.c.a.b)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.e, var_2.c.a.c.x, var_0.c.c.c.x, 4294967295u), var_2.c.b.c.c), var_0.a.c), func_1().d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.b)) - -2280f)), min(u_input.a, -7528i), Struct_1(var_2.c.b.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f - var_0.a.b) + _wgslsmith_f_op_f32(var_2.c.a.b * 1206f)), vec4<u32>(~var_1, var_1, ~14134u, _wgslsmith_sub_u32(5u, var_0.a.c.x)), max(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, 39451i, u_input.a), vec4<i32>(var_0.a.d.x, -1i, var_0.b.b, 1i)), vec4<i32>(u_input.a, 2147483647i, global1.x, 2147483647i)), _wgslsmith_f_op_f32(min(var_2.d.x, -1251f))), reverseBits(_wgslsmith_clamp_i32(32133i, global1.x, 2147483647i)) & ~(-2147483647i >> (u_input.c % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.zy, var_2.d.wzy);
}

