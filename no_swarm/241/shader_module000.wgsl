struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_1;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: Struct_5 = Struct_5(vec2<u32>(0u, 6865u), vec2<f32>(-494f, 319f), vec4<u32>(1u, 0u, 4294967295u, 0u), vec3<i32>(-40115i, -7932i, 860i));

var<private> global4: array<Struct_3, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global4 = array<Struct_3, 29>();
    var var_0 = _wgslsmith_f_op_f32(global3.b.x * 903f);
    global4 = array<Struct_3, 29>();
    let var_1 = global3.d.x;
    var var_2 = vec3<bool>(global0.x, global0.x, !global0.x);
    return select(!(!(!select(vec4<bool>(global0.x, var_2.x, var_2.x, global0.x), vec4<bool>(var_2.x, global0.x, false, true), vec4<bool>(global0.x, false, true, var_2.x)))), select(vec4<bool>(var_2.x, true, firstTrailingBit(69613u) == ~global1.a.x, true), vec4<bool>(global0.x, true, _wgslsmith_f_op_f32(-global3.b.x) < global3.b.x, var_2.x), !global0.x), all(select(!select(vec3<bool>(var_2.x, global0.x, true), vec3<bool>(true, false, global0.x), global0.x), select(select(vec3<bool>(var_2.x, false, true), vec3<bool>(true, false, global0.x), false), vec3<bool>(true, true, true), 69504u != u_input.a.x), true)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec2<u32> {
    global1 = arg_1.d;
    let var_0 = -497f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1414f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_f32(min(global3.b.x, -748f)))) + -793f));
    let var_2 = !arg_1.a.a.d;
    global1 = Struct_1(countOneBits(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 7436u), vec4<u32>(1u, global1.a.x, u_input.a.x, global3.a.x)), ~(~vec4<u32>(42356u, arg_1.a.a.c.b.x, 4294967295u, arg_0.x)))), ~select(u_input.a, arg_1.d.b, func_3()));
    return global3.c.yw;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = vec2<u32>(firstLeadingBit(25302u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 37593u)), _wgslsmith_sub_vec2_u32(func_2(global1.a.zx, Struct_4(global4[_wgslsmith_index_u32(1u, 29u)], u_input.b, false, Struct_1(vec4<u32>(global1.b.x, global1.b.x, global3.c.x, 80511u), global3.c)), vec2<i32>(9147i, global3.d.x), vec3<f32>(global3.b.x, global3.b.x, global3.b.x)), ~global1.b.zz)), global3.c.x));
    let var_1 = Struct_4(Struct_3(Struct_2(arg_2.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, global3.b.x)), Struct_1(_wgslsmith_mult_vec4_u32(u_input.a, global1.a), u_input.a), vec3<bool>(arg_0, !arg_0, !arg_2.x), vec3<f32>(_wgslsmith_f_op_f32(429f + 116f), global3.b.x, 290f)), select(arg_2, !arg_2, arg_2.x), Struct_2(vec2<bool>(global0.x, !arg_2.x), global3.b, Struct_1(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, global1.a.x, global3.a.x, global3.c.x), vec4<u32>(global3.a.x, var_0.x, 47681u, global3.a.x))), !(!arg_2), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.b.x, global3.b.x, global3.b.x))))), u_input.b, true, Struct_1(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) | max(16246u, u_input.a.x), _wgslsmith_sub_u32(var_0.x, 1u) << (reverseBits(global3.a.x) % 32u), 0u, u_input.a.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(52991u, var_0.x, 1u, 4294967295u), ~reverseBits(u_input.a))));
    var var_2 = global1.a.x;
    var var_3 = var_1.a;
    var_3 = Struct_3(Struct_2(select(select(select(arg_2.xy, vec2<bool>(true, var_1.c), arg_0), var_1.a.a.a, false), !var_3.b.xz, true), global3.b, var_1.a.c.c, !arg_2, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_1.a.c.e, _wgslsmith_div_vec3_f32(vec3<f32>(241f, -349f, var_3.a.b.x), vec3<f32>(1066f, -1732f, 494f))))))), vec3<bool>(true, true, true), var_1.a.a);
    return Struct_1(reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(24296u, 13668u, 4294967295u, var_3.a.c.a.x), vec4<u32>(var_3.a.c.a.x, arg_1, var_0.x, 33716u))), vec4<u32>(firstTrailingBit(firstTrailingBit(~1u)), ~(~_wgslsmith_add_u32(0u, arg_1)), global1.a.x, var_3.c.c.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_4 {
    global0 = vec2<bool>(true, true);
    var var_0 = Struct_1(global1.a, vec4<u32>(firstLeadingBit(~_wgslsmith_div_u32(arg_0.b.x, arg_0.a.x)), 68191u, global3.a.x, func_1(false, ~6381u, func_3().xyz).a.x >> (firstLeadingBit(~8744u) % 32u)));
    var var_1 = 2959u;
    global3 = Struct_5(_wgslsmith_mod_vec2_u32(vec2<u32>(min(abs(1u), var_0.a.x), u_input.a.x & ~global1.a.x), select(~global3.a >> (global3.c.xw % vec2<u32>(32u)), vec2<u32>(~0u, arg_0.b.x), arg_2.zw)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(global3.b)), vec2<f32>(-806f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, arg_1) * _wgslsmith_f_op_f32(select(global3.b.x, -1153f, global0.x)))))), global3.c, _wgslsmith_div_vec3_i32(~u_input.b.xyz, vec3<i32>(arg_3.x, reverseBits(arg_3.x | u_input.c), global3.d.x)));
    var var_2 = func_1(false, u_input.a.x & _wgslsmith_mult_u32(42311u, ~(~12355u)), vec3<bool>(arg_2.x, !(!(true & arg_2.x)), arg_2.x));
    return Struct_4(Struct_3(Struct_2(vec2<bool>(true, !arg_2.x), vec2<f32>(global3.b.x, global3.b.x), arg_0, arg_2.yxx, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, global3.b.x, arg_1)))), func_3().xyw, Struct_2(!(!arg_2.xx), vec2<f32>(129f, -1630f), Struct_1(vec4<u32>(global3.c.x, global1.a.x, 1u, 1u) >> (var_2.a % vec4<u32>(32u)), arg_0.b), vec3<bool>(all(vec4<bool>(arg_2.x, global0.x, false, false)), true, any(arg_2)), vec3<f32>(_wgslsmith_f_op_f32(abs(-603f)), _wgslsmith_f_op_f32(-arg_1), global3.b.x))), vec4<i32>((-2147483647i << (_wgslsmith_clamp_u32(0u, global3.c.x, 30288u) % 32u)) >> (1u % 32u), _wgslsmith_sub_i32(u_input.c, i32(-1i) * -1832i) & (i32(-1i) * -2147483647i), 50714i, global3.d.x), arg_2.x, arg_0);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_5) -> Struct_2 {
    global4 = array<Struct_3, 29>();
    var var_0 = func_4(Struct_1(~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(global3.a.x, 0u, 19949u, 0u), u_input.a), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(80273u, 0u, 4294967295u, 6158u)), arg_1.d.a), vec4<u32>(func_1(global0.x, 4294967295u, !vec3<bool>(true, arg_1.c, false)).a.x, ~arg_0.x, arg_0.x, 47765u)), arg_1.a.c.b.x, !select(!(!vec4<bool>(arg_1.a.c.d.x, global0.x, arg_1.a.a.a.x, global0.x)), vec4<bool>(false, func_3().x, !global0.x, any(vec2<bool>(arg_1.a.b.x, false))), select(!vec4<bool>(true, global0.x, global0.x, arg_1.a.b.x), vec4<bool>(arg_1.c, global0.x, global0.x, true), true)), u_input.b).a;
    global1 = Struct_1(arg_1.d.a, global1.b);
    var var_1 = ~(~(~(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(5525u, arg_2.c.x)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(global3.a.x, arg_0.x), vec2<u32>(1u, 35557u)))));
    var var_2 = Struct_1(vec4<u32>(abs(1u), arg_0.x, global1.b.x | ~0u, ~arg_1.a.a.c.a.x), global1.b);
    return func_4(Struct_1(func_1(false, _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.c.x, 1u, 8853u, 0u), vec4<u32>(arg_1.d.b.x, 75956u, var_0.a.c.a.x, var_1.x)), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, true), global0.x)).b, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-390f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<bool>(!var_0.b.x, any(vec3<bool>(true, global0.x, true)), true & select(any(vec4<bool>(var_0.b.x, arg_1.a.a.a.x, var_0.b.x, arg_1.a.c.a.x)), true, arg_1.a.a.a.x && var_0.a.a.x), global0.x), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_1.b.x, -13115i, 39192i, 4537i), vec4<i32>(_wgslsmith_mod_i32(-4258i, global3.d.x), global3.d.x, -32166i, -1i)), u_input.b)).a.c;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global0 = arg_2.a;
    var var_0 = func_5(~global1.a.wxz, Struct_4(Struct_3(func_5(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, global3.a.x, 4294967295u), vec3<u32>(29010u, global1.b.x, 1u)), func_4(arg_2.c, arg_2.b.x, vec4<bool>(false, false, false, false), u_input.b), Struct_5(global3.c.yz, vec2<f32>(-655f, 281f), vec4<u32>(global1.a.x, 53192u, u_input.a.x, 0u), u_input.b.yxx)), !arg_2.d, arg_2), func_4(Struct_1(vec4<u32>(global1.b.x, 82409u, u_input.a.x, 2947u), u_input.a), _wgslsmith_f_op_f32(arg_2.b.x - arg_2.e.x), select(!vec4<bool>(arg_2.a.x, false, true, arg_1), vec4<bool>(false, true, false, arg_2.d.x), vec4<bool>(true, true, true, true)), -(~vec4<i32>(global3.d.x, -1i, global3.d.x, -39436i))).b, _wgslsmith_f_op_f32(round(1223f)) >= _wgslsmith_f_op_f32(-arg_2.e.x), Struct_1(arg_2.c.b, func_1(false || arg_1, 72262u << (0u % 32u), vec3<bool>(false, global0.x, true)).b)), Struct_5(~global1.a.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3.b.x + global3.b.x), _wgslsmith_f_op_f32(sign(-581f)))), ~vec4<u32>(_wgslsmith_add_u32(1u, global3.c.x), ~global1.a.x, ~4219u, min(arg_2.c.b.x, global3.a.x)), select(min(vec3<i32>(-56210i, 1i, -9752i), ~vec3<i32>(u_input.b.x, global3.d.x, -22381i)), vec3<i32>(global3.d.x << (37842u % 32u), max(1i, global3.d.x), _wgslsmith_div_i32(u_input.c, -2147483647i)), true)));
    global4 = array<Struct_3, 29>();
    var var_1 = global1.a.xxy & global1.b.xzw;
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~((var_1.x >> (var_1.x % 32u)) & _wgslsmith_add_u32(arg_2.c.b.x, 4294967295u)), func_2(global3.a, func_4(arg_2.c, _wgslsmith_f_op_f32(sign(-470f)), vec4<bool>(true, false, false, true), u_input.b), _wgslsmith_mult_vec2_i32(~vec2<i32>(global3.d.x, 2147483647i), vec2<i32>(-1i, -32986i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.e)))).x, arg_2.c.b.x), countOneBits(global3.c.xxx));
    return func_4(var_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)), -1000f, any(vec2<bool>(true, global0.x)))), !vec4<bool>(u_input.a.x <= abs(arg_2.c.b.x), func_4(Struct_1(vec4<u32>(10413u, global1.a.x, u_input.a.x, var_0.c.b.x), global1.a), _wgslsmith_f_op_f32(exp2(arg_2.e.x)), vec4<bool>(global0.x, arg_0, var_0.a.x, true), vec4<i32>(global3.d.x, 1i, global3.d.x, u_input.b.x)).a.c.d.x, true, func_5(vec3<u32>(80641u, arg_2.c.a.x, 3044u) | vec3<u32>(arg_2.c.b.x, 34307u, 1u), Struct_4(Struct_3(arg_2, arg_2.d, Struct_2(arg_2.a, arg_2.e.yy, Struct_1(arg_2.c.b, vec4<u32>(arg_2.c.a.x, arg_2.c.b.x, u_input.a.x, 12864u)), vec3<bool>(true, var_0.d.x, true), arg_2.e)), u_input.b, true, var_0.c), Struct_5(var_1.zy, global3.b, arg_2.c.a, vec3<i32>(global3.d.x, 28294i, u_input.c))).d.x), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global3.d.x, -1i, u_input.b.x), vec4<i32>(u_input.b.x, 0i, 26944i, u_input.b.x)), vec4<i32>(global3.d.x >> (0u % 32u), u_input.b.x, u_input.b.x, max(global3.d.x, u_input.c))), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(global3.d.x, global3.d.x, global3.d.x, u_input.c) | vec4<i32>(global3.d.x, global3.d.x, u_input.b.x, 9652i)), firstLeadingBit(vec4<i32>(u_input.c, global3.d.x, -1i, -35754i)), u_input.b))).a.c;
}

fn func_7(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_4(Struct_3(func_6(arg_0.a.x, true, arg_0), vec3<bool>(any(!arg_0.d), global0.x, global0.x), arg_0), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global3.d.x, global3.d.x, u_input.b.x, -21353i)), u_input.b, _wgslsmith_add_vec4_i32(~u_input.b, u_input.b ^ u_input.b)) >> (arg_0.c.b % vec4<u32>(32u)), false, arg_0.c);
    return vec2<bool>(!(!all(!var_0.a.c.d)), !global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(func_6(!all(!vec2<bool>(global0.x, global0.x)), -1i > u_input.b.x, func_5(_wgslsmith_clamp_vec3_u32(~global1.a.zyy, _wgslsmith_add_vec3_u32(u_input.a.yzy, vec3<u32>(u_input.a.x, global3.a.x, 0u)), max(global3.c.yyx, vec3<u32>(global1.b.x, 120084u, 4294967295u))), func_4(func_1(false, 4294967295u, vec3<bool>(false, global0.x, true)), _wgslsmith_f_op_f32(-401f + -709f), vec4<bool>(global0.x, true, false, true), select(u_input.b, u_input.b, global0.x)), Struct_5(~global3.c.xz, vec2<f32>(global3.b.x, 538f), global3.c, vec3<i32>(global3.d.x, u_input.b.x, global3.d.x) << (vec3<u32>(21220u, global3.c.x, global3.a.x) % vec3<u32>(32u))))));
    global3 = Struct_5(func_6(global0.x, select(!(global3.b.x < global3.b.x), true, global0.x), func_4(Struct_1(abs(vec4<u32>(global1.b.x, u_input.a.x, 1u, 78447u)), vec4<u32>(4294967295u, u_input.a.x, global3.a.x, 27996u) ^ vec4<u32>(1u, 54826u, 4294967295u, 4294967295u)), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.b.x, global3.b.x), _wgslsmith_div_f32(1021f, global3.b.x)), vec4<bool>(true, true, true, true), vec4<i32>(u_input.c ^ global3.d.x, ~u_input.b.x, global3.d.x >> (global1.b.x % 32u), 0i)).a.c).c.a.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global3.b.x, 1001f), global3.b))) + _wgslsmith_f_op_vec2_f32(-global3.b))), vec4<u32>(_wgslsmith_clamp_u32(func_4(Struct_1(vec4<u32>(32364u, 27289u, 25470u, u_input.a.x), global3.c), -525f, vec4<bool>(true, global0.x, true, true), u_input.b).a.c.c.a.x, global3.a.x, _wgslsmith_mod_u32(global1.b.x, u_input.a.x)), ~12973u, ~_wgslsmith_add_u32(u_input.a.x, global3.c.x), ~(~8776u)) ^ func_1(true, global3.a.x, select(vec3<bool>(true, true, global0.x), !vec3<bool>(global0.x, false, false), !vec3<bool>(global0.x, true, global0.x))).a, abs(global3.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-152f, _wgslsmith_f_op_f32(-func_4(func_5(vec3<u32>(global3.a.x, global3.a.x, 82205u), Struct_4(global4[_wgslsmith_index_u32(1234u, 29u)], u_input.b, true, Struct_1(vec4<u32>(global3.c.x, 85130u, 0u, 7385u), vec4<u32>(u_input.a.x, 0u, 4294967295u, 1u))), Struct_5(global3.a, global3.b, vec4<u32>(0u, 59473u, global1.a.x, global3.a.x), vec3<i32>(0i, u_input.b.x, global3.d.x))).c, _wgslsmith_f_op_f32(global3.b.x + global3.b.x), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(false, global0.x, false, false), vec4<bool>(false, false, global0.x, global0.x)), abs(u_input.b)).a.c.e.x)), global3.b.x, global1.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, global3.b.x, global3.b.x) - vec3<f32>(1898f, global3.b.x, 1289f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, -2079f, -1183f) - vec3<f32>(-1000f, -1309f, global3.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(416f, -990f, global3.b.x), vec3<f32>(719f, 895f, -1000f))))))));
}

