struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, false, false, true, false, false, true, true, false, true, false, true, true, true, true);

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = (u_input.c < (u_input.b.x << (~(~global3.a.a.x) % 32u))) || !((global3.b.x >= (30324u << (global3.a.a.x % 32u))) && all(global2.c.zxz));
    var var_1 = ~u_input.a.yzz >> (vec3<u32>(_wgslsmith_mult_u32(min(_wgslsmith_div_u32(4294967295u, 11299u), 1u), global2.e.a.x), u_input.d.x, firstTrailingBit(12781u)) % vec3<u32>(32u));
    var_0 = !(!(!global2.a.c));
    global1 = array<bool, 16>();
    global3 = Struct_2(global2.e, select(~min(_wgslsmith_mod_vec3_u32(global2.b, global2.b), global3.b), global2.b, (global0.a.x << (global2.e.a.x % 32u)) < abs(global2.b.x)), select(vec4<bool>(global0.e.x, all(global2.c.zwz), all(global3.c.xw), global0.c), !(!select(vec4<bool>(global0.c, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(27606u, 16u)], global3.e.c, global0.e.x, true), global0.c)), min(global2.e.a.x, ~63013u) < _wgslsmith_div_u32(~global3.a.a.x, global0.a.x)), global2.d, Struct_1(vec2<u32>(abs(~global0.a.x), _wgslsmith_sub_u32(~global2.a.a.x, ~53176u)), true == ((var_1.x << (0u % 32u)) >= 27689i), true, vec4<f32>(global2.e.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-2278f, -221f, false)))), _wgslsmith_f_op_f32(sign(1000f)), -125f), !select(vec2<bool>(global3.e.e.x, global3.a.b), vec2<bool>(false, global3.c.x), global0.e)));
    return global0.c;
}

fn func_2() -> f32 {
    global3 = Struct_2(Struct_1(min(~vec2<u32>(0u, 66452u), global2.b.xx), false, func_3(_wgslsmith_f_op_f32(floor(-1106f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(global3.a.d, vec4<f32>(global3.d, 622f, global2.e.d.x, -832f))))), vec2<bool>(true, all(!global3.c))), ~global2.b, vec4<bool>(false, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0.a.x, _wgslsmith_mult_u32(u_input.c, u_input.c)), 16u)], true, !(23945i <= u_input.a.x)), 629f, global2.e);
    global1 = array<bool, 16>();
    let var_0 = Struct_3(u_input.a.x, u_input.c, vec4<u32>(abs(abs(global0.a.x)), global3.e.a.x, _wgslsmith_sub_u32(global3.b.x, _wgslsmith_mod_u32(reverseBits(37592u), u_input.d.x ^ 0u)), 1u), Struct_1(u_input.d, ~1u == u_input.d.x, !global3.a.e.x, global2.a.d, select(!(!global0.e), global0.e, any(select(vec3<bool>(global3.e.c, global1[_wgslsmith_index_u32(4294967295u, 16u)], true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true, global2.e.e.x), global1[_wgslsmith_index_u32(global3.e.a.x, 16u)])))));
    let var_1 = Struct_1(select(global0.a, firstTrailingBit(vec2<u32>(max(global3.a.a.x, global3.e.a.x), 1u)), true), true, global3.a.b, global2.e.d, select(!global0.e, var_0.d.e, vec2<bool>(u_input.d.x > abs(4294967295u), true)));
    global3 = Struct_2(Struct_1(vec2<u32>(global2.e.a.x, ~_wgslsmith_add_u32(global2.e.a.x, var_0.b)), ~(var_0.a << (u_input.b.x % 32u)) != ~var_0.a, !global2.e.c, vec4<f32>(_wgslsmith_f_op_f32(731f * var_0.d.d.x), 188f, global0.d.x, _wgslsmith_f_op_f32(var_0.d.d.x + -278f)), vec2<bool>(_wgslsmith_f_op_f32(1686f + var_1.d.x) >= _wgslsmith_div_f32(-309f, -147f), any(select(global2.c.zwx, global2.c.yyw, global0.e.x)))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(global2.a.a.x, global0.a.x, global3.b.x), global3.b & vec3<u32>(8182u, 129686u, global2.e.a.x))), global2.c, _wgslsmith_f_op_f32(global3.d - global3.a.d.x), Struct_1(firstTrailingBit(vec2<u32>(var_0.d.a.x, global3.b.x)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global2.b.yy, u_input.b), var_0.d.a) % vec2<u32>(32u)), true, true, _wgslsmith_f_op_vec4_f32(global2.e.d - var_0.d.d), global0.e));
    return _wgslsmith_f_op_f32(global3.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d - global0.d.x) + 889f) + 759f) * _wgslsmith_f_op_f32(max(global3.d, _wgslsmith_f_op_f32(-var_1.d.x)))));
}

fn func_1(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(787f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)) + _wgslsmith_f_op_f32(step(-1705f, _wgslsmith_f_op_f32(arg_0 - -201f)))), select(-1i, ~(-1i), global0.e.x) >= max(~u_input.a.x, -1i))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1389f)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_1(select(~min(global2.a.a, max(u_input.b, arg_0.a)), max(global2.a.a, abs(~arg_0.a)), arg_1 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - _wgslsmith_f_op_f32(-arg_3.x))), true, select(all(global3.a.e) || false, true, global0.b), _wgslsmith_f_op_vec4_f32(global3.e.d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global0.d.x, arg_1, 872f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.d, vec4<f32>(arg_1, -1427f, arg_0.d.x, 327f))) + _wgslsmith_f_op_vec4_f32(-global3.a.d)))), vec2<bool>(false, arg_0.a.x == (90539u | (u_input.d.x & global0.a.x))));
    var var_1 = !select(global2.e.e, global3.a.e, true);
    global2 = Struct_2(Struct_1(select(~var_0.a, u_input.d, !all(global3.c.yxz)), arg_0.b, select(true, var_1.x, any(!vec2<bool>(var_1.x, false))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.d.x, -1064f, 764f, global2.d))), vec2<bool>(true, true)), global2.b, select(vec4<bool>(!any(global3.c.wxy), (u_input.a.x ^ u_input.a.x) < -u_input.a.x, true, arg_0.c), global3.c, false), -1490f, Struct_1(vec2<u32>((arg_2 ^ 0u) >> (~global3.b.x % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(12568u, 0u, 10473u, 1u)), ~vec4<u32>(global2.b.x, 4294967295u, global0.a.x, arg_0.a.x))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * -277f) - -1374f) <= var_0.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.d)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(728f, global0.d.x, -445f, -327f) * vec4<f32>(arg_1, -506f, global3.d, 769f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, global3.e.d.x, arg_3.x)), select(global2.c, vec4<bool>(true, var_0.b, true, true), true)))), global2.e.e));
    global0 = global2.e;
    var var_2 = vec3<i32>(min(~2147483647i, i32(-1i) * -(~u_input.a.x)), -1i, -u_input.a.x);
    return var_1.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = select(vec2<bool>(any(!select(global3.c.xzz, global2.c.yzx, false)), global3.e.b), global2.e.e, vec2<bool>(any(select(select(global3.c.wzy, global2.c.wyw, vec3<bool>(true, true, global2.e.e.x)), vec3<bool>(global2.c.x, global3.e.e.x, arg_0.e.x), global3.c.zzz)), any(global3.c.yx)));
    let var_1 = global2.b;
    global3 = Struct_2(Struct_1(max(~reverseBits(var_1.xz), global2.a.a), global2.e.b, false, global0.d, !select(arg_1.e, !global0.e, global3.e.e)), ~(vec3<u32>(20488u & global3.a.a.x, 64438u & arg_1.a.x, 0u) | ((global2.b | vec3<u32>(arg_1.a.x, arg_1.a.x, 4294967295u)) & ~global2.b)), !vec4<bool>(select(all(global3.c.yzw), arg_0.c, !arg_1.e.x), global2.c.x, !select(false, true, false), func_3(_wgslsmith_f_op_f32(max(global2.a.d.x, 681f)))), global2.d, Struct_1(arg_1.a, !func_3(global0.d.x), false, arg_0.d, global2.e.e));
    global2 = Struct_2(Struct_1(min(vec2<u32>(_wgslsmith_clamp_u32(56949u, global0.a.x, 4294967295u), 10638u), ~var_1.zy << (reverseBits(vec2<u32>(0u, 46989u)) % vec2<u32>(32u))), select(select(any(global2.c), !global1[_wgslsmith_index_u32(arg_0.a.x, 16u)], any(vec4<bool>(false, false, false, arg_1.c))), true, true), !global3.a.b, arg_0.d, !arg_0.e), global3.b, global3.c, _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global0.d.x)), -394f))), Struct_1(~((vec2<u32>(global3.b.x, 67215u) & arg_1.a) << (~vec2<u32>(u_input.d.x, global0.a.x) % vec2<u32>(32u))), any(select(select(vec4<bool>(false, false, false, true), global2.c, var_0.x), select(vec4<bool>(true, global0.e.x, var_0.x, false), vec4<bool>(false, var_0.x, global3.a.e.x, global2.c.x), vec4<bool>(arg_0.e.x, var_0.x, true, arg_0.b)), !vec4<bool>(global0.e.x, false, arg_1.e.x, true))), global2.a.c, vec4<f32>(global0.d.x, 1419f, 2149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1784f - global3.a.d.x))), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], true), select(!var_0, vec2<bool>(global0.c, true), !var_0.x), global3.c.zy)));
    global3 = Struct_2(arg_0, ~vec3<u32>(firstTrailingBit(1u), 5774u, ~4294967295u), global3.c, -787f, arg_1);
    return Struct_2(arg_0, vec3<u32>(firstLeadingBit(reverseBits(1u)), ~arg_0.a.x, u_input.b.x), !vec4<bool>(any(global3.c), arg_1.b, true, false), _wgslsmith_div_f32(238f, arg_1.d.x), Struct_1(arg_1.a, !global1[_wgslsmith_index_u32(~(~global3.a.a.x), 16u)], !all(select(global0.e, vec2<bool>(false, false), arg_0.c)), _wgslsmith_f_op_vec4_f32(-global2.e.d), vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(vec2<u32>(_wgslsmith_sub_u32(~global0.a.x, 115330u), ~(~global2.e.a.x)), true, func_4(Struct_1(~global2.b.zz, true, !global3.c.x, global0.d, select(global3.e.e, global2.c.xx, global1[_wgslsmith_index_u32(global2.b.x, 16u)])), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(ceil(global2.d)))), ~(global3.b.x << (global2.e.a.x % 32u)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.d.x, 1204f, 1552f), vec3<f32>(global0.d.x, -576f, global2.a.d.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(347f, global0.d.x), _wgslsmith_f_op_f32(-2168f + global0.d.x), global0.d.x, -178f)), !vec2<bool>(global2.e.b, true)), Struct_1(vec2<u32>(global3.a.a.x, _wgslsmith_div_u32(global3.a.a.x, select(u_input.b.x, global0.a.x, true))), all(vec2<bool>(true, global2.a.b)), func_3(global3.d), vec4<f32>(-1523f, -1981f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.d.x, global0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.d, 968f)) + global0.d.x)), select(global2.e.e, global3.e.e, global3.c.ww)), abs(u_input.a.xzz));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(global3.e.d.xzy))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-555f, -805f, var_0.a.d.x) * global0.d.zzz))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) - _wgslsmith_f_op_f32(324f * global3.e.d.x)), var_0.e.d.x, global0.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_0.e.d, func_5(global2.e, global3.e, vec3<i32>((u_input.a.x & u_input.a.x) << (_wgslsmith_add_u32(global3.e.a.x, 93028u) % 32u), _wgslsmith_add_i32(7984i, ~1i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, 27388i), ~(-1i), -46995i))).e.a, ~vec3<u32>(global2.a.a.x, 4294967295u >> (global3.a.a.x % 32u), 65043u));
}

