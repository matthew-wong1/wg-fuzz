struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true));

var<private> global1: array<f32, 5> = array<f32, 5>(-424f, 554f, -1077f, -2052f, 1333f);

var<private> global2: Struct_2;

var<private> global3: vec4<u32> = vec4<u32>(1u, 57487u, 1u, 39355u);

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    let var_0 = firstTrailingBit(global2.b);
    let var_1 = Struct_3(select(global4.a, !global4.d, vec3<bool>(global2.a.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, global2.b), vec2<i32>(global2.b, var_0)) <= var_0, global2.a.b)), vec4<u32>(~47372u, u_input.b.x, ~40218u, firstLeadingBit(~30851u)) >> (vec4<u32>(u_input.a, countOneBits(~global4.c.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(54710u, u_input.b.x, global3.x), vec3<u32>(global3.x, global3.x, 17048u))), max(0u, 103129u)) % vec4<u32>(32u)), vec3<u32>(44959u, global2.a.c.x ^ global3.x, ~select(36258u, ~global3.x, global4.a.x)), !(!vec3<bool>(all(vec3<bool>(global2.c.a.x, true, global2.c.a.x)), true, any(global0[_wgslsmith_index_u32(0u, 16u)]))), global4.d.x);
    return var_0;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> Struct_3 {
    var var_0 = 12701u;
    global4 = Struct_3(vec3<bool>(arg_0.b, countOneBits(2147483647i << (global2.d.c.x % 32u)) <= _wgslsmith_add_i32(func_3(), u_input.e), false), ~(~(~firstLeadingBit(vec4<u32>(u_input.d, 0u, arg_0.c.x, global3.x)))), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, global4.c.x, 12011u), vec3<u32>(u_input.c.x, global4.c.x, 1u)) & reverseBits(vec3<u32>(79368u, 0u, 0u))), global2.d.a.yxy, all(!(!select(global4.a.xx, global2.c.a.zz, false))));
    var var_1 = ~_wgslsmith_div_u32(select(1u, ~_wgslsmith_sub_u32(arg_0.c.x, global3.x), _wgslsmith_clamp_i32(u_input.e, 28976i, u_input.e) <= global2.b), 4294967295u);
    var_0 = (0u << (_wgslsmith_add_u32(global4.c.x, arg_0.c.x) % 32u)) >> (~arg_0.c.x % 32u);
    let var_2 = Struct_4(Struct_3(arg_2.xwy, vec4<u32>(_wgslsmith_add_u32(arg_0.c.x & 1u, reverseBits(20045u)), ~max(global3.x, 0u), ~global4.b.x, min(4294967295u, global3.x)), countOneBits(~countOneBits(vec3<u32>(4294967295u, u_input.a, global2.c.c.x))), !select(global4.a, arg_0.a.xzx, all(vec3<bool>(true, global4.d.x, false))), all(!vec2<bool>(false, arg_0.a.x))), global2.b <= -select(-1641i, 0i, all(vec4<bool>(true, true, false, global2.a.b))));
    return var_2.a;
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = select(global2.a.b, false, global2.a.a.x);
    let var_1 = global2.c;
    var var_2 = arg_0.x;
    global0 = array<vec4<bool>, 16>();
    global3 = ~(global4.b >> (vec4<u32>(global2.c.c.x >> (~4294967295u % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.c.xy, vec2<u32>(1u, 1u)), 0u), (14954u & global4.b.x) ^ _wgslsmith_dot_vec4_u32(global4.b, global4.b), global4.c.x) % vec4<u32>(32u)));
    return func_2(global2.a, firstTrailingBit(-15626i), !(!(!(!vec4<bool>(global4.d.x, true, global4.d.x, var_1.b)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = 21726u;
    global0 = array<vec4<bool>, 16>();
    var var_1 = arg_2;
    var var_2 = Struct_2(global2.a, -1i, global2.a, arg_2);
    var var_3 = true;
    return Struct_1(vec4<bool>(false, arg_2.b | (func_1(vec4<f32>(1228f, -581f, global1[_wgslsmith_index_u32(1u, 5u)], -1723f)).e && !arg_3.a.x), (~var_0 & reverseBits(1u)) > _wgslsmith_clamp_u32(arg_3.c.x >> (1u % 32u), _wgslsmith_div_u32(1u, 579u), 70397u), false && all(vec2<bool>(true, false))), all(vec2<bool>(true, true)), arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(select(select(vec2<bool>(global4.a.x, global4.d.x), vec2<bool>(global2.a.b, global4.e), global2.d.a.zx), vec2<bool>(false, global4.d.x), true), select(select(vec2<bool>(global2.a.b, global4.e), vec2<bool>(true, global4.a.x), false), global2.c.a.xx, select(global2.c.a.zx, global4.d.yz, global4.d.x)), global2.b == 2147483647i));
    global2 = Struct_2(func_4(Struct_4(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(874f, global1[_wgslsmith_index_u32(1u, 5u)], 692f, global1[_wgslsmith_index_u32(global4.c.x, 5u)]))), any(select(vec4<bool>(global2.c.a.x, global4.d.x, global4.a.x, global4.e), global2.a.a, vec4<bool>(global4.e, false, global4.e, true)))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(157f, -950f, global1[_wgslsmith_index_u32(48580u, 5u)], global1[_wgslsmith_index_u32(21699u, 5u)])) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1186f, -120f, -764f, 579f))))), global2.a, Struct_3(global4.a, firstTrailingBit(global4.b), select(vec3<u32>(global3.x, 16113u, 64268u), global4.c, func_1(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 1271f, 1279f, -1025f)).d.x), select(global4.d, !vec3<bool>(global4.e, true, false), true), false)), global2.b, func_4(Struct_4(func_2(func_4(Struct_4(Struct_3(global4.d, global4.b, vec3<u32>(global2.c.c.x, 0u, global3.x), global2.a.a.wxx, global4.d.x), global4.e), Struct_3(global4.a, global4.b, vec3<u32>(global3.x, 0u, 1605u), global2.d.a.xyw, false), global2.d, Struct_3(vec3<bool>(true, false, global2.a.a.x), global4.b, global4.c, global2.a.a.xww, true)), 35605i >> (global3.x % 32u), select(vec4<bool>(global2.a.b, true, true, true), vec4<bool>(global2.d.b, global4.a.x, false, true), vec4<bool>(global4.d.x, global4.a.x, global2.c.b, true))), (global4.b.x != global4.c.x) & select(global4.e, global2.d.b, global2.a.a.x)), func_2(func_4(Struct_4(Struct_3(global2.a.a.zzy, vec4<u32>(global2.d.c.x, 0u, global2.a.c.x, global4.c.x), global2.d.c, vec3<bool>(true, false, false), false), false), func_1(vec4<f32>(global1[_wgslsmith_index_u32(global3.x, 5u)], global1[_wgslsmith_index_u32(global3.x, 5u)], global1[_wgslsmith_index_u32(37367u, 5u)], 725f)), global2.d, Struct_3(global2.c.a.xyz, global4.b, vec3<u32>(global4.c.x, global3.x, global2.d.c.x), vec3<bool>(true, global2.a.a.x, global2.c.a.x), true)), _wgslsmith_add_i32(-3738i, 31276i), global0[_wgslsmith_index_u32(global2.d.c.x, 16u)]), Struct_1(!global0[_wgslsmith_index_u32(u_input.d, 16u)], true, select(_wgslsmith_clamp_vec3_u32(global3.yxw, vec3<u32>(global3.x, 77205u, u_input.b.x), global3.xww), ~vec3<u32>(4294967295u, global4.b.x, 0u), global2.c.b != global2.d.b)), Struct_3(vec3<bool>(global4.d.x, global2.a.a.x && true, !global2.c.a.x), ~_wgslsmith_mult_vec4_u32(global4.b, global4.b), vec3<u32>(0u, ~global3.x, reverseBits(global3.x)), select(!vec3<bool>(true, global2.d.b, global4.e), global2.a.a.zww, vec3<bool>(global2.d.a.x, false, false)), global4.d.x)), Struct_1(global2.a.a, false, ~min(global4.c, abs(u_input.c))));
    global2 = Struct_2(func_4(Struct_4(Struct_3(global2.a.a.wwz, firstTrailingBit(global4.b), vec3<u32>(u_input.b.x, global4.b.x, 19321u), vec3<bool>(global4.e, true, global2.c.b), global4.a.x), true || global2.c.b), func_1(vec4<f32>(631f, global1[_wgslsmith_index_u32(global2.a.c.x & global4.b.x, 5u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 44676u, global4.b.x, global3.x), global4.b), 5u)], -317f)), func_4(Struct_4(Struct_3(vec3<bool>(false, false, global2.a.b), global4.b, vec3<u32>(6580u, 0u, 14008u), global2.d.a.wwx, false), -6873i != u_input.e), Struct_3(!vec3<bool>(false, true, global4.a.x), ~global4.b, func_2(global2.a, 21705i, vec4<bool>(global2.a.b, true, global4.d.x, false)).c, vec3<bool>(true, true, global4.d.x), true), Struct_1(global2.a.a, any(global2.d.a), global3.zyz), func_1(vec4<f32>(266f, global1[_wgslsmith_index_u32(4294967295u, 5u)], 457f, global1[_wgslsmith_index_u32(21395u, 5u)]))), Struct_3(vec3<bool>(false, u_input.e <= -2147483647i, global4.d.x & false), ~global4.b, ~reverseBits(u_input.c), vec3<bool>(u_input.e < global2.b, global4.e, false && global4.a.x), all(select(global2.a.a, vec4<bool>(false, global4.d.x, global4.d.x, false), vec4<bool>(false, false, global4.e, global2.c.b))))), 0i, Struct_1(select(vec4<bool>(global4.d.x, true, global2.a.a.x, true), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global3.xyx, global4.c), 16u)], any(!vec2<bool>(global4.e, global2.d.a.x))), false, _wgslsmith_clamp_vec3_u32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(u_input.d, 5u)], -848f, 810f))).b.xwx, global2.a.c, func_2(global2.a, ~u_input.e, !vec4<bool>(global2.a.a.x, true, true, true)).b.xww)), func_4(Struct_4(func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-449f, -622f, -1332f, -997f)))), func_4(Struct_4(Struct_3(global2.d.a.xxx, vec4<u32>(u_input.a, global4.c.x, 6853u, 1u), global4.c, global2.d.a.xyy, global2.d.b), false), Struct_3(global2.d.a.zyz, vec4<u32>(15959u, 4294967295u, 23099u, 74135u), vec3<u32>(global2.a.c.x, global3.x, u_input.b.x), vec3<bool>(global4.e, false, global2.a.a.x), true), global2.a, func_2(Struct_1(vec4<bool>(false, global4.a.x, true, false), global2.d.b, u_input.c), u_input.e, global2.c.a)).b), Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(1u, 5u)] > global1[_wgslsmith_index_u32(global4.b.x, 5u)], true, true), global4.b, vec3<u32>(reverseBits(global2.d.c.x), 65278u, 56212u), select(global4.a, select(global2.d.a.zzx, vec3<bool>(true, global4.e, true), false), vec3<bool>(global2.a.a.x, global4.a.x, false)), global4.e), Struct_1(!select(global2.a.a, global2.a.a, vec4<bool>(true, true, global4.e, global2.d.a.x)), global2.c.a.x, ~(~vec3<u32>(4294967295u, 1658u, 44377u))), Struct_3(global4.d, (global4.b << (vec4<u32>(global4.c.x, global2.d.c.x, global2.c.c.x, 0u) % vec4<u32>(32u))) | vec4<u32>(u_input.a, global4.b.x, 0u, global2.a.c.x), ~(~vec3<u32>(1u, 46795u, 1u)), global4.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-12248i, -23557i), vec2<i32>(2147483647i, 1i)) >= global2.b)));
    var var_1 = vec4<bool>(false, true, global4.e, true);
    global3 = ~global4.b;
    var var_2 = ~((_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(global4.b.wy, u_input.c.xy), ~global2.c.c.yx) ^ max(vec2<u32>(u_input.c.x, u_input.a), u_input.b)) & reverseBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(2147483647i, u_input.e, global2.b, -1i)), min(_wgslsmith_add_vec4_i32(vec4<i32>(-13059i, u_input.e, -6552i, u_input.e), vec4<i32>(global2.b, -1i, global2.b, 2147483647i)) << (~global4.b % vec4<u32>(32u)), vec4<i32>(global2.b, -7463i, u_input.e, u_input.e) | vec4<i32>(u_input.e, global2.b, u_input.e, u_input.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1623f * -306f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 5u)] + 755f)), _wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(max(u_input.c.x, global4.b.x), 5u)])))), _wgslsmith_f_op_f32(1845f + global1[_wgslsmith_index_u32(~(~abs(global3.x)), 5u)]), ~vec4<i32>(-409i, select(~global2.b, min(u_input.e, 40974i), global4.d.x | global4.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), min(vec2<i32>(global2.b, global2.b), vec2<i32>(-2584i, global2.b))), select(1i, 48382i, func_4(Struct_4(Struct_3(var_1.yyx, global4.b, vec3<u32>(4294967295u, 36516u, 0u), vec3<bool>(var_1.x, true, global2.d.b), global2.c.a.x), true), Struct_3(global4.d, vec4<u32>(0u, 4294967295u, var_2.x, 0u), global2.a.c, vec3<bool>(global2.a.b, true, true), var_1.x), global2.d, Struct_3(global4.a, vec4<u32>(var_2.x, 49390u, 1u, u_input.a), vec3<u32>(u_input.d, var_2.x, 4294967295u), vec3<bool>(false, global2.d.b, global2.c.a.x), global2.d.b)).a.x)), _wgslsmith_f_op_f32(select(-584f, global1[_wgslsmith_index_u32(global2.c.c.x, 5u)], select(any(!vec4<bool>(true, global4.e, true, true)), true, global2.a.a.x))));
}

