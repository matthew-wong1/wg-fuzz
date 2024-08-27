struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 0u, 1u, 24533u, 0u, 52618u, 1u, 0u, 0u, 1u, 27984u, 79594u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<i32> {
    var var_0 = select(vec4<bool>(!((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 13u)], 13u)] != 4294967295u) == true), true, true, true), vec4<bool>(true, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(286f, 1088f)))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -439f))), false), false);
    var_0 = !(!(!select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, false, var_0.x, false), false && var_0.x)));
    var_0 = vec4<bool>(var_0.x, var_0.x, false, !var_0.x);
    global0 = array<u32, 13>();
    var_0 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), false)), vec4<bool>(select(var_0.x, true, var_0.x), false, false, all(select(!vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, true, true, true), all(var_0.yx)))), select(vec4<bool>(true, var_0.x, !any(vec3<bool>(false, false, var_0.x)), select(var_0.x, true, true) || var_0.x), select(vec4<bool>(all(vec2<bool>(var_0.x, true)), var_0.x, true, all(vec3<bool>(var_0.x, var_0.x, var_0.x))), select(select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), false)), vec4<bool>(u_input.b >= 34835i, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true, true)), !select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, false, var_0.x, var_0.x)), any(vec2<bool>(true, var_0.x)))));
    return ~vec3<i32>(max(~(-9228i), u_input.a), u_input.b, u_input.b);
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    return Struct_1(abs(vec4<i32>(_wgslsmith_clamp_i32(~(-25932i), i32(-1i) * -13561i, u_input.a), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, u_input.b)), vec2<i32>(65576i, u_input.a)), u_input.a, _wgslsmith_dot_vec3_i32(func_3(), ~vec3<i32>(u_input.b, 2147483647i, 2147483647i)))), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, ~global0[_wgslsmith_index_u32(0u, 13u)]), 13u)], 13u)], u_input.a);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = -var_0.c;
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    let var_2 = Struct_3(func_2());
    return Struct_2(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(func_2());
    global0 = array<u32, 13>();
    var var_2 = ~(~vec2<u32>(var_0.a, u_input.c)) >> (vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)] ^ 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(~global0[_wgslsmith_index_u32(u_input.c, 13u)]) | _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, var_1.a.b), vec3<u32>(19397u, global0[_wgslsmith_index_u32(41158u, 13u)], 35937u)), 13u)], 13u)]) % vec2<u32>(32u));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(315f)), 1f);
    let var_4 = 7533u;
    let var_5 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-141f, _wgslsmith_f_op_f32(f32(-1f) * -286f), 102f)));
    let var_6 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1574f)) + _wgslsmith_f_op_f32(746f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) - _wgslsmith_f_op_f32(-var_5.x)))), -1480f));
    let var_7 = _wgslsmith_add_i32(9075i, firstTrailingBit(-27172i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1457f, var_5.x)))), var_5.x)), vec4<u32>(u_input.c, var_4, max(~(~var_0.a), max(~0u, u_input.c)), ~9743u), _wgslsmith_clamp_vec2_i32(var_1.a.a.wy, min(vec2<i32>(57952i, var_1.a.c), vec2<i32>(var_1.a.c, -61180i)) | var_1.a.a.yx, reverseBits(var_1.a.a.wx)), u_input.b, _wgslsmith_div_u32(var_0.a, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 20696u, 4294967295u) ^ vec3<u32>(u_input.c, var_0.a, 0u), vec3<u32>(u_input.c, var_2.x, u_input.c)))));
}

