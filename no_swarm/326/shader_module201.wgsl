struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(23874u, 0u, 9753u);

var<private> global1: Struct_2;

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(15486u, 0u, 1358u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(3421u, 18927u, 17017u), vec3<u32>(50059u, 22008u, 41416u), vec3<u32>(0u, 1u, 79710u), vec3<u32>(0u, 61675u, 4294967295u), vec3<u32>(38195u, 4294967295u, 68975u), vec3<u32>(48611u, 26290u, 35713u), vec3<u32>(30280u, 1u, 0u), vec3<u32>(1u, 0u, 2419u), vec3<u32>(1u, 100091u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 36686u, 4294967295u), vec3<u32>(67473u, 114103u, 1u), vec3<u32>(1u, 42876u, 16490u), vec3<u32>(8192u, 0u, 63095u));

var<private> global3: array<vec3<bool>, 8>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = vec3<f32>(global1.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1053f), global1.d.a.x);
    global0 = ~global2[_wgslsmith_index_u32(0u, 16u)];
    global3 = array<vec3<bool>, 8>();
    global1 = Struct_2(~1u, all(arg_3.c) != all(select(vec4<bool>(arg_1.c.x, true, true, true), select(vec4<bool>(arg_2.x, false, false, true), vec4<bool>(false, global1.c.x, arg_3.b, false), arg_1.b), all(arg_3.c.xz))), select(vec4<bool>(false, true, all(arg_3.c), arg_3.c.x), !vec4<bool>(true, arg_3.c.x, true, !arg_3.b), arg_3.c), Struct_1(global1.d.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-267f, var_0.x)))), -468f), 1i));
    let var_1 = ~(~abs(select(~vec4<u32>(arg_1.a, 0u, global1.a, 70343u), vec4<u32>(global1.a, 3557u, 10823u, 33223u), vec4<bool>(global1.c.x, true, arg_3.b, arg_2.x))));
    return (~countOneBits(1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, global0.x, arg_3.a, 4294967295u) << (var_1 % vec4<u32>(32u)), abs(var_1))) | ~5175u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = abs(vec3<u32>(global1.a, ~1u, _wgslsmith_sub_u32(66178u, arg_2)));
    global3 = array<vec3<bool>, 8>();
    global3 = array<vec3<bool>, 8>();
    var var_1 = Struct_4(arg_0.c);
    let var_2 = global1.d.b.x;
    return Struct_2(~func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-global1.d.a), _wgslsmith_div_vec3_f32(arg_0.d.a.zwy, arg_0.d.b), -24515i), arg_0, !global1.c.yyy, arg_0), arg_0.c.x, var_1.a, global1.d);
}

fn func_1(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = func_2(Struct_2(~global0.x, global1.b, !(!select(vec4<bool>(false, global1.b, true, false), global1.c, global1.c.x)), global1.d), arg_0.xxy, (_wgslsmith_clamp_u32(~1u, 49737u | arg_0.x, ~global1.a) << ((1u ^ ~global1.a) % 32u)) >> (firstTrailingBit(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(global1.a, global1.a))) % 32u));
    global2 = array<vec3<u32>, 16>();
    global2 = array<vec3<u32>, 16>();
    global0 = ~vec3<u32>(arg_0.x, 67332u, 0u);
    let var_1 = vec4<u32>(1u, 98960u, ~(~(~4294967295u)) << (~(~(~arg_0.x)) % 32u), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(~global0.x, global0.x, 0u, _wgslsmith_clamp_u32(~26369u, _wgslsmith_div_u32(0u, var_0.a), 24007u))));
    return var_0.d.a.ywx;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.b.x), -378f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(select(~vec4<u32>(1u, global0.x, 59446u, 0u), ~vec4<u32>(global0.x, global1.a, global0.x, global1.a), global1.c.x))).x));
    global2 = array<vec3<u32>, 16>();
    var var_2 = all(!vec3<bool>(any(global3[_wgslsmith_index_u32(0u, 8u)]) || func_2(Struct_2(67867u, false, vec4<bool>(true, global1.b, true, true), global1.d), vec3<u32>(global0.x, global1.a, 0u), global0.x).b, false, global1.c.x));
    var var_3 = func_2(Struct_2(global0.x, true, vec4<bool>(func_2(Struct_2(global0.x, global1.c.x, vec4<bool>(var_0, global1.b, false, global1.c.x), global1.d), vec3<u32>(0u, global0.x, 4294967295u), 6180u).d.b.x <= -1307f, var_0, true, all(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.x, 42838u), 8u)])), func_2(Struct_2(global1.a, func_2(Struct_2(global0.x, global1.c.x, vec4<bool>(true, global1.c.x, false, global1.b), global1.d), global2[_wgslsmith_index_u32(1u, 16u)], 26995u).c.x, !global1.c, global1.d), global2[_wgslsmith_index_u32(61843u, 16u)] << (global2[_wgslsmith_index_u32(~1u, 16u)] % vec3<u32>(32u)), abs(firstTrailingBit(global0.x))).d), abs(vec3<u32>(global0.x, ~global0.x, ~(~1728u))), _wgslsmith_div_u32(4294967295u, ~global0.x));
    return Struct_3(!global1.b, global0.yz);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = Struct_1(global1.d.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1673f - 1602f), _wgslsmith_f_op_f32(select(global1.d.b.x, 1876f, arg_2.a)), -561f))), arg_1);
    let var_1 = 4294967295u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, ~1u, reverseBits(global1.a), _wgslsmith_add_u32(arg_2.b.x, arg_2.b.x)), ~(~(vec4<u32>(global0.x, 6178u, 0u, 102584u) | vec4<u32>(global0.x, arg_2.b.x, 1u, global0.x))));
    global1 = func_2(func_2(func_2(func_2(Struct_2(global0.x, false, global1.c, Struct_1(global1.d.a, var_0.a.zyy, arg_0)), vec3<u32>(var_1, var_1, global0.x), ~1u), global2[_wgslsmith_index_u32(~firstLeadingBit(global0.x), 16u)], ~(~var_1)), firstLeadingBit(vec3<u32>(arg_2.b.x, arg_2.b.x, firstTrailingBit(global1.a))), var_1), global2[_wgslsmith_index_u32(0u << (global0.x % 32u), 16u)], global0.x);
    let var_2 = select(!global3[_wgslsmith_index_u32(global1.a ^ var_1, 8u)], global3[_wgslsmith_index_u32(var_1, 8u)], any(vec3<bool>(false, global1.b, any(select(vec2<bool>(arg_2.a, true), global1.c.xy, true)))));
    let var_3 = func_2(Struct_2(_wgslsmith_add_u32(~0u, arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -461f)) > _wgslsmith_f_op_f32(step(var_0.b.x, var_0.a.x)), !vec4<bool>(true, global1.c.x, arg_2.a, false), global1.d), _wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], ~vec3<u32>(~0u, 0u, 28822u)), ~(~firstLeadingBit(84404u))).d;
    return ~(~vec3<u32>(global1.a, reverseBits(_wgslsmith_mod_u32(global0.x, 1u)), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_5(-13794i, select(global1.d.c, u_input.b.x, all(global1.c.ww)), func_4(Struct_1(vec4<f32>(global1.d.b.x, 449f, global1.d.a.x, global1.d.b.x), _wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(23760u, global1.a, global1.a, global1.a))), global1.d.c)));
    var var_1 = func_2(func_2(Struct_2(_wgslsmith_add_u32(~var_0.x, 9585u), !global1.c.x, vec4<bool>(all(global1.c), global1.b, global1.c.x, 30674u >= global0.x), func_2(func_2(Struct_2(global1.a, false, vec4<bool>(global1.b, global1.b, global1.b, global1.b), global1.d), global2[_wgslsmith_index_u32(44957u, 16u)], var_0.x), vec3<u32>(1u, 4294967295u, 9445u), ~1640u).d), vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(47854u, 16u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, 56295u), 16u)]), ~0u & global0.x), 45889u), global2[_wgslsmith_index_u32(func_5(u_input.b.x, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -19630i, u_input.b.x, 41012i), vec4<i32>(-2785i, u_input.b.x, 0i, global1.d.c))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, global1.d.c, 326i, 1i)), ~vec4<i32>(u_input.b.x, u_input.a, 54078i, global1.d.c))), func_4(func_2(Struct_2(global1.a, false, vec4<bool>(true, global1.b, true, false), global1.d), ~vec3<u32>(var_0.x, 83518u, global0.x), _wgslsmith_sub_u32(0u, global0.x)).d)).x, 16u)], 17302u);
    var_0 = vec3<u32>(4294967295u, abs(abs(_wgslsmith_div_u32(4294967295u, 21865u))), ~0u);
    var var_2 = func_2(Struct_2(77173u, any(select(select(vec4<bool>(true, false, global1.b, global1.c.x), var_1.c, global1.b), vec4<bool>(true, global1.b, true, var_1.c.x), var_1.c.x)), func_2(func_2(Struct_2(var_0.x, global1.b, var_1.c, var_1.d), global2[_wgslsmith_index_u32(global1.a, 16u)] & global2[_wgslsmith_index_u32(97376u, 16u)], select(4294967295u, global0.x, false)), func_5(_wgslsmith_mult_i32(var_1.d.c, -1i), -var_1.d.c, Struct_3(global1.c.x, vec2<u32>(var_0.x, 1u))), countOneBits(var_1.a)).c, var_1.d), global2[_wgslsmith_index_u32(var_1.a, 16u)], 1u).d;
    let var_3 = global1.a ^ ~reverseBits(~global0.x);
    global1 = func_2(Struct_2(~(_wgslsmith_add_u32(48109u, 23450u) >> (var_0.x % 32u)), true, !vec4<bool>(true, !global1.c.x, true, true), global1.d), reverseBits(~vec3<u32>(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(7137u, 16u)], global2[_wgslsmith_index_u32(42813u, 16u)]), global0.x, var_3)), abs(~1u));
    let var_4 = !(!select(select(var_1.c, vec4<bool>(var_1.b, var_1.b, var_1.c.x, global1.b), vec4<bool>(var_1.c.x, true, false, global1.c.x)), !select(vec4<bool>(global1.b, var_1.c.x, true, true), vec4<bool>(false, true, false, global1.b), global1.c), var_1.c));
    var var_5 = func_2(func_2(Struct_2(~_wgslsmith_mod_u32(global0.x, 1u), !select(global1.c.x, var_1.c.x, global1.c.x), var_1.c, Struct_1(var_1.d.a, _wgslsmith_f_op_vec3_f32(global1.d.b - var_1.d.b), var_2.c)), ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], vec3<u32>(global1.a, var_0.x, 6556u)), global2[_wgslsmith_index_u32(var_0.x, 16u)]), var_3 | (~global0.x << (~global0.x % 32u))), global2[_wgslsmith_index_u32(0u, 16u)], ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.b.x) + 985f))), ~countOneBits(global0.x), _wgslsmith_div_vec2_u32(max(global0.yx, ~(~vec2<u32>(global0.x, var_1.a))), ~_wgslsmith_mult_vec2_u32(global0.xz, var_0.yz)));
}

