struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    global1 = -594f;
    let var_0 = Struct_5(_wgslsmith_sub_u32(abs(60175u), 0u), any(vec3<bool>(true, arg_2.b.b.x, arg_2.c.c.x)), ~_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_clamp_u32(arg_0.x, arg_2.c.d.x, 1u)) & ~(~1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(621f, -457f)), _wgslsmith_f_op_f32(abs(-1895f)))), 210f));
    global1 = _wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))))), true));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1527f)));
    global1 = _wgslsmith_f_op_f32(select(-1051f, 2178f, !(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-var_0.d.x)) < _wgslsmith_f_op_f32(f32(-1f) * -205f))));
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0, ~vec3<u32>(~59014u, countOneBits(52907u), ~0u), arg_0), arg_2.b.a, vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(arg_0.x, arg_2.c.a.x), _wgslsmith_mod_u32(min(~arg_2.c.d.x, _wgslsmith_dot_vec3_u32(arg_2.b.a, arg_3.c.d)), ~(~arg_0.x))));
}

fn func_2(arg_0: Struct_5) -> Struct_5 {
    var var_0 = arg_0.d.x;
    var var_1 = Struct_1(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_add_u32(22098u, u_input.c.x), 35457u) | _wgslsmith_add_vec3_u32(min(vec3<u32>(29528u, 4294967295u, u_input.c.x), ~vec3<u32>(1u, 0u, global0[_wgslsmith_index_u32(87763u, 20u)])), _wgslsmith_sub_vec3_u32(func_3(vec3<u32>(1298u, arg_0.c, global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), u_input.b, Struct_2(18017i, Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(4904u, 20u)], 1u, 4294967295u), vec2<bool>(false, arg_0.b), vec2<bool>(false, arg_0.b), vec3<u32>(0u, 40162u, 36084u)), Struct_1(vec3<u32>(arg_0.c, arg_0.a, 69837u), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, true), vec3<u32>(22630u, u_input.c.x, 35992u))), Struct_2(13501i, Struct_1(vec3<u32>(85035u, u_input.c.x, global0[_wgslsmith_index_u32(arg_0.c, 20u)]), vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, true), vec3<u32>(33201u, 4294967295u, 0u)), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(arg_0.a, 20u)], 0u, 0u), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, arg_0.b), vec3<u32>(u_input.c.x, arg_0.a, u_input.c.x)))), _wgslsmith_mod_vec3_u32(vec3<u32>(6216u, 30174u, 8534u), vec3<u32>(arg_0.c, global0[_wgslsmith_index_u32(4294967295u, 20u)], 0u)))), vec2<bool>(select(arg_0.b, u_input.a.x > firstLeadingBit(0i), min(u_input.c.x, 1u) == u_input.c.x), false), vec2<bool>(true, true), select(abs(vec3<u32>(9850u, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 1u) << (_wgslsmith_div_vec3_u32(vec3<u32>(3142u, arg_0.c, u_input.c.x), vec3<u32>(u_input.c.x, arg_0.c, 1u)) % vec3<u32>(32u))), countOneBits(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(arg_0.c, global0[_wgslsmith_index_u32(89285u, 20u)], 40282u)), ~vec3<u32>(u_input.c.x, 12287u, 31997u))), !vec3<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(arg_0.b, true)), true)));
    let var_2 = ~(i32(-1i) * -1i);
    let var_3 = !select(!(!(!vec4<bool>(true, arg_0.b, true, arg_0.b))), vec4<bool>(var_1.c.x | (arg_0.d.x >= 812f), !var_1.b.x, false, arg_0.b), select(!(!vec4<bool>(true, arg_0.b, true, false)), select(select(vec4<bool>(true, true, arg_0.b, true), vec4<bool>(false, false, arg_0.b, var_1.b.x), vec4<bool>(arg_0.b, arg_0.b, var_1.b.x, false)), vec4<bool>(arg_0.b, true, true, var_1.c.x), select(vec4<bool>(var_1.c.x, true, false, arg_0.b), vec4<bool>(true, false, false, true), vec4<bool>(var_1.b.x, false, var_1.b.x, true))), !(arg_0.b | arg_0.b)));
    var_1 = Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u | var_1.a.x, 1u, arg_0.c), ~(~vec3<u32>(4294967295u, 126614u, var_1.a.x))), !vec2<bool>(false, !(!arg_0.b)), vec2<bool>(select(all(!vec4<bool>(true, arg_0.b, var_1.b.x, true)), all(vec3<bool>(arg_0.b, arg_0.b, var_3.x)), var_3.x), true), vec3<u32>(arg_0.c, arg_0.c, arg_0.a));
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_5) -> u32 {
    var var_0 = arg_2;
    global1 = 628f;
    let var_1 = Struct_4(0u);
    let var_2 = Struct_3(true, var_0.b);
    var var_3 = firstTrailingBit(~abs(vec4<u32>(36699u, arg_2.b.b.a.x, var_1.a, 1u)) << (_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(1u, 20u)], arg_2.b.c.a.x, var_1.a, arg_1.b.a.x) << (vec4<u32>(var_2.b.c.a.x, var_2.b.b.a.x, 19707u, 5634u) % vec4<u32>(32u))), vec4<u32>(var_0.b.c.d.x, u_input.c.x, var_2.b.b.a.x, 4680u) << (~vec4<u32>(4294967295u, 4294967295u, arg_2.b.b.a.x, 51905u) % vec4<u32>(32u)), min(reverseBits(vec4<u32>(1u, var_0.b.c.d.x, 0u, 0u)), ~vec4<u32>(84541u, 13781u, 81464u, var_1.a))) % vec4<u32>(32u)));
    return global0[_wgslsmith_index_u32(87218u, 20u)] & 1u;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = array<u32, 20>();
    global1 = 728f;
    let var_0 = Struct_1(~(~vec3<u32>(~25960u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 20u)], 20u)], 20u)] | u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 92319u))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(all(vec2<bool>(true, true)), true), ~vec3<u32>(abs(1783u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(30842u, 20u)], 25712u), countOneBits(u_input.c)), abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 20u)], u_input.c.x))));
    let var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(~1u, ~0u) >> (abs(u_input.c) % vec2<u32>(32u)), vec2<u32>(func_4(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), Struct_2(select(-1i, -1362i, var_0.c.x), Struct_1(var_0.d, vec2<bool>(true, var_0.c.x), var_0.c, var_0.a), var_0), Struct_3(var_0.b.x, Struct_2(u_input.a.x, var_0, Struct_1(vec3<u32>(4843u, var_0.d.x, 34834u), var_0.b, vec2<bool>(false, var_0.b.x), vec3<u32>(18758u, 1u, 60975u)))), func_2(Struct_5(2588u, var_0.b.x, var_0.a.x, vec2<f32>(1126f, -1000f)))), 4294967295u));
    global1 = -464f;
    return ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, firstTrailingBit(4294967295u), u_input.c.x), vec3<u32>(~u_input.c.x, ~var_1.x, _wgslsmith_mult_u32(10369u, global0[_wgslsmith_index_u32(24007u, 20u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~global0[_wgslsmith_index_u32(select(select(u_input.c.x, u_input.c.x, true), 0u, true), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1694f)))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-690f))))), (u_input.c.x << (1u % 32u)) | u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-499f, 844f)) * 465f)), 421f));
    var var_1 = Struct_5(u_input.c.x, true, func_1(-u_input.d ^ (vec4<i32>(u_input.a.x, u_input.d.x, -6080i, 2836i) & (vec4<i32>(0i, u_input.d.x, u_input.a.x, u_input.b) | u_input.d))), vec2<f32>(_wgslsmith_f_op_f32(-func_2(func_2(Struct_5(4294967295u, var_0.b, u_input.c.x, var_0.d))).d.x), var_0.d.x));
    let var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_1.c, 20u)], 4294967295u, var_1.a, 0u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 20u)], var_1.a, 49130u, 4294967295u)), 1u, 4294967295u), ~vec4<u32>(var_1.a, 1u, _wgslsmith_mult_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 20u)], var_1.a), _wgslsmith_mult_u32(0u, 4294967295u)), 1u));
    global1 = var_0.d.x;
    var_1 = func_2(func_2(func_2(Struct_5(_wgslsmith_mod_u32(var_2.x, 36052u), var_0.c < 0u, 1u, var_1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(u_input.d.wzw >> (firstLeadingBit(~var_2.wyw) % vec3<u32>(32u)), abs(vec3<i32>(_wgslsmith_add_i32(u_input.d.x, 0i), -u_input.d.x, -u_input.d.x)), u_input.d.ywy), func_3(~var_2.wwx, u_input.d.x, Struct_2(u_input.a.x, Struct_1(min(vec3<u32>(u_input.c.x, 2859u, 16934u), var_2.zxy), select(vec2<bool>(var_1.b, false), vec2<bool>(var_0.b, false), var_1.b), vec2<bool>(var_0.b, var_1.b), var_2.zyx), Struct_1(vec3<u32>(var_0.c, u_input.c.x, 4354u), vec2<bool>(true, true), !vec2<bool>(true, var_1.b), vec3<u32>(6268u, 1600u, var_0.a))), Struct_2(u_input.a.x, Struct_1(~vec3<u32>(global0[_wgslsmith_index_u32(var_1.a, 20u)], global0[_wgslsmith_index_u32(var_0.c, 20u)], 4294967295u), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_1.b), vec2<bool>(false, var_1.b)), !vec2<bool>(true, var_0.b), ~vec3<u32>(global0[_wgslsmith_index_u32(var_0.a, 20u)], u_input.c.x, var_1.a)), Struct_1(vec3<u32>(var_1.a, var_0.a, var_1.a), select(vec2<bool>(var_0.b, var_1.b), vec2<bool>(var_0.b, var_0.b), false), select(vec2<bool>(var_1.b, false), vec2<bool>(var_0.b, var_1.b), false), vec3<u32>(var_2.x, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], u_input.c.x) & vec3<u32>(20097u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)])))).x);
}

