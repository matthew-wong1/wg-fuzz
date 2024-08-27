struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: array<bool, 3>;

var<private> global2: vec4<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec3<f32> {
    global0 = array<vec2<u32>, 5>();
    var var_0 = Struct_1(-u_input.c.x, u_input.d);
    var_0 = Struct_1(~(-36466i), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(-5153i, 2147483647i), arg_1.xz) & vec2<i32>(-7271i, u_input.d.x), var_0.b & ~u_input.a.ww), var_0.b));
    global1 = array<bool, 3>();
    let var_1 = Struct_3(_wgslsmith_mult_i32(firstTrailingBit(arg_1.x), -13993i), vec3<u32>(~1u, u_input.b, ~u_input.b));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(742f + -281f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f)), _wgslsmith_f_op_f32(trunc(1f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1391f), -422f, 1138f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-679f, -645f, 376f)) * vec3<f32>(_wgslsmith_div_f32(655f, 262f), -580f, _wgslsmith_f_op_f32(ceil(116f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1384f, -776f, -105f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1265f, 1573f, -1425f)))), !any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 3u)])))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1190f)), _wgslsmith_f_op_f32(abs(1002f)), 1000f) + vec3<f32>(-1038f, -914f, -532f)));
    var var_1 = var_0.x;
    let var_2 = Struct_2(~0u);
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(u_input.c.x, vec4<i32>(u_input.c.x, -2147483647i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1590f, var_0.x, var_0.x), vec3<f32>(1912f, var_0.x, var_0.x), true))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1118f, var_0.x) + vec3<f32>(var_0.x, var_0.x, 2339f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -662f, _wgslsmith_f_op_f32(-var_0.x))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_3.xy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.x), var_4.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x - -1543f) + -186f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2511f)), true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = u_input.c;
    var_0 = reverseBits(_wgslsmith_div_vec2_i32(~u_input.d, vec2<i32>(2147483647i, 0i)));
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1872f + -359f) * _wgslsmith_f_op_f32(func_2()));
    return Struct_2(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1410u, u_input.e, u_input.e) & global2.yyz, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, global2.x), vec3<u32>(u_input.b, 1u, global2.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> Struct_5 {
    let var_0 = select(vec2<bool>(any(select(vec2<bool>(true, false), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]), true)), global1[_wgslsmith_index_u32(arg_0.a, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32((~global2.x & ~86205u) << (~select(arg_0.a, u_input.b, global1[_wgslsmith_index_u32(global2.x, 3u)]) % 32u), 3u)], u_input.e >= 1u), !vec2<bool>(false, !(arg_0.a < 33247u)));
    global0 = array<vec2<u32>, 5>();
    var var_1 = Struct_3(-1i >> (arg_0.a % 32u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b) ^ ~(~vec3<u32>(0u, u_input.e, 4294967295u)), vec3<u32>(max(1u, arg_0.a), 0u, ~reverseBits(0u))));
    global2 = firstTrailingBit((~abs(vec4<u32>(55190u, u_input.b, arg_0.a, 4294967295u)) & abs(~vec4<u32>(1u, 4294967295u, global2.x, arg_0.a))) & ~vec4<u32>(0u, reverseBits(1u), reverseBits(1010u), ~arg_0.a));
    var var_2 = true;
    return Struct_5(vec4<bool>(all(vec2<bool>(true | var_0.x, !global1[_wgslsmith_index_u32(u_input.e, 3u)])), !(!(global2.x < arg_0.a)), !all(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.e, 3u)]), vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(global2.x, 3u)], false), false)), false), Struct_2(global2.x), func_1(vec2<i32>(40546i, arg_2), select(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(global2.x, 3u)], var_0.x, true), vec4<bool>(false, global1[_wgslsmith_index_u32(global2.x, 3u)], false, global1[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(false, false, false, true)), select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(var_1.b.x, 3u)], true, var_0.x, false), vec4<bool>(false, var_0.x, true, false)), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(1u, 3u)], var_0.x, false)), !(!vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 3u)], false, true, true)))));
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    var var_0 = ~abs(vec4<i32>(~(~1i), ~firstTrailingBit(0i), 0i, _wgslsmith_mod_i32(u_input.d.x >> (u_input.e % 32u), 2147483647i)));
    let var_1 = Struct_3(u_input.d.x, _wgslsmith_sub_vec3_u32(~countOneBits(~global2.yyx), (~vec3<u32>(1u, 35981u, global2.x) >> (select(global2.xwz, vec3<u32>(global2.x, u_input.e, arg_0.b.a), vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_0.b.a, 3u)])) % vec3<u32>(32u))) >> (vec3<u32>(~1u, 62227u & global2.x, firstTrailingBit(u_input.e)) % vec3<u32>(32u))));
    global2 = vec4<u32>(firstTrailingBit(~global2.x), reverseBits(_wgslsmith_sub_u32(arg_0.b.a, u_input.e)), ~global2.x, 4294967295u);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, global2.x), ~global2.x), _wgslsmith_div_u32(~u_input.e, 4294967295u)), 3u)], true, !(_wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, 50370i) != -u_input.c.x), true), func_5(func_4(func_1(u_input.a.yz, vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(48946u, 3u)], false)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1541f), _wgslsmith_f_op_f32(ceil(1822f))), u_input.c.x)), func_4(Struct_2(global2.x >> (24643u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) + _wgslsmith_f_op_f32(func_2()))), u_input.c.x).b);
    let var_1 = select(!var_0.a.xzz, !vec3<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.a, 3u)], true, true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.e, 3u)]), vec3<bool>(global1[_wgslsmith_index_u32(21460u, 3u)], false, false))), any(vec4<bool>(var_0.a.x, true, var_0.a.x, false)) == !global1[_wgslsmith_index_u32(1u, 3u)], any(!var_0.a)), !vec3<bool>(all(!var_0.a), all(var_0.a.zww), func_4(func_4(Struct_2(0u), vec2<f32>(-1000f, 1169f), -1i).b, vec2<f32>(-1000f, -828f), 1i).a.x));
    var var_2 = true;
    let var_3 = Struct_1(0i, max(u_input.c, abs(vec2<i32>(-1492i, 2147483647i))) >> (~(~_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(var_0.b.a, 5u)], global2.xy, global2.yx)) % vec2<u32>(32u)));
    let var_4 = Struct_4(u_input.c.x, select(vec2<bool>(true, any(var_1.xx)), select(select(vec2<bool>(var_1.x, var_1.x), select(var_1.yy, vec2<bool>(false, false), vec2<bool>(var_0.a.x, true)), true), vec2<bool>(true && var_1.x, true), !var_1.zy), true), var_1.zy, func_5(Struct_5(vec4<bool>(any(var_0.a), true, all(vec2<bool>(false, var_0.a.x)), true), var_0.c, func_5(func_4(Struct_2(1u), vec2<f32>(727f, -392f), var_3.a)))).a, 0u);
    let var_5 = func_4(func_5(Struct_5(vec4<bool>(!var_4.c.x, !global1[_wgslsmith_index_u32(var_4.d, 3u)], func_4(var_0.b, vec2<f32>(500f, 435f), var_3.a).a.x, var_1.x), Struct_2(abs(41281u)), Struct_2(~var_4.e))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -637f)), 388f), u_input.c.x).b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_mod_u32(29363u, global2.x))), -2147483647i, func_4(Struct_2(var_5.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-798f, -403f)))), reverseBits(u_input.a.x)).c.a);
}

