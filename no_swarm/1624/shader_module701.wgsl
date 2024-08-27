struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(0i, 0i, 25187i, -51326i, 2147483647i, -13808i, -59152i, 6495i, 2147483647i, 1589i, 20790i, -22829i, -7628i, 0i, 2147483647i, -21894i, 1i, 2147483647i, 32636i, i32(-2147483648), -46770i, 18484i, -4960i);

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), -1991f, true, i32(-2147483648));

var<private> global2: array<f32, 1> = array<f32, 1>(428f);

var<private> global3: vec3<u32> = vec3<u32>(0u, 10852u, 52210u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    global0 = array<i32, 23>();
    var var_0 = arg_0.a.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1805f, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-1000f - arg_0.a.b), _wgslsmith_f_op_f32(arg_0.a.b + -1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, global2[_wgslsmith_index_u32(22768u, 1u)], 1012f, 491f))))) * vec4<f32>(104f, -1527f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(global3.x), 1u)]), 1355f));
    global1 = Struct_1(abs(-1i), _wgslsmith_f_op_f32(floor(arg_0.a.b)), _wgslsmith_clamp_u32(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 92195u, 25185u, arg_1), min(vec4<u32>(global3.x, u_input.a, global3.x, 526u), vec4<u32>(u_input.b, 30538u, global3.x, global3.x))), 11718u) == countOneBits(1u), ~global0[_wgslsmith_index_u32(u_input.a, 23u)]);
    let var_2 = arg_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b + _wgslsmith_f_op_f32(round(-350f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> vec2<bool> {
    return select(arg_0.ww, !(!arg_0.xw), arg_0.xw);
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(!(!(!select(vec4<bool>(false, true, global1.c, global1.c), vec4<bool>(global1.c, false, true, global1.c), global1.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(global1.a, -954f, global1.c, -1i)), u_input.b, global2[_wgslsmith_index_u32(4294967295u, 1u)], vec4<bool>(false, global1.c, true, global1.c))) - _wgslsmith_f_op_f32(811f - global1.b)), global1.b, !(!global1.c))), _wgslsmith_f_op_f32(-649f - -1238f))));
    global3 = vec3<u32>(~global3.x, u_input.a, abs(u_input.a));
    global0 = array<i32, 23>();
    global2 = array<f32, 1>();
    var var_1 = ~21604i;
    return Struct_1(i32(-1i) * -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global3.x, 23u)], reverseBits(global0[_wgslsmith_index_u32(u_input.a, 23u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(31150u, 1u)] * -1317f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, global2[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1274f + global1.b)), any(vec2<bool>(false, var_0.x)))) != global2[_wgslsmith_index_u32(global3.x ^ ~u_input.b, 1u)], -2147483647i);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_2(func_2());
    var var_1 = Struct_3(Struct_1(_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(0i, 2147483647i, -11095i), var_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b)))), !any(!vec3<bool>(false, false, arg_2.x)), -19162i));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -207f)))));
    global3 = countOneBits(~vec3<u32>(abs(_wgslsmith_clamp_u32(0u, 1u, 15066u)), ~(~1u), firstLeadingBit(52876u)));
    global1 = Struct_1(u_input.c, -1243f, false, _wgslsmith_sub_i32(-27085i, var_0.a.d));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(-61919i, _wgslsmith_f_op_f32(-var_2.x), !arg_0, -1i)), 9774u, _wgslsmith_f_op_f32(sign(var_1.a.b)), !arg_2))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(any(select(vec3<bool>(global1.c, true, false), vec3<bool>(global1.c, false, true), true)), Struct_3(func_2()), vec4<bool>(!global1.c, true, global1.b != -1600f, global1.c != true)))));
    global0 = array<i32, 23>();
    var var_1 = 1i;
    let var_2 = vec3<bool>(false, true, global1.c);
    global1 = func_2();
    return vec3<u32>(~100005u, ~(~48617u), 77515u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = max(func_1(vec3<i32>(select(global0[_wgslsmith_index_u32(global3.x << (32338u % 32u), 23u)], select(0i, 0i, false), select(global1.c, global1.c, true)), u_input.d.x, 54839i)), vec3<u32>(~(global3.x ^ 15151u), u_input.a, global3.x) | ~select(vec3<u32>(1u, global3.x, 35042u), vec3<u32>(u_input.b, 20304u, 0u), global1.c));
    let var_0 = Struct_1(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~(~global3.x)), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28093u, 1u)]))) + 377f)), global1.c, firstTrailingBit(u_input.c));
    let var_1 = global3.zz;
    let var_2 = _wgslsmith_f_op_f32(-var_0.b);
    global3 = (~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global3.x, var_1.x), vec3<u32>(1u, global3.x, global3.x))) & _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(global3.x, var_1.x, var_1.x)), select(vec3<u32>(98974u, u_input.b, global3.x), vec3<u32>(8745u, u_input.a, global3.x), vec3<bool>(false, false, false))), vec3<u32>(u_input.a, 40404u, 1u) << (countOneBits(vec3<u32>(101018u, 27265u, 1u)) % vec3<u32>(32u)))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(global3.yx, global3.zy), var_1.x << (var_1.x % 32u), u_input.a) % vec3<u32>(32u));
    var var_3 = select(!(!select(vec3<bool>(global1.c, false, global1.c), !vec3<bool>(true, global1.c, true), func_4(vec4<bool>(var_0.c, global1.c, false, global1.c), global2[_wgslsmith_index_u32(1u, 1u)]).x)), vec3<bool>(true, any(select(!vec4<bool>(var_0.c, global1.c, false, var_0.c), !vec4<bool>(global1.c, true, true, true), true)), global1.c), select(vec3<bool>(true, any(vec4<bool>(global1.c, var_0.c, true, global1.c)), any(!vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c))), !(!(!vec3<bool>(var_0.c, false, false))), !vec3<bool>(true | global1.c, !var_0.c, global1.c)));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_0.d, u_input.d.x), _wgslsmith_sub_u32(max(0u, var_1.x), var_1.x), 22839i, ~countOneBits(1u), var_2);
}

