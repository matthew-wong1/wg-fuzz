struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<bool, 21>;

var<private> global2: bool = true;

var<private> global3: vec2<u32>;

var<private> global4: f32 = 1039f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> bool {
    var var_0 = -arg_1.c.b.c.zwy;
    var var_1 = _wgslsmith_sub_i32(-2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1682i, -u_input.a, var_0.x), select(~u_input.c, u_input.c, !arg_0.x)));
    let var_2 = arg_1.b;
    let var_3 = global3.x;
    let var_4 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1.d.x)), 1246f)) - _wgslsmith_f_op_f32(step(-655f, _wgslsmith_f_op_f32(select(arg_1.c.a.x, arg_1.a.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(trunc(arg_1.d.x))))), _wgslsmith_div_f32(-655f, arg_1.c.a.x)), arg_1.b, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.d.x, arg_1.d.x, arg_1.d.x), arg_1.a.xzy)) + _wgslsmith_f_op_vec3_f32(arg_1.a.xyw - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1250f, 180f, arg_1.d.x), arg_1.c.a)))), var_2, var_2, select(!(!vec3<bool>(var_2.b.x, var_2.b.x, arg_1.c.b.b.x)), select(select(arg_1.c.d, vec3<bool>(var_2.b.x, false, arg_0.x), arg_0.zzw), arg_0.wyw, select(arg_1.c.d, arg_1.c.d, false)), vec3<bool>(all(vec2<bool>(false, true)), false, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1908f, -661f) * arg_1.a.x)), _wgslsmith_f_op_vec2_f32(sign(arg_1.d)));
    return all(!(!arg_1.b.b));
}

fn func_2() -> vec3<bool> {
    global2 = true;
    var var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2098f)), _wgslsmith_f_op_f32(f32(-1f) * -1301f)), 227f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(385f + -2073f), 1000f))), 944f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -336f)), vec2<bool>(true, true)))));
    global4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -404f)))) + var_1.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    return select(!select(vec3<bool>(any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(global3.x, 21u)])), true, global1[_wgslsmith_index_u32(select(0u, global3.x, global1[_wgslsmith_index_u32(u_input.b, 21u)]), 21u)]), vec3<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(51181u, 21u)])), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.x, 0u), 21u)], func_3(vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)]), Struct_3(vec4<f32>(-1000f, 305f, -724f, var_0.x), Struct_1(vec3<u32>(39638u, u_input.b, global3.x), vec2<bool>(false, false), vec4<i32>(u_input.a, u_input.a, -2147483647i, 1i), vec2<u32>(global3.x, 15074u)), Struct_2(vec3<f32>(var_1.x, var_0.x, 1000f), Struct_1(vec3<u32>(20217u, 53533u, u_input.d), vec2<bool>(true, true), vec4<i32>(33034i, -9118i, u_input.a, u_input.a), vec2<u32>(25576u, 9716u)), Struct_1(vec3<u32>(37986u, 1u, global3.x), vec2<bool>(false, global1[_wgslsmith_index_u32(global3.x, 21u)]), vec4<i32>(u_input.a, 1i, u_input.a, -29786i), vec2<u32>(1u, global3.x)), vec3<bool>(true, false, false), 642f), var_1))), select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false, false), !vec3<bool>(global1[_wgslsmith_index_u32(39706u, 21u)], global1[_wgslsmith_index_u32(13782u, 21u)], true), vec3<bool>(true, false, false))), select(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], false))), !select(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(83590u, 21u)], true), global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(global3.x, 21u)], true), !global1[_wgslsmith_index_u32(1u, 21u)]), global1[_wgslsmith_index_u32(4294967295u, 21u)]), !select(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 21u)], false, global1[_wgslsmith_index_u32(u_input.d, 21u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(36294u, 21u)], global1[_wgslsmith_index_u32(56568u, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(16227u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)])), !select(vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 21u)], true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(56112u, 21u)], true), global1[_wgslsmith_index_u32(u_input.d, 21u)]), vec3<bool>(!global1[_wgslsmith_index_u32(global3.x, 21u)], !global1[_wgslsmith_index_u32(global3.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)])));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -545f, arg_1.x)) - vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(arg_1.x * -822f), _wgslsmith_f_op_f32(1000f + -1052f), _wgslsmith_f_op_f32(sign(450f))))), Struct_1(vec3<u32>(u_input.b, 1u, ~global3.x & ~global3.x), !(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(global3.x, 21u)]))), _wgslsmith_div_vec4_i32(-min(vec4<i32>(-10445i, 52530i, u_input.c.x, 1968i), vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, u_input.c.x, -26347i, u_input.c.x), vec4<i32>(1i, 64118i, arg_2, arg_2))), ~vec2<u32>(~1u, 12979u)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(423f, 1096f, 557f)), Struct_1(countOneBits(vec3<u32>(u_input.d, 0u, 1u) | vec3<u32>(global3.x, 0u, global3.x)), vec2<bool>(all(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 21u)], true, false)), global1[_wgslsmith_index_u32(global3.x, 21u)] & true), ~(-vec4<i32>(1i, u_input.c.x, 0i, 2175i)), min(~vec2<u32>(1u, u_input.b), countOneBits(vec2<u32>(1u, 18659u)))), Struct_1(select(firstTrailingBit(vec3<u32>(global3.x, u_input.d, global3.x)), ~vec3<u32>(global3.x, 37923u, 1u), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 21u)], global1[_wgslsmith_index_u32(u_input.d, 21u)], false), false)), arg_0.yy, -(~vec4<i32>(u_input.c.x, arg_2, arg_2, 228i)), vec2<u32>(u_input.b, 4294967295u)), func_2(), -435f), vec2<f32>(785f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-739f)) - _wgslsmith_f_op_f32(sign(2248f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-603f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(var_0.a));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - var_0.a.x) + 624f) + _wgslsmith_f_op_f32(-262f * _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + var_1.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1093f));
    let var_2 = 124f;
    let var_3 = var_0.c;
    return var_0.c.b;
}

fn func_1() -> Struct_1 {
    global4 = -630f;
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 964f, 2082f)) - vec3<f32>(1324f, -236f, _wgslsmith_f_op_f32(sign(-1000f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(max(1579f, 890f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(990f))))), func_4(!func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2118f, 1186f))))), _wgslsmith_sub_i32(reverseBits(u_input.a), _wgslsmith_dot_vec2_i32(u_input.c.xy << (vec2<u32>(29549u, 26845u) % vec2<u32>(32u)), vec2<i32>(u_input.c.x, -3630i)))), Struct_1(reverseBits(~select(vec3<u32>(1u, 9350u, global3.x), vec3<u32>(global3.x, u_input.d, u_input.d), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(23702u, 21u)], global1[_wgslsmith_index_u32(global3.x, 21u)]))), vec2<bool>(true, true), vec4<i32>(~(-1i), max(u_input.a, u_input.c.x), -1i, _wgslsmith_div_i32(-2147483647i, u_input.c.x)), abs(vec2<u32>(4294967295u, 0u) ^ func_4(vec3<bool>(global1[_wgslsmith_index_u32(18100u, 21u)], global1[_wgslsmith_index_u32(u_input.d, 21u)], true), vec2<f32>(2715f, 2501f), 47357i).a.xy)), vec3<bool>(global1[_wgslsmith_index_u32(~(~select(global3.x, global3.x, global1[_wgslsmith_index_u32(111961u, 21u)])), 21u)], any(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(32764u, 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 21u)], true), global1[_wgslsmith_index_u32(~global3.x, 21u)])), any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], false), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 21u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-764f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-151f, 325f, true)) + _wgslsmith_f_op_f32(-600f * -485f))), 707f));
    global0 = 1u;
    global0 = 80132u;
    let var_1 = !(!var_0.d);
    return Struct_1(~var_0.b.a, !(!var_1.yy), -reverseBits(_wgslsmith_sub_vec4_i32(var_0.b.c, var_0.c.c) | vec4<i32>(-7275i, u_input.c.x, -2147483647i, u_input.a)), ~vec2<u32>(_wgslsmith_mod_u32(abs(39544u), 4294967295u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.x;
    global0 = u_input.b;
    let var_0 = ~4294967295u;
    let var_1 = true;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, -129f, 459f))))), func_1(), func_4(vec3<bool>(func_4(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(global3.x, 21u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(493f, 275f)), abs(11703i)).b.x, u_input.c.x > abs(u_input.c.x), all(vec3<bool>(false, global1[_wgslsmith_index_u32(global3.x, 21u)], true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(963f, 538f))))))), abs(~(~(-2147483647i)))), select(!vec3<bool>(true, !global1[_wgslsmith_index_u32(0u, 21u)], var_1 && true), func_2(), global1[_wgslsmith_index_u32(1u, 21u)] || (~global3.x >= _wgslsmith_add_u32(var_0, global3.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-198f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(select(-944f, var_2.e, var_2.c.b.x))), var_2.a.x, -1197f, _wgslsmith_f_op_f32(f32(-1f) * -682f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.e)) * _wgslsmith_f_op_f32(-var_2.a.x)), 186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e - -314f) - _wgslsmith_f_op_f32(-var_2.e)), _wgslsmith_f_op_f32(-471f - var_2.e))), u_input.c, vec4<i32>(u_input.a, var_2.c.c.x, 2147483647i, func_4(select(var_2.d, select(var_2.d, vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(9328u, 21u)]), any(var_2.b.b)), _wgslsmith_f_op_vec2_f32(select(var_2.a.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, var_2.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(49842u, 1u), 21u)])), _wgslsmith_mod_i32(var_2.b.c.x, -2147483647i)).c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_2.e)))));
}

