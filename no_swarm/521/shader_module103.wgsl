struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(4294967295u, 1u, 57181u), vec3<u32>(12177u, 35691u, 1u), vec3<u32>(38671u, 40912u, 1u), vec3<u32>(4294967295u, 7131u, 715u), vec3<u32>(29643u, 20244u, 53258u), vec3<u32>(40298u, 47180u, 0u), vec3<u32>(27513u, 4294967295u, 65893u), vec3<u32>(27245u, 4294967295u, 1u), vec3<u32>(90093u, 5626u, 1u), vec3<u32>(36979u, 75202u, 1u), vec3<u32>(0u, 40201u, 90163u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(52029u, 1u, 4294967295u), vec3<u32>(9721u, 1u, 33374u), vec3<u32>(17561u, 4294967295u, 1u), vec3<u32>(19092u, 1u, 1u), vec3<u32>(6401u, 23061u, 2891u), vec3<u32>(93232u, 103267u, 8893u), vec3<u32>(1u, 38522u, 5257u), vec3<u32>(4294967295u, 49035u, 0u), vec3<u32>(0u, 17874u, 0u), vec3<u32>(24247u, 1u, 4294967295u), vec3<u32>(45040u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 5211u), vec3<u32>(50591u, 4294967295u, 15092u), vec3<u32>(96162u, 15536u, 76714u), vec3<u32>(1u, 1u, 123188u), vec3<u32>(19886u, 37438u, 4294967295u), vec3<u32>(1u, 4232u, 42335u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<vec3<u32>, 29>();
    var var_0 = arg_1.a.c.zy;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-559f, -889f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d * 651f) - 1597f))));
    var_0 = ~select(arg_2.c.ww, ~(u_input.d.xz | arg_2.c.xx), select(select(vec2<bool>(arg_2.b, arg_2.e), vec2<bool>(arg_1.a.e, true), false), !vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<bool>(true, false))) ^ vec2<i32>(-1i, (abs(-35690i) | arg_2.c.x) << (75065u % 32u));
    let var_2 = ~(~arg_2.a.x) >> (~_wgslsmith_add_u32(~u_input.b.x, 826u) % 32u);
    return !select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], false, !(!global0[_wgslsmith_index_u32(0u, 21u)]), arg_2.b), !select(select(vec4<bool>(false, arg_1.a.e, true, arg_2.b), vec4<bool>(false, false, false, false), vec4<bool>(arg_1.a.b, true, arg_2.b, arg_1.a.e)), select(vec4<bool>(false, arg_1.b.b, false, true), vec4<bool>(arg_1.b.e, false, global0[_wgslsmith_index_u32(0u, 21u)], true), true), !vec4<bool>(arg_2.e, arg_1.b.b, false, arg_2.e)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], arg_2.b, arg_2.e), vec4<bool>(arg_1.b.d >= -1076f, select(arg_2.b, false, true), var_1.x > arg_2.d, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(8265u, 1u), 21u)]), select(vec4<bool>(arg_2.e, global0[_wgslsmith_index_u32(1605u, 21u)], arg_1.b.e, global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec4<bool>(arg_2.b, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(var_2, 21u)], arg_2.e), !vec4<bool>(arg_2.e, global0[_wgslsmith_index_u32(64433u, 21u)], arg_1.a.b, false))));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = true;
    let var_1 = Struct_4(select(!vec4<bool>(arg_0.b.e, true, arg_0.a.e, global0[_wgslsmith_index_u32(4294967295u, 21u)]), !select(select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(arg_0.b.b, arg_0.b.b, global0[_wgslsmith_index_u32(0u, 21u)], true), vec4<bool>(true, var_0, var_0, true)), select(vec4<bool>(arg_0.a.b, true, global0[_wgslsmith_index_u32(1409u, 21u)], var_0), vec4<bool>(arg_0.a.b, var_0, true, arg_0.a.e), arg_0.b.b), func_3(arg_0.a.c.x, Struct_2(Struct_1(vec3<u32>(54122u, u_input.b.x, 1u), false, arg_0.a.c, arg_0.a.d, global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], var_0, arg_0.b.c, arg_0.c.x, global0[_wgslsmith_index_u32(arg_0.b.a.x, 21u)]), vec2<f32>(-1062f, arg_0.c.x)), arg_0.b)), all(select(vec4<bool>(false, true, true, true), func_3(arg_0.a.c.x, Struct_2(arg_0.b, Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 37990u), arg_0.a.e, vec4<i32>(-22491i, -2380i, 1i, arg_0.b.c.x), arg_0.b.d, global0[_wgslsmith_index_u32(arg_0.b.a.x, 21u)]), arg_0.c), arg_0.b), func_3(u_input.c, Struct_2(arg_0.a, Struct_1(vec3<u32>(u_input.b.x, 61409u, 20634u), true, arg_0.a.c, arg_0.c.x, arg_0.b.b), vec2<f32>(arg_0.b.d, -540f)), Struct_1(vec3<u32>(36668u, 52386u, 52416u), global0[_wgslsmith_index_u32(u_input.b.x, 21u)], arg_0.b.c, -1520f, false))))), vec4<u32>(arg_0.b.a.x, 0u, u_input.b.x, u_input.b.x), Struct_2(arg_0.a, arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -535f) * arg_0.c))));
    global0 = array<bool, 21>();
    let var_2 = var_1.c.a.a.x;
    global1 = array<vec3<u32>, 29>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-235f, var_1.c.c.x, 234f))))) - vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.b.d, arg_0.a.d)), 369f, var_1.c.a.d)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.d, 309f, 860f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.d, -1961f, arg_0.a.d))))))));
}

fn func_1() -> vec2<f32> {
    global1 = array<vec3<u32>, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(vec3<u32>(0u, 35471u, u_input.b.x), true, vec4<i32>(u_input.c, -6638i, -3360i, -2147483647i), 1264f, global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_1(u_input.b, global0[_wgslsmith_index_u32(3025u, 21u)], vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.d.x), -915f, true), vec2<f32>(1000f, -924f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-389f, -1000f, -1246f) + vec3<f32>(-1877f, -392f, 1541f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-993f, 875f, -892f) + vec3<f32>(-1730f, -1234f, -972f))))));
    global1 = array<vec3<u32>, 29>();
    global0 = array<bool, 21>();
    var var_1 = Struct_3(1i);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1963f))))) - 2914f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(vec3<u32>(45350u, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(60504u, 21u)], vec4<i32>(u_input.d.x, var_1.a, -65395i, u_input.d.x), 340f, global0[_wgslsmith_index_u32(115900u, 21u)]), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 21u)], vec4<i32>(432i, var_1.a, 28698i, var_1.a), var_0.x, global0[_wgslsmith_index_u32(37973u, 21u)]), var_0.yz))).x, 1000f, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(30247u, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(36715u, 21u)], false), vec2<bool>(false, true)), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), !global0[_wgslsmith_index_u32(u_input.b.x, 21u)])), vec2<bool>(true, true), (global0[_wgslsmith_index_u32(119163u, 21u)] | any(select(vec3<bool>(global0[_wgslsmith_index_u32(16972u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(84945u, 21u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(16565u, 21u)], true), global0[_wgslsmith_index_u32(u_input.b.x, 21u)]))) && true);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_2 = ~_wgslsmith_clamp_vec4_u32(~select(select(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 112689u, 33151u, 20539u), vec4<bool>(false, true, false, false)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, 43285u, u_input.b.x)), true), ~(vec4<u32>(u_input.b.x, 93261u, u_input.b.x, u_input.b.x) | vec4<u32>(19988u, u_input.b.x, 1u, u_input.b.x)) & abs(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) >> (vec4<u32>(0u, u_input.b.x, 47348u, u_input.b.x) % vec4<u32>(32u))), ~vec4<u32>(1u, 33203u, 80498u, u_input.b.x));
    let var_3 = Struct_1(~(select(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 0u), !var_0.x) >> (vec3<u32>(6132u, 1u, _wgslsmith_mod_u32(var_2.x, var_2.x)) % vec3<u32>(32u))), !global0[_wgslsmith_index_u32(var_2.x, 21u)], ~(~(~vec4<i32>(0i, u_input.a.x, u_input.d.x, 14303i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1164f + var_1.x) - _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-328f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x))) != 1013f);
    var var_4 = var_3.c.wz;
    var_0 = func_3(abs(u_input.d.x), Struct_2(var_3, var_3, _wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), false, vec4<i32>(u_input.d.x, -6945i, var_4.x, 0i), var_3.d, true), Struct_1(vec3<u32>(62452u, 34463u, 62547u), true, vec4<i32>(-1i, var_3.c.x, 2586i, 2147483647i), -2001f, var_3.e), vec2<f32>(var_3.d, var_3.d)))).yy), var_3).zy;
    var_0 = vec2<bool>(1572f == _wgslsmith_f_op_f32(step(-322f, var_1.x)), false);
    var var_5 = _wgslsmith_f_op_f32(ceil(var_1.x));
    let var_6 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 93708u, 4294967295u, 14263u), vec4<u32>(var_3.a.x, 4294967295u, var_2.x, var_6) | vec4<u32>(97741u, var_2.x, var_6, var_3.a.x)), var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x), var_1.x, var_3.a);
}

