struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<u32>;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<i32>(-15854i, 58405i, 3860i, 2147483647i), vec4<bool>(true, false, true, false), vec4<f32>(1967f, -1000f, 1064f, -1268f), vec2<bool>(true, false)), Struct_1(vec4<i32>(1i, 50961i, 2147483647i, i32(-2147483648)), vec4<bool>(false, false, false, false), vec4<f32>(397f, 578f, -1246f, -1005f), vec2<bool>(true, false)), Struct_1(vec4<i32>(-29789i, -1i, 0i, -47092i), vec4<bool>(false, false, true, true), vec4<f32>(1425f, 255f, -1883f, -864f), vec2<bool>(false, true)), Struct_1(vec4<i32>(-50850i, -7926i, 1i, 53120i), vec4<bool>(true, false, true, true), vec4<f32>(684f, -1980f, -638f, -546f), vec2<bool>(false, false)), Struct_1(vec4<i32>(1i, 2147483647i, 25171i, -48396i), vec4<bool>(false, true, true, false), vec4<f32>(-810f, -209f, -227f, -1283f), vec2<bool>(true, true)), Struct_1(vec4<i32>(-5672i, 0i, -34491i, 0i), vec4<bool>(true, true, true, true), vec4<f32>(-1000f, 936f, -738f, -1000f), vec2<bool>(false, false)), Struct_1(vec4<i32>(-9507i, -23855i, -23654i, 0i), vec4<bool>(true, false, true, true), vec4<f32>(384f, 158f, -391f, -1637f), vec2<bool>(false, false)), Struct_1(vec4<i32>(-1i, -30498i, 2147483647i, 0i), vec4<bool>(true, false, false, true), vec4<f32>(830f, -1891f, 1029f, -805f), vec2<bool>(false, false)), Struct_1(vec4<i32>(44404i, 2147483647i, -68094i, i32(-2147483648)), vec4<bool>(false, false, false, true), vec4<f32>(-414f, -2842f, 636f, 618f), vec2<bool>(false, true)), Struct_1(vec4<i32>(-27993i, 28361i, -18186i, 1i), vec4<bool>(true, false, false, false), vec4<f32>(1460f, -755f, 765f, 2014f), vec2<bool>(true, false)), Struct_1(vec4<i32>(0i, 0i, 0i, -1i), vec4<bool>(true, false, false, true), vec4<f32>(454f, -233f, 806f, -1444f), vec2<bool>(false, false)), Struct_1(vec4<i32>(8369i, -82160i, -1i, 17581i), vec4<bool>(false, true, true, false), vec4<f32>(-1153f, -461f, -1000f, 2320f), vec2<bool>(true, true)), Struct_1(vec4<i32>(-15621i, 56643i, -20311i, 22114i), vec4<bool>(false, true, true, true), vec4<f32>(658f, -159f, -467f, -1000f), vec2<bool>(true, false)), Struct_1(vec4<i32>(-30102i, -9423i, -1i, 50183i), vec4<bool>(true, false, true, false), vec4<f32>(460f, 2138f, -1070f, -828f), vec2<bool>(true, false)), Struct_1(vec4<i32>(-24075i, 10180i, -10397i, 1i), vec4<bool>(true, true, false, false), vec4<f32>(1052f, -1799f, 1000f, -1158f), vec2<bool>(true, false)), Struct_1(vec4<i32>(11913i, 1i, 0i, 2147483647i), vec4<bool>(true, false, true, true), vec4<f32>(-2259f, 1304f, -1000f, -713f), vec2<bool>(false, true)), Struct_1(vec4<i32>(28733i, 2147483647i, 1i, 2147483647i), vec4<bool>(true, false, false, true), vec4<f32>(659f, -1389f, -912f, 1298f), vec2<bool>(true, false)), Struct_1(vec4<i32>(0i, 2147483647i, 839i, 2147483647i), vec4<bool>(true, false, false, true), vec4<f32>(224f, -1000f, -409f, 1000f), vec2<bool>(false, true)));

var<private> global4: array<f32, 2> = array<f32, 2>(1909f, -575f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, -373f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.c.yw)))), ((-vec2<i32>(arg_1.a.a.x, arg_1.a.a.x) & _wgslsmith_mult_vec2_i32(arg_1.a.a.xy, vec2<i32>(-2147483647i, -9139i))) & _wgslsmith_mod_vec2_i32(u_input.d.zz, abs(u_input.d.xx))) & ~arg_1.a.a.xw, true);
    global3 = array<Struct_1, 18>();
    let var_1 = Struct_2(var_0.a, min(vec2<i32>(-30699i, -9820i), _wgslsmith_clamp_vec2_i32(-select(vec2<i32>(32179i, arg_1.a.a.x), vec2<i32>(-41709i, u_input.d.x), true), min(arg_1.a.a.yw, arg_1.a.a.xy), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_1.a.a.x), _wgslsmith_mod_vec2_i32(u_input.d.yz, var_0.b)))), var_0.c | any(select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0.x), vec2<bool>(false, arg_0.x), true), true == var_0.c)));
    global0 = _wgslsmith_mod_vec4_u32(firstLeadingBit(select(~u_input.b | _wgslsmith_clamp_vec4_u32(vec4<u32>(71967u, 63487u, u_input.a.x, u_input.b.x), u_input.b, u_input.b), max(max(u_input.b, u_input.b), vec4<u32>(28770u, global1.x, global2.x, 18303u) | vec4<u32>(u_input.b.x, global0.x, global0.x, 0u)), true)), u_input.b);
    var var_2 = Struct_3(arg_0.x, min(u_input.b.x, ~0u), select(select(!select(arg_1.b.zy, vec2<bool>(false, true), true), !(!arg_1.b.zx), _wgslsmith_sub_i32(1i, 77569i) < _wgslsmith_mult_i32(var_0.b.x, 24759i)), select(select(select(arg_1.b.zx, vec2<bool>(arg_0.x, true), false), vec2<bool>(true, true), false), !arg_0.yx, arg_0.x), select(select(select(vec2<bool>(arg_1.a.b.x, var_0.c), vec2<bool>(false, arg_0.x), var_0.c), select(vec2<bool>(arg_1.b.x, var_1.c), arg_0.xz, arg_1.a.b.x), !vec2<bool>(arg_0.x, false)), select(!vec2<bool>(arg_1.a.b.x, false), !vec2<bool>(var_0.c, true), arg_0.xx), false)), -1i, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.x, 2u)]));
    return abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(64672u, global1.x, 26906u)), firstLeadingBit(vec3<u32>(global2.x, 106133u, 30623u))), ~global0.zyz));
}

fn func_4(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = firstTrailingBit(~(-11780i)) >> (~_wgslsmith_dot_vec2_u32(global0.xx & arg_0.wz, arg_0.xz) % 32u);
    let var_1 = vec3<bool>(true, (_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(global1.x, 2u)], 1234f), _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(66135u, 2u)], 782f)))) == -252f) && true, all(!vec3<bool>(select(true, false, false), true, all(vec3<bool>(true, true, false)))));
    var_0 = -2147483647i;
    global2 = ~(~vec2<u32>((0u >> (u_input.c % 32u)) & u_input.b.x, global0.x));
    let var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(abs(arg_0) & ~u_input.b, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global2.x, 0u, global2.x), vec4<u32>(global1.x, 4294967295u, 1u, arg_0.x), arg_0)), ~vec4<u32>(func_3(var_1, Struct_4(global3[_wgslsmith_index_u32(global2.x, 18u)], var_1, global4[_wgslsmith_index_u32(53285u, 2u)])), ~40261u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 18815u), arg_0.xx), func_3(var_1, Struct_4(global3[_wgslsmith_index_u32(u_input.c, 18u)], var_1, global4[_wgslsmith_index_u32(12861u, 2u)])))) | abs(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global2.x, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, arg_0.x, global0.x), u_input.b)), arg_0));
    return var_1.xz;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    global2 = vec2<u32>(global2.x, 4294967295u);
    let var_0 = func_4(vec4<u32>(func_3(vec3<bool>(false, any(vec3<bool>(true, false, true)), true), Struct_4(global3[_wgslsmith_index_u32(abs(global1.x), 18u)], vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -371f))), 0u, min(~countOneBits(u_input.c), 1u), ~global1.x));
    let var_1 = ~_wgslsmith_dot_vec3_u32(global0.ywy, vec3<u32>(1u, countOneBits(abs(31030u)), ~global2.x));
    var var_2 = Struct_4(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0, -30165i, u_input.d.x)), u_input.d), 0i, _wgslsmith_add_i32(firstTrailingBit(73334i), ~(-15851i)), -479i), vec4<bool>(all(vec2<bool>(var_0.x, false)), func_4(~vec4<u32>(u_input.b.x, var_1, global2.x, 67551u)).x, !(var_0.x && true), false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 2u)] + global4[_wgslsmith_index_u32(global2.x, 2u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_f_op_f32(-1000f - 219f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_1, 2u)] * global4[_wgslsmith_index_u32(global1.x, 2u)]), -737f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1876f, global4[_wgslsmith_index_u32(61422u, 2u)]))), !var_0), vec3<bool>(false == var_0.x, func_4(~u_input.b | max(vec4<u32>(var_1, global2.x, global0.x, global2.x), vec4<u32>(u_input.c, 1u, 4294967295u, 0u))).x, any(vec3<bool>(any(var_0), false, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~max(u_input.b.x, 8978u), 2u)]))));
    var_2 = Struct_4(Struct_1(vec4<i32>(17269i, ~23054i, select(-1i, -1i, any(vec3<bool>(true, var_0.x, false))), _wgslsmith_clamp_i32(~(-1i), -var_2.a.a.x, u_input.d.x)), !vec4<bool>(true, true, true | var_0.x, all(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-813f + 576f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.x, 2u)] + -1370f), _wgslsmith_f_op_f32(f32(-1f) * -413f), -444f)), select(var_2.a.b.yw, var_2.b.yx, true)), select(var_2.b, !select(select(var_2.b, var_2.b, vec3<bool>(false, var_0.x, false)), var_2.a.b.wwx, var_2.a.d.x & false), var_2.b), 663f);
    return !vec3<bool>(var_2.a.b.x, !all(vec3<bool>(var_2.a.b.x, true, true)), false & ((var_0.x & var_0.x) != true));
}

fn func_1() -> vec2<bool> {
    let var_0 = any(select(vec3<bool>(true, true, true), select(func_2(1i), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), func_2(u_input.d.x), vec3<bool>(true, false, false)), func_2(1i << (u_input.c % 32u)).x), vec3<bool>(true, select(true, func_2(1i).x, global2.x <= global2.x), false)));
    return select(vec2<bool>(false, var_0), !select(select(func_4(u_input.b), vec2<bool>(var_0, var_0), true), !select(vec2<bool>(var_0, false), vec2<bool>(true, var_0), var_0), !select(vec2<bool>(true, var_0), vec2<bool>(false, true), vec2<bool>(var_0, var_0))), func_2(u_input.d.x).xz);
}

fn func_5(arg_0: Struct_3) -> bool {
    global2 = vec2<u32>(global2.x, 9085u);
    global0 = abs(~(~vec4<u32>(47179u, global2.x, u_input.b.x, 587u))) & u_input.b;
    let var_0 = Struct_4(Struct_1(vec4<i32>(-1i) * -vec4<i32>(58072i, arg_0.d, -1i, u_input.d.x), vec4<bool>(15134u != arg_0.b, true, arg_0.c.x, true), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(arg_0.e * -1288f), _wgslsmith_f_op_f32(exp2(arg_0.e)), _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(global2.x, 2u)], 1141f))), vec4<f32>(-281f, _wgslsmith_f_op_f32(trunc(646f)), global4[_wgslsmith_index_u32(~global2.x, 2u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 2u)])))), func_2(u_input.d.x).xx), vec3<bool>(select(!any(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.c.x)), select(arg_0.c.x, true, false && arg_0.a), arg_0.a), all(vec3<bool>(arg_0.a, all(vec4<bool>(arg_0.c.x, true, true, arg_0.a)), arg_0.a)), !arg_0.a), _wgslsmith_f_op_f32(step(-618f, -810f)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(var_0.a.c.zw, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.e)))), 674f), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-56823i, 26386i, -2147483647i), vec3<i32>(u_input.d.x, var_0.a.a.x, 2147483647i)), -9308i) >= ~firstTrailingBit(u_input.d.x))), vec2<i32>(2147483647i, u_input.d.x), func_2(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(0i, -10692i, var_0.a.a.x), var_0.a.a.zxz, vec3<bool>(arg_0.a, var_0.b.x, false)), countOneBits(var_0.a.a.zwx >> (global0.zxx % vec3<u32>(32u))))).x);
    let var_2 = global3[_wgslsmith_index_u32(1u, 18u)];
    return all(select(vec4<bool>(false, any(var_0.b) & !var_1.c, arg_0.a, !func_4(vec4<u32>(23635u, arg_0.b, u_input.b.x, 12957u)).x), select(!vec4<bool>(arg_0.c.x, var_0.b.x, true, false), var_0.a.b, !vec4<bool>(true, var_1.c, var_0.a.b.x, true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 2>();
    let var_0 = true;
    let var_1 = Struct_3(func_5(Struct_3(!all(vec2<bool>(false, var_0)), ~1u, func_1(), -1i, -2017f)), 66095u, vec2<bool>(countOneBits(u_input.d.x & u_input.d.x) == 1i, func_4(abs(select(vec4<u32>(global1.x, global1.x, u_input.b.x, global2.x), u_input.b, vec4<bool>(false, false, var_0, var_0)))).x), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, global1.x), min(u_input.b, vec4<u32>(1u, 1u, global1.x, 1u))), 2u)], 724f) - _wgslsmith_f_op_f32(sign(-138f))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, 1643f) * vec2<f32>(-630f, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(565f, -1064f) - vec2<f32>(global4[_wgslsmith_index_u32(7927u, 2u)], var_1.e))) + vec2<f32>(var_1.e, _wgslsmith_f_op_f32(select(var_1.e, 855f, true))))), abs(u_input.d.xy), !any(select(vec4<bool>(true, false, true, var_0), select(vec4<bool>(var_0, false, true, false), vec4<bool>(var_1.a, var_0, var_0, true), true), false)));
    var var_3 = true;
    let var_4 = Struct_3(var_1.c.x, global0.x, select(!(!(!vec2<bool>(false, var_0))), var_1.c, func_4(vec4<u32>(~71777u, 0u, global2.x, 1u))), -10091i, _wgslsmith_div_f32(1860f, 1f));
    let var_5 = ~u_input.d.x & _wgslsmith_clamp_i32(var_1.d, var_2.b.x, ((var_2.b.x ^ u_input.d.x) >> (var_1.b % 32u)) ^ var_4.d);
    var var_6 = vec3<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.d, abs(u_input.d ^ vec3<i32>(var_4.d, 8688i, var_5)))), -var_4.d, abs(_wgslsmith_mod_i32(~var_1.d, var_4.d)) << (~(~1u) % 32u));
    global3 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(-var_6.x, i32(-1i) * -1i, firstTrailingBit(0i)), -(u_input.d >> (vec3<u32>(33173u, global2.x, var_1.b) % vec3<u32>(32u))), u_input.d | firstLeadingBit(u_input.d)) >> (vec3<u32>(global2.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_4.b, var_1.b)), firstTrailingBit(u_input.a)), select(0u, 5722u, func_5(var_4))) % vec3<u32>(32u)));
}

