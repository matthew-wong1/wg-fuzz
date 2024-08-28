struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 18>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<Struct_2, 23>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_3(firstTrailingBit(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 22991u))) | (~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)))), vec2<bool>(all(vec4<bool>(global2.x | global2.x, global2.x, true && global2.x, true)), arg_0.d.x >= arg_0.d.x), min(vec2<i32>(u_input.b, firstTrailingBit(56926i)), vec2<i32>(~reverseBits(u_input.b), -global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-584f))))) - 355f));
    let var_1 = var_0;
    var var_2 = vec2<u32>(4294967295u, ~(~(~var_0.a.x)));
    var var_3 = Struct_4(vec3<bool>(!(-u_input.b > var_0.c.x), global2.x, true), 37518u, 1f, arg_0);
    let var_4 = arg_0;
    return _wgslsmith_div_i32(-2147483647i, ~(~_wgslsmith_div_i32(reverseBits(u_input.b), -2147483647i)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = !select(select(select(!vec3<bool>(false, global2.x, global2.x), !vec3<bool>(global2.x, false, true), any(vec4<bool>(global2.x, global2.x, global2.x, global2.x))), select(vec3<bool>(global2.x, true, false), !vec3<bool>(true, false, global2.x), vec3<bool>(true, true, global2.x)), vec3<bool>(true, true, true)), select(select(!vec3<bool>(global2.x, global2.x, true), select(vec3<bool>(false, false, global2.x), vec3<bool>(true, true, true), vec3<bool>(global2.x, false, true)), vec3<bool>(true, global2.x, false)), vec3<bool>(true, true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 25346u, 4205u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 75345u)) <= u_input.a.x), true);
    let var_1 = !vec2<bool>(global2.x & true, false);
    global3 = array<Struct_2, 23>();
    var var_2 = vec3<bool>(any(vec3<bool>(var_0.x, all(!vec4<bool>(var_0.x, global2.x, true, false)), u_input.b >= global0.x)), !global2.x, true);
    global1 = array<i32, 18>();
    return !select(!var_0.xx, select(vec2<bool>(true, all(vec2<bool>(true, var_1.x))), var_0.xz, !select(vec2<bool>(var_2.x, true), var_1, var_2.x)), !select(var_2.xx, var_0.xx, select(var_0.xy, var_0.zy, global2.x)));
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_3(firstTrailingBit(func_2(Struct_1(vec4<i32>(-31823i, u_input.b, u_input.b, u_input.b), 2147483647i, -11175i, vec2<f32>(arg_0, arg_0)))) | global0.x);
    var var_1 = select(select(!select(!vec4<bool>(false, var_0.x, global2.x, var_0.x), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(global2.x, global2.x, var_0.x, var_0.x), true), true), select(vec4<bool>(true, global2.x, var_0.x, func_3(-13392i).x), !(!vec4<bool>(false, false, false, var_0.x)), var_0.x), vec4<bool>(any(var_0), !all(vec3<bool>(var_0.x, false, global2.x)), !(global2.x | global2.x), false)), vec4<bool>(true, !(!any(var_0)), true & var_0.x, !all(vec3<bool>(global2.x, global2.x, true))), select(vec4<bool>(var_0.x, false, global2.x, !global2.x || true), vec4<bool>(select(false, global2.x, true), !select(true, global2.x, var_0.x), !var_0.x, global2.x), !(!(!var_0.x))));
    let var_2 = true;
    var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, -2906f))), true, any(vec3<bool>(false, true, all(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_1.x, true, true), var_1.zzw)))));
    let var_3 = 1198f;
    return Struct_4(!vec3<bool>(true, any(select(var_0, var_1.xw, vec2<bool>(false, var_2))), true), ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), Struct_1(-vec4<i32>(-2147483647i, 0i, -global0.x, u_input.b), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)])) << ((max(4294967295u, u_input.a.x) >> (1u % 32u)) % 32u), -2538i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-386f, var_3))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.d.d.x);
    global1 = array<i32, 18>();
    global0 = ~(~arg_0.d.a);
    var var_1 = select(vec4<i32>(~(~13231i & -u_input.b), func_1(_wgslsmith_f_op_f32(-func_1(arg_0.c).d.d.x)).d.a.x, 56363i, 18286i), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(66709u, reverseBits(_wgslsmith_add_u32(4294967295u, arg_0.b))), 18u)], u_input.b, u_input.b, -(~firstLeadingBit(global0.x))), vec4<bool>(false, func_1(arg_1.c).a.x, any(func_1(func_1(123f).d.d.x).a.zx), true));
    var var_2 = false;
    return func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(837f, 283f)) * arg_1.c), _wgslsmith_f_op_f32(-arg_1.d.d.x)))).d;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~(~u_input.a.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(55640u, 16810u), abs(vec2<u32>(4294967295u, 46627u)))), 1u), vec4<u32>(reverseBits(1u), _wgslsmith_add_u32(1u, 11668u), 4294967295u, _wgslsmith_mult_u32(~countOneBits(74982u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 88511u, 1u, 50011u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 72271u, arg_1.a.x)))));
    let var_1 = arg_1.b.a;
    let var_2 = select(!vec3<bool>(!all(arg_1.c.zw), arg_0 >= _wgslsmith_f_op_f32(sign(arg_1.b.d.x)), func_3(_wgslsmith_add_i32(-17778i, var_1.x)).x), func_1(arg_0).a, func_3(_wgslsmith_clamp_i32(~(-global1[_wgslsmith_index_u32(3143u, 18u)]), _wgslsmith_div_i32(~arg_1.b.c, -1i), _wgslsmith_div_i32(arg_1.b.b ^ arg_1.b.c, firstLeadingBit(-8905i)))).x);
    let var_3 = var_2.x;
    var var_4 = func_1(arg_0).d.d.x;
    return StorageBuffer(var_1.yy, min(0u, countOneBits(34634u)), _wgslsmith_f_op_f32(trunc(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(553f, Struct_2(_wgslsmith_div_vec2_u32(select(u_input.a, u_input.a, vec2<bool>(true, true)), countOneBits(u_input.a) & vec2<u32>(4294967295u, u_input.a.x)), func_4(func_1(_wgslsmith_f_op_f32(min(-800f, 758f))), func_1(_wgslsmith_f_op_f32(max(1000f, 1000f))), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], u_input.b) << (select(vec2<u32>(20997u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, true)) % vec2<u32>(32u))), !vec4<bool>(any(vec4<bool>(false, global2.x, global2.x, true)), true, all(vec2<bool>(true, global2.x)), true), abs(vec3<i32>(abs(62418i), global1[_wgslsmith_index_u32(~u_input.a.x, 18u)], 36140i)), !(!(!vec4<bool>(true, global2.x, global2.x, false)))));
}

