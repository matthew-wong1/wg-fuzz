struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(565f, -682f, 631f, -211f, -1850f, 1276f, -796f, 1014f, 1000f, -1000f, -1029f, 1377f, -657f, 721f, -750f, -1000f, -1000f, -1000f, 1226f, -670f, 2236f, 166f, 230f, -856f, -994f, -2711f, -188f, 580f, -341f, 1509f, -841f, -553f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global0 = array<f32, 32>();
    var var_0 = Struct_5(Struct_4(Struct_1(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, 2147483647i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 9744i, u_input.a.x, -2147483647i), vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.a.x)), vec2<u32>(1u, 1u)), Struct_3(vec4<bool>(true, any(vec2<bool>(false, true)), true, all(vec2<bool>(true, true))), Struct_1(vec4<i32>(2147483647i, 0i, u_input.a.x, u_input.b), vec2<u32>(88031u, 4294967295u))), Struct_3(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 1095i, 24101i), vec4<i32>(-19216i, u_input.c, 1421i, u_input.c)), select(vec2<u32>(0u, 34565u), vec2<u32>(1u, 1u), vec2<bool>(false, false)))), Struct_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true)), Struct_1(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -23244i) & vec4<i32>(-55557i, u_input.c, u_input.a.x, u_input.b), ~vec2<u32>(45620u, 4294967295u)))));
    let var_1 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a.b.b.b.x, 93028u, 4294967295u, var_0.a.d.b.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.c.b.b.x, var_0.a.d.b.b.x, var_0.a.a.b.x, var_0.a.a.b.x), countOneBits(vec4<u32>(var_0.a.b.b.b.x, var_0.a.b.b.b.x, 7384u, var_0.a.a.b.x)))) & _wgslsmith_sub_vec4_u32((_wgslsmith_mod_vec4_u32(vec4<u32>(28704u, 0u, 0u, var_0.a.c.b.b.x), vec4<u32>(5818u, var_0.a.a.b.x, 1u, var_0.a.b.b.b.x)) >> ((vec4<u32>(68365u, 19829u, 0u, var_0.a.d.b.b.x) | vec4<u32>(var_0.a.d.b.b.x, 4294967295u, 41278u, var_0.a.b.b.b.x)) % vec4<u32>(32u))) ^ (~vec4<u32>(2425u, var_0.a.a.b.x, var_0.a.a.b.x, 1u) >> (vec4<u32>(var_0.a.d.b.b.x, var_0.a.c.b.b.x, var_0.a.c.b.b.x, var_0.a.d.b.b.x) % vec4<u32>(32u))), vec4<u32>(var_0.a.d.b.b.x, firstTrailingBit(18940u), abs(var_0.a.b.b.b.x), _wgslsmith_mod_u32(var_0.a.b.b.b.x, var_0.a.b.b.b.x)));
    let var_2 = Struct_4(Struct_1(countOneBits(firstLeadingBit(select(vec4<i32>(u_input.b, u_input.c, -2147483647i, var_0.a.a.a.x), var_0.a.c.b.a, var_0.a.c.a.x))), vec2<u32>(~(1u >> (var_1.x % 32u)), abs(min(var_0.a.c.b.b.x, 0u)))), Struct_3(var_0.a.c.a, var_0.a.d.b), Struct_3(select(!vec4<bool>(var_0.a.b.a.x, false, false, true), !select(var_0.a.c.a, var_0.a.d.a, var_0.a.c.a.x), var_0.a.d.a), Struct_1(var_0.a.c.b.a, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 31496u), ~vec2<u32>(var_1.x, var_0.a.c.b.b.x)))), var_0.a.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f), -923f), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.a.c.b.b.x & var_2.a.b.x, 32u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(47695u, 32u)]))), var_0.a.d.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1056f), global0[_wgslsmith_index_u32(var_1.x, 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(692f)) - _wgslsmith_div_f32(1393f, 1179f))))));
    return select(vec4<bool>(any(!vec4<bool>(var_0.a.b.a.x, true, var_0.a.d.a.x, false)), !var_0.a.c.a.x | ((var_1.x ^ 4294967295u) <= (0u | var_2.d.b.b.x)), var_0.a.b.a.x, all(select(var_0.a.d.a.zz, var_0.a.d.a.yw, var_2.b.a.yw)) || select(select(false, var_2.d.a.x, var_2.d.a.x), false, var_2.b.a.x)), vec4<bool>(all(select(var_0.a.d.a.yyz, var_2.b.a.zwy, vec3<bool>(false, true, var_2.d.a.x))), any(select(select(var_0.a.c.a.wwy, vec3<bool>(var_0.a.d.a.x, var_0.a.b.a.x, var_2.b.a.x), var_0.a.c.a.x), var_2.b.a.zyw, !var_2.b.a.ywx)), true, true || !var_2.d.a.x), var_2.d.a.x);
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32((u_input.b >> (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u)) ^ (u_input.a.x | 1i), 3213i), reverseBits(_wgslsmith_sub_i32(~0i, abs(u_input.c >> (1u % 32u)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], -771f, global0[_wgslsmith_index_u32(5953u, 32u)], -2808f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], -1356f, -250f, -1844f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(0u, 32u)], -728f, -344f, global0[_wgslsmith_index_u32(60323u, 32u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], -306f, -926f, -858f))), func_3()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(701f, global0[_wgslsmith_index_u32(0u, 32u)], -426f, 1250f) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(35610u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], -668f)) * vec4<f32>(global0[_wgslsmith_index_u32(25186u, 32u)], 1000f, -1214f, -539f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, _wgslsmith_f_op_f32(-437f - global0[_wgslsmith_index_u32(1u, 32u)]), -693f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(93083u, 32u)] - global0[_wgslsmith_index_u32(27219u, 32u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(763f, 629f, global0[_wgslsmith_index_u32(72419u, 32u)], 353f)))));
    var var_2 = Struct_2(~(-2585i), func_3().x, var_1.xw, _wgslsmith_f_op_f32(min(-1000f, 187f)));
    let var_3 = Struct_3(vec4<bool>(var_2.b && (true && any(vec2<bool>(false, var_2.b))), any(!(!vec3<bool>(var_2.b, var_2.b, var_2.b))), ~countOneBits(35724u) >= min(1u, _wgslsmith_clamp_u32(0u, 1u, 0u)), all(vec2<bool>(select(var_2.b, var_2.b, false), false))), Struct_1(vec4<i32>(17858i, ~(-1i), _wgslsmith_add_i32(-1i, var_0) & -u_input.c, -2147483647i), ~(~vec2<u32>(15242u, 30879u))));
    let var_4 = Struct_5(Struct_4(Struct_1(~(~var_3.b.a), var_3.b.b >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u))), Struct_3(func_3(), Struct_1(vec4<i32>(u_input.a.x, var_0, u_input.c, 2147483647i), vec2<u32>(var_3.b.b.x, var_3.b.b.x))), var_3, Struct_3(select(!vec4<bool>(true, var_3.a.x, var_2.b, true), !vec4<bool>(false, var_3.a.x, var_3.a.x, false), func_3()), var_3.b)));
    return var_4.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_5(func_2());
    let var_1 = func_2().a.b;
    let var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.b.b.b.x, 32u)]);
    global0 = array<f32, 32>();
    let var_3 = Struct_2(countOneBits(var_0.a.d.b.a.x ^ max(u_input.c, var_0.a.d.b.a.x)), func_2().c.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2, global0[_wgslsmith_index_u32(var_0.a.d.b.b.x, 32u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(37783u, 32u)], 517f), vec2<f32>(global0[_wgslsmith_index_u32(35073u, 32u)], global0[_wgslsmith_index_u32(var_0.a.d.b.b.x, 32u)]))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-889f, var_2))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]))))), 1552f);
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    var var_0 = Struct_5(Struct_4(func_1(), func_2().d, Struct_3(vec4<bool>(false, all(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, false)), true), func_2().a), Struct_3(vec4<bool>(true, true, true, any(vec3<bool>(false, true, false))), Struct_1(~vec4<i32>(-1i, u_input.a.x, -2147483647i, -6684i), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 26292u), vec2<u32>(4294967295u, 48978u), vec2<u32>(4294967295u, 0u))))));
    let var_1 = !all(func_2().b.a.zw);
    global0 = array<f32, 32>();
    var_0 = Struct_5(func_2());
    var var_2 = ~(-85129i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.a.c.b.b.x, 1u), vec3<u32>(var_0.a.b.b.b.x, 1u, var_0.a.b.b.b.x)) & (vec3<u32>(var_0.a.a.b.x, var_0.a.d.b.b.x, 20821u) | vec3<u32>(0u, 0u, 0u)), vec3<u32>(var_0.a.c.b.b.x, _wgslsmith_dot_vec2_u32(var_0.a.d.b.b, var_0.a.a.b), _wgslsmith_div_u32(var_0.a.d.b.b.x, var_0.a.b.b.b.x)))), ~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.b.b.b.x, var_0.a.b.b.b.x, var_0.a.a.b.x), vec3<u32>(0u, var_0.a.a.b.x, 4294967295u)), ~vec3<u32>(12614u, 2103u, var_0.a.c.b.b.x) | (vec3<u32>(var_0.a.a.b.x, 82690u, var_0.a.b.b.b.x) & vec3<u32>(0u, var_0.a.a.b.x, var_0.a.a.b.x))), _wgslsmith_sub_i32(reverseBits(reverseBits(1i)), -_wgslsmith_mod_i32(u_input.c, -37598i)));
}

