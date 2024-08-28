struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_3;

var<private> global2: array<f32, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = ~vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, 1u)) & 0u, u_input.c, 1u, ~u_input.e);
    var var_1 = Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(1i << (0u % 32u), 1i, 1i), abs(~vec3<i32>(u_input.a.x, u_input.a.x, 65096i))), -1510f);
    let var_2 = Struct_3(true);
    global0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(var_1.a.xy, vec2<i32>(reverseBits(19872i), _wgslsmith_mult_i32(-28387i, u_input.a.x)));
    let var_3 = Struct_1(vec3<i32>(var_1.a.x, -(i32(-1i) * -1i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, var_1.a.x), ~42033i) & 269i), var_1.b);
    return Struct_2(var_3, vec4<f32>(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1221f, var_3.b), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-var_3.b)))), _wgslsmith_f_op_f32(884f - -227f), _wgslsmith_f_op_f32(ceil(var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(floor(121f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(193f))))));
}

fn func_3() -> vec3<bool> {
    global1 = Struct_3(global1.a);
    global1 = Struct_3(firstTrailingBit(-u_input.a.x) == _wgslsmith_add_i32(u_input.a.x, 41193i));
    let var_0 = ((~u_input.a.x << (_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1881u, 0u, 28371u), vec3<u32>(u_input.e, 12020u, u_input.c))) % 32u)) & (i32(-1i) * -1i)) >> (9867u % 32u);
    var var_1 = max(vec4<i32>(1i, u_input.a.x, -u_input.a.x | (var_0 << (u_input.e % 32u)), 0i), reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 0i, -2147483647i), vec4<i32>(-3593i, -8713i, 28048i, 0i)), ~vec4<i32>(var_0, -2147483647i, 2147483647i, var_0)))) & -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(12116i, -9767i), u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, var_0), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(7895i, var_0))), vec4<i32>(func_2(vec3<f32>(-411f, 815f, global2[_wgslsmith_index_u32(11583u, 26u)]), -474f, 1521f).a.a.x, 1i, -var_0, -2333i));
    var var_2 = Struct_3(false);
    return !vec3<bool>(global1.a, !(true && global1.a), true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> i32 {
    var var_0 = u_input.d.yy;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c, global2[_wgslsmith_index_u32(9883u, 26u)], arg_0.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(241f, arg_1.b.x, arg_0.b.x)))) * arg_1.b.zww), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2(vec3<f32>(arg_1.c, -905f, -560f), arg_1.c, global2[_wgslsmith_index_u32(u_input.d.x, 26u)]).b.x)) + _wgslsmith_f_op_f32(step(-443f, _wgslsmith_f_op_f32(f32(-1f) * -695f)))), all(!select(vec4<bool>(true, arg_2.x, true, global1.a), vec4<bool>(arg_2.x, global1.a, false, global1.a), vec4<bool>(false, global1.a, false, true))))), _wgslsmith_f_op_f32(-729f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-820f, 890f))))).a;
    let var_2 = global1.a;
    var_0 = u_input.b.zx;
    var_0 = vec2<u32>(_wgslsmith_clamp_u32(var_0.x, ~var_0.x, (53213u << (firstLeadingBit(u_input.c) % 32u)) << (~u_input.b.x % 32u)), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.c), _wgslsmith_mod_u32(u_input.b.x, 35926u)), 4294967295u)));
    return ~(var_1.a.x << (abs(max(var_0.x, var_0.x)) % 32u));
}

fn func_5(arg_0: i32) -> Struct_2 {
    var var_0 = u_input.b;
    let var_1 = firstTrailingBit(~u_input.d) << (~(u_input.b.zxx << (~abs(vec3<u32>(u_input.c, 66334u, u_input.e)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2[_wgslsmith_index_u32(908u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]))) * vec2<f32>(global2[_wgslsmith_index_u32(~var_0.x, 26u)], -228f)))));
    let var_3 = select(_wgslsmith_sub_i32(u_input.a.x, func_4(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, -419f) * vec3<f32>(global2[_wgslsmith_index_u32(0u, 26u)], 842f, 274f)), _wgslsmith_f_op_f32(sign(var_2.x)), 473f), Struct_2(Struct_1(vec3<i32>(-16485i, 0i, 2147483647i), global2[_wgslsmith_index_u32(var_1.x, 26u)]), vec4<f32>(-1170f, 894f, var_2.x, -337f), _wgslsmith_f_op_f32(var_2.x - 120f)), select(vec3<bool>(true, true, true), vec3<bool>(false, global1.a, global1.a), true))), -36842i, global1.a);
    global1 = Struct_3(!((0i != _wgslsmith_mult_i32(-34772i, u_input.a.x)) & true));
    return func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 26u)], -1150f, -124f)))))))), _wgslsmith_f_op_f32(step(var_2.x, global2[_wgslsmith_index_u32(var_1.x, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + global2[_wgslsmith_index_u32(~47128u, 26u)])));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 1u), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 26u)])), global2[_wgslsmith_index_u32(4294967295u, 26u)]))));
    let var_1 = arg_0;
    global2 = array<f32, 26>();
    let var_2 = u_input.b | min(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, ~(~vec4<u32>(48842u, 31306u, 0u, 77213u))), countOneBits(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(0u, 0u, u_input.c, u_input.e)), vec4<u32>(1u, u_input.e, u_input.c, 1u) | u_input.b)));
    global2 = array<f32, 26>();
    return func_5(func_4(Struct_2(Struct_1(min(vec3<i32>(0i, u_input.a.x, 0i), vec3<i32>(-2147483647i, 35691i, u_input.a.x)), -514f), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(1000f, global2[_wgslsmith_index_u32(var_2.x, 26u)], var_1.a)), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(var_2.x, 26u)], -715f)), _wgslsmith_f_op_f32(-var_0.x)), 916f), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(107722u, 26u)], var_0.x, global2[_wgslsmith_index_u32(0u, 26u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 2008f, var_0.x) * vec3<f32>(-1362f, 464f, global2[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(13998u, 26u)])), -944f), func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, ~4294967295u), 26u)])), -1246f);
    var var_1 = Struct_3(global1.a);
    var var_2 = 261f;
    var var_3 = select(vec3<i32>(-2147483647i, max(53866i, _wgslsmith_mult_i32(~(-34517i), abs(u_input.a.x))), -u_input.a.x), vec3<i32>(u_input.a.x, 57358i, 1815i), var_1.a);
    var var_4 = u_input.d.xx;
    let var_5 = func_1(Struct_3(true), true);
    let var_6 = ~reverseBits(~(~(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))));
    global1 = Struct_3(all(select(!(!vec2<bool>(true, global1.a)), !vec2<bool>(var_1.a, global1.a), vec2<bool>(true, false & var_1.a))));
    var_4 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(var_6.xy, min(~(~var_6.yy), ~(~vec2<u32>(4294967295u, var_4.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(18730u | var_6.x, 1u), abs(select(u_input.b.yw, vec2<u32>(var_4.x, 4294967295u), var_1.a)))), ~vec2<u32>(reverseBits(var_4.x), reverseBits(var_6.x)) >> (select(vec2<u32>(4294967295u, 49404u), ~vec2<u32>(73591u, 1u) >> ((var_6.zy << (vec2<u32>(1u, var_4.x) % vec2<u32>(32u))) % vec2<u32>(32u)), var_1.a) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(func_5(func_5(53225i).a.a.x).a.a.x)), var_5.b.yzy, u_input.a.x, ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, var_4.x), var_6.zz), _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, 0u), vec2<u32>(var_4.x, 32380u))), ~(u_input.b.zz ^ vec2<u32>(1u, var_6.x))));
}

