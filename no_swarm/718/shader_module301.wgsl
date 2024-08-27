struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<i32, 16> = array<i32, 16>(0i, 26835i, 1i, 1i, 8775i, 2147483647i, 46931i, -1i, 0i, 23382i, i32(-2147483648), -54605i, 1i, 1i, 1i, -16175i);

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(false, vec2<u32>(4294967295u, 1u)), Struct_1(true, vec2<u32>(12937u, 0u))), Struct_2(Struct_1(true, vec2<u32>(0u, 1u)), Struct_1(false, vec2<u32>(39571u, 4294967295u))), Struct_2(Struct_1(true, vec2<u32>(52613u, 53338u)), Struct_1(true, vec2<u32>(42232u, 1u))), Struct_2(Struct_1(false, vec2<u32>(8832u, 29929u)), Struct_1(true, vec2<u32>(23168u, 4294967295u))), Struct_2(Struct_1(true, vec2<u32>(53262u, 0u)), Struct_1(true, vec2<u32>(0u, 47038u))), Struct_2(Struct_1(false, vec2<u32>(0u, 0u)), Struct_1(false, vec2<u32>(4294967295u, 0u))), Struct_2(Struct_1(false, vec2<u32>(38477u, 81607u)), Struct_1(false, vec2<u32>(29877u, 98892u))), Struct_2(Struct_1(true, vec2<u32>(1u, 0u)), Struct_1(false, vec2<u32>(4294967295u, 0u))), Struct_2(Struct_1(false, vec2<u32>(12572u, 1u)), Struct_1(false, vec2<u32>(46351u, 24232u))), Struct_2(Struct_1(true, vec2<u32>(0u, 4294967295u)), Struct_1(false, vec2<u32>(50578u, 0u))), Struct_2(Struct_1(false, vec2<u32>(49709u, 6010u)), Struct_1(false, vec2<u32>(25277u, 1u))), Struct_2(Struct_1(true, vec2<u32>(0u, 0u)), Struct_1(false, vec2<u32>(1u, 11440u))), Struct_2(Struct_1(true, vec2<u32>(0u, 4294967295u)), Struct_1(true, vec2<u32>(24112u, 4294967295u))));

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(false, vec2<u32>(63542u, 1u)), Struct_1(false, vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(true, vec2<u32>(127705u, 1u)), Struct_1(true, vec2<u32>(36482u, 36917u))), Struct_2(Struct_1(false, vec2<u32>(73794u, 4294967295u)), Struct_1(true, vec2<u32>(13640u, 0u))), Struct_2(Struct_1(true, vec2<u32>(94442u, 4294967295u)), Struct_1(false, vec2<u32>(0u, 38361u))), Struct_2(Struct_1(true, vec2<u32>(4294967295u, 33726u)), Struct_1(true, vec2<u32>(1u, 0u))), Struct_2(Struct_1(true, vec2<u32>(0u, 0u)), Struct_1(false, vec2<u32>(31795u, 1u))), Struct_2(Struct_1(true, vec2<u32>(37370u, 0u)), Struct_1(false, vec2<u32>(23138u, 0u))), Struct_2(Struct_1(false, vec2<u32>(17860u, 69236u)), Struct_1(true, vec2<u32>(71070u, 4294967295u))), Struct_2(Struct_1(true, vec2<u32>(0u, 42776u)), Struct_1(true, vec2<u32>(1u, 42041u))), Struct_2(Struct_1(true, vec2<u32>(1u, 4294967295u)), Struct_1(true, vec2<u32>(14150u, 0u))), Struct_2(Struct_1(false, vec2<u32>(111276u, 0u)), Struct_1(false, vec2<u32>(55119u, 69816u))), Struct_2(Struct_1(false, vec2<u32>(0u, 27544u)), Struct_1(false, vec2<u32>(27711u, 1u))), Struct_2(Struct_1(true, vec2<u32>(57934u, 46277u)), Struct_1(false, vec2<u32>(11308u, 1u))), Struct_2(Struct_1(false, vec2<u32>(11031u, 57761u)), Struct_1(true, vec2<u32>(49205u, 5026u))), Struct_2(Struct_1(true, vec2<u32>(6256u, 1u)), Struct_1(true, vec2<u32>(0u, 1u))), Struct_2(Struct_1(false, vec2<u32>(0u, 4294967295u)), Struct_1(true, vec2<u32>(1u, 1u))), Struct_2(Struct_1(true, vec2<u32>(4271u, 28101u)), Struct_1(false, vec2<u32>(0u, 82320u))), Struct_2(Struct_1(false, vec2<u32>(4294967295u, 4294967295u)), Struct_1(false, vec2<u32>(82381u, 4294967295u))), Struct_2(Struct_1(false, vec2<u32>(89015u, 13018u)), Struct_1(true, vec2<u32>(46434u, 0u))), Struct_2(Struct_1(true, vec2<u32>(4294967295u, 1u)), Struct_1(true, vec2<u32>(82116u, 0u))), Struct_2(Struct_1(true, vec2<u32>(0u, 54679u)), Struct_1(true, vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(true, vec2<u32>(32215u, 99078u)), Struct_1(true, vec2<u32>(1u, 0u))), Struct_2(Struct_1(true, vec2<u32>(0u, 6419u)), Struct_1(true, vec2<u32>(65578u, 4294967295u))), Struct_2(Struct_1(false, vec2<u32>(25293u, 4294967295u)), Struct_1(true, vec2<u32>(20465u, 12106u))), Struct_2(Struct_1(false, vec2<u32>(0u, 1u)), Struct_1(true, vec2<u32>(5365u, 39340u))), Struct_2(Struct_1(false, vec2<u32>(4350u, 43269u)), Struct_1(true, vec2<u32>(93989u, 1u))), Struct_2(Struct_1(true, vec2<u32>(0u, 1u)), Struct_1(false, vec2<u32>(1u, 79600u))), Struct_2(Struct_1(true, vec2<u32>(0u, 52245u)), Struct_1(false, vec2<u32>(104111u, 1u))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    global2 = array<vec2<bool>, 29>();
    global2 = array<vec2<bool>, 29>();
    var var_0 = 0u;
    global2 = array<vec2<bool>, 29>();
    var var_1 = Struct_1(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), u_input.d.yx >> (~(~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], 25u)], 1u))) % vec2<u32>(32u)));
    return vec3<bool>(1u < var_1.b.x, any(vec4<bool>(select(select(var_1.a, var_1.a, false), any(vec3<bool>(true, false, var_1.a)), true), true, var_1.a, any(!vec3<bool>(true, true, var_1.a)))), !(var_1.a || ((global1[_wgslsmith_index_u32(u_input.d.x, 16u)] > global1[_wgslsmith_index_u32(0u, 16u)]) & var_1.a)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    global0 = array<u32, 25>();
    let var_0 = Struct_1(all(select(arg_1.zyy, arg_1.ywz, select(vec3<bool>(arg_0.a, arg_1.x, false), vec3<bool>(arg_1.x, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_1.x)))), _wgslsmith_add_vec2_u32(arg_0.b, vec2<u32>(1u, 4294967295u)));
    let var_1 = !select(func_3(), vec3<bool>(true, func_3().x, arg_1.x), true);
    var var_2 = -316f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-487f)) * -409f)));
    let var_3 = global4[_wgslsmith_index_u32(4294967295u, 28u)];
    return Struct_2(Struct_1(any(!select(arg_1, vec4<bool>(arg_1.x, var_3.b.a, false, false), vec4<bool>(true, false, arg_1.x, var_3.b.a))), vec2<u32>(~0u, ~arg_0.b.x)), Struct_1(select(true, true, false), _wgslsmith_sub_vec2_u32(~var_3.b.b, vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(var_3.a.b.x, 77793u, 93794u)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> u32 {
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(46940u, 45917u), max(vec2<u32>(0u, arg_1.b.b.x), vec2<u32>(u_input.d.x, 51718u))), abs(global0[_wgslsmith_index_u32(19813u & arg_1.b.b.x, 25u)])), ~9117u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(global0[_wgslsmith_index_u32(53027u, 25u)]), ~global0[_wgslsmith_index_u32(42191u, 25u)], firstTrailingBit(u_input.d.x)), 25u)], 25u)]), ~arg_1.a.b.x);
}

fn func_1() -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_4(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_2(Struct_1(false, u_input.b), vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true)), true), 0u), 28u)];
    let var_1 = global0[_wgslsmith_index_u32((u_input.e & var_0.b.b.x) << (9184u % 32u), 25u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(197f, 210f)), -1000f))));
    global4 = array<Struct_2, 28>();
    var_0 = global4[_wgslsmith_index_u32(min(_wgslsmith_div_u32(4294967295u, countOneBits(24696u)) | _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.e, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], 0u, 32173u, 15851u)), 40125u), _wgslsmith_add_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(var_0.a.b.x, 25u)], _wgslsmith_add_u32(var_0.b.b.x, var_0.b.b.x)), ~min(1u, u_input.a))) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~var_0.a.b.x, _wgslsmith_add_u32(abs(global0[_wgslsmith_index_u32(0u, 25u)]), 11072u), 1u), vec4<u32>(func_2(Struct_1(var_0.b.a, u_input.b), vec4<bool>(var_0.b.a, var_0.a.a, true, false)).b.b.x, _wgslsmith_add_u32(~4294967295u, u_input.e), ~(4294967295u & global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), var_0.b.b.x & 1u)), 28u)];
    return func_2(func_2(func_2(Struct_1(false, ~u_input.b), vec4<bool>(select(false, false, false), !var_0.a.a, true || var_0.b.a, !var_0.a.a)).b, vec4<bool>(var_0.b.a, true, var_0.a.a, var_0.a.a == (var_2.x != -834f))).a, select(select(select(vec4<bool>(false, false, true, var_0.a.a), select(vec4<bool>(true, false, var_0.b.a, var_0.b.a), vec4<bool>(true, false, true, true), true), !vec4<bool>(var_0.a.a, false, var_0.a.a, var_0.a.a)), select(select(vec4<bool>(false, var_0.b.a, var_0.b.a, var_0.a.a), vec4<bool>(true, var_0.a.a, var_0.a.a, var_0.b.a), vec4<bool>(true, var_0.a.a, true, var_0.a.a)), !vec4<bool>(var_0.a.a, var_0.a.a, false, var_0.b.a), false), select(!vec4<bool>(true, false, var_0.b.a, false), vec4<bool>(false, true, var_0.a.a, var_0.a.a), !vec4<bool>(false, true, var_0.b.a, var_0.b.a))), !select(vec4<bool>(var_0.a.a, var_0.a.a, true, true), vec4<bool>(true, false, var_0.b.a, true), !vec4<bool>(var_0.b.a, var_0.b.a, false, false)), !func_2(func_2(var_0.a, vec4<bool>(var_0.a.a, var_0.a.a, true, false)).b, vec4<bool>(var_0.b.a, var_0.b.a, false, false)).b.a)).a;
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = -2360f;
    let var_1 = func_2(arg_0, !select(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(!arg_0.a, select(false, false, arg_0.a), arg_0.a, false), any(!vec3<bool>(false, arg_0.a, arg_0.a)))).b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f))))));
    let var_3 = var_2.x;
    let var_4 = global3[_wgslsmith_index_u32(arg_0.b.x, 13u)];
    return firstLeadingBit(-(~vec3<i32>(1i, countOneBits(33506i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b.x, 25u)], 16u)]), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], -43966i, global1[_wgslsmith_index_u32(u_input.b.x, 16u)])))));
}

fn func_6(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<i32, 16>();
    var var_0 = vec3<bool>(func_3().x, true, (true && (u_input.d.x >= ~51939u)) | (abs(~25528u) <= global0[_wgslsmith_index_u32(max(firstLeadingBit(46773u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)]), 25u)]));
    var var_1 = func_1();
    let var_2 = arg_0;
    global4 = array<Struct_2, 28>();
    return func_2(func_2(Struct_1(false, select(var_1.b, vec2<u32>(u_input.a, var_1.b.x), var_0.x)), vec4<bool>(any(!vec4<bool>(var_0.x, var_1.a, true, var_1.a)), func_1().a, var_1.a, true && var_1.a)).b, select(vec4<bool>(true, !func_1().a, var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, var_2.x, u_input.c, global1[_wgslsmith_index_u32(1u, 16u)]), vec4<i32>(-21033i, 58168i, arg_0.x, -8339i)) >= _wgslsmith_mod_i32(u_input.c, var_2.x)), vec4<bool>(var_0.x, var_0.x, true, true), true)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(false, ~(~u_input.d.xx)), func_6(max(func_5(func_1()), vec3<i32>(0i, u_input.c, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 16u)], 0i)))));
    let var_1 = u_input.c ^ u_input.c;
    let var_2 = !vec3<bool>(!(!(!var_0.b.a)), !(!(!var_0.b.a)), var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_mult_u32(0u, u_input.b.x))));
}

