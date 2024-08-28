struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: Struct_2 = Struct_2(988f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    global1 = Struct_2(global1.a);
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(29128i, arg_2.b), vec2<i32>(-2147483647i, arg_2.a)), min(vec2<i32>(1i, arg_2.b), vec2<i32>(2090i, arg_2.b)))), select(vec2<i32>(25699i >> (u_input.a % 32u), ~arg_2.a), -vec2<i32>(-6026i, 1i) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_2.b, arg_2.b), vec3<i32>(2147483647i, -1i, arg_2.b)) << ((~u_input.a ^ ~u_input.a) % 32u)) ^ -1i);
    var var_1 = ~(vec4<i32>(select(33586i, _wgslsmith_clamp_i32(var_0.b, var_0.b, -2147483647i), false), var_0.b, ~(-var_0.a), 2147483647i) ^ ((_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_2.b, var_0.a, -1i), vec4<i32>(var_0.a, var_0.a, 24369i, -19813i), vec4<i32>(76557i, -21994i, 17163i, arg_2.b)) & abs(vec4<i32>(42463i, -8984i, arg_2.b, arg_2.a))) << (vec4<u32>(reverseBits(4294967295u), 53564u, firstLeadingBit(41005u), 1u) % vec4<u32>(32u))));
    let var_2 = Struct_1(countOneBits(var_0.a | -2147483647i), ~arg_2.a);
    global0 = array<vec3<u32>, 7>();
    return vec4<i32>(-10280i, -2147483647i, var_0.a, abs(var_0.b));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(arg_0.a);
    let var_1 = !(true & (1201f >= _wgslsmith_f_op_f32(-arg_0.a)));
    return Struct_1(-1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(84798i, 0i, i32(-1i) * -9041i, -29165i)), select(vec4<i32>(1i, -33717i, 69518i, _wgslsmith_clamp_i32(0i, 41297i, 46692i)), firstLeadingBit(func_3(global1.a, global1.a, Struct_1(-62447i, 0i))), vec4<bool>(true, any(vec2<bool>(var_1, false)), true, true))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<bool>(749f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-156f, global1.a)), _wgslsmith_f_op_f32(-global1.a))), true, true, true);
    let var_1 = func_2(Struct_2(_wgslsmith_div_f32(global1.a, -163f)), ~(~countOneBits(0u)) & (u_input.a | _wgslsmith_add_u32(u_input.a, 1u << (u_input.a % 32u))));
    var var_2 = ~vec2<u32>(~abs(4294967295u), 11087u);
    global1 = Struct_2(global1.a);
    var_2 = ~select(_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, 1u)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(var_2.x, 9590u)), min(vec2<u32>(0u, 23491u), vec2<u32>(var_2.x, 58313u)))), ~(~firstTrailingBit(vec2<u32>(1u, var_2.x))), true);
    return Struct_2(-964f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    global0 = array<vec3<u32>, 7>();
    let var_0 = arg_2;
    global0 = array<vec3<u32>, 7>();
    let var_1 = func_2(func_1(), arg_2.b.x);
    var var_2 = ~46111u;
    return Struct_1(reverseBits(-2147483647i), var_1.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_3(func_1(), vec2<u32>(~reverseBits(u_input.a) ^ ~(~4294967295u), u_input.a), Struct_2(_wgslsmith_f_op_f32(-func_1().a)), 1u);
    global0 = array<vec3<u32>, 7>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.a)))))));
    var var_2 = var_0;
    let var_3 = Struct_3(Struct_2(var_1.a), var_2.b, Struct_2(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, 966f))))), var_2.d);
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(Struct_2(-119f), vec3<bool>(true, true, true), Struct_3(func_1(), firstLeadingBit(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 0u)), Struct_2(global1.a), ~_wgslsmith_mult_u32(0u, u_input.a)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)))), !select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), ~(~vec2<i32>(1i, _wgslsmith_clamp_i32(20284i, -1i, -2147483647i))));
    global0 = array<vec3<u32>, 7>();
    var var_0 = true;
    var var_1 = select(select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, select(true, false, false), true), true), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, true, true)), select(vec4<bool>(68086u < u_input.a, false, u_input.a > 1u, global1.a <= -608f), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, true, true), any(vec2<bool>(false, true)) && all(vec3<bool>(false, true, true)), false), any(vec2<bool>(true, true))), true);
    let var_2 = _wgslsmith_clamp_u32(3469u, u_input.a, 66872u);
    var_1 = !select(select(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false), !vec4<bool>(true, true, var_1.x, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, false, false, var_1.x)), vec4<bool>(false, var_1.x, false, false), !vec4<bool>(var_1.x, false, false, true))), select(!(!vec4<bool>(false, var_1.x, true, false)), vec4<bool>(any(var_1.wy), true, !var_1.x, var_1.x), all(select(var_1.www, var_1.wxw, var_1.x))), !vec4<bool>(!var_1.x, all(var_1.yy), any(vec2<bool>(var_1.x, var_1.x)), true));
    global0 = array<vec3<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~u_input.a, 7u)], vec4<i32>(-1i, -2147483647i, _wgslsmith_clamp_i32(-(~(-2147483647i)), 31046i, i32(-1i) * -1i), -20552i), (vec3<i32>(15231i, ~1i, reverseBits(6769i)) << (~(~global0[_wgslsmith_index_u32(29575u, 7u)]) % vec3<u32>(32u))) >> (reverseBits(~(~global0[_wgslsmith_index_u32(u_input.a, 7u)])) % vec3<u32>(32u)));
}

