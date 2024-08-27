struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3 = Struct_3(50500u, vec2<u32>(47837u, 4294967295u), Struct_1(vec3<bool>(false, false, true), -1469f, vec2<f32>(628f, 112f), 491f, -1i), -11786i, vec3<bool>(false, false, false));

var<private> global2: array<vec3<i32>, 18>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = array<vec3<i32>, 18>();
    var var_0 = global1.c.e;
    var var_1 = _wgslsmith_mult_u32(global0.a, global0.b.x);
    let var_2 = !vec2<bool>(_wgslsmith_f_op_f32(round(global0.c.d)) >= _wgslsmith_f_op_f32(floor(global0.c.d)), true);
    let var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-global0.d | ~(-18411i), global0.c.e, ~(-1i)), ~vec3<i32>(abs(arg_0.b), u_input.a, _wgslsmith_mod_i32(-27271i, -35546i)));
    return global0.b.x;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = ~(~_wgslsmith_div_u32(4294967295u, func_3(Struct_2(global1.c.e, 2147483647i, vec4<i32>(0i, 2147483647i, 62619i, 2192i)))));
    var var_1 = Struct_3(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(global1.b.x, var_0, global0.b.x, global0.a)), reverseBits(u_input.c)), ~_wgslsmith_div_vec4_u32(vec4<u32>(3088u, u_input.b.x, 7617u, 18301u), vec4<u32>(22677u, 0u, 13329u, 4294967295u))), ~vec2<u32>(global0.b.x, ~global1.b.x), global0.c, i32(-1i) * -26416i, select(select(global1.c.a, global1.e, vec3<bool>(false, select(global1.e.x, true, global1.e.x), any(vec3<bool>(global0.c.a.x, true, global1.e.x)))), vec3<bool>(true, true, true), false));
    let var_2 = ~reverseBits(max(vec4<u32>(~8235u, _wgslsmith_dot_vec2_u32(vec2<u32>(39300u, var_0), var_1.b), 32183u, var_1.b.x), ~(~u_input.c)));
    let var_3 = Struct_2(0i, global1.d, firstLeadingBit(select(~vec4<i32>(global0.c.e, -1i, -17110i, global0.c.e) & (vec4<i32>(2147483647i, 0i, -25453i, u_input.a) >> (u_input.c % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(2147483647i, arg_0, 0i, 11571i)), any(!vec2<bool>(global1.e.x, true)))));
    global0 = Struct_3(0u, global1.b, Struct_1(!select(!global0.e, !vec3<bool>(false, global0.c.a.x, global0.c.a.x), select(var_1.e, global0.e, global0.e)), var_1.c.d, vec2<f32>(_wgslsmith_f_op_f32(-global0.c.d), _wgslsmith_f_op_f32(abs(162f))), arg_1.x, 18724i), u_input.a, select(!(!global0.c.a), var_1.c.a, any(!var_1.e.zx)));
    return Struct_3(global0.a | global0.b.x, u_input.b, Struct_1(vec3<bool>(any(select(global1.e.xx, global0.c.a.xy, false)), global1.e.x, true != all(vec3<bool>(false, global1.c.a.x, global1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c.d + var_1.c.c.x), 1206f, var_3.a < 6931i)) * global0.c.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1478f, _wgslsmith_f_op_f32(exp2(global0.c.c.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, global1.c.c.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, var_1.c.d)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-344f, var_1.c.c.x) - _wgslsmith_f_op_f32(-global1.c.c.x)))), arg_0), -2071i, !(!select(select(vec3<bool>(false, true, global0.e.x), vec3<bool>(false, global0.e.x, false), vec3<bool>(false, global0.c.a.x, true)), global1.e, select(var_1.e, var_1.c.a, true))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: u32) -> vec3<u32> {
    var var_0 = any(select(select(select(vec3<bool>(global1.e.x, global1.c.a.x, false), vec3<bool>(global1.e.x, global0.e.x, true), global0.c.a.x), !vec3<bool>(false, global1.c.a.x, global0.c.a.x), global0.c.a), global1.c.a, 360f >= global1.c.c.x));
    var var_1 = vec2<i32>(global0.d, -19093i);
    var var_2 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.c.e, -53247i), vec2<i32>(0i, 0i)) << (vec2<u32>(4294967295u, global0.a) % vec2<u32>(32u)), vec2<i32>(-38731i, _wgslsmith_mod_i32(arg_1, -10044i))), ~vec2<i32>(13643i, arg_1) | _wgslsmith_mod_vec2_i32(~vec2<i32>(global1.c.e, 0i), ~vec2<i32>(u_input.a, 12548i))), vec4<f32>(_wgslsmith_f_op_f32(round(356f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(138f)))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-489f)) - _wgslsmith_f_op_f32(arg_0.x * -1000f)) * _wgslsmith_f_op_f32(arg_0.x * global1.c.d))));
    var_2 = Struct_3(max(1u, global1.b.x), var_2.b, func_2(global1.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1035f, global1.c.b, var_2.c.c.x, global1.c.c.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(218f, global1.c.d, global0.c.b, 742f) - vec4<f32>(-2181f, var_2.c.b, -894f, global1.c.d)))), select(!vec4<bool>(true, global1.e.x, global1.e.x, global1.c.a.x), vec4<bool>(var_2.e.x, var_2.e.x, false, global0.c.a.x), true)))).c, -57127i, var_2.e);
    global2 = array<vec3<i32>, 18>();
    return _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, min(countOneBits(4294967295u) ^ ~arg_2, arg_2)), u_input.c.yww);
}

fn func_4(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = func_2(-(~_wgslsmith_mod_i32(-u_input.a, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-692f, 222f, global0.c.c.x, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, 988f, -313f, -382f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c.b, -400f, -107f, global1.c.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1258f, global0.c.d, global1.c.b, global0.c.d)))))).c;
    let var_1 = Struct_1(vec3<bool>(var_0.e != var_0.e, true, all(!vec4<bool>(global1.e.x, true, false, global1.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1530f, var_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) * vec2<f32>(var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.b * var_0.b), _wgslsmith_f_op_f32(global0.c.b + var_0.c.x)))), -829f, u_input.a);
    var var_2 = vec4<bool>(!var_1.a.x, global0.c.a.x, true, any(vec2<bool>(var_0.a.x, any(global1.c.a.xz))));
    let var_3 = vec2<bool>(!(!(!var_0.a.x)) != global0.c.a.x, all(vec3<bool>(!any(vec3<bool>(false, var_2.x, true)), select(true, all(global0.c.a.xy), all(vec4<bool>(var_2.x, var_0.a.x, var_0.a.x, var_2.x))), select(global1.c.a.x, true, !global1.c.a.x))));
    var var_4 = ~global0.d;
    return func_2(_wgslsmith_mult_i32(global1.d, _wgslsmith_mod_i32(var_0.e, -arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, global1.c.c.x, global1.c.c.x, var_0.c.x), vec4<f32>(global1.c.d, var_1.d, 234f, global0.c.c.x), all(var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(global0.c.b * global1.c.b), _wgslsmith_f_op_f32(global0.c.b + global1.c.b), _wgslsmith_div_f32(145f, global1.c.d), _wgslsmith_f_op_f32(-global0.c.b)))) + vec4<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(global0.c.d - -1011f))), global1.c.d, _wgslsmith_f_op_f32(round(-2932f)), var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(global2[_wgslsmith_index_u32(u_input.d.x, 18u)] >> (func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.c.c))), -21594i, _wgslsmith_sub_u32(u_input.d.x, global1.b.x) & ~u_input.b.x) % vec3<u32>(32u)));
    global0 = func_4(global2[_wgslsmith_index_u32(1u, 18u)]);
    let var_0 = global0.c;
    global0 = Struct_3(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.b, select(vec2<u32>(global1.b.x, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(43823u, u_input.c.x), u_input.d), !vec2<bool>(false, global1.e.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(8607u, 2478u, global1.a), firstTrailingBit(vec3<u32>(1u, 21980u, global0.a)))), _wgslsmith_mult_vec2_u32(~select(vec2<u32>(global0.a, 1u), vec2<u32>(4294967295u, 25408u), false) & ((u_input.c.yx & u_input.b) & (global0.b >> (u_input.d % vec2<u32>(32u)))), u_input.b), global1.c, _wgslsmith_sub_i32(global0.c.e, countOneBits(i32(-1i) * -2147483647i)), vec3<bool>(!(!(!global1.e.x)), !global1.e.x, !func_2(var_0.e, vec4<f32>(var_0.c.x, global1.c.b, global0.c.c.x, global0.c.b)).c.a.x & (true || (global1.a != u_input.d.x))));
    global0 = Struct_3(u_input.c.x ^ (global0.a | global1.b.x), global1.b, func_4(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global1.d, 4120i), vec3<i32>(global0.c.e, u_input.a, global1.d) >> (vec3<u32>(global1.b.x, global0.b.x, global1.b.x) % vec3<u32>(32u))))).c, ~_wgslsmith_mult_i32(i32(-1i) * -global0.c.e, firstTrailingBit(max(global0.d, 2147483647i))), !var_0.a);
    var var_1 = _wgslsmith_f_op_f32(trunc(-666f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(max(var_0.b, var_0.c.x)))), _wgslsmith_f_op_f32(-global0.c.d), func_4(vec3<i32>(45484i, global0.d, global0.c.e)).e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-1669f, _wgslsmith_div_f32(func_4(vec3<i32>(global0.c.e, global1.c.e, global0.d)).c.d, _wgslsmith_div_f32(global0.c.b, -1466f)))), _wgslsmith_f_op_f32(var_0.b - 1313f)), _wgslsmith_dot_vec2_i32(vec2<i32>(11072i, global0.c.e) & abs(vec2<i32>(var_0.e, -279i)), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-7122i, 0i), vec2<i32>(u_input.a, 5239i), vec2<i32>(var_0.e, var_0.e)))) & var_0.e);
}

