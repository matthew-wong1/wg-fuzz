struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-14317i, Struct_1(vec4<i32>(-22143i, 65407i, 40275i, 1i), -2208f), Struct_1(vec4<i32>(3934i, 2147483647i, -14423i, 1i), 717f), -1i);

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global4: array<vec3<bool>, 5>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_4(Struct_2(-790f), arg_0.b, !(all(!global3[_wgslsmith_index_u32(u_input.c, 15u)]) == true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1134f - _wgslsmith_f_op_f32(1000f - global0.b.b)), var_0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1270f, global0.c.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.b, -1884f)))), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.b), arg_0.b))));
    var var_2 = select(global0.c.a.x, ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-16609i, arg_0.a.x, -1i, 2147483647i) ^ global0.c.a), -global0.c.a), true);
    var var_3 = Struct_1(reverseBits(firstLeadingBit(vec4<i32>(~u_input.b, 28656i, -global0.d, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_1.x) - 1199f), true))));
    var_2 = _wgslsmith_mult_i32(reverseBits(var_3.a.x), -(-arg_0.a.x << ((0u & u_input.c) % 32u)) << (u_input.c % 32u));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.a, 0i, u_input.b)), var_3.a), _wgslsmith_add_vec4_i32(firstLeadingBit(~max(global0.b.a, vec4<i32>(-15501i, u_input.d.x, 3868i, var_3.a.x))), ~var_3.a));
}

fn func_2() -> u32 {
    global0 = Struct_3(u_input.a, global0.b, Struct_1(global0.b.a, global0.c.b), ~_wgslsmith_mult_i32(func_3(Struct_1(vec4<i32>(global0.c.a.x, u_input.d.x, u_input.b, -2147483647i), global0.b.b)), _wgslsmith_mod_i32(1i, u_input.b >> (0u % 32u))));
    global0 = Struct_3(~(min(global0.d, 1i) >> (22194u % 32u)), global0.b, global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -u_input.d.x, countOneBits(global0.a)), max(vec3<i32>(u_input.b, u_input.d.x, u_input.d.x), global0.c.a.zyx)) << (((128346u >> (firstTrailingBit(u_input.c) % 32u)) & _wgslsmith_sub_u32(reverseBits(u_input.c), _wgslsmith_mod_u32(0u, u_input.c))) % 32u));
    global2 = countOneBits(u_input.b);
    global0 = Struct_3(~0i, Struct_1(abs(vec4<i32>(u_input.b << (u_input.c % 32u), _wgslsmith_clamp_i32(u_input.b, -12891i, 48076i), 0i, _wgslsmith_dot_vec3_i32(global0.c.a.wwz, global0.c.a.xwx))), _wgslsmith_f_op_f32(f32(-1f) * -2828f)), Struct_1(select(select(firstTrailingBit(vec4<i32>(-1i, 19400i, 2147483647i, 0i)), global0.c.a, any(global3[_wgslsmith_index_u32(0u, 15u)])), vec4<i32>(-1i) * -vec4<i32>(global0.a, global0.c.a.x, 1i, u_input.a), vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(394f)))), u_input.a);
    global0 = Struct_3(29054i, global0.c, Struct_1(max(abs(global0.c.a), global0.c.a), _wgslsmith_f_op_f32(f32(-1f) * -1967f)), ~func_3(Struct_1(global0.b.a & vec4<i32>(-33922i, -2147483647i, 74718i, 2147483647i), _wgslsmith_f_op_f32(floor(global0.c.b)))));
    return max(~u_input.c, 8338u);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    let var_0 = select(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10520u, arg_2, func_2()), 15u)], vec2<bool>(true, false), global3[_wgslsmith_index_u32(arg_2 << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(20665u, 1u), vec2<u32>(u_input.c, 49683u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(1u, 82325u), vec2<u32>(u_input.c, arg_2))), vec2<u32>(46086u, 4294967295u) & ~vec2<u32>(u_input.c, arg_2)) % 32u), 15u)]);
    return Struct_3(arg_1.a.x << (~(countOneBits(4294967295u) ^ arg_2) % 32u), global0.b, global0.c, 5988i);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = 1i;
    var var_2 = Struct_3(max(~global0.c.a.x, ~(~u_input.a & 61691i)), Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, -22621i, 1i, 28672i), _wgslsmith_div_vec4_i32(arg_0.c.a, global0.c.a))), _wgslsmith_f_op_f32(step(arg_0.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-585f, 774f)), arg_0.c.b)))), Struct_1(select(_wgslsmith_clamp_vec4_i32(arg_0.c.a, _wgslsmith_mod_vec4_i32(arg_0.c.a, vec4<i32>(23596i, u_input.b, -2147483647i, u_input.d.x)), abs(arg_0.c.a)), _wgslsmith_clamp_vec4_i32(arg_0.c.a & vec4<i32>(global0.c.a.x, -1i, -59746i, u_input.a), ~arg_0.c.a, arg_0.b.a), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)))), -135f), u_input.d.x);
    global0 = arg_0;
    global3 = array<vec2<bool>, 15>();
    return Struct_2(var_2.b.b);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    global3 = array<vec2<bool>, 15>();
    var var_0 = Struct_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.b))), arg_0.b)), arg_1.a.a, ~(~(i32(-1i) * -8357i)) == u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a - var_0.b));
    var var_2 = Struct_4(func_4(func_1(vec2<f32>(_wgslsmith_f_op_f32(140f - -388f), _wgslsmith_f_op_f32(arg_1.a.a * 1497f)), Struct_1(global0.b.a, global0.b.b), min(firstLeadingBit(1u), _wgslsmith_add_u32(u_input.c, u_input.c)))), -946f, var_0.c);
    let var_3 = global0.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(func_4(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.b, 487f) * vec2<f32>(global0.b.b, global0.c.b)), Struct_1(vec4<i32>(-2147483647i, global0.c.a.x, global0.d, 2147483647i), global0.c.b), 1u)), global0.b.b, select(true, false, true) | false), Struct_4(func_4(Struct_3(firstLeadingBit(-58529i), func_1(vec2<f32>(-210f, global0.b.b), global0.b, u_input.c).c, Struct_1(vec4<i32>(-33810i, 500i, -1i, 50947i), -444f), u_input.a)), global0.b.b, true));
    let var_1 = global3[_wgslsmith_index_u32(u_input.c, 15u)];
    global1 = u_input.b;
    let var_2 = u_input.c & 28625u;
    let var_3 = (_wgslsmith_f_op_f32(-global0.c.b) == global0.b.b) & !(true && func_5(Struct_4(Struct_2(global0.b.b), global0.b.b, var_1.x), Struct_4(Struct_2(1404f), -1403f, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.a.x, -global0.b.a.x);
}

