struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<Struct_2, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = countOneBits(-17404i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, 618f, arg_0.x)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(525f, _wgslsmith_f_op_f32(-1086f - 1423f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(622f)), arg_0.x))), false)) + vec3<f32>(var_1.x, -1069f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(115f * var_1.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 585f))));
    var_1 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - arg_0.x))), 580f);
    var_0 = 0i;
    return vec4<bool>(true, !global0.x, false, _wgslsmith_f_op_f32(max(1439f, var_1.x)) == var_1.x);
}

fn func_2(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = !func_3(vec2<f32>(-767f, -295f), global2[_wgslsmith_index_u32(arg_0.x, 12u)]);
    global2 = array<Struct_2, 12>();
    var var_1 = 30625i;
    var var_2 = Struct_1(select(vec4<u32>(u_input.d.x, 1u, u_input.b, ~28604u), ~(~vec4<u32>(30875u, u_input.c.x, 9443u, 41080u)), all(!(!vec4<bool>(var_0.x, false, false, global0.x)))), arg_0.x, select(var_0.zzz, vec3<bool>(true, !all(vec3<bool>(true, true, var_0.x)), !all(vec2<bool>(true, false))), !vec3<bool>(var_0.x && global0.x, !var_0.x, global0.x | false)), ~u_input.b);
    global2 = array<Struct_2, 12>();
    return global0.xx;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global0 = select(select(select(vec3<bool>(all(vec4<bool>(false, arg_0.a.c.x, false, true)), false, true), vec3<bool>(true, true, true), arg_1), arg_0.a.c, select(vec3<bool>(arg_0.a.c.x, func_3(vec2<f32>(-439f, 1170f), arg_0).x, !arg_2.c.x), vec3<bool>(arg_1.x, arg_1.x, !arg_2.c.x), arg_0.a.c)), vec3<bool>((select(4294967295u, 4294967295u, arg_0.a.c.x) ^ ~1u) != _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 4294967295u), arg_2.b), false, func_2(vec2<u32>(22905u, 4294967295u) & ~arg_0.a.a.xw).x), all(!vec4<bool>(select(true, false, arg_1.x), !arg_0.a.c.x, false, true)));
    let var_0 = global1[_wgslsmith_index_u32(~arg_3.x, 23u)];
    let var_1 = Struct_1(abs(~arg_0.a.a), ~(~1u & _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.a.a.zxw, vec3<u32>(arg_3.x, 71745u, 30461u)), ~vec3<u32>(42672u, u_input.d.x, var_0.a.x))), func_3(vec2<f32>(1f, 1889f), global2[_wgslsmith_index_u32(arg_2.b, 12u)]).wwy, arg_0.a.b);
    var var_2 = Struct_1(arg_0.a.a, 8710u, vec3<bool>(true, !arg_1.x, any(var_0.c)), _wgslsmith_clamp_u32(~abs(var_0.a.x), 27182u, arg_3.x));
    let var_3 = true;
    return Struct_2(Struct_1(arg_2.a, ~_wgslsmith_mod_u32(~arg_0.a.b, abs(57294u)), vec3<bool>(global0.x & true, !(4294967295u >= var_0.b), false), arg_3.x));
}

fn func_1() -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(u_input.d, ~countOneBits(u_input.c)) | u_input.d.x, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.a, ~u_input.d.x)), _wgslsmith_mult_u32(select(abs(35250u), _wgslsmith_mod_u32(u_input.c.x, 0u), global0.x), 4534u))), 23u)];
    let var_1 = func_4(Struct_2(Struct_1(reverseBits(~var_0.a), firstLeadingBit(~0u), !vec3<bool>(global0.x, var_0.c.x, global0.x), var_0.d)), vec3<bool>(any(func_2(vec2<u32>(u_input.b, 0u) & u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -576f) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(453f)), _wgslsmith_f_op_f32(1986f * 670f))), countOneBits(-32723i) < _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -2147483647i), firstTrailingBit(vec2<i32>(26205i, 2147483647i)))), global1[_wgslsmith_index_u32(firstTrailingBit(abs(var_0.b)), 23u)], _wgslsmith_add_vec3_u32(var_0.a.xxy, vec3<u32>(~var_0.a.x, var_0.b, _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_clamp_u32(92702u, var_0.a.x, var_0.d), firstTrailingBit(1u)))));
    global2 = array<Struct_2, 12>();
    var var_2 = _wgslsmith_sub_vec3_u32(func_4(func_4(var_1, var_1.a.c, func_4(Struct_2(var_1.a), func_3(vec2<f32>(-305f, -699f), var_1).zxw, Struct_1(var_0.a, 4294967295u, var_1.a.c, 0u), ~vec3<u32>(4294967295u, var_1.a.b, 25878u)).a, var_0.a.wzw), func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(sign(-714f))), Struct_2(var_1.a)).xzy, func_4(Struct_2(var_1.a), !var_0.c, var_1.a, ~firstLeadingBit(vec3<u32>(1u, var_0.b, 11259u))).a, min(~_wgslsmith_div_vec3_u32(var_1.a.a.zwy, vec3<u32>(var_1.a.d, 23856u, 1u)), select(select(vec3<u32>(0u, u_input.b, var_0.b), var_1.a.a.zzw, vec3<bool>(true, var_0.c.x, false)), ~var_1.a.a.yzx, func_3(vec2<f32>(1000f, 1513f), Struct_2(Struct_1(var_1.a.a, u_input.c.x, var_1.a.c, 35686u))).x))).a.a.yyz, vec3<u32>(24059u, 33217u, 1u));
    var var_3 = vec2<i32>(select(abs(13116i >> (select(var_1.a.d, 4294967295u, var_0.c.x) % 32u)), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(11612i, 1i, -20597i)), _wgslsmith_add_i32(~0i, countOneBits(-1i))), false), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, -19500i)) | (55060i << (var_1.a.d % 32u)), 49626i));
    return StorageBuffer(-(~var_3.x), ~(~(~(~vec3<u32>(var_2.x, 1u, var_1.a.a.x)))), 77908i, ~(-2147483647i), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.e >> ((34852u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.b) | vec3<u32>(u_input.a, u_input.c.x, 8095u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, 8850u), vec3<u32>(u_input.a, 0u, u_input.c.x)))) % 32u));
    global1 = array<Struct_1, 23>();
    var var_1 = ~var_0;
    global1 = array<Struct_1, 23>();
    let var_2 = firstLeadingBit(vec3<u32>(~(~u_input.a ^ u_input.b), _wgslsmith_dot_vec2_u32(u_input.d, ~(~vec2<u32>(var_0, var_0))), ~20447u));
    let var_3 = global2[_wgslsmith_index_u32((firstTrailingBit(var_2.x) & 0u) & 1374u, 12u)];
    let var_4 = -49475i;
    let var_5 = vec4<bool>(!select(true, !all(vec2<bool>(false, false)), any(select(var_3.a.c, vec3<bool>(global0.x, global0.x, var_3.a.c.x), var_3.a.c))), !global0.x, true, global0.x);
    let x = u_input.a;
    s_output = func_1();
}

