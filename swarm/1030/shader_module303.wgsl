struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 1>;

var<private> global2: vec3<u32> = vec3<u32>(42614u, 1u, 12458u);

var<private> global3: vec2<f32>;

var<private> global4: array<bool, 15>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> i32 {
    global4 = array<bool, 15>();
    global4 = array<bool, 15>();
    global4 = array<bool, 15>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(0u, 1u, 1u))), 1u)];
    var var_1 = Struct_2(!global0.a, global4[_wgslsmith_index_u32(1u, 15u)], global3.x);
    return var_0.a.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_2 {
    global1 = array<Struct_3, 1>();
    global2 = vec3<u32>(u_input.b, reverseBits(min(u_input.b, global2.x)), ~62918u);
    global3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1214f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x + global0.c)))))), global3.x);
    let var_0 = arg_0.a;
    var var_1 = countOneBits(-_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(1i, 19291i, 1189i, 1i), vec4<i32>(45699i, -2147483647i, var_0.x, u_input.c)), vec4<i32>(1i, -383i, u_input.c, arg_0.a.x)), vec4<i32>(var_0.x, var_0.x ^ arg_0.a.x, var_0.x ^ u_input.c, func_2()), countOneBits(firstTrailingBit(vec4<i32>(u_input.c, -14558i, u_input.c, var_0.x)))));
    return Struct_2(global0.a, !(((1935u & u_input.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 27341u, 0u), vec4<u32>(0u, u_input.a.x, 36062u, 4294967295u)) % 32u)) > 1u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-424f + global0.c))));
}

fn func_3() -> vec3<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec2_i32(select(vec2<i32>(1i, u_input.c), vec2<i32>(2147483647i, 2356i), global0.a.yy), vec2<i32>(0i, u_input.c)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 14376i) ^ vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c))) >> (~global2.yy % vec2<u32>(32u));
    var_0 = -(abs(vec2<i32>(var_0.x, u_input.c)) & vec2<i32>(2147483647i, 1i));
    global0 = Struct_2(vec4<bool>((var_0.x < -var_0.x) && all(func_1(Struct_3(vec3<i32>(2147483647i, 1i, -1i)), vec2<f32>(-1935f, global0.c)).a.wx), _wgslsmith_mod_i32(u_input.c, -1i) > _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, 11782i, 1i, 13689i), vec4<i32>(var_0.x, 1i, var_0.x, u_input.c)), any(!vec4<bool>(true, global4[_wgslsmith_index_u32(52817u, 15u)], false, false)), any(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.b, 15u)], global0.a.x, false))), global4[_wgslsmith_index_u32(u_input.a.x, 15u)], global0.c);
    global4 = array<bool, 15>();
    global4 = array<bool, 15>();
    return max(vec3<i32>((~(-1i) << (~global2.x % 32u)) >> (~(~1u) % 32u), ~_wgslsmith_clamp_i32(-var_0.x, 2931i, -1i), 1i), vec3<i32>(-1i) * -min(reverseBits(vec3<i32>(-1i, -27642i, var_0.x)), vec3<i32>(2147483647i, var_0.x, -43895i) >> (vec3<u32>(u_input.a.x, global2.x, 1u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(150f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1827f)), global0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global0.c)))))));
    global0 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global2.x, 49135u), 4294967295u), 1u)], vec2<f32>(988f, 1f));
    global2 = _wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(global2.yx, ~vec2<u32>(u_input.b, 37528u)), (67055u | global2.x) | firstTrailingBit(u_input.b), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(5054u, 85272u, u_input.b, 73857u), vec4<u32>(25900u, 0u, 0u, 4294967295u)))), vec3<u32>(global2.x & 1u, 35390u, ~(~global2.x)));
    var_0 = -1068f;
    let var_1 = reverseBits(~(~_wgslsmith_mult_i32(~u_input.c, -42894i & u_input.c)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(global3.x, global3.x)), global3.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global0.c, 260f), vec2<f32>(978f, global0.c))))))), u_input.c, func_1(Struct_3(func_3()), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global3.x))))))), global1[_wgslsmith_index_u32(countOneBits(u_input.b), 1u)]);
    let var_3 = ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(97996u, 48495u, global2.x), vec3<u32>(u_input.b, u_input.b, 67721u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, global2.x, 4294967295u), firstLeadingBit(vec3<u32>(global2.x, 62112u, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(-151f)), _wgslsmith_div_f32(-377f, -1460f), _wgslsmith_f_op_f32(-var_2.c.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1462f, var_2.c.c, 274f), vec3<f32>(global0.c, 288f, global3.x), vec3<bool>(var_2.c.b, global4[_wgslsmith_index_u32(global2.x, 15u)], var_2.c.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.c, var_2.a.x, global3.x) + vec3<f32>(2001f, 1300f, -153f))))), var_2.d.a.xz, 0i, _wgslsmith_sub_u32(u_input.a.x, u_input.b), ~select(~select(1u, 1u, var_2.c.b), ~(~var_3.x), false));
}

