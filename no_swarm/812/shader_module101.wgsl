struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(12407u, 25858u)), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(1u, 1u)), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(558u, 1u)), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(51163u, 0u)), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(61925u, 1u)), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(18756u, 1u)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 45445u)), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(0u, 1668u)), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(117973u, 8952u)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(33278u, 0u)), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(15535u, 30964u)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(13123u, 94858u)), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 9155u)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(0u, 1u)), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(18946u, 11085u)), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 9593u)), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(0u, 0u)), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(20357u, 59823u)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(15630u, 18749u)), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(56666u, 1u)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(12172u, 1u)), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 61918u)), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 4294967295u)));

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<u32>(1u, 28082u, 1u), vec4<u32>(4294967295u, 11377u, 50632u, 365u)), Struct_2(vec3<u32>(34975u, 63794u, 670u), vec4<u32>(4294967295u, 27956u, 9451u, 1u)), Struct_2(vec3<u32>(1u, 1u, 0u), vec4<u32>(29890u, 15473u, 16811u, 55545u)), Struct_2(vec3<u32>(4469u, 4294967295u, 4294967295u), vec4<u32>(16093u, 0u, 64731u, 8031u)), Struct_2(vec3<u32>(27067u, 69490u, 45232u), vec4<u32>(56844u, 15954u, 0u, 1u)), Struct_2(vec3<u32>(46846u, 68286u, 14038u), vec4<u32>(30079u, 0u, 90627u, 83765u)), Struct_2(vec3<u32>(22782u, 4294967295u, 36444u), vec4<u32>(1u, 4727u, 0u, 0u)), Struct_2(vec3<u32>(16811u, 1u, 4294967295u), vec4<u32>(1u, 1u, 0u, 35739u)), Struct_2(vec3<u32>(0u, 1u, 39766u), vec4<u32>(1u, 19092u, 31970u, 56084u)), Struct_2(vec3<u32>(16055u, 4294967295u, 122624u), vec4<u32>(4294967295u, 88393u, 20273u, 1u)), Struct_2(vec3<u32>(0u, 0u, 1u), vec4<u32>(1u, 10034u, 4294967295u, 28571u)), Struct_2(vec3<u32>(0u, 0u, 2388u), vec4<u32>(0u, 1u, 45258u, 18882u)), Struct_2(vec3<u32>(9097u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), Struct_2(vec3<u32>(64780u, 0u, 4294967295u), vec4<u32>(20562u, 0u, 6970u, 3099u)), Struct_2(vec3<u32>(4294967295u, 0u, 0u), vec4<u32>(14065u, 0u, 10008u, 42709u)), Struct_2(vec3<u32>(4294967295u, 0u, 12422u), vec4<u32>(4294967295u, 1u, 11812u, 25372u)), Struct_2(vec3<u32>(31550u, 51868u, 13863u), vec4<u32>(16542u, 68901u, 1u, 4294967295u)), Struct_2(vec3<u32>(33595u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, 0u, 33399u)), Struct_2(vec3<u32>(64940u, 4294967295u, 1u), vec4<u32>(4294967295u, 40927u, 47784u, 1u)));

var<private> global2: vec2<bool>;

var<private> global3: array<f32, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 19u)]);
    global2 = vec2<bool>(!global2.x, false);
    var var_1 = var_0.a.a.x ^ 90120u;
    let var_2 = countOneBits(_wgslsmith_sub_vec2_i32(u_input.c, ~countOneBits(vec2<i32>(-2147483647i, 29704i)))) & countOneBits(abs(u_input.b));
    global3 = array<f32, 1>();
    return var_0.a.b;
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 24>();
    let var_0 = countOneBits(~(~vec4<u32>(34293u, u_input.a.x, 25644u, 43408u)) & func_2(~vec4<u32>(u_input.a.x, u_input.a.x, 26842u, u_input.a.x) ^ abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u))));
    global1 = array<Struct_2, 19>();
    let var_1 = u_input.b.x;
    let var_2 = var_0.x;
    return _wgslsmith_f_op_f32(abs(734f));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: bool) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(~(~80659u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 18428u, u_input.a.x), max(vec3<u32>(arg_1, 49220u, 160u), vec3<u32>(u_input.a.x, u_input.a.x, 0u))), arg_1), vec3<u32>(u_input.a.x << (abs(arg_1) % 32u), ~_wgslsmith_add_u32(arg_1, u_input.a.x), reverseBits(u_input.a.x))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, 0u, 1u, arg_1) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 19047u, 4294967295u), vec4<u32>(1u, 0u, 7095u, arg_1)) % vec4<u32>(32u))), vec4<u32>(4294967295u, arg_1, max(_wgslsmith_div_u32(30865u, arg_1), 0u), u_input.a.x), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_1, 1198u, u_input.a.x, u_input.a.x)), vec4<u32>(arg_1, arg_1, 28467u, u_input.a.x)) ^ vec4<u32>(27540u >> (1u % 32u), ~arg_1, max(arg_1, 70933u), ~18834u)));
    global1 = array<Struct_2, 19>();
    let var_1 = !vec2<bool>(true && all(!vec2<bool>(global2.x, arg_2)), arg_2);
    global1 = array<Struct_2, 19>();
    global2 = !vec2<bool>(all(select(select(vec4<bool>(true, true, true, arg_3), vec4<bool>(var_1.x, global2.x, false, false), vec4<bool>(var_1.x, true, global2.x, true)), vec4<bool>(true, arg_0, true, arg_2), !vec4<bool>(true, false, arg_3, true))), any(!(!vec4<bool>(false, true, arg_3, var_1.x))));
    return !select(select(!(!var_1), select(!var_1, !var_1, !var_1), !vec2<bool>(false, arg_0)), var_1, !(global2.x && arg_0));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    global1 = array<Struct_2, 19>();
    var var_0 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 1u), u_input.a.x | 66033u, _wgslsmith_mult_u32(u_input.a.x, 11347u)), reverseBits(vec3<u32>(0u, u_input.a.x, u_input.a.x))), ~1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), abs(min(~u_input.a.x, min(63705u, u_input.a.x))));
    global0 = array<Struct_1, 24>();
    let var_1 = -abs(1i) <= countOneBits(_wgslsmith_add_i32(arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(23325i, arg_2, 2147483647i, arg_2), vec4<i32>(arg_2, -32499i, arg_2, u_input.b.x))) << (var_0.x % 32u));
    global2 = select(arg_3, vec2<bool>(false | (global2.x && !var_1), true), func_3(func_3(var_1, firstLeadingBit(4294967295u >> (var_0.x % 32u)), -503f <= _wgslsmith_f_op_f32(abs(arg_0.x)), any(!vec3<bool>(false, false, global2.x))).x, u_input.a.x, !any(vec3<bool>(var_1, arg_3.x, true)), false));
    return global1[_wgslsmith_index_u32(~25489u, 19u)];
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~vec2<u32>(u_input.a.x, 14186u);
    var var_1 = Struct_3(Struct_2(func_2(firstTrailingBit(max(vec4<u32>(36383u, var_0.x, 2869u, arg_3.a.a.x), arg_2.b))).yxw, arg_3.a.b));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2155f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(556f, -152f, _wgslsmith_f_op_f32(ceil(1662f)), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(13530u, 1u)])))));
    var var_4 = Struct_2(vec3<u32>(40663u, 15702u, abs(6498u << (var_0.x % 32u))), arg_2.b);
    return global1[_wgslsmith_index_u32(var_0.x, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(u_input.a.x, 18929u, u_input.a.x)), vec3<u32>(79371u, u_input.a.x, u_input.a.x) | min(vec3<u32>(62324u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(72152u, 22455u), vec2<u32>(20747u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 66484u), ~vec3<u32>(2529u, 76319u, u_input.a.x)), firstTrailingBit(u_input.a.x >> (1u % 32u)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(~20886u, 2923u, 4294967295u, u_input.a.x), ~(~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))));
    let var_1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 1u)]))))), _wgslsmith_f_op_f32(floor(-151f))), global2.x, func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.a.x, 1u)] - 281f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)] + global3[_wgslsmith_index_u32(59544u, 1u)])), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(u_input.a.x, 14991u), firstTrailingBit(u_input.a.x)), 1u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(~4294967295u, 1u)], _wgslsmith_f_op_f32(401f - global3[_wgslsmith_index_u32(19616u, 1u)]), _wgslsmith_f_op_f32(func_1()))), -abs(-u_input.c.x), select(vec2<bool>(true, global2.x), vec2<bool>(true, true), func_3(global2.x, ~14214u, false, -16304i < u_input.b.x))), Struct_3(global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x), 19u)]));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1765u, 1u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(11168u, 1u)] - global3[_wgslsmith_index_u32(u_input.a.x, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(39824u, 1u)])), 441f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-408f, 579f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~55293u, 1u)] * 697f)), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-277f))), _wgslsmith_f_op_f32(sign(-257f))))));
    global3 = array<f32, 1>();
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 1u)] + global3[_wgslsmith_index_u32(u_input.a.x, 1u)])) - _wgslsmith_f_op_f32(f32(-1f) * -309f)))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(54690u, 1u)], -1406f)));
    var var_4 = var_1.a;
    var var_5 = _wgslsmith_f_op_f32(-998f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1087f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1172f, 1556f, 893f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1414f, var_2.x, var_2.x), vec3<f32>(global3[_wgslsmith_index_u32(1381u, 1u)], 116f, var_2.x))))) + vec3<f32>(-1469f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-325f, var_2.x) * _wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(161f)))))));
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))), global3[_wgslsmith_index_u32(var_0.b.x, 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(27091i, min(~vec3<i32>(countOneBits(0i), abs(u_input.c.x), u_input.b.x), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x), vec3<i32>(49818i, u_input.c.x, u_input.b.x) >> (var_0.a % vec3<u32>(32u))) >> (countOneBits(func_2(var_1.b).yxw) % vec3<u32>(32u))));
}

