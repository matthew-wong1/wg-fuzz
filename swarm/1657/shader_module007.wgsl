struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<u32, 6> = array<u32, 6>(34240u, 4294967295u, 1u, 37534u, 0u, 34808u);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global0 = array<Struct_1, 12>();
    var var_0 = select(vec3<i32>(-(~_wgslsmith_mult_i32(2147483647i, u_input.e.x)), ~_wgslsmith_mod_i32(12616i, 1i) & _wgslsmith_mod_i32(32787i, _wgslsmith_mult_i32(2425i, u_input.c)), u_input.e.x), vec3<i32>(-31358i, -1i >> (_wgslsmith_add_u32(global2.b.x, ~global2.a.x) % 32u), _wgslsmith_mult_i32(-2147483647i >> ((16242u << (global2.d.x % 32u)) % 32u), -1i)), all(select(select(select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, true, arg_0), false), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), arg_0), !vec4<bool>(false, true, true, arg_0)), !(!vec4<bool>(arg_0, false, false, true)), !vec4<bool>(false, true, arg_0, arg_0))));
    var var_1 = -2147483647i;
    global0 = array<Struct_1, 12>();
    var var_2 = global0[_wgslsmith_index_u32(~u_input.b.x, 12u)];
    return ~(~(~(~global1[_wgslsmith_index_u32(3265u, 6u)]))) <= global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4343u, ~_wgslsmith_mult_u32(global2.a.x, 16769u)), 6u)], 6u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_add_vec3_i32(u_input.e, _wgslsmith_mult_vec3_i32(u_input.e, vec3<i32>(firstLeadingBit(u_input.d.x), i32(-1i) * -18200i, ~(-1i)))) ^ (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e, u_input.e), vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x) << (vec3<u32>(13004u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75725u, 6u)], 6u)]) % vec3<u32>(32u))));
    global1 = array<u32, 6>();
    global1 = array<u32, 6>();
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.e.zz << (_wgslsmith_sub_vec2_u32(u_input.b.xy, ~u_input.b.xz) % vec2<u32>(32u)), u_input.e.xz);
    var var_2 = max(u_input.d, countOneBits(~abs(vec2<i32>(-11453i, var_0.x))));
    return reverseBits(firstLeadingBit(54036u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(~(8985u ^ global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_1.d.x), 6u)]), global2.d.x) ^ _wgslsmith_div_u32(firstLeadingBit(40286u), u_input.a.x);
    let var_1 = vec3<i32>(~(-arg_3.x), reverseBits(16555i), u_input.e.x);
    var var_2 = _wgslsmith_div_vec4_u32(~global2.a, vec4<u32>(~(~firstTrailingBit(2815u)), func_4(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.d.x), vec2<u32>(arg_0.d.x, arg_0.a.x)), 12u)], vec4<bool>(any(vec4<bool>(false, true, true, false)), true, func_3(true, Struct_1(vec4<u32>(arg_2.d.x, 4294967295u, 1u, var_0), arg_2.a, vec2<u32>(1u, 4294967295u), u_input.a.zy)), true)), var_0, ~(func_4(vec4<bool>(false, false, true, false), global0[_wgslsmith_index_u32(arg_1.b.x, 12u)], vec4<bool>(true, true, false, false)) >> (arg_0.c.x % 32u))));
    var var_3 = _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(~arg_3.x, -47364i, -37138i, 1i), arg_3 | arg_3)), ~var_1.x, ~(~1i));
    var var_4 = Struct_1(global2.a, ~global2.b, abs(vec2<u32>(62808u, arg_1.c.x)), ~vec2<u32>(18088u, 102988u));
    return Struct_1(~var_4.b, arg_2.a, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(50481u, arg_0.d.x), 1u, 4294967295u), 83205u), ~(~global2.a.yx));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> vec3<f32> {
    global2 = func_2(global0[_wgslsmith_index_u32(func_2(func_2(Struct_1(vec4<u32>(0u, arg_0.b.x, 1u, 16270u), firstTrailingBit(u_input.a), arg_0.a.xw, ~vec2<u32>(global1[_wgslsmith_index_u32(49342u, 6u)], global2.b.x)), arg_0, arg_0, vec4<i32>(arg_2.x, -u_input.c, ~arg_2.x, 10610i)), Struct_1(vec4<u32>(~4294967295u, arg_0.a.x | 0u, global2.c.x ^ 8468u, 0u), u_input.a, vec2<u32>(0u, arg_0.c.x), ~(~global2.a.zz)), global0[_wgslsmith_index_u32(74989u << (u_input.b.x % 32u), 12u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i ^ arg_2.x, arg_2.x, -33657i, -1i), arg_2, _wgslsmith_add_vec4_i32(~vec4<i32>(-9215i, u_input.c, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(arg_2.x, u_input.c, arg_2.x, arg_2.x))))).c.x, 12u)], func_2(func_2(Struct_1(vec4<u32>(6680u, 0u, 2859u, global2.d.x), global2.a, global2.a.xx, ~arg_0.a.wx), func_2(arg_0, Struct_1(vec4<u32>(1u, 4294967295u, 30240u, 31963u), vec4<u32>(59697u, global1[_wgslsmith_index_u32(0u, 6u)], 103169u, 1u), global2.b.xy, arg_0.c), func_2(arg_0, global0[_wgslsmith_index_u32(16167u, 12u)], Struct_1(vec4<u32>(global2.c.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.a.x), u_input.a, vec2<u32>(u_input.b.x, 1u), arg_0.c), vec4<i32>(arg_2.x, 1i, u_input.c, arg_2.x)), ~vec4<i32>(arg_2.x, arg_2.x, 2147483647i, -2147483647i)), func_2(Struct_1(vec4<u32>(0u, 71940u, 0u, 0u), vec4<u32>(37061u, global2.b.x, u_input.b.x, global2.a.x), arg_0.b.zz, vec2<u32>(0u, global1[_wgslsmith_index_u32(arg_0.c.x, 6u)])), arg_0, global0[_wgslsmith_index_u32(~u_input.b.x, 12u)], abs(vec4<i32>(u_input.d.x, -2147483647i, arg_2.x, arg_2.x))), min(vec4<i32>(-1i, -28375i, arg_2.x, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, u_input.d.x, 24456i), arg_2))), global0[_wgslsmith_index_u32(0u, 12u)], func_2(func_2(func_2(Struct_1(vec4<u32>(4294967295u, u_input.b.x, 39843u, arg_0.d.x), u_input.a, arg_0.c, vec2<u32>(arg_0.c.x, 1u)), Struct_1(vec4<u32>(arg_0.a.x, 9766u, arg_0.c.x, global2.d.x), vec4<u32>(global2.d.x, 34833u, u_input.b.x, global1[_wgslsmith_index_u32(16498u, 6u)]), vec2<u32>(arg_0.d.x, 1131u), global2.a.yx), Struct_1(arg_0.b, arg_0.b, vec2<u32>(arg_0.d.x, global2.c.x), arg_0.d), vec4<i32>(arg_2.x, 0i, u_input.d.x, arg_2.x)), arg_0, Struct_1(vec4<u32>(arg_0.b.x, arg_0.d.x, 41634u, 13901u), arg_0.b, vec2<u32>(0u, arg_0.b.x), vec2<u32>(u_input.a.x, arg_0.b.x)), arg_2), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(global2.d.x, u_input.a.x, 33657u, global2.b.x), u_input.a), arg_0.a, ~global2.c, abs(global2.c)), Struct_1(vec4<u32>(arg_0.b.x, 74935u, 92720u, global2.a.x) << (global2.a % vec4<u32>(32u)), u_input.a, vec2<u32>(0u, u_input.a.x), global2.c), vec4<i32>(i32(-1i) * -1i, -u_input.c, 56660i, -1i)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(arg_2 ^ arg_2), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_2.x, arg_2.x, 2147483647i), vec4<i32>(arg_2.x, 1i, 2147483647i, arg_2.x))), vec4<i32>(-arg_2.x, ~20961i, -18680i >> (global1[_wgslsmith_index_u32(global2.d.x, 6u)] % 32u), countOneBits(0i)))), Struct_1(global2.a, u_input.a, ~_wgslsmith_mult_vec2_u32(arg_0.a.wy, ~u_input.a.xw), vec2<u32>(u_input.a.x, arg_0.d.x)), arg_2);
    let var_0 = func_2(func_2(func_2(func_2(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.d.x, 6u)], 1u, 4197u, global2.c.x), vec4<u32>(global2.d.x, 25925u, global2.c.x, global2.d.x), u_input.b.zy, vec2<u32>(68914u, arg_0.b.x)), global0[_wgslsmith_index_u32(1u, 12u)], Struct_1(global2.a, arg_0.b, vec2<u32>(4294967295u, 8354u), global2.a.yz), arg_2 & arg_2), Struct_1(~u_input.a, global2.a, min(global2.a.yx, vec2<u32>(global2.a.x, 7769u)), ~vec2<u32>(23436u, arg_0.c.x)), Struct_1(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(76737u, global2.a.x, 25242u, 4294967295u)), _wgslsmith_mod_vec4_u32(global2.b, u_input.a), vec2<u32>(arg_0.d.x, 1u), ~vec2<u32>(0u, 1u)), vec4<i32>(_wgslsmith_dot_vec4_i32(arg_2, arg_2), _wgslsmith_div_i32(arg_2.x, u_input.e.x), -2147483647i, -u_input.d.x)), Struct_1(vec4<u32>(reverseBits(0u), ~global1[_wgslsmith_index_u32(39159u, 6u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global2.c.x, 6u)], u_input.a.x), 1u | global2.c.x), ~vec4<u32>(global2.d.x, 20033u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.a.x, 6u)], 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)]) << (_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, 28616u, 17566u, arg_0.a.x)) % vec4<u32>(32u)), vec2<u32>(1u, global2.a.x) | vec2<u32>(global1[_wgslsmith_index_u32(arg_0.d.x, 6u)], 33531u), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.b.zx, u_input.b.xx, global2.c), vec2<u32>(arg_0.a.x, global2.c.x))), func_2(arg_0, func_2(arg_0, Struct_1(u_input.a, vec4<u32>(0u, 16037u, 1u, 8002u), u_input.a.yz, vec2<u32>(global1[_wgslsmith_index_u32(arg_0.d.x, 6u)], u_input.a.x)), func_2(Struct_1(vec4<u32>(21477u, global2.c.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, arg_0.c.x, u_input.b.x), vec2<u32>(global1[_wgslsmith_index_u32(97771u, 6u)], u_input.a.x), vec2<u32>(u_input.b.x, 28365u)), arg_0, Struct_1(global2.a, arg_0.b, vec2<u32>(global1[_wgslsmith_index_u32(arg_0.a.x, 6u)], 0u), global2.a.xz), vec4<i32>(u_input.e.x, arg_2.x, arg_2.x, 25672i)), vec4<i32>(arg_2.x, -31468i, arg_2.x, 0i) | arg_2), arg_0, select(vec4<i32>(arg_2.x, u_input.c, arg_2.x, arg_2.x), ~arg_2, true)), max(vec4<i32>(arg_2.x, 2147483647i, u_input.e.x, 12745i), vec4<i32>(firstLeadingBit(0i), 0i, -1i, ~6491i))), Struct_1(arg_0.a | ~(arg_0.a & arg_0.b), func_2(Struct_1(~u_input.a, ~global2.b, _wgslsmith_clamp_vec2_u32(u_input.a.xz, arg_0.b.zy, vec2<u32>(u_input.a.x, 4294967295u)), ~vec2<u32>(1u, u_input.a.x)), func_2(global0[_wgslsmith_index_u32(abs(arg_0.c.x), 12u)], Struct_1(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)]), vec4<u32>(6123u, u_input.a.x, 4294967295u, 4294967295u), vec2<u32>(6076u, global1[_wgslsmith_index_u32(96476u, 6u)]), vec2<u32>(global2.a.x, 1974u)), Struct_1(vec4<u32>(12528u, 50613u, 0u, 31180u), vec4<u32>(arg_0.a.x, 55083u, arg_0.c.x, u_input.a.x), u_input.b.zz, vec2<u32>(arg_0.b.x, 1u)), ~arg_2), Struct_1(u_input.a ^ vec4<u32>(global1[_wgslsmith_index_u32(25850u, 6u)], u_input.a.x, 0u, 15348u), vec4<u32>(global1[_wgslsmith_index_u32(27956u, 6u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.x, 6u)], 6u)], arg_0.d.x), _wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 4294967295u), arg_0.a.zw), arg_0.a.xx << (vec2<u32>(13457u, 1u) % vec2<u32>(32u))), arg_2).a, ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)] ^ 1481u, 6u)], _wgslsmith_add_u32(u_input.b.x, 40629u)), min(u_input.b.yx, _wgslsmith_sub_vec2_u32(~arg_0.d, ~vec2<u32>(global1[_wgslsmith_index_u32(64980u, 6u)], 4294967295u)))), func_2(Struct_1(vec4<u32>(_wgslsmith_sub_u32(global2.a.x, arg_0.c.x), 4294967295u, _wgslsmith_div_u32(1u, arg_0.c.x), u_input.a.x << (51154u % 32u)), ~(~vec4<u32>(arg_0.b.x, global1[_wgslsmith_index_u32(arg_0.b.x, 6u)], global1[_wgslsmith_index_u32(3952u, 6u)], global2.a.x)), ~abs(vec2<u32>(arg_0.d.x, 4294967295u)), ~abs(u_input.b.xx)), func_2(func_2(Struct_1(vec4<u32>(1u, global2.c.x, arg_0.a.x, u_input.a.x), vec4<u32>(arg_0.c.x, 4294967295u, 65463u, 0u), arg_0.d, vec2<u32>(4294967295u, 4294967295u)), global0[_wgslsmith_index_u32(4294967295u, 12u)], func_2(global0[_wgslsmith_index_u32(arg_0.a.x, 12u)], Struct_1(global2.b, vec4<u32>(4294967295u, 43495u, 23766u, global1[_wgslsmith_index_u32(49789u, 6u)]), global2.d, vec2<u32>(u_input.b.x, 7116u)), arg_0, arg_2), arg_2 << (global2.a % vec4<u32>(32u))), Struct_1(vec4<u32>(77706u, u_input.b.x, 12941u, 68004u), vec4<u32>(51100u, 1u, arg_0.c.x, 60788u), vec2<u32>(u_input.b.x, 6014u), ~vec2<u32>(global2.a.x, global1[_wgslsmith_index_u32(0u, 6u)])), arg_0, arg_2), func_2(Struct_1(u_input.a, ~arg_0.b, u_input.b.xx ^ u_input.b.xz, vec2<u32>(global1[_wgslsmith_index_u32(global2.a.x, 6u)], 33221u) << (u_input.a.xw % vec2<u32>(32u))), func_2(func_2(Struct_1(arg_0.b, vec4<u32>(u_input.b.x, global2.c.x, 4294967295u, u_input.a.x), vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 35183u), vec2<u32>(46804u, 31436u)), Struct_1(vec4<u32>(45388u, u_input.b.x, global2.c.x, global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), arg_0.b, global2.d, vec2<u32>(global2.a.x, 0u)), arg_0, arg_2), Struct_1(vec4<u32>(0u, global2.c.x, 0u, arg_0.a.x), arg_0.b, u_input.a.xw, arg_0.c), Struct_1(arg_0.b, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 4999u, 12499u, u_input.b.x), vec2<u32>(0u, global2.c.x), vec2<u32>(global2.b.x, u_input.b.x)), select(arg_2, vec4<i32>(arg_2.x, arg_2.x, -13752i, u_input.d.x), vec4<bool>(true, true, false, false))), Struct_1(~vec4<u32>(1u, global1[_wgslsmith_index_u32(global2.a.x, 6u)], 4294967295u, 12596u), max(vec4<u32>(4294967295u, u_input.a.x, global2.b.x, global1[_wgslsmith_index_u32(511u, 6u)]), vec4<u32>(4294967295u, global2.c.x, global2.c.x, 70367u)), vec2<u32>(global2.d.x, 50536u), arg_0.b.wx), arg_2), -vec4<i32>(-arg_2.x, -u_input.c, 19388i, arg_2.x)), ~firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, u_input.e.x, 1i), arg_2, arg_2) ^ ~vec4<i32>(761i, -44337i, -2147483647i, -23448i)));
    let var_1 = 1f;
    global2 = Struct_1(abs(global2.b), var_0.a, firstLeadingBit(abs(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], var_0.d.x), arg_0.a.zw)))), select(~(_wgslsmith_sub_vec2_u32(arg_0.a.wy, var_0.b.yw) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), global2.a.zz, select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(arg_0.c.x != arg_0.b.x, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    var var_2 = u_input.e.yz;
    return _wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-653f + _wgslsmith_f_op_f32(-arg_1)), -1403f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1195f, -586f, 162f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1009f, 643f, 1223f))), vec3<f32>(var_1, arg_1, arg_1))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -427f, arg_1)), vec3<f32>(-1008f, arg_1, 660f))))));
}

fn func_1(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-578f * -2026f) * _wgslsmith_div_f32(988f, 1679f)))), -477f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1437f * 886f) + _wgslsmith_f_op_f32(-1781f * -1000f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(func_2(Struct_1(vec4<u32>(0u, 72472u, 29373u, global1[_wgslsmith_index_u32(26764u, 6u)]), vec4<u32>(4294967295u, global2.a.x, 29862u, 69945u), global2.a.wy, global2.a.yw), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(39305u, 6u)], global1[_wgslsmith_index_u32(66164u, 6u)], global1[_wgslsmith_index_u32(41045u, 6u)], 4294967295u), global2.b, u_input.b.zz, u_input.a.zw), Struct_1(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 6u)], u_input.a.x, 44151u), global2.b, global2.a.zy, vec2<u32>(0u, 4240u)), vec4<i32>(-1i, 0i, arg_0.x, -2147483647i)), _wgslsmith_f_op_f32(var_0.x + var_0.x), vec4<i32>(-2147483647i, -2147483647i, arg_0.x, -2147483647i) << (vec4<u32>(17265u, 4294967295u, global2.c.x, global2.b.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, 542f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, var_0.x, -1000f))), true)))));
    let var_1 = func_2(Struct_1(vec4<u32>(u_input.a.x, countOneBits(global2.b.x), 1u & (global1[_wgslsmith_index_u32(0u, 6u)] & global2.c.x), max(1u, 4294967295u)), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.b.x, 15692u), 6u)], 6u)], ~(global1[_wgslsmith_index_u32(4294967295u, 6u)] | global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), abs(~4294967295u), ~4294967295u), u_input.a.xz & vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(26355u, global2.a.x)), vec2<u32>(0u, global2.c.x)), global2.b.xy, _wgslsmith_add_vec2_u32(min(u_input.b.xy, vec2<u32>(global2.c.x, global2.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 1u), vec2<u32>(29101u, global2.d.x))))), Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~global2.a, ~u_input.a), firstTrailingBit(global2.a)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(21175u, u_input.a.x, 0u, global2.d.x), vec4<u32>(global2.b.x, u_input.b.x, global1[_wgslsmith_index_u32(global2.c.x, 6u)], 1u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), abs(vec2<u32>(global2.a.x, 4294967295u))), min(u_input.b.yz, _wgslsmith_sub_vec2_u32(abs(u_input.b.yx), vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)], 6u)], 6u)])))), Struct_1(_wgslsmith_sub_vec4_u32(~u_input.a, u_input.a), ~_wgslsmith_mod_vec4_u32(global2.b, vec4<u32>(4294967295u, global2.b.x, global1[_wgslsmith_index_u32(11190u, 6u)], u_input.b.x)) | ~vec4<u32>(u_input.b.x, 1u, u_input.a.x, global1[_wgslsmith_index_u32(1u, 6u)]), global2.b.wx, ~global2.a.zy), (select(vec4<i32>(79449i, arg_0.x, -37898i, arg_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, arg_0.x, arg_0.x), vec4<i32>(u_input.e.x, u_input.c, -40531i, arg_0.x)), func_3(true, Struct_1(vec4<u32>(0u, 0u, 1u, global2.b.x), vec4<u32>(global2.d.x, global1[_wgslsmith_index_u32(10479u, 6u)], u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec2<u32>(global2.c.x, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)])))) & _wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, u_input.d.x, arg_0.x, 1i), min(vec4<i32>(u_input.c, 0i, 1i, u_input.e.x), vec4<i32>(2147483647i, 0i, -1i, 28990i)))) >> (vec4<u32>(_wgslsmith_mult_u32(min(37483u, 8776u), u_input.a.x >> (0u % 32u)), 136949u, _wgslsmith_add_u32(_wgslsmith_div_u32(global2.c.x, 0u), abs(u_input.b.x)), _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 6u)]), u_input.a.x)) % vec4<u32>(32u)));
    global0 = array<Struct_1, 12>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx));
    return select(vec2<bool>(true, any(vec4<bool>(false, true, any(vec3<bool>(true, false, true)), true))), select(!vec2<bool>(any(vec4<bool>(true, false, true, false)), select(false, true, true)), vec2<bool>(firstLeadingBit(u_input.c) > ~u_input.e.x, all(vec4<bool>(true, true, true, true))), true), all(vec2<bool>(true, all(vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(any(vec2<bool>(true, true)), u_input.a.x == _wgslsmith_div_u32(4294967295u, 24448u)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), true);
    let var_1 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(~17539u, 6u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(38378u, 6u)], 4294967295u), 40212u), global2.b.wwy));
    let var_2 = false;
    var var_3 = func_1(min(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-26960i, u_input.c, u_input.d.x)), ~vec3<i32>(-1246i, u_input.c, u_input.c)), u_input.e));
    var var_4 = Struct_1(u_input.a, ~global2.a, select(_wgslsmith_mod_vec2_u32(select(_wgslsmith_clamp_vec2_u32(u_input.b.xz, global2.a.zy, vec2<u32>(1937u, var_1.x)), u_input.b.xy, var_0), global2.a.yz), reverseBits(_wgslsmith_div_vec2_u32(global2.b.zz, global2.a.yy >> (vec2<u32>(global1[_wgslsmith_index_u32(global2.c.x, 6u)], global1[_wgslsmith_index_u32(89538u, 6u)]) % vec2<u32>(32u)))), !var_3.x), vec2<u32>(28908u, var_1.x));
    let var_5 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, global2.b), reverseBits(vec4<u32>(1u, u_input.a.x, 10588u, 32712u))), func_2(global0[_wgslsmith_index_u32(func_2(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(33955u, 6u)], 1049u, var_4.a.x, 4294967295u), vec4<u32>(0u, u_input.b.x, var_1.x, 4294967295u), vec2<u32>(global2.a.x, u_input.b.x), var_1.yz), global0[_wgslsmith_index_u32(var_4.b.x, 12u)], global0[_wgslsmith_index_u32(~global2.b.x, 12u)], _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -24827i, u_input.c, u_input.e.x), vec4<i32>(u_input.d.x, 1i, -22340i, u_input.d.x))).c.x, 12u)], func_2(func_2(Struct_1(vec4<u32>(var_1.x, global2.a.x, 3536u, global1[_wgslsmith_index_u32(0u, 6u)]), global2.b, var_4.a.wz, vec2<u32>(13058u, 1u)), global0[_wgslsmith_index_u32(57733u, 12u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39259u, 6u)], 12u)], vec4<i32>(u_input.e.x, -4020i, -2147483647i, 18355i)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(var_1.x, 12u)], global0[_wgslsmith_index_u32(var_4.c.x, 12u)], Struct_1(vec4<u32>(0u, 0u, var_4.a.x, 121463u), var_4.b, vec2<u32>(var_4.d.x, 4294967295u), u_input.a.zw), vec4<i32>(-2147483647i, -38238i, u_input.c, u_input.c)).b.x, 6u)], 12u)], Struct_1(u_input.a, vec4<u32>(0u, var_4.b.x, 1u, global1[_wgslsmith_index_u32(global2.b.x, 6u)]), vec2<u32>(global1[_wgslsmith_index_u32(13047u, 6u)], var_1.x), var_4.b.yx), -vec4<i32>(u_input.d.x, u_input.d.x, u_input.e.x, u_input.d.x)), Struct_1(global2.a, u_input.a ^ vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(var_4.d.x, 6u)], global1[_wgslsmith_index_u32(var_4.c.x, 6u)], var_1.x), max(vec2<u32>(51270u, u_input.a.x), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a.x)), vec2<u32>(49736u, global1[_wgslsmith_index_u32(15812u, 6u)])), firstLeadingBit(countOneBits(vec4<i32>(-1i, -25222i, 34853i, 0i)))).c.x, ~(~var_4.d.x) << (~global2.c.x % 32u), var_4.b.x), vec4<u32>(var_1.x, 3804u, 37014u, 13580u), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32((vec2<u32>(global2.b.x, var_4.d.x) << (global2.d % vec2<u32>(32u))) << (var_1.xz % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, var_4.b.x), 14808u)), vec2<u32>(0u, global1[_wgslsmith_index_u32(30868u, 6u)]), u_input.a.xz), var_1.yz);
    let var_6 = select(var_0, vec2<bool>(true, !(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 0u) > ~4294967295u)), func_1(select(~reverseBits(vec3<i32>(-14578i, u_input.d.x, u_input.d.x)), (u_input.e | vec3<i32>(-68060i, -2230i, u_input.d.x)) | ~u_input.e, !any(vec2<bool>(var_0.x, false)))));
    var var_7 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global2.c.x, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)] | 97687u, u_input.b.x, 0u << (var_4.b.x % 32u)) ^ ~vec4<u32>(0u, 44414u, 9466u, var_5.d.x), ~(~vec4<u32>(u_input.b.x, 1u, 4294967295u, global2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_5.d));
}

