struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(0u, 0u, 16309u), vec3<u32>(4294967295u, 10213u, 39251u), vec3<u32>(0u, 0u, 4897u), vec3<u32>(5323u, 1u, 4294967295u));

var<private> global1: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 18>;

var<private> global4: array<vec4<bool>, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_1, 18>();
    let var_0 = abs(global0[_wgslsmith_index_u32(0u, 4u)]);
    let var_1 = ~vec2<u32>(firstLeadingBit(var_0.x), _wgslsmith_mod_u32(reverseBits(var_0.x), _wgslsmith_div_u32(7953u, u_input.c.x))) >> (vec2<u32>(u_input.c.x, var_0.x) % vec2<u32>(32u));
    let var_2 = all(!global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(0u, ~var_1.x, ~8609u)), 14u)]);
    global2 = global1[_wgslsmith_index_u32(~var_0.x, 14u)];
    return Struct_1(select(vec3<i32>(-39195i, countOneBits(-2147483647i), ~(~u_input.b.x)), ~select(vec3<i32>(1i, -52815i, -18002i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), vec3<i32>(u_input.b.x, -25484i, u_input.a.x)), true), select(vec3<bool>(global2.x || true, true, var_2), select(vec3<bool>(global2.x, global2.x, var_2), select(vec3<bool>(var_2, global2.x, true), global1[_wgslsmith_index_u32(u_input.c.x, 14u)], true), u_input.a.x < 44934i), false)), vec2<u32>(var_1.x, ~1u));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(20170u, 18u)];
    global0 = array<vec3<u32>, 4>();
    let var_1 = 61410i;
    let var_2 = !vec4<bool>((1i <= arg_0) && false, global2.x, (~1053u >> (_wgslsmith_add_u32(0u, u_input.c.x) % 32u)) != var_0.b.x, countOneBits(~var_0.a.x) <= u_input.b.x);
    var var_3 = global3[_wgslsmith_index_u32(0u, 18u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_add_vec2_u32(u_input.c.yw, _wgslsmith_sub_vec2_u32(vec2<u32>(~(~14898u), ~(~0u)), u_input.c.xz));
    var var_2 = 606f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f - -1047f)) + 750f) - -416f));
    var var_4 = func_1(-(~u_input.b.x));
    var var_5 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(~func_1(-38159i).b), vec2<u32>(~(~var_4.b.x), 25925u)), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(~4294967295u, max(var_1.x, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, 0u), vec3<u32>(0u, 4294967295u, var_1.x)), var_1.x)), ~1u);
}

