struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(665f, 1000f, 348f, -529f)), Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(2431f, -1361f, 1323f, 1163f)), Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-725f, 1000f, 164f, -464f)), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(-1177f, -1045f, -1168f, -1330f)), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-285f, -961f, -1733f, 270f)), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-1343f, -912f, 1145f, -253f)), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(414f, -387f, 817f, 374f)), Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(823f, 1947f, -316f, 746f)));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.a.zyx;
    return Struct_1(!arg_2.a, arg_1);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = false;
    global0 = array<Struct_1, 8>();
    var var_1 = arg_0.d;
    global3 = Struct_1(select(vec4<bool>(false, true, _wgslsmith_f_op_f32(-2581f - var_1.b.x) == _wgslsmith_f_op_f32(f32(-1f) * -666f), var_1.a.x), func_1(vec2<u32>(~u_input.b, max(u_input.c.x, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.c.b.x, var_1.b.x, 1813f) - global3.b) + vec4<f32>(arg_1.b.x, global3.b.x, arg_0.d.b.x, global3.b.x)), Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(global3.b * global3.b))).a, arg_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-469f, 1108f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(exp2(global3.b.x))), _wgslsmith_f_op_vec4_f32(min(global3.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, 1719f, arg_0.c.b.x, global3.b.x), global3.b, var_1.a))))))));
    global1 = var_1.a.wyy;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), -1365f, arg_0.c.b.x, -937f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-159f * 161f) <= global3.b.x, select(select(global3.a.xz, arg_2.a.yy, !(!global1.xx)), arg_2.a.zy, vec2<bool>(all(vec2<bool>(global3.a.x, global2.x)), true)), Struct_1(arg_2.a, vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(arg_0.b.x - 166f), arg_2.b.x, func_1(u_input.c.zx >> (vec2<u32>(10112u, u_input.b) % vec2<u32>(32u)), vec4<f32>(-156f, arg_2.b.x, 181f, arg_0.b.x), Struct_1(vec4<bool>(global3.a.x, global1.x, true, false), vec4<f32>(-1030f, 1606f, -1202f, arg_0.b.x))).b.x)), Struct_1(!func_1(abs(arg_1.ww), _wgslsmith_div_vec4_f32(vec4<f32>(-557f, 884f, 351f, global3.b.x), vec4<f32>(-159f, arg_2.b.x, arg_0.b.x, arg_0.b.x)), Struct_1(arg_2.a, vec4<f32>(global3.b.x, arg_0.b.x, 572f, arg_0.b.x))).a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(global3.b, arg_0.b, vec4<bool>(global2.x, true, arg_2.a.x, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.x, 598f, arg_2.b.x, 199f), arg_0.b)))))), _wgslsmith_sub_i32(u_input.d.x, -1229i & (u_input.d.x ^ -1i)));
    var var_1 = _wgslsmith_add_vec3_i32(u_input.a.yxz, _wgslsmith_mod_vec3_i32(u_input.d << (u_input.c % vec3<u32>(32u)), -u_input.d) >> (arg_1.wzy % vec3<u32>(32u)));
    var var_2 = -1i;
    var_0 = Struct_2(any(!global3.a.zwy), select(!arg_2.a.wz, select(arg_2.a.xx, arg_0.a.zx, global1.yy), func_1(select(_wgslsmith_mod_vec2_u32(arg_1.yz, vec2<u32>(32697u, arg_1.x)), ~arg_1.xz, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1486f, -122f, -143f, arg_2.b.x) - arg_2.b), arg_2).a.yz), func_1(_wgslsmith_sub_vec2_u32(arg_1.yx, vec2<u32>(4294967295u, arg_1.x) ^ u_input.c.xx), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.d.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.b * arg_2.b)))), arg_0), Struct_1(!select(vec4<bool>(true, var_0.c.a.x, false, false), func_1(vec2<u32>(arg_1.x, 0u), arg_0.b, var_0.d).a, all(vec4<bool>(global3.a.x, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(173f + _wgslsmith_f_op_f32(max(arg_0.b.x, 1000f))), _wgslsmith_f_op_f32(abs(-1866f)), _wgslsmith_f_op_f32(sign(arg_2.b.x)), _wgslsmith_f_op_f32(-var_0.c.b.x))), _wgslsmith_add_i32(u_input.a.x, -reverseBits(1i)));
    var_0 = Struct_2(select(_wgslsmith_f_op_f32(step(var_0.c.b.x, _wgslsmith_f_op_f32(global3.b.x * var_0.c.b.x))) < 213f, any(!(!vec3<bool>(true, true, global1.x))), false), func_1(min(countOneBits(u_input.c.yy | arg_1.xy), u_input.c.zz), vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(9428u, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b.x, global3.b.x, arg_2.b.x, -419f)), Struct_1(vec4<bool>(global1.x, global2.x, arg_0.a.x, global1.x), vec4<f32>(global3.b.x, -793f, -1569f, var_0.d.b.x))).b.x, -2150f, _wgslsmith_f_op_f32(trunc(var_0.d.b.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(27582u, ~0u), 8u)]).a.zy, Struct_1(!select(global3.a, vec4<bool>(arg_2.a.x, global2.x, global3.a.x, true), !global2.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-780f, arg_2.b.x, arg_2.b.x, var_0.d.b.x) * vec4<f32>(var_0.d.b.x, var_0.c.b.x, -717f, var_0.c.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.b.x, arg_2.b.x, var_0.d.b.x)))))), global0[_wgslsmith_index_u32(4294967295u, 8u)], firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.d, min(u_input.a.yzw, u_input.a.zyz)) >> (~arg_1.x % 32u)));
    return 88880u;
}

fn func_2(arg_0: i32) -> u32 {
    global2 = select(func_1(~(~u_input.c.yx ^ select(u_input.c.xz, u_input.c.zx, global3.a.x)), global3.b, Struct_1(global3.a, global3.b)).a.xwy, !global3.a.yyw, global1.x);
    var var_0 = reverseBits(u_input.a) & u_input.a;
    global3 = global0[_wgslsmith_index_u32(~(~4294967295u), 8u)];
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_mult_vec3_u32(~((u_input.c << (u_input.c % vec3<u32>(32u))) & firstLeadingBit(vec3<u32>(14592u, 28340u, 58403u))) | ~min(~u_input.c, _wgslsmith_mod_vec3_u32(u_input.c, u_input.c)), u_input.c);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(8764u << (abs(var_2.x) % 32u), func_4(Struct_1(vec4<bool>(global3.a.x, global2.x, global1.x, false), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(global2.x, global3.a.zy, Struct_1(global3.a, global3.b), Struct_1(global3.a, global3.b), -1i), global0[_wgslsmith_index_u32(1u, 8u)]))), max(vec4<u32>(0u, var_2.x, var_2.x, 0u) << (vec4<u32>(0u, 4294967295u, u_input.b, var_2.x) % vec4<u32>(32u)), abs(vec4<u32>(u_input.b, 61633u, u_input.c.x, var_2.x))), func_1(firstTrailingBit(var_2.yx), vec4<f32>(global3.b.x, global3.b.x, 1111f, 1031f), Struct_1(global3.a, global3.b)), 4294967295u ^ (var_2.x >> (u_input.b % 32u))), 0u), ~_wgslsmith_sub_vec3_u32(countOneBits(u_input.c), vec3<u32>(min(3340u, 0u), ~74785u, 4294967295u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_2 {
    global3 = arg_1;
    var var_0 = Struct_1(select(arg_1.a, func_1(u_input.c.xx, arg_1.b, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 8u)]).a, true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(421f, arg_1.b.x, arg_0.b.x, arg_2.b.x))));
    global1 = select(select(!var_0.a.zww, !vec3<bool>(1u == u_input.b, false, var_0.a.x), false || any(global3.a.xyy)), !vec3<bool>(!all(vec3<bool>(arg_1.a.x, arg_1.a.x, true)), !global3.a.x, select(true, true, !arg_0.a.x)), true);
    var var_1 = u_input.c.x;
    let var_2 = vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + global3.b.x) + arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1251f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-649f + 564f)))) - _wgslsmith_f_op_f32(-arg_1.b.x)));
    return Struct_2(false, var_0.a.zx, Struct_1(!arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_2.b)) * arg_1.b) - _wgslsmith_f_op_vec4_f32(-arg_0.b))), arg_2, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.a, global3.b);
    let var_1 = u_input.b;
    let var_2 = global0[_wgslsmith_index_u32(~7487u, 8u)];
    var var_3 = (((~u_input.c << ((vec3<u32>(87346u, u_input.c.x, u_input.c.x) >> (vec3<u32>(var_1, u_input.b, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))) << (u_input.c % vec3<u32>(32u))) ^ vec3<u32>(u_input.b, min(4294967295u, var_1), 1u)) << (u_input.c % vec3<u32>(32u));
    let var_4 = func_5(Struct_1(select(!vec4<bool>(global3.a.x, var_0.a.x, false, var_2.a.x), vec4<bool>(true, !global1.x, any(global2.yz), true), !(global3.a.x | global1.x)), var_2.b), func_1(vec2<u32>(_wgslsmith_div_u32(var_1, 41938u), u_input.c.x), global3.b, global0[_wgslsmith_index_u32(~reverseBits(u_input.c.x), 8u)]), global0[_wgslsmith_index_u32(func_2(_wgslsmith_sub_i32(-1i, u_input.a.x)), 8u)], u_input.d);
    var var_5 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.b.x - -1209f)), _wgslsmith_f_op_f32(-1522f * 1000f), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_div_f32(-1431f, _wgslsmith_f_op_f32(min(var_4.d.b.x, 1000f)))), var_2.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), var_2.b.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(round(219f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, var_0.b.x, 194f, var_4.c.b.x))))), vec4<f32>(1829f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1599f, var_4.d.b.x)))), var_0.b.x))));
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, var_3.x);
}

