struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(58794u, 52392u);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(false, false), vec4<f32>(-536f, 324f, 765f, -1662f), -1233f, 0u, vec2<i32>(12944i, -2048i)), Struct_1(vec2<bool>(false, false), vec4<f32>(-205f, -672f, -1000f, 476f), 155f, 4294967295u, vec2<i32>(2147483647i, 8209i)), Struct_1(vec2<bool>(true, false), vec4<f32>(1000f, -1705f, -2421f, -379f), -729f, 4294967295u, vec2<i32>(i32(-2147483648), 50529i)), Struct_1(vec2<bool>(true, true), vec4<f32>(818f, -1256f, 214f, 363f), 1594f, 1u, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec4<f32>(1388f, -1533f, 1056f, -977f), 750f, 4294967295u, vec2<i32>(0i, -39930i)), Struct_1(vec2<bool>(false, true), vec4<f32>(1221f, -836f, 136f, -473f), -1212f, 64155u, vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec4<f32>(-447f, 1359f, -329f, 1000f), -529f, 0u, vec2<i32>(36125i, 79960i)), Struct_1(vec2<bool>(false, true), vec4<f32>(-511f, 779f, 575f, -603f), -361f, 0u, vec2<i32>(23910i, -18219i)), Struct_1(vec2<bool>(true, true), vec4<f32>(1460f, -424f, -192f, 850f), -810f, 4294967295u, vec2<i32>(0i, -27261i)), Struct_1(vec2<bool>(false, false), vec4<f32>(-1244f, 708f, -925f, 480f), -319f, 4294967295u, vec2<i32>(62909i, -6969i)), Struct_1(vec2<bool>(true, true), vec4<f32>(-115f, 1756f, 826f, -542f), 142f, 4294967295u, vec2<i32>(1i, 2147483647i)), Struct_1(vec2<bool>(false, false), vec4<f32>(-3391f, 273f, -717f, 289f), -933f, 26096u, vec2<i32>(-1i, -36792i)), Struct_1(vec2<bool>(false, true), vec4<f32>(592f, 624f, -1408f, 451f), 343f, 13866u, vec2<i32>(1i, 1i)), Struct_1(vec2<bool>(true, false), vec4<f32>(-349f, -416f, -1246f, 1207f), 808f, 1u, vec2<i32>(-1i, -1610i)), Struct_1(vec2<bool>(true, true), vec4<f32>(1377f, -651f, 987f, 418f), -216f, 49305u, vec2<i32>(0i, -3081i)), Struct_1(vec2<bool>(true, true), vec4<f32>(544f, 129f, 402f, -496f), -1766f, 75110u, vec2<i32>(-1i, -2027i)), Struct_1(vec2<bool>(false, false), vec4<f32>(606f, 1357f, 557f, 174f), 638f, 85539u, vec2<i32>(1i, 6805i)), Struct_1(vec2<bool>(false, true), vec4<f32>(-698f, 1104f, 501f, 481f), -849f, 87531u, vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec4<f32>(463f, -821f, -137f, -823f), -123f, 45868u, vec2<i32>(-12993i, -1i)), Struct_1(vec2<bool>(false, true), vec4<f32>(-676f, 584f, -1135f, 790f), -409f, 0u, vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<bool>(false, true), vec4<f32>(-447f, 1912f, 870f, -1324f), -434f, 7354u, vec2<i32>(1i, -1i)), Struct_1(vec2<bool>(true, true), vec4<f32>(668f, 1000f, 1000f, 563f), 1262f, 0u, vec2<i32>(2147483647i, -1i)));

var<private> global2: u32;

var<private> global3: array<vec3<i32>, 29>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = arg_0;
    global1 = array<Struct_1, 22>();
    var var_1 = arg_0;
    var var_2 = arg_2;
    let var_3 = firstLeadingBit(15808i);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c * 930f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-892f * arg_1.c), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(238f * _wgslsmith_f_op_f32(floor(434f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + -664f) - _wgslsmith_f_op_f32(min(var_1.b.x, 569f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c)) - _wgslsmith_div_f32(var_1.c, 734f)), arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(var_1.b.x - 1675f)))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global0 = ~vec2<u32>(~0u, ~select(_wgslsmith_mod_u32(u_input.b.x, 51916u), ~1u, arg_0.x));
    var var_0 = vec3<bool>(false, true, arg_0.x);
    global3 = array<vec3<i32>, 29>();
    global2 = _wgslsmith_add_u32(~4294967295u, 5770u);
    let var_1 = select(-select(reverseBits(select(u_input.a.xx, u_input.c.ww, var_0.yx)), firstTrailingBit(vec2<i32>(1i, 2147483647i)) & vec2<i32>(57641i, u_input.c.x), -16550i > u_input.c.x), vec2<i32>(-31532i, 52493i), select(!var_0.xx, arg_0, var_0.zy));
    return Struct_1(vec2<bool>(all(!(!vec4<bool>(true, true, var_0.x, var_0.x))), all(!(!vec4<bool>(var_0.x, false, arg_0.x, false)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(!(!arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2321f, -1000f, 1000f, 1163f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -507f))), 11274u, var_1), Struct_1(arg_0, vec4<f32>(_wgslsmith_div_f32(1000f, 979f), 389f, -1000f, -2183f), -446f, min(4294967295u | global0.x, ~u_input.b.x), firstTrailingBit(~vec2<i32>(1i, u_input.a.x))), global1[_wgslsmith_index_u32(u_input.b.x, 22u)])), 1774f, firstTrailingBit(abs(_wgslsmith_add_u32(117986u, 1u))), var_1);
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = vec3<f32>(-1925f, _wgslsmith_f_op_f32(-arg_0), 1000f);
    var var_1 = func_2(vec2<bool>(true, true));
    var var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 22u)];
    global1 = array<Struct_1, 22>();
    var_2 = global1[_wgslsmith_index_u32(var_1.d, 22u)];
    return vec4<f32>(-929f, -202f, var_1.b.x, -150f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 29>();
    global2 = ~(~(~(~1u)));
    var var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(1249f)))), vec4<f32>(_wgslsmith_f_op_f32(step(1261f, 230f)), _wgslsmith_f_op_f32(f32(-1f) * -2516f), _wgslsmith_f_op_f32(-972f - 220f), 255f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), _wgslsmith_f_op_f32(f32(-1f) * -273f), 4294967295u, u_input.c.xy << (_wgslsmith_sub_vec2_u32(u_input.b.xx, ~u_input.b.wy) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) - vec4<f32>(1427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) + -227f), _wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(~var_0.d, 22u)], global1[_wgslsmith_index_u32(reverseBits(12432u), 22u)], Struct_1(var_0.a, vec4<f32>(var_0.b.x, 1000f, 486f, var_0.b.x), 699f, 1u, u_input.c.zx))).x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b + var_0.b))));
    var var_2 = Struct_1(!var_0.a, vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(func_2(func_2(vec2<bool>(false, false)).a).b.x, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_2(var_0.a).b.x * -1068f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(var_1.x)).x - _wgslsmith_f_op_f32(var_0.b.x - 483f)) - -453f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(select(var_0.a, var_0.a, vec2<bool>(var_0.a.x, var_0.a.x))).b.x) + func_2(select(var_0.a, var_0.a, func_2(var_0.a).a.x)).b.x), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x | var_0.d), var_0.e ^ -u_input.c.yy);
    let var_3 = global1[_wgslsmith_index_u32(var_2.d, 22u)];
    global0 = reverseBits(u_input.b.yz);
    var var_4 = vec3<bool>(!var_0.a.x, func_2(!(!var_2.a)).a.x, var_3.a.x);
    global1 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, ~global0.x) >> (~var_2.d % 32u), 63299u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1738f - _wgslsmith_f_op_f32(floor(-613f))))), ~vec3<u32>(~_wgslsmith_mult_u32(var_3.d, u_input.b.x), _wgslsmith_add_u32(func_2(vec2<bool>(true, false)).d, abs(8286u)), _wgslsmith_mult_u32(0u, firstLeadingBit(3690u))), ~u_input.b.yxz);
}

