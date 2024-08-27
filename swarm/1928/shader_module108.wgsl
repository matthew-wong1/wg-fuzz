struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(4294967295u, 31223u, 52683u), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec4<u32>(4294967295u, 1u, 74486u, 4294967295u)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec4<u32>(1u, 33856u, 1u, 20203u)), vec3<i32>(-48731i, -1i, 1i));

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(382f, -2591f, -2160f, -2063f));

var<private> global3: array<Struct_1, 30>;

var<private> global4: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-1000f, -1000f, 245f, -2792f), vec4<f32>(168f, 810f, -1668f, -183f), vec4<f32>(609f, -1862f, -924f, 2242f), vec4<f32>(-125f, -771f, -373f, -855f), vec4<f32>(1450f, 176f, -1000f, -643f), vec4<f32>(1058f, -551f, -2016f, 935f), vec4<f32>(887f, -1708f, -1353f, -1000f), vec4<f32>(-1274f, 2203f, -136f, -612f), vec4<f32>(396f, 956f, 1000f, -2117f), vec4<f32>(733f, -584f, 882f, -2237f), vec4<f32>(1184f, -2474f, 1306f, 246f), vec4<f32>(1033f, -1000f, -932f, -1985f), vec4<f32>(942f, 142f, -1539f, 431f), vec4<f32>(1000f, 1413f, 767f, 500f), vec4<f32>(1881f, 1707f, 962f, 1000f), vec4<f32>(-438f, 691f, -101f, 1297f), vec4<f32>(516f, 552f, 774f, -555f), vec4<f32>(526f, -228f, 513f, -2405f), vec4<f32>(2592f, -1797f, -221f, 1510f), vec4<f32>(-927f, -1365f, -1480f, -791f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<f32>, 1>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-136f)) + 815f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-319f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) - -975f)))));
    return global3[_wgslsmith_index_u32(~u_input.d.x, 30u)];
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(u_input.d.xxz, func_2(), Struct_1(vec3<bool>(any(vec3<bool>(false, global0.b.b.x, arg_0)), arg_3.x != arg_3.x, arg_3.x >= arg_3.x), !global1.a, global1.c), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-63338i, 56893i, 12401i) ^ u_input.c.yzw) >> (~(u_input.d.wyy << (global1.c.wxw % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.c.wzx));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + 894f));
    global0 = Struct_2(vec3<u32>(19090u, 1u, var_0.c.c.x), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(16288u, _wgslsmith_dot_vec3_u32(~global1.c.xww, ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 88747u), vec3<u32>(global0.a.x, 23295u, 2847u)))), 30u)], func_2(), max(reverseBits(~firstLeadingBit(vec3<i32>(arg_2, 65818i, 2147483647i))), vec3<i32>(u_input.a, countOneBits(-30805i) << (~arg_1 % 32u), 2147483647i)));
    var var_2 = Struct_2(min(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.c.x, 1u, 1u), _wgslsmith_clamp_vec3_u32(u_input.d.yxy, var_0.b.c.zwy, vec3<u32>(4294967295u, u_input.d.x, 49561u))) | _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d.x, 4294967295u, var_0.c.c.x), ~global0.b.c.ywx), select(vec3<u32>(_wgslsmith_add_u32(0u, 40956u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, global0.c.c.x), vec3<u32>(arg_1, 61025u, 67688u)), firstTrailingBit(59901u)), var_0.c.c.wyx, false)), Struct_1(vec3<bool>(false, true, global1.b.x), !vec3<bool>(any(vec3<bool>(true, var_0.b.a.x, true)), var_0.b.b.x, true), reverseBits(_wgslsmith_mod_vec4_u32(global1.c, global0.b.c >> (u_input.d % vec4<u32>(32u))))), var_0.b, -vec3<i32>(global0.d.x, -1i, ~firstTrailingBit(0i)));
    let var_3 = any(vec3<bool>(all(vec2<bool>(true, !var_0.c.a.x)), global0.b.a.x, var_0.b.a.x));
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.d.yzw, global1.c.ywy), abs(10935u)), 30u)];
}

fn func_4(arg_0: Struct_2) -> i32 {
    global0 = Struct_2(select(vec3<u32>(reverseBits(12154u), _wgslsmith_mult_u32(u_input.d.x, u_input.d.x), ~u_input.d.x) ^ u_input.d.xxy, ~global0.b.c.yxz, true), func_2(), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~66010u, reverseBits(arg_0.c.c.x)), 30u)], u_input.b.xzz);
    global3 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-670f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(176f + 314f), _wgslsmith_f_op_f32(f32(-1f) * -124f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1344f + -127f)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(916f, -201f), -1093f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * -1000f))) * _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(1000f, 1605f)))), -1676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-630f * -1138f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) + _wgslsmith_f_op_f32(round(125f))))));
    let var_1 = Struct_2(global0.b.c.zzz, func_2(), Struct_1(!vec3<bool>(true, global1.b.x, true), arg_0.c.a, _wgslsmith_add_vec4_u32(global0.b.c, global1.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, arg_0.d.x, global0.d.x), firstLeadingBit(u_input.b.xwx)), _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(arg_0.d.x, -2147483647i)), -30152i), vec3<i32>(1i, -(~global0.d.x), arg_0.d.x), -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, arg_0.d.x, global0.d.x), vec3<i32>(-14021i, 2147483647i, 1i)), vec3<i32>(0i, 1i, arg_0.d.x))));
    global4 = array<vec4<f32>, 20>();
    return firstLeadingBit(_wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(reverseBits(-26360i), firstTrailingBit(arg_0.d.x))), -1i));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = 12965u;
    global2 = array<vec4<f32>, 1>();
    global2 = array<vec4<f32>, 1>();
    global2 = array<vec4<f32>, 1>();
    let var_1 = global3[_wgslsmith_index_u32(~(~global1.c.x) >> (u_input.d.x % 32u), 30u)];
    return Struct_1(vec3<bool>(arg_0, !(arg_2 < -arg_2), !any(!vec4<bool>(arg_0, false, true, arg_0))), func_2().a, vec4<u32>(~27111u, 72397u, _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.c.c.x, u_input.d.x), global1.c.x ^ global0.b.c.x) ^ var_1.c.x, 105513u));
}

fn func_1() -> Struct_1 {
    global1 = func_5(true, ~23707u, func_4(Struct_2(vec3<u32>(u_input.d.x << (1u % 32u), 40176u, ~global0.a.x), func_2(), func_3(true, select(global1.c.x, 0u, false), countOneBits(-14892i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, -933f, 130f) * vec3<f32>(1022f, 187f, -499f))), vec3<i32>(~u_input.a, ~global0.d.x, -global0.d.x))));
    global1 = func_5(func_3(true, 1u, 17783i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))).b.x, abs(firstTrailingBit(1u)), -62352i);
    global3 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_dot_vec3_u32(func_5(any(vec2<bool>(global0.b.b.x, true)), 4294967295u, -_wgslsmith_clamp_i32(global0.d.x, global0.d.x, _wgslsmith_add_i32(u_input.c.x, -10580i))).c.wxy, ~(~u_input.d.wyy));
    let var_1 = Struct_2(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~firstTrailingBit(global1.c.yw), ~u_input.d.yz & _wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.c.x, var_0), vec2<u32>(global1.c.x, 0u))), ~countOneBits(u_input.d.x)), func_3(!func_5(!global0.c.b.x, ~43179u, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, global0.d.x)).a.x, u_input.d.x, 2147483647i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f * 783f) + _wgslsmith_f_op_f32(677f + 583f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f - -470f)), _wgslsmith_div_f32(-1949f, -2271f))), global3[_wgslsmith_index_u32(~114616u, 30u)], (~global0.d | -countOneBits(global0.d)) ^ u_input.b.xzy);
    return Struct_1(!(!(!vec3<bool>(global1.b.x, false, global0.c.b.x))), global0.b.a, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global4 = array<vec4<f32>, 20>();
    let var_1 = !select(!(!(!vec4<bool>(false, false, var_0.b.x, true))), vec4<bool>(false, func_1().b.x, !global0.b.a.x || false, global0.c.a.x), select(select(select(vec4<bool>(var_0.a.x, true, true, false), vec4<bool>(true, global1.a.x, true, global1.a.x), vec4<bool>(true, true, var_0.a.x, var_0.a.x)), !vec4<bool>(false, global0.b.b.x, false, false), true), !vec4<bool>(global0.c.a.x, var_0.a.x, var_0.b.x, global1.a.x), select(!vec4<bool>(global1.b.x, false, global0.c.b.x, true), vec4<bool>(false, global0.b.a.x, global1.b.x, var_0.a.x), all(global1.b.zz))));
    let var_2 = _wgslsmith_f_op_f32(965f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1548f)))))));
    var var_3 = global0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(min(vec4<u32>(global1.c.x, var_0.c.x, global0.a.x, 4294967295u), _wgslsmith_sub_vec4_u32(global0.b.c, u_input.d)) & ~global1.c), ~global0.b.c.x, ~_wgslsmith_clamp_vec3_i32(global0.d, ~vec3<i32>(u_input.b.x, global0.d.x, 1i), vec3<i32>(59282i, 41610i, global0.d.x)) << (vec3<u32>(64338u, func_2().c.x, 0u) % vec3<u32>(32u)));
}

