struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(77778u, vec3<f32>(-984f, 489f, 1035f), vec4<f32>(298f, -1339f, 1022f, -1000f), false);

var<private> global1: u32;

var<private> global2: array<bool, 14> = array<bool, 14>(false, true, true, false, true, false, true, false, true, false, true, false, false, true);

var<private> global3: array<Struct_1, 29>;

var<private> global4: array<bool, 5> = array<bool, 5>(true, true, true, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(~u_input.b.x, 38176u)), 29u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(53123u, 1u), 29u)], u_input.e.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b.x, -358f) * _wgslsmith_f_op_f32(min(var_0.b.b.x, 1446f))))))));
    var var_2 = Struct_1(~abs(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, var_0.b.a, var_0.b.a, global0.a))) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a, 19254u, 4294967295u, global0.a), u_input.b), global0.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), 1561f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1998f - global0.b.x) + var_0.b.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.c.x))), _wgslsmith_f_op_f32(var_0.a.b.x * -563f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -1000f, -673f, 341f) + global0.c), select(!(!vec4<bool>(false, global0.d, false, false)), vec4<bool>(global4[_wgslsmith_index_u32(max(global0.a, global0.a), 5u)], true, !global2[_wgslsmith_index_u32(91005u, 14u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(global0.a, 14u)], global2[_wgslsmith_index_u32(global0.a, 14u)], true, global2[_wgslsmith_index_u32(4294967295u, 14u)])))), !(!(_wgslsmith_f_op_f32(var_0.a.b.x - global0.c.x) <= _wgslsmith_f_op_f32(round(331f)))));
    let var_3 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(var_0.a.b - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.zxz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.x, 815f, -806f), vec3<f32>(var_0.b.b.x, global0.b.x, 1434f), global4[_wgslsmith_index_u32(var_0.a.a, 5u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, 597f, -639f))), any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 14u)]))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, global0.b.x, var_0.a.b.x, 134f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), 1441f, _wgslsmith_f_op_f32(f32(-1f) * -104f), var_0.a.c.x)))), var_2.d & ((1u < _wgslsmith_dot_vec3_u32(u_input.b.zxy, u_input.b.xxy)) && ((i32(-1i) * -37911i) != (var_0.c | -1i))));
    var var_4 = !any(vec3<bool>(any(select(vec4<bool>(var_0.b.d, var_0.a.d, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], var_2.d), vec4<bool>(false, true, global4[_wgslsmith_index_u32(u_input.b.x, 5u)], false), vec4<bool>(var_2.d, global0.d, false, true))), true, _wgslsmith_f_op_f32(-var_3.c.x) >= global0.b.x));
    return !select(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(22763u, 14u)], true, global0.d, var_0.b.d))), vec4<bool>(select(global0.d, global4[_wgslsmith_index_u32(var_0.a.a, 5u)] & var_0.b.d, global4[_wgslsmith_index_u32(max(var_0.a.a, 4294967295u), 5u)]), global0.d && false, (u_input.c << (var_2.a % 32u)) >= (u_input.a.x >> (var_2.a % 32u)), all(vec4<bool>(var_2.d, var_3.d, var_2.d, true))), !(!vec4<bool>(true, false, var_3.d, false)));
}

fn func_2() -> Struct_2 {
    var var_0 = !select(vec4<bool>(!any(vec2<bool>(global2[_wgslsmith_index_u32(global0.a, 14u)], true)), global4[_wgslsmith_index_u32(min(28784u >> (global0.a % 32u), 4294967295u), 5u)], true, global0.d), vec4<bool>(any(func_3()), global0.d, true, global0.d), !select(all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], global0.d, true)), global2[_wgslsmith_index_u32(51592u, 14u)] & false, true));
    global1 = countOneBits(u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_mult_u32(global0.a, ~global0.a), global0.c.yyw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(trunc(global0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, -103f, global0.c.x) * vec4<f32>(global0.c.x, global0.c.x, 415f, global0.c.x))), select(!vec4<bool>(global2[_wgslsmith_index_u32(72771u, 14u)], var_0.x, global0.d, true), func_3(), vec4<bool>(true, false, false, true)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.b.x)), -930f, global0.c.x, _wgslsmith_f_op_f32(select(global0.b.x, global0.c.x, var_0.x))))), global0.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, -1613f)) - -1391f)), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(global0.c.x + -247f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(657f, global0.c.x, -942f)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -525f, -225f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(global0.b, vec3<f32>(187f, -1755f, global0.b.x), var_0.wwy)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(1460f + global0.c.x), global0.b.x), !(!global0.d)))));
    var var_3 = 1i & u_input.d.x;
    return Struct_2(Struct_1(~(1u & max(global0.a, var_1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.c.yxz)) - _wgslsmith_f_op_vec3_f32(-var_1.c.zxx)) * var_1.b), _wgslsmith_f_op_vec4_f32(var_1.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.c)) + vec4<f32>(global0.b.x, global0.c.x, var_2.x, 1202f))), false), Struct_1(_wgslsmith_mult_u32(firstTrailingBit(global0.a), u_input.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, 321f, -707f), vec3<f32>(var_2.x, var_2.x, var_1.b.x))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.x, var_1.c.x, global0.c.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) * vec4<f32>(var_2.x, 2280f, var_1.c.x, 1150f))), true), -(~(-u_input.a.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    return func_2().a;
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(select(reverseBits(0u), ~4294967295u, true), 29u)], func_4(45460u, func_2()), u_input.e.x);
    let var_1 = Struct_2(func_4(~32284u, func_2()), func_2().b, countOneBits(-reverseBits(_wgslsmith_add_i32(20500i, -2147483647i))));
    var_0 = func_2();
    var var_2 = -min(abs(vec4<i32>(-12736i, _wgslsmith_sub_i32(u_input.c, 2147483647i), -1i, firstLeadingBit(31029i))), vec4<i32>(-40184i, var_1.c, u_input.c, 12316i));
    let var_3 = ~(~(~(~vec2<u32>(0u, 98859u))));
    return vec2<f32>(-466f, 682f);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> StorageBuffer {
    global2 = array<bool, 14>();
    global1 = arg_1.b.a & ~countOneBits(global0.a);
    var var_0 = global0.a;
    global1 = arg_1.a.a;
    var_0 = ~(~(~arg_1.a.a));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(-1481f, -115f)) * vec2<f32>(arg_0.x, arg_1.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.c.x * _wgslsmith_f_op_f32(max(func_2().a.b.x, _wgslsmith_f_op_f32(min(arg_1.a.c.x, -1000f)))))), firstTrailingBit(arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(global0.a, 29u)];
    var var_1 = vec2<i32>(u_input.e.x, _wgslsmith_mod_i32(0i, u_input.d.x));
    let var_2 = global3[_wgslsmith_index_u32(0u, 29u)];
    let var_3 = global4[_wgslsmith_index_u32(4294967295u, 5u)];
    let var_4 = vec3<i32>(u_input.d.x, -852i, _wgslsmith_sub_i32(u_input.e.x, 33450i));
    let var_5 = select(false, select(var_2.d, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.zw), u_input.b.yy), 14u)], !(firstTrailingBit(108248u) > 11202u)), true);
    let var_6 = var_4;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -333f) + _wgslsmith_f_op_vec2_f32(func_1(global3[_wgslsmith_index_u32(0u, 29u)]))), Struct_2(func_2().b, global3[_wgslsmith_index_u32(u_input.b.x, 29u)], u_input.d.x));
}

