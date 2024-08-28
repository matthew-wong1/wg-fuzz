struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

var<private> global2: array<f32, 5>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(-58831i, 52948i, 1i, -485i), vec3<i32>(4089i, -1i, i32(-2147483648)), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(i32(-2147483648), 46701i, -1i, -1i), vec3<i32>(1i, 0i, i32(-2147483648)), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-9688i, i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(0i, 38038i, 1i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-1i, -15418i, 2147483647i, 1i), vec3<i32>(24641i, 2147483647i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(-66277i, 1i, 1i, -40610i), vec3<i32>(1i, 0i, i32(-2147483648)), vec4<bool>(false, true, false, true)));

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = vec4<u32>(abs(global0[_wgslsmith_index_u32(max(u_input.d.x | 67284u, ~27097u), 18u)]), _wgslsmith_dot_vec2_u32(u_input.b, reverseBits(vec2<u32>(u_input.b.x, 4294967295u) | ~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 18u)]))), ~(~(~_wgslsmith_mult_u32(0u, 0u))), _wgslsmith_div_u32(1u, countOneBits(~(~1u))));
    global2 = array<f32, 5>();
    global4 = Struct_1(global4.a, vec3<i32>(-11150i, u_input.c.x, -2147483647i), global4.c);
    global0 = array<u32, 18>();
    var var_1 = reverseBits(~(vec3<i32>(firstLeadingBit(1i), -global4.a.x, ~global4.b.x) >> (abs(var_0.wwx) % vec3<u32>(32u))));
    return vec4<u32>(_wgslsmith_clamp_u32(1u, ~(~6026u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 30580u, u_input.b.x), u_input.d), ~vec3<u32>(12774u, 1u, u_input.d.x) ^ ~vec3<u32>(6050u, 1u, 0u))), 0u, ~countOneBits(1u), 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = ~vec3<u32>(u_input.d.x, reverseBits(global0[_wgslsmith_index_u32(~(u_input.d.x << (u_input.b.x % 32u)), 18u)]), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(37461u, 13143u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(117640u, 18u)], 18u)], u_input.b.x), ~vec4<u32>(21237u, u_input.b.x, global0[_wgslsmith_index_u32(31020u, 18u)], global0[_wgslsmith_index_u32(u_input.d.x, 18u)])), global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(~u_input.d.x, 18u)]), 18u)]));
    var var_1 = Struct_1(reverseBits(~(global4.a >> (func_3(false) % vec4<u32>(32u)))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(global4.b, vec3<i32>(1i, 2147483647i, global4.b.x)) << (vec3<u32>(var_0.x, var_0.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, global4.a.x, global4.b.x), vec3<i32>(global4.b.x, -2298i, global4.a.x))), vec3<i32>(_wgslsmith_mod_i32(~global4.a.x, -51819i), _wgslsmith_div_i32(i32(-1i) * -1i, global4.b.x ^ 0i), global4.b.x)), global4.c);
    global4 = Struct_1((-vec4<i32>(-24976i, global4.b.x, u_input.c.x, u_input.a.x) >> (~(~vec4<u32>(5062u, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) & (var_1.a >> (abs(abs(vec4<u32>(u_input.b.x, 1u, 0u, 8262u))) % vec4<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(58664i, 19000i, global4.a.x), vec3<i32>(global4.a.x << (global0[_wgslsmith_index_u32(1u, 18u)] % 32u), reverseBits(u_input.c.x), _wgslsmith_mult_i32(var_1.b.x, 36394i))), var_1.a.x, firstLeadingBit(-var_1.b.x)), vec4<bool>(!(!(-511f == global2[_wgslsmith_index_u32(var_0.x, 5u)])), 2147483647i != var_1.a.x, !select(global4.c.x, all(vec2<bool>(global4.c.x, var_1.c.x)), true), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-889f)) - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.x, 5u)], -519f))), -127f, global2[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(780f)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 5u)])), global2[_wgslsmith_index_u32(~(~29688u), 5u)]))) * vec4<f32>(global2[_wgslsmith_index_u32(~66552u, 5u)], _wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~var_0.x, 5u)] + 753f)), 342f));
    global0 = array<u32, 18>();
    return Struct_1(global4.a, vec3<i32>(~var_1.b.x, ~1i, ~global4.b.x), global4.c);
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(global4.a, _wgslsmith_clamp_vec3_i32(~vec3<i32>(-16558i, 1i, global4.a.x), ~arg_0.a.xyx | global4.b, firstTrailingBit(~vec3<i32>(-20081i, -9166i, arg_0.a.x))), arg_0.c);
    let var_1 = func_2();
    global1 = array<vec3<bool>, 9>();
    let var_2 = vec4<bool>(any(var_0.c.wwx), !all(vec3<bool>(any(vec4<bool>(false, true, false, global4.c.x)), var_0.c.x, false)), !(~32164i > max(_wgslsmith_add_i32(-14777i, var_0.b.x), _wgslsmith_mult_i32(0i, global4.a.x))), arg_0.c.x);
    return global4.a.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global3 = array<Struct_1, 5>();
    let var_0 = Struct_1(vec4<i32>(18922i ^ func_4(func_2()), ~_wgslsmith_mult_i32(abs(global4.a.x), 25451i), u_input.c.x >> (~min(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], u_input.b.x) % 32u), -2147483647i), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, func_2().b, firstTrailingBit(global4.a.yxx)), ~u_input.c ^ (u_input.c << ((vec3<u32>(u_input.b.x, 44823u, 52491u) ^ u_input.d) % vec3<u32>(32u)))), select(global4.c, !vec4<bool>(true, global4.c.x, true, all(vec4<bool>(global4.c.x, true, global4.c.x, false))), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 5u)], 363f, 1000f, global2[_wgslsmith_index_u32(58343u, 5u)]) - vec4<f32>(478f, global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(104657u, 5u)], 194f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(54497u, 5u)], 595f, 1083f, global2[_wgslsmith_index_u32(1u, 5u)])))))));
    var var_2 = (~max(~global0[_wgslsmith_index_u32(17212u, 18u)], global0[_wgslsmith_index_u32(arg_0, 18u)] << (83353u % 32u)) >> (global0[_wgslsmith_index_u32(0u, 18u)] % 32u)) ^ ~_wgslsmith_mult_u32(~reverseBits(global0[_wgslsmith_index_u32(arg_0, 18u)]), 51414u);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1193u, abs(func_3(!var_0.c.x).x)), 5u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_add_vec4_i32(-(firstTrailingBit(global4.a) ^ ~vec4<i32>(-10379i, -50988i, -1i, global4.a.x)), -vec4<i32>(_wgslsmith_div_i32(global4.b.x, global4.b.x), _wgslsmith_mult_i32(global4.b.x, 1i), -2147483647i, 2147483647i)), ~global4.b, global4.c);
    global0 = array<u32, 18>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(max(select(~46432u, u_input.d.x, true), 4294967295u)), u_input.b.x, u_input.b.x), 5u)];
    let var_1 = func_1(56940u);
    global2 = array<f32, 5>();
    let var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-635f * 400f), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_2, 5u)])), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(57825u, 5u)]))))))), vec3<f32>(global2[_wgslsmith_index_u32(var_2, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(6681u, 5u)]) + 110f)), -1716f), ~u_input.d, _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(var_1.b.x, var_1.a.x, global4.a.x) ^ func_2().a.zwx, ~firstTrailingBit(vec3<i32>(u_input.a.x, -1i, 46044i) ^ global4.a.yyx)));
}

