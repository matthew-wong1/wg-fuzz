struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: vec3<bool>;

var<private> global3: array<vec3<i32>, 6>;

var<private> global4: f32 = -1369f;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>) -> vec2<u32> {
    global1 = 26523i;
    global4 = -141f;
    var var_0 = vec3<i32>(u_input.d, _wgslsmith_sub_i32(0i, 0i), ~20950i);
    global0 = ~min(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.x, -18941i)), _wgslsmith_div_vec2_i32(~vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.b, 40590i))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.zx ^ var_0.yx, select(vec2<i32>(30006i, -5419i), vec2<i32>(var_0.x, -2147483647i), true)), var_0.xz));
    global0 = ~(-var_0.x);
    return vec2<u32>(arg_2.x, countOneBits(_wgslsmith_add_u32(~(~arg_0.x), _wgslsmith_mod_u32(3013u, 11541u))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = 11097u;
    let var_1 = Struct_5(~u_input.c, global3[_wgslsmith_index_u32(u_input.c.x, 6u)]);
    global1 = u_input.d;
    global1 = ~(-u_input.d);
    let var_2 = vec3<bool>(false, _wgslsmith_div_f32(-499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(225f)) + _wgslsmith_f_op_f32(f32(-1f) * -164f))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-873f)), _wgslsmith_div_f32(-1102f, 891f), arg_0.x)))), any(vec3<bool>(true, !global2.x & !arg_0.x, arg_0.x)));
    return Struct_3(Struct_1(func_3(~vec3<u32>(75551u, var_1.a.x, 53389u), var_0, ~u_input.c.yy) ^ firstLeadingBit(select(vec2<u32>(var_0, 19083u), u_input.c.yz, vec2<bool>(true, true))), 197f), Struct_2(_wgslsmith_f_op_f32(730f - _wgslsmith_f_op_f32(-188f - _wgslsmith_f_op_f32(-140f + 470f))), true, ~var_0, ~firstLeadingBit(vec2<u32>(4294967295u, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) * 128f) + 993f), _wgslsmith_clamp_vec2_u32(vec2<u32>(15852u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_0), vec2<u32>(u_input.c.x, 1289u))), ~min(vec2<u32>(u_input.a, var_1.a.x), vec2<u32>(0u, var_1.a.x)) | var_1.a.yy, abs(vec2<u32>(~4294967295u, ~u_input.a))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -316f), 2147483647i >= _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, -1i, var_1.b.x, 23076i)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -18825i, var_1.b.x, u_input.b), vec4<i32>(-1i, var_1.b.x, u_input.b, -1i))), firstLeadingBit(0u), vec2<u32>(_wgslsmith_dot_vec3_u32(~var_1.a, var_1.a), var_0)));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(vec2<bool>(any(!vec4<bool>(true, global2.x, true, global2.x)), !(!(global2.x || global2.x))));
    var var_1 = Struct_4(vec3<bool>(false, false, true));
    var var_2 = firstLeadingBit(-(21614i >> (select(u_input.a << (48543u % 32u), 31612u, u_input.a != u_input.c.x) % 32u)));
    var_2 = u_input.b;
    var_0 = func_2(var_1.a.yz);
    return StorageBuffer(reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(func_2(global2.xz).a.a, var_0.a.a | vec2<u32>(34352u, u_input.c.x)), var_0.d.x)), global3[_wgslsmith_index_u32(~0u, 6u)], _wgslsmith_mult_i32(u_input.b, u_input.d ^ 54933i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

