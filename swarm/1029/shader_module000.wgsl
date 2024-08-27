struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<f32>(2442f, 283f), true, vec4<f32>(-517f, -1116f, -1000f, 1071f), 1049f), Struct_1(vec2<f32>(2293f, -1000f), false, vec4<f32>(1000f, 1416f, -1478f, 544f), 1000f), Struct_1(vec2<f32>(-340f, 653f), false, vec4<f32>(-265f, 1001f, 393f, -1061f), 553f), Struct_1(vec2<f32>(-219f, 1884f), false, vec4<f32>(-112f, 378f, 712f, -1499f), -234f), Struct_1(vec2<f32>(110f, 1990f), true, vec4<f32>(894f, 186f, -282f, 597f), 790f), Struct_1(vec2<f32>(-1508f, -304f), true, vec4<f32>(-1145f, -479f, -776f, -332f), 1230f), Struct_1(vec2<f32>(1085f, 444f), true, vec4<f32>(536f, -1207f, -425f, -154f), -734f), Struct_1(vec2<f32>(-1925f, -509f), false, vec4<f32>(138f, -318f, 367f, -504f), -531f), Struct_1(vec2<f32>(-1090f, 599f), false, vec4<f32>(1000f, -650f, -600f, 1921f), -793f));

var<private> global2: array<bool, 28>;

var<private> global3: array<u32, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> vec3<i32> {
    var var_0 = select(!vec3<bool>((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27250u, 25u)], 25u)] != 0u) || (global2[_wgslsmith_index_u32(23381u, 28u)] || arg_2.b.c.b), !(!global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7841u, 25u)], 28u)]), arg_2.e.a >= -32086i), !(!select(select(vec3<bool>(arg_0, arg_1.d.b, false), vec3<bool>(global2[_wgslsmith_index_u32(48305u, 28u)], arg_1.d.b, global0.c.b), vec3<bool>(arg_2.e.d.b, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 28u)], true)), !vec3<bool>(global0.d.b, arg_0, true), vec3<bool>(global2[_wgslsmith_index_u32(arg_2.a.x, 28u)], false, arg_2.b.c.b))), !(!(!(!vec3<bool>(true, false, arg_0)))));
    let var_1 = arg_2;
    global2 = array<bool, 28>();
    global3 = array<u32, 25>();
    global1 = array<Struct_1, 9>();
    return abs(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.b.b.x | -2147483647i, 1i, var_1.e.a), vec3<i32>(abs(arg_2.e.a), 1i, firstLeadingBit(16428i))), ~vec3<i32>(-arg_1.a, -global0.b.x, max(0i, 1i))));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(global0.a, ~(~_wgslsmith_clamp_vec3_i32(global0.b, func_3(true, Struct_2(-10817i, vec3<i32>(-24748i, 19762i, global0.a), Struct_1(vec2<f32>(1258f, 125f), false, vec4<f32>(global0.d.d, global0.d.a.x, -629f, global0.c.a.x), global0.d.d), Struct_1(vec2<f32>(449f, -681f), global0.c.b, global0.c.c, global0.c.d)), Struct_3(vec3<u32>(u_input.a, 4294967295u, 31589u), Struct_2(global0.b.x, global0.b, Struct_1(vec2<f32>(global0.c.d, global0.d.c.x), true, vec4<f32>(-1371f, -1724f, global0.c.a.x, -100f), -127f), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 9u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], vec2<u32>(u_input.a, 1u), Struct_2(global0.a, vec3<i32>(-3925i, global0.b.x, -8573i), global0.c, Struct_1(global0.d.c.wx, global2[_wgslsmith_index_u32(u_input.a, 28u)], vec4<f32>(global0.c.a.x, global0.c.c.x, global0.c.a.x, 2659f), global0.c.d))), global0.c.d), ~vec3<i32>(67242i, -2147483647i, global0.a))), global1[_wgslsmith_index_u32(20201u, 9u)], global0.d);
    var var_1 = global0.d;
    let var_2 = Struct_3(vec3<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 61988u)), u_input.a, 1u), Struct_2(-(~(~global0.b.x)), -vec3<i32>(1i, 1i, _wgslsmith_sub_i32(5983i, -25625i)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)), all(select(vec2<bool>(var_0.c.b, false), vec2<bool>(var_1.b, var_1.b), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 28u)])), _wgslsmith_f_op_vec4_f32(round(var_1.c)), _wgslsmith_f_op_f32(global0.d.a.x - var_1.d)), var_0.c), ~_wgslsmith_clamp_u32(max(1u, min(26484u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 25u)], 25u)])), 1006u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 4294967295u)), 25u)]), _wgslsmith_mod_vec2_u32(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(1u, 25u)], 70146u), ~vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(u_input.a, 25u)]), abs(vec2<u32>(u_input.a, 0u))), abs(vec2<u32>(u_input.a, 4294967295u))), ~(~vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(1u, 25u)])) << (~(~vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 25u)])) % vec2<u32>(32u))), Struct_2(min(var_0.a, var_0.b.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b.x, 2147483647i), vec3<i32>(0i, 1i, 0i)), global0.a, var_0.a), global0.c, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.c.yy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1524f, 466f))), !select(var_0.d.b, true, true), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)))));
    return var_2.d;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_vec2_u32(firstTrailingBit(firstTrailingBit(reverseBits(~vec2<u32>(u_input.a, 4294967295u)))), ~(~func_2()));
    global1 = array<Struct_1, 9>();
    global2 = array<bool, 28>();
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(6728u, global3[_wgslsmith_index_u32(u_input.a, 25u)]) ^ (_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.a, 27939u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(u_input.a, 25u)]), vec2<u32>(var_0.x, arg_3)), ~vec2<u32>(var_0.x, arg_3)) | func_2()), _wgslsmith_mult_vec2_u32(max(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(59027u, global3[_wgslsmith_index_u32(arg_3, 25u)]), vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(var_0.x, 25u)]), vec2<u32>(arg_3, 1u))), _wgslsmith_add_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 25u)], var_0.x), ~vec2<u32>(1u, u_input.a))), vec2<u32>(~select(var_0.x, 9789u, false), _wgslsmith_add_u32(arg_3, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]))));
    global2 = array<bool, 28>();
    return vec2<i32>(-1i) * -firstLeadingBit(global0.b.xy);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_2.c.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1286f + -398f), 1326f))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(global0.d.d)), arg_2.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f * 604f)), _wgslsmith_f_op_f32(ceil(507f)), global2[_wgslsmith_index_u32(~func_2().x, 28u)]))));
    var var_2 = select(vec2<bool>(any(select(vec4<bool>(true, arg_2.c.b, arg_3.b, global0.d.b), vec4<bool>(true, arg_2.d.b, false, arg_2.c.b), vec4<bool>(false, true, arg_3.b, global2[_wgslsmith_index_u32(1u, 28u)]))) | true, arg_3.b), !vec2<bool>(global0.d.b, all(!vec2<bool>(true, arg_2.d.b))), global0.d.b);
    var var_3 = Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(9606u), _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)], u_input.a), vec3<u32>(11290u, 1u, 9003u)), global3[_wgslsmith_index_u32(u_input.a, 25u)] ^ u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], u_input.a), vec3<u32>(u_input.a, u_input.a, 5979u)) << (vec3<u32>(global3[_wgslsmith_index_u32(1u, 25u)], 4294967295u, global3[_wgslsmith_index_u32(6707u, 25u)]) % vec3<u32>(32u)), vec3<u32>(21188u, _wgslsmith_mod_u32(19858u, u_input.a), countOneBits(16996u))) << (vec3<u32>(~firstLeadingBit(0u), 0u, _wgslsmith_mult_u32(min(global3[_wgslsmith_index_u32(67094u, 25u)], 50337u), 60130u)) % vec3<u32>(32u)), arg_2, _wgslsmith_div_u32(abs(4294967295u), 100406u), firstLeadingBit(~(~countOneBits(vec2<u32>(u_input.a, u_input.a)))), Struct_2(-9384i, global0.b, Struct_1(arg_2.d.c.wz, global0.b.x >= -8598i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.c.c, global0.d.c))), 489f), Struct_1(vec2<f32>(-1717f, _wgslsmith_f_op_f32(sign(105f))), any(vec2<bool>(false, arg_3.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-959f, 2555f, arg_3.a.x, 169f) * vec4<f32>(var_1.x, 624f, arg_3.d, arg_3.a.x))), arg_2.c.c.x)));
    var_2 = vec2<bool>(arg_3.b, _wgslsmith_add_u32(var_3.c, ~_wgslsmith_add_u32(1392u, 1u)) != global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(65213u, ~4294967295u), 25u)], 25u)]);
    return ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(var_3.a, var_3.a, vec3<u32>(_wgslsmith_mod_u32(49495u, global3[_wgslsmith_index_u32(u_input.a, 25u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(90900u, 25u)], var_3.d.x, global3[_wgslsmith_index_u32(var_3.a.x, 25u)], 56393u), vec4<u32>(4294967295u, var_3.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35856u, 25u)], 25u)], global3[_wgslsmith_index_u32(0u, 25u)])), func_2().x)), vec3<u32>(max(abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(14775u, u_input.a), vec2<u32>(var_3.d.x, 4614u))), ~_wgslsmith_dot_vec3_u32(var_3.a, var_3.a), 78299u));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> StorageBuffer {
    let var_0 = arg_2.b.xy;
    return StorageBuffer(_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(u_input.a, u_input.a, arg_1.d.x, 1u))), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.x, 1u, 6227u, u_input.a)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(29790u, 10480u, 14928u, u_input.a), vec4<u32>(arg_1.a.x, global3[_wgslsmith_index_u32(arg_1.c, 25u)], 1u, arg_0.x), false), vec4<u32>(1735u, arg_1.a.x, 32084u, global3[_wgslsmith_index_u32(u_input.a, 25u)])))), arg_1.e.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(func_1(any(vec3<bool>(false, false, global0.d.b)) & (global2[_wgslsmith_index_u32(95795u, 28u)] | false), _wgslsmith_div_vec4_f32(vec4<f32>(364f, 386f, global0.d.a.x, 711f), vec4<f32>(global0.d.d, global0.d.d, -733f, global0.d.d)), -vec2<i32>(global0.b.x, -4569i) ^ (global0.b.yz & global0.b.yx), (1u | global3[_wgslsmith_index_u32(1u, 25u)]) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(2646u, u_input.a), vec2<u32>(global3[_wgslsmith_index_u32(0u, 25u)], 10585u))), (vec3<i32>(1i, 10738i, -2147483647i) >> (vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 25u)], 24502u, global3[_wgslsmith_index_u32(0u, 25u)]) % vec3<u32>(32u))) >> (~vec3<u32>(global3[_wgslsmith_index_u32(1u, 25u)], 19298u, global3[_wgslsmith_index_u32(48074u, 25u)]) % vec3<u32>(32u)), Struct_2(global0.a, global0.b, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.d.c.x, -1000f))), all(vec3<bool>(false, global0.c.b, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.d, global0.d.a.x, 253f, global0.c.d) - vec4<f32>(global0.c.c.x, -229f, global0.c.c.x, global0.c.a.x)), _wgslsmith_f_op_f32(floor(-1200f))), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~u_input.a, 25u)], 9u)]), global1[_wgslsmith_index_u32(1u, 9u)]), Struct_3(~select(vec3<u32>(4294967295u, u_input.a, 45139u) >> (vec3<u32>(u_input.a, 109977u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(72292u, global3[_wgslsmith_index_u32(u_input.a, 25u)], 75854u), global2[_wgslsmith_index_u32(32247u, 28u)]), Struct_2(_wgslsmith_sub_i32(reverseBits(global0.b.x), global0.a), global0.b, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(103570u, global3[_wgslsmith_index_u32(0u, 25u)])), 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]), max(~61515u, firstLeadingBit(_wgslsmith_add_u32(49451u, 67846u))), vec2<u32>(func_4(vec2<i32>(-6796i, global0.a) << (vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(18736u, 25u)]) % vec2<u32>(32u)), ~global0.b, Struct_2(global0.a, vec3<i32>(29857i, -43856i, global0.a), global1[_wgslsmith_index_u32(15198u, 9u)], Struct_1(global0.d.c.yw, false, vec4<f32>(-208f, -711f, global0.c.a.x, 1000f), 549f)), global0.c).x, 0u), Struct_2(global0.b.x, _wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, global0.b.x, global0.b.x), vec3<i32>(61154i, 0i, 53715i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.a.x, 1000f) + vec2<f32>(-597f, global0.d.c.x)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.d, global0.c.c.x, 455f, 170f)), global0.c.c.x), Struct_1(global0.d.a, false && global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 25u)], 28u)], _wgslsmith_f_op_vec4_f32(global0.d.c * global0.c.c), _wgslsmith_div_f32(global0.d.c.x, global0.c.c.x)))), Struct_2(select(abs(global0.a), firstTrailingBit(-40920i) & -global0.a, !any(vec4<bool>(false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 25u)], 28u)], true, false))), firstLeadingBit(countOneBits(vec3<i32>(1i, global0.b.x, global0.a))) << (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u)), Struct_1(global0.c.a, false, global0.c.c, _wgslsmith_f_op_f32(global0.c.d + _wgslsmith_f_op_f32(-global0.d.c.x))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(-1166f, -637f)), _wgslsmith_f_op_f32(step(global0.c.d, global0.d.a.x))), global3[_wgslsmith_index_u32(max(1u, 19115u), 25u)] >= func_4(vec2<i32>(13513i, global0.a), vec3<i32>(global0.b.x, global0.b.x, 42053i), Struct_2(global0.a, global0.b, Struct_1(global0.c.c.zx, false, global0.c.c, global0.d.d), global1[_wgslsmith_index_u32(4294967295u, 9u)]), Struct_1(global0.d.a, true, global0.d.c, global0.c.d)).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, global0.d.a.x, -1045f, 1296f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.d.d, -1000f, global0.c.c.x, 670f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.c.x))))), !(!(~4294967295u <= u_input.a)));
}

