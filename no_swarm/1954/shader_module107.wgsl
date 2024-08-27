struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(1u, 70147u, 44765u, 1u), vec4<u32>(69349u, 74695u, 923u, 4294967295u), vec4<u32>(1458u, 52086u, 1u, 4294967295u), vec4<u32>(4294967295u, 6271u, 68475u, 4294967295u), vec4<u32>(69957u, 4294967295u, 83534u, 1u), vec4<u32>(71259u, 64739u, 70194u, 6564u), vec4<u32>(3471u, 4294967295u, 4294967295u, 29224u), vec4<u32>(0u, 1u, 4294967295u, 39140u), vec4<u32>(0u, 8259u, 17817u, 1u), vec4<u32>(4294967295u, 0u, 44055u, 4294967295u), vec4<u32>(20959u, 11621u, 3409u, 0u), vec4<u32>(52122u, 42493u, 0u, 4294967295u), vec4<u32>(14758u, 34596u, 0u, 4294967295u), vec4<u32>(20960u, 38983u, 75778u, 8980u), vec4<u32>(1u, 1u, 38278u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(0u, 66802u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 42769u, 31035u), vec4<u32>(0u, 1u, 0u, 12229u), vec4<u32>(12876u, 13292u, 1u, 70697u), vec4<u32>(0u, 8597u, 4294967295u, 4294967295u), vec4<u32>(19737u, 0u, 68733u, 10415u), vec4<u32>(40580u, 5416u, 9821u, 0u), vec4<u32>(0u, 0u, 1u, 1u));

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(2315f, 1314f), vec2<f32>(1000f, 1451f), vec2<f32>(587f, -542f), vec2<f32>(-1220f, -757f), vec2<f32>(-1000f, 1428f), vec2<f32>(739f, -1511f), vec2<f32>(-1789f, -948f), vec2<f32>(-794f, -652f), vec2<f32>(503f, -779f), vec2<f32>(-356f, 1251f), vec2<f32>(-1583f, -675f), vec2<f32>(886f, -720f), vec2<f32>(-131f, -1000f), vec2<f32>(-1290f, 140f), vec2<f32>(1879f, -651f), vec2<f32>(509f, -553f), vec2<f32>(666f, 509f), vec2<f32>(1415f, -114f), vec2<f32>(-465f, -1555f), vec2<f32>(-1131f, 388f), vec2<f32>(1000f, 994f), vec2<f32>(-322f, 210f), vec2<f32>(572f, 1335f), vec2<f32>(1000f, -351f), vec2<f32>(-455f, 887f));

var<private> global2: vec2<u32> = vec2<u32>(30790u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = vec2<i32>(1i, _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, u_input.b.x, 1i, 2147483647i), vec4<i32>(arg_0.x, u_input.c, arg_3.d.x, u_input.c), vec4<i32>(2147483647i, arg_0.x, 7596i, arg_3.d.x)), select(vec4<i32>(-11364i, -2147483647i, arg_3.d.x, -1i), vec4<i32>(arg_0.x, arg_0.x, arg_3.d.x, 39662i), false)), 2147483647i) & arg_3.d.x);
    global1 = array<vec2<f32>, 25>();
    var var_1 = 24010i;
    var_1 = ~_wgslsmith_clamp_i32(arg_0.x ^ ((i32(-1i) * -1i) ^ u_input.b.x), ~(-2147483647i) ^ var_0.x, -(~(-2147483647i)));
    let var_2 = abs(reverseBits(reverseBits(~firstTrailingBit(u_input.a))));
    return arg_3.c.x;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_1(~4104u, ~u_input.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(634f, _wgslsmith_f_op_f32(-arg_0.x), -1000f, arg_0.x))))), select(vec2<i32>(select(u_input.c, 11600i, true), u_input.b.x), countOneBits(_wgslsmith_add_vec2_i32(u_input.b.yx, u_input.b.zy)), false) << (_wgslsmith_mod_vec2_u32(~select(u_input.a.yx, u_input.a.zx, vec2<bool>(true, true)), u_input.a.xy) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_3(-vec3<i32>(-1i, var_0.d.x, -14952i), -94491i != var_0.d.x, true, Struct_1(48805u, u_input.a, vec4<f32>(arg_0.x, 764f, var_0.c.x, arg_0.x), var_0.d))), _wgslsmith_f_op_f32(-511f - _wgslsmith_f_op_f32(-var_0.c.x))) + vec4<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1153f, -336f) + var_0.c.x), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * -645f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1396f, 719f, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-151f, -1000f, var_0.c.x, 1624f) - var_0.c)))))));
    var var_2 = Struct_1(43116u, u_input.a, var_0.c, ~vec2<i32>(~(~u_input.c), 40157i));
    let var_3 = select(!vec2<bool>(true && any(vec3<bool>(false, true, true)), true), vec2<bool>(true, !(~var_2.d.x == 38271i)), true);
    global1 = array<vec2<f32>, 25>();
    return var_0.c.x;
}

fn func_1() -> vec2<i32> {
    global2 = select(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), u_input.a.x), u_input.a.x), select(vec2<u32>(countOneBits(88139u), u_input.a.x | global2.x), u_input.a.zz, true)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.zz), _wgslsmith_clamp_u32(u_input.a.x, 20569u, u_input.a.x), _wgslsmith_clamp_u32(global2.x, global2.x, global2.x), global2.x), firstLeadingBit(vec4<u32>(5469u, global2.x, 1u, u_input.a.x))), global2.x), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_0 = vec2<bool>(false, true & !((u_input.c << (global2.x % 32u)) < u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, -1156f, -397f, 503f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-132f, 1000f, 170f, 646f) + vec4<f32>(863f, 1146f, -671f, 983f)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(floor(1306f)))), 705f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 25u)])), -813f), _wgslsmith_f_op_f32(f32(-1f) * -1269f))))));
    global2 = vec2<u32>(~firstTrailingBit(~global2.x), _wgslsmith_sub_u32(firstTrailingBit(38512u & global2.x), ~(~29152u))) << (vec2<u32>(7880u, global2.x << (abs(global2.x) % 32u)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_mult_vec4_i32(~(firstLeadingBit(select(vec4<i32>(-4603i, -31769i, 1802i, -1i), vec4<i32>(17275i, 1i, -2147483647i, -59608i), true)) & _wgslsmith_add_vec4_i32(~vec4<i32>(-4405i, 0i, -42562i, u_input.c), -vec4<i32>(-28354i, u_input.b.x, u_input.b.x, 1i))), max(countOneBits(-max(vec4<i32>(-4111i, u_input.c, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, 2147483647i, -1i, 0i))), ~reverseBits(abs(vec4<i32>(10656i, 27680i, u_input.b.x, 81703i)))));
    return vec2<i32>(var_2.x, -u_input.b.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global2 = vec2<u32>(1u, 4294967295u);
    global1 = array<vec2<f32>, 25>();
    let var_1 = 43560u;
    var var_2 = vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(firstTrailingBit(var_1), 24u)], _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(var_1, 24u)], global0[_wgslsmith_index_u32(var_0.a, 24u)])), abs(0u)) > global2.x, !(all(vec2<bool>(true, true)) || true), !(!any(vec4<bool>(true, true, false, true))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))));
    return Struct_1(_wgslsmith_div_u32(68099u, _wgslsmith_mod_u32(~14303u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, var_0.a, var_0.b.x, 1u), global0[_wgslsmith_index_u32(u_input.a.x, 24u)])) >> (select(3884u, _wgslsmith_clamp_u32(arg_0.a, arg_0.a, var_0.a), 0u == arg_0.a) % 32u)), _wgslsmith_add_vec3_u32(firstTrailingBit(var_0.b), ~vec3<u32>(~var_1, 0u, select(53574u, 17890u, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2120f), _wgslsmith_f_op_f32(func_3(select(vec3<i32>(arg_0.d.x, u_input.b.x, arg_0.d.x), vec3<i32>(var_0.d.x, 1i, arg_0.d.x), true), var_2.x & var_2.x, var_2.x, Struct_1(1u, vec3<u32>(global2.x, global2.x, u_input.a.x), vec4<f32>(-1315f, arg_0.c.x, 3148f, var_0.c.x), var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * var_0.c.x) + _wgslsmith_f_op_f32(-arg_0.c.x)), 457f)), _wgslsmith_mult_vec2_i32(firstLeadingBit(-u_input.b.yz), ~min(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 13583i), var_0.d), var_0.d)));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> StorageBuffer {
    global2 = u_input.a.yy;
    let var_0 = -1i;
    let var_1 = firstTrailingBit(4294967295u >> (~_wgslsmith_sub_u32(u_input.a.x >> (0u % 32u), global2.x) % 32u));
    let var_2 = ~max(u_input.a.zx, vec2<u32>(reverseBits(4294967295u), abs(var_1)));
    var var_3 = arg_1;
    return StorageBuffer(_wgslsmith_mod_u32(13070u, var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(963f)), arg_1.c.x, arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-665f)) - -1622f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, 818f, arg_1.c.x, -986f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, 465f, -2549f, var_3.c.x))), arg_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(i32(-1i) * -max(i32(-1i) * -15907i, 33608i), func_4(Struct_1(global2.x, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global2.x, global2.x), u_input.a), vec4<f32>(1f, -857f, -597f, _wgslsmith_f_op_f32(-997f + -835f)), reverseBits(func_1()))));
}

