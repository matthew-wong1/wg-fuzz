struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(0u, vec3<f32>(-358f, -324f, 150f)));

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1u, vec3<f32>(180f, -813f, 1584f)), Struct_1(1653u, vec3<f32>(1933f, 1400f, -1126f)), Struct_1(39462u, vec3<f32>(-1263f, -285f, 413f)), Struct_1(641u, vec3<f32>(423f, 1513f, -1315f)), Struct_1(1u, vec3<f32>(609f, -1179f, 882f)), Struct_1(4294967295u, vec3<f32>(-1914f, -1302f, -727f)), Struct_1(0u, vec3<f32>(1470f, -911f, 1547f)), Struct_1(0u, vec3<f32>(-1107f, -645f, -2354f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32) -> u32 {
    global3 = array<Struct_1, 8>();
    var var_0 = vec2<bool>(all(arg_1), true);
    var var_1 = 1u;
    var var_2 = select(arg_1.xz, vec2<bool>(global2.x, arg_0.x >= ~40890u), true);
    global2 = arg_1;
    return ~(~(~(global1.a << (arg_0.x % 32u))));
}

fn func_2() -> u32 {
    var var_0 = ~(-min(_wgslsmith_div_vec2_i32(vec2<i32>(-30597i, u_input.a), vec2<i32>(u_input.a, u_input.a)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.a, 147559u), vec2<u32>(22932u, global0.a.a)) % vec2<u32>(32u)), ~firstLeadingBit(vec2<i32>(14628i, -23537i))));
    let var_1 = global0.a.a;
    let var_2 = ~_wgslsmith_div_u32(14655u, abs(_wgslsmith_sub_u32(global0.a.a, 1u) | (54513u ^ global0.a.a)));
    global2 = select(vec3<bool>(any(vec2<bool>(!global2.x, false)), any(select(vec3<bool>(true, global2.x, global2.x), !vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, true, true))), !((global2.x & global2.x) & true)), !select(vec3<bool>(!global2.x, true, any(global2.xy)), select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, true, global2.x))), !(!vec3<bool>(global2.x, global2.x, global2.x))), true);
    var var_3 = Struct_3(_wgslsmith_div_f32(global1.b.x, -1000f), global0.a.b, Struct_1(_wgslsmith_mult_u32(func_3(vec4<u32>(var_2, global0.a.a, 1u, 4294967295u), !vec3<bool>(global2.x, global2.x, false), 512f), ~(86236u & global1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-650f, _wgslsmith_div_f32(285f, 1110f), _wgslsmith_f_op_f32(-global1.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1168f, global0.a.b.x, -180f))))));
    return _wgslsmith_add_u32(64052u, var_3.c.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global2.x;
    let var_1 = arg_2.b.x;
    var_0 = any(global2.yz) == global2.x;
    let var_2 = arg_2.b.yy;
    var_0 = !(!(!any(vec4<bool>(true, false, global2.x, global2.x)))) || all(global2.yz);
    return arg_2.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> u32 {
    global1 = func_4(vec3<u32>(func_2() | global0.a.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(42385u, 52075u, 49944u), vec3<u32>(47349u, arg_0.x, global0.a.a)), ~(vec3<u32>(1u, 17647u, 4294967295u) & vec3<u32>(arg_0.x, global0.a.a, arg_0.x))), ~0u), firstLeadingBit(1u), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, -24991i), reverseBits(u_input.a), -1i), select(arg_2.xyx >> (vec3<u32>(0u, 6781u, 22323u) % vec3<u32>(32u)), arg_2.xxy, all(arg_1.xy))), -countOneBits(-vec3<i32>(u_input.a, 0i, 1i)), Struct_1(~global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.b))), Struct_1(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global0.a.a, arg_0.x), vec2<u32>(global1.a, arg_0.x), global2.xz), arg_0 | vec2<u32>(90597u, 22916u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b.x, 1000f, global0.a.b.x) * vec3<f32>(global1.b.x, global0.a.b.x, 498f)))))));
    var var_0 = true != all(select(arg_1, vec4<bool>(false, any(vec2<bool>(true, global2.x)), arg_1.x, !arg_1.x), arg_1));
    let var_1 = Struct_5(select(~min(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) >> (vec4<u32>(global0.a.a, 41976u, 37868u, 34385u) % vec4<u32>(32u)), vec4<u32>(35000u, global0.a.a, arg_0.x, global1.a)), select(firstTrailingBit(~vec4<u32>(17222u, arg_0.x, 60919u, 31734u)), ~select(vec4<u32>(12345u, arg_0.x, 0u, global1.a), vec4<u32>(global1.a, global0.a.a, global1.a, global1.a), global2.x), !vec4<bool>(false, false, arg_1.x, true)), arg_1));
    let var_2 = vec2<bool>(false, all(!select(vec2<bool>(true, global2.x), !vec2<bool>(global2.x, false), select(vec2<bool>(global2.x, global2.x), arg_1.yy, vec2<bool>(arg_1.x, global2.x)))));
    return ~25647u;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = global1.a & 0u;
    var var_1 = true;
    var var_2 = Struct_2((-_wgslsmith_sub_vec3_i32(vec3<i32>(33910i, u_input.a, -10535i), vec3<i32>(u_input.a, -57472i, -2147483647i)) << ((_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, global1.a, 86380u), vec3<u32>(4162u, 51272u, arg_0.x)) << (abs(vec3<u32>(arg_0.x, global1.a, global1.a)) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ -_wgslsmith_sub_vec3_i32(select(vec3<i32>(-36701i, 8952i, 0i), vec3<i32>(32007i, 30210i, u_input.a), global2.x), reverseBits(vec3<i32>(0i, u_input.a, 15692i))), abs(vec3<i32>(~0i, i32(-1i) * -36091i, u_input.a)), global0.a, Struct_1(_wgslsmith_mult_u32(countOneBits(func_1(vec2<u32>(9381u, 71193u), vec4<bool>(global2.x, global2.x, true, true), vec4<i32>(u_input.a, -2147483647i, -1i, -9343i))), global1.a), arg_1.b));
    var var_3 = (_wgslsmith_mult_i32(abs(var_2.b.x), 47106i) ^ 0i) & _wgslsmith_sub_i32(abs(reverseBits(0i)), -_wgslsmith_mult_i32(1i, min(-2147483647i, var_2.b.x)));
    let var_4 = min(reverseBits(vec3<u32>(_wgslsmith_sub_u32(var_2.c.a, var_2.d.a), global1.a, 4294967295u)), _wgslsmith_clamp_vec3_u32(min(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 60349u, var_2.d.a), ~vec3<u32>(8479u, 0u, 48816u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, arg_0.x), vec3<u32>(1u, global1.a, 77740u), vec3<u32>(global1.a, 2165u, 24959u))), _wgslsmith_mult_vec3_u32(min(vec3<u32>(var_2.c.a, 4294967295u, arg_1.c.a), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.c.a, global0.a.a, 0u), vec3<u32>(global0.a.a, arg_1.c.a, global0.a.a))), ~select(vec3<u32>(4294967295u, 37291u, global1.a), vec3<u32>(global0.a.a, 4294967295u, 0u), vec3<bool>(global2.x, global2.x, true))), ~(vec3<u32>(64793u, var_2.c.a, 4294967295u) << (vec3<u32>(0u, 68261u, global1.a) % vec3<u32>(32u))) >> (vec3<u32>(reverseBits(2875u), func_2(), global0.a.a) % vec3<u32>(32u))));
    return Struct_4(func_4(min(var_4, ~(~vec3<u32>(4294967295u, global0.a.a, 0u))), _wgslsmith_mod_u32(min(1u, 1u), max(529u, 4294967295u)), Struct_2(-select(var_2.a, vec3<i32>(8775i, u_input.a, u_input.a), global2.x), vec3<i32>(u_input.a, i32(-1i) * -5466i, var_2.b.x), global3[_wgslsmith_index_u32(global0.a.a, 8u)], global3[_wgslsmith_index_u32(arg_0.x, 8u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(vec2<u32>(27673u, func_1(~vec2<u32>(global0.a.a, global0.a.a), select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(true, false, true, global2.x)), max(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)))), vec2<u32>(46298u, 1u), true), Struct_3(global0.a.b.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(round(global1.b.x))), Struct_1(global1.a, vec3<f32>(_wgslsmith_f_op_f32(step(global1.b.x, global0.a.b.x)), global0.a.b.x, global1.b.x))));
    var var_1 = firstLeadingBit(reverseBits(~vec3<u32>(func_3(vec4<u32>(88850u, global0.a.a, global0.a.a, 4294967295u), vec3<bool>(false, global2.x, true), var_0.a.b.x), ~var_0.a.a, global0.a.a)));
    var_1 = ~max(select(~vec3<u32>(var_1.x, var_0.a.a, global0.a.a), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 42728u, global1.a), vec3<u32>(global0.a.a, 36031u, 12726u)), vec3<bool>(true, global2.x, global2.x)), (vec3<u32>(77062u, 47869u, 2048u) << (vec3<u32>(global1.a, global0.a.a, 1u) % vec3<u32>(32u))) << (~vec3<u32>(1u, 4294967295u, global1.a) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(func_5(var_1.xx, Struct_3(global1.b.x, vec3<f32>(-462f, 698f, var_0.a.b.x), Struct_1(4294967295u, vec3<f32>(676f, var_0.a.b.x, global0.a.b.x)))).a.a, global0.a.a, firstTrailingBit(global0.a.a)), vec3<u32>(4294967295u, reverseBits(global0.a.a) ^ global0.a.a, 1u)) % vec3<u32>(32u));
    var var_2 = select(!select(global2.yy, !(!vec2<bool>(global2.x, global2.x)), vec2<bool>(any(vec4<bool>(false, true, true, true)), true)), global2.zy, global2.x);
    global0 = Struct_4(Struct_1(51029u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1250f, 737f, var_0.a.b.x)), global1.b, var_2.x)))));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(697f - global0.a.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<i32>(2147483647i, 0i, 1i, -2147483647i)) << (vec4<u32>(abs(0u), min(1952u, global1.a), ~1u, ~global1.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, u_input.a, u_input.a, 1i)), vec4<i32>(3108i, u_input.a, u_input.a, u_input.a)) ^ vec4<i32>(770i, -u_input.a, firstLeadingBit(u_input.a), 1i)));
}

