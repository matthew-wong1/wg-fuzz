struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: array<i32, 29> = array<i32, 29>(16616i, 1i, 17349i, 1i, 1i, i32(-2147483648), 0i, -1i, 0i, -1i, -22081i, 422i, 22107i, 61095i, i32(-2147483648), -25961i, -40424i, -3821i, 0i, -6345i, -1i, -56986i, -75549i, 34263i, -11918i, i32(-2147483648), 2147483647i, 0i, -95i);

var<private> global2: array<Struct_3, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> u32 {
    global0 = array<vec3<f32>, 16>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(~firstLeadingBit(arg_2.a.x), 16u)] - global0[_wgslsmith_index_u32(u_input.b.x, 16u)])) - global0[_wgslsmith_index_u32(1u, 16u)]);
    var var_1 = _wgslsmith_sub_vec4_u32(reverseBits(select(vec4<u32>(0u, 2085u, u_input.a, 1u), vec4<u32>(u_input.a, arg_2.a.x, u_input.a, arg_2.a.x), true) & max(vec4<u32>(1u, u_input.b.x, 98947u, 53628u), vec4<u32>(u_input.b.x, u_input.a, 10545u, 0u))) & _wgslsmith_add_vec4_u32(~abs(vec4<u32>(arg_2.a.x, 4294967295u, u_input.a, u_input.b.x)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 87987u, 25978u, arg_2.a.x), vec4<u32>(0u, u_input.b.x, 2827u, arg_2.a.x), vec4<u32>(4294967295u, arg_2.a.x, 14624u, arg_2.a.x)))), vec4<u32>(arg_2.a.x, reverseBits(_wgslsmith_add_u32(u_input.a, 0u)), max(45664u, u_input.b.x), arg_2.a.x) | (abs(vec4<u32>(arg_2.a.x, u_input.a, 1u, u_input.b.x)) | ~countOneBits(vec4<u32>(0u, 1u, arg_2.a.x, arg_2.a.x))));
    var var_2 = !all(vec3<bool>(true, arg_2.c.c, !all(arg_2.c.b)));
    let var_3 = vec2<u32>(0u, 1387u);
    return 14506u & ~(~var_1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_5 {
    var var_0 = min(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a, 4294967295u, u_input.a)), u_input.b.x, countOneBits(0u), ~4294967295u) >> (vec4<u32>(~u_input.a, 6695u, _wgslsmith_div_u32(u_input.a, u_input.b.x), u_input.b.x) % vec4<u32>(32u))), min(vec4<u32>(abs(~46080u), ~firstTrailingBit(u_input.a), _wgslsmith_mult_u32(func_3(global1[_wgslsmith_index_u32(4294967295u, 29u)], -46881i, Struct_3(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), Struct_1(arg_2.d), arg_2, -2147483647i, arg_2.e)), 21634u), ~u_input.b.x << (50083u % 32u)), vec4<u32>(1u, 0u, _wgslsmith_add_u32(u_input.b.x, firstTrailingBit(u_input.a)), ~_wgslsmith_div_u32(u_input.b.x, 2455u))));
    global0 = array<vec3<f32>, 16>();
    var var_1 = Struct_1(all(vec3<bool>(arg_2.d, all(arg_2.b), arg_2.d)) != !all(select(vec4<bool>(arg_1.x, arg_2.c, arg_2.c, arg_1.x), vec4<bool>(false, arg_2.b.x, false, arg_1.x), vec4<bool>(arg_2.e.a, arg_1.x, false, false))));
    var_0 = ~vec4<u32>(24094u, _wgslsmith_dot_vec3_u32(var_0.yzw, u_input.b), abs(~60955u), func_3(global1[_wgslsmith_index_u32(var_0.x, 29u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, var_0.x, u_input.b.x ^ var_0.x), 29u)], Struct_3(vec3<u32>(var_0.x, 10223u, 1u), arg_2.a, Struct_2(arg_2.e, arg_2.b, true, false, Struct_1(var_1.a)), global1[_wgslsmith_index_u32(u_input.b.x, 29u)], Struct_1(true))));
    let var_2 = firstLeadingBit(firstTrailingBit(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(3099u, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)]), vec2<i32>(global1[_wgslsmith_index_u32(16267u, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)]), vec2<i32>(0i, -2147483647i)), reverseBits(vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 29u)], global1[_wgslsmith_index_u32(13150u, 29u)]))))) >> (~vec2<u32>(~(~4294967295u), ~_wgslsmith_clamp_u32(0u, 56206u, var_0.x)) % vec2<u32>(32u));
    return Struct_5(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, var_0.yz), 29u)], 2147483647i), min(vec3<i32>(-1i, global1[_wgslsmith_index_u32(33382u, 29u)], -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], 1i), vec3<i32>(2147483647i, -27937i, 2147483647i))), select(~vec3<i32>(var_2.x, 0i, -18615i), vec3<i32>(1i, global1[_wgslsmith_index_u32(var_0.x, 29u)], 2147483647i), select(vec3<bool>(false, true, true), vec3<bool>(arg_2.a.a, var_1.a, true), arg_1.x))) << (_wgslsmith_div_vec3_u32((vec3<u32>(var_0.x, 66144u, u_input.b.x) & u_input.b) << (_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.a, 4294967295u, 4294967295u)) % vec3<u32>(32u)), var_0.www) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = 1i;
    global0 = array<vec3<f32>, 16>();
    let var_1 = true;
    global2 = array<Struct_3, 10>();
    global0 = array<vec3<f32>, 16>();
    return vec3<bool>(var_0 > ~(-1i), !(!(!(!arg_1.x))), true);
}

fn func_1(arg_0: i32, arg_1: bool) -> StorageBuffer {
    var var_0 = 1i;
    let var_1 = max(81837u, 4294967295u);
    let var_2 = firstLeadingBit(var_1);
    var var_3 = _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(4294967295u, 29u)], arg_0, (_wgslsmith_sub_i32(0i, firstLeadingBit(arg_0)) << (var_2 % 32u)) >> (1u % 32u));
    let var_4 = Struct_2(Struct_1(true), vec2<bool>(any(func_4(func_2(vec3<f32>(-2392f, -870f, -1000f), vec2<bool>(true, true), Struct_2(Struct_1(arg_1), vec2<bool>(true, arg_1), false, arg_1, Struct_1(true))), vec4<bool>(true, arg_1, true, arg_1))), all(vec3<bool>(var_2 < var_2, arg_1, true))), false, true, Struct_1(select(_wgslsmith_f_op_f32(floor(-435f)) != _wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_sub_u32(32196u, var_1) > 1u, all(vec4<bool>(arg_1, arg_1, arg_1, true)) && all(vec4<bool>(arg_1, true, arg_1, arg_1)))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-743f, -961f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-111f)), -1093f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), 346f)), ~(~abs(vec4<u32>(96266u, 0u, var_2, var_1) | vec4<u32>(9133u, 4294967295u, var_1, u_input.b.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-603f, 243f, 306f, 633f), vec4<f32>(-444f, 1712f, -128f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1352f, 356f, -1550f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, -393f, -615f, -888f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-227f, -651f, 1051f, 1000f), vec4<f32>(1069f, 318f, 342f, -799f)) - vec4<f32>(473f, -294f, -401f, -1328f)), vec4<f32>(_wgslsmith_f_op_f32(max(1323f, -520f)), -1274f, _wgslsmith_f_op_f32(trunc(-230f)), -953f))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(139f, -166f), _wgslsmith_f_op_f32(round(1950f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f - -645f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -826f)), _wgslsmith_f_op_f32(min(-1444f, _wgslsmith_f_op_f32(-1817f + 862f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2537f;
    var var_1 = global2[_wgslsmith_index_u32(~(~45261u), 10u)];
    global0 = array<vec3<f32>, 16>();
    let var_2 = !select(var_1.c.b, select(!vec2<bool>(var_1.c.b.x, var_1.b.a), var_1.c.b, true), var_1.e.a);
    global0 = array<vec3<f32>, 16>();
    let var_3 = _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(var_1.a.x, 29u)], -13178i >> (_wgslsmith_div_u32(1u, u_input.b.x) % 32u));
    let x = u_input.a;
    s_output = func_1(var_3, var_1.e.a);
}

