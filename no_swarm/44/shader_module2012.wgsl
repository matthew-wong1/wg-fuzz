struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(20484u, 5631u), -593f, vec4<u32>(18271u, 69021u, 1352u, 4294967295u));

var<private> global1: array<Struct_2, 2>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    global1 = array<Struct_2, 2>();
    var var_0 = select(select(select(vec2<bool>(false, all(vec4<bool>(false, false, false, false))), vec2<bool>(true, true), !all(vec2<bool>(false, true))), vec2<bool>(true, true), (true | all(vec3<bool>(false, false, true))) | true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), vec2<bool>(any(vec3<bool>(true, true, false)), true)), vec2<bool>(true, true)), vec2<bool>(!any(vec4<bool>(false, false, true, true)), true));
    let var_1 = min(-vec2<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(0i, u_input.a))), -abs(vec2<i32>(-15056i, 0i)))) >> (vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, global0.a.x), 1u) ^ ~(global0.a.x | arg_0.c.x), ~max(~arg_0.a.x, 4294967295u)) % vec2<u32>(32u));
    global0 = Struct_4(countOneBits(vec2<u32>(4294967295u, 34992u) | _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.c.x, arg_0.a.x), global0.c.wz)), 446f, _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(global0.c, ~vec4<u32>(global0.a.x, 4294967295u, 66500u, global0.c.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.a.x, arg_0.a.x, 0u, arg_0.a.x), select(select(vec4<u32>(5697u, 13440u, 29600u, arg_0.c.x), arg_0.c, vec4<bool>(false, var_0.x, var_0.x, true)), global0.c, var_1.x >= -2147483647i))));
    global1 = array<Struct_2, 2>();
    return _wgslsmith_mod_vec2_u32(~global0.c.wy, arg_0.c.xx);
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global0 = Struct_4(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(func_3(Struct_4(vec2<u32>(1u, global0.c.x), global0.b, vec4<u32>(64893u, 32075u, arg_0.b.x, global0.a.x))), ~vec2<u32>(9377u, 15323u)), ~arg_0.a) & _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(arg_0.a, global0.a), vec2<u32>(~0u, global0.a.x)), global0.b, vec4<u32>(func_3(Struct_4(arg_0.b.zy, 910f, vec4<u32>(global0.a.x, arg_0.a.x, 6730u, 48925u))).x << (57757u % 32u), select(global0.a.x, 0u, any(vec2<bool>(true, true))), firstTrailingBit(arg_0.a.x), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 43623u, global0.c.x, global0.a.x), vec4<u32>(20700u, global0.a.x, 0u, global0.c.x))) >> ((65913u | arg_0.b.x) % 32u)));
    let var_0 = vec3<bool>(-47505i <= -u_input.a, ~countOneBits(firstLeadingBit(arg_0.b.x)) < _wgslsmith_mult_u32(global0.c.x, ~1u), select(true == !any(vec2<bool>(false, true)), true, false));
    var var_1 = Struct_2(vec4<i32>(u_input.a, u_input.a, _wgslsmith_add_i32(1i, ~1i), 0i), 1u);
    let var_2 = Struct_4(~vec2<u32>(~(~var_1.b), _wgslsmith_dot_vec2_u32(firstTrailingBit(global0.c.zy), global0.c.yx)), global0.b, ~global0.c);
    global0 = Struct_4((~(arg_0.b.xy << (vec2<u32>(arg_0.b.x, 0u) % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(global0.a, abs(arg_0.a), select(vec2<u32>(35944u, 28336u), vec2<u32>(5463u, 1u), var_0.x))) | vec2<u32>(_wgslsmith_add_u32(global0.c.x, var_1.b), func_3(var_2).x), var_2.b, global0.c);
    return -(vec4<i32>(u_input.a, -2341i, -1i, _wgslsmith_sub_i32(var_1.a.x >> (global0.a.x % 32u), var_1.a.x)) & vec4<i32>(u_input.a | _wgslsmith_sub_i32(u_input.a, var_1.a.x), i32(-1i) * -var_1.a.x, 28833i, countOneBits(_wgslsmith_clamp_i32(u_input.a, u_input.a, -20663i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<u32>) -> Struct_4 {
    global0 = Struct_4(arg_3, -685f, ~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, 67017u, global0.a.x), vec4<u32>(global0.a.x, global0.a.x, 0u, 4294967295u))));
    var var_0 = 11500i;
    return Struct_4(max(~(~vec2<u32>(arg_3.x, arg_3.x)), vec2<u32>(1u, global0.a.x)), _wgslsmith_f_op_f32(min(global0.b, global0.b)), vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_1.x) & (4294967295u & (0u ^ arg_3.x)), ~10087u, abs(_wgslsmith_mult_u32(arg_3.x << (1u % 32u), firstTrailingBit(4294967295u))), 8335u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> Struct_2 {
    global1 = array<Struct_2, 2>();
    let var_0 = Struct_3(arg_1.c.x, -(~1i), Struct_1(abs(firstTrailingBit(firstLeadingBit(vec2<u32>(arg_1.a.x, 13479u)))), ~vec3<u32>(global0.c.x, ~4400u, _wgslsmith_div_u32(arg_1.a.x, arg_0.a.x))), countOneBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-43414i, u_input.a, 0i, u_input.a), vec4<i32>(2147483647i, 0i, -26507i, 8996i), vec4<bool>(false, false, true, false)), abs(vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i)))) << (_wgslsmith_sub_vec4_u32(~arg_1.c, ~(vec4<u32>(0u, global0.c.x, global0.a.x, 12320u) << (arg_0.c % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~(~(vec4<u32>(arg_0.a.x, arg_0.a.x, 32699u, arg_0.a.x) & vec4<u32>(23137u, 10503u, arg_1.c.x, 1u))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.c, vec4<u32>(15354u, 114362u, 59487u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, 44440u, global0.a.x), vec4<u32>(54623u, arg_0.c.x, 1u, 79255u))) | ~func_4(vec4<i32>(0i, u_input.a, -47238i, u_input.a), arg_0.c, 591f, global0.a).c));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + arg_1.b) * 2347f)));
    var var_2 = var_0;
    let var_3 = true;
    return Struct_2(-_wgslsmith_sub_vec4_i32(abs(_wgslsmith_mult_vec4_i32(var_0.d, var_2.d)), vec4<i32>(_wgslsmith_mult_i32(1i, u_input.a), _wgslsmith_add_i32(-2147483647i, u_input.a), -u_input.a, _wgslsmith_mult_i32(u_input.a, var_0.d.x))), global0.c.x);
}

fn func_6(arg_0: i32, arg_1: Struct_5) -> Struct_3 {
    global1 = array<Struct_2, 2>();
    var var_0 = select(vec2<i32>(i32(-1i) * -abs(-2147483647i), ~1i), vec2<i32>(u_input.a, arg_0 << (func_4(vec4<i32>(-2147483647i, arg_0, 2147483647i, arg_1.a.a.x), vec4<u32>(global0.c.x, 1u, global0.c.x, 0u), _wgslsmith_f_op_f32(-global0.b), global0.a).a.x % 32u)), arg_1.b.yy);
    var var_1 = var_0.x;
    global0 = Struct_4(vec2<u32>(~arg_1.d.e.x ^ countOneBits(~1u), _wgslsmith_div_u32(_wgslsmith_add_u32(14801u, 53655u >> (arg_1.d.e.x % 32u)), ~global0.a.x << (_wgslsmith_sub_u32(133574u, 14233u) % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1017f - -294f), global0.b)))), firstTrailingBit(abs(vec4<u32>(global0.a.x, arg_1.a.b, arg_1.d.a, global0.a.x))));
    var var_2 = func_4(arg_1.a.a, ~global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.b << (global0.a.x % 32u), _wgslsmith_mod_u32(abs(26354u), firstLeadingBit(0u))), arg_1.d.c.b.xx)).c.x;
    return Struct_3(global0.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(8911i, _wgslsmith_dot_vec4_i32(arg_1.a.a, arg_1.e)), vec2<i32>(arg_0, func_5(Struct_4(arg_1.c.xy, -2015f, vec4<u32>(0u, 27409u, global0.a.x, 25235u)), Struct_4(arg_1.c.xy, global0.b, global0.c)).a.x)), _wgslsmith_clamp_i32(-(~(-2484i)), countOneBits(arg_1.d.b), func_5(func_4(vec4<i32>(26109i, -1i, u_input.a, arg_1.d.b), global0.c, 517f, vec2<u32>(global0.a.x, arg_1.a.b)), func_4(arg_1.e, vec4<u32>(0u, global0.c.x, 1u, 8564u), -344f, global0.c.yx)).a.x)), arg_1.d.c, arg_1.d.d, abs(vec4<u32>(40265u, ~(~global0.c.x), countOneBits(_wgslsmith_clamp_u32(global0.a.x, 1u, global0.c.x)), 4294967295u)));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = func_6(16635i, Struct_5(func_5(func_4(func_2(Struct_1(vec2<u32>(global0.c.x, 4294967295u), global0.c.xzx)), global0.c, _wgslsmith_f_op_f32(max(1663f, global0.b)), _wgslsmith_div_vec2_u32(global0.a, vec2<u32>(global0.c.x, 1u))), Struct_4(~vec2<u32>(global0.c.x, global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -495f), ~vec4<u32>(global0.c.x, global0.a.x, 35416u, global0.c.x))), vec4<bool>(true, true, true, true), vec3<u32>(15793u, global0.c.x, _wgslsmith_add_u32(func_3(Struct_4(vec2<u32>(global0.a.x, global0.c.x), 506f, vec4<u32>(52558u, 14556u, global0.a.x, global0.c.x))).x, 31742u)), Struct_3(global0.c.x, -(u_input.a & 26055i), Struct_1(vec2<u32>(global0.c.x, global0.c.x), ~global0.c.wyy), vec4<i32>(u_input.a, u_input.a, ~u_input.a, abs(u_input.a)), global0.c), (vec4<i32>(u_input.a, -3627i, -52896i, arg_0) >> (vec4<u32>(global0.c.x, global0.a.x, 6270u, 32218u) % vec4<u32>(32u))) | vec4<i32>(max(u_input.a, u_input.a), min(25570i, arg_0), i32(-1i) * -1i, firstLeadingBit(-50504i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1461f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1700f * global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(848f))))), _wgslsmith_f_op_f32(-621f * -623f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-970f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(global0.b - 1000f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0.b - var_1.x), _wgslsmith_f_op_f32(global0.b + global0.b), global0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1188f, var_1.x, 264f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, var_1.x))), true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2205f, var_1.x, var_1.x))))), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true))))), !select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), all(vec2<bool>(true, false)))));
    let var_3 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(firstTrailingBit(var_0.e.ywx), vec3<u32>(var_0.c.a.x, 38952u, 49219u)) << (~abs(countOneBits(global0.c.zzy)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(1u, 37849u), 5448u, 50358u));
    global1 = array<Struct_2, 2>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-776f, -843f, 464f, -1377f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(353f, var_2.x, global0.b, var_1.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(298f, 454f, 1377f, -1192f) + vec4<f32>(var_2.x, 1000f, var_1.x, -1043f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1268f, var_2.x, var_2.x, global0.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -595f, -319f, -733f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 5249u;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(~(-(~vec2<i32>(u_input.a, 0i))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(25809i, 0i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, false)), vec2<i32>(1i, -2147483647i) ^ vec2<i32>(-15743i, u_input.a), firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), reverseBits(vec2<i32>(u_input.a, u_input.a)))), 1i);
    var var_2 = 36694u;
    let var_3 = all(vec4<bool>(false, !(-1510f <= global0.b), false, all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true))));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 412f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(225f, _wgslsmith_div_f32(var_4.x, -2132f), _wgslsmith_f_op_f32(-1022f - -348f), _wgslsmith_f_op_f32(-var_4.x)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(108f, global0.b, 112f, 1138f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(~2147483647i)))))), vec2<u32>(~global0.a.x, ~global0.c.x));
}

