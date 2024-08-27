struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(0u), Struct_3(14075u), Struct_3(0u), Struct_3(1u), Struct_3(4294967295u), Struct_3(4294967295u), Struct_3(0u), Struct_3(4294967295u), Struct_3(17768u), Struct_3(0u), Struct_3(4294967295u), Struct_3(4294967295u), Struct_3(4294967295u), Struct_3(1u), Struct_3(1u), Struct_3(0u), Struct_3(59528u), Struct_3(11445u), Struct_3(1u), Struct_3(51766u), Struct_3(0u), Struct_3(4294967295u));

var<private> global2: array<bool, 1>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec3<u32> {
    let var_0 = vec4<bool>(arg_1, !(!all(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, arg_1), vec3<bool>(false, false, true)))), global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(519u, 1u)]);
    global1 = array<Struct_3, 22>();
    let var_1 = Struct_2(vec4<u32>(~global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), firstLeadingBit(1u)), 19u)], ~25127u, _wgslsmith_sub_u32(~8099u, ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 19u)]), 90120u), Struct_1(~vec4<u32>(43100u, ~15438u, select(14322u, 9979u, var_0.x), 0u), vec4<bool>(!all(vec4<bool>(arg_1, arg_1, false, false)), true, all(var_0.yz), false), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 615f, 334f) * vec3<f32>(-939f, 268f, 1135f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, 615f, 837f))))), arg_0.zz), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)], u_input.a.x, 4294967295u, u_input.a.x)), ~(~vec4<u32>(6247u, u_input.a.x, 0u, 2220u))), vec4<u32>(abs(global0[_wgslsmith_index_u32(11621u, 19u)]) & 1u, countOneBits(firstTrailingBit(u_input.a.x)), abs(global0[_wgslsmith_index_u32(abs(u_input.a.x), 19u)]), 3905u)), 1u)]);
    global1 = array<Struct_3, 22>();
    let var_2 = Struct_1(~vec4<u32>(~var_1.a.x, var_1.a.x, _wgslsmith_add_u32(var_1.a.x, 20027u), ~(~u_input.a.x)), select(select(select(var_0, !vec4<bool>(false, var_0.x, arg_1, arg_1), all(var_1.b.b.yw)), vec4<bool>(false, all(var_0.xw), !global2[_wgslsmith_index_u32(1u, 1u)], true), true), !vec4<bool>(var_0.x && global2[_wgslsmith_index_u32(var_1.a.x, 1u)], true, any(var_1.b.b), true), var_1.b.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.c.x - -1183f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.c.x)))), var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.b.c.x)), _wgslsmith_f_op_f32(386f + -1023f), var_1.b.b.x)))), vec2<i32>(-41901i << ((_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 19u)], 58175u, var_1.b.a.x) ^ min(1u, u_input.a.x)) % 32u), 33443i));
    return ~_wgslsmith_mod_vec3_u32(~(~(~var_1.a.yyy)), ~var_1.b.a.zwy);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    global2 = array<bool, 1>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.zz * arg_0.c.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-1250f - arg_0.c.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-800f, 2581f), arg_0.c.xy))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x)))));
    global2 = array<bool, 1>();
    var var_1 = true;
    let var_2 = -vec3<i32>(-2147483647i, ~(-4876i), arg_0.d.x) >> (func_3(vec4<i32>(45482i, -9374i, arg_0.d.x, ~(i32(-1i) * -2147483647i)), select(false, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], all(!vec3<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 1u)], true, true)))) % vec3<u32>(32u));
    return Struct_2(vec4<u32>(arg_1, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, ~global0[_wgslsmith_index_u32(arg_1, 19u)]), u_input.a.x), global0[_wgslsmith_index_u32(0u, 19u)], u_input.a.x), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(0u, 19u)] >> (arg_1 % 32u), ~_wgslsmith_mult_u32(0u, 0u), abs(_wgslsmith_mod_u32(1u, arg_0.a.x)), global0[_wgslsmith_index_u32(reverseBits(0u), 19u)]), vec4<bool>(abs(4294967295u) >= _wgslsmith_add_u32(arg_0.a.x, global0[_wgslsmith_index_u32(arg_0.a.x, 19u)]), arg_0.b.x, true, arg_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c), _wgslsmith_f_op_vec3_f32(abs(arg_0.c))))), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, 35272i), arg_0.d))), global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 1u)]);
}

fn func_1() -> i32 {
    global1 = array<Struct_3, 22>();
    global0 = array<u32, 19>();
    let var_0 = -780f;
    let var_1 = -vec3<i32>(-(u_input.b | 0i), u_input.b, u_input.b) | (vec3<i32>(-abs(u_input.b), -1i, u_input.b) >> (firstTrailingBit(abs(_wgslsmith_div_vec3_u32(vec3<u32>(50851u, 27731u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 0u)))) % vec3<u32>(32u)));
    let var_2 = func_2(Struct_1(countOneBits(~(~vec4<u32>(41525u, u_input.a.x, 1u, u_input.a.x))), select(!select(vec4<bool>(global2[_wgslsmith_index_u32(99695u, 1u)], global2[_wgslsmith_index_u32(84697u, 1u)], false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 1u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 1u)], global2[_wgslsmith_index_u32(41618u, 1u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70553u, 19u)], 1u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(34790u, 1u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), !vec4<bool>(true, global2[_wgslsmith_index_u32(76449u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], true, false)), true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 275f) * _wgslsmith_f_op_f32(651f - var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f - -405f) + var_0)), _wgslsmith_mult_vec2_i32(~reverseBits(var_1.yy), vec2<i32>(_wgslsmith_clamp_i32(0i, 0i, var_1.x), ~var_1.x))), u_input.a.x >> (u_input.a.x % 32u));
    return var_2.b.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -304f, 2770f), vec3<f32>(-1454f, -116f, 1746f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-424f, -429f, -1057f)))))) + _wgslsmith_div_vec3_f32(vec3<f32>(2004f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f * -1378f) - -157f), -1000f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1739f), _wgslsmith_f_op_f32(841f + 188f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-776f, 500f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1427f) * _wgslsmith_f_op_f32(sign(-410f))))));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(~1i), -func_1(), -(~(-2147483647i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-21374i, 1i), vec2<i32>(-32179i, u_input.b)), -2147483647i)), vec4<i32>(_wgslsmith_mult_i32(u_input.b, _wgslsmith_mod_i32(-2147483647i, -4724i)), i32(-1i) * -1i, 2147483647i, 1i)), -u_input.b, u_input.b, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, -8466i), i32(-1i) * -49595i) << (1u % 32u));
    global1 = array<Struct_3, 22>();
    let var_2 = i32(-1i) * -var_1.x;
    global1 = array<Struct_3, 22>();
    global0 = array<u32, 19>();
    let var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(312f))), 1449f, vec3<i32>(-4061i, 28098i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-29709i, u_input.b, var_1.x, var_2), firstTrailingBit(min(vec4<i32>(var_3, var_3, var_3, var_3), vec4<i32>(-40008i, 2147483647i, 1i, u_input.b))))));
}

