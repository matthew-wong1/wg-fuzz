struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(1u, 111545u, 112620u, 0u, 8071u, 1u, 79854u, 0u, 4045u, 13671u, 1u, 1u, 60530u, 36599u, 14382u, 25099u, 76053u, 19114u, 0u, 0u, 49968u, 0u, 15371u, 4294967295u, 4294967295u, 87994u);

var<private> global1: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-738f, -1120f, 837f), vec3<f32>(-473f, -169f, 1790f), vec3<f32>(117f, -1239f, -2289f), vec3<f32>(1000f, -605f, -357f), vec3<f32>(780f, 195f, 674f));

var<private> global2: array<Struct_4, 28>;

var<private> global3: array<u32, 10> = array<u32, 10>(9575u, 5546u, 1u, 13961u, 14863u, 10564u, 11492u, 1u, 12165u, 14184u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> bool {
    global0 = array<u32, 26>();
    var var_0 = Struct_2(39038u, arg_2.b, ~(global3[_wgslsmith_index_u32(min(firstTrailingBit(0u), countOneBits(arg_0.a.a)), 10u)] << (~global0[_wgslsmith_index_u32(~37011u, 26u)] % 32u)), Struct_1(arg_0.a.d.a || false, _wgslsmith_clamp_vec3_i32(abs(arg_0.b << (vec3<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 10u)], 1u) % vec3<u32>(32u))), vec3<i32>(arg_0.a.e.d.x | -2147483647i, arg_2.b.e.x, -1i), min(vec3<i32>(arg_2.b.b.x, arg_2.b.e.x, u_input.a.x), arg_2.b.d)), false, vec3<i32>(arg_2.d.b.x << (~112528u % 32u), min(u_input.a.x, u_input.a.x), 45147i), ~arg_2.d.e), Struct_1(true, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(0i, -2147483647i)), ~7571i, -29608i), -_wgslsmith_clamp_vec3_i32(arg_2.e.e.wxy, arg_0.a.e.e.zwx, u_input.a)), ~(~u_input.a.x) >= abs(-25669i), ~vec3<i32>(arg_0.a.b.b.x, ~69283i, -arg_2.d.d.x), reverseBits(vec4<i32>(-8244i, -3072i, arg_0.b.x, -1i)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], global3[_wgslsmith_index_u32(28829u, 10u)], arg_2.c, arg_2.a), vec4<u32>(2470u, global3[_wgslsmith_index_u32(1u, 10u)], 1u, arg_0.a.a)) % vec4<u32>(32u))));
    global1 = array<vec3<f32>, 5>();
    global1 = array<vec3<f32>, 5>();
    let var_1 = any(vec2<bool>(arg_2.e.c, arg_0.a.e.a));
    return arg_0.a.e.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    var var_0 = Struct_3(Struct_2(~0u, Struct_1(true & func_3(Struct_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(arg_0.x, u_input.a, arg_0.x, vec3<i32>(47556i, -5365i, u_input.a.x), vec4<i32>(u_input.a.x, 8680i, u_input.a.x, u_input.a.x)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32373u, 10u)], 10u)], Struct_1(true, u_input.a, true, u_input.a, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i)), Struct_1(true, vec3<i32>(2147483647i, 2147483647i, u_input.a.x), false, vec3<i32>(64418i, 4974i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a), arg_1, Struct_2(56767u, Struct_1(false, vec3<i32>(19747i, 18752i, u_input.a.x), false, vec3<i32>(-83092i, u_input.a.x, 0i), vec4<i32>(-1i, 1i, -36751i, 38688i)), global0[_wgslsmith_index_u32(58433u, 26u)], Struct_1(arg_0.x, u_input.a, arg_0.x, vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), vec4<i32>(u_input.a.x, 11369i, 2147483647i, u_input.a.x)), Struct_1(arg_0.x, vec3<i32>(-22011i, -1i, 9036i), false, vec3<i32>(1i, -30348i, -1i), vec4<i32>(2147483647i, -12860i, u_input.a.x, u_input.a.x)))), u_input.a, all(select(vec2<bool>(arg_0.x, true), arg_0.yz, true)), max(u_input.a, countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 1i))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-75685i, u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2095i, 0i, -1i, 3155i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)))), global3[_wgslsmith_index_u32(43405u, 10u)], Struct_1(!select(true, false, true), vec3<i32>(-u_input.a.x, -1i, 1i), !(!arg_0.x), ~min(u_input.a, vec3<i32>(u_input.a.x, -15391i, u_input.a.x)), select(vec4<i32>(u_input.a.x, u_input.a.x, 55078i, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i)), false)), Struct_1(!func_3(Struct_3(Struct_2(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 10u)], 10u)], Struct_1(arg_0.x, vec3<i32>(1i, u_input.a.x, 22264i), true, u_input.a, vec4<i32>(-1i, -42653i, u_input.a.x, 648i)), 1u, Struct_1(false, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), arg_0.x, vec3<i32>(1i, 2147483647i, 2147483647i), vec4<i32>(u_input.a.x, 1193i, 1i, 23982i)), Struct_1(arg_0.x, u_input.a, arg_0.x, u_input.a, vec4<i32>(-1i, 0i, 39192i, u_input.a.x))), vec3<i32>(14348i, 1i, 1i)), arg_1, Struct_2(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56183u, 10u)], 10u)], Struct_1(false, u_input.a, false, u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 35691i)), 4294967295u, Struct_1(arg_0.x, u_input.a, false, u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 84793i, -29835i)), Struct_1(arg_0.x, u_input.a, arg_0.x, vec3<i32>(2147483647i, -1i, 13222i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)))), vec3<i32>(u_input.a.x, -12302i, 2147483647i), _wgslsmith_f_op_f32(-arg_1) <= _wgslsmith_f_op_f32(864f - -152f), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -1i, 2618i), vec3<i32>(1i, 46396i, u_input.a.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, -13103i, -44241i)))), ~(vec3<i32>(1i, ~u_input.a.x, firstTrailingBit(u_input.a.x)) & u_input.a));
    var_0 = Struct_3(var_0.a, firstLeadingBit(var_0.a.d.b));
    global3 = array<u32, 10>();
    let var_1 = var_0.a;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-252f - _wgslsmith_f_op_f32(f32(-1f) * -147f)), Struct_1(false, ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_0.b.x, var_0.b.x) & vec3<i32>(u_input.a.x, 42187i, u_input.a.x), ~vec3<i32>(-1i, var_1.d.e.x, -2147483647i)), false, ~u_input.a, vec4<i32>(u_input.a.x, min(min(u_input.a.x, u_input.a.x), -var_1.d.e.x), select(1i, 12956i, arg_0.x) >> (max(global3[_wgslsmith_index_u32(12018u, 10u)], 48445u) % 32u), ~(var_0.b.x << (4294967295u % 32u)))), u_input.a.zz, select(select(vec2<bool>(false, true), arg_0.wx, vec2<bool>(true, true)), vec2<bool>(true, true), all(!(!vec2<bool>(var_0.a.e.c, true)))));
    return 1u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_4 {
    var var_0 = arg_0.d;
    var var_1 = Struct_2(4294967295u, Struct_1(true, countOneBits(arg_0.e.b), select(_wgslsmith_div_f32(arg_2, -1000f) < -977f, 24409i >= ~arg_1.d.b.x, true), u_input.a, vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.d.e.wxx ^ vec3<i32>(-3711i, 6577i, arg_0.d.d.x), vec3<i32>(-1i, -54511i, arg_1.e.e.x)), ~(-19139i), var_0.b.x & _wgslsmith_add_i32(15768i, 24938i), 33249i)), 14989u, Struct_1(!(arg_0.c != ~global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61468u, 26u)], 10u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.a.x, -1i, -1i & arg_1.b.e.x), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, arg_0.d.b.x), vec3<i32>(var_0.e.x, -1i, -19441i) | vec3<i32>(var_0.d.x, -2147483647i, 2147483647i))), false, reverseBits(select(-u_input.a, vec3<i32>(arg_0.e.b.x, 2147483647i, 1i), vec3<bool>(arg_1.e.c, arg_0.e.a, arg_1.d.a))), vec4<i32>(arg_1.d.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 47646i, 2147483647i, -12951i) & vec4<i32>(u_input.a.x, 0i, 2147483647i, -12394i), arg_1.d.e), 6237i, -6908i ^ (-10899i << (global0[_wgslsmith_index_u32(arg_1.c, 26u)] % 32u)))), arg_0.d);
    var var_2 = ~31664u;
    global1 = array<vec3<f32>, 5>();
    let var_3 = reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~(~56867u), ~var_1.a ^ 4294967295u), vec3<u32>(~1u, global3[_wgslsmith_index_u32(~1u, 10u)] | ~arg_0.c, 10988u)));
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -742f), 514f, Struct_1(func_3(Struct_3(arg_0, vec3<i32>(69902i, var_1.e.e.x, 2147483647i)), 1897f, Struct_2(3136u, Struct_1(false, var_1.d.e.yzz, arg_0.b.a, vec3<i32>(var_1.e.e.x, u_input.a.x, -39295i), vec4<i32>(var_0.e.x, 50406i, -16759i, var_0.e.x)), global3[_wgslsmith_index_u32(48089u, 10u)], arg_0.e, Struct_1(true, arg_0.b.d, true, vec3<i32>(arg_1.b.e.x, 2147483647i, var_0.d.x), arg_1.d.e))) | !select(false, true, false), min(_wgslsmith_mod_vec3_i32(u_input.a, min(var_1.b.d, var_1.e.e.wwx)), var_0.e.yzx), true == arg_0.d.a, _wgslsmith_clamp_vec3_i32(min(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.d.e.x, arg_1.b.e.x, -2147483647i), vec3<i32>(2147483647i, -2147483647i, u_input.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.e.d.x, var_0.b.x, -1i), vec3<i32>(1i, 9300i, -67903i))), vec3<i32>(var_1.b.e.x, -1i, var_1.e.e.x) & -vec3<i32>(var_0.d.x, 1092i, -24726i), _wgslsmith_add_vec3_i32(arg_1.b.b, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), var_0.d))), min(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.e.x, 0i, 27236i, arg_1.e.d.x), ~var_1.b.e), vec4<i32>(select(arg_0.d.e.x, 2147483647i, var_1.e.c), ~53418i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.b.x, 10456i, -1i, arg_0.b.e.x), arg_1.e.e), var_0.b.x))), ~(vec2<i32>(_wgslsmith_add_i32(16759i, u_input.a.x), _wgslsmith_clamp_i32(var_0.e.x, 2147483647i, var_0.b.x)) & ~min(arg_0.e.e.wy, vec2<i32>(arg_0.b.d.x, 2147483647i))), vec2<bool>(var_0.a, !select(select(true, true, var_1.d.a), arg_0.d.c || arg_0.d.a, var_1.e.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_2(global3[_wgslsmith_index_u32(1u, 10u)] << (func_2(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), _wgslsmith_f_op_f32(f32(-1f) * -1005f)) % 32u), Struct_1(all(vec2<bool>(true, true)) == true, ~u_input.a, any(vec2<bool>(true, true)), ~(~u_input.a), vec4<i32>(~2147483647i, 1i, 2147483647i, ~u_input.a.x)), global0[_wgslsmith_index_u32(~57487u, 26u)] & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 11882u), max(vec2<u32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 26u)], global3[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<u32>(72555u, 23844u))), Struct_1(true, u_input.a, all(vec4<bool>(true, false, true, false)), vec3<i32>(abs(-3675i), -u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.yx)), firstLeadingBit(vec4<i32>(1i, -7310i, 2147483647i, 10620i)) >> (vec4<u32>(8659u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20050u, 10u)], 10u)], 10u)], 4294967295u, 0u) % vec4<u32>(32u))), Struct_1(true, vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), abs(u_input.a.x)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34454u, 26u)], 26u)] >= 1u, vec3<i32>(u_input.a.x, -2147483647i, 0i) | vec3<i32>(u_input.a.x, u_input.a.x, 41593i), vec4<i32>(select(1i, u_input.a.x, false), u_input.a.x & u_input.a.x, ~1i, u_input.a.x))), Struct_2(global0[_wgslsmith_index_u32(1u, 26u)], Struct_1(any(vec3<bool>(true, true, true)), vec3<i32>(firstTrailingBit(u_input.a.x), firstLeadingBit(u_input.a.x), ~u_input.a.x), false, u_input.a, vec4<i32>(u_input.a.x, -u_input.a.x, ~1i, u_input.a.x)), global0[_wgslsmith_index_u32(1u, 26u)], Struct_1(true, _wgslsmith_clamp_vec3_i32(u_input.a | u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a & vec3<i32>(30061i, u_input.a.x, u_input.a.x)), true, u_input.a, firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 18829i, u_input.a.x, 29969i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), Struct_1(all(vec3<bool>(true, true, true)), u_input.a, true, u_input.a << ((vec3<u32>(25658u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 10u)], 10u)], 58209u) ^ vec3<u32>(1u, global3[_wgslsmith_index_u32(0u, 10u)], 1u)) % vec3<u32>(32u)), -vec4<i32>(-83358i, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f + _wgslsmith_div_f32(-1048f, _wgslsmith_f_op_f32(-1585f - -967f))) * _wgslsmith_f_op_f32(min(1206f, _wgslsmith_f_op_f32(f32(-1f) * -490f)))));
    let var_1 = Struct_4(var_0.b, 696f, Struct_1(!func_4(Struct_2(4294967295u, var_0.c, global0[_wgslsmith_index_u32(19417u, 26u)], Struct_1(var_0.e.x, var_0.c.b, false, vec3<i32>(u_input.a.x, -1i, 0i), vec4<i32>(u_input.a.x, -17614i, u_input.a.x, -9938i)), var_0.c), Struct_2(41625u, Struct_1(var_0.e.x, vec3<i32>(u_input.a.x, u_input.a.x, var_0.d.x), true, u_input.a, var_0.c.e), global3[_wgslsmith_index_u32(0u, 10u)], var_0.c, Struct_1(var_0.e.x, vec3<i32>(u_input.a.x, u_input.a.x, var_0.d.x), var_0.e.x, var_0.c.d, var_0.c.e)), -947f).c.c, var_0.c.b, false, ~vec3<i32>(u_input.a.x, var_0.c.b.x | u_input.a.x, _wgslsmith_mult_i32(0i, -30040i)), abs(var_0.c.e | vec4<i32>(79043i, var_0.c.d.x, var_0.d.x, -25880i))), ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(2147483647i, -37597i)) | (-16476i | var_0.c.e.x), -16475i), !select(!var_0.e, var_0.e, false));
    global0 = array<u32, 26>();
    return var_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4) -> vec3<u32> {
    global1 = array<vec3<f32>, 5>();
    global2 = array<Struct_4, 28>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.c >> (18316u % 32u), ~1u), 26u)], global0[_wgslsmith_index_u32(arg_0.a, 26u)] & 29263u), Struct_1(func_3(Struct_3(arg_0, vec3<i32>(-47879i, arg_0.b.d.x, 18687i)), _wgslsmith_f_op_f32(arg_2.a - 799f), arg_0), vec3<i32>(u_input.a.x, arg_2.d.x | arg_0.d.e.x, ~47689i), all(vec4<bool>(arg_2.c.c, true, false, arg_2.e.x)) || func_3(Struct_3(arg_0, vec3<i32>(11773i, arg_0.b.d.x, -28987i)), arg_2.a, arg_0), _wgslsmith_mult_vec3_i32(~vec3<i32>(1i, arg_0.e.b.x, 1i), -vec3<i32>(25414i, 1i, 1i)), arg_2.c.e), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2758u, 26u)], 26u)], 26u)] << (countOneBits(3843u) % 32u), 10u)] | global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(4918u, 26u)] & arg_0.a, arg_0.c), 10u)], Struct_1((arg_0.c ^ 0u) < 4294967295u, arg_0.e.b, all(!arg_2.e), vec3<i32>(arg_0.b.d.x, func_4(Struct_2(arg_0.c, Struct_1(arg_0.d.c, arg_2.c.d, arg_1, u_input.a, vec4<i32>(-14339i, u_input.a.x, arg_2.d.x, arg_0.e.e.x)), 40253u, Struct_1(arg_1, arg_2.c.e.wxy, true, vec3<i32>(arg_2.c.b.x, arg_0.b.b.x, u_input.a.x), arg_0.e.e), arg_2.c), Struct_2(1u, arg_2.c, 39879u, arg_0.d, arg_2.c), arg_2.a).d.x, ~(-41173i)), vec4<i32>(arg_0.e.e.x, -arg_0.e.d.x, -1i, -26839i)), func_1()), vec3<i32>(~arg_0.b.b.x, min(reverseBits(arg_2.d.x ^ 28855i), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.b.x, -1i), arg_0.b.d.zy)), u_input.a.x));
    global1 = array<vec3<f32>, 5>();
    var var_1 = ~var_0.a.e.e;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(53256u, ~0u & max(global3[_wgslsmith_index_u32(25226u, 10u)], global0[_wgslsmith_index_u32(var_0.a.c, 26u)])), 10u)], global0[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u & global0[_wgslsmith_index_u32(1u, 26u)], 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.c, 10u)], 10u)] | 46740u) | _wgslsmith_mod_u32(~5303u, _wgslsmith_mod_u32(4294967295u, global3[_wgslsmith_index_u32(23649u, 10u)]))), reverseBits(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 1u, 0u, 1u), vec4<u32>(global3[_wgslsmith_index_u32(var_0.a.c, 10u)], 1u, arg_0.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)])), firstTrailingBit(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(arg_0.a, 10u)], 13561u)), arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 26>();
    var var_0 = -448f;
    var var_1 = vec3<u32>(max(~firstLeadingBit(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 10u)]), global0[_wgslsmith_index_u32(73347u, 26u)]), ~_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_add_u32(1u, global3[_wgslsmith_index_u32(1491u, 10u)])), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(10623u, global0[_wgslsmith_index_u32(7091u, 26u)]), vec2<u32>(10713u, 16353u)) ^ ~1u)) >> (func_5(Struct_2(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45075u, 26u)], 26u)] & ~global3[_wgslsmith_index_u32(6650u, 10u)], 26u)], func_1(), _wgslsmith_sub_u32(~38074u, global0[_wgslsmith_index_u32(1u, 26u)] | global0[_wgslsmith_index_u32(4294967295u, 26u)]), Struct_1(any(vec4<bool>(true, true, false, true)), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a), select(false, false, true), vec3<i32>(-1i, -2147483647i, u_input.a.x) ^ u_input.a, firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), func_1()), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), firstLeadingBit(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 10u)])) > firstLeadingBit(~4294967295u), func_4(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50480u, 10u)], 26u)], 1u), 26u)], Struct_1(true, u_input.a, false, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], func_1(), func_1()), Struct_2(min(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]), Struct_1(false, u_input.a, false, u_input.a, vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i)), ~global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 10u)], Struct_1(false, vec3<i32>(21101i, u_input.a.x, u_input.a.x), false, u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)), func_1()), _wgslsmith_f_op_f32(-1000f - 702f))) % vec3<u32>(32u));
    let var_2 = func_4(Struct_2(global0[_wgslsmith_index_u32(abs(~(~global3[_wgslsmith_index_u32(var_1.x, 10u)])), 26u)], func_4(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 26u)]), vec3<u32>(1u, var_1.x, 4294967295u)), Struct_1(false, u_input.a, false, u_input.a, vec4<i32>(1i, u_input.a.x, u_input.a.x, 2147483647i)), firstLeadingBit(var_1.x), func_1(), func_1()), Struct_2(0u, Struct_1(true, vec3<i32>(u_input.a.x, -33409i, 37356i), true, u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)), firstLeadingBit(57624u), func_1(), Struct_1(true, vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), true, u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 20521i, u_input.a.x))), -983f).c, max(firstTrailingBit(0u) << (global0[_wgslsmith_index_u32(select(63649u, 4294967295u, true), 26u)] % 32u), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 10u)], var_1.x, global3[_wgslsmith_index_u32(58996u, 10u)]), vec3<u32>(4294967295u, var_1.x, 1u)))), Struct_1(func_1().a, func_4(Struct_2(0u, Struct_1(false, u_input.a, true, u_input.a, vec4<i32>(u_input.a.x, -1i, -38892i, -1976i)), global3[_wgslsmith_index_u32(54263u, 10u)], Struct_1(false, u_input.a, true, u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 45037i)), Struct_1(false, u_input.a, false, u_input.a, vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, u_input.a.x))), Struct_2(29893u, Struct_1(true, u_input.a, false, vec3<i32>(u_input.a.x, -41443i, -11748i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -10970i)), 27257u, Struct_1(false, vec3<i32>(u_input.a.x, -1i, u_input.a.x), false, u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 44734i)), Struct_1(true, u_input.a, false, vec3<i32>(1i, u_input.a.x, u_input.a.x), vec4<i32>(29463i, 22526i, u_input.a.x, -5168i))), -296f).c.b, any(vec3<bool>(false, false, false)) || true, vec3<i32>(-45349i, u_input.a.x << (global3[_wgslsmith_index_u32(0u, 10u)] % 32u), ~(-23707i)), countOneBits(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)))), Struct_1(false, ~(~u_input.a), true, vec3<i32>(2373i, -44569i, ~u_input.a.x), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, 54062i, -12463i, u_input.a.x)), vec4<i32>(9108i, u_input.a.x, -2147483647i, u_input.a.x), countOneBits(vec4<i32>(0i, 20420i, u_input.a.x, 1i))))), Struct_2(4294967295u, Struct_1(false, u_input.a, true, -u_input.a, ~(-vec4<i32>(-19393i, u_input.a.x, 6626i, -19682i))), (_wgslsmith_sub_u32(var_1.x, 0u) << (var_1.x % 32u)) | global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 26u)], Struct_1(true, u_input.a, true, (vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) ^ vec3<i32>(u_input.a.x, 15808i, u_input.a.x)) << (~vec3<u32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 10u)], 10u)], 26u)], var_1.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 10u)]) % vec3<u32>(32u)), vec4<i32>(u_input.a.x, ~(-2147483647i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x)), Struct_1(true, func_1().b, true, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)] % 32u), u_input.a.x & 2147483647i, u_input.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2535f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f - 496f)))));
    var var_3 = Struct_3(Struct_2(~(~(1u >> (1u % 32u))), Struct_1(!var_2.c.c, -vec3<i32>(1i, var_2.d.x, u_input.a.x), func_3(Struct_3(Struct_2(var_1.x, Struct_1(true, var_2.c.b, var_2.c.c, vec3<i32>(20170i, -3893i, u_input.a.x), var_2.c.e), 4294967295u, Struct_1(true, vec3<i32>(var_2.c.b.x, 1i, var_2.c.e.x), var_2.c.c, vec3<i32>(var_2.c.b.x, -1i, 5992i), var_2.c.e), var_2.c), vec3<i32>(var_2.d.x, 2147483647i, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(0u, var_2.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 26u)], 26u)], var_2.c, Struct_1(var_2.e.x, var_2.c.b, var_2.e.x, vec3<i32>(u_input.a.x, var_2.c.e.x, 2147483647i), var_2.c.e))), -vec3<i32>(var_2.d.x, 1i, -1i), var_2.c.e), 40971u, Struct_1(func_4(Struct_2(1u, var_2.c, 100504u, var_2.c, var_2.c), Struct_2(global0[_wgslsmith_index_u32(54665u, 26u)], Struct_1(false, vec3<i32>(2147483647i, var_2.c.b.x, var_2.d.x), var_2.e.x, u_input.a, vec4<i32>(-10952i, 40410i, -2147483647i, u_input.a.x)), 23937u, Struct_1(var_2.c.a, var_2.c.e.xzz, var_2.c.c, vec3<i32>(var_2.d.x, -190i, var_2.d.x), vec4<i32>(14004i, u_input.a.x, 8243i, 46974i)), var_2.c), _wgslsmith_f_op_f32(-var_2.a)).c.a, _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.d.x, u_input.a.x, -2147483647i), ~vec3<i32>(u_input.a.x, var_2.c.d.x, var_2.c.e.x)), true, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -1i, -11517i), var_2.c.e.wzz), var_2.c.e), var_2.c), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(~var_2.d.x, u_input.a.x, 2147483647i), firstTrailingBit(vec3<i32>(-14763i, u_input.a.x, -11704i)))));
    global1 = array<vec3<f32>, 5>();
    var var_4 = var_3.a;
    let var_5 = func_4(Struct_2(8630u & _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~0u, 10u)], _wgslsmith_add_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 10u)], 10945u)), func_4(Struct_2(abs(var_4.c), Struct_1(var_3.a.b.a, var_4.d.e.wyz, false, vec3<i32>(-5893i, var_4.e.d.x, -1i), var_3.a.e.e), ~33671u, func_4(Struct_2(52356u, Struct_1(var_2.c.c, vec3<i32>(var_4.d.b.x, var_2.d.x, var_2.c.e.x), false, var_2.c.d, var_4.e.e), global3[_wgslsmith_index_u32(4294967295u, 10u)], var_2.c, var_4.e), Struct_2(1u, var_4.e, 26262u, var_2.c, Struct_1(false, var_3.b, true, vec3<i32>(73362i, u_input.a.x, 1i), var_3.a.d.e)), var_2.b).c, var_2.c), Struct_2(abs(var_1.x), Struct_1(var_4.b.a, var_3.b, true, vec3<i32>(-2147483647i, 1i, var_3.a.d.d.x), vec4<i32>(1i, var_3.a.b.e.x, var_2.d.x, u_input.a.x)), 1u, var_3.a.b, func_4(var_3.a, Struct_2(4294967295u, var_4.d, 14340u, var_4.e, Struct_1(false, var_3.a.b.e.xzx, false, vec3<i32>(var_3.b.x, u_input.a.x, u_input.a.x), var_4.e.e)), -1051f).c), -1934f).c, 1u, func_1(), var_3.a.d), Struct_2(161603u | global0[_wgslsmith_index_u32(~var_3.a.a >> (global0[_wgslsmith_index_u32(~39674u, 26u)] % 32u), 26u)], func_4(Struct_2(firstLeadingBit(41832u), func_4(Struct_2(4294967295u, var_2.c, 1475u, Struct_1(var_2.c.c, vec3<i32>(-84714i, u_input.a.x, 44811i), true, var_2.c.d, vec4<i32>(u_input.a.x, 0i, 2147483647i, var_2.c.b.x)), var_3.a.d), var_3.a, -838f).c, 1u ^ global0[_wgslsmith_index_u32(var_1.x, 26u)], var_2.c, Struct_1(true, vec3<i32>(var_3.a.e.b.x, 2147483647i, -15232i), var_3.a.d.a, vec3<i32>(var_3.a.b.d.x, 0i, var_2.c.d.x), vec4<i32>(var_4.e.d.x, 0i, var_2.d.x, var_3.b.x))), var_3.a, _wgslsmith_f_op_f32(max(-609f, 1030f))).c, 74248u, var_3.a.d, var_4.b), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.b, var_5.b)), _wgslsmith_f_op_f32(trunc(-1018f))), _wgslsmith_f_op_f32(sign(var_5.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a + _wgslsmith_f_op_f32(step(var_5.b, var_5.b))))), -1010f);
}

