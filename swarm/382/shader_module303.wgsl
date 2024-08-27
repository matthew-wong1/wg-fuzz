struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(102121u), _wgslsmith_add_u32(4959u, global1.e.c.x), 12336u) >> (select(global0.yxw | vec3<u32>(1u, global0.x, 1u), _wgslsmith_mult_vec3_u32(u_input.a.xww, u_input.a.xxz), vec3<bool>(true, false, global1.d.a)) % vec3<u32>(32u)), countOneBits(u_input.a.zwy));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(415f, global1.b), _wgslsmith_f_op_f32(global1.b - -1448f), all(global1.e.d.xy))), -195f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(506f + global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b))))))));
    global1 = Struct_2(Struct_1(true, var_0.x, ~global1.e.c, select(global1.a.d, !vec3<bool>(true, global1.e.d.x, false), (global1.c | false) || true), ~global1.e.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 782f) * _wgslsmith_f_op_f32(f32(-1f) * -580f))))), true, Struct_1(any(vec2<bool>(global1.c, global1.e.d.x)) && false, 1u, _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, u_input.a.x), var_0.zy), global1.a.d, global1.d.b), Struct_1(any(global1.a.d), abs(global1.a.c.x), max(u_input.a.yy, ~vec2<u32>(1u, 0u)), select(select(global1.a.d, global1.d.d, any(global1.a.d.xz)), select(select(global1.a.d, vec3<bool>(global1.e.a, true, global1.e.a), true), select(global1.a.d, vec3<bool>(false, global1.e.d.x, true), global1.d.d), global1.e.a), !select(vec3<bool>(global1.a.d.x, global1.d.a, true), global1.e.d, vec3<bool>(true, global1.d.d.x, true))), abs(firstTrailingBit(var_0.x))));
    let var_2 = _wgslsmith_mult_u32(countOneBits(global0.x), global1.d.b);
    let var_3 = global1.b;
    return min(vec2<u32>(26296u, u_input.a.x), u_input.a.xy);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = global1.a;
    var var_1 = -_wgslsmith_add_vec3_i32(~vec3<i32>(-u_input.b, -1i, u_input.b), abs(vec3<i32>(27212i, -1i, 24653i)));
    global0 = u_input.a;
    let var_2 = ~(~_wgslsmith_mod_u32(global0.x, 621u));
    let var_3 = 4294967295u;
    return !select(!(!var_0.d), var_0.d, arg_0.d);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = Struct_3(_wgslsmith_div_vec2_u32(arg_3.a, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(69707u, var_0.a.x), reverseBits(54067u)), arg_3.a)), !vec3<bool>(false, true, arg_1));
    let var_1 = global1.b;
    global0 = u_input.a;
    let var_2 = firstTrailingBit(vec2<i32>(-39688i, ~firstLeadingBit(-u_input.b)));
    return Struct_1(global1.a.a, global0.x, arg_3.a, func_4(global1.e, vec2<f32>(_wgslsmith_div_f32(arg_2, -827f), _wgslsmith_f_op_f32(-549f + _wgslsmith_f_op_f32(step(arg_2, global1.b)))), Struct_2(Struct_1(global1.a.a, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global0.x, var_0.a.x, var_0.a.x, 1u)), abs(arg_0), select(global1.d.d, global1.d.d, global1.e.d.x), ~global0.x), arg_2, arg_3.b.x, global1.d, Struct_1(!var_0.b.x, _wgslsmith_sub_u32(arg_3.a.x, 0u), func_3(), select(arg_3.b, vec3<bool>(arg_1, true, false), arg_3.b), arg_0.x))), var_0.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-39351i, u_input.b, -1i)), vec3<i32>(select(u_input.b, u_input.b, true), -10913i, _wgslsmith_div_i32(u_input.b, u_input.b))), vec3<i32>(u_input.b, -2147483647i, _wgslsmith_sub_i32(~u_input.b, countOneBits(u_input.b)))), vec3<i32>(~u_input.b, u_input.b, -abs(33607i)));
    var var_1 = Struct_4(arg_0, Struct_1(!(_wgslsmith_clamp_i32(4315i, 35475i, var_0.x) < ~u_input.b), global1.e.b ^ 38291u, func_3(), vec3<bool>(any(vec3<bool>(false, true, true)), arg_0.d.x, true), ~4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.e, u_input.a.x ^ 0u, global1.d.c.x), max(vec3<u32>(global0.x, 0u, 1u) | u_input.a.xyx, vec3<u32>(arg_0.e, 0u, 1u))) ^ ~global0.zww, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.b, global1.b))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(532f, _wgslsmith_f_op_f32(round(global1.b)))));
    var var_3 = all(vec3<bool>(var_1.d.e.a, arg_2.b.x, false));
    var var_4 = ~u_input.a.x;
    return arg_2;
}

fn func_1(arg_0: Struct_5) -> vec3<i32> {
    var var_0 = Struct_1(select(true, global1.a.d.x, !(2600i != (arg_0.c >> (global0.x % 32u)))), 0u, abs(u_input.a.yw), !global1.d.d, 51103u);
    let var_1 = func_5(func_2(vec2<u32>(~_wgslsmith_mod_u32(1u, global1.a.c.x), _wgslsmith_sub_u32(~var_0.e, ~u_input.a.x)), !any(!var_0.d.zz), global1.b, Struct_3(~var_0.c | ~vec2<u32>(10147u, 125060u), vec3<bool>(arg_0.b, var_0.d.x, arg_0.b))), Struct_3(u_input.a.xw, select(global1.d.d, vec3<bool>(false, global1.e.a, var_0.d.x), select(false, any(vec3<bool>(arg_0.b, arg_0.b, var_0.a)), global1.a.a))), Struct_3(~vec2<u32>(65636u, u_input.a.x), var_0.d), global1.d);
    let var_2 = _wgslsmith_sub_u32(func_2(global1.e.c << (~vec2<u32>(var_1.a.x, 0u) % vec2<u32>(32u)), !(arg_0.c <= firstTrailingBit(u_input.b)), _wgslsmith_f_op_f32(-arg_0.a), Struct_3(firstTrailingBit(select(vec2<u32>(var_0.b, var_1.a.x), vec2<u32>(1u, 3869u), var_1.b.zz)), !vec3<bool>(true, global1.d.d.x, arg_0.b))).c.x, ~func_5(func_2(~u_input.a.zw, 0u < var_0.b, _wgslsmith_f_op_f32(arg_0.a - 1682f), var_1), func_5(Struct_1(true, var_0.b, vec2<u32>(u_input.a.x, 0u), var_0.d, 7336u), var_1, func_5(global1.e, var_1, var_1, Struct_1(true, 1u, global1.d.c, vec3<bool>(false, true, true), global1.a.c.x)), global1.d), var_1, global1.d).a.x);
    let var_3 = select(!vec2<bool>(false && var_0.a, global1.e.d.x), func_5(func_2(~abs(u_input.a.xy), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(635f * arg_0.a), _wgslsmith_f_op_f32(step(-509f, -1519f))), func_5(func_2(var_1.a, var_1.b.x, global1.b, Struct_3(vec2<u32>(0u, global0.x), vec3<bool>(true, var_0.d.x, var_1.b.x))), func_5(global1.d, Struct_3(vec2<u32>(0u, var_1.a.x), var_1.b), Struct_3(global0.xx, vec3<bool>(true, global1.c, arg_0.b)), global1.d), var_1, Struct_1(global1.e.d.x, global1.d.c.x, vec2<u32>(u_input.a.x, 62093u), vec3<bool>(var_1.b.x, false, global1.e.d.x), 4294967295u))), var_1, func_5(func_2(var_1.a, true, _wgslsmith_f_op_f32(-arg_0.a), Struct_3(vec2<u32>(global1.e.c.x, 4294967295u), global1.a.d)), func_5(Struct_1(global1.c, u_input.a.x, vec2<u32>(global0.x, 56876u), vec3<bool>(true, var_0.a, false), 4294967295u), var_1, Struct_3(global1.d.c, var_1.b), global1.e), var_1, func_2(_wgslsmith_sub_vec2_u32(global1.d.c, var_1.a), global1.d.a, _wgslsmith_f_op_f32(-arg_0.a), var_1)), global1.d).b.xx, true);
    var var_4 = vec4<bool>(!var_1.b.x, any(select(func_5(Struct_1(false, 1u, vec2<u32>(1u, global0.x), vec3<bool>(false, true, true), 45501u), func_5(global1.d, var_1, var_1, Struct_1(false, 1u, global1.a.c, vec3<bool>(global1.a.d.x, var_0.a, var_3.x), global1.d.b)), var_1, func_2(vec2<u32>(0u, global1.a.b), false, global1.b, Struct_3(global1.e.c, var_1.b))).b.zy, func_2(u_input.a.zw, any(vec4<bool>(true, var_1.b.x, var_1.b.x, var_3.x)), -2546f, func_5(Struct_1(var_0.a, global0.x, vec2<u32>(4294967295u, global1.a.b), vec3<bool>(false, var_1.b.x, true), var_2), Struct_3(vec2<u32>(29402u, var_0.b), global1.a.d), Struct_3(var_1.a, vec3<bool>(true, var_1.b.x, true)), global1.a)).d.xz, var_3)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(901f * arg_0.a)))) <= _wgslsmith_f_op_f32(f32(-1f) * -531f), any(!select(vec4<bool>(var_0.a, global1.e.d.x, var_0.a, false), vec4<bool>(arg_0.b, global1.d.d.x, false, false), vec4<bool>(true, true, false, true))) & false);
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b, -u_input.b), -countOneBits(min(vec3<i32>(u_input.b, u_input.b, -11920i), -vec3<i32>(32450i, u_input.b, 46437i))), -vec3<i32>(-36321i, -_wgslsmith_clamp_i32(u_input.b, arg_0.c, 38590i), _wgslsmith_add_i32(1i, -2147483647i) >> (var_1.a.x % 32u)));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = max(-(-36555i | _wgslsmith_div_i32(~arg_0.x, ~7882i)), _wgslsmith_mod_i32(0i, arg_0.x << (func_2(vec2<u32>(21554u, 44824u), true, _wgslsmith_f_op_f32(global1.b * 1849f), func_5(Struct_1(true, global1.d.e, global0.zy, vec3<bool>(global1.c, global1.a.d.x, global1.e.d.x), u_input.a.x), Struct_3(vec2<u32>(global0.x, u_input.a.x), vec3<bool>(global1.c, true, true)), Struct_3(vec2<u32>(4294967295u, global1.d.c.x), global1.e.d), Struct_1(global1.a.d.x, global1.a.b, global0.zw, global1.e.d, global1.d.c.x))).e % 32u)));
    let var_1 = min(~arg_0.x, arg_0.x);
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(abs(-1i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0.x, arg_0.x, 1i, var_1)), ~vec4<i32>(-23084i, arg_0.x, 2147483647i, var_1)), ~var_1, 2147483647i), reverseBits(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_1, 2147483647i, arg_0.x, var_1), vec4<i32>(u_input.b, u_input.b, arg_0.x, 77634i), global1.c), -vec4<i32>(-2147483647i, 2147483647i, -1i, arg_0.x), vec4<i32>(u_input.b, u_input.b, u_input.b, -10799i)))) ^ -vec4<i32>(-(~var_1), _wgslsmith_mod_i32(54901i, -28460i) >> (_wgslsmith_div_u32(10213u, global1.d.c.x) % 32u), 0i, select(abs(arg_0.x), ~2147483647i, arg_0.x == 79423i));
    let var_3 = Struct_5(300f, (!(!global1.d.d.x) | !func_2(u_input.a.xw, false, global1.b, Struct_3(vec2<u32>(0u, 53588u), vec3<bool>(global1.c, true, true))).a) | global1.c, _wgslsmith_add_i32(abs(_wgslsmith_div_i32(arg_0.x, 11719i)) << (abs(~6411u) % 32u), u_input.b));
    global1 = global2[_wgslsmith_index_u32(countOneBits(countOneBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), global0.zw))) & (~_wgslsmith_clamp_u32(4294967295u, 1u, 0u) ^ 66202u)), 8u)];
    return Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global0.x, ~0u, 0u), global1.a.e), vec2<u32>(~global1.e.b, 1u) >> (global1.e.c % vec2<u32>(32u)), abs(u_input.a.yx)), global1.e.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(firstLeadingBit(u_input.b), 7249i);
    var var_1 = func_6(func_1(Struct_5(-547f, any(!global1.e.d), 1i & (u_input.b << (78438u % 32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-1461f * global1.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-938f, global1.b) + vec2<f32>(137f, -1000f)) + vec2<f32>(343f, global1.b)) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-271f)), _wgslsmith_f_op_f32(-1000f - -643f)))));
    let var_2 = vec2<u32>(~(4294967295u ^ abs(global1.a.c.x)), ~func_6(~abs(vec3<i32>(29026i, -1i, -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-359f, 1106f), vec2<f32>(-114f, global1.b))))).a.x);
    var var_3 = -261f;
    var var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(-var_0.x, abs(u_input.b) & 1i, ~_wgslsmith_add_i32(min(-2147483647i, u_input.b), 6517i), -24751i), vec4<i32>(-2147483647i, -_wgslsmith_mod_i32(reverseBits(2147483647i), firstLeadingBit(46227i)), 23640i, var_0.x >> (countOneBits(_wgslsmith_div_u32(var_2.x, 69968u)) % 32u)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -340f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * -2177f)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.x);
}

