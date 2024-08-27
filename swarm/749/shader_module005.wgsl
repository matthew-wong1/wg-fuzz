struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(2138f, -933f, 2370f), 42699u), Struct_1(vec3<f32>(-583f, -477f, -289f), 0u), Struct_1(vec3<f32>(-875f, 576f, 654f), 1165u), Struct_1(vec3<f32>(-695f, -1045f, -634f), 4294967295u), Struct_1(vec3<f32>(-1000f, -413f, 430f), 1u), Struct_1(vec3<f32>(2661f, -531f, -1000f), 43076u), Struct_1(vec3<f32>(835f, -1000f, 174f), 4294967295u), Struct_1(vec3<f32>(-459f, -1000f, -2449f), 78123u), Struct_1(vec3<f32>(-398f, -678f, -1615f), 46210u), Struct_1(vec3<f32>(-481f, -178f, -106f), 60859u), Struct_1(vec3<f32>(-817f, 406f, 728f), 33120u), Struct_1(vec3<f32>(1141f, -1097f, 247f), 1u));

var<private> global2: vec4<i32> = vec4<i32>(1i, -28086i, 1i, 2147483647i);

var<private> global3: vec2<i32>;

var<private> global4: Struct_4 = Struct_4(32095u, vec4<u32>(48445u, 10219u, 105071u, 5453u), Struct_3(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), i32(-2147483648), 26733i, 0i), vec3<f32>(-161f, 1000f, -629f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = -1044f;
    let var_1 = global4.c;
    let var_2 = _wgslsmith_dot_vec4_i32(var_1.b, firstLeadingBit(global4.c.b));
    let var_3 = select(~abs(~global4.c.b.x), ~_wgslsmith_sub_i32(arg_2, -1i), true);
    global1 = array<Struct_1, 12>();
    return ~23091u;
}

fn func_2(arg_0: u32) -> f32 {
    global4 = Struct_4(~(~(~(~u_input.c.x))), vec4<u32>(arg_0, arg_0, _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, ~u_input.c.x), func_3(all(global4.c.a), firstLeadingBit(arg_0), -global2.x)), 1u), global4.c);
    let var_0 = _wgslsmith_sub_i32(max(global2.x, _wgslsmith_sub_i32(-13151i, -_wgslsmith_add_i32(global2.x, global4.c.b.x))), 21964i);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1806f))))));
    let var_2 = reverseBits(arg_0);
    let var_3 = !global0.yy;
    return -1466f;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(35593i, arg_0.c.b.x, -44129i, global4.c.b.x));
    var var_1 = _wgslsmith_f_op_f32(func_2(arg_1.x));
    global4 = Struct_4(_wgslsmith_clamp_u32(4294967295u, global4.a, _wgslsmith_mod_u32(global4.b.x, ~arg_0.a)), countOneBits(vec4<u32>(abs(0u), func_3(global0.x, arg_1.x, global3.x), 4294967295u, u_input.c.x) >> (max(global4.b, firstLeadingBit(arg_0.b)) % vec4<u32>(32u))), arg_0.c);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.c.x + _wgslsmith_f_op_f32(global4.c.c.x * _wgslsmith_f_op_f32(func_2(~arg_0.b.x)))), 1000f);
    let var_2 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(reverseBits(reverseBits(global4.a)), ~func_3(false, 4294967295u, 0i)), countOneBits(~arg_0.b.x));
    return Struct_4(4294967295u, countOneBits(~(~vec4<u32>(53083u, arg_1.x, global4.b.x, 33307u))), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global4.c.b.wzz << (u_input.c % vec3<u32>(32u));
    global4 = func_1(Struct_4(u_input.c.x, vec4<u32>(~37756u | _wgslsmith_mod_u32(u_input.c.x, global4.b.x), u_input.c.x, global4.a >> (7593u % 32u), ~(~4294967295u)), global4.c), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global4.a, _wgslsmith_dot_vec3_u32(global4.b.yxy, global4.b.wwz)), vec2<u32>(global4.a, 0u) & vec2<u32>(50889u, 5476u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.c.c.x, 362f, global4.c.c.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1369f, global4.c.c.x, global4.c.c.x), vec3<f32>(global4.c.c.x, global4.c.c.x, 511f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1826f, -716f, global4.c.c.x)) * _wgslsmith_f_op_vec3_f32(-global4.c.c))), _wgslsmith_mod_u32(abs(global4.b.x & 30632u) << (abs(global4.b.x >> (20939u % 32u)) % 32u), u_input.c.x));
    var var_2 = Struct_4(1u >> (u_input.c.x % 32u), global4.b, func_1(Struct_4(63863u >> (max(u_input.c.x, u_input.c.x) % 32u), global4.b, Struct_3(global0.zy, u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.c.x, -708f, global4.c.c.x) + var_1.a))), global4.b.ww).c);
    var var_3 = ~func_1(func_1(func_1(func_1(Struct_4(4294967295u, global4.b, Struct_3(vec2<bool>(true, var_2.c.a.x), global4.c.b, vec3<f32>(562f, global4.c.c.x, 780f))), vec2<u32>(global4.a, global4.b.x)), ~global4.b.wz), _wgslsmith_sub_vec2_u32(var_2.b.wy, ~vec2<u32>(4294967295u, 1u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u) << (global4.b.zy % vec2<u32>(32u)), select(global4.b.wz, var_2.b.xz, global4.c.a), vec2<u32>(36545u, 77453u) >> (vec2<u32>(29026u, global4.b.x) % vec2<u32>(32u)))).b.yy;
    let var_4 = func_1(Struct_4(~5475u, ~vec4<u32>(65130u, global4.a, 32114u, var_2.b.x) << (firstTrailingBit(select(vec4<u32>(u_input.c.x, u_input.c.x, 92312u, var_3.x), var_2.b, vec4<bool>(false, false, var_2.c.a.x, false))) % vec4<u32>(32u)), Struct_3(global4.c.a, func_1(func_1(Struct_4(0u, vec4<u32>(40316u, var_3.x, 46030u, u_input.c.x), Struct_3(global0.yy, var_2.c.b, var_1.a)), global4.b.xy), ~vec2<u32>(4294967295u, 0u)).c.b, func_1(func_1(Struct_4(3822u, vec4<u32>(62133u, 1u, 21135u, 1u), Struct_3(global0.yz, vec4<i32>(global3.x, global2.x, 2147483647i, u_input.a), vec3<f32>(420f, var_1.a.x, -1000f))), vec2<u32>(global4.b.x, var_2.b.x)), max(var_2.b.yw, vec2<u32>(var_3.x, 24574u))).c.c)), u_input.c.yz);
    var_1 = global1[_wgslsmith_index_u32(0u, 12u)];
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global3.x, var_2.c.b.x, 19045i), var_4.c.b))));
}

