struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 7>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true));

var<private> global4: Struct_2 = Struct_2(-135f, Struct_1(-7731i, vec2<i32>(-21832i, -34673i), vec4<u32>(1u, 3807u, 0u, 4294967295u), 7767u, vec3<bool>(true, false, true)), Struct_1(0i, vec2<i32>(-31548i, 0i), vec4<u32>(4294967295u, 49939u, 1u, 96647u), 35103u, vec3<bool>(true, false, true)), Struct_1(31222i, vec2<i32>(34554i, -1i), vec4<u32>(0u, 65434u, 1u, 51426u), 16889u, vec3<bool>(true, false, false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global2 = -vec4<i32>(global2.x, 0i, countOneBits(-(i32(-1i) * -46873i)), global2.x);
    var var_0 = _wgslsmith_div_f32(248f, _wgslsmith_f_op_f32(min(global4.a, global4.a)));
    let var_1 = max(~(global0.b.c.zxy >> (~(global4.d.c.zyx & global4.b.c.ywy) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(abs(min(global4.b.c.ywy, vec3<u32>(54962u, 0u, u_input.b))), global4.b.c.yzx));
    global1 = array<Struct_1, 7>();
    var var_2 = global4.d.e;
    return abs(global4.b.d);
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = ~(~16062i);
    var var_1 = ~(~abs(_wgslsmith_mod_i32(global2.x, -16487i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -449f))));
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    return -(abs(1i) >> (_wgslsmith_add_u32(min(31846u << (global0.e.d % 32u), func_3()), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22827u, 0u, arg_0.b.c.x), vec3<u32>(33659u, 3035u, global4.c.c.x)), _wgslsmith_sub_u32(u_input.b, 86622u))) % 32u));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global2 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(global2.wxw, vec3<i32>(-1i, -2147483647i, -global4.b.b.x)), 10644i, -func_2(Struct_3(Struct_1(-882i, global4.c.b, arg_0.c, 40384u, vec3<bool>(global4.c.e.x, true, arg_0.e.x)), arg_0, 38792u, vec4<u32>(arg_0.d, 4294967295u, global0.d.x, global4.c.d), global0.a)), (~u_input.a & global2.x) >> ((global0.b.d ^ 94715u) % 32u));
    let var_0 = ~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a) << (vec2<u32>(global4.d.d, arg_0.c.x) % vec2<u32>(32u)), vec2<i32>(u_input.a, global2.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global2.x, -32449i), global0.a.b | vec2<i32>(0i, -1i))), u_input.a, u_input.a);
    global3 = array<vec4<bool>, 16>();
    global2 = _wgslsmith_div_vec4_i32(vec4<i32>(global0.e.b.x, 0i, 30032i, -1i), vec4<i32>(i32(-1i) * -2147483647i, ~global2.x, i32(-1i) * -21642i, ~(-33144i)));
    var var_1 = Struct_5(1i, arg_0.b.x, -13164i, Struct_3(global0.e, Struct_1(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-9007i, 2147483647i, global2.x, global2.x), vec4<i32>(2147483647i, global0.a.a, 2147483647i, -2147483647i))), vec2<i32>(_wgslsmith_sub_i32(-14140i, -22651i), global0.b.b.x | global0.b.b.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 64015u, 1u, global0.a.c.x), vec4<u32>(1u, u_input.b, 4294967295u, global0.b.c.x)), 1u & u_input.b, vec3<bool>(all(global0.b.e.xy), true, !arg_0.e.x)), reverseBits(_wgslsmith_mult_u32(u_input.b, 0u) & _wgslsmith_div_u32(global0.a.d, 0u)), vec4<u32>(11202u, max(~arg_0.c.x, firstTrailingBit(4294967295u)), 13224u, _wgslsmith_mod_u32(0u, min(85491u, arg_0.c.x))), Struct_1(reverseBits(var_0.x) ^ global4.d.a, min(global4.b.b | vec2<i32>(arg_0.b.x, -26360i), _wgslsmith_mult_vec2_i32(global2.xy, global2.yz)), global0.a.c, global0.e.c.x >> (~61395u % 32u), global0.b.e)));
    return firstLeadingBit(global4.d.c.ww);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec3_i32(-global2.wzx, vec3<i32>(0i, global0.e.a, global4.b.b.x)) << (u_input.b % 32u), select(global2.zx, ~(~vec2<i32>(global4.d.a, -1i)), select(4294967295u >= arg_1.x, false, true)), max(vec4<u32>(17814u, global0.a.d, 69467u, global4.b.d) ^ global0.e.c, ~vec4<u32>(43847u, 43182u, 0u, arg_1.x)) & global4.c.c, arg_1.x, arg_0.zzz), Struct_1(global0.e.a, ~global4.c.b, ~vec4<u32>(3629u, ~arg_1.x, countOneBits(u_input.b), 4569u), _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(global0.d.x, ~2471u)), vec3<bool>(true, false | global4.c.e.x, arg_0.x)), ~(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(8131u, 15912u, global0.a.c.x), vec3<u32>(18780u, global4.b.d, arg_1.x), arg_0.zyy), global0.b.c.www)), vec4<u32>(~(~(4294967295u | u_input.b)), ~_wgslsmith_mult_u32(~46583u, global0.e.d), 8150u | _wgslsmith_dot_vec3_u32(~global4.d.c.wxz, abs(vec3<u32>(1u, 31478u, 61351u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global4.c.d, 6272u, arg_1.x), vec3<u32>(select(0u, 17147u, arg_0.x), abs(global0.a.d), _wgslsmith_clamp_u32(4294967295u, 9105u, 83240u)))), global0.b);
    var_0 = Struct_3(Struct_1(2473i, -select(max(global0.e.b, global0.a.b), firstLeadingBit(vec2<i32>(18853i, 29842i)), false), global0.d, 1u, select(!select(var_0.e.e, vec3<bool>(true, arg_0.x, global4.b.e.x), vec3<bool>(true, false, arg_0.x)), var_0.e.e, false)), Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -2147483647i), global0.e.b), func_2(Struct_3(global4.d, global1[_wgslsmith_index_u32(4294967295u, 7u)], arg_1.x, global4.c.c, Struct_1(61429i, global0.a.b, global4.d.c, 4294967295u, vec3<bool>(false, true, false))))), vec2<i32>(-u_input.a << (1u % 32u), _wgslsmith_div_i32(firstTrailingBit(-658i), -2147483647i)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(50480u, arg_1.x, var_0.a.c.x, 1u), ~global0.e.c, ~vec4<u32>(0u, global0.a.d, 13527u, global4.b.d)), var_0.b.c), ~1u, vec3<bool>(!(43266i < u_input.a), all(!global0.a.e), global4.d.e.x)), global0.c, ~global4.b.c ^ _wgslsmith_add_vec4_u32(countOneBits(abs(global4.c.c)), vec4<u32>(global4.d.c.x, _wgslsmith_sub_u32(global0.e.d, var_0.c), _wgslsmith_sub_u32(4294967295u, 64057u), global4.d.c.x)), global0.e);
    var var_1 = Struct_3(Struct_1(u_input.a, select(vec2<i32>(global0.a.a, u_input.a) << (vec2<u32>(global0.b.d, 0u) % vec2<u32>(32u)), ~vec2<i32>(0i, -2147483647i), select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false), select(vec2<bool>(false, true), vec2<bool>(global0.e.e.x, true), global0.b.e.yx))), var_0.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.d.x, firstLeadingBit(21960u), 16404u, 37217u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.c.x, 0u, 0u, u_input.b), ~var_0.a.c)), vec3<bool>(global4.d.e.x, ~var_0.d.x > (u_input.b ^ u_input.b), any(global0.e.e))), Struct_1(-1i, var_0.b.b, ~global4.d.c, abs(global0.b.c.x), vec3<bool>(true, (global4.d.c.x ^ 1273u) >= ~global0.a.c.x, global4.b.e.x)), ~(~(~0u)), _wgslsmith_add_vec4_u32(~var_0.e.c, firstTrailingBit(max(var_0.d, _wgslsmith_mod_vec4_u32(vec4<u32>(51488u, 31518u, global4.d.c.x, var_0.d.x), global0.e.c)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(25044u, global0.a.d), abs(global4.c.c.zz)), 1u), countOneBits(min(global0.e.c.x, ~4294967295u))), 7u)]);
    let var_2 = false;
    var var_3 = global4.a;
    return Struct_4(Struct_2(645f, var_1.b, var_0.b, Struct_1(global2.x, select(vec2<i32>(global4.c.a, global0.e.b.x) ^ vec2<i32>(97018i, -2147483647i), -vec2<i32>(0i, 32323i), arg_0.x), select(~var_1.e.c, ~vec4<u32>(37722u, 0u, u_input.b, arg_1.x), var_1.a.e.x && arg_0.x), min(~global4.b.c.x, _wgslsmith_mult_u32(1u, 4294967295u)), vec3<bool>(all(vec2<bool>(false, var_0.e.e.x)), false, !var_0.a.e.x))), Struct_1(~_wgslsmith_div_i32(global4.b.a | u_input.a, 0i), global0.e.b, global0.a.c, _wgslsmith_mult_u32(34898u, ~_wgslsmith_dot_vec2_u32(var_1.a.c.yw, global0.b.c.yx)), select(!vec3<bool>(true, true, var_0.e.e.x), global4.d.e, !vec3<bool>(global0.a.e.x, false, var_2))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_u32(~(4294967295u | ~global4.b.d), ~global0.b.d, ~u_input.b) >> (65576u % 32u);
    var var_1 = Struct_5(_wgslsmith_mult_i32(77410i, reverseBits(~global2.x)), func_2(Struct_3(global0.a, func_4(vec4<bool>(global0.b.e.x, false, arg_0.a.b.e.x, arg_0.a.b.e.x), vec2<u32>(global0.e.d, global4.d.c.x)).b, u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, arg_0.b.d, 25769u), vec4<u32>(arg_0.b.d, u_input.b, global0.e.d, 4294967295u)), func_4(select(vec4<bool>(arg_0.b.e.x, global0.a.e.x, false, false), global3[_wgslsmith_index_u32(arg_0.a.d.c.x, 16u)], global0.a.e.x), func_1(arg_0.a.c)).b)), _wgslsmith_sub_i32(2482i, -11178i), Struct_3(Struct_1(-9308i, global2.zz, func_4(vec4<bool>(global4.b.e.x, global4.b.e.x, arg_0.a.d.e.x, global4.b.e.x), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.d.c.x, 19117u), arg_0.b.c.xw)).a.b.c, _wgslsmith_dot_vec3_u32(~global4.b.c.xzy, global0.a.c.xzw), vec3<bool>(true, !global0.a.e.x, true)), func_4(!(!vec4<bool>(false, global0.b.e.x, false, false)), vec2<u32>(global4.c.c.x, global0.e.d) >> (global0.e.c.ww % vec2<u32>(32u))).b, global4.c.c.x, global4.d.c, func_4(!global3[_wgslsmith_index_u32(countOneBits(1u), 16u)], ~func_1(Struct_1(78309i, arg_0.b.b, vec4<u32>(31940u, 29665u, u_input.b, 73585u), 15245u, global4.c.e))).b));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.a)) - _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(abs(317f)))), arg_1.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(var_2.x - arg_0.a.a))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 1730f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(171f, -206f)), arg_0.a.a))), !any(!vec2<bool>(global0.a.e.x, var_1.d.b.e.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * var_2.x))) - _wgslsmith_f_op_f32(-1606f + _wgslsmith_f_op_f32(181f * -235f))))));
    global0 = var_1.d;
    return Struct_3(func_4(!(!select(vec4<bool>(global0.a.e.x, global0.b.e.x, true, true), vec4<bool>(true, false, false, arg_0.b.e.x), global3[_wgslsmith_index_u32(1u, 16u)])), arg_0.a.d.c.xy).a.d, Struct_1(var_1.a, abs(vec2<i32>(global0.a.a, 14535i)) & -global2.zy, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_1.d.e.c, global4.c.c | arg_0.a.b.c, var_1.d.e.c), global4.d.c), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, 0u, 6021u), vec3<u32>(u_input.b, arg_0.b.d, global4.c.c.x)), vec3<u32>(~global0.a.c.x, ~u_input.b, 4294967295u)), select(select(func_4(global3[_wgslsmith_index_u32(51779u, 16u)], global4.c.c.zy).b.e, vec3<bool>(false, true, true), global0.e.e), !vec3<bool>(arg_0.a.d.e.x, arg_0.a.b.e.x, true), !select(global0.e.e, global0.e.e, vec3<bool>(false, true, global0.b.e.x)))), ~(~(~(~arg_0.a.b.d))), abs(var_1.d.d), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = -u_input.a >> (_wgslsmith_dot_vec2_u32(global4.c.c.yy, ~_wgslsmith_sub_vec2_u32(global0.b.c.xy, _wgslsmith_add_vec2_u32(global4.b.c.xz, global4.d.c.ww))) % 32u);
    global1 = array<Struct_1, 7>();
    let var_2 = func_5(func_4(global3[_wgslsmith_index_u32(global0.a.d, 16u)], func_1(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, u_input.b), 7u)])), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1501f, -1452f, global4.a) + vec3<f32>(-355f, -1025f, -126f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1100f, global4.a, global4.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, global4.a, global4.a))))));
    let var_3 = 42378u;
    let var_4 = _wgslsmith_div_f32(func_4(select(global3[_wgslsmith_index_u32(~(global4.b.d << (var_3 % 32u)), 16u)], select(select(vec4<bool>(var_0, true, true, false), vec4<bool>(false, false, true, true), global3[_wgslsmith_index_u32(var_3, 16u)]), vec4<bool>(global4.b.e.x, false, false, false), select(global3[_wgslsmith_index_u32(var_3, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(20541u, 16u)])), global0.a.e.x), var_2.a.c.yy).a.a, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~vec4<i32>(1i, var_2.e.a, var_1, u_input.a));
}

