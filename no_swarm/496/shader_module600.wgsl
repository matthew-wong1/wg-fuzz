struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1000f, -1000f, -708f), 1906f);

var<private> global1: u32 = 49238u;

var<private> global2: vec3<u32> = vec3<u32>(22263u, 4294967295u, 27609u);

var<private> global3: array<i32, 24> = array<i32, 24>(1i, -1i, 34351i, -1i, 0i, -13641i, 5419i, 1953i, 0i, 13057i, -33816i, 0i, -8270i, 57076i, -1i, -1i, 54308i, 3276i, 2366i, -1i, 2261i, 71178i, -23582i, -1i);

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.b, global0.a.x, true)), -741f, global0.b))), _wgslsmith_f_op_f32(652f * _wgslsmith_f_op_f32(global0.a.x + global0.a.x)));
    global3 = array<i32, 24>();
    global0 = global4[_wgslsmith_index_u32(global2.x << ((global2.x ^ firstLeadingBit(1u)) % 32u), 21u)];
    return Struct_2(_wgslsmith_sub_i32(-global3[_wgslsmith_index_u32(1u, 24u)] | -u_input.b.x, ~_wgslsmith_mult_i32(35142i, 1i)) << ((0u | (global2.x | ~global2.x)) % 32u), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-729f, global0.b))), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -579f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, -297f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -633f)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> f32 {
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.x | 1u, global2.x), ~countOneBits(92588u)), 21u)];
    global4 = array<Struct_1, 21>();
    var var_0 = ~(~abs(~firstTrailingBit(vec4<u32>(global2.x, 0u, arg_1.x, arg_1.x))));
    global0 = global4[_wgslsmith_index_u32(1u, 21u)];
    var_0 = ~abs(reverseBits(max(~vec4<u32>(var_0.x, global2.x, 8753u, arg_1.x), ~vec4<u32>(1u, 78086u, 4294967295u, global2.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(586f, _wgslsmith_f_op_f32(-arg_0.x)) + -809f) * -322f));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = global3[_wgslsmith_index_u32(1u, 24u)];
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-908f - arg_0.a.x), _wgslsmith_div_f32(-1000f, 1523f)))))), ~(~vec3<u32>(~52154u, 150u, countOneBits(global2.x)))));
    var var_3 = true || all(!vec4<bool>(select(false, false, false), false, true, all(vec4<bool>(true, true, false, true))));
    var var_4 = Struct_4(vec2<bool>(!(!select(true, true, false)), 47131u < global2.x), 2147483647i, Struct_3(45507u), func_2().b);
    return global0.a;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    global1 = global2.x;
    var var_0 = vec3<u32>(global2.x, arg_0, firstTrailingBit(global2.x & _wgslsmith_mod_u32(~arg_0, ~arg_0)));
    var var_1 = vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x * 1282f), arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 847f))), 519f, 856f), _wgslsmith_f_op_f32(-arg_1.x));
    global4 = array<Struct_1, 21>();
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.xz;
    let var_1 = min((-2147483647i & abs(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(18144u, 24u)], u_input.b.x))) | -_wgslsmith_div_i32(~46378i, min(global3[_wgslsmith_index_u32(global2.x, 24u)], global3[_wgslsmith_index_u32(0u, 24u)])), func_4(min(var_0.x, 1u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(global0.a, 202f)))))) >> (~64417u % 32u));
    var var_2 = Struct_3(global2.x);
    global0 = func_2().b;
    let var_3 = Struct_2(abs(~(-(~u_input.b.x))), global4[_wgslsmith_index_u32(countOneBits(~select(abs(2173u), _wgslsmith_dot_vec2_u32(global2.zx, vec2<u32>(global2.x, var_2.a)), true)), 21u)]);
    global3 = array<i32, 24>();
    var_0 = select(global2.yz, ~vec2<u32>(select(global2.x, var_2.a, false) ^ (0u ^ var_2.a), ~31360u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 6332u), global2.zx) % 32u)), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, any(vec4<bool>(false, false, true, true))), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)))));
    let var_4 = reverseBits(var_0.x);
    let var_5 = Struct_4(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, any(vec2<bool>(false, false)))), -552i, Struct_3(var_4), func_2().b);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a, -_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.d.x, 2147483647i), countOneBits(vec3<i32>(var_1, 0i, var_1)), vec3<bool>(var_5.a.x, var_5.a.x, false)), vec3<i32>(-31040i, -10361i, 20429i), u_input.c.zww), ~(_wgslsmith_add_u32(var_2.a, max(35076u, var_2.a)) << (~(~1u) % 32u)), 142f);
}

