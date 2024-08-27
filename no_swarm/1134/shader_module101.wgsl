struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec2<bool>;

var<private> global2: vec4<bool>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(~u_input.b, vec3<i32>(-3040i, min(22004i << (countOneBits(12552u) % 32u), ~max(u_input.b.x, 14348i)), _wgslsmith_clamp_i32(-28275i, -21059i, ~(-1i))));
    var var_1 = ~(~(~firstTrailingBit(vec4<u32>(33362u, u_input.c, u_input.c, u_input.a.x))));
    return global0[_wgslsmith_index_u32(~19939u, 21u)];
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_add_u32(16284u, reverseBits(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 29955u), firstLeadingBit(u_input.a))));
    var var_1 = func_1(vec2<bool>(~abs(1u) == _wgslsmith_add_u32(13166u, _wgslsmith_div_u32(u_input.a.x, u_input.c)), any(global2.zx) && all(vec3<bool>(true, global1.x, false))));
    let var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 13119u)), ~u_input.a)) << (~var_0 % 32u), 21u)];
    var var_3 = global2.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1092f, 1044f, 1768f));
    return select(vec3<bool>(_wgslsmith_mod_i32(min(-2147483647i, var_1.a.x), max(u_input.b.x, u_input.b.x)) > ((u_input.b.x & u_input.b.x) >> (u_input.c % 32u)), all(global2.xwz), global1.x), select(!vec3<bool>(u_input.b.x == 22527i, all(global4[_wgslsmith_index_u32(var_0, 7u)]), true), !vec3<bool>(true, all(global2.zwy), true), select(vec3<bool>(true, true, global3.x), vec3<bool>(all(vec3<bool>(global1.x, global1.x, global1.x)), false, true), global2.x)), global2.x);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = func_3(arg_0.b);
    global3 = select(func_3(-850f), vec3<bool>(_wgslsmith_mult_u32(~99160u, firstTrailingBit(u_input.c)) != 0u, global1.x, any(vec4<bool>(!global2.x, false, false, true))), !(!(!(!vec3<bool>(global2.x, true, true)))));
    global4 = array<vec2<bool>, 7>();
    let var_1 = arg_0;
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    return func_3(arg_0.b).yx;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<bool>, 7>();
    let var_0 = vec4<bool>(all(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~u_input.c), 7u)]), true, !global1.x, all(select(func_2(func_1(vec2<bool>(global2.x, global1.x))), global2.zz, !global2.x)));
    global4 = array<vec2<bool>, 7>();
    global2 = vec4<bool>(~(~u_input.b.x) < reverseBits(~(i32(-1i) * -1i)), true, min(abs(~4294967295u), 1u) < _wgslsmith_clamp_u32(~8775u, _wgslsmith_add_u32(u_input.c | 31640u, u_input.a.x), u_input.a.x), u_input.a.x > ~_wgslsmith_div_u32(abs(u_input.a.x), ~u_input.c));
    let var_1 = (vec4<i32>(-(~u_input.b.x), u_input.b.x, select(-57591i, ~u_input.b.x, !var_0.x), -firstLeadingBit(18005i)) & min(-(vec4<i32>(u_input.b.x, 1i, u_input.b.x, -1i) << (vec4<u32>(u_input.c, u_input.a.x, 1435u, u_input.a.x) % vec4<u32>(32u))), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i))) >> ((~vec4<u32>(_wgslsmith_add_u32(1u, u_input.a.x), 15926u, countOneBits(u_input.a.x), max(u_input.c, 4294967295u)) >> (~select(~vec4<u32>(u_input.c, 1u, 1u, 0u), vec4<u32>(u_input.c, 0u, u_input.c, 1u), true) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = true;
    global1 = !(!(!var_0.xx));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-3057f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), var_0.x)), -965f)));
    global1 = global4[_wgslsmith_index_u32(15464u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a.x, abs(u_input.a.x | u_input.c)) >> (u_input.a % vec2<u32>(32u)));
}

