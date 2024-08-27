struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<u32>(1u, 1u, 2923u, 0u), -1977f, vec3<f32>(-1000f, -206f, 227f)), Struct_1(vec4<u32>(91281u, 8214u, 4294967295u, 4294967295u), -545f, vec3<f32>(1134f, -1498f, 1161f)), Struct_1(vec4<u32>(111878u, 32271u, 4294967295u, 75361u), -380f, vec3<f32>(666f, 186f, 1317f)), Struct_1(vec4<u32>(1u, 16521u, 4294967295u, 104270u), 859f, vec3<f32>(-1314f, 1624f, -600f)), Struct_1(vec4<u32>(1921u, 1u, 0u, 27288u), -124f, vec3<f32>(1783f, 430f, -514f)), Struct_1(vec4<u32>(46143u, 4294967295u, 4601u, 1u), -375f, vec3<f32>(1230f, 436f, -2079f)), Struct_1(vec4<u32>(32600u, 1u, 71262u, 4294967295u), 663f, vec3<f32>(139f, 540f, 192f)), Struct_1(vec4<u32>(8587u, 6265u, 0u, 20734u), 941f, vec3<f32>(382f, -223f, 324f)), Struct_1(vec4<u32>(1u, 4294967295u, 46487u, 15650u), 1838f, vec3<f32>(1590f, 1000f, 495f)), Struct_1(vec4<u32>(13493u, 55890u, 16193u, 77255u), -932f, vec3<f32>(-532f, -100f, -929f)), Struct_1(vec4<u32>(4294967295u, 46546u, 1u, 1u), 1100f, vec3<f32>(-372f, 965f, 1262f)), Struct_1(vec4<u32>(4930u, 1u, 1u, 4294967295u), 454f, vec3<f32>(-1000f, -1004f, -2319f)), Struct_1(vec4<u32>(1u, 20465u, 4294967295u, 4294967295u), 1398f, vec3<f32>(-1844f, -323f, 878f)), Struct_1(vec4<u32>(0u, 53655u, 1u, 15699u), -893f, vec3<f32>(2035f, -379f, 730f)), Struct_1(vec4<u32>(8100u, 1u, 38769u, 4294967295u), 448f, vec3<f32>(378f, 509f, 1000f)), Struct_1(vec4<u32>(0u, 0u, 1u, 71010u), 1428f, vec3<f32>(1060f, 1000f, -1000f)), Struct_1(vec4<u32>(7000u, 1u, 17497u, 4294967295u), 1072f, vec3<f32>(855f, -987f, 736f)), Struct_1(vec4<u32>(0u, 1502u, 0u, 32070u), 469f, vec3<f32>(1477f, -1839f, 462f)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 48333u), 585f, vec3<f32>(1000f, 440f, 428f)), Struct_1(vec4<u32>(61957u, 0u, 67898u, 13077u), -967f, vec3<f32>(1095f, 1159f, -457f)));

var<private> global1: vec4<i32> = vec4<i32>(0i, 2147483647i, -1i, 5403i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<bool>) -> Struct_1 {
    return Struct_1(~(~(~vec4<u32>(arg_0.a.a.x, 32006u, u_input.a, arg_0.c.a.x) << (~vec4<u32>(u_input.a, arg_0.c.a.x, 57095u, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x * -670f)))), arg_0.c.c);
}

fn func_3(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = global1.wwy;
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~abs(firstLeadingBit(~arg_0.x)), _wgslsmith_mult_u32(arg_0.x, u_input.a)), 20u)];
    var_0 = global1.wwy;
    let var_3 = 1u;
    return global0[_wgslsmith_index_u32(var_3, 20u)];
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = var_0;
    let var_2 = !(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), true));
    var var_3 = arg_1;
    var_1 = var_0;
    return Struct_1(~arg_1.b.a, _wgslsmith_f_op_f32(var_3.d.x - var_1.b.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1725f, arg_1.b.b) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.c.x, arg_1.a.b, arg_1.a.b), arg_2)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.c.x, arg_1.b.c.x, var_3.b.b))))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(1i, arg_0 | _wgslsmith_mod_i32(1i, ~8345i));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1460f, 608f, 342f, arg_1.c.c.x) + vec4<f32>(arg_1.d.x, 301f, arg_1.b.b, -420f)))), vec4<f32>(-383f, _wgslsmith_f_op_f32(arg_1.c.b * arg_1.a.c.x), _wgslsmith_f_op_f32(sign(arg_1.b.b)), _wgslsmith_f_op_f32(trunc(1493f))), false)))) - vec4<f32>(_wgslsmith_div_f32(-1476f, arg_1.d.x), arg_1.c.b, -420f, 940f));
    var var_2 = Struct_1(vec4<u32>(52839u, ~_wgslsmith_sub_u32(u_input.a, 4294967295u), reverseBits(arg_1.a.a.x), arg_1.c.a.x), _wgslsmith_f_op_f32(-var_1.x), var_1.xzz);
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(arg_1.c.a.x, 20u)], func_4(-1108f, Struct_2(func_2(arg_1, _wgslsmith_f_op_vec3_f32(var_1.zwx + vec3<f32>(arg_1.d.x, var_1.x, var_2.b)), vec4<bool>(true, true, true, true)), func_3(vec2<u32>(var_2.a.x, u_input.a)), arg_1.b, var_2.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 312f, var_2.b))))))), Struct_1(~reverseBits(arg_1.b.a), func_3(vec2<u32>(_wgslsmith_mod_u32(51356u, 82119u), 18072u)).c.x, _wgslsmith_div_vec3_f32(arg_1.a.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-282f, arg_1.b.c.x, -566f) - vec3<f32>(var_2.b, var_2.b, arg_1.c.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.a.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, 278f, arg_1.a.b)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.x)))), 646f, var_1.x)));
    var var_4 = ~select(_wgslsmith_add_u32(~0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_3.a.a.x), arg_1.b.a.wz))), ~arg_1.c.a.x, all(vec2<bool>(all(vec3<bool>(true, true, false)), true)));
    return func_4(_wgslsmith_f_op_f32(ceil(1000f)), Struct_2(func_2(Struct_2(func_4(-859f, Struct_2(Struct_1(var_2.a, arg_1.b.b, vec3<f32>(-707f, var_2.b, var_1.x)), global0[_wgslsmith_index_u32(1200u, 20u)], var_3.c, vec3<f32>(833f, var_3.b.b, -571f)), vec3<f32>(-1126f, -981f, var_3.b.b)), var_3.a, func_3(arg_1.a.a.ww), vec3<f32>(307f, -434f, 1000f)), func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.c.a.x, u_input.a), vec2<u32>(arg_1.a.a.x, u_input.a))).c, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false))), Struct_1(~var_3.a.a, var_2.c.x, _wgslsmith_f_op_vec3_f32(exp2(var_2.c))), arg_1.a, var_3.d), var_1.zyx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    var var_0 = true;
    global0 = array<Struct_1, 20>();
    var var_1 = func_1(select(select(reverseBits(62957i), firstLeadingBit(0i), !all(vec2<bool>(false, false))), global1.x & global1.x, !any(vec2<bool>(true, true))), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 20u)], Struct_1(vec4<u32>(1u, ~u_input.a, u_input.a ^ 54746u, 87470u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-562f, -483f, false)) * -916f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, -371f, -1867f)))), vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-705f - -467f), _wgslsmith_f_op_f32(-2050f + 1777f)), _wgslsmith_f_op_f32(f32(-1f) * -420f))));
    var_0 = select(true, all(vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(f32(-1f) * -145f) != _wgslsmith_f_op_f32(-func_4(var_1.b, Struct_2(Struct_1(vec4<u32>(13897u, var_1.a.x, u_input.a, u_input.a), -314f, vec3<f32>(var_1.c.x, var_1.c.x, 1104f)), global0[_wgslsmith_index_u32(25899u, 20u)], Struct_1(var_1.a, 419f, var_1.c), vec3<f32>(-792f, 1503f, var_1.b)), var_1.c).b)));
    var var_2 = select(!vec4<bool>(any(vec2<bool>(false, false)) != false, true, _wgslsmith_add_i32(global1.x, u_input.c.x) > 0i, true), vec4<bool>(any(vec2<bool>(true, true)) && true, true, all(vec3<bool>(var_1.c.x > var_1.b, true, all(vec3<bool>(false, true, true)))), any(vec4<bool>(false, false, true, true))), ~_wgslsmith_add_u32(~4294967295u, var_1.a.x | u_input.a) >= 1u);
    let var_3 = var_1.a.x | 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a ^ min(var_1.a, ~vec4<u32>(var_1.a.x, var_3, 61346u, var_1.a.x)), vec2<u32>(39788u, u_input.a), _wgslsmith_div_i32(countOneBits(u_input.b), ~(-u_input.b)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(923f, -1419f, -114f) * var_1.c))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, 1512f, _wgslsmith_f_op_f32(-var_1.c.x))))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(30917u, 1u), vec2<u32>(1u, 4294967295u)), _wgslsmith_div_vec2_u32(var_1.a.xx, vec2<u32>(32536u, var_3))), ~1u, _wgslsmith_div_u32(29607u << (u_input.a % 32u), ~var_3), min(34738u >> (var_1.a.x % 32u), var_3 | 6391u)), ((var_1.a >> (vec4<u32>(15956u, 3408u, var_1.a.x, u_input.a) % vec4<u32>(32u))) | ~vec4<u32>(69316u, u_input.a, u_input.a, 125201u)) << (_wgslsmith_sub_vec4_u32(func_4(var_1.b, Struct_2(Struct_1(var_1.a, -964f, vec3<f32>(var_1.c.x, -545f, var_1.b)), global0[_wgslsmith_index_u32(var_3, 20u)], global0[_wgslsmith_index_u32(4071u, 20u)], var_1.c), var_1.c).a, var_1.a) % vec4<u32>(32u))));
}

