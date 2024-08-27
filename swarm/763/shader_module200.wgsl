struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 16> = array<bool, 16>(false, false, false, false, true, true, true, true, true, true, true, false, true, true, false, true);

var<private> global2: array<i32, 4> = array<i32, 4>(0i, -69970i, -39343i, 1i);

var<private> global3: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(18345u, 12961u), vec2<u32>(0u, 81749u), vec2<u32>(7749u, 1u), vec2<u32>(20506u, 16487u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(40198u, 0u), vec2<u32>(3933u, 32639u), vec2<u32>(0u, 1u), vec2<u32>(53600u, 0u), vec2<u32>(0u, 1u), vec2<u32>(47633u, 0u), vec2<u32>(7444u, 1u), vec2<u32>(247u, 1152u), vec2<u32>(20068u, 67755u), vec2<u32>(1u, 2826u), vec2<u32>(0u, 1u), vec2<u32>(11570u, 1u), vec2<u32>(24933u, 58768u), vec2<u32>(120560u, 33734u), vec2<u32>(41801u, 1u), vec2<u32>(0u, 5314u), vec2<u32>(4294967295u, 1u), vec2<u32>(17405u, 19930u), vec2<u32>(7201u, 4294967295u), vec2<u32>(35043u, 1u), vec2<u32>(0u, 45876u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 28715u), vec2<u32>(40704u, 1u), vec2<u32>(24359u, 4294967295u), vec2<u32>(27146u, 76958u));

var<private> global4: Struct_2 = Struct_2(vec4<u32>(88624u, 57651u, 20737u, 1u), vec3<u32>(86u, 4294967295u, 17444u), Struct_1(vec4<i32>(-13485i, -23454i, i32(-2147483648), -106929i), 4294967295u, -256f, vec4<u32>(4294967295u, 28353u, 4294967295u, 4294967295u), vec4<f32>(723f, -208f, 1000f, 345f)), Struct_1(vec4<i32>(0i, 2147483647i, 20053i, 2147483647i), 35972u, -556f, vec4<u32>(4294967295u, 1u, 105651u, 68394u), vec4<f32>(536f, -1399f, -978f, -1081f)), vec4<bool>(false, false, false, false));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: i32) -> vec3<u32> {
    global2 = array<i32, 4>();
    global2 = array<i32, 4>();
    let var_0 = Struct_3(all(global4.e.zxy) | global4.e.x, !(!select(!global4.e.xwy, select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)], global4.e.x), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 16u)]), false), select(vec3<bool>(false, false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(global4.d.d.x, 16u)], global4.e.x), global4.e.xzw))), 17403i, Struct_2(~min(global4.c.d, vec4<u32>(1u, u_input.b.x, arg_0, 69574u)) >> (global4.a % vec4<u32>(32u)), firstLeadingBit(global4.c.d.wzy) & global4.c.d.zyz, global4.d, global4.c, !select(select(global4.e, global4.e, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 16u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], false, global4.e.x, true))));
    let var_1 = _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(arg_0 ^ firstLeadingBit(53509u), 4u)], countOneBits(-2i));
    let var_2 = var_0.c;
    return var_0.d.a.wzy;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = ~vec3<i32>(-1i, _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~arg_3.c.d.x, 4u)] ^ 13828i, -select(0i, 1i, global4.e.x)), 1i);
    let var_1 = !(!(all(vec3<bool>(true, true, true)) && !(!global4.e.x)));
    global0 = -39303i;
    var var_2 = global4.d;
    global2 = array<i32, 4>();
    return _wgslsmith_div_vec2_i32(~(vec2<i32>(abs(-25123i), -2147483647i) << (firstTrailingBit(select(vec2<u32>(u_input.b.x, 5966u), global3[_wgslsmith_index_u32(12260u, 32u)], arg_3.e.x)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.d.a.x, firstTrailingBit(-1i)), vec2<i32>(-39056i, -global4.c.a.x)), arg_2.d.d.a.x >> (63371u % 32u)));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(806f, global4.d.c))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.c, -1214f, false))))) - -106f), _wgslsmith_div_vec3_u32(~(global4.a.zxz ^ abs(vec3<u32>(28357u, 57063u, u_input.b.x))), vec3<u32>(5282u, ~(~0u), u_input.a)), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.c.e.x))) >= global4.c.c, !global4.e.xyz, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(20022i, 6819i), vec2<i32>(1i, arg_0.a.x))), Struct_2(abs(arg_0.d), ~func_3(4294967295u, vec2<i32>(1i, -1i), -1i), arg_0, arg_0, !vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.d.x, 16u)], global4.e.x, global4.e.x))), Struct_2(~global4.a, ~_wgslsmith_clamp_vec3_u32(arg_0.d.wwz, u_input.b << (vec3<u32>(global4.c.d.x, u_input.a, u_input.b.x) % vec3<u32>(32u)), arg_0.d.wzy), arg_0, Struct_1((arg_0.a << (arg_0.d % vec4<u32>(32u))) ^ -vec4<i32>(-5450i, global4.d.a.x, global4.c.a.x, -13522i), 8112u, global4.d.e.x, select(arg_0.d, firstTrailingBit(arg_0.d), true), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1604f, global4.d.e.x, global4.c.c, arg_0.c), global4.d.e))), !select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(12793u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], false, true, global1[_wgslsmith_index_u32(arg_0.d.x, 16u)]), global4.e), select(vec4<bool>(global4.e.x, false, global4.e.x, true), vec4<bool>(global4.e.x, global4.e.x, global4.e.x, true), global4.e.x), false | global1[_wgslsmith_index_u32(global4.d.b, 16u)])));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c)));
    let var_2 = abs(vec3<u32>(max(u_input.b.x << (select(24520u, 1u, false) % 32u), u_input.a | (43426u | u_input.b.x)), u_input.a, 4294967295u));
    let var_3 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(select(44776i, 54927i, true), -global4.d.a.x, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(84761u, 4u)], global4.c.a.x), ~13857i), vec4<i32>(52977i, arg_0.a.x, _wgslsmith_sub_i32(-77927i, global4.c.a.x), ~(-1i))) & (vec4<i32>(-1i) * -global4.d.a));
    let var_4 = arg_0.d.zw;
    return Struct_3(true, select(vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 16u)], global4.e.x)), true, global1[_wgslsmith_index_u32(var_2.x, 16u)]), select(select(select(global4.e.zyw, global4.e.yxx, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_2.x, 16u)]), vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(9236u, 16u)], true, global4.e.x)), all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(arg_0.b, 16u)], true))), true), arg_0.a.x, Struct_2(~(~(~vec4<u32>(36598u, 0u, 0u, global4.d.d.x))), vec3<u32>(_wgslsmith_mult_u32(arg_0.b, _wgslsmith_mod_u32(31184u, u_input.a)), _wgslsmith_mod_u32(global4.d.b, firstTrailingBit(1u)), var_2.x), global4.d, Struct_1(-vec4<i32>(-14238i, -7880i, global2[_wgslsmith_index_u32(17940u, 4u)], 2147483647i), _wgslsmith_add_u32(0u << (var_2.x % 32u), 4294967295u), _wgslsmith_f_op_f32(global4.c.c * 1100f), ~(~global4.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global4.d.e)))), vec4<bool>(true || !global1[_wgslsmith_index_u32(var_2.x, 16u)], false, abs(global4.d.a.x) <= u_input.c, all(global4.e.xzz))));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    global2 = array<i32, 4>();
    var var_0 = func_2(func_2(func_2(global4.d).d.c).d.c);
    let var_1 = 1u;
    global0 = 1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4.d.c, _wgslsmith_f_op_f32(-global4.c.c), arg_0.d.d.e.x), vec3<f32>(_wgslsmith_div_f32(arg_1, global4.d.e.x), _wgslsmith_f_op_f32(-900f * var_0.d.d.c), 853f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global4.d.e.xzy)))))));
    return Struct_1(-firstTrailingBit(vec4<i32>(global4.d.a.x, 47448i, min(var_0.d.c.a.x, global4.d.a.x), -655i)), ~5687u, _wgslsmith_f_op_f32(exp2(arg_1)), ~arg_0.d.a, vec4<f32>(arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x + 1387f))), _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-139f, arg_0.d.d.c)))), arg_0.d.c.e.x));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = global4.e.x;
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, func_3(_wgslsmith_div_u32(arg_0.d.d.x >> (4294967295u % 32u), u_input.a), vec2<i32>(global2[_wgslsmith_index_u32(arg_2.d.x, 4u)], 2147483647i), _wgslsmith_div_i32(global4.c.a.x, -20681i)).x), 16u)], vec3<bool>(func_2(global4.d).d.e.x, true, func_2(Struct_1(vec4<i32>(5332i, -2147483647i, arg_1.x, global4.d.a.x), select(88081u, 4294967295u, true), _wgslsmith_div_f32(arg_0.d.e.x, arg_0.c.c), firstTrailingBit(global4.c.d), arg_0.c.e)).b.x), arg_0.c.a.x, func_2(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(global4.a.x, 4u)], ~arg_0.c.a.x, 31905i, -6460i), ~max(81209u, arg_2.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(abs(arg_2.c))), vec4<u32>(reverseBits(global4.c.d.x), 4294967295u, u_input.a, u_input.a), arg_2.e)).d);
    global0 = var_1.c;
    return arg_0;
}

fn func_7(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global1 = array<bool, 16>();
    var var_0 = Struct_3(arg_2.e.x, select(vec3<bool>(!global4.e.x, _wgslsmith_div_f32(-1000f, global4.c.c) <= global4.d.c, arg_2.e.x), vec3<bool>(!(arg_2.d.c >= global4.d.e.x), func_6(Struct_2(global4.c.d, vec3<u32>(global4.a.x, 4294967295u, arg_0.x), Struct_1(global4.d.a, 4294967295u, arg_3.c, arg_2.a, global4.d.e), arg_3, vec4<bool>(global1[_wgslsmith_index_u32(16122u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 16u)])), vec3<i32>(global4.d.a.x, 2147483647i, -11402i), Struct_1(global4.c.a, 71827u, -1735f, global4.d.d, vec4<f32>(arg_2.c.e.x, 653f, 1000f, arg_3.e.x))).e.x, func_2(func_5(Struct_3(arg_2.e.x, vec3<bool>(false, arg_2.e.x, true), global2[_wgslsmith_index_u32(40533u, 4u)], arg_2), arg_2.c.e.x)).b.x), func_2(global4.c).b), ~func_6(func_6(func_6(arg_2, vec3<i32>(1i, -35202i, arg_2.d.a.x), Struct_1(arg_3.a, 2757u, global4.d.e.x, arg_3.d, vec4<f32>(arg_2.d.e.x, arg_2.d.e.x, -1413f, 1238f))), _wgslsmith_add_vec3_i32(arg_2.c.a.wxx, global4.d.a.zxw), global4.d), arg_3.a.xxx, arg_3).d.a.x, Struct_2(arg_3.d, global4.a.yxy, global4.d, Struct_1(_wgslsmith_add_vec4_i32(~arg_3.a, vec4<i32>(u_input.c, 32831i, 20380i, global2[_wgslsmith_index_u32(arg_0.x, 4u)]) | global4.d.a), 56623u, _wgslsmith_f_op_f32(round(arg_2.d.c)), reverseBits(global4.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(122f, arg_2.c.c, global4.c.e.x, global4.c.e.x)) + _wgslsmith_div_vec4_f32(arg_3.e, arg_3.e))), arg_2.e));
    var var_1 = select(vec4<u32>(abs(1u), 1u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~arg_2.c.d, vec4<u32>(arg_3.d.x, 68282u, arg_0.x, 0u)), 60428u), 0u), vec4<u32>(44808u, 24917u, ~_wgslsmith_add_u32(~1u, arg_0.x), global4.a.x), true && !any(func_6(Struct_2(var_0.d.d.d, arg_2.d.d.zxz, Struct_1(arg_2.c.a, 4294967295u, 355f, vec4<u32>(4382u, 1u, var_0.d.c.d.x, 10883u), vec4<f32>(global4.d.e.x, arg_2.c.c, 519f, arg_2.d.c)), Struct_1(vec4<i32>(1i, u_input.d, 2147483647i, global2[_wgslsmith_index_u32(0u, 4u)]), u_input.a, arg_3.c, vec4<u32>(19917u, 0u, 10468u, var_0.d.b.x), var_0.d.d.e), vec4<bool>(true, var_0.b.x, false, global4.e.x)), global4.c.a.wyw, Struct_1(global4.c.a, global4.c.b, -190f, vec4<u32>(arg_0.x, 0u, global4.c.d.x, arg_0.x), vec4<f32>(var_0.d.c.e.x, 327f, arg_2.c.e.x, -889f))).e.yz));
    var var_2 = abs((arg_2.b ^ vec3<u32>(26943u, ~0u, _wgslsmith_add_u32(arg_1, global4.a.x))) >> (vec3<u32>(var_0.d.d.b, ~(~global4.a.x), ~arg_3.b << (select(global4.a.x, 1u, true) % 32u)) % vec3<u32>(32u)));
    global3 = array<vec2<u32>, 32>();
    return Struct_2(~reverseBits(select(arg_3.d, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1, 10105u, arg_1), vec4<u32>(23160u, arg_1, 1u, 46078u)), 13215u <= arg_1)), func_6(func_2(func_6(Struct_2(global4.a, u_input.b, global4.c, global4.c, var_0.d.e), global4.d.a.yzz, arg_2.c).d).d, _wgslsmith_mult_vec3_i32(arg_2.c.a.yyz, global4.d.a.wyw << (vec3<u32>(65447u, 1u, arg_1) % vec3<u32>(32u))), global4.c).a.yxx, arg_3, func_6(Struct_2(vec4<u32>(1u, ~4294967295u, _wgslsmith_div_u32(4294967295u, u_input.b.x), ~var_2.x), vec3<u32>(~var_1.x, var_0.d.b.x, ~var_1.x), func_5(Struct_3(global4.e.x, vec3<bool>(true, var_0.b.x, var_0.b.x), arg_3.a.x, Struct_2(global4.d.d, vec3<u32>(0u, var_1.x, arg_2.b.x), var_0.d.d, arg_3, vec4<bool>(var_0.d.e.x, var_0.b.x, true, var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -703f)), arg_2.c, global4.e), ~_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, arg_2.c.a.x, 1i), var_0.d.d.a.zyw), func_2(arg_3).d.d).d, func_6(func_2(func_5(Struct_3(var_0.a, global4.e.zzx, -1i, Struct_2(vec4<u32>(4294967295u, 0u, arg_0.x, 2748u), vec3<u32>(global4.a.x, 4294967295u, arg_3.b), Struct_1(var_0.d.c.a, global4.d.d.x, -566f, vec4<u32>(arg_2.c.b, global4.a.x, arg_1, var_0.d.b.x), vec4<f32>(arg_2.c.c, 578f, global4.d.c, arg_3.c)), arg_3, vec4<bool>(var_0.d.e.x, global4.e.x, arg_2.e.x, var_0.d.e.x))), _wgslsmith_f_op_f32(select(arg_3.e.x, 2586f, global4.e.x)))).d, func_6(Struct_2(~global4.c.d, firstLeadingBit(vec3<u32>(arg_3.d.x, 4294967295u, 1u)), func_6(var_0.d, var_0.d.d.a.xww, var_0.d.c).c, arg_3, global4.e), -countOneBits(var_0.d.d.a.www), func_6(Struct_2(vec4<u32>(var_1.x, var_2.x, 4294967295u, 16019u), vec3<u32>(arg_1, 26982u, 0u), Struct_1(arg_2.c.a, 32823u, 447f, global4.d.d, vec4<f32>(-473f, arg_2.c.e.x, var_0.d.c.e.x, global4.c.c)), arg_3, var_0.d.e), _wgslsmith_add_vec3_i32(vec3<i32>(-5060i, arg_3.a.x, -39552i), vec3<i32>(arg_3.a.x, -26050i, var_0.d.d.a.x)), Struct_1(vec4<i32>(arg_2.d.a.x, -1i, -11104i, var_0.c), 13334u, arg_3.c, vec4<u32>(var_0.d.c.b, u_input.b.x, global4.a.x, 0u), global4.c.e)).c).d.a.xzx, arg_2.d).e);
}

fn func_1() -> Struct_2 {
    var var_0 = reverseBits(_wgslsmith_mod_vec2_u32(u_input.b.xz, select(vec2<u32>(_wgslsmith_mult_u32(5735u, global4.b.x), u_input.b.x ^ global4.c.b), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1980u, u_input.b.x)), ~global3[_wgslsmith_index_u32(global4.d.b, 32u)]), global1[_wgslsmith_index_u32(~countOneBits(global4.c.d.x), 16u)])));
    var var_1 = vec3<i32>(global4.d.a.x, u_input.e, u_input.d >> (u_input.a % 32u));
    global2 = array<i32, 4>();
    global0 = (u_input.e ^ 1i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -8820i) | _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.xy, global4.c.a.xx), global4.c.a.xz), ~var_1.zx);
    global4 = func_7(vec2<u32>(~firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, global4.c.d.x)), ~var_0.x), (~global4.c.d.x | 4294967295u) ^ _wgslsmith_dot_vec3_u32(u_input.b, global4.a.wyy), func_6(Struct_2(~(~vec4<u32>(0u, global4.a.x, global4.c.d.x, global4.d.b)), vec3<u32>(3661u, _wgslsmith_mult_u32(u_input.b.x, 1u), global4.a.x), global4.c, Struct_1(global4.c.a, ~51462u, _wgslsmith_f_op_f32(2937f * global4.d.e.x), _wgslsmith_div_vec4_u32(global4.a, vec4<u32>(u_input.b.x, 1u, 1u, 18488u)), vec4<f32>(global4.d.c, global4.c.c, 1068f, 722f)), global4.e), ~vec3<i32>(-u_input.c, global4.c.a.x, -var_1.x), func_5(func_2(global4.c), global4.d.c)), global4.d);
    return func_2(global4.c).d;
}

fn func_8(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    let var_0 = vec3<i32>(-arg_0.c.a.x, -66834i, arg_0.c.a.x);
    global1 = array<bool, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1605f, 520f, 255f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c.c, arg_0.d.c, -1941f), arg_0.c.e.yyx))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global4.c.c * arg_0.c.e.x), -1000f, func_7(vec2<u32>(global4.a.x, 1u), 0u, arg_0, Struct_1(global4.c.a, arg_0.d.b, -1000f, arg_0.d.d, global4.d.e)).c.e.x) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.d.e.xyz * arg_0.c.e.wxw)))))));
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~u_input.b.x), _wgslsmith_div_u32(min(1u, u_input.b.x) >> (~20026u % 32u), _wgslsmith_mod_u32(1u, 1u))), _wgslsmith_sub_vec2_u32(func_7(firstLeadingBit(u_input.b.xz >> (u_input.b.zz % vec2<u32>(32u))), 1u, arg_0, func_6(func_2(Struct_1(global4.d.a, global4.b.x, -1021f, arg_0.a, global4.d.e)).d, vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], arg_0.d.a.x), Struct_1(vec4<i32>(-1i, -2147483647i, var_0.x, -26404i), 68484u, -2199f, arg_0.c.d, global4.c.e)).d).b.yz, vec2<u32>(_wgslsmith_mod_u32(global4.c.d.x, ~4294967295u), ~func_5(Struct_3(false, arg_0.e.zwx, arg_0.d.a.x, arg_0), global4.c.e.x).d.x)));
    var var_3 = vec4<f32>(arg_0.c.c, 275f, var_1.x, -734f);
    return ~((var_0.x | var_0.x) >> (0u % 32u));
}

fn func_9(arg_0: vec3<i32>) -> Struct_1 {
    global2 = array<i32, 4>();
    let var_0 = func_1();
    var var_1 = vec3<bool>(!func_1().e.x, (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global4.b.x, u_input.b.x), vec3<u32>(global4.c.b, global4.c.b, var_0.d.d.x)) < var_0.a.x) && var_0.e.x, !all(func_6(Struct_2(vec4<u32>(var_0.d.b, var_0.d.d.x, 10025u, 4350u), var_0.c.d.yyy, Struct_1(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, global2[_wgslsmith_index_u32(67405u, 4u)]), var_0.d.b, 257f, var_0.c.d, vec4<f32>(-162f, 543f, var_0.c.e.x, -1668f)), global4.d, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global4.b.x, 16u)], global1[_wgslsmith_index_u32(33366u, 16u)], true)), global4.c.a.xyw, global4.c).e.xxz) && (!var_0.e.x & (-824f > _wgslsmith_f_op_f32(round(global4.c.c)))));
    var var_2 = 30314u;
    let var_3 = var_0.e.x;
    return Struct_1(-global4.c.a, _wgslsmith_div_u32(~max(23324u, _wgslsmith_mod_u32(93545u, global4.d.b)), ~(~var_0.b.x)), -1052f, vec4<u32>(0u << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(61549u, 21984u, 3759u, 19353u)), var_0.d.d) % 32u), u_input.b.x, firstTrailingBit(var_0.d.d.x), 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504f * var_0.c.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-660f, var_0.d.c)), 1291f, 1018f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(~vec3<i32>(~(-14489i), func_8(func_1(), u_input.d, !vec4<bool>(true, global1[_wgslsmith_index_u32(global4.d.d.x, 16u)], true, true), any(vec2<bool>(global4.e.x, false))), (1i & u_input.d) | global4.c.a.x));
    global1 = array<bool, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global4.d.e.ywz)), _wgslsmith_f_op_vec3_f32(global4.c.e.ywx * _wgslsmith_div_vec3_f32(global4.c.e.yzx, _wgslsmith_f_op_vec3_f32(abs(var_0.e.xww)))))));
    global3 = array<vec2<u32>, 32>();
    global4 = func_6(func_2(global4.d).d, ~global4.c.a.zxx, func_7(global4.a.yy, ~14935u, func_1(), global4.d).d);
    var var_2 = select(0u, _wgslsmith_add_u32(~global4.c.d.x, 117175u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-5107i, var_0.a.x), global4.d.a.yy) != -1i);
    let x = u_input.a;
    s_output = StorageBuffer(func_6(Struct_2(max(~global4.d.d, func_5(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 16u)], global4.e.ywx, -1i, Struct_2(vec4<u32>(var_0.d.x, global4.b.x, global4.b.x, var_0.d.x), global4.d.d.yxy, Struct_1(vec4<i32>(-30577i, 2147483647i, global2[_wgslsmith_index_u32(global4.c.d.x, 4u)], 1i), var_0.d.x, -1086f, var_0.d, vec4<f32>(698f, var_0.e.x, -1468f, var_1.x)), Struct_1(vec4<i32>(global4.c.a.x, global4.c.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.c), 1u, var_0.c, global4.a, global4.d.e), global4.e)), var_0.c).d), vec3<u32>(4294967295u, var_0.d.x, global4.a.x) & var_0.d.zwz, func_6(func_1(), firstTrailingBit(vec3<i32>(23664i, 24294i, -7054i)), func_9(global4.c.a.wzy)).d, Struct_1(select(global4.c.a, global4.d.a, vec4<bool>(global4.e.x, global4.e.x, false, global1[_wgslsmith_index_u32(u_input.a, 16u)])), var_0.b, -1000f, ~vec4<u32>(var_0.d.x, global4.a.x, var_0.b, 15228u), _wgslsmith_f_op_vec4_f32(-global4.d.e)), func_2(Struct_1(vec4<i32>(-5739i, global4.d.a.x, global4.c.a.x, 12694i), 0u, var_0.c, global4.a, var_0.e)).d.e), global4.d.a.xxy, Struct_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global4.d.a.x, -69176i, -1i), vec4<i32>(13964i, -54108i, u_input.e, global2[_wgslsmith_index_u32(336u, 4u)])), 1u, _wgslsmith_f_op_f32(floor(var_0.c)), var_0.d, global4.d.e)).c.e.wy);
}

