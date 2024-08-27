struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(11019i, 348i, -961i, 63354i), vec4<i32>(-1i, 1i, -23265i, 47871i), vec4<i32>(43641i, -1i, 2443i, 2147483647i), vec4<i32>(-1i, 2581i, 0i, -73624i), vec4<i32>(-1i, 1i, -20539i, -1i), vec4<i32>(38482i, 17815i, -1i, -23690i), vec4<i32>(-49114i, 0i, -34845i, 2147483647i), vec4<i32>(2147483647i, -1i, 19092i, 33444i), vec4<i32>(1i, 0i, 0i, -1i), vec4<i32>(-1i, -1i, -26449i, 2147483647i), vec4<i32>(0i, 64669i, 0i, 2147483647i), vec4<i32>(-20372i, -10860i, 2147483647i, -43130i), vec4<i32>(-12139i, i32(-2147483648), -62941i, 1i), vec4<i32>(1i, -5749i, 1i, 1i), vec4<i32>(i32(-2147483648), -28774i, 0i, 0i), vec4<i32>(i32(-2147483648), 76906i, 2147483647i, i32(-2147483648)), vec4<i32>(44197i, -883i, -11694i, 33687i), vec4<i32>(22912i, -1i, -17270i, i32(-2147483648)), vec4<i32>(13085i, 0i, 1i, -1i), vec4<i32>(-6416i, 6964i, 2147483647i, -312i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), 12891i, -28506i, -23674i));

var<private> global1: Struct_2;

var<private> global2: vec4<bool>;

var<private> global3: f32 = -798f;

var<private> global4: array<bool, 11> = array<bool, 11>(false, false, true, true, true, true, false, false, true, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = -1000f;
    var var_1 = ~_wgslsmith_add_i32(max(-select(12033i, -32678i, true), select(abs(11488i), _wgslsmith_mult_i32(1i, -18969i), false)), -1i);
    var var_2 = arg_0;
    var_2 = arg_0;
    let var_3 = reverseBits(vec2<i32>(6035i, 10139i));
    return select(select(!select(vec4<bool>(global2.x, arg_0.a, global1.a, var_2.a), select(vec4<bool>(false, true, true, global1.a), vec4<bool>(true, var_2.a, true, true), vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.b, 11u)], global4[_wgslsmith_index_u32(arg_0.c.a, 11u)])), select(vec4<bool>(arg_0.a, global2.x, global2.x, global2.x), vec4<bool>(false, true, false, false), vec4<bool>(true, global1.a, false, false))), select(!(!vec4<bool>(global4[_wgslsmith_index_u32(1u, 11u)], true, arg_0.a, var_2.a)), select(vec4<bool>(global2.x, false, false, global1.a), select(vec4<bool>(global2.x, arg_0.a, arg_0.a, true), vec4<bool>(global4[_wgslsmith_index_u32(0u, 11u)], true, global4[_wgslsmith_index_u32(0u, 11u)], true), true), vec4<bool>(false, false, arg_0.a, true)), global1.a), true), select(!(!select(vec4<bool>(global2.x, false, var_2.a, false), vec4<bool>(true, var_2.a, var_2.a, global1.a), false)), vec4<bool>(true, !global1.a, !global2.x, !(false | var_2.a)), vec4<bool>(false, !select(false, false, global1.a), true, global1.c.b.x < -1698f)), select(vec4<bool>(reverseBits(var_3.x) > -61834i, any(global2.yx), false, any(vec2<bool>(false, true))), vec4<bool>(var_2.a, any(select(vec2<bool>(true, false), global2.zz, vec2<bool>(global4[_wgslsmith_index_u32(global1.e.a, 11u)], global2.x))), !select(global2.x, true, arg_0.a), _wgslsmith_clamp_u32(1u, u_input.b, 0u) > ~u_input.a), arg_0.a));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c.b.x - -396f), arg_0.c.b.x, !any(vec3<bool>(true, global4[_wgslsmith_index_u32(reverseBits(global1.d.a), 11u)], true))));
    let var_0 = !(!select(vec3<bool>(global4[_wgslsmith_index_u32(countOneBits(4294967295u), 11u)], any(vec4<bool>(false, true, false, false)), true), !vec3<bool>(true, arg_0.a, global4[_wgslsmith_index_u32(4294967295u, 11u)]), select(global2.yzz, global2.zwx, global2.zxy)));
    global2 = select(vec4<bool>((global1.a & any(vec4<bool>(var_0.x, global2.x, var_0.x, false))) & true, global4[_wgslsmith_index_u32(~firstTrailingBit(26565u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.a, 42388u, 78975u), ~vec3<u32>(arg_0.e.a, arg_0.e.a, u_input.b)) % 32u), 11u)], any(func_3(Struct_2(global1.a, -248f, Struct_1(global1.d.a, arg_0.c.b), Struct_1(arg_0.d.a, global1.c.b), Struct_1(1u, global1.e.b)))), true), vec4<bool>(!all(var_0), !(!all(vec4<bool>(false, true, global1.a, false))), any(vec4<bool>(var_0.x, var_0.x, arg_0.a, true)) && any(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 11u)], global2.x, arg_0.a, false)), false), all(!(!vec2<bool>(global1.a, false))) & true);
    global2 = vec4<bool>(any(func_3(arg_0).zw), true, true, !(abs(1u) != select(firstTrailingBit(u_input.a), arg_0.c.a, false)));
    var var_1 = true != ((_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, 16296i), reverseBits(1089i)) < arg_1.x) != ((global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.a, arg_0.d.a, global1.c.a), vec3<u32>(24712u, global1.d.a, 3278u)), 11u)] && select(global4[_wgslsmith_index_u32(1u, 11u)], arg_0.a, global4[_wgslsmith_index_u32(arg_0.d.a, 11u)])) && any(!vec3<bool>(true, var_0.x, global4[_wgslsmith_index_u32(global1.c.a, 11u)]))));
    return arg_0;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    let var_0 = arg_2.c.b.x;
    global1 = func_2(arg_2, reverseBits(min(vec3<i32>(-14249i, arg_1.x, 1i) >> (arg_0.zyz % vec3<u32>(32u)), vec3<i32>(arg_1.x, arg_1.x, 2147483647i))) ^ max(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x) >> (arg_0.xyy % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 4483i), vec3<i32>(arg_1.x, -2147483647i, 1i))), -(~vec3<i32>(arg_1.x, arg_1.x, arg_1.x))));
    var var_1 = arg_2;
    global1 = arg_2;
    global0 = array<vec4<i32>, 22>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 * 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 11u)], false, false & global4[_wgslsmith_index_u32(u_input.a, 11u)], true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.b)), global1.b) - _wgslsmith_f_op_f32(1489f - _wgslsmith_f_op_f32(step(-1115f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.a, 59520u, 0u, u_input.a), vec2<i32>(21598i, -2147483647i), Struct_2(var_0.x, global1.e.b.x, Struct_1(1u, vec4<f32>(global1.e.b.x, global1.c.b.x, 1187f, global1.e.b.x)), global1.e, global1.c), var_0.yx)), -879f)))));
    let var_2 = ~(vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(~(~u_input.a), 22u)]);
    var var_3 = func_2(Struct_2(!func_2(Struct_2(var_0.x, 705f, Struct_1(global1.e.a, vec4<f32>(-247f, global1.d.b.x, var_1, 1527f)), global1.d, global1.c), var_2.xww).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) - var_1), Struct_1(~u_input.b, _wgslsmith_f_op_vec4_f32(global1.c.b + global1.d.b)), Struct_1(func_2(Struct_2(false, -404f, Struct_1(global1.c.a, vec4<f32>(var_1, -202f, global1.c.b.x, 1460f)), Struct_1(5119u, vec4<f32>(497f, -1343f, var_1, 259f)), Struct_1(77732u, vec4<f32>(231f, global1.b, -2238f, -1000f))), -var_2.xzy).d.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.d.b), _wgslsmith_f_op_vec4_f32(global1.c.b * global1.e.b), var_2.x > var_2.x))), Struct_1(global1.e.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e.b + vec4<f32>(-420f, global1.b, var_1, 1077f))))), -(var_2.xzx << (abs(~vec3<u32>(1u, 0u, 1u)) % vec3<u32>(32u))));
    let var_4 = global1.d;
    let var_5 = func_2(func_2(Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.b.x)) + _wgslsmith_f_op_f32(exp2(global1.e.b.x))), func_2(Struct_2(global4[_wgslsmith_index_u32(4294967295u, 11u)], global1.e.b.x, var_3.d, Struct_1(u_input.a, global1.c.b), Struct_1(var_3.e.a, vec4<f32>(-235f, var_3.c.b.x, 910f, var_3.d.b.x))), vec3<i32>(var_2.x, -992i, var_2.x)).c, Struct_1(u_input.b, var_4.b), var_3.d), var_2.zxz), var_2.zxx);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_2(Struct_2(true, var_5.c.b.x, global1.d, global1.d, var_5.d), abs(-vec3<i32>(var_2.x, 2147483647i, 0i))).e.b.x)) * -143f);
    let var_6 = select(select(select(vec3<bool>(true, var_3.a, true), !vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 11u)], true), true), select(vec3<bool>(true || global2.x, true, !var_0.x), global2.wxy, var_0.yxz), !func_3(Struct_2(var_3.a, var_1, Struct_1(1u, var_3.d.b), global1.d, Struct_1(1u, var_4.b))).xzz), global2.xxw, !select(var_0.yzz, !func_3(Struct_2(global4[_wgslsmith_index_u32(var_3.e.a, 11u)], -335f, Struct_1(var_5.c.a, vec4<f32>(1587f, -517f, var_4.b.x, var_1)), Struct_1(var_5.e.a, var_3.d.b), Struct_1(0u, global1.d.b))).xyz, var_0.x));
    let var_7 = func_2(var_5, firstLeadingBit(var_2.zxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_7.c.b.zz - vec2<f32>(-1173f, -513f)), vec2<f32>(-236f, -1593f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1003f, global1.c.b.x)), _wgslsmith_f_op_vec2_f32(select(global1.c.b.zx, vec2<f32>(var_3.d.b.x, var_4.b.x), global1.a)), func_3(var_5).xx)), any(!vec2<bool>(var_3.a, var_3.a))))), var_4.b.x);
}

