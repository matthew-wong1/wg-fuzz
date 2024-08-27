struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, false, false, true, false, true, true, true, true, false, true, true, true, true, false, true, true, false, false, false, true, true, true, false, false, false, false, false, true);

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<bool>;

var<private> global3: vec3<bool>;

var<private> global4: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(0u, 15061u, 0u), vec3<u32>(52536u, 0u, 0u), vec3<u32>(4294967295u, 0u, 2375u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(3618u, 1u, 0u), vec3<u32>(1u, 1036u, 32758u), vec3<u32>(1u, 23622u, 0u), vec3<u32>(27026u, 0u, 44808u), vec3<u32>(0u, 18572u, 0u), vec3<u32>(4294967295u, 16854u, 71813u), vec3<u32>(0u, 0u, 25169u), vec3<u32>(25514u, 0u, 30357u), vec3<u32>(63038u, 25718u, 17776u), vec3<u32>(4294967295u, 0u, 88483u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 29843u, 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> i32 {
    global4 = array<vec3<u32>, 16>();
    let var_0 = -max(-u_input.c, max(_wgslsmith_add_vec3_i32(u_input.c, ~vec3<i32>(-48958i, -2824i, u_input.d.x)), u_input.c));
    var var_1 = ~arg_0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2129f, 1349f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-278f, 364f))))))));
    var var_3 = arg_0.b;
    return ~1i;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> u32 {
    global2 = vec2<bool>(all(global3.yy), ~u_input.c.x == arg_0.c);
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1453f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), 1367f, all(global3.xx))))));
    var var_1 = -341f;
    global3 = vec3<bool>(false, 4294967295u < arg_0.d, true);
    global1 = 53082u;
    return ~arg_0.d;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(min(u_input.c.x, max(_wgslsmith_mod_i32(-13419i, u_input.c.x), -1i)), ~(-func_2(Struct_1(true, u_input.b, 0i, u_input.e.x, global2.x)))), ~(-24490i));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.b.x) & u_input.e.x, min(28468u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(11266u, 1u)), vec2<u32>(4294967295u, 38476u)))) ^ ~firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, u_input.e.x, 54230u), u_input.a.x)), 16u)];
    let var_2 = -28731i;
    let var_3 = Struct_2(Struct_1(any(vec3<bool>(true, false, global3.x)) && select(true, !global3.x, select(true, global3.x, global0[_wgslsmith_index_u32(u_input.e.x, 30u)])), u_input.a, u_input.c.x, firstTrailingBit(4532u), global0[_wgslsmith_index_u32(var_1.x, 30u)]), Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(32529u ^ var_1.x, ~var_1.x), 30u)], abs(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(var_1.x, u_input.b.x, var_1.x, u_input.e.x))) ^ vec4<u32>(var_1.x, 4294967295u, ~u_input.e.x, var_1.x), 2147483647i, ~func_3(Struct_1(true, vec4<u32>(73272u, 41989u, var_1.x, 4294967295u), var_2, var_1.x, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(289f, -1779f, 218f), vec3<f32>(1000f, -911f, -462f), false)), u_input.b.wwz), 40505u > _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 6947u, u_input.e.x, 14295u)), _wgslsmith_mult_u32(15194u, var_1.x))), Struct_1(true && any(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 30u)], global0[_wgslsmith_index_u32(118850u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], true)), u_input.b, 38153i, _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.b.x, u_input.e.x, var_1.x)), ~(~vec3<u32>(0u, 1u, var_1.x))), !(1u >= _wgslsmith_mod_u32(u_input.a.x, u_input.e.x))));
    let var_4 = Struct_1(true, countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.b.b.x, 4294967295u, 4294967295u, 21611u) >> (~vec4<u32>(u_input.a.x, var_3.c.d, 4294967295u, var_1.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(50196u, 54961u, 80491u, 1u)))), _wgslsmith_mult_i32(~min(_wgslsmith_mod_i32(-2147483647i, 38340i), _wgslsmith_mod_i32(2147483647i, -1i)), -35597i), _wgslsmith_dot_vec2_u32(vec2<u32>(0u << (firstLeadingBit(1u) % 32u), var_3.b.b.x), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, var_1.x), _wgslsmith_mult_vec2_u32(var_3.c.b.wy, var_1.zx), vec2<u32>(var_3.b.d, var_1.x)), select(vec2<u32>(40974u, var_1.x), ~u_input.a.wy, select(var_3.a.a, global2.x, global0[_wgslsmith_index_u32(u_input.e.x, 30u)])))), global0[_wgslsmith_index_u32(1u, 30u)]);
    return var_4;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1499f - -764f) - -503f), -956f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(972f - _wgslsmith_f_op_f32(1101f * -1524f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2411f) + _wgslsmith_f_op_f32(sign(1000f))))))));
    global4 = array<vec3<u32>, 16>();
    global4 = array<vec3<u32>, 16>();
    global1 = 28779u;
    return _wgslsmith_sub_vec2_u32(abs(vec2<u32>(_wgslsmith_mult_u32(26488u, arg_0.d), abs(0u))), arg_1.b.zz) ^ ~vec2<u32>(_wgslsmith_add_u32(1u, reverseBits(u_input.e.x)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_div_vec2_u32(~(vec2<u32>(max(u_input.e.x, u_input.e.x), 0u) ^ ~vec2<u32>(u_input.a.x, 18962u)), firstTrailingBit(func_4(func_1(), func_1())));
    var var_1 = min(~u_input.c.xx, firstLeadingBit(vec2<i32>(u_input.d.x, u_input.d.x)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 37404u), ~vec2<u32>(17685u, var_0.x)) % vec2<u32>(32u)));
    let var_2 = ~abs(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, -2147483647i, 1i), vec3<i32>(u_input.d.x, -2147483647i, -1i), u_input.c), vec3<i32>(-2147483647i, var_1.x, -20968i) & u_input.c), vec3<i32>(u_input.c.x | 2147483647i, 0i, _wgslsmith_mult_i32(u_input.c.x, var_1.x))));
    let var_3 = global3.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-254f)) * _wgslsmith_f_op_f32(step(-834f, -273f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 776f))))), ~firstLeadingBit(-u_input.c.xy));
}

